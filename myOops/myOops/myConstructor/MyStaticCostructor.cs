using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.myConstructor
{
    class MyStaticCostructor
    {
        static void Main(string[] args)
        {
            Circle.display();     //calls the static constructor

            Circle c;
            Console.WriteLine("Before new");
            c = new Circle();     //calls normal constructor
            //c = new Circle();
            //c.display();   //This is not possible
            c.mydisplay();
            Circle.display(); 
        }

    }
    class Circle
    {
        public static int x;
        public static int y;

        static Circle()        //gets called only once
        {
            x = 2;
            y = 2;
            Console.WriteLine("In Static Constructor");
        }

        public Circle()   //gets called every time, when new is used
        {
            x = 5;
            y = 5;
            Console.WriteLine("In Init Constructor");
        }

        public static void display()
        {
            Console.WriteLine("X:" + x + "Y:" + y);
        }

        public void mydisplay()
        {
            Console.WriteLine("X:" + x + "Y:" + y);
        }
        

    }
}
