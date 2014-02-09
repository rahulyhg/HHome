using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BusinessObjects
{
    public class PropertyDetails
    {
        public ListingDetails ListingDetails { get; set; }
        public PropertyObject PropertyObject { get; set; }
        public ContactDetails ContactDetails { get; set; }
    }
}
