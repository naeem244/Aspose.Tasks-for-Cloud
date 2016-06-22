package com.aspose.tasks.model;

import java.util.*;
import com.aspose.tasks.model.Link;
public class ResourceItems {
  private List<ResourceItem> List = new ArrayList<ResourceItem>();
  private Link link = null;
  /**
	 * getList
	 * Gets List<ResourceItem>
	 * @return List
	 */
  public List<ResourceItem> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<ResourceItem>
	 * @param List List<ResourceItem>
	 */
  public void setList(List<ResourceItem> List) {
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
    sb.append("class ResourceItems {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

