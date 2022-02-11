package io.hari.apachemvelexpression.mvel;

import org.mvel2.MVEL;

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
        MVEL.eval("for (int i =0; i < 5; i++) {System.out.println(i);}", list);

        Map<String, Object> context = new HashMap<String, Object>();
        context.put("list", list);
        MVEL.eval("for ( i : list) {System.out.println(i);}", context);
    }
}
