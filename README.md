# GraphicsMidterm
 
First Shader
The first shader I implemented was the Space Ship Shader. This shader can be used to render the ship with a variety of bump height. Giving control over how much of the diffuse textures underlying details are emphasised. By increasing the bump amount a large emphasis can be placed on the details of the ship and its texture(s) without needing to add or modify geometry which can cause performence decreases.

First we need to get the Diffuse texture, the bump texture and the slider value from the inspector (or the default values)
we then need to set the final albedo to the color values from our Diffuse texture
Then we need to set our final normal to the normal values of the Bump texture then multiply this by a vector 3 with the slider value at x and y and z set to 1

Pseudo Code

DiffuseTex = Inspector texture
BumpText = Inspector Texture
Slider = Inspector value

albedo = DiffuseTex.rgb
normal = normal(BumpTex) * (Slider,Slider,1)

<img width="626" alt="MidtermShipShader" src="https://user-images.githubusercontent.com/94036650/218818756-269833da-075f-408a-ba1f-c79689c4a524.png">
<img width="629" alt="MidtermShipShader2" src="https://user-images.githubusercontent.com/94036650/218818870-855b2672-20a5-40ae-9b5b-74f07ab8a1e7.png">


Second Shader
The second shader I implemented was the LUt shader. This shader uses a LUT texture and a Contribution slider to modify how the final pixel colours are rendered to the screen. 

First we need to get the main texture, the Lut texture and the contribution value from the inspector (or the default values)
we then need to disable culling, turn off ZWrite, and set ZTest to Always
then is a pass we need to calculate the transition between what the current pixel colours are and the new midified colours are based on the LUT texture.
Once we have these values we then need to lerp from the original colour to the new calculated colour based on the contribution value

<img width="626" alt="MidtermLUTShader" src="https://user-images.githubusercontent.com/94036650/218821428-e26c8db0-de69-4716-9648-a5fd00148bb1.png">
