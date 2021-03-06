/**
 * 
 */
package ru.kruvv.artplansoft.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.Data;
import ru.kruvv.artplansoft.util.EntityIdResolver;

/**
 * @author <Viktor Krupkin>
 *
 */
@Data
@Entity
@Table(name = "kinds")
@JsonIdentityInfo(
		generator = ObjectIdGenerators.PropertyGenerator.class,
		scope = Kind.class,
		resolver = EntityIdResolver.class,
		property = "id"
		)
public class Kind implements ComboListItem {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	 private Long id; 
	
	private String name;
	
	
}
