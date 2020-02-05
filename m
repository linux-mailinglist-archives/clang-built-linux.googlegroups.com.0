Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB5G35TYQKGQE7AYM5UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE971539E2
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 22:04:52 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id f13sf2429783edy.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 13:04:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580936692; cv=pass;
        d=google.com; s=arc-20160816;
        b=KbpqamQRAIIYHdoOoMdbldhs/2p8VUKO1+BX3B5wFrGZOC9TuiTMCUsALBWExyfT1S
         uXub3ZiOaspQsN3TlHjlVIOYmH7GAoty0b5fJ6lHcdmmFcP17GiM+PXDp+HypHBtkGiI
         MBGt1gbT93t7Os9UvBOnWMhIjpPws62e41jWdrCsWcnli+glYFmIsYuPg6nnbPe8Wk3G
         503kZwKbkOxL1JCBJ1ok71VYiunjXWYpICDteq1gznjfDg9qdS9e3LgPnxN6TK0EMu1w
         7R/PhWPyOML3FKs4tszXfCxUu5COkJ6KUHXbSQm54gSizXwXgAlVUfRj2nTpcHPiCPOR
         b9Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=GQhXEXCABXcrJ7Zg2tI8JfSouMwKg/2YgTycd1huc/c=;
        b=n8fTYdgUCKhW2xTowx2X4Re17TOrRXXNgTD8gpzelAqtNko8vbPhiktH0G/P2rKohg
         yjAx+xwDkLQPVtFtElx/2ZpIUYWz+Ijv/alaQNxMfpwkMaIjJ1ep8zNDZI+WbQJk/jTk
         uFM0H5hpKTsyyxO5G1fdaraFkOp+y3qWBlbKgWPsXjTJO5pgTxXWK0N9nnOWi+drDPQv
         oVM/QsHLK0pk878VwOWbGGEoihPK6aRBhGkZowIGXOxaNQn3gP56LptXpeOarqDDZwhz
         SC728UAXIlF93PYfw/PChzl49eGMy2+YMUQr+J3QcI2Rn9tVM05LKCU3uVWIEOHi+/x0
         RceQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WOPC5+qV;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQhXEXCABXcrJ7Zg2tI8JfSouMwKg/2YgTycd1huc/c=;
        b=iwnjIrdPN9inzlW+5NXdM0PMFzRGjju+xshmc+DUNGUR4mD+8nFnqumFgtmicyvfQr
         kRNq2T62Rv1XCrYUi55c3Q5B23EmVyx8yRygB4HDmgT0vSErjVhzRf9jQ3taHTsyGRen
         v1HkCxbIKfBmtzv0XuCiSnwCaY9PpP1TmJBeVmF7CL9jOUQcbz1fOa73ix1FtFxjX3eR
         /JLCmwABHleLnkM7q1ORMXsua0ha1Vh6+rJt8FhFnLoED1/Md2wQ4vtcRPN+HwC3mIUh
         OGbQtHWtjW9+Y/jFHUMW/nTy8zJTSkzfZusfPVgY2xFJ35KeQLlgGwEMQld/QY5jLQL1
         O/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GQhXEXCABXcrJ7Zg2tI8JfSouMwKg/2YgTycd1huc/c=;
        b=S5ej+BS8lDmvHwGNMoPGtLSz8QsyEwJ2a/JQBeSyH48qxDuGprg3oZszTLWh5jjrm0
         gKqDewMjQJ+/bjpBzXxCLgxynRT01qD4CTPiF/SzUa+evCZbrNB8zzr+QUAYEXFxmhVY
         EenMa6zNvMa9qv6LwXKCtbyvVHUr6KDMb/WXV7YLWWsRGenCIl0FFk4K23xKA2ecp5kC
         CEcDbpPXzLmmGrQF17vxv9Ou6OKQwHBdwyiEA+aTIzbyBm3db3iWVZlnK5MynWIdusnA
         EpIFfJ18me2NmrAca3InyRuDV5eT82T8JFMxFZcOUDIMi7PKGBrBcXj1Usz7QuvWTCkj
         A5sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUs64gBLe6VEVGja9NaMGoc4ZPCaO9zh8aY7/LCCs8WoVEPlXyV
	dZFWmOrN8PMYJrdSV0FtWlc=
X-Google-Smtp-Source: APXvYqyU8shW/5/ClKVvqU5T6vlW3AKPsuzvADv+jNQJF+toQk4BxhtkbCI1o9UA9ivnlU0aEE5uRA==
X-Received: by 2002:a17:906:27cb:: with SMTP id k11mr32708174ejc.301.1580936692489;
        Wed, 05 Feb 2020 13:04:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls1456881ejb.1.gmail; Wed, 05
 Feb 2020 13:04:51 -0800 (PST)
X-Received: by 2002:a17:906:b301:: with SMTP id n1mr32469339ejz.285.1580936691944;
        Wed, 05 Feb 2020 13:04:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580936691; cv=none;
        d=google.com; s=arc-20160816;
        b=lYojgYanQciA97Bzystn0CTGmR9hE7EEMnhktGT/laRd3fnoYbrAoShF4D4qGkTCLw
         HTMWmp9cMt04jvBzW2+x9vII805vKNpyc8CDzxRiYXkG+8S6lT1G5eA6zYR6ELU/KLOx
         0gjd8kDbBrOBbBtBzjgPK7IufbxgxbWAn0f3WzKOlE3AggEXObGEoVJ58TgyeWtRn3fx
         XU+x4+56Y6Bc0NInZIt9ZQMd87ER3Mpp+tCAZcLzhtbX4xOTqOFZtKBJYb68hNxDy6Fc
         OSS/EiXWqirjKy5uYLJO6MwH/D3Fp+PAxp18IVtkot17gnL8t8/dmBMAtiq2VH7g/HWo
         Gjwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=O2XCBr0pOizBmUIAfrMYGDA12kjUgi5+/pfHYfzsb2U=;
        b=mg7bolnowtfykrZdE0rcE325HOcc1NiyE+uR5mspaLFXJE/rgo529w73y0+wDWz8+H
         6FEpY90gxE5n09BIAEUcztee8CI+ApUGjs6ZBhbeKspFw8Q0eoB00VhEcQKk2J0YRE2/
         V84omDgwfJrAX3nikPYHMck39dTA2Y7JqY4e0OBeL5b0xxOKbeVkRyhU8TUTjtiOZxP1
         KmLtkBps1/pD6glJLoagXEET+h71gkLEav13jrOZNKsn7edvxtzzkl1ma5Z5TQiMyNhl
         DvdsU2v1TxWh4g6oHjcwtppa/XfQWG8WR5Xm0T9jPbBnG6Gd4SbGAlCkhdhLIuyvSGcL
         wVng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=WOPC5+qV;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n21si47974eja.0.2020.02.05.13.04.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 13:04:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id s10so3985485wmh.3
        for <clang-built-linux@googlegroups.com>; Wed, 05 Feb 2020 13:04:51 -0800 (PST)
X-Received: by 2002:a05:600c:295d:: with SMTP id n29mr7701588wmd.101.1580936691494;
        Wed, 05 Feb 2020 13:04:51 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id d204sm940213wmd.30.2020.02.05.13.04.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 05 Feb 2020 13:04:50 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 5 Feb 2020 21:04:48 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <701191968.1964.1580936689998.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allmodconfig - Build # 74 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1963_513563032.1580936689036"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=WOPC5+qV;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343
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

------=_Part_1963_513563032.1580936689036
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
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
00:02:47 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:47 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
00:02:47 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1
00:04:26 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
00:04:26 make[2]: *** [drivers/gpu/drm] Error 2
00:04:26 make[1]: *** [drivers/gpu] Error 2
00:04:26 make: *** [drivers] Error 2
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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/74/artifact/artifacts/build-2fe4750e8506da0f23ab80390b762b0d44a04fc5/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/74/artifact/artifacts/build-18348c5a4f2137db45a3348e59296b2f1d6aca5a/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/74/

Reproduce builds:
<cut>
mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5
cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/74/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/74/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/74/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/74/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allmodconfig/74/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/701191968.1964.1580936689998.JavaMail.javamailuser%40localhost.

------=_Part_1963_513563032.1580936689036--
