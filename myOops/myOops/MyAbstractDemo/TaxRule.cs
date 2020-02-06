using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyAbstractDemo
{
    abstract class TaxRule
    {
        public abstract void display();

        public int calculate(int iNetIncome)
        {
            if (iNetIncome > 500000)
            {
                return 5000;
            }
            else
                return 1000;
        }
    }
}
