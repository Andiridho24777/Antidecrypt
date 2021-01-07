function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function main()
Amenu = gg.choice({
      "🏡𝑶𝒏𝒆 𝑪𝒍𝒊𝒄𝒌 𝑳𝒐𝒃𝒃𝒚",
      "🎮𝑶𝒏𝒆 𝑪𝒍𝒊𝒄𝒌 𝑮𝒂𝒎𝒆",
      "🔚𝑬𝒙𝒊𝒕",
}, nil, (os.date("Farzhad | Fast Script价值 \n%d %B %Y %H:%M%p")))
if Amenu ==  1 then
A()
end
if Amenu == 2 then
B()
end
if Amenu == 3 then
C()
end
Pharao = -1
end

function A()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-309056968;-298841599;-309061065",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("-298841599",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(5)
gg.editAll("0",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Less Recoil价值")
end

function B()
qmnb = {
{["memory"] = 32},
{["name"] = "Headshot价值"},
{["value"] = 4740038608910024704, ["type"] = 32},
{["lv"] = 4752423507886342144, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1106509824, ["offset"] = 8, ["type"] = 32},
}
qmxg = {
{["value"] = 180, ["offset"] = 0, ["type"] = 16},
{["value"] = 180, ["offset"] = 4, ["type"] = 16},
{["value"] = 180, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("Headshot价值")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("900000,16", gg.TYPE_FLOAT)
gg.toast("Antenna价值")
gg.clearResults()
end

function C()
os.exit()
gg.toast("Exit")
end

while true do
  if gg.isVisible(true) then
    Pharao = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if Pharao == 1 then
    main()
   end
 end
