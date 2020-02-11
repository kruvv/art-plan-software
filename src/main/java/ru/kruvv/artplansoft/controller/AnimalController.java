/**
 * 
 */
package ru.kruvv.artplansoft.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ru.kruvv.artplansoft.model.Animal;
import ru.kruvv.artplansoft.repo.AnimalRepo;

/**
 * @author <Viktor Krupkin>
 *
 */
@RestController
@RequestMapping("/api/animal")
public class AnimalController extends AbstractRestController<Animal, AnimalRepo>{
	
	public AnimalController(AnimalRepo repo) {
		super(repo);
	}
}
