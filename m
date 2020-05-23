Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBYWFUP3AKGQEKPRB32I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 279021DF618
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 10:46:27 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id e1sf2860208wrm.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 01:46:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590223586; cv=pass;
        d=google.com; s=arc-20160816;
        b=nGj43NLQcfq3QcOhzf0qSfjS1udsMTqP7EuVxi7Q8n8hTXRF2F3jMMD7dgI6G3WTJa
         fOV0MtLIf/PMAhUAHioWhZL9QZwy8BKMiyfd01JFdFdVxs7NY02mk9f3dXnggcEXfAx+
         DX/eoMlW/CEkNBREgalxPBKHeteIUvPuv3+M0FL6MYMGk3+OfXAuBUjgclSveyovv6OL
         nm+6iaglZSGlEnoJPH2spDmiInqeoq98duB6+iMZuYebZEgjh9POsu8NFhWxANtBr1WW
         omCs5g8QoTUdASD6i1sjfr6bFJb8ZEieSzKhwJ8QlR3B5DleivEm6GV9MY/nyN39145n
         +/YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=2r5h1X9gQPjeVOepwMt4VI8tp49RRGF2/t0dd81sh5Y=;
        b=yNwgTmaFo58lPedjaePrNAtQLNPPyvQRTTxLQSLI+R8/eQdGvpJt63+D7DAv7lJXAn
         sjKsnHAAQjXe44Kup3+2LneXnwecqT1FCLMO9TEur9t09/MA+J4yQ8v/oCTNxPO2sjCV
         PddjbkNzCv05Wbfy8uXNHqOo4FW9At8BrfU8tVY5v6KyjLm17swhH0o/8FxgESxJb7qN
         Kj1+6wp06jas+aININUMYZvcjVKHWv4LN16c4PONBQsffBveJE6QsvmqunqeErJJw1vd
         o3dMiZ5fq5ZahGndb92I0hBroZK2UBtrRrPEOYBf2xd+DUlo9lDW5pVgWjKV85F8Sg6l
         8tPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="O/n3O57z";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2r5h1X9gQPjeVOepwMt4VI8tp49RRGF2/t0dd81sh5Y=;
        b=Lt0BPGhFGWWXZHoHZaMBp8QIdbFonpIUaPHIvPcNJK/Ag5UBnLQw+rz2tFIU5v4Nt8
         EoikIkh5HMhHYX6mwwfGQ2mtt28CCRg4KV4iuFeK72Hn8LhDgqeV6FUfluvpJlQlaxf7
         7jTuC8wZM4lgNWLYQK7zfMGrssnpifcv1vjWRzRiVyLvK6+vqXy8NT7VyTn5rbhvA0XG
         onMFzg9J2P/DaMjDOSPt08c5UL+FfCVVLJu0IfDIhnNqEUP+2rgyYMI1JRtJSRITNBCL
         WtFf/rwy7RyFxXDj/mXd8xfkAZphaILsOsjM3JGpNCPKYV+MNiWREv8e+EUl6QP1Fy72
         zujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2r5h1X9gQPjeVOepwMt4VI8tp49RRGF2/t0dd81sh5Y=;
        b=qPBh3uwT4qeganXERwzTw84/zVQ7yQXiBQ1tGsGcVeE7EiHjtQOL7AywLfmCxmjPZG
         09luQgDRwFu6AJb6cbfRzGJF0Gd9bCscc5RrQp1HNmmv/XGcF4Dtcho08m46ho0/BmMu
         tjlRn2rMoMbez1OTJCtNTcyZ3tzXpiZlsiOMrs4rLsJwSoN/WsiKo007IXyMI5pHpwwP
         A9m6mxhOU4qh/BzGThYtBeX/u01yxTdMDPvbGs34crObKKF6Q712tUqTKc+FM/z3Ai3S
         E4FEopW5GxEqrFrRTw0RwW5Uz+j6MBJOTRrZzhpUCgnx/OE6NV7KXwqvImVxrkMGh78m
         8xAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hh0W0oRqkrbnZLlLEnrpT/EbseiGIASDA0ECnRIRAc2bhzmc2
	U77IdZxHddHlQ8/+NBllyOo=
X-Google-Smtp-Source: ABdhPJylmGZRxFJvNXunga8twyP4Q/o12FAOvDes0n+lPljsUv1/PvTmh5f0ptPrxIa8S+IJ4vT74g==
X-Received: by 2002:a7b:cc92:: with SMTP id p18mr17480752wma.174.1590223586825;
        Sat, 23 May 2020 01:46:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b441:: with SMTP id v1ls4082519wrd.3.gmail; Sat, 23 May
 2020 01:46:26 -0700 (PDT)
X-Received: by 2002:a5d:6541:: with SMTP id z1mr6658663wrv.264.1590223586327;
        Sat, 23 May 2020 01:46:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590223586; cv=none;
        d=google.com; s=arc-20160816;
        b=LekEuJAcsZVRAMCIMiwL2elLWYIpUp7Kxqop7XdWZga1pe29bvZYzIw0HCzG7YjIPh
         BJFHRN9eyBk6c6C1w0vDf0kjWFvh7Ap6hWZ29yHfvKvSMiomtgqm0QD6i07K9NvpJf+s
         xqJa2KEGy/tIUbVpou4/3MxUP5giNegE8DOgB0QdVmCGNZza2MEyxsUhKNM7HzihVQbj
         4T4CWxGCSaHWcPgoI2S+Z3cEXxjr2t5E8zq1cFpnMVL4rhIyFtSstyKveJ9I+sGh8MNT
         IDwdw92I4p25380VyAC1jIsjlh9ynhLx5qY1mhDJ+icqIrNmPYjNTp75TxumsyomxeFG
         zBsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=jyqxkkamioeg0o0kQjKGubVri4VLrpeBkv2+BOULvdA=;
        b=YtoSN6DqA4rOJnuS9WzDJw7GbPXc52zPt1lojPWsPPr7++mENeWbIiIMHinFeJuyvd
         cNuSeW8/ck0yslu4GnMxDuKVh9sBFhGnzJy+76gvePY0naOmLYoLFeksff0ueqYiHDgE
         tfJZT5mkC4hPBC/Censntl2PlUZgTCIkNqfNMRJueG8n41+V+pHBIOp/rQ9xZk8y1Bhg
         oRB8PvrSfcdqT21AAWV/rZfFbU0pId2/8iIDsqZ2dK6feUFLX1iModEhZvQFKnRz17jU
         cf/rtO8IJ4O7FtzBruJoIKvg00hVpf7mxnj//xqWX8gDvQV4zXKVgHmZ38pH1P53s3T7
         HTEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="O/n3O57z";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a2si702682wrv.4.2020.05.23.01.46.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 May 2020 01:46:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id g12so11345090wrw.1
        for <clang-built-linux@googlegroups.com>; Sat, 23 May 2020 01:46:26 -0700 (PDT)
X-Received: by 2002:adf:dd06:: with SMTP id a6mr5467898wrm.142.1590223585855;
        Sat, 23 May 2020 01:46:25 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id p3sm6552913wru.95.2020.05.23.01.46.25
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Sat, 23 May 2020 01:46:25 -0700 (PDT)
From: ci_notify@linaro.org
Date: Sat, 23 May 2020 08:46:24 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <50654726.1392.1590223585285.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 2 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1391_154304076.1590223584721"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="O/n3O57z";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::444
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

------=_Part_1391_154304076.1590223584721
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-release-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig

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
20205
# First few build errors in logs:
# 00:11:40 make[1]: *** [__modpost] Error 1
# 00:11:40 make: *** [modules] Error 2

from (for last_good == 0ea355ef78434ae3e8faffe605c98b62e07d1273)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27586
# linux build successful:
all
# linux boot successful:
boot

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/2/artifact/artifacts/build-0ea355ef78434ae3e8faffe605c98b62e07d1273/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/2/artifact/artifacts/build-7b9d428e05197b589d5b770a791231cf972bd2ed/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/2/

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="72bc15d0018ebfbc9c389539d636e2e9a9002b3b"

Reproduce builds:
<cut>
mkdir investigate-linux-7b9d428e05197b589d5b770a791231cf972bd2ed
cd investigate-linux-7b9d428e05197b589d5b770a791231cf972bd2ed

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/2/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/2/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/2/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/2/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/2/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/50654726.1392.1590223585285.JavaMail.javamailuser%40localhost.

------=_Part_1391_154304076.1590223584721--
