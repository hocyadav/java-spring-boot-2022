package com.example.openapi;

import com.example.api.LibraryApi;
import com.example.model.Book;
import org.springframework.http.ResponseEntity;

import java.util.List;

public class MyLibraryApi implements LibraryApi {
    @Override
    public ResponseEntity<List<Book>> getAllBooksInLibrary() {
        return null;
    }
}
