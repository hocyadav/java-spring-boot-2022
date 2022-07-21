package com.example.openapi.us2.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * @author Hariom Yadav
 * @since 04/04/22
 */
public class ComputeService {

    /**
     * steps
     * 1. (API call)/component call proxy service and get data and do below steps
     * - from mvelExpression find all keys if possible
     * - check all userInputKeys present in mvelExpression or not
     * - if yes : create mvel map context & execute mvel & collect result in some variable
     * - if no : dont execute mvel expression
     */
    public boolean helperValidateCanWeExecuteThatMvelOrNot(String mvelExpression, Set<String> userInputKeys) {
        //if all user key are present in this mvel string
        //then this mvel satisfy the condition
            //wrap over predicate class
            //m1: create a predicate(mvel, userinput)
        //return true or false

        //then call for
        //executeSingleMvel();

        return false;
    }

    /**
     * used in MVEL.eval("expressiono", mapContext)
     */
    public Map<String, Object> userInputToContextMap(String userInputRequest) {//done
        Map<String, Object> map = new HashMap<>();
        //do processing
        //1. add all user key and value to map

        //2. get other key value that will be used in the mvel expression
        getOthersRuleKeysValue();

        return map;
    }

    public void executeSingleMvel(String mvelExpression, Map<String, Object> mapContext) {
        try {
            //execute mvel
            //collect result
            //return or create a result object entity and send

        } catch (Exception e) {
            //if fail then return default like -1
            //or create a ResultEntity like Primeresult and send default
            //in that entity we can add what error we got
        }
    }

    public void getOthersRuleKeysValue() {
        //call config service & collect


        //key data ? from where we will get, since key is used in the mvel

//
//        map.put("weight_in_kgs", 12);
//        map.put("min_wt_slab", 12);
//        map.put("shipping_zone", "local_zone");
//        map.put("local_zone", "local_zone");
//        map.put("min_wt_charges_local", 12);
//        MVEL.eval("obj.result = ((Math.ceil(weight_in_kgs* 2.00)/2) > min_wt_slab) " +
//                "? ((shipping_zone == local_zone) ? (min_wt_charges_local + (((Math.ceil(weight_in_kgs* 2.00)/2) - min_wt_slab) * shipping_zone_local_rate)) : (min_wt_charges_zonal + (((Math.ceil(weight_in_kgs* 2.00)/2) - min_wt_slab) * shipping_zone_zonal_rate))) " +
//                ": ((shipping_zone == local_zone) ? min_wt_charges_local : min_wt_charges_zonal)", map);
    }
}
