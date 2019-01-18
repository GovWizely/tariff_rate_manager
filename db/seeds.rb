# frozen_string_literal: true

# This file seeds the database with initial values based on the country-specific data files in `csv/`.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
COUNTRIES = ["Australia", "Bahrain", "Chile", "Colombia", "Costa Rica", "Dominican Republic", "El Salvador",
             "Guatemala", "Honduras", "Morocco", "Nicaragua", "Oman", "Panama", "Peru", "Singapore", "South Korea"]
KEY_MAPPING = {
  "ID" => "source_id",
  "TL" => "tariff_line",
  "TL_Desc" => "tariff_line_description",
  "HS6_Desc" => "subheading_description",
  "HS6" => "hs_6",
  "Base_Rate" => "base_rate",
  "Base_Rate_Alt" => "base_rate_alt",
  "Final_Year" => "final_year",
  "StagingBasket" => "staging_basket",
  "TRQ_Quota" => "tariff_rate_quota",
  "TRQ_Note" => "tariff_rate_quota_note",
  "Tariff_Eliminated" => "tariff_eliminated",
  "PartnerName" => "partner_name",
  "ReporterName" => "reporter_name",
  "PartnerStartYear" => "partner_start_year",
  "ReporterStartYear" => "reporter_start_year",
  "PartnerAgreementName" => "partner_agreement_name",
  "ReporterAgreementName" => "reporter_agreement_name",
  "QuotaName" => "quota_name",
  "Rule_Text" => "rule_text",
  "Link_Text" => "link_text",
  "Link_Url" => "link_url",
  "Y2004" => "y2004",
  "Alt_2004" => "alt_2004",
  "Y2005" => "y2005",
  "Alt_2005" => "alt_2005",
  "Y2006" => "y2006",
  "Alt_2006" => "alt_2006",
  "Y2007" => "y2007",
  "Alt_2007" => "alt_2007",
  "Y2008" => "y2008",
  "Alt_2008" => "alt_2008",
  "Y2009" => "y2009",
  "Alt_2009" => "alt_2009",
  "Y2010" => "y2010",
  "Alt_2010" => "alt_2010",
  "Y2011" => "y2011",
  "Alt_2011" => "alt_2011",
  "Y2012" => "y2012",
  "Alt_2012" => "alt_2012",
  "Y2013" => "y2013",
  "Alt_2013" => "alt_2013",
  "Y2014" => "y2014",
  "Alt_2014" => "alt_2014",
  "Y2015" => "y2015",
  "Alt_2015" => "alt_2015",
  "Y2016" => "y2016",
  "Alt_2016" => "alt_2016",
  "Y2017" => "y2017",
  "Alt_2017" => "alt_2017",
  "Y2018" => "y2018",
  "Alt_2018" => "alt_2018",
  "Y2019" => "y2019",
  "Alt_2019" => "alt_2019",
  "Y2020" => "y2020",
  "Alt_2020" => "alt_2020",
  "Y2021" => "y2021",
  "Alt_2021" => "alt_2021",
  "Y2022" => "y2022",
  "Alt_2022" => "alt_2022",
  "Y2023" => "y2023",
  "Alt_2023" => "alt_2023",
  "Y2024" => "y2024",
  "Alt_2024" => "alt_2024",
  "Y2025" => "y2025",
  "Alt_2025" => "alt_2025",
  "Y2026" => "y2026",
  "Alt_2026" => "alt_2026",
  "Y2027" => "y2027",
  "Alt_2027" => "alt_2027",
  "Y2028" => "y2028",
  "Alt_2028" => "alt_2028",
  "Y2029" => "y2029",
  "Alt_2029" => "alt_2029",
  "Y2030" => "y2030",
  "Alt_2030" => "alt_2030",
  "Y2031" => "y2031",
  "Alt_2031" => "alt_2031",
  "Sector_Code" => nil,
  "TLs_Per_6_Digit" => nil,
  "Staging_Basket" => nil,
  "Product_Type" => nil,
  "Pending_Data" => nil,
  "Ag_ID" => nil,
  "StagingBasketId" => nil,
  "Num_MAR_Columns" => nil,
  "PartnerAgreementApproved" => nil,
  "ReporterAgreementApproved" => nil,
  "ProductType" => nil }

COUNTRIES.each do |country|
  country_code = ISO3166::Country.find_country_by_name(country).alpha2
  puts "Starting on #{country} with country code #{country_code}"
  filename = "#{Rails.root}/db/csv/#{country.tr(' ', '_')}.csv"
  data = SmarterCSV.process(filename, header_transformations: [:none, key_mapping: KEY_MAPPING])
  data.each do |tuple|
    tuple['country_name'] = country
    tuple['country_code'] = country_code
    Tariff.create(tuple)
  end
end