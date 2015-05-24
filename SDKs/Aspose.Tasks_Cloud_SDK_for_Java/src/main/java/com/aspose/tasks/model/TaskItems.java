package com.aspose.tasks.model;

import java.util.*;
import com.aspose.tasks.model.Link;
public class TaskItems {
  private List<TaskItem> List = new ArrayList<TaskItem>();
  private Link link = null;
  /**
	 * getList
	 * Gets List<TaskItem>
	 * @return List
	 */
  public List<TaskItem> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<TaskItem>
	 * @param List List<TaskItem>
	 */
  public void setList(List<TaskItem> List) {
    this.List = List;
  }

  /**
	 * getLink
	 * Gets Link
	 * @return link
	 */
  public Link getLink() {
    return link;
  }

	/**
	 * setLink
	 * Sets Link
	 * @param link Link
	 */
  public void setLink(Link link) {
    this.link = link;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TaskItems {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

