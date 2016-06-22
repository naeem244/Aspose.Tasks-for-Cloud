using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class CalendarItem {
    public Link Link { get; set; }

    public int? Uid { get; set; }

    public string Name { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class CalendarItem {\n");
      sb.Append("  Link: ").Append(Link).Append("\n");
      sb.Append("  Uid: ").Append(Uid).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
