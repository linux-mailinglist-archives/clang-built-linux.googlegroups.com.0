Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBHOF53YQKGQERV4ZKOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1721153E04
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 06:22:37 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id u2sf1191469lfk.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 21:22:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580966557; cv=pass;
        d=google.com; s=arc-20160816;
        b=JAD44EQfMtO1j02EpptUQZt9DBHwX+80Qp0fkDdXuYnieP9LC/KAFDzaZJGnV3QIZX
         uWd1PrlaXuil5KwCoLpQ+3NandEs/JhuTZlWRHNh7Dsmo/OeMpjsH0Z/qpeZKVDcajo/
         qomLhfhOmBPMJWidkYJrLohbItu5T7hLv+C4rlA/T0cutr0wsPv0a5MkA4oMF8NeCzG4
         iu66IVNviIiDzEmlVW8KEwr10O6kIxgVKtD82IqELpj+EYkpRq8pzOY/Kcu2nvQ3buu6
         t6n9alIsnNwN8CuIsSoi9xfMK3GTmcF+wzRi/WnIY37/OQ35e2s3lBvXfui+Rc7yJSbO
         fRdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=sAkUtQJOJoR/q7CNeAdtuqTEbKE6jQTO5vUOXHBZJUU=;
        b=mg14KDrGpcAKkW+ZjlCevpfg+MlgvmgGpSo8Hj2lWLwwOG7QpE/0Sw4ohxltmH4nRl
         hw0BQT+MbEhSkiv6ABWTDiAhtd8BnYBQaUJMagRYUY9yCYcVyab7B4G9vPwwnnaPez82
         lZfy3NUZKlPvQgpCqHuwxWzBfFAkTnQCn43ykpLaKE0CK2F6WERe/3/izpxq0ckKwgkI
         nhO4batSnVDT9GPx2rNhlExEluylzaxOZ33JrMeJXAQS8FSaiWGCJuPPa0CKUpQXPRvg
         +J9Z0v3I6Zl+hmRxKlOORfUSAPtewCdmez5SL2JkvHCIZVbxTAUMn6fd8gnXpEcKOFTr
         RYmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=SUykFOwa;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sAkUtQJOJoR/q7CNeAdtuqTEbKE6jQTO5vUOXHBZJUU=;
        b=JdE8iJXt7TMjD6/n/QkW7GU1oWLgxekG+kXpT1PzlE9sVO1OJ6Kz3WDjqkiwFpnGX1
         wjt1tgLPGNIEDGXHLIKjHyWnDq54OOUWmsxNLh3mIboGe2d6EXHjYQ3zsAzZuz1ePUP9
         f5BCZGUIsrkzrdTOfBzqZOa3+9mVC60TNiNNZg4UgYyRrRCX5tiTCLNu2aq6kIid9w6/
         /VAmvHAKbCdgWTSl8/k2YhVgT5YMEB5mgNEkFEWGJZwp4WV+APdVxaGoEDZCnTK7mXT+
         J49q8I3DwO0BkkolPNjDh9ZPIFZ/EzPsVgYc8QACVyPCd/sxrqWSs5+HIRat0p7LRJub
         GfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sAkUtQJOJoR/q7CNeAdtuqTEbKE6jQTO5vUOXHBZJUU=;
        b=GTLIS9BZyhgP+tl9kVKFsCCZM91GqvneAslMwIFGzoizIFsP3DBVyEj4jNwB2/LpIC
         pbW+hAOLdwQ7HRlZ5gxLObIQm0Ru2fxKi6LG/BH4TYHONahPCqcqEq0iX9QKJe/4iD0v
         a2O9y4CZB+hg07VmWaNSdP8Gpk4B0ymBMkIZAP3kvI6BZc8ZboQe4vsjrDbRFg0fFLrb
         1TmPd59KrfVINIDyPfiBffifnK8Bxr01fQA5jK8b56Qf/3ppSRtCbF0PWk0mzcFEYUM7
         3S9y6HwpXIp/REqlhQwPe0cygQ0B7dQevMmqL0ywTkPPdWH7GEJrCNRmMuiDJF5tTbq+
         ssLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUAhAYW+GcgOE+lkDbBueeeyMOkMqBki25qyoBdob9aOmQ+3X1C
	3m53XcqpLSKJfJchArtXb2Y=
X-Google-Smtp-Source: APXvYqxfKm6hQVpxv8hR7DPbpgnflXOkZJdO8x8hp4dQ9ozM2IlmWOIF5ck9g/nplAdOAWoczicFFw==
X-Received: by 2002:ac2:4c2b:: with SMTP id u11mr767211lfq.46.1580966557196;
        Wed, 05 Feb 2020 21:22:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e7:: with SMTP id s7ls966686ljm.10.gmail; Wed, 05 Feb
 2020 21:22:36 -0800 (PST)
X-Received: by 2002:a2e:96c4:: with SMTP id d4mr871959ljj.225.1580966556613;
        Wed, 05 Feb 2020 21:22:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580966556; cv=none;
        d=google.com; s=arc-20160816;
        b=yF61T0s/Sy0fH5vPRpfA2Ktt0chCaYLipw9k5iKSWIAQYB/YYhbcvf3BaC0v2yKZl4
         PJaEivnxxteBbTUOWJdvo0ZFslpu3ToZRBKW+CB0yK6ifafECI/CG45g1o939ddDdb5G
         NHh9A3/MgmpCA8vDIKXfhI5okw1flmIZVFYubF9o5sGIANmgphJI7JYK1f/eqP3UiPX2
         an+HSh/BKIpxIN9nRB1Np9/YNTD6aX9mQWdA8HZBSWpnAhIrlrljOxlmZrjreQ/1t/AA
         wqv3qipyW3nHcLJc2Qw0y60Mo4WC5eQeB8arrmSBAPi+5K1qsqLhNA+iRN/Kk1/lZuPT
         flIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=FaYk0389CPQIrDBb0gbGlGugDhvcElSI47JQB56vENI=;
        b=d1MREiuYWw6TY3XzjVl44EBSQKh9G7h0DaaitakP+i7B8Ic8ZLNqeIdSguGLHOmQeh
         PPfIC14w6xWD5qMOyyQYkd3KQrrcARyTYvUmIyupw8wDh2wlQZK3JwTZf1qnFnANhn43
         KlJ4J6bn6gPEc2LwM0RJGi5qT5kjztJDwQsMkvbnHsJVyCIcGoBgFgcEzvokUeHJ+TKv
         7nM0q6wd3RC5esIoD+FXkAr7Iugm90c6opZ4cnIkRl+QpPZL8xqvN36dnXQXhNlae4Vp
         L+5ysXaVAmAbakHfacn8CO9mx+BgN+409k9SoIUuyg5wUgRo9Vcn9SC+Qe4T/j0r5HRk
         suvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=SUykFOwa;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x5si86104ljh.5.2020.02.05.21.22.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 21:22:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id z7so5516787wrl.13
        for <clang-built-linux@googlegroups.com>; Wed, 05 Feb 2020 21:22:36 -0800 (PST)
X-Received: by 2002:adf:b7c2:: with SMTP id t2mr1521992wre.269.1580966555838;
        Wed, 05 Feb 2020 21:22:35 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id d22sm2192586wmd.39.2020.02.05.21.22.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 05 Feb 2020 21:22:35 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 6 Feb 2020 05:22:34 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <434368701.2013.1580966555394.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allyesconfig - Build # 49 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2012_1433337188.1580966554620"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=SUykFOwa;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442
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

------=_Part_2012_1433337188.1580966554620
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
Author: Hawking Zhang <Hawking.Zhang@amd.com>

    drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call
</cut>

First few errors in logs of first_bad:
00:02:13 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:13 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:13 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1
00:04:21 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
00:04:21 make[2]: *** [drivers/gpu/drm] Error 2
00:04:21 make[1]: *** [drivers/gpu] Error 2
00:04:29 make: *** [drivers] Error 2
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
18047

from (for last_good == 18348c5a4f2137db45a3348e59296b2f1d6aca5a)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18122
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/49/artifact/artifacts/build-2fe4750e8506da0f23ab80390b762b0d44a04fc5/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/49/artifact/artifacts/build-18348c5a4f2137db45a3348e59296b2f1d6aca5a/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/49/

Reproduce builds:
<cut>
mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5
cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/49/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/49/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/49/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/49/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/49/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/434368701.2013.1580966555394.JavaMail.javamailuser%40localhost.

------=_Part_2012_1433337188.1580966554620--
