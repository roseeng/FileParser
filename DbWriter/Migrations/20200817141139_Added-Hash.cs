using Microsoft.EntityFrameworkCore.Migrations;

namespace DbWriter.Migrations
{
    public partial class AddedHash : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Hash",
                table: "Messages",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Hash",
                table: "Contacts",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Hash",
                table: "Messages");

            migrationBuilder.DropColumn(
                name: "Hash",
                table: "Contacts");
        }
    }
}
