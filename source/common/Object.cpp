//////////////////////////////////////////////////////////////////////////////
//
//  --- Object.cpp ---
//  Created by Brian Summa
//
//////////////////////////////////////////////////////////////////////////////


#include "common.h"

/* -------------------------------------------------------------------------- */
/* -------------------------------------------------------------------------- */
Object::IntersectionValues Sphere::intersect(vec4 p0_w, vec4 V_w){
  IntersectionValues result;
    
    vec4 p0_o =INVC*p0_w;
    vec4 v_o = normalize(INVCStar*V_w);
    
    result.t_o = raySphereIntersection(p0_o, v_o);
    result.t_w = result.t_o/length(v_o);
    
    //result.t_w = result.t_o/sqrt(dot(INVC*V_w,INVC*V_w)); replaced by length
  //TODO: Ray-sphere setup into object space and then return it back
  return result;
}

/* -------------------------------------------------------------------------- */
/* ------ Ray = p0 + t*V  sphere at origin O and radius r    : Find t ------- */
double Sphere::raySphereIntersection(vec4 p0, vec4 V, vec4 O, double r){
    double a=1.0;
    double b = dot(2.0*V,p0-O);
    double c= length(p0-O)*length(p0-O)-r*r;
    double in_sqrt= b*b - 4.0*a*c;
    
    if(in_sqrt < 0.0){
    return  std::numeric_limits< double >::infinity();
    }
    double t_plus = (-b + sqrt(in_sqrt))/2.0*a;
    double t_minus = (-b - sqrt(in_sqrt))/2.0*a;
    
    if (t_plus < EPSILON){t_plus=std::numeric_limits<double>::infinity();}
    if (t_plus < EPSILON){t_plus=std::numeric_limits<double>::infinity();}

  //TODO: Ray-sphere intersection;
  return fmin(t_plus,t_minus);
}

/* -------------------------------------------------------------------------- */
/* -------------------------------------------------------------------------- */
Object::IntersectionValues Square::intersect(vec4 p0_w, vec4 V_w){
    IntersectionValues result;
    
    vec4 p0_o =C*p0_w;
    vec4 v_o = TRANINVC*V_w;
    v_o= vec4 (v_o.x, v_o.y, v_o.z, 0);
    v_o = normalize(v_o);
    result.t_o = raySquareIntersection(p0_o, v_o);
    result.t_w = result.t_o/length(v_o);
    
    //result.t_w = result.t_o/sqrt(dot(INVC*V_w,INVC*V_w)); replaced by length
    //TODO: Ray-sphere setup into object space and then return it back
    return result;
}

/* -------------------------------------------------------------------------- */
/* -------------------------------------------------------------------------- */
double Square::raySquareIntersection(vec4 p0, vec4 V){
 // double t   = std::numeric_limits< double >::infinity();
    double r=1.0;
    double a=1;
    double b = dot(2.0*V,p0);
    double c= length(p0)*length(p0)-r*r;
    double in_sqrt= b*b - 4.0*a*c;
    
    if(in_sqrt < 0.0){
        return  std::numeric_limits< double >::infinity();
    }
    double t_plus = (-b + sqrt(in_sqrt))/2*a;
    double t_minus = (-b - sqrt(in_sqrt))/2*a;
    
    if (t_plus < EPSILON){t_plus=std::numeric_limits<double>::infinity();}
    if (t_plus < EPSILON){t_plus=std::numeric_limits<double>::infinity();}
    
    //TODO: Ray-sphere intersection;
    return fmin(t_plus,t_minus);}
