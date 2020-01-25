/**
 * 
 */
package ru.kruvv.artplansoft.service;

import java.util.List;

import ru.kruvv.artplansoft.model.Animal;

/**
 * @author <Viktor Krupkin>
 *
 */
public interface AnimalService {

	List<Animal> findByName(String nikname);
	void save(Animal animal);
	Animal findById(Long id);
}
