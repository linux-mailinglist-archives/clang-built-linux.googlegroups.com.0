Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBUUEVX3AKGQEYP6KKCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D6F1E05B2
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 05:58:10 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id dk23sf6898161edb.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 20:58:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590379090; cv=pass;
        d=google.com; s=arc-20160816;
        b=jwMU5VNyhEH5ciUWEHleWHcsEycpxHUZDorODI62Ehl6BCXRFhbgXmXGGnD8Ybpkpi
         SNAOmHO8X92ZEsBuVJqrlcpLgXmd5H2i2Ur8K/jF4CjCB6SPnzlGXQTzL9On1jndqDn3
         POlYIvJ+Vyblva7OiGDYXPYFAXNoaYBvYYbVa2SlW7lpRBNFN3tKwbkW+0jjkVXumubz
         ELhRyp6EN8Bh1RvcP/2EUsrbcDYm3JU/x1f9OqD8VIleu2lSSyFux3Frd5+L0IOFPUUw
         VlGZzWu/eDvSFQrb9jimCRBnasmw4ljJJGoaoSWdx8WcYfvVtFhba5AOOx5EiZZu1glj
         kADw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ursbQ9z6L0uf2AuLaZ7zk+ieWJkZLMepvLagVaIX1vU=;
        b=zfwlv7NTmnstRTvrFGzIDUhHtSVq27dPLoajrj6wLsacnN9uS2kMVdsl0tOwY2pyLg
         NGv8eTwN3Vr0oDbTYkTXeuU/QLuoGUJE/ZjwMy6YLF3DZ61QTbhtblmbWHXABOnLjEJR
         +dG4oK6r/5V9SqVOZfmM7L3xLH3QQfn2NYBFuPfURGheHIDWzgrVweR6Mrj70wg8/ruA
         iY4RObfxzZfla0/So4hi9nkgyx6ay3JVqScFY/rGqritdCCsYKR6YSAnyy+Xy26PKa5Y
         veVJKAg6RKcyYkMYPEr6VKda8S1fa/ZFHXZvQZMrykKFb3fXMeI1jpNyjpYUgWZU0lOF
         EIPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Gmu9wONV;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ursbQ9z6L0uf2AuLaZ7zk+ieWJkZLMepvLagVaIX1vU=;
        b=BnMmKwd91KDjsSYuKUIPDUyhP4Gr+OafMvFZx6S9lkIslxA/XTGRgZdbWHOHW6wJtx
         ahpKQAGwyfZCzpMU7amBHp9xezel/5MvGD4f/7tiB/jLHXw5Pl34djCmiff9OsNvJUem
         YwbrrkdzSHiBfvq03bIQNfL09zdgFdHjfd5+5pxTnBJOaGgUQOXxen7TbfLhtn6TN6p+
         /xK4WsyWkAy0zgrldzcVtFop4CsXkmWjAcrgw0AT6aYnQTIjGQYVV//lQg3iwhCRQOck
         n6cg/pTU2V3nB3og6jLkA2TrbO7j1N0MEi+Qi1enkwgnNKvuyUhGowahXmzedXw/IypM
         hUMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ursbQ9z6L0uf2AuLaZ7zk+ieWJkZLMepvLagVaIX1vU=;
        b=ssFLdmckH1MvfEv1DzC1rHNhuA+Lm02YkyfxJ22TFoiPwRDHQYfucENl75a5xnNn5L
         VhF2s7l3L7/q8iqsrMoJTu1nfFBEoScYPbC68rudkhYTtt+VikwGGbfbUcL0TRY0gOBY
         Kx+Sc2cTAv0StuaOPnar/WGAFd4h8fc3/Eav/GDk0YYHaMQ3vjqV+9LrMdXQu5usVMVS
         Ip4yHfqoEue3VT2B3I7C//r2dzQnBcUagMN55/gHifjg8VsPgMQBXKc1ZHjRRgyWkyka
         rpWAjt00wZmHe3hjQVoQCrrqm39nMBzch+FSknT39N0g8lp/GAtIVEkxclnOYA/pvwCc
         jaug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+uuQrVJNO2Vphe60K+oF8M9O7Km1ZJTJAs39MfaVk+Kb3jK2u
	ccIiQ7JKesOBin3j+651940=
X-Google-Smtp-Source: ABdhPJzipYqktKu/aFoUuJFl44+8EoFGeCe/MIEfFnqsxt+/oX1/ehl7lu+GM+1bJ+RGv+iEM7W9Gw==
X-Received: by 2002:a17:906:57d6:: with SMTP id u22mr17193812ejr.49.1590379090203;
        Sun, 24 May 2020 20:58:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:9508:: with SMTP id u8ls3316343ejx.8.gmail; Sun, 24
 May 2020 20:58:09 -0700 (PDT)
X-Received: by 2002:a17:906:7b52:: with SMTP id n18mr17678620ejo.292.1590379089711;
        Sun, 24 May 2020 20:58:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590379089; cv=none;
        d=google.com; s=arc-20160816;
        b=ghO37ul4S2PlxPKgggWjs+lytjrPGUsHPoZIPnNEMt6ywRC3ZN3H9xr2Xwkgk/Aab9
         WGEdz8YE0UWQjisIHoTpeTmrDmwhPiFbQOuObmpe+C6GsKebdsnI40OmgROed+jkL/w3
         gfTgPKVO1SDIXLaiee+hrTnd7JLBqCdyJ6oo7uE1RlxtfGcgGx0idvOVfyq39C/lR0+f
         UAqXXnJ+xc03p3d41LJpMMD/UyY3PnQjDwcu+5MoJZHVxCo1pIyDOZrQmre5iiwDI8nC
         oKPlL3Q+6rJi5M77k+1RPPfIEKPd6tojjqXeNr5kr+iWhrC2BYrFtwRkKeYg3gfDAjLj
         UspQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=RXPfpzSq5HcYIBIZtdEue/ShYJXC/e6Ut30wWDQ6Py4=;
        b=Jyhv5DCHwiNx2VsL44YOCCyOsdUupYOGWuflzAESa5+wTdF5MqPIYOZ5vlsNr9tcQR
         oG4YAvy0qCzr/jGFgTAXxOMbYA9mzh8AzkQXGl5YBZjwU/ep0rY1AiPGQHrbzi0z64oZ
         zElVmrL/t+GTWSOC+LjNeB9RQANVK5JRbwg0OcX0SeEtI7/aId6cywuN3nh7M19MAnfD
         PdYjNqMZhZRBvF4yGZ5XfcmMC+wmOYHP5YN35+ykCoD9UWw67/KvHVzsifKNk4rQ3zIU
         uQ+F/FizBy4TLi5NCMHDhcoKax+DtF4YC/Vn4UZS6QKIadtdydWwhVnM7JiFNvVDLVo8
         0CLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Gmu9wONV;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id cm25si766325edb.5.2020.05.24.20.58.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 20:58:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id y5so2148250wmi.5
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 20:58:09 -0700 (PDT)
X-Received: by 2002:a1c:4e0e:: with SMTP id g14mr23254669wmh.0.1590379089432;
        Sun, 24 May 2020 20:58:09 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id m13sm16464165wmi.42.2020.05.24.20.58.08
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Sun, 24 May 2020 20:58:08 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 25 May 2020 03:58:08 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <832171545.1623.1590379088959.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 5 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1622_1960213520.1590379088563"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Gmu9wONV;       spf=pass
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

------=_Part_1622_1960213520.1590379088563
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-arm-next-allmodconfig
 - tcwg_kernel/gnu-release-aarch64-next-allmodconfig
 - tcwg_kernel/gnu-release-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 7b9d428e05197b589d5b770a791231cf972bd2ed
Author: Rob Herring <robh@kernel.org>

    mfd: vexpress-sysreg: Support building as a module
</cut>

Results regressed to (for first_bad == 7b9d428e05197b589d5b770a791231cf972bd2ed)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
20464
# First few build errors in logs:
# 00:13:07 make[1]: *** [__modpost] Error 1
# 00:13:07 make: *** [modules] Error 2

from (for last_good == 0ea355ef78434ae3e8faffe605c98b62e07d1273)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27985
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/5/artifact/artifacts/build-0ea355ef78434ae3e8faffe605c98b62e07d1273/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/5/artifact/artifacts/build-7b9d428e05197b589d5b770a791231cf972bd2ed/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/5/

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="9b1f2cbdb6d3062c468d3f9b579501f0f7ce330b"

Reproduce builds:
<cut>
mkdir investigate-linux-7b9d428e05197b589d5b770a791231cf972bd2ed
cd investigate-linux-7b9d428e05197b589d5b770a791231cf972bd2ed

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/5/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/5/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/5/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 7b9d428e05197b589d5b770a791231cf972bd2ed
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 0ea355ef78434ae3e8faffe605c98b62e07d1273
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/5/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/5/consoleText

Full commit:
<cut>
commit 7b9d428e05197b589d5b770a791231cf972bd2ed
Author: Rob Herring <robh@kernel.org>
Date:   Wed Apr 29 15:58:20 2020 -0500

    mfd: vexpress-sysreg: Support building as a module
    
    Enable building the vexpress-sysreg driver as a module.
    
    As deferred probe between the vexpress components works now, we don't
    need to create struct devices early with of_platform_device_create().
    
    Cc: Liviu Dudau <liviu.dudau@arm.com>
    Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Cc: Linus Walleij <linus.walleij@linaro.org>
    Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
    Acked-by: Lee Jones <lee.jones@linaro.org>
    Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/mfd/Kconfig           |  2 +-
 drivers/mfd/vexpress-sysreg.c | 15 ++++-----------
 2 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index b1311dea2da1..792766558328 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2028,7 +2028,7 @@ config MCP_UCB1200_TS
 endmenu
 
 config MFD_VEXPRESS_SYSREG
-	bool "Versatile Express System Registers"
+	tristate "Versatile Express System Registers"
 	depends on VEXPRESS_CONFIG && GPIOLIB
 	default y
 	select GPIO_GENERIC_PLATFORM
diff --git a/drivers/mfd/vexpress-sysreg.c b/drivers/mfd/vexpress-sysreg.c
index 9fb37fa689e0..eeeeb1d26d5d 100644
--- a/drivers/mfd/vexpress-sysreg.c
+++ b/drivers/mfd/vexpress-sysreg.c
@@ -8,6 +8,7 @@
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/mfd/core.h>
+#include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/platform_data/syscon.h>
 #include <linux/platform_device.h>
@@ -151,6 +152,7 @@ static const struct of_device_id vexpress_sysreg_match[] = {
 	{ .compatible = "arm,vexpress-sysreg", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, vexpress_sysreg_match);
 
 static struct platform_driver vexpress_sysreg_driver = {
 	.driver = {
@@ -160,14 +162,5 @@ static struct platform_driver vexpress_sysreg_driver = {
 	.probe = vexpress_sysreg_probe,
 };
 
-static int __init vexpress_sysreg_init(void)
-{
-	struct device_node *node;
-
-	/* Need the sysreg early, before any other device... */
-	for_each_matching_node(node, vexpress_sysreg_match)
-		of_platform_device_create(node, NULL, NULL);
-
-	return platform_driver_register(&vexpress_sysreg_driver);
-}
-core_initcall(vexpress_sysreg_init);
+module_platform_driver(vexpress_sysreg_driver);
+MODULE_LICENSE("GPL v2");
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/832171545.1623.1590379088959.JavaMail.javamailuser%40localhost.

------=_Part_1622_1960213520.1590379088563--
