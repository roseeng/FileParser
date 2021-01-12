using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace DbWriter.Migrations
{
    public partial class AddedFileImportsTable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "FileImportId",
                table: "Messages",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "FileImportId",
                table: "Contacts",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "FileImports",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Filename = table.Column<string>(nullable: true),
                    ImportDate = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FileImports", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "FileImports");

            migrationBuilder.DropColumn(
                name: "FileImportId",
                table: "Messages");

            migrationBuilder.DropColumn(
                name: "FileImportId",
                table: "Contacts");
        }
    }
}
