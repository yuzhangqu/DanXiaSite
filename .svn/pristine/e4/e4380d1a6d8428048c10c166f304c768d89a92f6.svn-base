package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbUserinfo;

/**
 	* A data access object (DAO) providing persistence and search support for TbUserinfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbUserinfo
  * @author MyEclipse Persistence Tools 
 */

public class TbUserinfoDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbUserinfoDAO.class);
		//property constants
	public static final String USER_NAME = "userName";
	public static final String PASSWORD = "password";
	public static final String USER_TYPE = "userType";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbUserinfo transientInstance) {
        log.debug("saving TbUserinfo instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbUserinfo persistentInstance) {
        log.debug("deleting TbUserinfo instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbUserinfo findById( java.lang.Integer id) {
        log.debug("getting TbUserinfo instance with id: " + id);
        try {
            TbUserinfo instance = (TbUserinfo) getHibernateTemplate()
                    .get("com.dx.dao.TbUserinfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbUserinfo instance) {
        log.debug("finding TbUserinfo instance by example");
        try {
            List results = getHibernateTemplate().findByExample(instance);
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding TbUserinfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbUserinfo as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByUserName(Object userName
	) {
		return findByProperty(USER_NAME, userName
		);
	}
	
	public List findByPassword(Object password
	) {
		return findByProperty(PASSWORD, password
		);
	}
	
	public List findByUserType(Object userType
	) {
		return findByProperty(USER_TYPE, userType
		);
	}
	

	public List findAll() {
		log.debug("finding all TbUserinfo instances");
		try {
			String queryString = "from TbUserinfo";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbUserinfo merge(TbUserinfo detachedInstance) {
        log.debug("merging TbUserinfo instance");
        try {
            TbUserinfo result = (TbUserinfo) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbUserinfo instance) {
        log.debug("attaching dirty TbUserinfo instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbUserinfo instance) {
        log.debug("attaching clean TbUserinfo instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbUserinfoDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbUserinfoDAO) ctx.getBean("TbUserinfoDAO");
	}
}