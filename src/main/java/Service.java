import java.util.List;
import lombok.AllArgsConstructor;

@org.springframework.stereotype.Service
@AllArgsConstructor
public class Service {
    private Repository repository;

    protected List<String> getProductName(String name) {
        return repository.getProductName(name);
    }
}