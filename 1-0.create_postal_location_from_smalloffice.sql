create table `sample_ds`.`postal_location` as
with tb_postal0 as (
select format('%05d',postcode) as postcode, 
       avg(latitude) as latitude,
       avg(longitude) as longitude
  from `turnkey-charter-358922.cc_default.smallbizoffice`
 group by 1
)
, tb_postal as (
select postcode, 
       substr(postcode,1,2) as postcode_l1,
       substr(postcode,1,3) as postcode_l2,
       substr(postcode,1,4) as postcode_l3,
       latitude,
       longitude
  from tb_postal0
)
, tb_portal_l1 as (
select postcode_l1,
       avg(latitude) as latitude_l1,
       avg(longitude) as longitude_l1
  from tb_postal
 group by 1
)
, tb_portal_l2 as (
select postcode_l2,
       avg(latitude) as latitude_l2,
       avg(longitude) as longitude_l2
  from tb_postal
 group by 1
)
, tb_portal_l3 as (
select postcode_l3,
       avg(latitude) as latitude_l3,
       avg(longitude) as longitude_l3
  from tb_postal
 group by 1
)
select postcode, 
       postcode_l1,
       postcode_l2,
       postcode_l3,
       longitude, 
       latitude,
       longitude_l1,
       latitude_l1,
       longitude_l2,
       latitude_l2,
       longitude_l3,
       latitude_l3
  from tb_postal 
       join tb_portal_l1 using (postcode_l1)
       join tb_portal_l2 using (postcode_l2)
       join tb_portal_l3 using (postcode_l3)
;


