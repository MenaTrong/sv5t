package context;

public class ProfileUserDTO {

	private String userName, email, phoneNumber, dateOfBirth, sex, nation, religion, permanentAddress,
			address, unionJoining, joiningDangReserve, joiningDang, studentID, confirm, theEditing, level, confirmLevelDepartment;

	
	
	public ProfileUserDTO(String userName, String email, String phoneNumber, String dateOfBirth, String sex,
			String nation, String religion, String permanentAddress, String address, String unionJoining,
			String joiningDangReserve, String joiningDang, String studentID, String confirm, String theEditing,
			String level, String confirmLevelDepartment) {
		super();
		this.userName = userName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.dateOfBirth = dateOfBirth;
		this.sex = sex;
		this.nation = nation;
		this.religion = religion;
		this.permanentAddress = permanentAddress;
		this.address = address;
		this.unionJoining = unionJoining;
		this.joiningDangReserve = joiningDangReserve;
		this.joiningDang = joiningDang;
		this.studentID = studentID;
		this.confirm = confirm;
		this.theEditing = theEditing;
		this.level = level;
		this.confirmLevelDepartment = confirmLevelDepartment;
	}
	
	
	public String getConfirmLevelDepartment() {
		return confirmLevelDepartment;
	}



	public void setConfirmLevelDepartment(String confirmLevelDepartment) {
		this.confirmLevelDepartment = confirmLevelDepartment;
	}



	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUnionJoining() {
		return unionJoining;
	}

	public void setUnionJoining(String unionJoining) {
		this.unionJoining = unionJoining;
	}

	public String getJoiningDangReserve() {
		return joiningDangReserve;
	}

	public void setJoiningDangReserve(String joiningDangReserve) {
		this.joiningDangReserve = joiningDangReserve;
	}

	public String getJoiningDang() {
		return joiningDang;
	}

	public void setJoiningDang(String joiningDang) {
		this.joiningDang = joiningDang;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public String getTheEditing() {
		return theEditing;
	}

	public void setTheEditing(String theEditing) {
		this.theEditing = theEditing;
	}

	
}
