package com.example.openapi.us2.service.api;

import java.util.List;

/**
 * @author Hariom Yadav
 * @since 04/04/22
 */
public interface IFirstCallConfigService1 {//service layer all input and input will be domain class

    /**
     *
     * @param lbhwAndCriteria : actual user input
     * @return rules metadata from the config service
     */
    public List<String> getRulesAndExpression(String lbhwAndCriteria);


    /**
     * input : open api to domain , so domain
     * output : domain to open api, so domain
     */
    public String getRulesAndExpression2(String lbhwAndCriteriaDOMAIN);


}
