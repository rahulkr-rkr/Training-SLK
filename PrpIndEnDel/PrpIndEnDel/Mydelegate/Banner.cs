using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.Mydelegate
{
    //defining the client function signature
    public delegate void AddressOf();
    public class Banner
    {
        public static void dispadd(AddressOf ClnFun)
        {
            Console.WriteLine("+-------------------------------------------+");
            ClnFun();
            Console.WriteLine("+--------------------------------------------+");
        }
    }
}
