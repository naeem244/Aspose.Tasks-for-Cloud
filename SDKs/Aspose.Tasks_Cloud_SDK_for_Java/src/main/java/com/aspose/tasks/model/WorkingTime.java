package com.aspose.tasks.model;

public class WorkingTime {
  private String FromTime = null;
  private String ToTime = null;
  /**
         * getFromTime
         * Gets String
         * @return FromTime
         */
  public String getFromTime() {
    return FromTime;
  }

        /**
         * setFromTime
         * Sets String
         * @param FromTime String
         */
  public void setFromTime(String FromTime) {
    this.FromTime = FromTime;
  }

  /**
         * getToTime
         * Gets String
         * @return ToTime
         */
  public String getToTime() {
    return ToTime;
  }

        /**
         * setToTime
         * Sets String
         * @param ToTime String
         */
  public void setToTime(String ToTime) {
    this.ToTime = ToTime;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class WorkingTime {\n");
    sb.append("  FromTime: ").append(FromTime).append("\n");
    sb.append("  ToTime: ").append(ToTime).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

