package edu.jmarkuz.training.hibernate;

import edu.jmarkuz.training.hibernate.model.Author;
import edu.jmarkuz.training.hibernate.model.Book;
import org.junit.Test;

import java.util.logging.Logger;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNotSame;
import static org.junit.Assert.assertSame;

public class FirstLevelCacheTest extends BaseTest {

    private static final Logger log = Logger.getLogger(FirstLevelCacheTest.class.getName());

    @Test
    public void getAuthorByIdNotNull() {
        doInTransaction(entityManager -> {
            log.info("Getting 1-st Authors");

            Author author = entityManager.find(Author.class, 1L);
            log.info("Author: " + author);

            assertNotNull(author);
        });
    }

    @Test
    public void getBookByIdNotNull() {
        doInTransaction(entityManager -> {
            log.info("Getting 1-st Book");

            Book book = entityManager.find(Book.class, 1L);
            log.info("Book: " + book);

            assertNotNull(book);
        });
    }

    @Test
    public void testRepeatableFindAuthorByIdInSameSession() {
        doInTransaction(entityManager -> {
            for (int i = 0; i < 3; i++) {
                log.info("Iteration: " + i);

                var author_1 = entityManager.find(Author.class, 1L);
                log.info("Author_1: " + author_1);

                var author_2 = entityManager.find(Author.class, 1L);
                log.info("Author_2: " + author_2);

                assertSame(author_1, author_2);
                assertEquals(author_1, author_2);
            }
        });
    }

    @Test
    public void testRepeatableFindAuthorByIdInDifferentSessions() {
        var author_1 = doInTransactionResult(entityManager -> entityManager.find(Author.class, 1L));
        var author_2 = doInTransactionResult(entityManager -> entityManager.find(Author.class, 1L));

        assertNotSame(author_1, author_2);
        assertEquals(author_1, author_2);
    }

    @Test
    public void testRepeatableJPQLQueryInSameSession() {
        doInTransaction(entityManager -> {
            var author_1 = entityManager.createQuery("SELECT a FROM Author a WHERE id = ?1", Author.class)
                    .setParameter(1, 1L)
                    .getSingleResult();

            var author_2 = entityManager.createQuery("SELECT a FROM Author a WHERE id = ?1", Author.class)
                    .setParameter(1, 1L)
                    .getSingleResult();

            assertSame(author_1, author_2);
            assertEquals(author_1, author_2);
        });
    }

    @Test
    public void testRepeatableJPQLQueryInDifferentSessions() {
        var author_1 = doInTransactionResult(entityManager -> entityManager.createQuery("SELECT a FROM Author a WHERE id = ?1", Author.class)
                .setParameter(1, 1L)
                .getSingleResult());

        var author_2 = doInTransactionResult(entityManager -> entityManager.createQuery("SELECT a FROM Author a WHERE id = ?1", Author.class)
                .setParameter(1, 1L)
                .getSingleResult());

        assertNotSame(author_1, author_2);
        assertEquals(author_1, author_2);
    }

}