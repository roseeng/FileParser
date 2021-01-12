using System;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;


namespace DbWriter
{
    public class IcqContext : DbContext
    {
        public DbSet<Message> Messages { get; set; }
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<ContactProperty> ContactProperties { get; set; }
        public DbSet<FileImport> FileImports { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder
                .UseSqlServer(@"Server=.\SQLEXPRESS;Database=ICQ;Integrated Security=True");
                
        }
    }
}
