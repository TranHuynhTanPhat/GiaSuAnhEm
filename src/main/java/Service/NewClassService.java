package Service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import giasuanhem.com.Entity.MapperNewClass;
import giasuanhem.com.Entity.NewClass;

@Repository
public class NewClassService {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public List<NewClass>GetDataNewClasses(){
		List<NewClass> list = new ArrayList<NewClass>();
		String sql="SELECT*FROM new_classes";
		list = _jdbcTemplate.query(sql, new MapperNewClass());
		return list;
	}
	
}