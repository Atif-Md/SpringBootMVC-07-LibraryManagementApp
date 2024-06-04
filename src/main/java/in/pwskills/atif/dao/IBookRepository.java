package in.pwskills.atif.dao;

import org.springframework.data.repository.CrudRepository;

import in.pwskills.atif.model.Book;

public interface IBookRepository extends CrudRepository<Book, Integer> {

}
