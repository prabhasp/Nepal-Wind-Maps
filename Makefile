data: data/Wind_0ewam.tif data/Wind_0uwam.tif data/Wind_50ewrm.tif data/Wind_50uwrm.tif
data/Wind_0ewam.tif: data/AtlasDataNEP05_1_1_uni_z0.5.wam.e_m.ASC
	cd data && gdal_translate -a_srs EPSG:32645 AtlasDataNEP05_1_1_uni_z0.5.wam.e_m.ASC Wind_0ewam.tif
data/Wind_0uwam.tif: data/AtlasDataNEP05_1_1_uni_z0.5.wam.u_m.ASC
	cd data && gdal_translate -a_srs EPSG:32645 AtlasDataNEP05_1_1_uni_z0.5.wam.u_m.ASC Wind_0uwam.tif
data/Wind_50ewrm.tif: data/AtlasDataNEP05_1_1_uni_z50.5.wrm.e_m.ASC
	cd data && gdal_translate -a_srs EPSG:32645 AtlasDataNEP05_1_1_uni_z50.5.wrm.e_m.ASC Wind_0ewrm.tif
data/Wind_50uwrm.tif: data/AtlasDataNEP05_1_1_uni_z50.5.wrm.u_m.ASC
	cd data && gdal_translate -a_srs EPSG:32645 AtlasDataNEP05_1_1_uni_z50.5.wrm.u_m.ASC Wind_0uwrm.tif
download:
	wget http://en.openei.org/datasets/files/614/pub/NepalRisoeDTUData_266.zip
	unzip NepalRisoeDTUData_266.zip
	mv Nepal_Swera_RisoeDTU_Data/* data/
	rm NepalRisoeDTUData_266.zip
	rmdir Nepal_Swera_RisoeDTU_Data
