using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebApplication1.Data.Migrations
{
    public partial class _3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "bagisturu",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    bagisAdi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    bagisDetay = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    resim = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_bagisturu", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "bagis",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    bagisci = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    miktar = table.Column<float>(type: "real", nullable: false),
                    bagisTuruID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_bagis", x => x.Id);
                    table.ForeignKey(
                        name: "FK_bagis_bagisturu_bagisTuruID",
                        column: x => x.bagisTuruID,
                        principalTable: "bagisturu",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_bagis_bagisTuruID",
                table: "bagis",
                column: "bagisTuruID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "bagis");

            migrationBuilder.DropTable(
                name: "bagisturu");
        }
    }
}
