package com.example.openapi.service;

import com.example.model.ListingCriteria;
import com.example.model.PriceCalculateRequest;
import com.example.model.PriceCalculateResponse;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MyService {


    /**
     * approach:
     *
     * - for each list req -> validate minimum key-value -> split into 2 part one valid req and other invalid
     * - take first valid list
     * - call config service and send 1 req body or List of req body, get all rules and rates card and its priority (i.e. 1 criteria --1:1-- list <rules and rates cards>)
     * - filter expire one
     * - sort priority + latest time
     * - call AGM , input : 1 req rate card  , output : and get all list<Price component + mvel expression>
     * - 1 rule id <-1:1-> List<> ---to-> LZN final output
     * - attach LZN with id
     * - collect all LZN list and send
     */
    @SneakyThrows
    public PriceCalculateResponse calculateShippingPrice(PriceCalculateRequest body) {
        System.out.println("MyApi.calculateShippingPrice");
        List<ListingCriteria> priceRequest = body.getRequest();
        validateCriteriaKeyValue(priceRequest);


        return null;
    }

    private void validateCriteriaKeyValue(List<ListingCriteria> priceRequest) {
//        priceRequest.stream()
//                .forEach(listingCriteria -> {
//                    ListingCriteria listingCriteria1 = listingCriteria;
//                    Map<String, Object> criteria_singleRequest = listingCriteria1.getCriteria();
//                    //fetch each key and value
//                    //find min requered to evealute rule or process further
//                    Set<String> keySet = criteria_singleRequest.keySet();
//                    if (keySet.containsAll(Set.of("id", "length", "breadth", "height", "weight"))) {
//                        //call config service
//                        //get all rules & rate cards, //store in domain entity
//                    }
//                });
    }

    public void foo(){

    }

}
