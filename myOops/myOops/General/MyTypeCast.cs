using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.General
{
    class MyTypeCast
    {
        public static void Main(string[] args)
        {
            byte bX;
            short sY;
            int iZ;

            sY = 255;
            iZ = sY;
            Console.WriteLine("Value Of Z: " + iZ);
            //bX = sY;    //this will not work

            bX = (byte)sY;     //TYPECASTING    

            //using "as" Oprator to do type same conversion
            //as works on referance type or nullable types only
            //bX = sY asbyte; //complication error
            Console.WriteLine("Value of X: " + bX);
        }
    }
}
