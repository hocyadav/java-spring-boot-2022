package com.example.openapi.us2.config;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @author Hariom Yadav
 * @since 04/04/22
 */
//@Configuration
public class MyConfig {

//    @Bean
    public ObjectMapper getObjectMapper() {
        return new ObjectMapper();
    }


    //    @Bean
    public void getModelMapper() {
        //return model mapper
    }

}
