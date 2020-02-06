using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.firstDemo
{
    class Student
    {
        //Member variables
        public int ID;
        public string Name;
        public string City;
        int mCount;

        //Class variable
        public static int Count;

        //Constructor
        public Student()
        {
            Count++;
            mCount++;
        }

        //Member Functions
        public bool Save(int id,string name,string city)
        {
            ID = id;
            Name = name;
            City = city;
            return true;
        }

        public bool Get(int id,ref string name,ref string city)
        {
            if(ID==id)
            {
                name = Name;
                city = City;
                return true;
            }
            else
            {
                return false;
            }
        }

        public void Display()
        {
            Console.WriteLine("ID: " + ID);
            Console.WriteLine("Name: " + Name);
            Console.WriteLine("City: " + City);
            Console.WriteLine("Count: " + Count); //Statiic Variable
            Console.WriteLine("mCount: " + mCount);
        }

        //Class Methos
        public static void DisplayCount()
        {
            Console.WriteLine("Student Count: " + Count);
            //Console.WriteLine("ID: " + ID);  //error
        }
    }
}
