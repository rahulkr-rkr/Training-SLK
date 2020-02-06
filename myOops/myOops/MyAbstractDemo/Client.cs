using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyAbstractDemo
{
    class Client
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Demo for Abstract  Class");
            TaxRule tr;
            //tr = new TaxRule();  //cannot create object for abstract class
            tr = new IndiaTax();
            tr.display();

            Console.WriteLine("2nd case:" + tr.calculate(510000));      //This is possiblle
            //tr.welcomeNote();    //cannot access this function
        }
    }
}
