/**
 * 
 */
package ru.kruvv.artplansoft.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import ru.kruvv.artplansoft.model.Kind;

/**
 * @author viktor
 *
 */
public interface KindRepo extends JpaRepository<Kind, Long> {

}
