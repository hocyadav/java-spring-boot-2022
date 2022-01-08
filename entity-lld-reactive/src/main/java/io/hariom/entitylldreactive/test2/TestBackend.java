package io.hariom.entitylldreactive.test2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

//optional : we can create web-client object direct and use
//@Component
//class TestBackend1 {
//    //create http clint object + register bean
//    //call above backend endpoint using this client object
//    @Bean
//    public WebClient getWebClient() {
//        WebClient webClient = WebClient.builder().baseUrl("http://localhost:8080").build();
//        return webClient;
//    }
//}

@Component
class TestBackend implements CommandLineRunner {
//    @Autowired
//    WebClient webClient;

    @Override
    public void run(String... args) throws Exception {
        WebClient webClient = WebClient.builder().baseUrl("http://localhost:8080").build();//or we can create bean

        Flux<String> flux = webClient.get()
                .uri("/students")//this will add to the base url that we have set in web-client
                .retrieve()
                .bodyToFlux(String.class);

        flux.subscribe(
                item -> System.out.println("item = " + item),
                err -> System.out.println("err.getMessage() = " + err.getMessage()),
                () -> System.out.println("done ")
        );
    }
}
