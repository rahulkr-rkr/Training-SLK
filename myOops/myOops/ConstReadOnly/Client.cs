using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.ConstReadOnly
{
    class Client
    {
        public static void Main(string[] args)
        {
            TaskBar tb;
            //tb=new TaskBar;
            tb = new TaskBar(40, 45);

            tb.display();
        }
    }
}
