using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class CalendarException {
    public bool? EnteredByOccurrences { get; set; }

    public DateTime FromDate { get; set; }

    public DateTime ToDate { get; set; }

    public int? Occurrences { get; set; }

    public string Name { get; set; }

    public string Type { get; set; }

    public int? Period { get; set; }

    public List<DayType> DaysOfWeek { get; set; }

    public string MonthItem { get; set; }

    public string MonthPosition { get; set; }

    public string Month { get; set; }

    public int? MonthDay { get; set; }

    public bool? DayWorking { get; set; }

    public List<WorkingTime> WorkingTimes { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class CalendarException {\n");
      sb.Append("  EnteredByOccurrences: ").Append(EnteredByOccurrences).Append("\n");
      sb.Append("  FromDate: ").Append(FromDate).Append("\n");
      sb.Append("  ToDate: ").Append(ToDate).Append("\n");
      sb.Append("  Occurrences: ").Append(Occurrences).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Period: ").Append(Period).Append("\n");
      sb.Append("  DaysOfWeek: ").Append(DaysOfWeek).Append("\n");
      sb.Append("  MonthItem: ").Append(MonthItem).Append("\n");
      sb.Append("  MonthPosition: ").Append(MonthPosition).Append("\n");
      sb.Append("  Month: ").Append(Month).Append("\n");
      sb.Append("  MonthDay: ").Append(MonthDay).Append("\n");
      sb.Append("  DayWorking: ").Append(DayWorking).Append("\n");
      sb.Append("  WorkingTimes: ").Append(WorkingTimes).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
