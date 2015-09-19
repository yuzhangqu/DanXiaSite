package com.dx.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dx.bean.TbEnvironmentinfo;

/**
 	* A data access object (DAO) providing persistence and search support for TbEnvironmentinfo entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.dx.dao.TbEnvironmentinfo
  * @author MyEclipse Persistence Tools 
 */

public class TbEnvironmentinfoDAO extends HibernateDaoSupport  {
	     private static final Logger log = LoggerFactory.getLogger(TbEnvironmentinfoDAO.class);
		//property constants
	public static final String CLIMATE_TYPE = "climateType";
	public static final String JAU_TEMPERATURE = "jauTemperature";
	public static final String JUL_TEMPERATURE = "julTemperature";
	public static final String YEAR_TEMPERATURE = "yearTemperature";
	public static final String YEAR_PRECIPITATION = "yearPrecipitation";
	public static final String WATER_AREA1 = "waterArea1";
	public static final String FLOW_QUANTITY1 = "flowQuantity1";
	public static final String FLOW_DIRECTION1 = "flowDirection1";
	public static final String WATER_TIME1 = "waterTime1";
	public static final String WATER_DESCRIPTION1 = "waterDescription1";
	public static final String WATER_AREA2 = "waterArea2";
	public static final String FLOW_QUANTITY2 = "flowQuantity2";
	public static final String FLOW_DIRECTION2 = "flowDirection2";
	public static final String WATER_TIME2 = "waterTime2";
	public static final String WATER_DESCRIPTION2 = "waterDescription2";
	public static final String PLANT_TYPE = "plantType";
	public static final String PLANT_QUANTITY = "plantQuantity";
	public static final String SPECIAL_PLANT = "specialPlant";
	public static final String ANIMAL_QUANTITY = "animalQuantity";
	public static final String SPECIAL_ANIMAL = "specialAnimal";
	public static final String OVERALL_ENVIRONMENT = "overallEnvironment";
	public static final String FOREST_COVERAGE = "forestCoverage";
	public static final String DESERT_SIGN = "desertSign";
	public static final String ECOLOGY_SIGN = "ecologySign";
	public static final String DISASTER_QUANTITY = "disasterQuantity";
	public static final String RECENT_DISASTER = "recentDisaster";
	public static final String LANDSLLIDE_QUANTITY = "landsllideQuantity";
	public static final String RECENT_LANDSLIDE = "recentLandslide";
	public static final String MUDSLIDE_QUANTITY = "mudslideQuantity";
	public static final String RECENT_MUDSLIDE = "recentMudslide";
	public static final String GEOLOGY_DESCRIPTION = "geologyDescription";
	public static final String ENVIRONMENT_PROBLEM = "environmentProblem";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TbEnvironmentinfo transientInstance) {
        log.debug("saving TbEnvironmentinfo instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TbEnvironmentinfo persistentInstance) {
        log.debug("deleting TbEnvironmentinfo instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TbEnvironmentinfo findById( java.lang.Integer id) {
        log.debug("getting TbEnvironmentinfo instance with id: " + id);
        try {
            TbEnvironmentinfo instance = (TbEnvironmentinfo) getHibernateTemplate()
                    .get("com.dx.bean.TbEnvironmentinfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TbEnvironmentinfo instance) {
        log.debug("finding TbEnvironmentinfo instance by example");
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
      log.debug("finding TbEnvironmentinfo instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TbEnvironmentinfo as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByClimateType(Object climateType
	) {
		return findByProperty(CLIMATE_TYPE, climateType
		);
	}
	
	public List findByJauTemperature(Object jauTemperature
	) {
		return findByProperty(JAU_TEMPERATURE, jauTemperature
		);
	}
	
	public List findByJulTemperature(Object julTemperature
	) {
		return findByProperty(JUL_TEMPERATURE, julTemperature
		);
	}
	
	public List findByYearTemperature(Object yearTemperature
	) {
		return findByProperty(YEAR_TEMPERATURE, yearTemperature
		);
	}
	
	public List findByYearPrecipitation(Object yearPrecipitation
	) {
		return findByProperty(YEAR_PRECIPITATION, yearPrecipitation
		);
	}
	
	public List findByWaterArea1(Object waterArea1
	) {
		return findByProperty(WATER_AREA1, waterArea1
		);
	}
	
	public List findByFlowQuantity1(Object flowQuantity1
	) {
		return findByProperty(FLOW_QUANTITY1, flowQuantity1
		);
	}
	
	public List findByFlowDirection1(Object flowDirection1
	) {
		return findByProperty(FLOW_DIRECTION1, flowDirection1
		);
	}
	
	public List findByWaterTime1(Object waterTime1
	) {
		return findByProperty(WATER_TIME1, waterTime1
		);
	}
	
	public List findByWaterDescription1(Object waterDescription1
	) {
		return findByProperty(WATER_DESCRIPTION1, waterDescription1
		);
	}
	
	public List findByWaterArea2(Object waterArea2
	) {
		return findByProperty(WATER_AREA2, waterArea2
		);
	}
	
	public List findByFlowQuantity2(Object flowQuantity2
	) {
		return findByProperty(FLOW_QUANTITY2, flowQuantity2
		);
	}
	
	public List findByFlowDirection2(Object flowDirection2
	) {
		return findByProperty(FLOW_DIRECTION2, flowDirection2
		);
	}
	
	public List findByWaterTime2(Object waterTime2
	) {
		return findByProperty(WATER_TIME2, waterTime2
		);
	}
	
	public List findByWaterDescription2(Object waterDescription2
	) {
		return findByProperty(WATER_DESCRIPTION2, waterDescription2
		);
	}
	
	public List findByPlantType(Object plantType
	) {
		return findByProperty(PLANT_TYPE, plantType
		);
	}
	
	public List findByPlantQuantity(Object plantQuantity
	) {
		return findByProperty(PLANT_QUANTITY, plantQuantity
		);
	}
	
	public List findBySpecialPlant(Object specialPlant
	) {
		return findByProperty(SPECIAL_PLANT, specialPlant
		);
	}
	
	public List findByAnimalQuantity(Object animalQuantity
	) {
		return findByProperty(ANIMAL_QUANTITY, animalQuantity
		);
	}
	
	public List findBySpecialAnimal(Object specialAnimal
	) {
		return findByProperty(SPECIAL_ANIMAL, specialAnimal
		);
	}
	
	public List findByOverallEnvironment(Object overallEnvironment
	) {
		return findByProperty(OVERALL_ENVIRONMENT, overallEnvironment
		);
	}
	
	public List findByForestCoverage(Object forestCoverage
	) {
		return findByProperty(FOREST_COVERAGE, forestCoverage
		);
	}
	
	public List findByDesertSign(Object desertSign
	) {
		return findByProperty(DESERT_SIGN, desertSign
		);
	}
	
	public List findByEcologySign(Object ecologySign
	) {
		return findByProperty(ECOLOGY_SIGN, ecologySign
		);
	}
	
	public List findByDisasterQuantity(Object disasterQuantity
	) {
		return findByProperty(DISASTER_QUANTITY, disasterQuantity
		);
	}
	
	public List findByRecentDisaster(Object recentDisaster
	) {
		return findByProperty(RECENT_DISASTER, recentDisaster
		);
	}
	
	public List findByLandsllideQuantity(Object landsllideQuantity
	) {
		return findByProperty(LANDSLLIDE_QUANTITY, landsllideQuantity
		);
	}
	
	public List findByRecentLandslide(Object recentLandslide
	) {
		return findByProperty(RECENT_LANDSLIDE, recentLandslide
		);
	}
	
	public List findByMudslideQuantity(Object mudslideQuantity
	) {
		return findByProperty(MUDSLIDE_QUANTITY, mudslideQuantity
		);
	}
	
	public List findByRecentMudslide(Object recentMudslide
	) {
		return findByProperty(RECENT_MUDSLIDE, recentMudslide
		);
	}
	
	public List findByGeologyDescription(Object geologyDescription
	) {
		return findByProperty(GEOLOGY_DESCRIPTION, geologyDescription
		);
	}
	
	public List findByEnvironmentProblem(Object environmentProblem
	) {
		return findByProperty(ENVIRONMENT_PROBLEM, environmentProblem
		);
	}
	

	public List findAll() {
		log.debug("finding all TbEnvironmentinfo instances");
		try {
			String queryString = "from TbEnvironmentinfo";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TbEnvironmentinfo merge(TbEnvironmentinfo detachedInstance) {
        log.debug("merging TbEnvironmentinfo instance");
        try {
            TbEnvironmentinfo result = (TbEnvironmentinfo) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TbEnvironmentinfo instance) {
        log.debug("attaching dirty TbEnvironmentinfo instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TbEnvironmentinfo instance) {
        log.debug("attaching clean TbEnvironmentinfo instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TbEnvironmentinfoDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TbEnvironmentinfoDAO) ctx.getBean("TbEnvironmentinfoDAO");
	}
}