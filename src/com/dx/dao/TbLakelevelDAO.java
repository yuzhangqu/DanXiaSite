package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbLakelevel;

/**
 	* A data access object (DAO) providing persistence and search support for TbLakelevel entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbLakelevel
  * @author MyEclipse Persistence Tools 
 */

public class TbLakelevelDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbLakelevelDAO.class);
		//property constants
	public static final String LAKE_LEVEL_NAME = "lakeLevelName";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbLakelevel transientInstance) {
        log.debug("saving TbLakelevel instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbLakelevel persistentInstance) {
        log.debug("deleting TbLakelevel instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbLakelevel findById( java.lang.String id) {
        log.debug("getting TbLakelevel instance with id: " + id);
        try {
            TbLakelevel instance = (TbLakelevel) getHibernateTemplate()
                    .get("com.dx.bean.TbLakelevel", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbLakelevel instance) {
        log.debug("finding TbLakelevel instance by example");
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
      log.debug("finding TbLakelevel instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbLakelevel as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByLakeLevelName(Object lakeLevelName
	) {
		return findByProperty(LAKE_LEVEL_NAME, lakeLevelName
		);
	}
	

	public List findAll() {
		log.debug("finding all TbLakelevel instances");
		try {
			String queryString = "from TbLakelevel";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbLakelevel merge(TbLakelevel detachedInstance) {
        log.debug("merging TbLakelevel instance");
        try {
            TbLakelevel result = (TbLakelevel) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbLakelevel instance) {
        log.debug("attaching dirty TbLakelevel instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbLakelevel instance) {
        log.debug("attaching clean TbLakelevel instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbLakelevelDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbLakelevelDAO) ctx.getBean("TbLakelevelDAO");
	}
}