package helper;

import java.util.List;

import com.lithan.model.Education;
import com.lithan.model.Experience;

/*import com.lithan.model.Educations;
import com.lithan.model.Experiences;
*/
public class Profile {
	private Long id;
	private String firstName;
	private String lastName;
	private String fullName;
	private String email;
	private String city;
	

	public Profile(Long id, String firstName, String lastName, String fullName, String email, String city,
			List<Experience> ex, List<Education> ed) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.fullName = fullName;
		this.email = email;
		this.city = city;
		this.ex = ex;
		this.ed = ed;
	}
	
	
	
	private List<Experience> ex; private List<Education> ed;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<Experience> getEx() {
		return ex;
	}
	public void setEx(List<Experience> ex) {
		this.ex = ex;
	}
	public List<Education> getEd() {
		return ed;
	}
	public void setEd(List<Education> ed) {
		this.ed = ed;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	/*
	 * public List<Experiences> getEx() { return ex; } public void
	 * setEx(List<Experiences> ex) { this.ex = ex; } public List<Educations> getEd()
	 * { return ed; } public void setEd(List<Educations> ed) { this.ed = ed;
	 */
	}
	
	

