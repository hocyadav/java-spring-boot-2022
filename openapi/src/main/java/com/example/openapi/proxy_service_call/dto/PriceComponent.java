package com.example.openapi.proxy_service_call.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PriceComponent {
    private PriceType lznPriceType; //lzn
}
