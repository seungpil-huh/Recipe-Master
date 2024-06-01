package repository;

import model.Recipe;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecipeRepository extends ElasticsearchRepository<Recipe, String> {
    List<Recipe> findByName(String name);
}
