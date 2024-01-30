package edu.jmarkuz.training.hibernate;

import edu.jmarkuz.training.hibernate.model.Author;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

import java.util.function.Consumer;
import java.util.logging.Logger;

public class FirstLevelCache {

    private static final Logger log = Logger.getLogger(FirstLevelCache.class.getName());

    private static final EntityManagerFactory factory = Persistence.createEntityManagerFactory("hibernate-training");

    public static void main(String[] args) {
        doInTransaction(entityManager -> {
            log.info("Getting 1-st Authors and iteration through it's Books");

            Author author = entityManager.find(Author.class, 1L);
            log.info("Written by: " + author);
        });
    }

    private static void doInTransaction(Consumer<EntityManager> entityManagerConsumer) {
        EntityTransaction transaction = null;
        try (var entityManager = factory.createEntityManager()) {
            transaction = entityManager.getTransaction();
            transaction.begin();

            entityManagerConsumer.accept(entityManager);

            transaction.commit();
        } catch (Exception exception) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw exception;
        }
    }
}
