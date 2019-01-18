# frozen_string_literal: true

ActiveAdmin.register Tariff do
  config.sort_order = 'country_code_asc'
  permit_params :alt_2004, :alt_2005, :alt_2006, :alt_2007, :alt_2008, :alt_2009, :alt_2010, :alt_2011, :alt_2012,
                :alt_2013, :alt_2014, :alt_2015, :alt_2016, :alt_2017, :alt_2018, :alt_2019, :alt_2020, :alt_2021,
                :alt_2022, :alt_2023, :alt_2024, :alt_2025, :alt_2026, :alt_2027, :alt_2028, :alt_2029, :alt_2030,
                :alt_2031, :base_rate, :base_rate_alt, :country_code, :country_name, :final_year, :hs_6, :link_text,
                :link_url, :partner_agreement_name, :partner_name, :partner_start_year, :quota_name,
                :reporter_agreement_name, :reporter_name, :reporter_start_year, :rule_text, :source_id,
                :staging_basket, :subheading_description, :tariff_eliminated, :tariff_line, :tariff_line_description,
                :tariff_rate_quota, :tariff_rate_quota_note, :y2004, :y2005, :y2006, :y2007, :y2008, :y2009, :y2010,
                :y2011, :y2012, :y2013, :y2014, :y2015, :y2016, :y2017, :y2018, :y2019, :y2020, :y2021, :y2022,
                :y2023, :y2024, :y2025, :y2026, :y2027, :y2028, :y2029, :y2030, :y2031
  filter :final_year_equals
  filter :source_id_equals
  filter :hs_6
  filter :tariff_line
  filter :partner_agreement_name
  filter :partner_name
  filter :partner_start_year
  filter :tariff_line_description
  filter :base_rate
  actions :all, except: [:new, :destroy]
  scope :all, default: true, group: :country
  scope 'AU', :au, group: :country
  scope 'BH', :bh, group: :country
  scope 'CL', :cl, group: :country
  scope 'CO', :co, group: :country
  scope 'CR', :cr, group: :country
  scope 'DO', :do, group: :country
  scope 'SV', :sv, group: :country
  scope 'GT', :gt, group: :country
  scope 'HN', :hn, group: :country
  scope 'MA', :ma, group: :country
  scope 'NI', :ni, group: :country
  scope 'OM', :om, group: :country
  scope 'PA', :pa, group: :country
  scope 'PE', :pe, group: :country
  scope 'SG', :sg, group: :country
  scope 'KR', :kr, group: :country
  index pagination_total: false, download_links: %i[json csv] do
    column :country_code
    column :country_name
    column :final_year
    column :hs_6
    column :tariff_line
    column :partner_agreement_name
    column :partner_name
    column :partner_start_year
    column :tariff_line_description
    column :source_id
    column :base_rate
    actions
  end
end
