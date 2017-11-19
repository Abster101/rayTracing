#version 150


uniform vec4 AmbientProduct;
uniform vec4 DiffuseProduct;
uniform vec4 SpecularProduct;
uniform vec4 LightPosition;
uniform float Shininess;
vec4 V;
in vec4 pos;
in vec4 N;

out vec4 fragColor;

void main()
{
  
  // Ambient
  vec4 ambient = AmbientProduct;
  
  // Diffuse change values of Kd and Ks
  float Kd = dot(LightPosition,N);
  vec4  diffuse =  DiffuseProduct*Kd;

//  Specular
    vec4 R= -reflect(LightPosition,N);
    R= normalize(R);
    /**
     Additional Note:  In OpenGL you can consider the eye position to be at (0, 0, 0, 1) in the local Phong model **/
    V=normalize(vec4(0.0, 0.0, 0.0 , 1.0)-LightPosition);
    float Ks= dot(R,V);
    vec4  specular = pow(Ks,Shininess)* SpecularProduct;

  fragColor = ambient + diffuse + specular;
}


