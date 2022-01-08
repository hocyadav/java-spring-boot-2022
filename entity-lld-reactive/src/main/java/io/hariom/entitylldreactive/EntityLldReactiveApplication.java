package io.hariom.entitylldreactive;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.annotation.Id;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.time.Duration;
import java.util.Random;

/**
 * Steps:
 * ✅ entity -> repo -> test [IMP steps]
 * ✅ service(optional) -> test
 * ✅ controller(optional) -> test
 */

class Person {
	//spring data annotation
	@Id
	Integer id;
	String name;

	public Person() {
	}

	public Person(Integer id, String name) {
		this.id = id;
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Person{" +
				"id=" + id +
				", name='" + name + '\'' +
				'}';
	}
}

//annotation @repo not required
interface PersonRepo extends ReactiveCrudRepository<Person, Integer>{}

@Service
class PersonService {
	@Autowired
	PersonRepo personRepo;

	public Flux<Person> findAll() {
		Flux<Person> personFlux = personRepo.findAll();
		return personFlux;//flux == pipeline
	}
}

@RequestMapping("/")
@RestController
class PersonController {
	@Autowired
	PersonRepo personRepo;

//	@GetMapping("/persons")//act like non-reactive : block and get result and then return
	@GetMapping(value = "/persons" , produces = MediaType.TEXT_EVENT_STREAM_VALUE)//non-reactive : just add "TEXT_EVENT_STREAM_VALUE"
	public Flux<Person> findAll() {
		Flux<Person> flux = personRepo.findAll();
		return flux
				.delayElements(Duration.ofSeconds(5));
	}
}

@SpringBootApplication
public class EntityLldReactiveApplication implements CommandLineRunner {
	@Autowired
	PersonRepo personRepo;// IMP
	@Autowired
	PersonService personService;// optional, we can achieve by only repo bean

	public static void main(String[] args) {
		SpringApplication.run(EntityLldReactiveApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		System.out.println("EntityLldReactiveApplication.run");

		//✅ todo : fetch from db
		//using repo bean : simple + fast to impl and test
		Flux<Person> personFlux = personRepo.findAll();
		personFlux.subscribe(
				item -> System.out.println("item = " + item),
				err -> System.out.println("err.getMessage() = " + err.getMessage()),
				() -> System.out.println("personFlux DONE = ")
		);

		//same thing using service bean
//		Flux<Person> personFlux = personService.findAll();
//		personFlux.subscribe(
//				item -> System.out.println("item = " + item),
//				err -> System.out.println("err.getMessage() = " + err.getMessage()),
//				() -> System.out.println("personFlux DONE = ")
//		);

		//✅ todo : update
		Mono<Person> personMono = personRepo.save(new Person(1, "omprakash"));
		personMono.subscribe(item -> System.out.println("item = " + item),
				err -> System.out.println("err.getMessage() = " + err.getMessage()),
				() -> System.out.println("personMono DONE = "));

		//todo insert

	}
}
