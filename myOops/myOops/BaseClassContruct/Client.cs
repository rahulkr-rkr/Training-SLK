using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.BaseClassContruct
{
    class Client
    {
        static void Main(string[] args)
        {
            MyDev md;
            md = new MyDev();      //memory occupied=base+dev
            //md = new MyDev("New Dot Net Bond");  //will call default base class constructor
            md.devDisplay();
            md.baseDisplay();   //this is also possible
        }
    }
}
