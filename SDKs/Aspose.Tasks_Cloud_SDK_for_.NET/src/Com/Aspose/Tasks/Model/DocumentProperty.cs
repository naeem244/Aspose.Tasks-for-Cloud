using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model {
  public class DocumentProperty {
    public string Name { get; set; }

    public string Value { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class DocumentProperty {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
