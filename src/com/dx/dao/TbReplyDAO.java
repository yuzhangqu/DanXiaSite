package com.dx.dao;

import java.util.Date;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbReply;

/**
 	* A data access object (DAO) providing persistence and search support for TbReply entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbReply
  * @author MyEclipse Persistence Tools 
 */

public class TbReplyDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbReplyDAO.class);
		//property constants
	public static final String FLOOR = "floor";
	public static final String CONTENT = "content";
	public static final String AUTHOR = "author";
	public static final String STATUS = "status";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbReply transientInstance) {
        log.debug("saving TbReply instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbReply persistentInstance) {
        log.debug("deleting TbReply instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbReply findById( java.lang.Integer id) {
        log.debug("getting TbReply instance with id: " + id);
        try {
            TbReply instance = (TbReply) getHibernateTemplate()
                    .get("com.dx.bean.TbReply", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbReply instance) {
        log.debug("finding TbReply instance by example");
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
      log.debug("finding TbReply instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbReply as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByFloor(Object floor
	) {
		return findByProperty(FLOOR, floor
		);
	}
	
	public List findByContent(Object content
	) {
		return findByProperty(CONTENT, content
		);
	}
	
	public List findByAuthor(Object author
	) {
		return findByProperty(AUTHOR, author
		);
	}
	
	public List findByStatus(Object status
	) {
		return findByProperty(STATUS, status
		);
	}
	

	public List findAll() {
		log.debug("finding all TbReply instances");
		try {
			String queryString = "from TbReply";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbReply merge(TbReply detachedInstance) {
        log.debug("merging TbReply instance");
        try {
            TbReply result = (TbReply) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbReply instance) {
        log.debug("attaching dirty TbReply instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbReply instance) {
        log.debug("attaching clean TbReply instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbReplyDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbReplyDAO) ctx.getBean("TbReplyDAO");
	}
}