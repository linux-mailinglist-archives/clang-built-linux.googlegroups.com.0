Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBJHA5PYQKGQE73EI52A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF93F15356A
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 17:41:08 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id y21sf739038lfl.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 08:41:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580920868; cv=pass;
        d=google.com; s=arc-20160816;
        b=ns0v4tooJCslWvG39qr8bXUDdDdGBINSS4SvURM/vXtEs5coot6Su4OlbrsEbyQu/N
         NML7oEultZvGGxwDGirTyqO/+sb7x9Fs49yisjvPwWcY11P+Y3u6TgaY4arpoMytZNxO
         y8sUzOFe0xe7pwuDCeQOkRDt+bfnxiX0wkeiurxA4WQnSw3ZjS0B/DjXojy8zDAmfXfM
         Ut0sH61WQ9Erv+utSp96nYn3aU0uTGkNYdCgL0ZoxIgGNQpBhPWAFcgyV57JbSIY1v9G
         HlAQ/7Gxehmth8SEYjGzCSgD1HvGBDqhNDEZX0HaJXvESDXgGX/iAf4JCguk9fiuKdX5
         IXmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=dlY5nkEMTI4MxDFAyRUcyoJWI/jebYCBdgI/rs9caFk=;
        b=bNxXS+mh+ovxAiPbd6wgXmwKZa9UQXjhg8D7XVreOS49ywAuWPDde7U8r0Ju9gbIZV
         UEviLtPxaL2x83qE7Nlv1vtnhbjRIzJPPYKb7VMlPdvA6F2K0nyrRtVpSzP1b2kWqULF
         AezOwDaD7RAK3ByN88RI3uOs1Ae4IAG7dstTE2z46cQ48Q7orHXTyNOtOzmiaK80d8kC
         kvN59T3t5AyQlUEr+JhLAHwsKhJzho4dFGQplel/curuZhHliagl1bbObVQWXSVLLrQE
         ZjqSa8WMq8DUFKYgLGVtI7KPK9UCgB+JHCDhufG7c+QRRpjnDQboA/ZaFfu2Phy+tkql
         J/TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MzEmroH5;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dlY5nkEMTI4MxDFAyRUcyoJWI/jebYCBdgI/rs9caFk=;
        b=pgVJIGxI5uYar6ySIh5C5sw3G3G2fX+LRIFu6inrnwLpDFpzP1J2H3+incEwxB4ecA
         VaNNaGjDJ4k2NF9ooxhR6g2t9yG1M7r02vMWzEEfQ/qne100d+y/snv91R0hCU6zlh5b
         xdyal+YolHOmfl52Q/xuAUpjx+KIbLH8Wm9nSrU/Jz5+Dg7coKPOeMEOuZNjLiLnUWTy
         vUyANpxfj4pqpmcsSzBVZrnxB9z/e07D5RQBvARMfUrn90mEBrqv9t1YFjEVgPG8DRZ9
         m+2DB3hRbtXEy4pLfXe2qjap9Hn7/5u33qKyv+/BinrlSZ+Ing5ES1fjyBn1EeqgUNdr
         oeVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dlY5nkEMTI4MxDFAyRUcyoJWI/jebYCBdgI/rs9caFk=;
        b=RexBOHEdsaXrO0TEmwYA5j71YRMGi3h0Q07Oov+fgUBAjQiSEnSP+MfRiImPuC/Sg1
         4DxOVHeKRc8k8n/KeziYtFsNVtDy/ljsbDB+0doaOQvgoekfSHb3Ui4hbY2h84x8oof6
         YVs6/RCW3N8nKZATTno9UvmSpI+qOIDmybsqZzq9wJQdiJ+9KPDXnGxtEtS2fXzuZ0WM
         BNv7aNp3KI2Akam2nC/wejwcP3HNnWXQwbyCoo8x27JWXsLgEnrkJEqwdhZOZGVmcc2O
         M9aJo/313T6W4X+us9zDxagUSVpcTfalX/8V3tVjSIw9VDm/sainESdTqvitSsUKwU7J
         5VuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUDwMGNSTOlcBnelodbi4zrlLmPJNRWSvxJGVZZM3szxOuluhfO
	ooqqzdvScvtzlPiPyZ5lrP0=
X-Google-Smtp-Source: APXvYqxWOER1U4Nd0vmDvT1h3w/6CYaLiEAXXKz40CngTA8W9KGcvDWF0S71btZBARPOAuipP2QwQA==
X-Received: by 2002:a2e:9716:: with SMTP id r22mr20799454lji.224.1580920868381;
        Wed, 05 Feb 2020 08:41:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:2247:: with SMTP id i68ls364096lfi.5.gmail; Wed, 05 Feb
 2020 08:41:07 -0800 (PST)
X-Received: by 2002:a05:6512:3ac:: with SMTP id v12mr18610881lfp.205.1580920867739;
        Wed, 05 Feb 2020 08:41:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580920867; cv=none;
        d=google.com; s=arc-20160816;
        b=oyp/W9XMkb+3Mm95GDSxlta4ywvdNkxI8u/gZdWuQHLXYJTMFw8EduIt0FInVNTHgO
         bsaOZkYCvRIofIkJZFYGGpdoMkL41c4mBAukikWI6t4xUfbChfcqeaLFJnGPttfBUBKv
         xieRauzaw9AAp2tcEcERFKf9ptI2jVaDrsgDU4vGIi/DdZDLZEOaLqTH/fiF5fs2Z3uC
         Va+2XbgX3a1/mln8Q1iO0gheHSBnGsKZQtNxy5JySQ59tFimzt0CVMA56qh6Qvop2Nvp
         WUPejSJQ3cHh80mq+LcrELXpKAeXuFRhaa7moUm2HiyssKISkNQgiM4XB7HFjgK0o3lH
         4fVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=vPzDTCc6CuR9NbrHAqCYhVXrqTARdR7riishCq+xz5k=;
        b=bCGF/0XlDSF+RIQ3jyPRHAHTTLpke2FJKrS1CMGhH30IX5k7+BzRP+zLu8IsjLqEMd
         xUXvn95Z+wEL45TKIvWZGJb3ppdToM/1VPTuz11HizTYrV60JCEmUooxUc8T0dJKaKIr
         VGnf15IQtzh/FkLIdOrYhYBqEjs5ZgXuwsrSQwH+M7oxQqiQ81sWNoXu4hJlTNQHR4Lm
         ZdWlIICnFxc9ZzHHHLRAtrakwoQamQk6rSzyeCm7tKmnnGL+RMTqwZ0f4YQJULLVfKuy
         1tA9IN3YKUoByNRw7V7n+BS3J0HyUzlHuJqA/p/seJ9BKHs+DTa+fIDbPQfi7Em2O69i
         t1wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MzEmroH5;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 68si7038lfi.3.2020.02.05.08.41.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 08:41:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id c9so3536946wrw.8
        for <clang-built-linux@googlegroups.com>; Wed, 05 Feb 2020 08:41:07 -0800 (PST)
X-Received: by 2002:adf:ec08:: with SMTP id x8mr27307843wrn.138.1580920867080;
        Wed, 05 Feb 2020 08:41:07 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id p5sm440744wrt.79.2020.02.05.08.41.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 05 Feb 2020 08:41:06 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 5 Feb 2020 16:41:05 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <216852231.1929.1580920866629.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 58 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1928_1764736313.1580920865826"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=MzEmroH5;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441
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

------=_Part_1928_1764736313.1580920865826
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
Author: Hawking Zhang <Hawking.Zhang@amd.com>

    drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call
</cut>

First few errors in logs of first_bad:
00:02:10 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:10 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:10 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1
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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/58/artifact/artifacts/build-2fe4750e8506da0f23ab80390b762b0d44a04fc5/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/58/artifact/artifacts/build-18348c5a4f2137db45a3348e59296b2f1d6aca5a/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/58/

Reproduce builds:
<cut>
mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5
cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/58/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/58/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/58/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/58/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/58/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/216852231.1929.1580920866629.JavaMail.javamailuser%40localhost.

------=_Part_1928_1764736313.1580920865826--
