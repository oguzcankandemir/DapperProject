using Dapper;
using DapperProject.Context;
using DapperProject.Dtos.WhyUsDtos;

namespace DapperProject.Services.WhyUsServices
{
    public class WhyUsService : IWhyUsService
    {
        private readonly DapperContext _dapperContext;

        public WhyUsService(DapperContext dapperContext)
        {
            _dapperContext = dapperContext;
        }

        public async Task CreateWhyUsAsync(CreateWhyUsDto WhyUsDto)
        {
            var query = "insert into WhyUs (Title,Description) values (@Title,@Description)";
            var parametres = new DynamicParameters(WhyUsDto);
            var connection = _dapperContext.CreateConnection();
            await connection.ExecuteAsync(query, parametres);   
        }

        public async Task DeleteWhyUsAsync(int id)
        {
            var query = "delete from WhyUs where WhyUsId = @p1";
            var parametres = new DynamicParameters();
            parametres.Add("@p1", id);
            var connection = _dapperContext.CreateConnection(); 
            await connection.ExecuteAsync(query,parametres);
        }

        public async Task<List<ResultWhyUsDto>> GetAllWhyUsAsync()
        {
            var query = "select * from WhyUs";
            var connection = _dapperContext.CreateConnection();
            var result = await connection.QueryAsync<ResultWhyUsDto>(query);
            return result.ToList();
        }

        public async Task<ResultWhyUsByIdDto> GetWhyUsByIdAsync(int id)
        {
            var query = "select * from WhyUs where WhyUsId = @p1";
            var parametres = new DynamicParameters();
            parametres.Add("@p1", id);
            var connection = _dapperContext.CreateConnection();
            return await connection.QueryFirstOrDefaultAsync<ResultWhyUsByIdDto>(query, parametres);
         
        }

        public async Task UpdateWhyUsAsync(UpdateWhyUsDto WhyUsDto)
        {
            var query = "update WhyUs set Title = @Title,Description = @Description where WhyUsId = @WhyUsId";
            var parametres = new DynamicParameters(WhyUsDto);
            var connection = _dapperContext.CreateConnection();
            await connection.ExecuteAsync(query, parametres);
        }
    }
}
