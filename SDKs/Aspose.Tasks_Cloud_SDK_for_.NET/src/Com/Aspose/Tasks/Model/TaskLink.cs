using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class TaskLink {
    public Link Link { get; set; }

    public int? Index { get; set; }

    public int? PredecessorUid { get; set; }

    public int? SuccessorUid { get; set; }

    public string LinkType { get; set; }

    public int? Lag { get; set; }

    public string LagFormat { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TaskLink {\n");
      sb.Append("  Link: ").Append(Link).Append("\n");
      sb.Append("  Index: ").Append(Index).Append("\n");
      sb.Append("  PredecessorUid: ").Append(PredecessorUid).Append("\n");
      sb.Append("  SuccessorUid: ").Append(SuccessorUid).Append("\n");
      sb.Append("  LinkType: ").Append(LinkType).Append("\n");
      sb.Append("  Lag: ").Append(Lag).Append("\n");
      sb.Append("  LagFormat: ").Append(LagFormat).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
