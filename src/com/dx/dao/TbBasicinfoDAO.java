package com.dx.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbBasicinfo;
import com.opensymphony.xwork2.ActionContext;

/**
 	* A data access object (DAO) providing persistence and search support for TbBasicinfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbBasicinfo
  * @author MyEclipse Persistence Tools 
 */

public class TbBasicinfoDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbBasicinfoDAO.class);
		//property constants
	public static final String NAME_CURRENT = "nameCurrent";
	public static final String NAME_OTHER = "nameOther";
	public static final String REGION_PROVINCE = "regionProvince";
	public static final String REGION_CITY = "regionCity";
	public static final String REGION_DISTRICT = "regionDistrict";
	public static final String REGION_SPECIFICATION = "regionSpecification";
	public static final String AGENCY_NAME = "agencyName";
	public static final String AGENCY_AFFILIATION = "agencyAffiliation";
	public static final String AGENCY_OFFICE_POSITION = "agencyOfficePosition";
	public static final String AGENCY_LINKMAN = "agencyLinkman";
	public static final String AGENCY_MOBILE_PHONE = "agencyMobilePhone";
	public static final String AGENCY_OFFICE_PHONE = "agencyOfficePhone";
	public static final String AGENCY_FAX = "agencyFax";
	public static final String AGENCY_EMAIL = "agencyEmail";
	public static final String AGENCY_WEBSITE = "agencyWebsite";
	public static final String AGENCY_OTHER_INFO = "agencyOtherInfo";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbBasicinfo transientInstance) {
        log.debug("saving TbBasicinfo instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
    public List search(String nameCurrent,String province,String city,String institution,String contact ,int i){
    	//System.out.println(nameCurrent);
    	//System.out.println(province);
    	//System.out.println(city);
    	//System.out.println(institution);
    	//System.out.println(contact);
    	//System.out.println(i);
    	Session session = getSession();
       	Criteria cr = session.createCriteria(TbBasicinfo.class);
       	Criterion name = null,p = null ,c = null ,n = null,l = null ;
       	if(nameCurrent != null){
       		 name = Restrictions.like("nameCurrent", "%" + nameCurrent + "%");
       		}
       	if(province != null){
       		 p = Restrictions.like("regionProvince", "%" + province + "%");
       		}
       	if(city != null){
       		 c = Restrictions.like("regionCity", "%" + city + "%");
       		}
       	if(institution != null){
       		n = Restrictions.like("agencyName", "%" + institution + "%");
       		}
      	if(contact != null){
       		 l = Restrictions.like("agencyLinkman", "%" + contact + "%");
       		}
      	LogicalExpression andExp1 = Restrictions.and(name,p);
      	LogicalExpression andExp2 = Restrictions.and(andExp1,c);
      	LogicalExpression andExp3 = Restrictions.and(andExp2,n);
      	LogicalExpression andExp4 = Restrictions.and(andExp3,l);
        cr.add(andExp4);
//        cr.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        cr.setFirstResult((i-1)*10);
        cr.setMaxResults(10);
       	List list = cr.list();
    	releaseSession(session);

    	return list;
    }
    
	public void delete(TbBasicinfo persistentInstance) {
        log.debug("deleting TbBasicinfo instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbBasicinfo findById( java.lang.Integer id) {
        log.debug("getting TbBasicinfo instance with id: " + id);
        try {
            TbBasicinfo instance = (TbBasicinfo) getHibernateTemplate()
                    .get("com.dx.bean.TbBasicinfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbBasicinfo instance) {
        log.debug("finding TbBasicinfo instance by example");
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
      log.debug("finding TbBasicinfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbBasicinfo as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByNameCurrent(Object nameCurrent
	) {
		return findByProperty(NAME_CURRENT, nameCurrent
		);
	}
	
	public List findByNameOther(Object nameOther
	) {
		return findByProperty(NAME_OTHER, nameOther
		);
	}
	
	public List findByRegionProvince(Object regionProvince
	) {
		return findByProperty(REGION_PROVINCE, regionProvince
		);
	}
	
	public List findByRegionCity(Object regionCity
	) {
		return findByProperty(REGION_CITY, regionCity
		);
	}
	
	public List findByRegionDistrict(Object regionDistrict
	) {
		return findByProperty(REGION_DISTRICT, regionDistrict
		);
	}
	
	public List findByRegionSpecification(Object regionSpecification
	) {
		return findByProperty(REGION_SPECIFICATION, regionSpecification
		);
	}
	
	public List findByAgencyName(Object agencyName
	) {
		return findByProperty(AGENCY_NAME, agencyName
		);
	}
	
	public List findByAgencyAffiliation(Object agencyAffiliation
	) {
		return findByProperty(AGENCY_AFFILIATION, agencyAffiliation
		);
	}
	
	public List findByAgencyOfficePosition(Object agencyOfficePosition
	) {
		return findByProperty(AGENCY_OFFICE_POSITION, agencyOfficePosition
		);
	}
	
	public List findByAgencyLinkman(Object agencyLinkman
	) {
		return findByProperty(AGENCY_LINKMAN, agencyLinkman
		);
	}
	
	public List findByAgencyMobilePhone(Object agencyMobilePhone
	) {
		return findByProperty(AGENCY_MOBILE_PHONE, agencyMobilePhone
		);
	}
	
	public List findByAgencyOfficePhone(Object agencyOfficePhone
	) {
		return findByProperty(AGENCY_OFFICE_PHONE, agencyOfficePhone
		);
	}
	
	public List findByAgencyFax(Object agencyFax
	) {
		return findByProperty(AGENCY_FAX, agencyFax
		);
	}
	
	public List findByAgencyEmail(Object agencyEmail
	) {
		return findByProperty(AGENCY_EMAIL, agencyEmail
		);
	}
	
	public List findByAgencyWebsite(Object agencyWebsite
	) {
		return findByProperty(AGENCY_WEBSITE, agencyWebsite
		);
	}
	
	public List findByAgencyOtherInfo(Object agencyOtherInfo
	) {
		return findByProperty(AGENCY_OTHER_INFO, agencyOtherInfo
		);
	}
	

	public List findAll() {
		log.debug("finding all TbBasicinfo instances");
		try {
			String queryString = "from TbBasicinfo";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbBasicinfo merge(TbBasicinfo detachedInstance) {
        log.debug("merging TbBasicinfo instance");
        try {
            TbBasicinfo result = (TbBasicinfo) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbBasicinfo instance) {
        log.debug("attaching dirty TbBasicinfo instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbBasicinfo instance) {
        log.debug("attaching clean TbBasicinfo instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbBasicinfoDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbBasicinfoDAO) ctx.getBean("TbBasicinfoDAO");
	}
	
	
}