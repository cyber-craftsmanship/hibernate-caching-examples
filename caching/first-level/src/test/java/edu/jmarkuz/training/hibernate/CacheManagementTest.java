package edu.jmarkuz.training.hibernate;

import edu.jmarkuz.training.hibernate.model.Author;
import org.junit.Test;

import java.util.logging.Logger;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

public class CacheManagementTest extends BaseTest {

    private static final Logger log = Logger.getLogger(CacheManagementTest.class.getName());

    @Test
    public void testCacheDetachingAction() {
        doInTransaction(entityManager -> {
            var author_1 = entityManager.find(Author.class, 1L);
            assertTrue(entityManager.contains(author_1));
            // detaching author_1
            entityManager.detach(author_1);
            assertFalse(entityManager.contains(author_1));
        });
    }

    @Test
    public void testCacheClearAction() {
        doInTransaction(entityManager -> {
            var author_1 = entityManager.find(Author.class, 1L);
            assertTrue(entityManager.contains(author_1));
            // clearing cache
            entityManager.clear();
            assertFalse(entityManager.contains(author_1));
        });
    }

    @Test
    public void testUpdateAction() {
        doInTransaction(entityManager -> {
            var author = entityManager.find(Author.class, 1L);
            assertTrue(entityManager.contains(author));
            log.info("Cache contains Author 1? :" + entityManager.contains(author));

            var author_1 = entityManager.find(Author.class, 1L);
            assertSame(author, author_1);
            // update author
            author_1.setFirstName("first_name");
            author_1.setLastName("last_name");
            entityManager.flush();

            var author_2 = entityManager.find(Author.class, 1L);
            assertSame(author, author_2);
        });
    }
}
