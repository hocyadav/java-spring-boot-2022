package io.hari.apache.freemarker;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.Version;
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

		input.put("title", "Vogella example");

		input.put("exampleObject", new MyEntity("Java object", "me"));

		List<MyEntity> systems = new ArrayList<>();
		systems.add(new MyEntity("Android", "Google"));
		systems.add(new MyEntity("iOS States", "Apple"));
		systems.add(new MyEntity("Ubuntu", "Canonical"));
		systems.add(new MyEntity("Windows7", "Microsoft"));
		input.put("systems", systems);

		Template template = cfg.getTemplate("my_apache_freemakrker_template.ftl");

		Writer consoleWriter = new OutputStreamWriter(System.out);
		template.process(input, consoleWriter);

		Writer fileWriter = new FileWriter(new File("output.html"));
		try {
			template.process(input, fileWriter);
		} finally {
			fileWriter.close();
		}
	}
}
