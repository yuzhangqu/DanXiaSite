package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbWorldlevel;

/**
 	* A data access object (DAO) providing persistence and search support for TbWorldlevel entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbWorldlevel
  * @author MyEclipse Persistence Tools 
 */

public class TbWorldlevelDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbWorldlevelDAO.class);
		//property constants
	public static final String WORLD_LEVEL_NAME = "worldLevelName";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbWorldlevel transientInstance) {
        log.debug("saving TbWorldlevel instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbWorldlevel persistentInstance) {
        log.debug("deleting TbWorldlevel instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbWorldlevel findById( java.lang.String id) {
        log.debug("getting TbWorldlevel instance with id: " + id);
        try {
            TbWorldlevel instance = (TbWorldlevel) getHibernateTemplate()
                    .get("com.dx.bean.TbWorldlevel", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbWorldlevel instance) {
        log.debug("finding TbWorldlevel instance by example");
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
      log.debug("finding TbWorldlevel instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbWorldlevel as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByWorldLevelName(Object worldLevelName
	) {
		return findByProperty(WORLD_LEVEL_NAME, worldLevelName
		);
	}
	

	public List findAll() {
		log.debug("finding all TbWorldlevel instances");
		try {
			String queryString = "from TbWorldlevel";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbWorldlevel merge(TbWorldlevel detachedInstance) {
        log.debug("merging TbWorldlevel instance");
        try {
            TbWorldlevel result = (TbWorldlevel) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbWorldlevel instance) {
        log.debug("attaching dirty TbWorldlevel instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbWorldlevel instance) {
        log.debug("attaching clean TbWorldlevel instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbWorldlevelDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbWorldlevelDAO) ctx.getBean("TbWorldlevelDAO");
	}
}