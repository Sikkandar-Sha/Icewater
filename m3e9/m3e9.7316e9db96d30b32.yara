
rule m3e9_7316e9db96d30b32
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3e9.7316e9db96d30b32"
     cluster="m3e9.7316e9db96d30b32"
     cluster_size="34"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171120"
     license = "RIL-1.0 [Rick's Internet License] "
     family="conjar vobfus wbna"
     md5_hashes="['2793ed7c73f5a66f6212739da04b3998','55c3bf0e360685d47baa2e3a327429af','bdcdd31689c02acf4c6e00370540d75b']"

   strings:
      $hex_string = { dad6cacbbfb692958c17193cb9d5daf6f6f3d8c84b25000000252a32323f6dcaf2f2f6f9d74931303f49b5bcd7f0f2f2d8d5c1c0beb87a9491791a1f61d4f6da }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
