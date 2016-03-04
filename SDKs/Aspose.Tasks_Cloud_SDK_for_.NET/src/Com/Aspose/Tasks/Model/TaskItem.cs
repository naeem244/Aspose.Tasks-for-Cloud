using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class TaskItem {
    public Link Link { get; set; }

    public int? Uid { get; set; }

    public int? Id { get; set; }

    public string Name { get; set; }

    public DateTime Start { get; set; }

    public DateTime Finish { get; set; }

    public string Duration { get; set; }

    public string DurationString { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TaskItem {\n");
      sb.Append("  Link: ").Append(Link).Append("\n");
      sb.Append("  Uid: ").Append(Uid).Append("\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Start: ").Append(Start).Append("\n");
      sb.Append("  Finish: ").Append(Finish).Append("\n");
      sb.Append("  Duration: ").Append(Duration).Append("\n");
      sb.Append("  DurationString: ").Append(DurationString).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
