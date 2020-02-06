using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.ConstReadOnly
{
    class TaskBar
    {
        public const int x = 1;
        public const int y = 1;
        public readonly int x1 = 20;
        public readonly int y1;

        public TaskBar()
        {
            //x=5;  //not poosible
            //y=5; //not posiible
            x1 = 25;
            y1 = 25;
        }

        public TaskBar(int pX1,int pY1)
        {
            x1 = pX1;
            y1 = pY1;
        }
        public void display()
        {
            //x = 8;   //not poosible
            //y = 8;   //not poosible
            //x1 = 35;  //not poosible
            //y1 = 35;   //not poosible
            Console.WriteLine("X (Const):" + x);
            Console.WriteLine("Y (Const):" + x);
            Console.WriteLine("X1 (Readonly):" + x1);
            Console.WriteLine("Y1 (Readonly):" + y1);
        }
    }
}
