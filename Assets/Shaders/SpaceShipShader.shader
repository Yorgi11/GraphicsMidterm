Shader "Midterm/SpaceShipShader"
{
    Properties{
       _Diffuse("Diffuse Texture", 2D) = "white" {}
       _Bump("Bump Texture", 2D) = "bump" {}
       _Slider("Bump Amount", Range(0,10)) = 1
    }
    SubShader{
       CGPROGRAM
       #pragma surface surf Lambert
       struct Input {
            float2 uv_Diffuse;
            float2 uv_Bump;
       };
       sampler2D _Bump;
       sampler2D _Diffuse;
       half _Slider;
       void surf(Input IN, inout SurfaceOutput o) {
            o.Albedo = tex2D(_Diffuse, IN.uv_Diffuse).rgb;
            o.Normal = UnpackNormal(tex2D(_Bump, IN.uv_Bump)) * float3(_Slider, _Slider, 1);
       }
       ENDCG
    }
    Fallback "Diffuse"
}
