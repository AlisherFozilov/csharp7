using System;

namespace _7
{
    class Program
    {
        static void Main(string[] args)
        {
            
        }
    }

    class Payment
    {
        public string ID { get; set; }
        public decimal Amount { get; set; }
        public string Currency { get; set; }
        public string Status { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}
