package com.example.openapi.domain_entities.us1_response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Hariom Yadav
 * @since 04/04/22
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ResponseUs1DTO {// this is final response , ive to iterate and take each obj , and put our value into mvel and execute mvel , and find out LZN
    List<PriceComponentRule> priceComponentRules = new ArrayList<>();
}
