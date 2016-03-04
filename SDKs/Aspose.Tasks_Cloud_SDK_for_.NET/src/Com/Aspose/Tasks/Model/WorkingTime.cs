using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class WorkingTime {
    public DateTime FromTime { get; set; }

    public DateTime ToTime { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WorkingTime {\n");
      sb.Append("  FromTime: ").Append(FromTime).Append("\n");
      sb.Append("  ToTime: ").Append(ToTime).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
