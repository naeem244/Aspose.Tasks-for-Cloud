using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class OutlineCodeItem {
    public Link Link { get; set; }

    public int? Index { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class OutlineCodeItem {\n");
      sb.Append("  Link: ").Append(Link).Append("\n");
      sb.Append("  Index: ").Append(Index).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
