using Microsoft.EntityFrameworkCore.Migrations;

namespace DbWriter.Migrations
{
    public partial class AddedFileImportsStatistics : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Statistics",
                table: "FileImports",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Statistics",
                table: "FileImports");
        }
    }
}
