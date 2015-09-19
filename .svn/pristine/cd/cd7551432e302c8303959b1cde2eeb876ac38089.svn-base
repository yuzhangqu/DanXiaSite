package com.dx.dao;

import java.io.Serializable;
import com.dx.dao.*;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.springframework.stereotype.Repository;

@Repository
public abstract class GenericHibernateDao <T,ID extends Serializable> {
private Class<T> persistentClass;
    
    @Resource(name="sessionFactory")
    private SessionFactory  sessionFactory;
    
    public GenericHibernateDao() {
        this.persistentClass = (Class<T>) ((ParameterizedType) getClass()
                                .getGenericSuperclass()).getActualTypeArguments()[0];
    }
    
    public SessionFactory getSessionFactory() {
        if (sessionFactory == null)
            throw new IllegalStateException("SessionFactory has not been set on DAO before usage");
        return sessionFactory;
    }
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    public Class<T> getPersistentClass() {
        return persistentClass;
    }
    
    public T findByID(ID id) {
        T entity = (T) sessionFactory.getCurrentSession().get(getPersistentClass(), id);
        return entity;
    }

    
    public List<T> findAll() {
        return findByCriteria();
    }
    
    public List<T> findBlr(String hql){
		return sessionFactory.getCurrentSession().createQuery(hql).list();
    }
    
    public boolean makePersistent(T entity) {
    	Session se= sessionFactory.getCurrentSession();
    	System.out.print(se.toString());
    	se.save(entity);
        return true;
    }

    
    public boolean makeTransient(T entity) {
        sessionFactory.getCurrentSession().delete(entity);
        return true;
    }

    
    public void update(T instance) {
        //sessionFactory.getCurrentSession().saveOrUpdate(instance);
    	sessionFactory.getCurrentSession().update(instance);
    }

    
    public void updateByQuery(String hql){
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }
    
    
    public List<T> findByQuery(String hql) {
        return sessionFactory.getCurrentSession().createQuery(hql).list();
    }

    
    public List<T> findPageByQuery(String hql, int first, int pagesize){
        return sessionFactory.getCurrentSession().createQuery(hql).setFirstResult(first).setMaxResults(pagesize).list();
    }
    
    
    public Number getNumber(String hql){
        return (Number) sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
    }
    
    private List<T> findByCriteria(Criterion... criterion) {
        Criteria crit = sessionFactory.getCurrentSession().createCriteria(getPersistentClass());
        for (Criterion c : criterion) {
            crit.add(c);
        }
        return crit.list();
    }
    
    
}