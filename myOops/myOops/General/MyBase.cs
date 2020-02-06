using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.General
{
    class MyBase
    {
        private int iX;
        private String sY;

        public MyBase()
        {
            iX = 5;
            sY = "Bond";
            Console.WriteLine("Inside MyBase Constructor");
        }

        void defaultDisplay()    //only  current class can use it
        {
            Console.WriteLine("Default Display Function(private)");
            Console.WriteLine("Value of iX: " + iX);
            Console.WriteLine("Value of sY: " + sY);
        }

        public void pubDisplay()
        {
            //Any class can use this method using object of this class
            Console.WriteLine("\nPublic Display Function");
            Console.WriteLine("Value of iX: " + iX);
            Console.WriteLine("Value of sY: " + sY);
        }

        public void pvtDisplay()
        {
            //Only Current class can use this method
            Console.WriteLine("\nPrivate Display Function");
            Console.WriteLine("Value of iX: " + iX);
            Console.WriteLine("Value of sY: " + sY);
        }

        public void prtDisplay()
        {
            Console.WriteLine("\nProtected Display Function");
            Console.WriteLine("Value of iX: " + iX);
            Console.WriteLine("Value of sY: " + sY);
        }
        internal void intDisplay()
        {
            Console.WriteLine("\nInternal Display Function");
        }

        protected internal void piDisplay()
        {
            //any calss can use this mathod using object of this class
            //within a package
            //class in another package can use this method only
            //when it inherits
            Console.WriteLine("\nProtected Internal Display Function");
        }
    }
}
