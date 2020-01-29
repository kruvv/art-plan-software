/**
 * 
 */
package ru.kruvv.artplansoft.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

/**
 * @author <Viktor Krupkin>
 *
 */
@Data
@Entity
@Table(name = "kinds")
public class Kind {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String type;
	
	@OneToMany(mappedBy = "kind")
	private List<Animal> type_animal;
}
