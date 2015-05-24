package com.aspose.tasks.model;

import com.aspose.tasks.model.ResourceAssignment;
public class AssignmentResponse {
  private ResourceAssignment Assignment = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getAssignment
	 * Gets ResourceAssignment
	 * @return Assignment
	 */
  public ResourceAssignment getAssignment() {
    return Assignment;
  }

	/**
	 * setAssignment
	 * Sets ResourceAssignment
	 * @param Assignment ResourceAssignment
	 */
  public void setAssignment(ResourceAssignment Assignment) {
    this.Assignment = Assignment;
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
    sb.append("class AssignmentResponse {\n");
    sb.append("  Assignment: ").append(Assignment).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

