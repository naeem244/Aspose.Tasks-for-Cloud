package com.aspose.tasks.model;

import com.aspose.tasks.model.CalendarItems;
public class CalendarItemsResponse {
  private CalendarItems Calendars = null;
  private String Code = null;
  private String Status = null;
  
  public CalendarItems getCalendars() {
   return Calendars;
}

public void setCalendars(CalendarItems calendars) {
   Calendars = calendars;
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

  
}

