{%- set source_model = "v_stg_customer" -%}
{%- set src_pk = "CUSTOMER_PK" -%}
{%- set src_nk = "CUSTKEY" -%}
{%- set src_ldts = "METATIMESTAMP" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ automate_dv.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                   src_source=src_source, source_model=source_model) }}