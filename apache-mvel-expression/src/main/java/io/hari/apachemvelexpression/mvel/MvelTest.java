package io.hari.apachemvelexpression.mvel;

import lombok.Getter;
import lombok.Setter;
import org.mvel2.MVEL;
import org.mvel2.integration.impl.MapVariableResolverFactory;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class MvelTest {
    public static void main(String[] args) {
        List<String> list = new LinkedList<>();
        list.add("arpit");
        list.add("arpit2");

//        skip_rest = false;
//        for(item: collection) {
//            if (!skip_rest) {
//                /* do something */
//                if (some condition) {
//                    /* break by skipping */
//                    skip_rest = true;
//                }
//            }
//        }

        System.out.println("-----");
        for (int i =0; i < 10; i++) {System.out.println(i);}


        for (String i : list) {System.out.println(i);}

        System.out.println("-----");
        Object eval = MVEL.eval("for (int i =0; i < 5; i++) {System.out.println(i);}", list);
        System.out.println("eval = " + eval);

        System.out.println("----");
        Map<String, Object> context = new HashMap<String, Object>();
        context.put("list", list);
        MVEL.eval("for ( i : list) {System.out.println(i);}", context);

        System.out.println("----");
        MapVariableResolverFactory resolverFactory = new MapVariableResolverFactory();
        MVEL.eval("for (int i =0; i < 5; i++) {System.out.println(i);}", resolverFactory);


        //todo create fun(user json open api) return map with key and value
        System.out.println("----");
        context.put("weight_in_kgs", 12);//get from formula
        context.put("min_wt_slab", 12);//user input
        context.put("shipping_zone", "local_zone");//i think get from rules or rate cards
        context.put("local_zone", "local_zone");
        context.put("min_wt_charges_local", 12);

        try {
            Object eval1 = MVEL.eval("((Math.ceil(weight_in_kgs* 2.00)/2) > min_wt_slab) " +
                    "? ((shipping_zone == local_zone) ? (min_wt_charges_local + (((Math.ceil(weight_in_kgs* 2.00)/2) - min_wt_slab) * shipping_zone_local_rate)) : (min_wt_charges_zonal + (((Math.ceil(weight_in_kgs* 2.00)/2) - min_wt_slab) * shipping_zone_zonal_rate))) " +
                    ": ((shipping_zone == local_zone) ? min_wt_charges_local : min_wt_charges_zonal)", context);
            System.out.println("eval1 = " + eval1);
            //extract mevel output as object and that will store result
            //https://stackoverflow.com/questions/58579920/how-to-use-variables-inside-an-mvel-expression
        } catch (Exception e) {
            System.out.println("e = " + e.getMessage());
            //from error find key and then get default value and set and run again , same method call recursion and return
        }

        //https://stackoverflow.com/questions/34676451/how-to-access-a-variable-declared-inside-a-mvel-expression
        //store mvel result into our external entity class

        SomeClass entityClass = new SomeClass();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("obj", entityClass);

        MVEL.eval("obj.output = 2<3;", map);
        System.out.println(entityClass.isOutput());

        MVEL.eval("obj.output = 2>3;", map);
        System.out.println(entityClass.isOutput());


        map.put("weight_in_kgs", 12);
        map.put("min_wt_slab", 12);
        map.put("shipping_zone", "local_zone");
        map.put("local_zone", "local_zone");
        map.put("min_wt_charges_local", 12);
        MVEL.eval("obj.result = ((Math.ceil(weight_in_kgs* 2.00)/2) > min_wt_slab) " +
                "? ((shipping_zone == local_zone) ? (min_wt_charges_local + (((Math.ceil(weight_in_kgs* 2.00)/2) - min_wt_slab) * shipping_zone_local_rate)) : (min_wt_charges_zonal + (((Math.ceil(weight_in_kgs* 2.00)/2) - min_wt_slab) * shipping_zone_zonal_rate))) " +
                ": ((shipping_zone == local_zone) ? min_wt_charges_local : min_wt_charges_zonal)", map);

        System.out.println(entityClass.getResult());

    }
    @Setter
    @Getter
    public static class SomeClass {
        private boolean output;
        private Object result;
        public boolean isOutput() {
            return output;
        }
        public void setOutput(boolean output) {
            this.output = output;
        }
    }

}

/*
from user input to create context map
use context map inside mvel (get mvel from us1/AGM call)

 */
