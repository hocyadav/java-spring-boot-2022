package com.example.openapi.webadapter;

import com.example.api.ShippingPriceApi;
import com.example.model.ListingCriteria;
import com.example.model.PriceCalculateRequest;
import com.example.model.PriceCalculateResponse;
import com.example.openapi.service.MyService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;
import reactor.core.scheduler.Schedulers;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@RequiredArgsConstructor
public class MyControllerWebAdapter implements ShippingPriceApi {
    private final MyService myService;

//    @Override
////    @PostMapping("/get")
//    public ResponseEntity<PriceCalculateResponse> calculateShippingPrice(PriceCalculateRequest body, String xFlipkartClient) {
//        System.out.println("MyController.calculateShippingPrice");
//        System.out.println("body = " + body + ", xFlipkartClient = " + xFlipkartClient);
//
//        PriceCalculateResponse responses = new PriceCalculateResponse()
//                .responses(List.of(
//                        new ListingPriceResponse().id("123").local("123.12").zonal("1231.12").national("1231.12"),
//                        new ListingPriceResponse().id("234").local("123.12").zonal("1231.12").national("1231.12")
//                ));
//        return new ResponseEntity<>(responses, HttpStatus.OK);
//    }


    @Override
    @PostMapping("/compute-pricing")
    public ResponseEntity<PriceCalculateResponse> calculateShippingPrice(PriceCalculateRequest body, String xFlipkartClient) {
        setIdIfNotPresent(body);
        validateAllKeys(body);
        convertValuesIntoString(body);//no
        partitionInputRequestKeyInto2Part(body);//no
        validateEachKeyAndExpectedValue(body);


        System.out.println("MyController.calculateShippingPrice");
        System.out.println("body = " + body + ", xFlipkartClient = " + xFlipkartClient);
        //if id not set - then set default random

        final PriceCalculateResponse priceCalculateResponse2 = new PriceCalculateResponse()
                .id("111")
                .national("11.11")
                .zonal("12.12")
                .local("121.11")
//                .date(body.getDateTime())
//                .time(body.getTime())
                .dateTime(body.getDateTime())
                .status(PriceCalculateResponse.StatusEnum.SUCESS);

        final Mono<PriceCalculateResponse> responseMono = Mono.fromCallable(() -> priceCalculateResponse2)
                .subscribeOn(Schedulers.parallel());

//        PriceCalculateResponse responses = new PriceCalculateResponse()
//                .responses(List.of(
//                        new ListingPriceResponse().id("123").local("123.12").zonal("1231.12").national("1231.12"),
//                        new ListingPriceResponse().id("234").local("123.12").zonal("1231.12").national("1231.12")
//                ));
        return new ResponseEntity<>(responseMono.block(), HttpStatus.OK);
    }

    private void validateEachKeyAndExpectedValue(PriceCalculateRequest body) {
        //for each key
        //if key is length
        //call validateLength

        body.getRequest()
                .stream()
                .map(listingCriteria -> listingCriteria.getKey())
                .forEach(s -> {
                    validateLength(s);
                    validateKeyGenric(s);
                });
    }

    public void validateLength(String length) {
        //not null
        //can be parse to decimal
        //1. if validation fail throw exception
        //2. catch by advice (send to api response) + create a geberic entity for error or use Error one
    }
    //and for all add this in service/util class
    //or create a genric class to do this

    public void validateKeyGenric(String anyKey) {
        if (anyKey.equals("id")) {
            //id validation
        } else if (anyKey.equals("length")) {
            //length validation
        } else if (anyKey.equals("seller")) {
            //seller validation
        }
    }

    private void partitionInputRequestKeyInto2Part(PriceCalculateRequest body) {
        final Set<String> minKeys = Set.of("length", "breadth", "height", "weight");

        final List<ListingCriteria> requests =
                body.getRequest();
        final Map<Boolean, List<ListingCriteria>> collect = requests.stream().collect(Collectors.partitioningBy(
                listingCriteria -> minKeys.contains(listingCriteria.getKey())
        ));
        final List<ListingCriteria> list1 = collect.get(true);
        final List<ListingCriteria> list2 = collect.get(false);
        //return one list for further processing
        //add other list as response as not supported key
    }

    //not required
    private void convertValuesIntoString(PriceCalculateRequest body) {
        final Set<String> minKeys = Set.of("length", "breadth", "height", "weight");

        final List<ListingCriteria> collect = body.getRequest().stream()
                .map(listingCriteria -> {
                    final String key = listingCriteria.getKey();
                    final Object value = listingCriteria.getValue();
                    if (minKeys.contains(key)) {
                        final String cast = String.class.cast(value);
                    }
                    //for now use all values as string
                    return listingCriteria;
                }).collect(Collectors.toList());
    }

    private void validateAllKeys(PriceCalculateRequest body) {
        final List<ListingCriteria> requests = body.getRequest();
        final Set<String> allKeys = requests.stream().map(listingCriteria -> {
            return listingCriteria.getKey();
        }).collect(Collectors.toSet());

        if (allKeys.containsAll(Set.of("length", "breadth", "height", "weight"))) {//todo extract to config
            System.out.println("valid");
        } else {
            System.out.println("invalid missing");//todo : 1. for now throw own exception + 2. pass to api response
        }
    }

    private void setIdIfNotPresent(PriceCalculateRequest body) {
        final List<ListingCriteria> requests = body.getRequest();
        final Set<String> allKeys = requests.stream().map(listingCriteria -> {
            return listingCriteria.getKey();
        }).collect(Collectors.toSet());

        if (!allKeys.contains("id")) {
            final String toString = UUID.randomUUID().toString();
            final ListingCriteria listingCriteria = new ListingCriteria().key("id").value(toString);
            body.addRequestItem(listingCriteria);
        }
    }
}
