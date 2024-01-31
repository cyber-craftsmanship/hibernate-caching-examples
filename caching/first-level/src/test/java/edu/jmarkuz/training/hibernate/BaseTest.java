package edu.jmarkuz.training.hibernate;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.junit.After;
import org.junit.Before;

import java.util.function.Consumer;
import java.util.function.Function;

public class BaseTest {

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

    protected void doInTransaction(Consumer<EntityManager> entityManagerConsumer) {
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

    protected <T> T doInTransactionResult(Function<EntityManager, T> entityManagerConsumer) {
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
