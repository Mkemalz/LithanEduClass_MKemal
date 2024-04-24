package helper;

import java.util.List;

public class Profile {
	private Long id;
	private String FirstName;
	private String LastName;
	private String fullName;
	private String Experience;
	private String Jobs;
	private String Dateofbirth;
	private String Education;
	private String Skill;
	public Profile(Long id, String firstName, String lastName, String fullName, String experience, String jobs,
			String dateofbirth, String education, String skill) {
		super();
		this.id = id;
		FirstName = firstName;
		LastName = lastName;
		this.fullName = fullName;
		Experience = experience;
		Jobs = jobs;
		Dateofbirth = dateofbirth;
		Education = education;
		Skill = skill;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getExperience() {
		return Experience;
	}
	public void setExperience(String experience) {
		Experience = experience;
	}
	public String getJobs() {
		return Jobs;
	}
	public void setJobs(String jobs) {
		Jobs = jobs;
	}
	public String getDateofbirth() {
		return Dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		Dateofbirth = dateofbirth;
	}
	public String getEducation() {
		return Education;
	}
	public void setEducation(String education) {
		Education = education;
	}
	public String getSkill() {
		return Skill;
	}
	public void setSkill(String skill) {
		Skill = skill;
	}
	
	
	
}
