package edu.jmarkuz.training.hibernate;

import edu.jmarkuz.training.hibernate.model.Author;
import edu.jmarkuz.training.hibernate.model.Book;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.function.Consumer;
import java.util.function.Function;
import java.util.logging.Logger;

import static org.junit.Assert.*;

public class FirstLevelCacheTest {

    private static final Logger log = Logger.getLogger(FirstLevelCacheTest.class.getName());

    private EntityManagerFactory factory;

    @Before
    public void setUp() {
        factory = Persistence.createEntityManagerFactory("hibernate-training");
    }

    @After
    public void tearDown() {
        if (factory != null) {
            factory.close();
        }
    }

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


    private void doInTransaction(Consumer<EntityManager> entityManagerConsumer) {
        var entityManager = factory.createEntityManager();
        var transaction = entityManager.getTransaction();
        try {
            transaction.begin();

            entityManagerConsumer.accept(entityManager);

            transaction.commit();
        } catch (Exception exception) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw exception;
        } finally {
            entityManager.close();
        }
    }

    private <T> T doInTransactionResult(Function<EntityManager, T> entityManagerConsumer) {
        var entityManager = factory.createEntityManager();
        var transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            T result = entityManagerConsumer.apply(entityManager);
            transaction.commit();
            return result;
        } catch (Exception exception) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw exception;
        } finally {
            entityManager.close();
        }
    }
}