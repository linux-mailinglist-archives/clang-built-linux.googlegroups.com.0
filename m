Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB5N4U2EAMGQEQF6OTRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 232FA3DF602
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 21:52:22 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id f10-20020a7bcc0a0000b0290229a389ceb2sf1267120wmh.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 12:52:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628020341; cv=pass;
        d=google.com; s=arc-20160816;
        b=IiBxClEdiH6FYNtZeyWvJVjSgii28AA8yTizCNTrCCx+Jm03xKPozovS4IiPxv4pqO
         qmPRgkD3oqLhLlGPI+m4CVB2J3psM0o0lKxgrmRn8NntdYm26iVCJRahLyV204gPUygC
         StgaqAxkVTRuOLv76iXaLEUQ7uXqKV3eLWybeOBzNfz29bFhW7K0L9s18kWqd5J21s5u
         gvxV6Xxgv/Nzh+KfepaTlkl97/58iKGVB+Kfy/S6CSM+qr0osu0hPBTMtjrFtE0PJMKf
         ruSVuZC98nPjMFrujP5BOsGfMY1hqip9E14XUD47Ip08t3PMZoVt/R6rB2/ooktSejEn
         5HDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=COAynnIu+U+Fvq66SXZDYz0BL/EN/eScaLSNYxH1vEs=;
        b=lyb9tc2Cjq0PI2jWjW0stWSgX6tiZM1RhyCOJSioSCIcOKlnfX2pDwkCnpEGJyBdCX
         Jk5HnXrFV9k9j6pAHLXeQ+JKbeP7AJrxbOs3YCk8LGYv3uXgBsKoo9Rv6fKxAJZ9iB/4
         fbWcO63klC1bR24zzPFVKGGnzWee1vLMCIwqTpjaD6pEOqv5Uy9chhNoiI+kCKqm4cFo
         4mxyCnbWGa98CP2faVRDDdFft5Uqugf07qOr27mIK+tZlnCPOBVWR0zJDBewxHC9Gg9Y
         XT+10lWIZI0l5UCNozC907C7ulp+V5GnZKLZjK3BA4SKDD+iZA0te4IUU8kc1ETCBTYc
         0sfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="e/ioDodh";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=COAynnIu+U+Fvq66SXZDYz0BL/EN/eScaLSNYxH1vEs=;
        b=RJmhGPWqDQYVnqHXbpSodL1xoZ6M5OgKEU/XTmAfa7y9bwz2oeeLLB7uWMJN2SUu0k
         9z71y7Mz+e7oEdYtvyWCdSOeiapxYaA+NikBoHphHP9njcevH2ZtcDGhdwuKJIHTc7wL
         dJV5wYHi92DDTAmTZ68rkIlTWc/wmZScIPjJ/AUK+mjdzCNocjMY7Z2n2N13OEFV7cYe
         aqt2DiDO18Mzf6W314lIznjW0ihs5uCDZW1x+rJP1j/DIvPohLZ8tOUEFc+lN5PhCDRV
         KfU7cQLu45ZYy/kp3A2z4UqqIpuIQbX7PiP33e+9KRGFVV+d0yCXllDZkGUJrK4PooIo
         NKSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=COAynnIu+U+Fvq66SXZDYz0BL/EN/eScaLSNYxH1vEs=;
        b=TmpAu9XfdcaWnEgNk8EkorwuXO0t1KN/pEDn574Zesaw8Qkx4FU9tMw/PWAAO58pMT
         X7BNF3CLyscL0E+YDbuh9gNmIiSVXBdmVnQk9gQpaw9wEXmywghQTo7xVnHWKnqGH7qc
         3KJ5fxfA4B9YYtD2I1iRYOevNH5UJ7JhNytWNp9qfx0CeUCjlvjxjRrnFRqY2GP0zJr2
         jFZEIBKwm2KCQ41r2tQXrKKA6S5WNrWcI04OicTpeLn3nzXKHoHwVVP+YnfvEEH4wcow
         v2CWVGBRt9ADDQbclNdV5kA3x0UekGKuxBMImaMUS1q5SawoB5XQ0QvMbpDWcBeesGLy
         L/SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ebShhv+ExM5QDeF8d9d3nHCo6FVH9UBc7lRgtEOTb7gMeAcDH
	3uh8Zs+B2JhaHA4uQ4vmrTM=
X-Google-Smtp-Source: ABdhPJwYaSZFMe1KOq0xpyWE6/eInK/ZOlxaaoX4BSlUX7YLQb812loKtLpQZDK0+54GJLkdufPxcQ==
X-Received: by 2002:a5d:518a:: with SMTP id k10mr24764218wrv.400.1628020341857;
        Tue, 03 Aug 2021 12:52:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db90:: with SMTP id u16ls71332wri.2.gmail; Tue, 03 Aug
 2021 12:52:21 -0700 (PDT)
X-Received: by 2002:a05:6000:1818:: with SMTP id m24mr24772705wrh.49.1628020340944;
        Tue, 03 Aug 2021 12:52:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628020340; cv=none;
        d=google.com; s=arc-20160816;
        b=XGvdpdLM7hpUgZ/Y64MJ1FdxqjVwmwUT7adDgR73F6cU07Yd3VsCuSrFWCjpjHMu+9
         1Az/Rz3JRcG6gKSE65siYPcVE/GhFV7W4TI5lmBPfoK4OGmBZoXBlB5Glx9C8iYCHxFc
         khrh73YzDhgFb5XpFyNruAV2exkqKr55otwJpD82Any8kE+nYw3ESYSSVn/Mbr7XMagh
         p8+jyuEFt3okeuor5hby9bG42zcVTEZeQZ+TfF6Kb/PxRJSnlrEHEigpv8ipBYoT9z1k
         aD7ODNBA01L0dER9d0yqbutKciugN/11jEzBywVXupXEqQ/EqHXtOygSC9sOBsQ6IkOb
         w5wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=L+A58lVx8E8jUhD08V32KRZ7XwiQQ6qezN8XolPd/JA=;
        b=sa8vX9Ttm7Cx+GO15jNiVibrmMR5DyyxuG5JOJkL3nbpjLN1yB5D3z1GYFyxL7TOsG
         WzLOoA5g356BUguWTHLAIL1DSCpsfVpTSIAoobtPWN107rsNsuZdOhgeYr8O9jlopTNy
         U3C7/iDTIj6XigC1AXsZ2JKxILqslwHGjTiOReaJMdkJawlr2Xh+N4JvThao/XzkN+mb
         baahIekYHus+uTgWQiOZLipvDXrpvJ0WhSGAuYJ61jCBoHWbPtc4yEi4movIl/BX+Pi6
         0Z33/+97WObXQIUYWMBRJV5LlyIyTge0UFLyURQvGOsD98Y6eZflA5qpjh+If6YPDmZJ
         Td9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="e/ioDodh";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id z70si268580wmc.0.2021.08.03.12.52.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 12:52:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id n12so26534231wrr.2
        for <clang-built-linux@googlegroups.com>; Tue, 03 Aug 2021 12:52:20 -0700 (PDT)
X-Received: by 2002:a5d:4951:: with SMTP id r17mr24065786wrs.208.1628020339817;
        Tue, 03 Aug 2021 12:52:19 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id f15sm14940780wrp.12.2021.08.03.12.52.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 12:52:19 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 3 Aug 2021 19:52:18 +0000 (UTC)
To: tcwg-validation@linaro.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <725376535.1725.1628020339453@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allyesconfig - Build # 14 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1724_1475781216.1628020339048"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="e/ioDodh";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431
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

------=_Part_1724_1475781216.1628020339048
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig

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
19928
# First few build errors in logs:
# 00:02:04 drivers/nfc/fdp/fdp.c:116:60: error: passing 'const char *' to parameter of type '__u8 *' (aka 'unsigned char *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
# 00:02:04 make[3]: *** [scripts/Makefile.build:271: drivers/nfc/fdp/fdp.o] Error 1
# 00:02:05 make[2]: *** [scripts/Makefile.build:514: drivers/nfc/fdp] Error 2
# 00:02:23 make[1]: *** [scripts/Makefile.build:514: drivers/nfc] Error 2
# 00:04:16 make: *** [Makefile:1842: drivers] Error 2

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
20000
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/artifact/artifacts/build-c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/artifact/artifacts/build-3d463dd5023b5a58b3c37207d65eeb5acbac2be3/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/

Configuration details:
rr[linux_git]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git#cb163627e6d32dbaca4d89b2292788cee895b06d"

Reproduce builds:
<cut>
mkdir investigate-linux-3d463dd5023b5a58b3c37207d65eeb5acbac2be3
cd investigate-linux-3d463dd5023b5a58b3c37207d65eeb5acbac2be3

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allyesconfig/14/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/725376535.1725.1628020339453%40localhost.

------=_Part_1724_1475781216.1628020339048--
