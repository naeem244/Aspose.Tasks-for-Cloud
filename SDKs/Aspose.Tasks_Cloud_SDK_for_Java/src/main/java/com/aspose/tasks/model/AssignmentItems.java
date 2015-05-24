package com.aspose.tasks.model;

import java.util.*;
import com.aspose.tasks.model.Link;
public class AssignmentItems {
  private List<AssignmentItem> List = new ArrayList<AssignmentItem>();
  private Link link = null;
  /**
	 * getList
	 * Gets List<AssignmentItem>
	 * @return List
	 */
  public List<AssignmentItem> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<AssignmentItem>
	 * @param List List<AssignmentItem>
	 */
  public void setList(List<AssignmentItem> List) {
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
    sb.append("class AssignmentItems {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

