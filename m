Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBT7UUOEAMGQEGYPJ4TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D443DE814
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 10:11:59 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id z22-20020a2eb5360000b029019658008ea0sf3891878ljm.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 01:11:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627978319; cv=pass;
        d=google.com; s=arc-20160816;
        b=p+JNQtti7zOe4m5QcW2hLRipuQO6LJQGdNfStFcuBsN0UaYEy2V34RvES9eknj4M/3
         Dg8S7Y9ivq9MCu9F54WRY39MrcUDz8yqwdaICOxWsDlumZTqixiCHe1ytYr560S/F6ga
         yAFl6HlqgMkgMq5sZQajMJG9CZaL+AZ5GAqcOG6KlS0FOIg+jBK+jERTOsVc/l/EVsf9
         toWTb2sSzVz5U8Aa0llquayDXjvzYxgYsX8450WMv97lWD6KdGQFGMRjr8YG97A++QCl
         Kmb1+O1xHSAzzjvqeRz0mgIJQOhUaKlsjWh6FyLKiiwwSeWHy/R3VNGX12sYGl/Q1uL0
         qopw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=AYaX3LChMGPb8EYTGpLOIrWGO5qrFcHztnPETjbjhkw=;
        b=dF22nRUBBFCAxzA412Wk2pmheCmlF4dz6PxgzJQHI621Tbkn8ijVOmvuoGs6uNQKby
         5/9T3rsiaNJxuiVueH8sOkigq5SUgAZnEYC65M6pN7ETP6sUmNXiB7oSPWxjl+fnTqvu
         l0UZOm02IzBPajljiuNnvs+tRciBH11I2mQftBD9cHfPiazBgcvDCdXl6b0M7QgNREnn
         VwdgACvE4MshM51U7onQccu2asGLwbN+EXwDIaNEBqGtrfgd7UqzvoQjPQXW19/MitFg
         1dGKd+7q2uKLmf+/lGhrfKY8A+fTcrtrk3ta4F6Plng20dOndPWF/lw3fXxnWol02qEZ
         6o2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="sbxHR/IF";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AYaX3LChMGPb8EYTGpLOIrWGO5qrFcHztnPETjbjhkw=;
        b=CdCNcYshIN+yt0JUv23myIeB0ZRV//Ie4yg8Z+sk0IbYRdCVTQsWWH8AVlM7/OHM7/
         KZ8XsJbTvh+8Gh9rd+0Tqn5KMYpSP5J1muqPNVBia3l9g9bdCP2spMvlQEOTPSE5r9ta
         JxacS0Jcv0maoxOOe/m9AX467Z5jDXR/WaSqR2VOvITyDRgRCz04bHSalQKfcwO/8vuI
         AiRG911XQ6bB9SkRiMayl9oGhvoXPU70o5+imCBfF64fitex7Qbw9kfwxpFgru5uZAf4
         TP3FORgDwpVzvEz8kcQnUKpYC2i9rgzUGH5IoZnuN+F6m+8Y8Q4TyOcxXD5eSKssP16o
         b9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AYaX3LChMGPb8EYTGpLOIrWGO5qrFcHztnPETjbjhkw=;
        b=S6ATuxGYNyUo2LLYGZwA+JFpMCQRpI6wRL41byI4kejNKdVm4Fe5vDlc/SEdZtuqrb
         PTdzDAxy/YW03X0odEOzknBp+dY6QETo6hgB/+yiBentM+fSuo3IMe/hFL6HYoco+ZCz
         yup6AYz/NAqptTH9KQwU5DlPUZPNPZ+sPvrO+fs/rsE5UFkSViYIppWLDo5Zj7yVxBnS
         37VeQsNpCaKKr27A6tXkuxe/Gk7uIRPqlR1/dQAhvbELE3jXSX7L53eC/+OaN5pfM58B
         1oXXvMRTNqWAsmT2Z3s4q3PnhkFXW2fdwMFnb6c1Kk37r1gItrxgJ3GLGUI8tbgTeEAp
         I1tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Edi1R01sDquFAy4vL/rdEq1GhglYS/Z4YzCvm9oVRzSiLtdfa
	PUeFhsKrmC8VToaYKa9OyKY=
X-Google-Smtp-Source: ABdhPJxOtVlUusFsiXNJj/kxKPDcStKt+W5cqTDHaiOncA7/EgrMQcgeGiuCAbbbL7XNyXnKALyWVQ==
X-Received: by 2002:a2e:350d:: with SMTP id z13mr13874877ljz.10.1627978319344;
        Tue, 03 Aug 2021 01:11:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5395:: with SMTP id g21ls894420lfh.1.gmail; Tue, 03 Aug
 2021 01:11:58 -0700 (PDT)
X-Received: by 2002:a05:6512:3b11:: with SMTP id f17mr15700054lfv.272.1627978318200;
        Tue, 03 Aug 2021 01:11:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627978318; cv=none;
        d=google.com; s=arc-20160816;
        b=UhxbMeHCy8MA7CSAsjnrb6In9NbNr+T/sEWV+gyFZHEWNOfGxBetlqr6kSIEsn8zXR
         uFg0MsIlzI6PkDzgzoxq7aKsRGd38/sECAiBf2GTq7u5PwmOG3lfBmgQ/9bfoAJ1gv03
         JNz3xl/Ij81FVmbkJxBSBR1eXh3YprBy0bh0AYw1mCR2/wEHk9x5A8Lrc04zTJfakoZy
         fN10HjPIsBuNDGKF7Y6xNFdb9UNGe96DYy+lbSq0ESD1EqLWHxydFuuRk3SH9SQhrvWp
         GbDKKnccaKORtu7J2cdi5vvbHqmxVO8QBN1jHX9hdYANf8TBJoEy5z5w52xwbYvgUNKd
         Ox5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=J0b3YTf09v70kvv6FBWOhpkT1AxEgbfE4YIgbr9clY8=;
        b=qf+J2Seyb8AUVttdnSwNL9w1STNTpAH4cs0niOGtF9cdscsheKH/v0JHPbZeAR+LTf
         e0w7kDCh1Xaa83hn4uJrcVS63Y1u4CtfV+1LHj3zFByoM03KE4HbvJoOa0jJWzXrYls8
         /eyNFjcy4GhcXgCB/l0lKt02mVviIx8o/fKjM+p2pUZi1L9PVtesLObgMNbYR5p9bcmH
         V0edMB6Q95nl2R4CnPnb/WrapnWZKFZUyn+jf8msEn6I/IPNs0/BFOZ9Kx/qI34HjI+R
         uxVAOAygwRxrMizpiOK75kAli/ebimKryLbPypQ0Zg7LRaveW3Kf7BtobjR6HUDmFrwx
         UrmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="sbxHR/IF";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id x20si728786ljh.4.2021.08.03.01.11.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 01:11:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Received: by mail-wm1-x329.google.com with SMTP id x17so5673791wmc.5
        for <clang-built-linux@googlegroups.com>; Tue, 03 Aug 2021 01:11:58 -0700 (PDT)
X-Received: by 2002:a05:600c:a08:: with SMTP id z8mr20584558wmp.52.1627978317518;
        Tue, 03 Aug 2021 01:11:57 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id n3sm6018552wmi.0.2021.08.03.01.11.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 01:11:57 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 3 Aug 2021 08:11:56 +0000 (UTC)
To: tcwg-validation@linaro.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <2123351224.1382.1627978317123@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 30 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1381_1371330008.1627978316708"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="sbxHR/IF";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::329
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

------=_Part_1381_1371330008.1627978316708
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
Author: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Thu Jul 29 12:40:19 2021 +0200

    nfc: fdp: constify several pointers
    
    Several functions do not modify pointed data so arguments and local
    variables can be const for correctness and safety.  This allows also
    making file-scope nci_core_get_config_otp_ram_version array const.
    
    Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>
</cut>

Results regressed to (for first_bad == 3d463dd5023b5a58b3c37207d65eeb5acbac2be3)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
21699
# First few build errors in logs:
# 00:02:22 drivers/nfc/fdp/fdp.c:116:60: error: passing 'const char *' to parameter of type '__u8 *' (aka 'unsigned char *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
# 00:02:22 make[3]: *** [drivers/nfc/fdp/fdp.o] Error 1
# 00:02:23 make[2]: *** [drivers/nfc/fdp] Error 2
# 00:02:45 make[1]: *** [drivers/nfc] Error 2
# 00:05:31 make: *** [drivers] Error 2

from (for last_good == c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
29761
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/30/artifact/artifacts/build-c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/30/artifact/artifacts/build-3d463dd5023b5a58b3c37207d65eeb5acbac2be3/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/30/

Configuration details:
rr[linux_git]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git#cb163627e6d32dbaca4d89b2292788cee895b06d"

Reproduce builds:
<cut>
mkdir investigate-linux-3d463dd5023b5a58b3c37207d65eeb5acbac2be3
cd investigate-linux-3d463dd5023b5a58b3c37207d65eeb5acbac2be3

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/30/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/30/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/30/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/30/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/30/consoleText

Full commit (up to 1000 lines):
<cut>
commit 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
Author: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Thu Jul 29 12:40:19 2021 +0200

    nfc: fdp: constify several pointers
    
    Several functions do not modify pointed data so arguments and local
    variables can be const for correctness and safety.  This allows also
    making file-scope nci_core_get_config_otp_ram_version array const.
    
    Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>
---
 drivers/nfc/fdp/fdp.c | 18 +++++++++---------
 drivers/nfc/fdp/fdp.h |  2 +-
 drivers/nfc/fdp/i2c.c |  6 +++---
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/nfc/fdp/fdp.c b/drivers/nfc/fdp/fdp.c
index 3f5fba922c4d..c6b3334f24c9 100644
--- a/drivers/nfc/fdp/fdp.c
+++ b/drivers/nfc/fdp/fdp.c
@@ -52,7 +52,7 @@ struct fdp_nci_info {
 	u32 limited_otp_version;
 	u8 key_index;
 
-	u8 *fw_vsc_cfg;
+	const u8 *fw_vsc_cfg;
 	u8 clock_type;
 	u32 clock_freq;
 
@@ -65,7 +65,7 @@ struct fdp_nci_info {
 	wait_queue_head_t setup_wq;
 };
 
-static u8 nci_core_get_config_otp_ram_version[5] = {
+static const u8 nci_core_get_config_otp_ram_version[5] = {
 	0x04,
 	NCI_PARAM_ID_FW_RAM_VERSION,
 	NCI_PARAM_ID_FW_OTP_VERSION,
@@ -111,7 +111,7 @@ static inline int fdp_nci_patch_cmd(struct nci_dev *ndev, u8 type)
 }
 
 static inline int fdp_nci_set_production_data(struct nci_dev *ndev, u8 len,
-					      char *data)
+					      const char *data)
 {
 	return nci_prop_cmd(ndev, NCI_OP_PROP_SET_PDATA_OID, len, data);
 }
@@ -236,7 +236,7 @@ static int fdp_nci_send_patch(struct nci_dev *ndev, u8 conn_id, u8 type)
 
 static int fdp_nci_open(struct nci_dev *ndev)
 {
-	struct fdp_nci_info *info = nci_get_drvdata(ndev);
+	const struct fdp_nci_info *info = nci_get_drvdata(ndev);
 
 	return info->phy_ops->enable(info->phy);
 }
@@ -260,7 +260,7 @@ static int fdp_nci_request_firmware(struct nci_dev *ndev)
 {
 	struct fdp_nci_info *info = nci_get_drvdata(ndev);
 	struct device *dev = &info->phy->i2c_dev->dev;
-	u8 *data;
+	const u8 *data;
 	int r;
 
 	r = request_firmware(&info->ram_patch, FDP_RAM_PATCH_NAME, dev);
@@ -269,7 +269,7 @@ static int fdp_nci_request_firmware(struct nci_dev *ndev)
 		return r;
 	}
 
-	data = (u8 *) info->ram_patch->data;
+	data = info->ram_patch->data;
 	info->ram_patch_version =
 		data[FDP_FW_HEADER_SIZE] |
 		(data[FDP_FW_HEADER_SIZE + 1] << 8) |
@@ -610,9 +610,9 @@ static int fdp_nci_core_get_config_rsp_packet(struct nci_dev *ndev,
 {
 	struct fdp_nci_info *info = nci_get_drvdata(ndev);
 	struct device *dev = &info->phy->i2c_dev->dev;
-	struct nci_core_get_config_rsp *rsp = (void *) skb->data;
+	const struct nci_core_get_config_rsp *rsp = (void *) skb->data;
 	unsigned int i;
-	u8 *p;
+	const u8 *p;
 
 	if (rsp->status == NCI_STATUS_OK) {
 
@@ -691,7 +691,7 @@ static const struct nci_ops nci_ops = {
 int fdp_nci_probe(struct fdp_i2c_phy *phy, const struct nfc_phy_ops *phy_ops,
 			struct nci_dev **ndevp, int tx_headroom,
 			int tx_tailroom, u8 clock_type, u32 clock_freq,
-			u8 *fw_vsc_cfg)
+			const u8 *fw_vsc_cfg)
 {
 	struct device *dev = &phy->i2c_dev->dev;
 	struct fdp_nci_info *info;
diff --git a/drivers/nfc/fdp/fdp.h b/drivers/nfc/fdp/fdp.h
index dc048d4b977e..2e9161a4d7bf 100644
--- a/drivers/nfc/fdp/fdp.h
+++ b/drivers/nfc/fdp/fdp.h
@@ -23,7 +23,7 @@ struct fdp_i2c_phy {
 
 int fdp_nci_probe(struct fdp_i2c_phy *phy, const struct nfc_phy_ops *phy_ops,
 		  struct nci_dev **ndev, int tx_headroom, int tx_tailroom,
-		  u8 clock_type, u32 clock_freq, u8 *fw_vsc_cfg);
+		  u8 clock_type, u32 clock_freq, const u8 *fw_vsc_cfg);
 void fdp_nci_remove(struct nci_dev *ndev);
 
 #endif /* __LOCAL_FDP_H_ */
diff --git a/drivers/nfc/fdp/i2c.c b/drivers/nfc/fdp/i2c.c
index 98e1876c9468..051c43a2a52f 100644
--- a/drivers/nfc/fdp/i2c.c
+++ b/drivers/nfc/fdp/i2c.c
@@ -36,7 +36,7 @@
 	print_hex_dump(KERN_DEBUG, prefix": ", DUMP_PREFIX_OFFSET,	\
 		       16, 1, (skb)->data, (skb)->len, 0)
 
-static void fdp_nci_i2c_reset(struct fdp_i2c_phy *phy)
+static void fdp_nci_i2c_reset(const struct fdp_i2c_phy *phy)
 {
 	/* Reset RST/WakeUP for at least 100 micro-second */
 	gpiod_set_value_cansleep(phy->power_gpio, FDP_POWER_OFF);
@@ -47,7 +47,7 @@ static void fdp_nci_i2c_reset(struct fdp_i2c_phy *phy)
 
 static int fdp_nci_i2c_enable(void *phy_id)
 {
-	struct fdp_i2c_phy *phy = phy_id;
+	const struct fdp_i2c_phy *phy = phy_id;
 
 	fdp_nci_i2c_reset(phy);
 
@@ -56,7 +56,7 @@ static int fdp_nci_i2c_enable(void *phy_id)
 
 static void fdp_nci_i2c_disable(void *phy_id)
 {
-	struct fdp_i2c_phy *phy = phy_id;
+	const struct fdp_i2c_phy *phy = phy_id;
 
 	fdp_nci_i2c_reset(phy);
 }
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2123351224.1382.1627978317123%40localhost.

------=_Part_1381_1371330008.1627978316708--
