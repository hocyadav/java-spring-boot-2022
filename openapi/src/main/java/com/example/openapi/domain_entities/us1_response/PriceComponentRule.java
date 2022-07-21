package com.example.openapi.domain_entities.us1_response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Hariom Yadav
 * @since 04/04/22
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PriceComponentRule {
    String priceComponent;//local / zonal / national
    String expression;//mvel ??, expression can be list LIST<Expression>

    //wrap above inside class
}
