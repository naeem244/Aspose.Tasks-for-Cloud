using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Tasks.Model
{
    public class AssignmentItems
    {
        public List<AssignmentItem> AssignmentItem { get; set; }

        public Link link { get; set; }

        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class AssignmentItems {\n");
            sb.Append("  List: ").Append(AssignmentItem).Append("\n");
            sb.Append("  link: ").Append(link).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
    }
}
