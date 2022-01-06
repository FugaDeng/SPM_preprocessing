function matlabbatch=funcSmooth(funcImgs,funcFrames,FWHM)

%-----------------------------------------------------------------------
% Job saved on 22-Nov-2021 14:13:14 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6906)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
spm_jobman('initcfg');

if length(funcFrames)==1
    funcFrames=1:funcFrames;
end

tmp=cell(length(funcFrames),1);
for j=1:length(funcFrames)
    tmp{j}=[funcImgs,',',num2str(funcFrames(j))];
end


matlabbatch{1}.spm.spatial.smooth.data = tmp;


matlabbatch{1}.spm.spatial.smooth.fwhm = FWHM;% [8 8 8];
matlabbatch{1}.spm.spatial.smooth.dtype = 0;
matlabbatch{1}.spm.spatial.smooth.im = 0;
matlabbatch{1}.spm.spatial.smooth.prefix = 's';
