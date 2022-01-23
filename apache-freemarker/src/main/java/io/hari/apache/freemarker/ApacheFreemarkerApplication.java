package io.hari.apache.freemarker;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.Version;
import io.hari.apache.freemarker.directive.UpperDirective;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.File;
import java.io.FileWriter;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.*;

/**
 * https://www.vogella.com/tutorials/FreeMarker/article.html#eclipse_integration
 */
@SpringBootApplication
public class ApacheFreemarkerApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(ApacheFreemarkerApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		System.out.println("ApacheFreemarkerApplication.run");

		Configuration cfg = new Configuration();
//		cfg.setClassForTemplateLoading(ApacheFreemarkerApplication.class, "resources/templates");
		cfg.setClassForTemplateLoading(ApacheFreemarkerApplication.class, "/templates");

		cfg.setIncompatibleImprovements(new Version(2, 3, 20));
		cfg.setDefaultEncoding("UTF-8");
		cfg.setLocale(Locale.US);
		cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

		Map<String, Object> input = new HashMap<String, Object>();
		setFtlKeyValue(input);

		Template template = cfg.getTemplate("my_apache_freemakrker_template.ftl");
//		Template template = cfg.getTemplate("bolt_template.ftl");

		//todo : expolore Writer interface + impl class like OutputStreamWriter, FileWriter
		//process method takes input Writer object
		Writer consoleWriter = new OutputStreamWriter(System.out);
		template.process(input, consoleWriter);

		Writer fileWriter = new FileWriter(new File("output.html"));
		try {
			template.process(input, fileWriter);
		} finally {
			fileWriter.close();
		}
	}

	private void setFtlKeyValue(Map<String, Object> input) {
		input.put("title", "Vogella example");
		input.put("vertical", "vertical123");
		input.put("mouse_var", "mouse value from input map");
		input.put("exampleObject", new MyEntity("Java object", "me"));

		List<MyEntity> myEntityList =
				List.of(new MyEntity("Android", "Google"),
						new MyEntity("iOS States", "Apple"),
						new MyEntity("Ubuntu", "Canonical"),
						new MyEntity("Windows7", "Microsoft")
				);
		input.put("systems", myEntityList);


		input.put("my_template_class", new MyTemplaceClass());//step 4: create a variable for method

		input.put("my_directive", new UpperDirective());//step 4: create a variable for method


		input.put("my_null_value", null);//working

		//https://stackoverflow.com/questions/306732/how-to-check-if-a-variable-exists-in-a-freemarker-template
//		input.put("userName", null);//working
//		input.put("userName", "");//working
//		input.put("userName", "hariom");//working

		//https://freemarker.apache.org/docs/dgui_template_exp.html
		input.put("id", 1234);

		//https://stackoverflow.com/questions/23328981/how-to-get-comma-between-freemarker-list
		input.put("user_list", List.of("hari", "om", "yadav"));
	}
}
