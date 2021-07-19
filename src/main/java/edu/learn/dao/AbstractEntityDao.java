package edu.learn.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

public abstract class AbstractEntityDao<T>{
	private Class<T> entityClass;
	
	public AbstractEntityDao(Class<T> cls) {
		this.entityClass = cls;
	}
	public void insert(T entity) {
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		try {
			transaction.begin();
			entityManager.persist(entity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			throw e;
		}finally {
			entityManager.close();
		}
	}
	
	public void update(T entity) {
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		try {
			transaction.begin();
			entityManager.merge(entity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			throw e;
		}finally {
			entityManager.close();
		}
	}
	
	public void delete(Object id) {
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		try {
			transaction.begin();
			T entity = entityManager.find(entityClass, id);
			entityManager.remove(entity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			throw e;
		}finally {
			entityManager.close();
		}
	}
	
	public T findById(Object id) {
		EntityManager entityManager = JpaUtils.getEntityManager();
		T entity = entityManager.find(entityClass, id);
		return entity;
	}
	
	public List<T> findAll() {
		EntityManager entityManager = JpaUtils.getEntityManager();
		try {
			CriteriaQuery cQuery = entityManager.getCriteriaBuilder().createQuery();
			cQuery.select(cQuery.from(entityClass));
			return entityManager.createQuery(cQuery).getResultList();
		} finally {
			entityManager.close();
		} 
	}
	
	public List<T> findAll(boolean all, int firstResult, int maxResult) {
		EntityManager entityManager = JpaUtils.getEntityManager();
		try {
			CriteriaQuery cQuery = entityManager.getCriteriaBuilder().createQuery();
			cQuery.select(cQuery.from(entityClass));
			Query query = entityManager.createQuery(cQuery);	
			if(!all) {
				query.setFirstResult(firstResult);
				query.setMaxResults(maxResult);
			}
			return query.getResultList();
		} finally {
			entityManager.close();
		}
	}
	
	public Long count() {
		EntityManager entityManager = JpaUtils.getEntityManager();
		try {
			CriteriaQuery cQuery = entityManager.getCriteriaBuilder().createQuery();
			Root<T> rt = cQuery.from(entityClass);
			cQuery.select(entityManager.getCriteriaBuilder().count(rt));
			Query query = entityManager.createQuery(cQuery);
			return (Long) query.getSingleResult();
		} finally {
			entityManager.close();
		}
	}
	
	
}






