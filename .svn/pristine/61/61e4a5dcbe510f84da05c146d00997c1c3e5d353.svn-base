package com.dx.dao;

import java.util.Date;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbTitbits;

/**
 * A data access object (DAO) providing persistence and search support for
 * TbTitbits entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.dx.bean.TbTitbits
 * @author MyEclipse Persistence Tools
 */

public class TbTitbitsDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(TbTitbitsDAO.class);
	// property constants
	public static final String USER_NAME = "userName";
	public static final String TITLE = "title";
	public static final String CONTENT = "content";

	protected void initDao() {
		// do nothing
	}

	public void save(TbTitbits transientInstance) {
		log.debug("saving TbTitbits instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TbTitbits persistentInstance) {
		log.debug("deleting TbTitbits instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TbTitbits findById(java.lang.Integer id) {
		log.debug("getting TbTitbits instance with id: " + id);
		try {
			TbTitbits instance = (TbTitbits) getHibernateTemplate().get(
					"com.dx.bean.TbTitbits", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TbTitbits instance) {
		log.debug("finding TbTitbits instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TbTitbits instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TbTitbits as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserName(Object userName) {
		return findByProperty(USER_NAME, userName);
	}

	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List findAll() {
		log.debug("finding all TbTitbits instances");
		try {
			String queryString = "from TbTitbits";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TbTitbits merge(TbTitbits detachedInstance) {
		log.debug("merging TbTitbits instance");
		try {
			TbTitbits result = (TbTitbits) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TbTitbits instance) {
		log.debug("attaching dirty TbTitbits instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TbTitbits instance) {
		log.debug("attaching clean TbTitbits instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TbTitbitsDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TbTitbitsDAO) ctx.getBean("TbTitbitsDAO");
	}
}