/**
 * 
 */
package ru.kruvv.artplansoft.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import ru.kruvv.artplansoft.model.Animal;

/**
 * @author <Viktor Krupkin>
 *
 */
public interface AnimalRepo extends JpaRepository<Animal, Long> {

}
