using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyMultilevelInheritance
{
    class Factory
    {
        public static Automobile GetObject(string sCarName)
        {
            if (sCarName.Equals("E1"))
                return new Automobile();
            if (sCarName.Equals("E2"))
                return new Car();
            if (sCarName.Equals("E3"))
                return new NissanMicro();

            return null;       //check the failure at run time
            //return new Bill();   //compile time error as return type is Automobile

        }
    }
}
