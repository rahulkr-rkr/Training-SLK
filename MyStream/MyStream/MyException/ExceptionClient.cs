using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyStream.MyException
{
    class ExceptionClient
    {
        public static void Main(string[] args)
        {
            string x, y;
            int total = 0;

            Console.WriteLine("Enter the 1st Number:");
            x = Console.ReadLine();
            Console.WriteLine("Enter the 2nd Number:");
            y = Console.ReadLine();

            try
            {
                total = System.Int16.Parse(x) / System.Int16.Parse(y);
            }
            catch(DivideByZeroException e)
            {
                Console.WriteLine("operation Incomplete Beacuse: {0}",e);
                return;
            }
            catch(Exception ee)
            {
                Console.WriteLine("General Exception Handler: {0}:",ee.Message);
                //throw ee;
                return;
            }
            finally
            {
                Console.WriteLine("Result is: {0}",total);
            }
            Console.WriteLine("END OF MAIN FUNCTION!!!!!!");
        }
    }
}
