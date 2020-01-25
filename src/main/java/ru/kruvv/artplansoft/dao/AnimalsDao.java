/**
 * 
 */
package ru.kruvv.artplansoft.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ru.kruvv.artplansoft.model.Animal;

/**
 * @author <Viktor Krupkin>
 *
 */
public interface AnimalsDao extends JpaRepository<Animal, Long> {

}
