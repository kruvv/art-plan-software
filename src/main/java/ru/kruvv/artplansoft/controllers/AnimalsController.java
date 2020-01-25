/**
 * 
 */
package ru.kruvv.artplansoft.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author <Viktor Krupkin>
 *
 */
@Controller
public class AnimalsController {

	@RequestMapping({"/", "/home"})
	public String animal() {
		return "animals";
	}
	
	
}
