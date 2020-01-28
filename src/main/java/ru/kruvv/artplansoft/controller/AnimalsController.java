/**
 * 
 */
package ru.kruvv.artplansoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author <Viktor Krupkin>
 *
 */
@Controller
public class AnimalsController {

	@RequestMapping("/")
	public String animal(Model model ) {
		return "animals";
	}
	
	
}
