Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBQE65PYQKGQESR32O6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDF01532B7
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 15:20:49 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id x15sf1245112wrl.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 06:20:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580912449; cv=pass;
        d=google.com; s=arc-20160816;
        b=HPJ8efYt0ZDnvo/T9HH8h7UZa+pYIjFKBbuVLT2zrZzZn3xRD11KCLqYyO1FmirEvZ
         cPS3TAaVmcG4bkBKODQHokdcmgIwA1QvfC9GJAXZSXSpz1Ppwde3uhKj97ziVdMxPdha
         mV9fYp8PAdsWIUMBECPvgGZx9qR4h8YYWVPl03OIU+hAswnMI5moxtfcrJ84137tD+M7
         k7mj7JJRAYEQ5G8lYewmvd5Nutglt4HndrtuCRDyVDwq5nXDV1ZF/pbe8hgLiFGXYMOy
         wQb59aIQgsjuDyGMFL66tdsZqEavGiu0I2RcSAN1sGav/+CwShTz45oFgg1s0B2dctzv
         bPZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=dwsqMlNrwppuMVk8R3A7low62eBHKrUMKs2dO7ODODc=;
        b=Zy07srOSTsIV371qYiu0t7aYLw+lllBwk+BiSfJy+Odxaa3Mb7r7Pec9Dk7l7otMGJ
         VL9aBAaKy7sbIJJzMasQ1/QCHRbJMyHeebbMbIPeswAjH0obPUjA9vo+UT0qSgUQOywy
         Z4RxtoDoy0ZLeuDF2HCtIf+Caigq7rRsqk+3bmy2oG0Wg0eckD1251brCJb0mrnQ16Gh
         WZ0SQ3raqG/KYuO1BueqlXqZwXm86LBHoUxY10vZJDl/jSkPYBMpqFQ5igK6dpxs3jf4
         JoJfVWSBlIkQrkv9qkf+zVpRkV4/BoaSH5kaUOIeRxmscYSZZ867Xx10Gi/Z9Dsi1SWT
         bIVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Az2/N8R4";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dwsqMlNrwppuMVk8R3A7low62eBHKrUMKs2dO7ODODc=;
        b=GxwbCHVRlQC5xYQR1AlsK9+x/Xf6n7TEqf0YnwIubEDxfZj7dA3PJlPL56xEtsFXKv
         IvpDBmSXnGhsRmppu1iwItsIzwEylwRLiZfftCRHOO5Bs/QSazLZjxGvs0u0MTTAZUH5
         r7xvZ+iQTJ5a0LKnUiraZ24gve6/6M/5i80K60eSElHzaHu4hQtTZtHUb10tNUHxqvnm
         HGc+I7RDFwqJ9jy5hDLzBL1NDxKAeVM22y+hfw5GKpQF+liU5G2jRFrPUpVvD418L9a/
         ASAsNUetrJ1q8IQ5+WBr/Qm6bMCVOob+7G+2jBjboJ9YqiNlXRZUFtyKperlhgS/3krT
         FQ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dwsqMlNrwppuMVk8R3A7low62eBHKrUMKs2dO7ODODc=;
        b=o91bEq3MwejHlaEZfTHsCFmrRFuY+TBdAzK5n6OnL+oNKj9asKi/lvdC5JgW30otK3
         2pkeYgs2HO01iE8nIumErXWBbjOLu4lnxgAT4zMWseVRExttgOTA01VX0y16cI1A4OjL
         i1W0VA6WYdqEp5hkhuYwvqJ/nOUd/D89KJHimn6KvNrjO6wgfS2qrmOXk/5enQyqd/r4
         igNCbSJrhaq3H5FD507hJ3NrL8EDlgM5NCodShJ7joR2zmJHpa4FrrhE6ChxdCQhaGGp
         N2sPe9nJshFiken4f6ql2DHWVkPcLp+B9djbBLuBRhJ2I6aZrDq8wXfm7YpAlPp4zwik
         MaDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmlzHynwmb318htrpM3OFLho24BBgiOMSSc5yEPPTq5q1jp//x
	1diIr6hGNCuU12/csXbrnAU=
X-Google-Smtp-Source: APXvYqyY09Odgm5EdDPvUBF8+3NoXYyo2wr8Ji7DfQmoxWRLkMxmSejr+S5KboNYfS6cvyihScNKQw==
X-Received: by 2002:a5d:4dc5:: with SMTP id f5mr4870652wru.114.1580912448933;
        Wed, 05 Feb 2020 06:20:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:288:: with SMTP id 8ls1561570wmk.3.gmail; Wed, 05
 Feb 2020 06:20:48 -0800 (PST)
X-Received: by 2002:a05:600c:2551:: with SMTP id e17mr6144828wma.187.1580912448312;
        Wed, 05 Feb 2020 06:20:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580912448; cv=none;
        d=google.com; s=arc-20160816;
        b=XN0MiwN5fUK7YNSD9W4UYRKRvbVI1YOL5fKvD74zZSGVqoCWjTeGUmx6LFv6ZxaU1R
         3awcJ9PQnPySCbkk6kY4CSpeK/nVBok+1JUibAeeGu7Glv+LjA3D/QD52YLnAESF4QOZ
         1jBe1sGHqkAxLp/h47TxEoyhSpP9V5OFP9PW89W15/58yKvfED8Nxn65rO96tRHWB/D2
         ASJ+6GlIvGkjpXuwfHvYYV8ue3WqLW0dQG9r6M7Rt5TW8ivz4+jxZ2FaPTP09y9/CI7K
         ww0lcVo7TBau9OFMY8AAItQ+s+NzMs+AEqNmi9uUhIPm3D+oyV1epi2Jj780UyISKcpP
         Be1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=8FS1bD5c+gNBYVxKOeDKIqFR5SDJ3VmvM0oScj0lknU=;
        b=M++9c2QPaCHBd9ZxbLV2aW3OQxDhmp8BQyrFmqGQLbk1/NZlXKTtNowFn93ScaXP3k
         xwvC7C+uKxgw0pegzXhmRZsOlcYoDRlKwFBBGlQ44oZuxyV1x0OLGE8bfb77EOnzONzf
         ZsK5uMC4udk1Gqs4/P2m5YwUd491b4QjSlTZKjBw4MPjauFVtHm3Jv0PuWECxdlymyhY
         ebNEFJYBLf0MSpUZx+66ey/0GnJxAK09fqmRVzMdSZ3W2F9Y1Mluf36fR3Q4zBHH/uj3
         Hq+ltBF2514gIVtzuSlFBfx05elZJdLtkvWu+/IaFkZB7R+xnlsQXW830p8Nwd1IVqEB
         CQ/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Az2/N8R4";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id i15si1023620wro.2.2020.02.05.06.20.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 06:20:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id s10so2674449wmh.3
        for <clang-built-linux@googlegroups.com>; Wed, 05 Feb 2020 06:20:48 -0800 (PST)
X-Received: by 2002:a1c:6389:: with SMTP id x131mr5884612wmb.174.1580912447668;
        Wed, 05 Feb 2020 06:20:47 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x17sm34212766wrt.74.2020.02.05.06.20.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 05 Feb 2020 06:20:47 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 5 Feb 2020 14:20:46 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1589326257.1893.1580912447101.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 56 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1892_968260643.1580912446466"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="Az2/N8R4";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344
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

------=_Part_1892_968260643.1580912446466
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Culprit:
<cut>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
Author: Hawking Zhang <Hawking.Zhang@amd.com>

    drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call
</cut>

First few errors in logs of first_bad:
00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:49 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1
00:04:37 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
00:04:37 make[2]: *** [drivers/gpu/drm] Error 2
00:04:37 make[1]: *** [drivers/gpu] Error 2
00:04:47 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="cee5a42837d4a6c4189f06f7bf355b97a24c3c93"

Results regressed to (for first_bad == 2fe4750e8506da0f23ab80390b762b0d44a04fc5)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19713

from (for last_good == 18348c5a4f2137db45a3348e59296b2f1d6aca5a)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
26866
linux build successful:
all
linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/build-2fe4750e8506da0f23ab80390b762b0d44a04fc5/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/build-18348c5a4f2137db45a3348e59296b2f1d6aca5a/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/

Reproduce builds:
<cut>
mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5
cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 2fe4750e8506da0f23ab80390b762b0d44a04fc5
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 18348c5a4f2137db45a3348e59296b2f1d6aca5a
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/consoleText

Full commit:
<cut>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
Author: Hawking Zhang <Hawking.Zhang@amd.com>
Date:   Mon Dec 23 16:51:42 2019 +0800

    drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call
    
    For sriov, psp ip block has to be initialized before
    ih block for the dynamic register programming interface
    that needed for vf ih ring buffer. On the other hand,
    current psp ip block hw_init function will initialize
    xgmi session which actaully depends on interrupt to
    return session context. This results an empty xgmi ta
    session id and later failures on all the xgmi ta cmd
    invoked from vf. xgmi ta session initialization has to
    be done after ih ip block hw_init call.
    
    to unify xgmi session init/fini for both bare-metal
    sriov virtualization use scenario, move xgmi ta init
    to xgmi_add_device call, and accordingly terminate xgmi
    ta session in xgmi_remove_device call.
    
    The existing suspend/resume sequence will not be changed.
    
    Signed-off-by: Hawking Zhang <Hawking.Zhang@amd.com>
    Reviewed-by: Frank Min <Frank.Min@amd.com>
    Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c  | 18 ++----------------
 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h  |  2 ++
 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c | 11 ++++++++++-
 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h |  2 +-
 4 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
index 3a1570dafe34..939a114605c0 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
@@ -558,7 +558,7 @@ int psp_xgmi_invoke(struct psp_context *psp, uint32_t ta_cmd_id)
 	return psp_ta_invoke(psp, ta_cmd_id, psp->xgmi_context.session_id);
 }
 
-static int psp_xgmi_terminate(struct psp_context *psp)
+int psp_xgmi_terminate(struct psp_context *psp)
 {
 	int ret;
 
@@ -579,7 +579,7 @@ static int psp_xgmi_terminate(struct psp_context *psp)
 	return 0;
 }
 
-static int psp_xgmi_initialize(struct psp_context *psp)
+int psp_xgmi_initialize(struct psp_context *psp)
 {
 	struct ta_xgmi_shared_memory *xgmi_cmd;
 	int ret;
@@ -1420,16 +1420,6 @@ static int psp_load_fw(struct amdgpu_device *adev)
 		return ret;
 	}
 
-	if (adev->gmc.xgmi.num_physical_nodes > 1) {
-		ret = psp_xgmi_initialize(psp);
-		/* Warning the XGMI seesion initialize failure
-		 * Instead of stop driver initialization
-		 */
-		if (ret)
-			dev_err(psp->adev->dev,
-				"XGMI: Failed to initialize XGMI session\n");
-	}
-
 	if (psp->adev->psp.ta_fw) {
 		ret = psp_ras_initialize(psp);
 		if (ret)
@@ -1494,10 +1484,6 @@ static int psp_hw_fini(void *handle)
 	void *tmr_buf;
 	void **pptr;
 
-	if (adev->gmc.xgmi.num_physical_nodes > 1 &&
-	    psp->xgmi_context.initialized == 1)
-                psp_xgmi_terminate(psp);
-
 	if (psp->adev->psp.ta_fw) {
 		psp_ras_terminate(psp);
 		psp_dtm_terminate(psp);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
index 611021514c52..c77e1abb538a 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
@@ -362,6 +362,8 @@ int psp_gpu_reset(struct amdgpu_device *adev);
 int psp_update_vcn_sram(struct amdgpu_device *adev, int inst_idx,
 			uint64_t cmd_gpu_addr, int cmd_size);
 
+int psp_xgmi_initialize(struct psp_context *psp);
+int psp_xgmi_terminate(struct psp_context *psp);
 int psp_xgmi_invoke(struct psp_context *psp, uint32_t ta_cmd_id);
 
 int psp_ras_invoke(struct psp_context *psp, uint32_t ta_cmd_id);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
index a97af422575a..78989e9560d1 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
@@ -365,6 +365,13 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *adev)
 		return 0;
 
 	if (amdgpu_device_ip_get_ip_block(adev, AMD_IP_BLOCK_TYPE_PSP)) {
+		ret = psp_xgmi_initialize(&adev->psp);
+		if (ret) {
+			dev_err(adev->dev,
+				"XGMI: Failed to initialize xgmi session\n");
+			return ret;
+		}
+
 		ret = psp_xgmi_get_hive_id(&adev->psp, &adev->gmc.xgmi.hive_id);
 		if (ret) {
 			dev_err(adev->dev,
@@ -451,7 +458,7 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *adev)
 	return ret;
 }
 
-void amdgpu_xgmi_remove_device(struct amdgpu_device *adev)
+int amdgpu_xgmi_remove_device(struct amdgpu_device *adev)
 {
 	struct amdgpu_hive_info *hive;
 
@@ -471,6 +478,8 @@ void amdgpu_xgmi_remove_device(struct amdgpu_device *adev)
 		amdgpu_xgmi_sysfs_rem_dev_info(adev, hive);
 		mutex_unlock(&hive->hive_lock);
 	}
+
+	return psp_xgmi_terminate(&adev->psp);
 }
 
 int amdgpu_xgmi_ras_late_init(struct amdgpu_device *adev)
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
index 74011fbc2251..c62a4acf4c14 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
@@ -40,7 +40,7 @@ struct amdgpu_hive_info {
 struct amdgpu_hive_info *amdgpu_get_xgmi_hive(struct amdgpu_device *adev, int lock);
 int amdgpu_xgmi_update_topology(struct amdgpu_hive_info *hive, struct amdgpu_device *adev);
 int amdgpu_xgmi_add_device(struct amdgpu_device *adev);
-void amdgpu_xgmi_remove_device(struct amdgpu_device *adev);
+int amdgpu_xgmi_remove_device(struct amdgpu_device *adev);
 int amdgpu_xgmi_set_pstate(struct amdgpu_device *adev, int pstate);
 int amdgpu_xgmi_get_hops_count(struct amdgpu_device *adev,
 		struct amdgpu_device *peer_adev);
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1589326257.1893.1580912447101.JavaMail.javamailuser%40localhost.

------=_Part_1892_968260643.1580912446466--
