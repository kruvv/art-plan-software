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

import lombok.Data;


/**
 * @author <Viktor Krupkin>
 *
 */
@Data
@Entity
@Table(name = "animals")
public class Animal implements ComboListItem {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;	
	private String name;
	private String sex;	
	private Date birthday;
//	@ManyToOne
//	@JoinColumn(name = "kind_id")
//	private Kind kind;
	
}
