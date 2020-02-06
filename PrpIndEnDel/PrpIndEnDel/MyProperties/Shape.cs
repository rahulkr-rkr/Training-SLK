using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.MyProperties
{
    class Shape
    {
        int _x;
        public int x
        {
           
            set
            {
                if (value >= 100)
                {
                    _x = 2;
                    //throw new Exception("Value above 100 not allowed");
                }
                else
                    _x = value;
            }
            
            get
            {
                return _x;
            }
            
        }
        //auto prpoperty
        //typ "prop"+double tab to display the property
        //public int x { get; set; }
        public int y { get; set; }
        public int x1 { get; set; }
        public int y1 { get; set; }

        public void Draw()
        {
            Console.WriteLine("X: " + _x);
            Console.WriteLine("Y: " + y);
            Console.WriteLine("X1: " + x1);
            Console.WriteLine("Y1: " + y1);
        }
    }
}
