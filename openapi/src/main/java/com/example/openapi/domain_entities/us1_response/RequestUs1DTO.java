package com.example.openapi.domain_entities.us1_response;

import com.example.model.ListingCriteria;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
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
public class RequestUs1DTO {
    //same as us2 request
    //use model mapper / function interface to craete this t1 to T2

    List<ListingCriteria> request = new ArrayList<>();
    String date;
    String time;
}
