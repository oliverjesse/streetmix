# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tzinfo}
  s.version = "0.3.20"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Ross"]
  s.date = %q{2010-04-18}
  s.description = %q{TZInfo is a Ruby library that uses the standard tz (Olson) database to provide daylight savings aware transformations between times in different time zones.}
  s.email = %q{phil.ross@gmail.com}
  s.extra_rdoc_files = ["README", "CHANGES"]
  s.files = ["CHANGES", "LICENSE", "Rakefile", "README", "lib/tzinfo/country.rb", "lib/tzinfo/country_index_definition.rb", "lib/tzinfo/country_info.rb", "lib/tzinfo/country_timezone.rb", "lib/tzinfo/data_timezone.rb", "lib/tzinfo/data_timezone_info.rb", "lib/tzinfo/definitions/Africa/Abidjan.rb", "lib/tzinfo/definitions/Africa/Accra.rb", "lib/tzinfo/definitions/Africa/Addis_Ababa.rb", "lib/tzinfo/definitions/Africa/Algiers.rb", "lib/tzinfo/definitions/Africa/Asmara.rb", "lib/tzinfo/definitions/Africa/Asmera.rb", "lib/tzinfo/definitions/Africa/Bamako.rb", "lib/tzinfo/definitions/Africa/Bangui.rb", "lib/tzinfo/definitions/Africa/Banjul.rb", "lib/tzinfo/definitions/Africa/Bissau.rb", "lib/tzinfo/definitions/Africa/Blantyre.rb", "lib/tzinfo/definitions/Africa/Brazzaville.rb", "lib/tzinfo/definitions/Africa/Bujumbura.rb", "lib/tzinfo/definitions/Africa/Cairo.rb", "lib/tzinfo/definitions/Africa/Casablanca.rb", "lib/tzinfo/definitions/Africa/Ceuta.rb", "lib/tzinfo/definitions/Africa/Conakry.rb", "lib/tzinfo/definitions/Africa/Dakar.rb", "lib/tzinfo/definitions/Africa/Dar_es_Salaam.rb", "lib/tzinfo/definitions/Africa/Djibouti.rb", "lib/tzinfo/definitions/Africa/Douala.rb", "lib/tzinfo/definitions/Africa/El_Aaiun.rb", "lib/tzinfo/definitions/Africa/Freetown.rb", "lib/tzinfo/definitions/Africa/Gaborone.rb", "lib/tzinfo/definitions/Africa/Harare.rb", "lib/tzinfo/definitions/Africa/Johannesburg.rb", "lib/tzinfo/definitions/Africa/Kampala.rb", "lib/tzinfo/definitions/Africa/Khartoum.rb", "lib/tzinfo/definitions/Africa/Kigali.rb", "lib/tzinfo/definitions/Africa/Kinshasa.rb", "lib/tzinfo/definitions/Africa/Lagos.rb", "lib/tzinfo/definitions/Africa/Libreville.rb", "lib/tzinfo/definitions/Africa/Lome.rb", "lib/tzinfo/definitions/Africa/Luanda.rb", "lib/tzinfo/definitions/Africa/Lubumbashi.rb", "lib/tzinfo/definitions/Africa/Lusaka.rb", "lib/tzinfo/definitions/Africa/Malabo.rb", "lib/tzinfo/definitions/Africa/Maputo.rb", "lib/tzinfo/definitions/Africa/Maseru.rb", "lib/tzinfo/definitions/Africa/Mbabane.rb", "lib/tzinfo/definitions/Africa/Mogadishu.rb", "lib/tzinfo/definitions/Africa/Monrovia.rb", "lib/tzinfo/definitions/Africa/Nairobi.rb", "lib/tzinfo/definitions/Africa/Ndjamena.rb", "lib/tzinfo/definitions/Africa/Niamey.rb", "lib/tzinfo/definitions/Africa/Nouakchott.rb", "lib/tzinfo/definitions/Africa/Ouagadougou.rb", "lib/tzinfo/definitions/Africa/Porto__m__Novo.rb", "lib/tzinfo/definitions/Africa/Sao_Tome.rb", "lib/tzinfo/definitions/Africa/Timbuktu.rb", "lib/tzinfo/definitions/Africa/Tripoli.rb", "lib/tzinfo/definitions/Africa/Tunis.rb", "lib/tzinfo/definitions/Africa/Windhoek.rb", "lib/tzinfo/definitions/America/Adak.rb", "lib/tzinfo/definitions/America/Anchorage.rb", "lib/tzinfo/definitions/America/Anguilla.rb", "lib/tzinfo/definitions/America/Antigua.rb", "lib/tzinfo/definitions/America/Araguaina.rb", "lib/tzinfo/definitions/America/Argentina/Buenos_Aires.rb", "lib/tzinfo/definitions/America/Argentina/Catamarca.rb", "lib/tzinfo/definitions/America/Argentina/ComodRivadavia.rb", "lib/tzinfo/definitions/America/Argentina/Cordoba.rb", "lib/tzinfo/definitions/America/Argentina/Jujuy.rb", "lib/tzinfo/definitions/America/Argentina/La_Rioja.rb", "lib/tzinfo/definitions/America/Argentina/Mendoza.rb", "lib/tzinfo/definitions/America/Argentina/Rio_Gallegos.rb", "lib/tzinfo/definitions/America/Argentina/Salta.rb", "lib/tzinfo/definitions/America/Argentina/San_Juan.rb", "lib/tzinfo/definitions/America/Argentina/San_Luis.rb", "lib/tzinfo/definitions/America/Argentina/Tucuman.rb", "lib/tzinfo/definitions/America/Argentina/Ushuaia.rb", "lib/tzinfo/definitions/America/Aruba.rb", "lib/tzinfo/definitions/America/Asuncion.rb", "lib/tzinfo/definitions/America/Atikokan.rb", "lib/tzinfo/definitions/America/Atka.rb", "lib/tzinfo/definitions/America/Bahia.rb", "lib/tzinfo/definitions/America/Barbados.rb", "lib/tzinfo/definitions/America/Belem.rb", "lib/tzinfo/definitions/America/Belize.rb", "lib/tzinfo/definitions/America/Blanc__m__Sablon.rb", "lib/tzinfo/definitions/America/Boa_Vista.rb", "lib/tzinfo/definitions/America/Bogota.rb", "lib/tzinfo/definitions/America/Boise.rb", "lib/tzinfo/definitions/America/Buenos_Aires.rb", "lib/tzinfo/definitions/America/Cambridge_Bay.rb", "lib/tzinfo/definitions/America/Campo_Grande.rb", "lib/tzinfo/definitions/America/Cancun.rb", "lib/tzinfo/definitions/America/Caracas.rb", "lib/tzinfo/definitions/America/Catamarca.rb", "lib/tzinfo/definitions/America/Cayenne.rb", "lib/tzinfo/definitions/America/Cayman.rb", "lib/tzinfo/definitions/America/Chicago.rb", "lib/tzinfo/definitions/America/Chihuahua.rb", "lib/tzinfo/definitions/America/Coral_Harbour.rb", "lib/tzinfo/definitions/America/Cordoba.rb", "lib/tzinfo/definitions/America/Costa_Rica.rb", "lib/tzinfo/definitions/America/Cuiaba.rb", "lib/tzinfo/definitions/America/Curacao.rb", "lib/tzinfo/definitions/America/Danmarkshavn.rb", "lib/tzinfo/definitions/America/Dawson.rb", "lib/tzinfo/definitions/America/Dawson_Creek.rb", "lib/tzinfo/definitions/America/Denver.rb", "lib/tzinfo/definitions/America/Detroit.rb", "lib/tzinfo/definitions/America/Dominica.rb", "lib/tzinfo/definitions/America/Edmonton.rb", "lib/tzinfo/definitions/America/Eirunepe.rb", "lib/tzinfo/definitions/America/El_Salvador.rb", "lib/tzinfo/definitions/America/Ensenada.rb", "lib/tzinfo/definitions/America/Fortaleza.rb", "lib/tzinfo/definitions/America/Fort_Wayne.rb", "lib/tzinfo/definitions/America/Glace_Bay.rb", "lib/tzinfo/definitions/America/Godthab.rb", "lib/tzinfo/definitions/America/Goose_Bay.rb", "lib/tzinfo/definitions/America/Grand_Turk.rb", "lib/tzinfo/definitions/America/Grenada.rb", "lib/tzinfo/definitions/America/Guadeloupe.rb", "lib/tzinfo/definitions/America/Guatemala.rb", "lib/tzinfo/definitions/America/Guayaquil.rb", "lib/tzinfo/definitions/America/Guyana.rb", "lib/tzinfo/definitions/America/Halifax.rb", "lib/tzinfo/definitions/America/Havana.rb", "lib/tzinfo/definitions/America/Hermosillo.rb", "lib/tzinfo/definitions/America/Indiana/Indianapolis.rb", "lib/tzinfo/definitions/America/Indiana/Knox.rb", "lib/tzinfo/definitions/America/Indiana/Marengo.rb", "lib/tzinfo/definitions/America/Indiana/Petersburg.rb", "lib/tzinfo/definitions/America/Indiana/Tell_City.rb", "lib/tzinfo/definitions/America/Indiana/Vevay.rb", "lib/tzinfo/definitions/America/Indiana/Vincennes.rb", "lib/tzinfo/definitions/America/Indiana/Winamac.rb", "lib/tzinfo/definitions/America/Indianapolis.rb", "lib/tzinfo/definitions/America/Inuvik.rb", "lib/tzinfo/definitions/America/Iqaluit.rb", "lib/tzinfo/definitions/America/Jamaica.rb", "lib/tzinfo/definitions/America/Jujuy.rb", "lib/tzinfo/definitions/America/Juneau.rb", "lib/tzinfo/definitions/America/Kentucky/Louisville.rb", "lib/tzinfo/definitions/America/Kentucky/Monticello.rb", "lib/tzinfo/definitions/America/Knox_IN.rb", "lib/tzinfo/definitions/America/La_Paz.rb", "lib/tzinfo/definitions/America/Lima.rb", "lib/tzinfo/definitions/America/Los_Angeles.rb", "lib/tzinfo/definitions/America/Louisville.rb", "lib/tzinfo/definitions/America/Maceio.rb", "lib/tzinfo/definitions/America/Managua.rb", "lib/tzinfo/definitions/America/Manaus.rb", "lib/tzinfo/definitions/America/Marigot.rb", "lib/tzinfo/definitions/America/Martinique.rb", "lib/tzinfo/definitions/America/Matamoros.rb", "lib/tzinfo/definitions/America/Mazatlan.rb", "lib/tzinfo/definitions/America/Mendoza.rb", "lib/tzinfo/definitions/America/Menominee.rb", "lib/tzinfo/definitions/America/Merida.rb", "lib/tzinfo/definitions/America/Mexico_City.rb", "lib/tzinfo/definitions/America/Miquelon.rb", "lib/tzinfo/definitions/America/Moncton.rb", "lib/tzinfo/definitions/America/Monterrey.rb", "lib/tzinfo/definitions/America/Montevideo.rb", "lib/tzinfo/definitions/America/Montreal.rb", "lib/tzinfo/definitions/America/Montserrat.rb", "lib/tzinfo/definitions/America/Nassau.rb", "lib/tzinfo/definitions/America/New_York.rb", "lib/tzinfo/definitions/America/Nipigon.rb", "lib/tzinfo/definitions/America/Nome.rb", "lib/tzinfo/definitions/America/Noronha.rb", "lib/tzinfo/definitions/America/North_Dakota/Center.rb", "lib/tzinfo/definitions/America/North_Dakota/New_Salem.rb", "lib/tzinfo/definitions/America/Ojinaga.rb", "lib/tzinfo/definitions/America/Panama.rb", "lib/tzinfo/definitions/America/Pangnirtung.rb", "lib/tzinfo/definitions/America/Paramaribo.rb", "lib/tzinfo/definitions/America/Phoenix.rb", "lib/tzinfo/definitions/America/Porto_Acre.rb", "lib/tzinfo/definitions/America/Porto_Velho.rb", "lib/tzinfo/definitions/America/Port_of_Spain.rb", "lib/tzinfo/definitions/America/Port__m__au__m__Prince.rb", "lib/tzinfo/definitions/America/Puerto_Rico.rb", "lib/tzinfo/definitions/America/Rainy_River.rb", "lib/tzinfo/definitions/America/Rankin_Inlet.rb", "lib/tzinfo/definitions/America/Recife.rb", "lib/tzinfo/definitions/America/Regina.rb", "lib/tzinfo/definitions/America/Resolute.rb", "lib/tzinfo/definitions/America/Rio_Branco.rb", "lib/tzinfo/definitions/America/Rosario.rb", "lib/tzinfo/definitions/America/Santarem.rb", "lib/tzinfo/definitions/America/Santa_Isabel.rb", "lib/tzinfo/definitions/America/Santiago.rb", "lib/tzinfo/definitions/America/Santo_Domingo.rb", "lib/tzinfo/definitions/America/Sao_Paulo.rb", "lib/tzinfo/definitions/America/Scoresbysund.rb", "lib/tzinfo/definitions/America/Shiprock.rb", "lib/tzinfo/definitions/America/St_Barthelemy.rb", "lib/tzinfo/definitions/America/St_Johns.rb", "lib/tzinfo/definitions/America/St_Kitts.rb", "lib/tzinfo/definitions/America/St_Lucia.rb", "lib/tzinfo/definitions/America/St_Thomas.rb", "lib/tzinfo/definitions/America/St_Vincent.rb", "lib/tzinfo/definitions/America/Swift_Current.rb", "lib/tzinfo/definitions/America/Tegucigalpa.rb", "lib/tzinfo/definitions/America/Thule.rb", "lib/tzinfo/definitions/America/Thunder_Bay.rb", "lib/tzinfo/definitions/America/Tijuana.rb", "lib/tzinfo/definitions/America/Toronto.rb", "lib/tzinfo/definitions/America/Tortola.rb", "lib/tzinfo/definitions/America/Vancouver.rb", "lib/tzinfo/definitions/America/Virgin.rb", "lib/tzinfo/definitions/America/Whitehorse.rb", "lib/tzinfo/definitions/America/Winnipeg.rb", "lib/tzinfo/definitions/America/Yakutat.rb", "lib/tzinfo/definitions/America/Yellowknife.rb", "lib/tzinfo/definitions/Antarctica/Casey.rb", "lib/tzinfo/definitions/Antarctica/Davis.rb", "lib/tzinfo/definitions/Antarctica/DumontDUrville.rb", "lib/tzinfo/definitions/Antarctica/Macquarie.rb", "lib/tzinfo/definitions/Antarctica/Mawson.rb", "lib/tzinfo/definitions/Antarctica/McMurdo.rb", "lib/tzinfo/definitions/Antarctica/Palmer.rb", "lib/tzinfo/definitions/Antarctica/Rothera.rb", "lib/tzinfo/definitions/Antarctica/South_Pole.rb", "lib/tzinfo/definitions/Antarctica/Syowa.rb", "lib/tzinfo/definitions/Antarctica/Vostok.rb", "lib/tzinfo/definitions/Arctic/Longyearbyen.rb", "lib/tzinfo/definitions/Asia/Aden.rb", "lib/tzinfo/definitions/Asia/Almaty.rb", "lib/tzinfo/definitions/Asia/Amman.rb", "lib/tzinfo/definitions/Asia/Anadyr.rb", "lib/tzinfo/definitions/Asia/Aqtau.rb", "lib/tzinfo/definitions/Asia/Aqtobe.rb", "lib/tzinfo/definitions/Asia/Ashgabat.rb", "lib/tzinfo/definitions/Asia/Ashkhabad.rb", "lib/tzinfo/definitions/Asia/Baghdad.rb", "lib/tzinfo/definitions/Asia/Bahrain.rb", "lib/tzinfo/definitions/Asia/Baku.rb", "lib/tzinfo/definitions/Asia/Bangkok.rb", "lib/tzinfo/definitions/Asia/Beirut.rb", "lib/tzinfo/definitions/Asia/Bishkek.rb", "lib/tzinfo/definitions/Asia/Brunei.rb", "lib/tzinfo/definitions/Asia/Calcutta.rb", "lib/tzinfo/definitions/Asia/Choibalsan.rb", "lib/tzinfo/definitions/Asia/Chongqing.rb", "lib/tzinfo/definitions/Asia/Chungking.rb", "lib/tzinfo/definitions/Asia/Colombo.rb", "lib/tzinfo/definitions/Asia/Dacca.rb", "lib/tzinfo/definitions/Asia/Damascus.rb", "lib/tzinfo/definitions/Asia/Dhaka.rb", "lib/tzinfo/definitions/Asia/Dili.rb", "lib/tzinfo/definitions/Asia/Dubai.rb", "lib/tzinfo/definitions/Asia/Dushanbe.rb", "lib/tzinfo/definitions/Asia/Gaza.rb", "lib/tzinfo/definitions/Asia/Harbin.rb", "lib/tzinfo/definitions/Asia/Hong_Kong.rb", "lib/tzinfo/definitions/Asia/Hovd.rb", "lib/tzinfo/definitions/Asia/Ho_Chi_Minh.rb", "lib/tzinfo/definitions/Asia/Irkutsk.rb", "lib/tzinfo/definitions/Asia/Istanbul.rb", "lib/tzinfo/definitions/Asia/Jakarta.rb", "lib/tzinfo/definitions/Asia/Jayapura.rb", "lib/tzinfo/definitions/Asia/Jerusalem.rb", "lib/tzinfo/definitions/Asia/Kabul.rb", "lib/tzinfo/definitions/Asia/Kamchatka.rb", "lib/tzinfo/definitions/Asia/Karachi.rb", "lib/tzinfo/definitions/Asia/Kashgar.rb", "lib/tzinfo/definitions/Asia/Kathmandu.rb", "lib/tzinfo/definitions/Asia/Katmandu.rb", "lib/tzinfo/definitions/Asia/Kolkata.rb", "lib/tzinfo/definitions/Asia/Krasnoyarsk.rb", "lib/tzinfo/definitions/Asia/Kuala_Lumpur.rb", "lib/tzinfo/definitions/Asia/Kuching.rb", "lib/tzinfo/definitions/Asia/Kuwait.rb", "lib/tzinfo/definitions/Asia/Macao.rb", "lib/tzinfo/definitions/Asia/Macau.rb", "lib/tzinfo/definitions/Asia/Magadan.rb", "lib/tzinfo/definitions/Asia/Makassar.rb", "lib/tzinfo/definitions/Asia/Manila.rb", "lib/tzinfo/definitions/Asia/Muscat.rb", "lib/tzinfo/definitions/Asia/Nicosia.rb", "lib/tzinfo/definitions/Asia/Novokuznetsk.rb", "lib/tzinfo/definitions/Asia/Novosibirsk.rb", "lib/tzinfo/definitions/Asia/Omsk.rb", "lib/tzinfo/definitions/Asia/Oral.rb", "lib/tzinfo/definitions/Asia/Phnom_Penh.rb", "lib/tzinfo/definitions/Asia/Pontianak.rb", "lib/tzinfo/definitions/Asia/Pyongyang.rb", "lib/tzinfo/definitions/Asia/Qatar.rb", "lib/tzinfo/definitions/Asia/Qyzylorda.rb", "lib/tzinfo/definitions/Asia/Rangoon.rb", "lib/tzinfo/definitions/Asia/Riyadh.rb", "lib/tzinfo/definitions/Asia/Riyadh87.rb", "lib/tzinfo/definitions/Asia/Riyadh88.rb", "lib/tzinfo/definitions/Asia/Riyadh89.rb", "lib/tzinfo/definitions/Asia/Saigon.rb", "lib/tzinfo/definitions/Asia/Sakhalin.rb", "lib/tzinfo/definitions/Asia/Samarkand.rb", "lib/tzinfo/definitions/Asia/Seoul.rb", "lib/tzinfo/definitions/Asia/Shanghai.rb", "lib/tzinfo/definitions/Asia/Singapore.rb", "lib/tzinfo/definitions/Asia/Taipei.rb", "lib/tzinfo/definitions/Asia/Tashkent.rb", "lib/tzinfo/definitions/Asia/Tbilisi.rb", "lib/tzinfo/definitions/Asia/Tehran.rb", "lib/tzinfo/definitions/Asia/Tel_Aviv.rb", "lib/tzinfo/definitions/Asia/Thimbu.rb", "lib/tzinfo/definitions/Asia/Thimphu.rb", "lib/tzinfo/definitions/Asia/Tokyo.rb", "lib/tzinfo/definitions/Asia/Ujung_Pandang.rb", "lib/tzinfo/definitions/Asia/Ulaanbaatar.rb", "lib/tzinfo/definitions/Asia/Ulan_Bator.rb", "lib/tzinfo/definitions/Asia/Urumqi.rb", "lib/tzinfo/definitions/Asia/Vientiane.rb", "lib/tzinfo/definitions/Asia/Vladivostok.rb", "lib/tzinfo/definitions/Asia/Yakutsk.rb", "lib/tzinfo/definitions/Asia/Yekaterinburg.rb", "lib/tzinfo/definitions/Asia/Yerevan.rb", "lib/tzinfo/definitions/Atlantic/Azores.rb", "lib/tzinfo/definitions/Atlantic/Bermuda.rb", "lib/tzinfo/definitions/Atlantic/Canary.rb", "lib/tzinfo/definitions/Atlantic/Cape_Verde.rb", "lib/tzinfo/definitions/Atlantic/Faeroe.rb", "lib/tzinfo/definitions/Atlantic/Faroe.rb", "lib/tzinfo/definitions/Atlantic/Jan_Mayen.rb", "lib/tzinfo/definitions/Atlantic/Madeira.rb", "lib/tzinfo/definitions/Atlantic/Reykjavik.rb", "lib/tzinfo/definitions/Atlantic/South_Georgia.rb", "lib/tzinfo/definitions/Atlantic/Stanley.rb", "lib/tzinfo/definitions/Atlantic/St_Helena.rb", "lib/tzinfo/definitions/Australia/ACT.rb", "lib/tzinfo/definitions/Australia/Adelaide.rb", "lib/tzinfo/definitions/Australia/Brisbane.rb", "lib/tzinfo/definitions/Australia/Broken_Hill.rb", "lib/tzinfo/definitions/Australia/Canberra.rb", "lib/tzinfo/definitions/Australia/Currie.rb", "lib/tzinfo/definitions/Australia/Darwin.rb", "lib/tzinfo/definitions/Australia/Eucla.rb", "lib/tzinfo/definitions/Australia/Hobart.rb", "lib/tzinfo/definitions/Australia/LHI.rb", "lib/tzinfo/definitions/Australia/Lindeman.rb", "lib/tzinfo/definitions/Australia/Lord_Howe.rb", "lib/tzinfo/definitions/Australia/Melbourne.rb", "lib/tzinfo/definitions/Australia/North.rb", "lib/tzinfo/definitions/Australia/NSW.rb", "lib/tzinfo/definitions/Australia/Perth.rb", "lib/tzinfo/definitions/Australia/Queensland.rb", "lib/tzinfo/definitions/Australia/South.rb", "lib/tzinfo/definitions/Australia/Sydney.rb", "lib/tzinfo/definitions/Australia/Tasmania.rb", "lib/tzinfo/definitions/Australia/Victoria.rb", "lib/tzinfo/definitions/Australia/West.rb", "lib/tzinfo/definitions/Australia/Yancowinna.rb", "lib/tzinfo/definitions/Brazil/Acre.rb", "lib/tzinfo/definitions/Brazil/DeNoronha.rb", "lib/tzinfo/definitions/Brazil/East.rb", "lib/tzinfo/definitions/Brazil/West.rb", "lib/tzinfo/definitions/Canada/Atlantic.rb", "lib/tzinfo/definitions/Canada/Central.rb", "lib/tzinfo/definitions/Canada/Eastern.rb", "lib/tzinfo/definitions/Canada/East__m__Saskatchewan.rb", "lib/tzinfo/definitions/Canada/Mountain.rb", "lib/tzinfo/definitions/Canada/Newfoundland.rb", "lib/tzinfo/definitions/Canada/Pacific.rb", "lib/tzinfo/definitions/Canada/Saskatchewan.rb", "lib/tzinfo/definitions/Canada/Yukon.rb", "lib/tzinfo/definitions/CET.rb", "lib/tzinfo/definitions/Chile/Continental.rb", "lib/tzinfo/definitions/Chile/EasterIsland.rb", "lib/tzinfo/definitions/CST6CDT.rb", "lib/tzinfo/definitions/Cuba.rb", "lib/tzinfo/definitions/EET.rb", "lib/tzinfo/definitions/Egypt.rb", "lib/tzinfo/definitions/Eire.rb", "lib/tzinfo/definitions/EST.rb", "lib/tzinfo/definitions/EST5EDT.rb", "lib/tzinfo/definitions/Etc/GMT.rb", "lib/tzinfo/definitions/Etc/GMT0.rb", "lib/tzinfo/definitions/Etc/GMT__m__0.rb", "lib/tzinfo/definitions/Etc/GMT__m__1.rb", "lib/tzinfo/definitions/Etc/GMT__m__10.rb", "lib/tzinfo/definitions/Etc/GMT__m__11.rb", "lib/tzinfo/definitions/Etc/GMT__m__12.rb", "lib/tzinfo/definitions/Etc/GMT__m__13.rb", "lib/tzinfo/definitions/Etc/GMT__m__14.rb", "lib/tzinfo/definitions/Etc/GMT__m__2.rb", "lib/tzinfo/definitions/Etc/GMT__m__3.rb", "lib/tzinfo/definitions/Etc/GMT__m__4.rb", "lib/tzinfo/definitions/Etc/GMT__m__5.rb", "lib/tzinfo/definitions/Etc/GMT__m__6.rb", "lib/tzinfo/definitions/Etc/GMT__m__7.rb", "lib/tzinfo/definitions/Etc/GMT__m__8.rb", "lib/tzinfo/definitions/Etc/GMT__m__9.rb", "lib/tzinfo/definitions/Etc/GMT__p__0.rb", "lib/tzinfo/definitions/Etc/GMT__p__1.rb", "lib/tzinfo/definitions/Etc/GMT__p__10.rb", "lib/tzinfo/definitions/Etc/GMT__p__11.rb", "lib/tzinfo/definitions/Etc/GMT__p__12.rb", "lib/tzinfo/definitions/Etc/GMT__p__2.rb", "lib/tzinfo/definitions/Etc/GMT__p__3.rb", "lib/tzinfo/definitions/Etc/GMT__p__4.rb", "lib/tzinfo/definitions/Etc/GMT__p__5.rb", "lib/tzinfo/definitions/Etc/GMT__p__6.rb", "lib/tzinfo/definitions/Etc/GMT__p__7.rb", "lib/tzinfo/definitions/Etc/GMT__p__8.rb", "lib/tzinfo/definitions/Etc/GMT__p__9.rb", "lib/tzinfo/definitions/Etc/Greenwich.rb", "lib/tzinfo/definitions/Etc/UCT.rb", "lib/tzinfo/definitions/Etc/Universal.rb", "lib/tzinfo/definitions/Etc/UTC.rb", "lib/tzinfo/definitions/Etc/Zulu.rb", "lib/tzinfo/definitions/Europe/Amsterdam.rb", "lib/tzinfo/definitions/Europe/Andorra.rb", "lib/tzinfo/definitions/Europe/Athens.rb", "lib/tzinfo/definitions/Europe/Belfast.rb", "lib/tzinfo/definitions/Europe/Belgrade.rb", "lib/tzinfo/definitions/Europe/Berlin.rb", "lib/tzinfo/definitions/Europe/Bratislava.rb", "lib/tzinfo/definitions/Europe/Brussels.rb", "lib/tzinfo/definitions/Europe/Bucharest.rb", "lib/tzinfo/definitions/Europe/Budapest.rb", "lib/tzinfo/definitions/Europe/Chisinau.rb", "lib/tzinfo/definitions/Europe/Copenhagen.rb", "lib/tzinfo/definitions/Europe/Dublin.rb", "lib/tzinfo/definitions/Europe/Gibraltar.rb", "lib/tzinfo/definitions/Europe/Guernsey.rb", "lib/tzinfo/definitions/Europe/Helsinki.rb", "lib/tzinfo/definitions/Europe/Isle_of_Man.rb", "lib/tzinfo/definitions/Europe/Istanbul.rb", "lib/tzinfo/definitions/Europe/Jersey.rb", "lib/tzinfo/definitions/Europe/Kaliningrad.rb", "lib/tzinfo/definitions/Europe/Kiev.rb", "lib/tzinfo/definitions/Europe/Lisbon.rb", "lib/tzinfo/definitions/Europe/Ljubljana.rb", "lib/tzinfo/definitions/Europe/London.rb", "lib/tzinfo/definitions/Europe/Luxembourg.rb", "lib/tzinfo/definitions/Europe/Madrid.rb", "lib/tzinfo/definitions/Europe/Malta.rb", "lib/tzinfo/definitions/Europe/Mariehamn.rb", "lib/tzinfo/definitions/Europe/Minsk.rb", "lib/tzinfo/definitions/Europe/Monaco.rb", "lib/tzinfo/definitions/Europe/Moscow.rb", "lib/tzinfo/definitions/Europe/Nicosia.rb", "lib/tzinfo/definitions/Europe/Oslo.rb", "lib/tzinfo/definitions/Europe/Paris.rb", "lib/tzinfo/definitions/Europe/Podgorica.rb", "lib/tzinfo/definitions/Europe/Prague.rb", "lib/tzinfo/definitions/Europe/Riga.rb", "lib/tzinfo/definitions/Europe/Rome.rb", "lib/tzinfo/definitions/Europe/Samara.rb", "lib/tzinfo/definitions/Europe/San_Marino.rb", "lib/tzinfo/definitions/Europe/Sarajevo.rb", "lib/tzinfo/definitions/Europe/Simferopol.rb", "lib/tzinfo/definitions/Europe/Skopje.rb", "lib/tzinfo/definitions/Europe/Sofia.rb", "lib/tzinfo/definitions/Europe/Stockholm.rb", "lib/tzinfo/definitions/Europe/Tallinn.rb", "lib/tzinfo/definitions/Europe/Tirane.rb", "lib/tzinfo/definitions/Europe/Tiraspol.rb", "lib/tzinfo/definitions/Europe/Uzhgorod.rb", "lib/tzinfo/definitions/Europe/Vaduz.rb", "lib/tzinfo/definitions/Europe/Vatican.rb", "lib/tzinfo/definitions/Europe/Vienna.rb", "lib/tzinfo/definitions/Europe/Vilnius.rb", "lib/tzinfo/definitions/Europe/Volgograd.rb", "lib/tzinfo/definitions/Europe/Warsaw.rb", "lib/tzinfo/definitions/Europe/Zagreb.rb", "lib/tzinfo/definitions/Europe/Zaporozhye.rb", "lib/tzinfo/definitions/Europe/Zurich.rb", "lib/tzinfo/definitions/GB.rb", "lib/tzinfo/definitions/GB__m__Eire.rb", "lib/tzinfo/definitions/GMT.rb", "lib/tzinfo/definitions/GMT0.rb", "lib/tzinfo/definitions/GMT__m__0.rb", "lib/tzinfo/definitions/GMT__p__0.rb", "lib/tzinfo/definitions/Greenwich.rb", "lib/tzinfo/definitions/Hongkong.rb", "lib/tzinfo/definitions/HST.rb", "lib/tzinfo/definitions/Iceland.rb", "lib/tzinfo/definitions/Indian/Antananarivo.rb", "lib/tzinfo/definitions/Indian/Chagos.rb", "lib/tzinfo/definitions/Indian/Christmas.rb", "lib/tzinfo/definitions/Indian/Cocos.rb", "lib/tzinfo/definitions/Indian/Comoro.rb", "lib/tzinfo/definitions/Indian/Kerguelen.rb", "lib/tzinfo/definitions/Indian/Mahe.rb", "lib/tzinfo/definitions/Indian/Maldives.rb", "lib/tzinfo/definitions/Indian/Mauritius.rb", "lib/tzinfo/definitions/Indian/Mayotte.rb", "lib/tzinfo/definitions/Indian/Reunion.rb", "lib/tzinfo/definitions/Iran.rb", "lib/tzinfo/definitions/Israel.rb", "lib/tzinfo/definitions/Jamaica.rb", "lib/tzinfo/definitions/Japan.rb", "lib/tzinfo/definitions/Kwajalein.rb", "lib/tzinfo/definitions/Libya.rb", "lib/tzinfo/definitions/MET.rb", "lib/tzinfo/definitions/Mexico/BajaNorte.rb", "lib/tzinfo/definitions/Mexico/BajaSur.rb", "lib/tzinfo/definitions/Mexico/General.rb", "lib/tzinfo/definitions/Mideast/Riyadh87.rb", "lib/tzinfo/definitions/Mideast/Riyadh88.rb", "lib/tzinfo/definitions/Mideast/Riyadh89.rb", "lib/tzinfo/definitions/MST.rb", "lib/tzinfo/definitions/MST7MDT.rb", "lib/tzinfo/definitions/Navajo.rb", "lib/tzinfo/definitions/NZ.rb", "lib/tzinfo/definitions/NZ__m__CHAT.rb", "lib/tzinfo/definitions/Pacific/Apia.rb", "lib/tzinfo/definitions/Pacific/Auckland.rb", "lib/tzinfo/definitions/Pacific/Chatham.rb", "lib/tzinfo/definitions/Pacific/Easter.rb", "lib/tzinfo/definitions/Pacific/Efate.rb", "lib/tzinfo/definitions/Pacific/Enderbury.rb", "lib/tzinfo/definitions/Pacific/Fakaofo.rb", "lib/tzinfo/definitions/Pacific/Fiji.rb", "lib/tzinfo/definitions/Pacific/Funafuti.rb", "lib/tzinfo/definitions/Pacific/Galapagos.rb", "lib/tzinfo/definitions/Pacific/Gambier.rb", "lib/tzinfo/definitions/Pacific/Guadalcanal.rb", "lib/tzinfo/definitions/Pacific/Guam.rb", "lib/tzinfo/definitions/Pacific/Honolulu.rb", "lib/tzinfo/definitions/Pacific/Johnston.rb", "lib/tzinfo/definitions/Pacific/Kiritimati.rb", "lib/tzinfo/definitions/Pacific/Kosrae.rb", "lib/tzinfo/definitions/Pacific/Kwajalein.rb", "lib/tzinfo/definitions/Pacific/Majuro.rb", "lib/tzinfo/definitions/Pacific/Marquesas.rb", "lib/tzinfo/definitions/Pacific/Midway.rb", "lib/tzinfo/definitions/Pacific/Nauru.rb", "lib/tzinfo/definitions/Pacific/Niue.rb", "lib/tzinfo/definitions/Pacific/Norfolk.rb", "lib/tzinfo/definitions/Pacific/Noumea.rb", "lib/tzinfo/definitions/Pacific/Pago_Pago.rb", "lib/tzinfo/definitions/Pacific/Palau.rb", "lib/tzinfo/definitions/Pacific/Pitcairn.rb", "lib/tzinfo/definitions/Pacific/Ponape.rb", "lib/tzinfo/definitions/Pacific/Port_Moresby.rb", "lib/tzinfo/definitions/Pacific/Rarotonga.rb", "lib/tzinfo/definitions/Pacific/Saipan.rb", "lib/tzinfo/definitions/Pacific/Samoa.rb", "lib/tzinfo/definitions/Pacific/Tahiti.rb", "lib/tzinfo/definitions/Pacific/Tarawa.rb", "lib/tzinfo/definitions/Pacific/Tongatapu.rb", "lib/tzinfo/definitions/Pacific/Truk.rb", "lib/tzinfo/definitions/Pacific/Wake.rb", "lib/tzinfo/definitions/Pacific/Wallis.rb", "lib/tzinfo/definitions/Pacific/Yap.rb", "lib/tzinfo/definitions/Poland.rb", "lib/tzinfo/definitions/Portugal.rb", "lib/tzinfo/definitions/PRC.rb", "lib/tzinfo/definitions/PST8PDT.rb", "lib/tzinfo/definitions/ROC.rb", "lib/tzinfo/definitions/ROK.rb", "lib/tzinfo/definitions/Singapore.rb", "lib/tzinfo/definitions/Turkey.rb", "lib/tzinfo/definitions/UCT.rb", "lib/tzinfo/definitions/Universal.rb", "lib/tzinfo/definitions/US/Alaska.rb", "lib/tzinfo/definitions/US/Aleutian.rb", "lib/tzinfo/definitions/US/Arizona.rb", "lib/tzinfo/definitions/US/Central.rb", "lib/tzinfo/definitions/US/Eastern.rb", "lib/tzinfo/definitions/US/East__m__Indiana.rb", "lib/tzinfo/definitions/US/Hawaii.rb", "lib/tzinfo/definitions/US/Indiana__m__Starke.rb", "lib/tzinfo/definitions/US/Michigan.rb", "lib/tzinfo/definitions/US/Mountain.rb", "lib/tzinfo/definitions/US/Pacific.rb", "lib/tzinfo/definitions/US/Pacific__m__New.rb", "lib/tzinfo/definitions/US/Samoa.rb", "lib/tzinfo/definitions/UTC.rb", "lib/tzinfo/definitions/WET.rb", "lib/tzinfo/definitions/W__m__SU.rb", "lib/tzinfo/definitions/Zulu.rb", "lib/tzinfo/indexes/countries.rb", "lib/tzinfo/indexes/timezones.rb", "lib/tzinfo/info_timezone.rb", "lib/tzinfo/linked_timezone.rb", "lib/tzinfo/linked_timezone_info.rb", "lib/tzinfo/offset_rationals.rb", "lib/tzinfo/ruby_core_support.rb", "lib/tzinfo/timezone.rb", "lib/tzinfo/timezone_definition.rb", "lib/tzinfo/timezone_index_definition.rb", "lib/tzinfo/timezone_info.rb", "lib/tzinfo/timezone_offset_info.rb", "lib/tzinfo/timezone_period.rb", "lib/tzinfo/timezone_proxy.rb", "lib/tzinfo/timezone_transition_info.rb", "lib/tzinfo/time_or_datetime.rb", "lib/tzinfo/tzdataparser.rb", "lib/tzinfo.rb", "test/tc_country.rb", "test/tc_country_index_definition.rb", "test/tc_country_info.rb", "test/tc_country_timezone.rb", "test/tc_data_timezone.rb", "test/tc_data_timezone_info.rb", "test/tc_info_timezone.rb", "test/tc_linked_timezone.rb", "test/tc_linked_timezone_info.rb", "test/tc_offset_rationals.rb", "test/tc_ruby_core_support.rb", "test/tc_timezone.rb", "test/tc_timezone_definition.rb", "test/tc_timezone_index_definition.rb", "test/tc_timezone_info.rb", "test/tc_timezone_london.rb", "test/tc_timezone_melbourne.rb", "test/tc_timezone_new_york.rb", "test/tc_timezone_offset_info.rb", "test/tc_timezone_period.rb", "test/tc_timezone_proxy.rb", "test/tc_timezone_transition_info.rb", "test/tc_timezone_utc.rb", "test/tc_time_or_datetime.rb", "test/test_utils.rb", "test/ts_all.rb"]
  s.homepage = %q{http://tzinfo.rubyforge.org/}
  s.rdoc_options = ["--exclude", "definitions", "--exclude", "indexes"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{tzinfo}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Daylight-savings aware timezone library}
  s.test_files = ["test/tc_country.rb", "test/tc_country_index_definition.rb", "test/tc_country_info.rb", "test/tc_country_timezone.rb", "test/tc_data_timezone.rb", "test/tc_data_timezone_info.rb", "test/tc_info_timezone.rb", "test/tc_linked_timezone.rb", "test/tc_linked_timezone_info.rb", "test/tc_offset_rationals.rb", "test/tc_ruby_core_support.rb", "test/tc_timezone.rb", "test/tc_timezone_definition.rb", "test/tc_timezone_index_definition.rb", "test/tc_timezone_info.rb", "test/tc_timezone_london.rb", "test/tc_timezone_melbourne.rb", "test/tc_timezone_new_york.rb", "test/tc_timezone_offset_info.rb", "test/tc_timezone_period.rb", "test/tc_timezone_proxy.rb", "test/tc_timezone_transition_info.rb", "test/tc_timezone_utc.rb", "test/tc_time_or_datetime.rb", "test/test_utils.rb", "test/ts_all.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
