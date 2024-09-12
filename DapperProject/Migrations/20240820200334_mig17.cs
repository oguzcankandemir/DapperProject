using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DapperProject.Migrations
{
    /// <inheritdoc />
    public partial class mig17 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Sales",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NAMESURNAME = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    USERNAME_ = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ITEMNAME = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TOTALPRICE = table.Column<double>(type: "float", nullable: false),
                    CITY = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TOWN = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sales", x => x.ID);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Sales");
        }
    }
}
