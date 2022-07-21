package com.example.openapi.us2.service.api;

import java.util.List;

/**
 * @author Hariom Yadav
 * @since 04/04/22
 */
public interface IProxyServiceAGM2 {

    /**
     *
     * @param ruleMetadata : first call output as input here
     * @return List<PriceComponent - MvelExpression>
     *
     *     //todo
     *     - create dto and mapper user input to lbhwAndCriteria
     *     - create dto (PriceComponent - MvelExpression) class
     */
//    public List<String> getRulesAndExpression(String lbhwAndCriteria);
    public List<String> getRulesAndExpression(String ruleMetadata);
}
