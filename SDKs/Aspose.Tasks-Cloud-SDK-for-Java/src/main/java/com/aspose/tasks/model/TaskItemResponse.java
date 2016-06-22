package com.aspose.tasks.model;

import com.aspose.tasks.model.TaskItem;
public class TaskItemResponse {
  private TaskItem TaskItem = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getTaskItem
	 * Gets TaskItem
	 * @return TaskItem
	 */
  public TaskItem getTaskItem() {
    return TaskItem;
  }

	/**
	 * setTaskItem
	 * Sets TaskItem
	 * @param TaskItem TaskItem
	 */
  public void setTaskItem(TaskItem TaskItem) {
    this.TaskItem = TaskItem;
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
    sb.append("class TaskItemResponse {\n");
    sb.append("  TaskItem: ").append(TaskItem).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

