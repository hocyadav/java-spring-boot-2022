package io.hari.apache.freemarker;

import freemarker.template.SimpleNumber;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModelException;

import java.util.List;

/**
 * https://freemarker.apache.org/docs/pgui_datamodel_method.html
 */
public class MyTemplaceClass implements TemplateMethodModel {//step 3: wrap our logic in TemplateMethodModel interface
    @Override
    public Object exec(List args) throws TemplateModelException {//step 1 : accept list of argument, here list will store method variable
        if (args.size() != 2) {
            throw new TemplateModelException("Wrong arguments");
        }
        //step 2: extract argument and do some processing + return Object
        String s0 = (String) args.get(0);
        System.out.println("\ns0 = " + s0);

        String s1 = (String) args.get(1);
        System.out.println("s1 = " + s1);

        int indexOf = s1.indexOf(s0);//met is present in something ==> so"met"hing , at index 2
        System.out.println("indexOf = " + indexOf);

        SimpleNumber simpleNumber = new SimpleNumber(indexOf);
        System.out.println("simpleNumber = " + simpleNumber);

        return simpleNumber;
    }
}
