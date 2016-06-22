using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class Calendar {
    public string Name { get; set; }

    public int? Uid { get; set; }

    public List<WeekDay> Days { get; set; }

    public List<CalendarException> Exceptions { get; set; }

    public bool? IsBaseCalendar { get; set; }

    public bool? IsBaselineCalendar { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Calendar {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Uid: ").Append(Uid).Append("\n");
      sb.Append("  Days: ").Append(Days).Append("\n");
      sb.Append("  Exceptions: ").Append(Exceptions).Append("\n");
      sb.Append("  IsBaseCalendar: ").Append(IsBaseCalendar).Append("\n");
      sb.Append("  IsBaselineCalendar: ").Append(IsBaselineCalendar).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
