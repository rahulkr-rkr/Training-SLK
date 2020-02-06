using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.HidingMethod
{
    class Client
    {
        static void Main(string[] args)
        {

        /*
            MyDev md1;
            md1 = new MyDev();
            md1.display();
        */


            MyBase mb1;
            //mb1 = new MyBase();
            mb1 = new MyDev();
            mb1.display();      //will call base class function
        }
    }
}
