package com.aspose.tasks.model;

import java.util.*;
import com.aspose.tasks.model.Link;
public class ExtendedAttributeItems {
  private List<ExtendedAttributeItem> List = new ArrayList<ExtendedAttributeItem>();
  private Link link = null;
  /**
	 * getList
	 * Gets List<ExtendedAttributeItem>
	 * @return List
	 */
  public List<ExtendedAttributeItem> getList() {
    return List;
  }

	/**
	 * setList
	 * Sets List<ExtendedAttributeItem>
	 * @param List List<ExtendedAttributeItem>
	 */
  public void setList(List<ExtendedAttributeItem> List) {
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
    sb.append("class ExtendedAttributeItems {\n");
    sb.append("  List: ").append(List).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

