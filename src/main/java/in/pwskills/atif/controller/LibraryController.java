package in.pwskills.atif.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import in.pwskills.atif.model.Book;
import in.pwskills.atif.service.IBookService;

@Controller
public class LibraryController {

	@Autowired
	private IBookService service;
	
	@GetMapping("/")
	public String showPage() {
		return "home";
	}
	
	@GetMapping("/disp")
	public String showAllBooks(Model model) {
		model.addAttribute("books", service.findAllBooks());
		return "books";
	}
	
	@GetMapping("/new-book")
	public String showBookCreation(Model model) {
		model.addAttribute("book", new Book());
		return "new-book";
	}
	
	@PostMapping("/add")
	public String addNewBook(@ModelAttribute Book book, Model model) {
		System.out.println(book);
		service.saveBook(book);
		model.addAttribute("books", service.findAllBooks());
		return "books";
	}
	
	@GetMapping("/{id}")
	public String showBookById(@PathVariable Integer id, Model model) {
		Book book = service.findBookById(id).orElseThrow(() -> new IllegalArgumentException("Invalid Book Id : "+id));
		model.addAttribute("book", book);
		return "edit-book";
	}
	
	@PostMapping("/{id}/delete")
	public String deleteBookById(@PathVariable Integer id, Model model) {
		service.findBookById(id).orElseThrow(()-> new IllegalArgumentException("Invalid Book Id : "+id));
		service.deleteBookById(id);
		model.addAttribute("books", service.findAllBooks());
		return "books";
	}
	
	@PostMapping("/{id}/update")
	public String updateBook(@PathVariable Integer id, Model model, @ModelAttribute Book book) {
		
		service.findBookById(id).orElseThrow( () -> new IllegalArgumentException("Invalid book id : "+id));
		service.saveBook(book);
		model.addAttribute("books", service.findAllBooks());
		
		return "books";
	}
	
}
