/**
 * 
 */
package ru.kruvv.artplansoft.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ru.kruvv.artplansoft.dao.AnimalsDao;
import ru.kruvv.artplansoft.model.Animal;

/**
 * @author <Viktor Krupkin>
 *
 */
@Service
public class AnimalServiceImpl implements AnimalService {
	
	@Autowired
	private AnimalsDao animalsDao;

	@Override
	public List<Animal> findByName(String nikname) {
		
		return null;
	}

	@Override
	public void save(Animal animal) {
		// TODO Auto-generated method stub

	}

	@Override
	public Animal findById(Long id) {
		
		return animalsDao.findById(id);
	}

}
