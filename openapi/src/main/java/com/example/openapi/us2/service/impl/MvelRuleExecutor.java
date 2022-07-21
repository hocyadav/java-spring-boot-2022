package com.example.openapi.us2.service.impl;

import com.example.openapi.us2.service.api.IProxyServiceAGM2;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author Hariom Yadav
 * @since 04/04/22
 */
public class MvelRuleExecutor implements IProxyServiceAGM2 {

    /**
     *
     * steps:
     * - call AGM or us1 get list of (PriceComponent - MvelExpression)
     * - execute MVEL & handle error
     * - create DTO LZN class
     * - update LZN
     */
    @Override
    public List<String> getRulesAndExpression(String lbhwAndCriteria) {
        return null;
    }
}
