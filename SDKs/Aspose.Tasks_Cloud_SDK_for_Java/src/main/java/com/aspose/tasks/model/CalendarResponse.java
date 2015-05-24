package com.aspose.tasks.model;

import com.aspose.tasks.model.Calendar;
public class CalendarResponse {
  private Calendar Calendar = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getCalendar
	 * Gets Calendar
	 * @return Calendar
	 */
  public Calendar getCalendar() {
    return Calendar;
  }

	/**
	 * setCalendar
	 * Sets Calendar
	 * @param Calendar Calendar
	 */
  public void setCalendar(Calendar Calendar) {
    this.Calendar = Calendar;
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
    sb.append("class CalendarResponse {\n");
    sb.append("  Calendar: ").append(Calendar).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

