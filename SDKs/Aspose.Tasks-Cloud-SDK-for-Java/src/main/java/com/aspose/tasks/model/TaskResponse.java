package com.aspose.tasks.model;

import com.aspose.tasks.model.Task;
public class TaskResponse {
  private Task Task = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getTask
	 * Gets Task
	 * @return Task
	 */
  public Task getTask() {
    return Task;
  }

	/**
	 * setTask
	 * Sets Task
	 * @param Task Task
	 */
  public void setTask(Task Task) {
    this.Task = Task;
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
    sb.append("class TaskResponse {\n");
    sb.append("  Task: ").append(Task).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

