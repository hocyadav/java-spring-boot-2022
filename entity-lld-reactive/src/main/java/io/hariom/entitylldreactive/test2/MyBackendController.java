package io.hariom.entitylldreactive.test2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;

import java.time.Duration;

/**
 * 😎 all layer in single class
 * 4. GET call from chrome and test
 *
 * todo A: Backend Code
 *
 * ref:
 * simple reactive project : https://www.amitph.com/spring-webflux-reactive-rest-example/
 * web-client : https://www.amitph.com/introduction-to-spring-webclient/
 */

@RestController
@RequestMapping("/")
public class MyBackendController {

    @GetMapping("/students")//3. api layer,
    public Flux<String> foo() {
        //1. entity + repo layer : create entity and fetch list
        Flux<String> flux = Flux.just(
                "name1",
                "name2",
                "name3",
                "name4"
        );
        //2. service layer: do some logic
        return flux
                .delayElements(Duration.ofSeconds(1));
    }
}

