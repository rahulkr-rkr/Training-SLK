using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.MyProperties
{
    class Client
    {
        static void Main(string[] args)
        {
            Shape sObj = new Shape();
            sObj.x = 101;
            sObj.y = 5;
            sObj.x1 = 10;
            sObj.y1 = 10;

            sObj.Draw();

            Console.WriteLine(sObj.x+40);
        }
    }
}
