package com.aspose.tasks.model;

public class AssignmentsResponse {
  private AssignmentItems Assignments = null;
  private String Code = null;
  private String Status = null;
  
  public AssignmentItems getAssignments() {
   return Assignments;
}

public void setAssignments(AssignmentItems assignments) {
   Assignments = assignments;
}

/**
	 * getCode
	 * Gets String
	 * @return Code
	 */
  public String getCode() {
    return Code;
  }

	/**
	 * setCode
	 * Sets String
	 * @param Code String
	 */
  public void setCode(String Code) {
    this.Code = Code;
  }

  /**
	 * getStatus
	 * Gets String
	 * @return Status
	 */
  public String getStatus() {
    return Status;
  }

	/**
	 * setStatus
	 * Sets String
	 * @param Status String
	 */
  public void setStatus(String Status) {
    this.Status = Status;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AssignmentsResponse {\n");
    sb.append("  Assignments: ").append(Assignments).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

