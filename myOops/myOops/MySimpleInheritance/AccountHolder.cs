using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MySimpleInheritance
{
    class AccountHolder   //3 variables
    {
        int iAccountNumber;
        String sName;
        double dBalance;

        public AccountHolder()
        {
            iAccountNumber = 1;
            sName = "Nithin";
            dBalance = 56000.50;
            Console.WriteLine("Inside AccountHolder Constructor");
        }

        public void ahDisplay()
        {
            Console.WriteLine("AccountHolder Display Function");
            Console.WriteLine("Account Number:"+iAccountNumber);
            Console.WriteLine("Name:" + sName);
            Console.WriteLine("Balance Available:" + dBalance);
        }
    }
}
