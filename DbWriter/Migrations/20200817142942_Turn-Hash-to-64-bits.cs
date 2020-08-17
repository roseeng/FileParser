using Microsoft.EntityFrameworkCore.Migrations;

namespace DbWriter.Migrations
{
    public partial class TurnHashto64bits : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<long>(
                name: "Hash",
                table: "Messages",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<long>(
                name: "Hash",
                table: "Contacts",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Hash",
                table: "Messages",
                type: "int",
                nullable: false,
                oldClrType: typeof(long));

            migrationBuilder.AlterColumn<int>(
                name: "Hash",
                table: "Contacts",
                type: "int",
                nullable: false,
                oldClrType: typeof(long));
        }
    }
}
