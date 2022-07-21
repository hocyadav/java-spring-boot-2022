package com.example.openapi.domain_entities;

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
public class LZNFinal {
    String local;
    String zonal;
    String national;
}
