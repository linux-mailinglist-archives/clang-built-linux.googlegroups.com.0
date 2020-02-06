Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBPOH5XYQKGQE2O627YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 97658153C5B
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 01:54:21 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id 7sf2023708wmf.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 16:54:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580950461; cv=pass;
        d=google.com; s=arc-20160816;
        b=tVs+jE8Q5i/w6l8TDERjlIBi3MyjcCX7Obl0iP/N+WQJsGwQQ4P9svM5WVpHPvsDvu
         8psWPRMmag5K1YbPDoJLOzBSPsLZL1mXKAwxk3tIgVu0sfvNoFRntGKaOUwqbRPz7MKb
         9UVDF5JkRX5T4CWj0iCng0O32EJ3oskTlww+gvT3UiZPD5dgRz3r7X1Tc652PZcQF+9B
         NEVYEchcRdKzc8EwNTVIEfSCxWUYmWWr+W9r3BMpLwAIi204ZtHPFhpyCoSmIVRLDSpL
         0ruSkKeKje5fqpiTKBaJoTDuj1lgRqCizr2NyFOa168ewNOZdgKJLDzkcjlR+VzHM/G3
         5ngw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=f0BKDU7elyVUeh1U2hKDAo6zYCsOCi0XgqIe+bI0GnA=;
        b=XzOqB4BRhlLbJKQ82MYuYn8svt8KPK+5z4FM8SxWI2VScB7z2s9r4sPVUjfPK0oV0r
         dOfihF7LemIhKHgda7iP4cmEnSnthNip0PB7WGRr5DewngZEKLoAC1w5Sek2HFNbtPkz
         KnM+uJs15YloHt80pK4Ygx5se67gID8NtTdN3/iUIYbTmbeWtDC+yk8MNZzB6w1UUnLp
         jiNhkeAgOd3U9ol50KwzBbG8KEezOAI0HJJCTiUnmg3bgqNCgGfVz62+m+KYU3JquNGJ
         /WZX14q3LPJwhLRoe7vIL9mS0Lp9yEw593Wce6q5XXLGlsFPUE1GGpvq1oJ2HpZMFY4n
         rnAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GhrTjB6r;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f0BKDU7elyVUeh1U2hKDAo6zYCsOCi0XgqIe+bI0GnA=;
        b=Q0EuxHsnjHaP52UWBO4OpAsRLYZztTOJQRQOZQcEsIzQAzgb38aKT04TiMVsp7+0Uz
         QHlwdZiPZ/H4P3bZRd8woXMaK8DAtP+6C8upmOYBySI9wkIMXJWN4U3Mp5ly+qR9dvOP
         yg6LNiSHM/2y3egK8aqBAjw4L9uMugJ3IhetENLrGWzMNTyAtdSePUp41KZz0dLwWgVq
         ZIsLIjbB/YdH9dsKsAFPsBBR4wcOrTIMbtEqovhxzaSsk3Yw2LBUh0Nwxm6nZ9MyOt9W
         XFCJ+R3FLBYDMeBhMw8amZ0+TelxCneirDA0SwNA0qwA9nnLmiCm4SJ0L2tRcDMUHfmH
         kUcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f0BKDU7elyVUeh1U2hKDAo6zYCsOCi0XgqIe+bI0GnA=;
        b=sF54rYBZJ+oOt+lkWc6+fjZgfj4NRsOq3obVpxp4IPHMxfi8YIeXGhdrTp8uQ/wy1D
         gD4g+Gocl9HsK0lvd8nhHCE324vTevOPiPG5dnbKaljzJg5beRaB+XjzHiO8arYvdyKC
         YpW5p8EzBn8SXiCqpMgTeHD9N90ecew3q57yYw5wWJl/8hJLE08TJPx9pgHYfd1ayBcP
         mjay4VIRmDeE7MIJ2gTHxRwVbo7gylMKN+0SmmPpjCqm6xBE49flh77UZHEmvb6LdoJg
         PxCSgVGEWHWyyCw/5x4YFEWO+vGxIizuJRAUE5xCBDV4FIw/esaMCBmkruJlQIOhYdgV
         sVQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxYzowxWB7OfKeRqsQrlaP+YvrcccFm/i877TqFiAsrNMjTFcw
	2YYLYGlXf2NnGFazg1AkHV8=
X-Google-Smtp-Source: APXvYqyibgoHTD7UhS5yBLv0iyltveqBMj/MptRXnC0Ula7Ueux2UoR0Q/SIO6LDCAVypM1OdhvMbw==
X-Received: by 2002:a5d:5305:: with SMTP id e5mr279170wrv.18.1580950461264;
        Wed, 05 Feb 2020 16:54:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:65d0:: with SMTP id e16ls2760511wrw.1.gmail; Wed, 05 Feb
 2020 16:54:20 -0800 (PST)
X-Received: by 2002:adf:fa87:: with SMTP id h7mr279216wrr.172.1580950460659;
        Wed, 05 Feb 2020 16:54:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580950460; cv=none;
        d=google.com; s=arc-20160816;
        b=P9Q1F56/hsgcT8txb87MV+oBRJeB4NwL6jlggSgxEdosEk13m+ajGkZemCuFCAPXiI
         NYo/5upgTEX6BE5dIAQe7SCCqxKNeBxociH3LYax8jxrvjq9WWFshh7pmzx7Qaz51819
         eJop+DbFHif9hPMY/TWRH9oYqb4BIwAQSRJyFNGfKToVKTKNPanVsI6dgJhgbZk1fD4o
         K5nhpzkNaYkOoAAPHe1nbf8KsowDbGwZsLKDqxjBUrtAjtw4Uv7uxdAxK0hJ+knjpt3i
         lQJfeM1SKJ711vC4Puc9E1k/yrZDJ6yR2uNsHs8mUU/J30EHkDgE4ZiMrHe7z0OVc15W
         7yNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=pRfF2gLrmAqgFrQue/OPr4eJPKkRS2GXGq7/jhgRBnk=;
        b=L5ZrCs2CStSOnKlrDy3KE6xAh4TDPZBnLfV5tvbkJ+38krRm+eUOMNT8eFkqyclN3c
         4BlNks4WOwnk7ByusEDoorS7jp2sAvbM8YV01NFxP4rTQE7LqoL2/vERYU61fQcGlmlZ
         7GCWU8a/buGMZzKmqNV0xEEJAcrNBiCB9rSnXmraBJ45+VyGTqt/EgzZQcfQ1WoqMybG
         xNdB/2jr/mKXSJ0/ShA5urODLMMYe+B4U/eGIDSwMIYNmHcPVf4ZgIhfZvR8Gtx0FNVG
         ZnSqEHvPLWLGKL7p9MEYgyR3+jIsZEV4B42IAdrPZTXC7ttnEZP+F7oIu3YAepHX79mk
         Jvkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GhrTjB6r;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w11si95670wmk.0.2020.02.05.16.54.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 16:54:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id t3so5069676wru.7
        for <clang-built-linux@googlegroups.com>; Wed, 05 Feb 2020 16:54:20 -0800 (PST)
X-Received: by 2002:a5d:51c8:: with SMTP id n8mr213854wrv.111.1580950460261;
        Wed, 05 Feb 2020 16:54:20 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id t81sm1491055wmg.6.2020.02.05.16.54.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 05 Feb 2020 16:54:19 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 6 Feb 2020 00:54:18 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1536626360.1978.1580950459732.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 66 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1977_1228072738.1580950458788"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=GhrTjB6r;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443
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

------=_Part_1977_1228072738.1580950458788
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
Author: Hawking Zhang <Hawking.Zhang@amd.com>

    drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call
</cut>

First few errors in logs of first_bad:
00:02:20 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:20 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:20 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1
00:03:36 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
00:03:36 make[2]: *** [drivers/gpu/drm] Error 2
00:03:36 make[1]: *** [drivers/gpu] Error 2
00:03:36 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="03cd8b289266238f8122d11c2aa14763ca1e2971"

Results regressed to (for first_bad == 2fe4750e8506da0f23ab80390b762b0d44a04fc5)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
20090

from (for last_good == 18348c5a4f2137db45a3348e59296b2f1d6aca5a)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
27451
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/66/artifact/artifacts/build-2fe4750e8506da0f23ab80390b762b0d44a04fc5/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/66/artifact/artifacts/build-18348c5a4f2137db45a3348e59296b2f1d6aca5a/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/66/

Reproduce builds:
<cut>
mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5
cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/66/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/66/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/66/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/66/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allmodconfig/66/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1536626360.1978.1580950459732.JavaMail.javamailuser%40localhost.

------=_Part_1977_1228072738.1580950458788--
