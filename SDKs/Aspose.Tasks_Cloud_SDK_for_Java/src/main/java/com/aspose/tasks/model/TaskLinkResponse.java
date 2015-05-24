package com.aspose.tasks.model;

import com.aspose.tasks.model.TaskLink;
public class TaskLinkResponse {
  private TaskLink TaskLink = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getTaskLink
	 * Gets TaskLink
	 * @return TaskLink
	 */
  public TaskLink getTaskLink() {
    return TaskLink;
  }

	/**
	 * setTaskLink
	 * Sets TaskLink
	 * @param TaskLink TaskLink
	 */
  public void setTaskLink(TaskLink TaskLink) {
    this.TaskLink = TaskLink;
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
    sb.append("class TaskLinkResponse {\n");
    sb.append("  TaskLink: ").append(TaskLink).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

