using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.MyDebug
{
    class MyDebugDemo
    {
        static void Main(string[] args)
        {
            Console.WriteLine("HELLO SLK");
            int x, y, iResults;
            x = 50;
            y = 100;
            string s;
            s = "Hello" + DateTime.Now.ToString();

            iResults = Sum(x, y);
            Console.WriteLine("Results:" + iResults);
        }
        public static int Sum(int val1,int val2)
        {
            int temp;
            temp = val1;
            val1 = temp;
            temp++;
            temp += val1 + val2;
            return temp;
        }
    }
}
