package context;

public class AssessDTO {

	private String assessID, studentID, assessTittle01, assessTittle02, assessTittle03, assessTittle04, assessTittle05;

	public AssessDTO(String assessID, String studentID, String assessTittle01, String assessTittle02,
			String assessTittle03, String assessTittle04, String assessTittle05) {
		super();
		this.assessID = assessID;
		this.studentID = studentID;
		this.assessTittle01 = assessTittle01;
		this.assessTittle02 = assessTittle02;
		this.assessTittle03 = assessTittle03;
		this.assessTittle04 = assessTittle04;
		this.assessTittle05 = assessTittle05;
	}

	public String getAssessID() {
		return assessID;
	}

	public void setAssessID(String assessID) {
		this.assessID = assessID;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getAssessTittle01() {
		return assessTittle01;
	}

	public void setAssessTittle01(String assessTittle01) {
		this.assessTittle01 = assessTittle01;
	}

	public String getAssessTittle02() {
		return assessTittle02;
	}

	public void setAssessTittle02(String assessTittle02) {
		this.assessTittle02 = assessTittle02;
	}

	public String getAssessTittle03() {
		return assessTittle03;
	}

	public void setAssessTittle03(String assessTittle03) {
		this.assessTittle03 = assessTittle03;
	}

	public String getAssessTittle04() {
		return assessTittle04;
	}

	public void setAssessTittle04(String assessTittle04) {
		this.assessTittle04 = assessTittle04;
	}

	public String getAssessTittle05() {
		return assessTittle05;
	}

	public void setAssessTittle05(String assessTittle05) {
		this.assessTittle05 = assessTittle05;
	}
}
