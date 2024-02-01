package edu.jmarkuz.training.hibernate;

import edu.jmarkuz.training.hibernate.model.Author;
import org.junit.Assert;
import org.junit.Test;

public class CacheManagementTest extends BaseTest {

    @Test
    public void testCacheDetachingAction() {
        doInTransaction(entityManager -> {
            var author_1 = entityManager.find(Author.class, 1L);
            Assert.assertTrue(entityManager.contains(author_1));
            // detaching author_1
            entityManager.detach(author_1);
            Assert.assertFalse(entityManager.contains(author_1));
        });
    }

    @Test
    public void testCacheClearAction() {
        doInTransaction(entityManager -> {
            var author_1 = entityManager.find(Author.class, 1L);
            Assert.assertTrue(entityManager.contains(author_1));
            // clearing cache
            entityManager.clear();
            Assert.assertFalse(entityManager.contains(author_1));
        });
    }
}
