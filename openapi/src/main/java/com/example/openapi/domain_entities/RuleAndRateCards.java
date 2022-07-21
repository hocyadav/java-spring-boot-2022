package com.example.openapi.domain_entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RuleAndRateCards {//see config service entity
    private String ruleId;
    private RateCard rateCard;
}
