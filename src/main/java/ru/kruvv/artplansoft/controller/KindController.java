/**
 * 
 */
package ru.kruvv.artplansoft.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ru.kruvv.artplansoft.model.Kind;
import ru.kruvv.artplansoft.repo.KindRepo;

/**
 * @author viktor
 *
 */
@RestController
@RequestMapping("/api/kind")
public class KindController extends AbstractRestController<Kind, KindRepo> {

	public KindController(KindRepo repo) {
		super(repo);
		
	}

}
