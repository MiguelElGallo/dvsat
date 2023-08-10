{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}
source_model: v_stg_customer
src_pk: CUSTOMER_PK
src_satellite:
  SATELLITE_CUSTOMER:
    sat_name:
      SATELLITE_NAME: sat_customer_details
    hashdiff:                
      HASHDIFF: CUSTOMER_HASHDIFF
src_ldts: METATIMESTAMP
src_source: RECORD_SOURCE
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{% set source_model = metadata_dict["source_model"] %}
{% set src_pk = metadata_dict["src_pk"] %}
{% set src_satellite = metadata_dict["src_satellite"] %}
{% set src_ldts = metadata_dict["src_ldts"] %}
{% set src_source = metadata_dict["src_source"] %}

{{ automate_dv.xts(src_pk=src_pk, src_satellite=src_satellite, src_ldts=src_ldts,
                   src_source=src_source, source_model=source_model) }}
