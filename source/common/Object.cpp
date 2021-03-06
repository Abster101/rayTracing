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
    vec4 v_o = INVCStar*V_w;
    double mag = length(v_o);
    v_o = normalize(v_o);
    
    result.t_o = raySphereIntersection(p0_o, v_o);
    result.t_w = result.t_o/mag;
     result.P_o= p0_o + result.t_o * v_o;
    result.N_o = normalize(result.P_o-vec4(0.0,0.0,0.0,1.0));
    result.N_w= TRANINVC*result.N_o;
    result.N_w.w = 0;
    result.P_w= p0_w + result.t_w * V_w;

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
    if (t_minus < EPSILON){t_minus=std::numeric_limits<double>::infinity();}

  //TODO: Ray-sphere intersection;
  return fmin(t_plus,t_minus);
}

/* -------------------------------------------------------------------------- */
/* -------------------------------------------------------------------------- */
Object::IntersectionValues Square::intersect(vec4 p0_w, vec4 V_w){
    IntersectionValues result;

    
    vec4 p0_o =INVC*p0_w;
    vec4 v_o = INVCStar*V_w;
    double mag = length(v_o);
    v_o = normalize(v_o);
    
    result.t_o = raySquareIntersection(p0_o, v_o);
    result.t_w = result.t_o/mag;

    
    result.P_o= p0_o + result.t_o * v_o;
    result.N_o = vec4(0.0,0.0,1.0,0.0);
    result.N_w= TRANINVC*result.N_o;
    result.N_w.w = 0;
    result.P_w= p0_w + result.t_w * V_w;
    
    //result.t_w = result.t_o/sqrt(dot(INVC*V_w,INVC*V_w)); replaced by length
    //TODO: Ray-sphere setup into object space and then return it back
    return result;}

/* -------------------------------------------------------------------------- */
/* -------------------------------------------------------------------------- */
double Square::raySquareIntersection(vec4 p0, vec4 V){
    
    vec4 surface= vec4(0,0,0,1);
    vec4 norm= vec4(0,0,1,0);
    double check=dot(norm, V);
   
    
    if(check == 0.0){
        return  std::numeric_limits< double >::infinity();
    }
    else{
        double t = dot(norm,(surface-p0))/check;
        vec4 checkpoint = p0+t*V;
        if (t < EPSILON){ return std::numeric_limits<double>::infinity();}
        if (checkpoint.x > -1 && checkpoint.x< 1 && checkpoint.y >-1 &&checkpoint.y <1){ return t;}
    }
    return  std::numeric_limits< double >::infinity();
}
