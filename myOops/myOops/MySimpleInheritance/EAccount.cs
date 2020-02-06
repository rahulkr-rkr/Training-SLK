using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MySimpleInheritance
{
    class EAccount:AccountHolder   //1 variable(3+1)
    {
        public String sCardNo;

        public EAccount()
        {
            sCardNo = "1111 2222 4444 6666";
            Console.WriteLine("Inside EAAcoount Constructor");
        }

        public void eaDisplay()
        {
            Console.WriteLine("EAccount Display Function");
            Console.WriteLine("Card Number:" + sCardNo);
            ahDisplay();
            
        }
    }
}
