using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class AssignmentItem {
    public Link Link { get; set; }

    public int? Uid { get; set; }

    public int? TaskUid { get; set; }

    public int? ResourceUid { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class AssignmentItem {\n");
      sb.Append("  Link: ").Append(Link).Append("\n");
      sb.Append("  Uid: ").Append(Uid).Append("\n");
      sb.Append("  TaskUid: ").Append(TaskUid).Append("\n");
      sb.Append("  ResourceUid: ").Append(ResourceUid).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
