class Tariff < ApplicationRecord
  scope :au, -> { where(country_code: 'AU') }
  scope :bh, -> { where(country_code: 'BH') }
  scope :cl, -> { where(country_code: 'CL') }
  scope :co, -> { where(country_code: 'CO') }
  scope :cr, -> { where(country_code: 'CR') }
  scope :do, -> { where(country_code: 'DO') }
  scope :sv, -> { where(country_code: 'SV') }
  scope :gt, -> { where(country_code: 'GT') }
  scope :hn, -> { where(country_code: 'HN') }
  scope :ma, -> { where(country_code: 'MA') }
  scope :ni, -> { where(country_code: 'NI') }
  scope :om, -> { where(country_code: 'OM') }
  scope :pa, -> { where(country_code: 'PA') }
  scope :pe, -> { where(country_code: 'PE') }
  scope :sg, -> { where(country_code: 'SG') }
  scope :kr, -> { where(country_code: 'KR') }
end
