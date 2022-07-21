package com.example.openapi.proxy_service_call.dto;

import com.example.openapi.domain_entities.MvelExpression;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AGMResponse {
    private PriceComponent priceComponent;
    private MvelExpression mvelExpression;
}
