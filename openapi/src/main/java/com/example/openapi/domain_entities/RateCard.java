package com.example.openapi.domain_entities;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RateCard {//see config service entity
    private String id;
    private Integer priority;
    private LocalDate startDate;
    private LocalDate endDate;
}
