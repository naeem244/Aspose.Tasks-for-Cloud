package com.aspose.tasks.model;

import java.util.*;
import com.aspose.tasks.model.Link;
public class ResourceAssignments {
  private List<ResourceAssignment> List = new ArrayList<ResourceAssignment>();
  private Link link = null;
  /**
	 * getList
	 * Gets List<ResourceAssignment>
	 * @return List
	 */
  public List<ResourceAssignment> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<ResourceAssignment>
	 * @param List List<ResourceAssignment>
	 */
  public void setList(List<ResourceAssignment> List) {
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
    sb.append("class ResourceAssignments {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

