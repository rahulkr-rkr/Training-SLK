using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyAbstractDemo
{
    class IndiaTax:TaxRule
    {
        public override void display()
        {
            WelcomeNote();
            Console.WriteLine("Tax per Indian Rule:" + calculate(499000));
        }
        void WelcomeNote()
        {
            Console.WriteLine("Welcome to India Tax Class");
        }
    }
}
