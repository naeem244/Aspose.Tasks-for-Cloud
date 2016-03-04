using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class ExtendedAttributeItems {
    public List<ExtendedAttributeItem> List { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ExtendedAttributeItems {\n");
      sb.Append("  List: ").Append(List).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
