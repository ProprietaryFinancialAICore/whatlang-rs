require "pp"

trigrams = {
  spa: " de|os |de | la|la | y | a |es |ón |ión|rec|ere|der| co|e l|el |en |ien|cho|ent|ech|ció|aci|o a|a p| el|a l|al |as |e d| en|na |ona|s d|da |nte| to|ad |ene|con| pr| su|tod| se|ho |los| pe|per|ers| lo|o d| ti|cia|n d|cio| es|ida|res|a t|tie|ion|rso|te |do | in|son| re| li|to |dad|tad|e s|est|pro|que|men| po|a e|oda|nci| qu| un|ue |ne |n e|s y|lib|su | na|s e|nac|ia |e e|tra| pa|or |ado|a d|nes|ra |se |ual|a c|er |por|com|nal|rta|a s|ber| o |one|s p|dos|rá |sta|les|des|ibe|ser|era|ar |ert|ter| di|ale|l d|nto|hos|del|ica|a a|s n|n c|oci|imi|io |o e|re |y l|e c|ant|cci| as|las|par|ame| cu|ici|ara|enc|s t|ndi| so|o s|mie|tos|una|bre|dic|cla|s l|e a|l p|pre|ntr|o t|ial|y a|nid|n p|a y|man|omo|so |n l| al|ali|s a|no | ig|s s|e p|nta|uma|ten|gua|ade|y e|soc|mo | fu|igu|o p|n t|hum|d d|ran|ria|y d|ada|tiv|l e|cas| ca|vid|l t|s c|ido|das|dis|s i| hu|s o|nad|fun| ma|rac|nda|eli|sar|und| ac|uni|mbr|a u|die|e i|qui|a i| ha|lar| tr|odo|ca |tic|o y|cti|lid|ori|ndo|ari| me|ta |ind|esa|cua|un |ier|tal|esp|seg|ele|ons|ito|ont|iva|s h|d y|nos|ist|rse| le|cie|ide|edi|ecc|ios|l m|r e|med|tor|sti|n a|rim|uie|ple|tri|ibr|sus|lo |ect|pen|y c|an |e h|n s|ern|tar|l y|egu|gur|ura|int|ond|mat|l r|r a|isf|ote",
  eng: " th|the| an|he |nd |and|ion| of|of |tio| to|to |on | in|al |ati|igh|ght|rig| ri|or |ent|as |ed |is |ll |in | be|e r|ne |one|ver|all|s t|eve|t t| fr|s a| ha| re|ty |ery| or|d t| pr|ht | co| ev|e h|e a|ng |ts |his|ing|be |yon| sh|ce |ree|fre|ryo|n t|her|men|nat|sha|pro|nal|y a|has|es |for| hi|hal|f t|n a|n o|nt | pe|s o| fo|d i|nce|er |ons|res|e s|ect|ity|ly |l b|ry |e e|ers|e i|an |e o| de|cti|dom|edo|eed|hts|ter|ona|re | no| wh| a | un|d f| as|ny |l a|e p|ere| en| na| wi|nit|nte|d a|any|ted| di|ns |sta|th |per|ith|e t|st |e c|y t|om |soc| ar|ch |t o|d o|nti|s e|equ|ve |oci|man| fu|ote|oth|ess| al| ac|wit|ial| ma|uni| se|rea| so| on|lit|int|r t|y o|enc|thi|ual|t a| eq|tat|qua|ive| st|ali|e w|l o|are|f h|con|te |led| is|und|cia|e f|le | la|y i|uma|by | by|hum|f a|ic | hu|ave|ge |r a| wo|o a|ms |com| me|eas|s d|tec| li|n e|en |rat|tit|ple|whe|ate|o t|s r|t f|rot| ch|cie|dis|age|ary|o o|anc|eli|no | fa| su|son|inc|at |nda|hou|wor|t i|nde|rom|oms| ot|g t|eme|tle|iti|gni|s w|itl|duc|d w|whi|act|hic|aw |law| he|ich|min|imi|ort|o s|se |e b|ntr|tra|edu|oun|tan|e d|nst|l p|d n|ld |nta|s i|ble|n p| pu|n s| at|ily|rth|tho|ful|ssi|der|o e|cat|uca|unt|ien| ed|o p|h a|era|ind|pen|sec|n w|omm|r s",
  por: "os |de | de| a | e |o d|to |ão | di|ent|da |ito|em | co|eit|as |dir|es |ire|rei| se|ção|ade|a p|dad|e d|s d|men|nte|do |s e| pr| pe|dos| to| da|a a|o e| o |o a|ess|con|tod|que| qu|te |e a| do|al |res|ida|m d| in| ou|er |sso| na| re| po|a s| li|uma|cia|ar |pro|e e|a d| te|açã|a t| es| su|ou |ue |s p|tos|a e|des|ra |com|no |ame|ia |e p|tem|nto| pa|is |est|tra|ões|na |s o|oda|das|ser|soa|s n|pes|o p|s a|o s|e o| em| as| à |o o|ais|ber|ado|oa |o t|e s|man|sua|ua | no| os|a c|ter|çõe|erd|lib|rda|s s|nci|ibe|e n|ica|odo|so |nal|ntr|s t|hum|ura| ao|ona|ual| so|or |ma |sta|o c|a n|pre|ara|era|ons|e t|r a|par|o à| hu|ind|por|cio|ria|m a|s c| um|a l|gua|ran| en|ndi|o i|e c|raç|ion|nid|aci|ano|soc|e r|oci| ac|und|sen|nos|nsi|rec|ime|ali|int|um |per|nac| al|m o|r p| fu|ndo|ont|açõ| ig|igu|fun|nta| ma|uni|cçã|ere| ex|a i| me|ese|rio|l d|a o|s h|pel|ada|pri|ide|am |m p|pod|s f|ém |a f|io |ode|ca |ita|lid|tiv|e f|vid|r e|esp|nda|omo|e l|naç|o r|ant|a q|tad|lic|iva| fa|ver|s l|ial|cla|ngu|ing| ca|mo |der| vi|eli|ist|ta |se |ati|ios|ido|r o|eci|dis| un|e i|r d|ecç|o q|s i|qua|ênc|a m|seu|sti|nin|uer|rar|cas|aos|ens|gué|ias|sid|uém|tur|dam|sse|ao |ela|l e|for|tec|ote| pl|ena| tr|m c|tro| ni|ico|rot",
  ind: "an |ang| da|ng | pe|ak | ke| me|ata| se|dan|kan| di| be|hak|ber|per|ran|nga|yan|eng| ya| ha|asa|gan|men|ara|nya|n p|n d|n k|a d|tan| at|at |ora|ala|san| ba|ap |erh|n b|rha|ya | ma|g b|a s|pen|eba|as |aan|uk |ntu| or|eti|tas|aka|tia|ban|set| un|n s|ter|n y| te|k m|tuk|bas|iap|lam|beb|am | de|k a|keb|n m|i d|unt|ama|dal|ah |ika|dak|ebe|p o|sa |pun|mem|n h|end|den|ra |ela|ri |nda| sa|di |ma |a m|n t|k d|n a|ngg|tau|man|gar|eri|asi| ti|un |al |ada|um |a p|lak|ari|au | ne|neg|a b|ngs|ta |ole|leh|ert|ers|ida|k h|ana|gsa|dar|uka|tid|bat|sia|era|eh |dap|ila|dil|h d|atu|sam|ia |i m| in|lan|aha|uan|tu |ai |t d|a a|g d|har|sem|na |apa|ser|ena|kat|uat|erb|erl|mas|rta|ega|ung|nan|emp|n u|kum|l d|g s| hu|ka |ent|pat|mba|aga|nta|adi| su|eni|uku|n i|huk|ind|ar |rga|i s|aku|ndi|sua|ni |rus|han|si |car|nny| la|in |u d|ik |ua |lah|rik|usi|emb|ann|mer|ian|gga|lai|min|a u|lua|ema|emu|arg|dun|dip|a t|mat|aya|rbu|aru|erk|rka|ini|eka|a k|rak|kes|yat|iba|nas|rma|ern|ese|s p|nus| pu|anu|ina| ta|mel|mua|kel|k s|us |ndu|nak|da |sya|das|pem|lin|ut |yar|ami|upu|seo|aik|eor|iny|aup|tak|ipe|ing|tin| an|dik|uar|ili|g t|rse|sar|ant|g p|a n|aks|ain| ja|t p| um|g m|dir|ksa|umu|kep|mum|i k|eca|rat|m p|h p|aba|ses|m m",
  fra: " de|es |de |ion|nt |et |tio| et|ent| la|la |e d|on |ne |oit|e l|le | le|s d|e p|t d|ati|roi| dr|dro|it | à | co|té |ns |te |e s|men|re | to|con| l’|tou|que| qu|les| so|des|son| pe|ons| un|s l|s e| pr|ue | pa|e c|t l|ts |onn| au|e a|eme|e e| li|ont|ant|out|ute|t à|res|ers| sa|ce | a |tre|per|a d|cti|er |lib|ité| en|ux | re|en |rso|à l| ou| in|lle|un |nat|ou |nne|n d|une| d’| se|par|nte|us |ur |s s|ans|dan|a p|r l|pro|its|és |t p|ire|e t|s p|sa | dé|ond|é d|a l|nce|ert|aux|omm|nal|me | na| fo|iqu| ce|rté|ect|ale|ber|t a|s a| da|mme|ibe|san|e r| po|com|al |s c|qui|our|t e| ne|e n|ous|r d|ali|ter| di|fon|e o|au | ch|air|ui |ell| es|lit|s n|iss|éra|tes|soc|aut|oci|êtr|ien|int|du |est|été|tra|pou| pl|rat|ar |ran|rai|s o|ona|ain|cla|éga|anc|rs |eur|pri|n c|e m|s t|à u| do|ure|bre|ut | êt|age| ét|nsi|sur|ein|sen|ser|ndi|ens|ess|ntr|ir | ma|cia|n p|st |a c| du|l e| su|bli|ge |rés| ré|e q|ass|nda|peu|ée |l’a| te|a s|tat|il |tés|ais|u d|ine|ind|é e|qu’| ac|s i|n t|t c|n a|l’h|t q|soi|t s|cun|rit| ég|oir|’en|nta|hom| on|n e| mo|ie |ign|rel|nna|t i|l n| tr|ill|ple|s é|l’e|rec|a r|ote|sse|uni|idé|ive|s u|t ê|ins|act| fa|n s| vi|gal| as|lig|ssa|pré|leu|e f|lic|dis|ver| nu|ten|ssi|rot|tec|s m|abl",
  deu: "en |er |der| un|nd |und|ein|ung|cht| de|ich|sch|ng | ge|ie |che|ech| di|die|rec|gen|ine|eit| re|ch | da|n d|ver|hen| zu|t d| au|ht | ha|lic|it |ten|rei| be|in | ve| in| ei|nde|auf|den|ede|zu |n s|uf |fre|ne |ter|es | je|jed|n u| an|sei|and| fr|run|at | se|e u|das|hei|s r|hte|hat|nsc|nge|r h|as |ens| al|ere|lle|t a| we|n g|rde|nte|ese|men| od|ode|ner|g d|all|t u|ers|te |nen| so|d d|n a|ben|lei| gr| vo|wer|e a|ege|ion| st|ige|le |cha| me|haf|aft|n j|ren| er|erk|ent|bei| si|eih|ihe|kei|erd|tig|n i|on |lun|r d|len|gem|ies|gru|tli|unt|chu|ern|ges|end|e s|ft |st |ist|tio|ati| gl|sta|gun|mit|sen|n n| na|n z|ite| wi|r g|eic|e e|ei |lie|r s|n w|gle|mei|de |uch|em |chl|nat|rch|t w|des|n e|hre|ale|spr|d f|ach|sse|r e| sc|urc|r m|nie|e f|fen|e g|e d| ni|dur|dar|int| du|geh|ied|t s| mi|alt|her|hab|f g|sic|ste|taa|aat|he |ang|ruc|hli|tz |eme|abe|h a|n v|nun|geg|arf|rf |ehe|pru| is|erf|e m|ans|ndl|e b|tun|n o|d g|n r|r v|wie|ber|r a|arb|bes|t i|h d|r w|r b| ih|d s|igk|gke|nsp|dig|ema|ell|eru|n f|ins|rbe|ffe|esc|igu|ger|str|ken|e v|gew|han|ind|rt | ar|ieß|n h|rn |man|r i|hut|utz|d a|ls |ebe|von|lte|r o|rli|etz|tra|aus|det|hul|e i|one|nne|isc|son|sel|et |ohn|t g|sam| fa|rst|rkl|ser|iem|g v|t z|err",
  ita: " di|to | de|ion| in|la |e d|di |ne | e |zio|re |le |ni |ell|one|lla|rit|a d|o d|del|itt|iri|dir| co|ti |ess|ent| al|azi|tto|te |i d|i i|ere|tà | pr|ndi|e l|ale|o a|ind|e e|e i|gni|nte|con|i e|li |a s| un|men|ogn| ne|uo | og|idu|e a|ivi|duo|vid| es|tti| ha|div| li|a p|no |all|pro|za |ato|per|sse|ser| so|i s| la| su|e p| pe|ibe|na |a l| il|ber|e n|il |ali|lib|ha |che|in |o s|e s| qu|o e|ia |e c| ri|nza|ta |nto|he |oni|o i| o |sta|o c|nel| a |o p|naz|e o|so | po|o h|gli|i u|ond|i c|ers|ame|i p|lle|un |era|ri |ver|ro |el |una|a c| ch|ert|ua |i a|ssi|rtà|a e|ei |dis|ant| l |tat|a a|ona|ual| le|ità|are|ter| ad|nit| da|pri|dei|à e|cia| st| si|nal|est|tut|ist|com|uni| ed|ono| na|sua|al |si |anz| pa| re|raz|gua|ita|res|der|soc|man|o o|ad |i o|ese|que|enz|ed | se|io |ett|on | tu|dic|à d|sia|i r|rso|oci|rio|ari|qua|ial|pre|ich|rat|ien|tra|ani|uma|se |ll |eri|a n|o n| um|do |ara|a t|zza|er |tri|att|ico|pos|sci|i l|son|nda|par|e u|fon| fo|nti|uzi|str|utt|ati|sen|int|nes|iar| i |hia|n c|sti|chi|ann|ra | eg|egu|isp|bil|ont|a r| no|rop| me|opr|ost| ma|ues|ica|sso|tal|cie|sun|lit|ore|ina|ite|tan| ra|non|gio|d a|e r|dev|i m|l i|ezz|izi| cu|nno|rà |a i|tta|ria|lia|cos|ssu|dal|l p| as|ass|opo|ve |eve",
  tur: " ve| ha|ve |ler|lar|ir |in |hak| he|her|bir|er |an |arı|eri|ya | bi|ak |r h|eti|ın |iye|yet| ka|ası|ını| ol|tle|eya|kkı|ara|akk|etl|sın|esi|na |de |ek | ta|nda|ini| bu|ile|rın|rin|vey|ne |kla|e h|ine|ır |ere|ama|dır|n h| sa|ına|sin|e k|le | ge|mas|ınd|nın|ı v| va|lan|lma|erk|rke|nma|tin|rle| te|nin|akl|a v|da | de|let|ill|e m|ard|en |riy|aya|nı | hü| şa|e b|k v|kın|k h| me|mil|san| il|si |rdı|e d|dan|hür|var|ana|e a|kes|et |mes|şah|dir| mi|ret|rri| se|ola|ürr|irl|bu |mak| ma|mek|n e|kı |n v|n i|lik|lle| ed| hi|n b|a h| ba|nsa| iş|eli|kar| iç|ı h|ala|li |ulu|rak|evl|e i|ni |re |r ş|eme|etm|e t|ik |e s|a b|iş |n k|hai|nde|aiz| eş|izd|un |olm|hiç|zdi|ar |unm|ma | gö|ilm|lme|im |n t|tir|dil|mal|e g|i v| ko|lun|e e|mel|ket|ık |n s|ele|la |el |r v|ede|şit|ili|eşi|yla|a i| an|anı| et|rı |ahs| ya|sı |edi|siy|t v|i b|se |içi|çin|bul|ame| da|miş|may|tim|a k|tme|r b|ins|yan|nla|mle| di|eye|ger|ye |uğu|erd|din|ser| mü|mem|vle| ke|nam|ind|len|eke|es | ki|n m|it | in| ku|rşı|a s|arş| ay|eml|lek|oru|rme|kor|rde|i m| so|tür|al |lam|eni|nun| uy|ken|hsı|i i|a d|ri |dev|ün |a m|r a|mey|cak|ıyl|maz|e v|ece|ade|iç |şma|mse|te |tün|ims|kim|e y|şı |end|k g|ndi|alı| ce|lem|öğr|ütü|k i|r t| öğ|büt|anl| bü",
  pol: " pr|nie| i |ie |pra| po|ani|raw|ia |nia|wie|go | do|ch |ego|iek|owi| ni|ści|ci |a p|do |awo| cz|ośc|ych| ma|ek |rze| na|prz| w |wo |ej | za|noś|czł|zło|eni|wa | je|łow|i p|wol|oln| lu|rod| ka| wo|lno|wsz|y c|ma |ny |każ|ażd|o d|stw|owa|dy |żdy| wy|rzy|sta|ecz| sw|dzi|i w|e p|czn|twa|na |zys|ów |szy|ub |lub|a w|est|kie|k m|wan| sp|ają| ws|e w|pow|pos|nyc|rac|spo|ać |a i|cze|sze|neg|yst|jak| ja|o p|pod|acj|ne |ńst|aro|mi | z |i i|nar| ko|obo|awa| ro|i n|jąc|zec|zne|zan|dow| ró|iej|zy |zen|nic|ony|aw |i z|czy|no |nej|o s|rów|odn|cy |ówn|odz|o w|o z|jeg|edn|o o|aki|mie|ien|kol| in|zie|bez|ami|eńs|owo|dno| ob| or| st|a s|ni |orz|o u|ym |stę|tęp|łec|jed|i k| os|w c|lwi|ez |olw|ołe|poł|cji|y w|o n|wia| be|któ|a j|zna|zyn|owe|wob|ka |wyc|owy|ji | od|aln|inn|jes|icz|h p|i s|się|a o|ją |ost|kra|st |sza|swo|war|cza|roz|y s|raz|nik|ara|ora|lud|i o|a z|zes| kr|ran|ows|ech|w p|dów|ą p|pop|a n|tki|stk|gan|zon|raj|e o|iec|i l| si|że |eka| kt| de|em |tór|ię |wni|lni|ejs|ini|odo|dni|ełn|kow|peł|a d|ron|dek|pie|udz|bod|nan|h i|dst|ieg|taw|z p|z w|zeń|god|iu |ano|lar| to|y z|a k|ale|kla|trz|zaw|ich|e i|ier|iko|dzy|chn|w z|by |ków|adz|ekl|ywa|ju |och|kor|sob|ocz|oso|u p|du |tyc|tan|ędz| mi|e s| ta|ki ",
  epo: "aj | la|la |kaj| ka|oj | de|on |de |raj| ra|iu |ajt|as |o k| ĉi|e l|j k| li| pr|eco|aŭ |ĉiu|jn |ia |jto|est| es| al|an | ki|pro|io | ko|en |n k|kon| ti|co |j p|o d| po|ibe| aŭ|ro |tas|lib|ber|aci|toj| en|a p| ne|cio|ere|ta | in|to |do |o e|j l|n a|j d| se|a k|j r|ala|j e|taj| re|rec|iuj|kiu| pe|o a|ita|ajn|ado|n d|sta|nac|a a|nta|lia|ekt|eni|iaj|ter|uj |per|ton|int| si|cia| ha|stu|a l|je | je|al |o ĉ|n p|jta|tu | ri|vas|sen|hav|hom| di| ho|nte|a e|ali|ent| so|nec|tra|a s|ava|por|a r| na|igi|tiu|sia|o p|n l|ega|or | aj|soc|j ĉ|s l|oci|no | pl|j n|kto|evi|s r|j s|ojn|laj|u a|re | eg|j a|gal|ers|ke |pre|igo|er |lan|n j|pri| ku|era|ian|rim| fa|e s| ju|e a|ika|ata|ntr|el |is |u h|li |ioj|don|ont|tat|ons| el| su|go |un | ke|ebl|bla|n s|oma|ĉi |raŭ|kla|u r|ne |ili|iĝo|o t|s e|tek|men|nen|j i|nda|con|a d|ena|cev|moj|ice|ric|ple|son|art|a h|o r|res| un|u s|coj|e p|ĝi |for|ato|ren|ara|ame|tan| pu|ote|rot| ma|vi |j f|len|dis|ive|ant|n r| vi|ami|iĝi|sti|ĝo |r l|n ĉ|u l| ag|erv|u e|unu|gno| ce| me|niu|iel|duk|ern| ŝt|laŭ|o n|lab|olo|abo|tio|bor|ŝta|imi| ed|lo |kun|edu|kom|dev|enc|ndo|lig|e e|a f|tig|i e| kr| pa|na |n i|kad|and|e d|mal|ono|dek|pol|oro|eri|edo|e k|rso|ti |rac|ion|loj|j h|pli|j m",
}

MAX_DISTANCE = 300


PROFILES = {}
trigrams.each do |key, val|
  PROFILES[key] = val.split("|")
end


def build_text_profile(text)
  text = text.downcase
  count = text.size - 2
  hash = Hash.new(0)
  count.times do |i|
    trigram = text[i] + text[i+1] + text[i+2]
    hash[trigram] += 1
  end

  hash.to_a.sort {|a, b| b[1] <=> a[1] }.map {|a| a[0] }
end

def detect(text)
  puts text
  result = {}
  text_profile = build_text_profile(text)
  PROFILES.each do |lang, lang_profile|
    result[lang] = distance(lang_profile, text_profile)
  end
  pp  result.to_a.sort{|a, b| a[1] <=> b[1]}
  puts
end

def distance(lang_profile, text_profile)
  dist = 0
  lang_profile.each_with_index do |trigram, index|
    pos = text_profile.index(trigram)
    if pos
      (index - pos).abs
    else
      dist += MAX_DISTANCE
    end
  end
  dist
end

#detect("Hello world how are you ok today hello again ok ok")
#detect("das ist sehr schönAl mi tre placxas vidi vindass du hier bist")
#detect("Nur la amo gravas")
#detect("ĉu vi povas antaŭvidi tion")

trigrams.each do |key, str|
  vals = str.split("|")
  print <<-STR
const PROFILE_#{key.to_s.upcase} : &'static [&'static str] = &#{vals.inspect};
STR
end
