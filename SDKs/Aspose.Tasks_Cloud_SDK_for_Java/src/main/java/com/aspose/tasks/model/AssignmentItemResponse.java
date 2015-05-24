package com.aspose.tasks.model;

import com.aspose.tasks.model.AssignmentItem;
public class AssignmentItemResponse {
  private AssignmentItem AssignmentItem = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getAssignmentItem
	 * Gets AssignmentItem
	 * @return AssignmentItem
	 */
  public AssignmentItem getAssignmentItem() {
    return AssignmentItem;
  }

	/**
	 * setAssignmentItem
	 * Sets AssignmentItem
	 * @param AssignmentItem AssignmentItem
	 */
  public void setAssignmentItem(AssignmentItem AssignmentItem) {
    this.AssignmentItem = AssignmentItem;
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
    sb.append("class AssignmentItemResponse {\n");
    sb.append("  AssignmentItem: ").append(AssignmentItem).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

