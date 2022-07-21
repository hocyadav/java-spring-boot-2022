package com.example.openapi;

import com.example.api.ShippingPriceApi;
import com.example.model.PriceCalculateRequest;
import com.example.model.PriceCalculateResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

/**
 * @author Hariom Yadav
 * @since 25/03/22
 */
@Service
public class MyPostShippingApi implements ShippingPriceApi {

    @Override
    public ResponseEntity<PriceCalculateResponse> calculateShippingPrice(PriceCalculateRequest body, String xFlipkartClient) {
        return null;
    }
}



/*


        final PriceCalculateResponse national = new PriceCalculateResponse()
                .listingPriceResponses(List.of(new ListingPriceResponse().listingId("").local("").zonal("").national("")));
        System.out.println("national = " + national);

        return new ResponseEntity<PriceCalculateResponse>(national, HttpStatus.CREATED);
 */
