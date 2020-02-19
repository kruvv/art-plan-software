/**
 * 
 */
package ru.kruvv.artplansoft.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.Data;
import ru.kruvv.artplansoft.util.EntityIdResolver;


/**
 * @author <Viktor Krupkin>
 *
 */
@Data
@Entity
@Table(name = "animals")
@JsonIdentityInfo(
		generator = ObjectIdGenerators.PropertyGenerator.class,
		scope = Animal.class,
		resolver = EntityIdResolver.class,
		property = "id"
		)
public class Animal implements ComboListItem {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;	
	private String name;
	private String sex;	
	private Date birthday;
	
	@ManyToOne
	@JsonIdentityReference(alwaysAsId = true)
	private Kind kind;
	
}
