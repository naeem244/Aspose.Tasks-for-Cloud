package com.aspose.tasks.model;

import java.util.*;
import com.aspose.tasks.model.Link;
public class AssignmentItems {
  private List<AssignmentItem> AssignmentItem = new ArrayList<AssignmentItem>();
  private Link link = null;

  public List<AssignmentItem> getAssignmentItem() {
   return AssignmentItem;
}

public void setAssignmentItem(List<AssignmentItem> assignmentItem) {
   AssignmentItem = assignmentItem;
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
 
}

