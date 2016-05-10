library(ggplot2)
library(RColorBrewer)

setwd("/Users/hachepunto/Google Drive/bioinfotmatics_INMEGEN/DILI/PubMed_mining")
temp = list.files(pattern="*_countries.tsv")
temp <- temp[-4] # empty file

list2env(
  lapply(setNames(temp, make.names(gsub("*_countries.tsv$", "", temp))), header = FALSE, sep = ",", 
         read.delim), envir = .GlobalEnv)


write.table(ls()[-80], file = "../plots/countries_names.tsv", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)


AA <- cbind(AA, c(rep("AA",length(AA[[1]]))))
AA_Hepatotoxicity <- cbind(AA_Hepatotoxicity, c(rep("AA_Hepatotoxicity",length(AA_Hepatotoxicity[[1]]))))
ADP <- cbind(ADP, c(rep("ADP",length(ADP[[1]]))))
# ADP_Hepatotoxicity <- cbind(ADP_Hepatotoxicity, c(rep("ADP_Hepatotoxicity",length(ADP_Hepatotoxicity[[1]]))))
AM <- cbind(AM, c(rep("AM",length(AM[[1]]))))
AM_Hepatotoxicity <- cbind(AM_Hepatotoxicity, c(rep("AM_Hepatotoxicity",length(AM_Hepatotoxicity[[1]]))))
APAP <- cbind(APAP, c(rep("APAP",length(APAP[[1]]))))
APAP_Hepatotoxicity <- cbind(APAP_Hepatotoxicity, c(rep("APAP_Hepatotoxicity",length(APAP_Hepatotoxicity[[1]]))))
APL <- cbind(APL, c(rep("APL",length(APL[[1]]))))
APL_Hepatotoxicity <- cbind(APL_Hepatotoxicity, c(rep("APL_Hepatotoxicity",length(APL_Hepatotoxicity[[1]]))))
ASA <- cbind(ASA, c(rep("ASA",length(ASA[[1]]))))
ASA_Hepatotoxicity <- cbind(ASA_Hepatotoxicity, c(rep("ASA_Hepatotoxicity",length(ASA_Hepatotoxicity[[1]]))))
AZP <- cbind(AZP, c(rep("AZP",length(AZP[[1]]))))
AZP_Hepatotoxicity <- cbind(AZP_Hepatotoxicity, c(rep("AZP_Hepatotoxicity",length(AZP_Hepatotoxicity[[1]]))))
BBr <- cbind(BBr, c(rep("BBr",length(BBr[[1]]))))
BBr_Hepatotoxicity <- cbind(BBr_Hepatotoxicity, c(rep("BBr_Hepatotoxicity",length(BBr_Hepatotoxicity[[1]]))))
BBZ <- cbind(BBZ, c(rep("BBZ",length(BBZ[[1]]))))
BBZ_Hepatotoxicity <- cbind(BBZ_Hepatotoxicity, c(rep("BBZ_Hepatotoxicity",length(BBZ_Hepatotoxicity[[1]]))))
CBZ <- cbind(CBZ, c(rep("CBZ",length(CBZ[[1]]))))
CBZ_Hepatotoxicity <- cbind(CBZ_Hepatotoxicity, c(rep("CBZ_Hepatotoxicity",length(CBZ_Hepatotoxicity[[1]]))))
CFB <- cbind(CFB, c(rep("CFB",length(CFB[[1]]))))
CFB_Hepatotoxicity <- cbind(CFB_Hepatotoxicity, c(rep("CFB_Hepatotoxicity",length(CFB_Hepatotoxicity[[1]]))))
CIM <- cbind(CIM, c(rep("CIM",length(CIM[[1]]))))
CIM_Hepatotoxicity <- cbind(CIM_Hepatotoxicity, c(rep("CIM_Hepatotoxicity",length(CIM_Hepatotoxicity[[1]]))))
CMA <- cbind(CMA, c(rep("CMA",length(CMA[[1]]))))
CMA_Hepatotoxicity <- cbind(CMA_Hepatotoxicity, c(rep("CMA_Hepatotoxicity",length(CMA_Hepatotoxicity[[1]]))))
CPA <- cbind(CPA, c(rep("CPA",length(CPA[[1]]))))
CPA_Hepatotoxicity <- cbind(CPA_Hepatotoxicity, c(rep("CPA_Hepatotoxicity",length(CPA_Hepatotoxicity[[1]]))))
CPZ <- cbind(CPZ, c(rep("CPZ",length(CPZ[[1]]))))
CPZ_Hepatotoxicity <- cbind(CPZ_Hepatotoxicity, c(rep("CPZ_Hepatotoxicity",length(CPZ_Hepatotoxicity[[1]]))))
DZP <- cbind(DZP, c(rep("DZP",length(DZP[[1]]))))
DZP_Hepatotoxicity <- cbind(DZP_Hepatotoxicity, c(rep("DZP_Hepatotoxicity",length(DZP_Hepatotoxicity[[1]]))))
FP <- cbind(FP, c(rep("FP",length(FP[[1]]))))
FP_Hepatotoxicity <- cbind(FP_Hepatotoxicity, c(rep("FP_Hepatotoxicity",length(FP_Hepatotoxicity[[1]]))))
FT <- cbind(FT, c(rep("FT",length(FT[[1]]))))
FT_Hepatotoxicity <- cbind(FT_Hepatotoxicity, c(rep("FT_Hepatotoxicity",length(FT_Hepatotoxicity[[1]]))))
GBC <- cbind(GBC, c(rep("GBC",length(GBC[[1]]))))
GBC_Hepatotoxicity <- cbind(GBC_Hepatotoxicity, c(rep("GBC_Hepatotoxicity",length(GBC_Hepatotoxicity[[1]]))))
GF <- cbind(GF, c(rep("GF",length(GF[[1]]))))
GF_Hepatotoxicity <- cbind(GF_Hepatotoxicity, c(rep("GF_Hepatotoxicity",length(GF_Hepatotoxicity[[1]]))))
GFZ <- cbind(GFZ, c(rep("GFZ",length(GFZ[[1]]))))
GFZ_Hepatotoxicity <- cbind(GFZ_Hepatotoxicity, c(rep("GFZ_Hepatotoxicity",length(GFZ_Hepatotoxicity[[1]]))))
HCB <- cbind(HCB, c(rep("HCB",length(HCB[[1]]))))
HCB_Hepatotoxicity <- cbind(HCB_Hepatotoxicity, c(rep("HCB_Hepatotoxicity",length(HCB_Hepatotoxicity[[1]]))))
HPL <- cbind(HPL, c(rep("HPL",length(HPL[[1]]))))
HPL_Hepatotoxicity <- cbind(HPL_Hepatotoxicity, c(rep("HPL_Hepatotoxicity",length(HPL_Hepatotoxicity[[1]]))))
IM <- cbind(IM, c(rep("IM",length(IM[[1]]))))
IM_Hepatotoxicity <- cbind(IM_Hepatotoxicity, c(rep("IM_Hepatotoxicity",length(IM_Hepatotoxicity[[1]]))))
KC <- cbind(KC, c(rep("KC",length(KC[[1]]))))
KC_Hepatotoxicity <- cbind(KC_Hepatotoxicity, c(rep("KC_Hepatotoxicity",length(KC_Hepatotoxicity[[1]]))))
LBT <- cbind(LBT, c(rep("LBT",length(LBT[[1]]))))
LBT_Hepatotoxicity <- cbind(LBT_Hepatotoxicity, c(rep("LBT_Hepatotoxicity",length(LBT_Hepatotoxicity[[1]]))))
LS <- cbind(LS, c(rep("LS",length(LS[[1]]))))
LS_Hepatotoxicity <- cbind(LS_Hepatotoxicity, c(rep("LS_Hepatotoxicity",length(LS_Hepatotoxicity[[1]]))))
MP <- cbind(MP, c(rep("MP",length(MP[[1]]))))
MP_Hepatotoxicity <- cbind(MP_Hepatotoxicity, c(rep("MP_Hepatotoxicity",length(MP_Hepatotoxicity[[1]]))))
MTS <- cbind(MTS, c(rep("MTS",length(MTS[[1]]))))
MTS_Hepatotoxicity <- cbind(MTS_Hepatotoxicity, c(rep("MTS_Hepatotoxicity",length(MTS_Hepatotoxicity[[1]]))))
NFT <- cbind(NFT, c(rep("NFT",length(NFT[[1]]))))
NFT_Hepatotoxicity <- cbind(NFT_Hepatotoxicity, c(rep("NFT_Hepatotoxicity",length(NFT_Hepatotoxicity[[1]]))))
OPZ <- cbind(OPZ, c(rep("OPZ",length(OPZ[[1]]))))
OPZ_Hepatotoxicity <- cbind(OPZ_Hepatotoxicity, c(rep("OPZ_Hepatotoxicity",length(OPZ_Hepatotoxicity[[1]]))))
PB <- cbind(PB, c(rep("PB",length(PB[[1]]))))
PB_Hepatotoxicity <- cbind(PB_Hepatotoxicity, c(rep("PB_Hepatotoxicity",length(PB_Hepatotoxicity[[1]]))))
PH <- cbind(PH, c(rep("PH",length(PH[[1]]))))
PH_Hepatotoxicity <- cbind(PH_Hepatotoxicity, c(rep("PH_Hepatotoxicity",length(PH_Hepatotoxicity[[1]]))))
PhB <- cbind(PhB, c(rep("PhB",length(PhB[[1]]))))
PhB_Hepatotoxicity <- cbind(PhB_Hepatotoxicity, c(rep("PhB_Hepatotoxicity",length(PhB_Hepatotoxicity[[1]]))))
PHE <- cbind(PHE, c(rep("PHE",length(PHE[[1]]))))
PHE_Hepatotoxicity <- cbind(PHE_Hepatotoxicity, c(rep("PHE_Hepatotoxicity",length(PHE_Hepatotoxicity[[1]]))))
PTU <- cbind(PTU, c(rep("PTU",length(PTU[[1]]))))
PTU_Hepatotoxicity <- cbind(PTU_Hepatotoxicity, c(rep("PTU_Hepatotoxicity",length(PTU_Hepatotoxicity[[1]]))))
RIF <- cbind(RIF, c(rep("RIF",length(RIF[[1]]))))
RIF_Hepatotoxicity <- cbind(RIF_Hepatotoxicity, c(rep("RIF_Hepatotoxicity",length(RIF_Hepatotoxicity[[1]]))))
SS <- cbind(SS, c(rep("SS",length(SS[[1]]))))
SS_Hepatotoxicity <- cbind(SS_Hepatotoxicity, c(rep("SS_Hepatotoxicity",length(SS_Hepatotoxicity[[1]]))))
TAA <- cbind(TAA, c(rep("TAA",length(TAA[[1]]))))
TAA_Hepatotoxicity <- cbind(TAA_Hepatotoxicity, c(rep("TAA_Hepatotoxicity",length(TAA_Hepatotoxicity[[1]]))))
TC <- cbind(TC, c(rep("TC",length(TC[[1]]))))
TC_Hepatotoxicity <- cbind(TC_Hepatotoxicity, c(rep("TC_Hepatotoxicity",length(TC_Hepatotoxicity[[1]]))))
TRZ <- cbind(TRZ, c(rep("TRZ",length(TRZ[[1]]))))
TRZ_Hepatotoxicity <- cbind(TRZ_Hepatotoxicity, c(rep("TRZ_Hepatotoxicity",length(TRZ_Hepatotoxicity[[1]]))))
WY <- cbind(WY, c(rep("WY",length(WY[[1]]))))
WY_Hepatotoxicity <- cbind(WY_Hepatotoxicity, c(rep("WY_Hepatotoxicity",length(WY_Hepatotoxicity[[1]]))))

nombres <- c("country", "data", "drug")

names(AA) <- nombres 
names(AA_Hepatotoxicity) <- nombres 
names(ADP) <- nombres 
#names(ADP_Hepatotoxicity) <- nombres 
names(AM) <- nombres 
names(AM_Hepatotoxicity) <- nombres 
names(APAP) <- nombres 
names(APAP_Hepatotoxicity) <- nombres 
names(APL) <- nombres 
names(APL_Hepatotoxicity) <- nombres 
names(ASA) <- nombres 
names(ASA_Hepatotoxicity) <- nombres 
names(AZP) <- nombres 
names(AZP_Hepatotoxicity) <- nombres 
names(BBr) <- nombres 
names(BBr_Hepatotoxicity) <- nombres 
names(BBZ) <- nombres 
names(BBZ_Hepatotoxicity) <- nombres 
names(CBZ) <- nombres 
names(CBZ_Hepatotoxicity) <- nombres 
names(CFB) <- nombres 
names(CFB_Hepatotoxicity) <- nombres 
names(CIM) <- nombres 
names(CIM_Hepatotoxicity) <- nombres 
names(CMA) <- nombres 
names(CMA_Hepatotoxicity) <- nombres 
names(CPA) <- nombres 
names(CPA_Hepatotoxicity) <- nombres 
names(CPZ) <- nombres 
names(CPZ_Hepatotoxicity) <- nombres 
names(DZP) <- nombres 
names(DZP_Hepatotoxicity) <- nombres 
names(FP) <- nombres 
names(FP_Hepatotoxicity) <- nombres 
names(FT) <- nombres 
names(FT_Hepatotoxicity) <- nombres 
names(GBC) <- nombres 
names(GBC_Hepatotoxicity) <- nombres 
names(GF) <- nombres 
names(GF_Hepatotoxicity) <- nombres 
names(GFZ) <- nombres 
names(GFZ_Hepatotoxicity) <- nombres 
names(HCB) <- nombres 
names(HCB_Hepatotoxicity) <- nombres 
names(HPL) <- nombres 
names(HPL_Hepatotoxicity) <- nombres 
names(IM) <- nombres 
names(IM_Hepatotoxicity) <- nombres 
names(KC) <- nombres 
names(KC_Hepatotoxicity) <- nombres 
names(LBT) <- nombres 
names(LBT_Hepatotoxicity) <- nombres 
names(LS) <- nombres 
names(LS_Hepatotoxicity) <- nombres 
names(MP) <- nombres 
names(MP_Hepatotoxicity) <- nombres 
names(MTS) <- nombres 
names(MTS_Hepatotoxicity) <- nombres 
names(NFT) <- nombres 
names(NFT_Hepatotoxicity) <- nombres 
names(OPZ) <- nombres 
names(OPZ_Hepatotoxicity) <- nombres 
names(PB) <- nombres 
names(PB_Hepatotoxicity) <- nombres 
names(PH) <- nombres 
names(PH_Hepatotoxicity) <- nombres 
names(PhB) <- nombres 
names(PhB_Hepatotoxicity) <- nombres 
names(PHE) <- nombres 
names(PHE_Hepatotoxicity) <- nombres 
names(PTU) <- nombres 
names(PTU_Hepatotoxicity) <- nombres 
names(RIF) <- nombres 
names(RIF_Hepatotoxicity) <- nombres 
names(SS) <- nombres 
names(SS_Hepatotoxicity) <- nombres 
names(TAA) <- nombres 
names(TAA_Hepatotoxicity) <- nombres 
names(TC) <- nombres 
names(TC_Hepatotoxicity) <- nombres 
names(TRZ) <- nombres 
names(TRZ_Hepatotoxicity) <- nombres 
names(WY) <- nombres 
names(WY_Hepatotoxicity) <- nombres 

NoHep <- rbind(AA, ADP, AM, APAP, APL, ASA, AZP, BBr, BBZ, CBZ, CFB, CIM, CMA, CPA, CPZ, DZP, FP, FT, GBC, GF, GFZ, HCB, HPL, IM, KC, LBT, LS, MP, MTS, NFT, OPZ, PB, PH, PhB, PHE, PTU, RIF, SS, TAA, TC, TRZ, WY)

Hep <- rbind(AA_Hepatotoxicity, AM_Hepatotoxicity, APAP_Hepatotoxicity, APL_Hepatotoxicity, ASA_Hepatotoxicity, AZP_Hepatotoxicity, BBr_Hepatotoxicity, BBZ_Hepatotoxicity, CBZ_Hepatotoxicity, CFB_Hepatotoxicity, CIM_Hepatotoxicity, CMA_Hepatotoxicity, CPA_Hepatotoxicity, CPZ_Hepatotoxicity, DZP_Hepatotoxicity, FP_Hepatotoxicity, FT_Hepatotoxicity, GBC_Hepatotoxicity, GF_Hepatotoxicity, GFZ_Hepatotoxicity, HCB_Hepatotoxicity, HPL_Hepatotoxicity, IM_Hepatotoxicity, KC_Hepatotoxicity, LBT_Hepatotoxicity, LS_Hepatotoxicity, MP_Hepatotoxicity, MTS_Hepatotoxicity, NFT_Hepatotoxicity, OPZ_Hepatotoxicity, PB_Hepatotoxicity, PH_Hepatotoxicity, PhB_Hepatotoxicity, PHE_Hepatotoxicity, PTU_Hepatotoxicity, RIF_Hepatotoxicity, SS_Hepatotoxicity, TAA_Hepatotoxicity, TC_Hepatotoxicity, TRZ_Hepatotoxicity, WY_Hepatotoxicity)

hp <- ggplot(Hep, aes(x = country, y = data, fill= drug), color = drug) +
	geom_bar(stat = "identity") +
	coord_flip() +
	guides(fill=guide_legend(ncol=1))

ggsave("../plots/Count_Hep_byCountry.pdf", plot = hp)

nhp <- ggplot(NoHep, aes(x = country, y = data, fill= drug), color = drug) +
	geom_bar(stat = "identity") +
	theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
	guides(fill=guide_legend(ncol=1))

ggsave("../plots/Count_NoHep_byCountry.pdf", plot = nhp)

colourCount = length(unique(Hep$country))
getPalette = colorRampPalette(brewer.pal(9, "Set1"))


hp <- ggplot(Hep, aes(x = drug, y = data, fill= country), color = country) +
	scale_fill_manual(values = getPalette(colourCount)) +
	geom_bar(stat = "identity") +
	coord_flip() +
	theme(legend.position="bottom", axis.text.x = element_text(angle = 90, hjust = 1)) +
	guides(fill=guide_legend(nrow=5))

ggsave("../plots/Count_Hep_byDrug.pdf", plot = hp)

nhp <- ggplot(NoHep, aes(x = drug, y = data, fill= country), color = country) +
	geom_bar(stat = "identity") +
	theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
	guides(fill=guide_legend(ncol=10))

ggsave("../plots/Count_NoHep_byDrug.pdf", plot = nhp)

