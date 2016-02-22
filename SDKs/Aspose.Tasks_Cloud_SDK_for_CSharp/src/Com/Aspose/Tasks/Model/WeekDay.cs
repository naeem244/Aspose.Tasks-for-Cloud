using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class WeekDay {
    public string DayType { get; set; }

    public bool? DayWorking { get; set; }

    public DateTime FromDate { get; set; }

    public DateTime ToDate { get; set; }

    public List<WorkingTime> WorkingTimes { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WeekDay {\n");
      sb.Append("  DayType: ").Append(DayType).Append("\n");
      sb.Append("  DayWorking: ").Append(DayWorking).Append("\n");
      sb.Append("  FromDate: ").Append(FromDate).Append("\n");
      sb.Append("  ToDate: ").Append(ToDate).Append("\n");
      sb.Append("  WorkingTimes: ").Append(WorkingTimes).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
