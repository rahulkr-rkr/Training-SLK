using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace ColGen.MyGeneric
{
    class WithGenericMethod//:iCaluculator
    {
        public void interchange<T>(ref T x,ref T y)
        {
            T temp;
            temp = x;
            x = y;
            y = temp;
        }
    }

}
