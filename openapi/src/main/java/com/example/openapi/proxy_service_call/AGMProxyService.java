package com.example.openapi.proxy_service_call;

import com.example.openapi.config_service.AGMProxyConfigService;
import com.example.openapi.domain_entities.LZNFinal;
import com.example.openapi.domain_entities.MvelExpression;
import com.example.openapi.proxy_service_call.dto.AGMResponse;
import com.example.openapi.proxy_service_call.dto.PriceComponent;
import com.example.openapi.proxy_service_call.dto.PriceType;
import io.vavr.Tuple2;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Mono;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AGMProxyService {
    //use config service component
    private final AGMProxyConfigService agmProxyConfigService;
    //return List<PriceComponent - RuleEvaluation/Mvel Rule Evaluation>

    /**
     * input: config service rule id..metadata
     * output : List<PriceComponent - RuleEvaluation/Mvel Rule Evaluation>
     * @return
     */
    public List<AGMResponse> fetchFromAGM(){
        AGMResponse agmResponse = AGMResponse.builder()
                .priceComponent(PriceComponent.builder().lznPriceType(PriceType.local).build())
                .mvelExpression(MvelExpression.builder().build())
                .build();

        return List.of(
                agmResponse,
                agmResponse
        );
    }

    public LZNFinal mvelToLznCalculation() {

        final List<AGMResponse> agmResponses = fetchFromAGM();

        final List<Tuple2<PriceComponent, String>> mvel_output = agmResponses.stream()
                .map(agmResponse -> {
                    final PriceComponent priceComponent = agmResponse.getPriceComponent();
                    final MvelExpression mvelExpression = agmResponse.getMvelExpression();
                    //execute mvel expression
                    //handle edge cases
                    //handlw what if we are not able to set valye in mvel expreseion :check contains before setting
                    final Tuple2<PriceComponent, String> mvel_output1 = new Tuple2<>(priceComponent, "mvel output");
                    return mvel_output1;
                }).collect(Collectors.toList());

        //create LZN final
        LZNFinal lznFinal = new LZNFinal();

        mvel_output.stream()
                .forEach(priceComponentStringTuple2 -> {
                    final Tuple2<PriceComponent, String> priceComponentStringTuple21 = priceComponentStringTuple2;
                    final PriceComponent priceComponent = priceComponentStringTuple2._1();
                    if (priceComponent.equals("local")) {
                        final String localPrice = priceComponentStringTuple21._2();
                        lznFinal.setLocal(localPrice);
                    }
                    if (priceComponent.equals("zonal")) {
                        lznFinal.setLocal(priceComponentStringTuple21._2());
                    }
                    if (priceComponent.equals("national")) {
                        lznFinal.setLocal(priceComponentStringTuple21._2());
                    }
                });
        //now we have LZN

        return lznFinal;
    }

    public void foo() {
        Mono<String> mono = Mono.just("1");
    }
}
