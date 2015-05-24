package com.aspose.tasks.model;

import java.util.*;
public class TaskLinksResponse {
  private List<TaskLink> TaskLinks = new ArrayList<TaskLink>();
  private String Code = null;
  private String Status = null;
  /**
	 * getTaskLinks
	 * Gets List<TaskLink>
	 * @return TaskLinks
	 */
  public List<TaskLink> getTaskLinks() {
    return TaskLinks;
  }

	/**
	 * setTaskLinks
	 * Sets List<TaskLink>
	 * @param TaskLinks List<TaskLink>
	 */
  public void setTaskLinks(List<TaskLink> TaskLinks) {
    this.TaskLinks = TaskLinks;
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
    sb.append("class TaskLinksResponse {\n");
    sb.append("  TaskLinks: ").append(TaskLinks).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

