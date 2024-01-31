package edu.jmarkuz.training.hibernate;

import edu.jmarkuz.training.hibernate.dto.Author;
import org.junit.Test;

import java.util.logging.Logger;

public class AuthorDtoProjectionTest extends BaseTest {

    private static final Logger log = Logger.getLogger(AuthorDtoProjectionTest.class.getName());

    @Test
    public void testDtoProjection() {
        doInTransaction(entityManager -> {
            var author = entityManager.createQuery("SELECT new edu.jmarkuz.training.hibernate.dto.Author(a.firstName, a.lastName) FROM Author a WHERE id = ?1", Author.class)
                    .setParameter(1, 1L)
                    .getSingleResult();

            log.info("Author with projection: " + author);
        });
    }
}
