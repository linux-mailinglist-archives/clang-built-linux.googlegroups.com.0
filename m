Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB264U33AKGQEHY4CZDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9E61DFB9E
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 01:14:51 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id u9sf5708598ejz.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 May 2020 16:14:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590275691; cv=pass;
        d=google.com; s=arc-20160816;
        b=kt29UmMTx4iDjd1imV3+AL0ok50kEDBLw7pLCoJ28BSiSgJyduMuzT0y3CQLlev6Kv
         rAoRtZJCYK38ulqq4y160KEcuvPnEKvAJhwrKmjHBXVKbGpf7L4CTCZPW+J+xGuY8HVZ
         Eadx0LkAwh/AHztf7/t1PDmpIMAyWL8p+JE2WcuMpL3Zi0BCArwi7Iapkx9i0rlD6okw
         0wuZ5PsbR4b0mk3U3lXt9v9nKClxKhaJpqZXkGz2IYt4fDRTUxg+Rld2R5K0Ydv646hW
         RxpXGiyXWMgEk08D8DOooRM67qMOsUCjEs2KLF2WW1oiwpjzSvB5P5iY8e+HPg1RUaus
         poVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=GncNc0Z7TbFBDGFtzqiN2VL2QkOdm/BtQYhD8XiHlE4=;
        b=CKBd+UqRp4KVKNTt8W1wccDIOel8QCg/tzxzQU73aVKLW27JnT1boFH9FUpCgAlUsg
         66SZPnkwBAo6uJ6/A3ysjo3kTxo/QKf04oJ7IvwH8pTw9NSoinu9D6RzsG0Z6WMgswmP
         b+btVe8Ue9AaRABSGF5Ta3rwU3SCPm49aCcsA+6phNOMWTUhjseLhK8o2h7tCnnONLgQ
         L0StwpUz4pvbbg3Twy6RLyukGTzhMGdoQSOf1I/hid/oOVzIgPVrihaHWC0dVL/G4U4i
         EhCHBx2vTt3Yi6kFI7ki9r6ok/vN9bAl+0o1tPSUB16+SQcSYVYGRm4u8dmkQZFXE5ws
         /r8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bvljJ1KM;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GncNc0Z7TbFBDGFtzqiN2VL2QkOdm/BtQYhD8XiHlE4=;
        b=cYTVYGO5jtA8uywMGkHIEufjpBo2K7Wjpoyi7oUynR4mZN2ldfsA+hrhVPcpDRsGqN
         UHRZA9ItJU8sv4vrn1bVQMt0PNhS9unRqEyvTfyL41IjJ//0iKS5V7vHkqMf894ATw3C
         3oe94dQRRIIQEJxdUKBdcjIjomRcjCp/fymfM/49XPwGGJs5REzjtvbs/4kFjkm5QBvt
         +jGKXQ9zxkCj5l8VjhCU4tbpN/vCEo8RdIsNwp8SkCqfAMb5oElq4yCcqGx0fquGs7De
         07feuUBVucPvNCnv9UOJkf2GE7D0UCxLYFgyxa1MlGEP8O71kXvQFg6fFxftMaO9Oz8X
         EsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GncNc0Z7TbFBDGFtzqiN2VL2QkOdm/BtQYhD8XiHlE4=;
        b=iCp8HObhyKWRq0G8Lu/ikhmxztbprwxS3g4kSJAakhuGdya4A0hLBPMrSGaNdKgusH
         1G7RNefFSWkK+MELz+HnM/qr+UzC2YEg9UXL9d8eAdX2iOI4gcJFRLgUMi2nVnapeP3D
         2hf4JJHiSvPcuXo/aRPg5OqGIRVzBu8JKdoEGb9XezaqUEvfQQhLRO3JxBacx+9kx3x1
         hLVqc1GZhz2WpJO0rjVBerXK/RasnGg2Sns1pX6YnZed968flInrXq3KBrk+YMRTtvs5
         jV/YRH1YX4eYZndsEPFR2ascIXPCPNi2L3eqkhU1o0uJLOhcldT3LI0m63pdA6+FegSS
         YboA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CUHAhHLDaso4PEht3depjOYXNnlvNLYjvjSITzN5dCun976LQ
	GF8ARMqN26yYQ5i3fpMOXcc=
X-Google-Smtp-Source: ABdhPJz06a5tbpRRZU4RfFFotS/ALN7rKP9KwJ8zTS8H2rh+WisKQM9dBe2VEyPazdTehPfpBmjsBA==
X-Received: by 2002:a17:906:33c1:: with SMTP id w1mr14382856eja.313.1590275691480;
        Sat, 23 May 2020 16:14:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d2d2:: with SMTP id k18ls4984247edr.3.gmail; Sat, 23 May
 2020 16:14:51 -0700 (PDT)
X-Received: by 2002:a50:d619:: with SMTP id x25mr9014606edi.200.1590275690973;
        Sat, 23 May 2020 16:14:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590275690; cv=none;
        d=google.com; s=arc-20160816;
        b=Kqrx+pJcZT7MK42cgTlZMX01ZhqghwodoQGLGNt/VyVhU9oZ292SuMKRrruC5cIbAK
         DG9Y4jhtqTH3w/nYBgPseEv9mmZSKsvM0D5eBCdof0Ic989POqktOOxM95xDlATl4Q/l
         QfQzU/xqx0CM2Hlyl3XNR4UzvzdZ6EOO305LNNU8mkm+nPxjeFtUlWn8cBGUS2UUNXNf
         L4p8+vC6LeTvcfPJL7kWmJ8g6g0tC1Crm7jZCaWYruf84C/DggekAV20oAI4E6Q7RFBG
         02MSBpl2ByGb5YNbgXEEey9NEmXgr3N9qhFpD9Z5Sks1GQ9mnfnRYN3sLUPqpPUt3zzR
         S3aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=Xor7XUxeU0CFeHJNK3puqkr2jOwuPazBtfyVcmDqsnY=;
        b=sTec1lXYkorkhy1ybySbdCcvW6xWZ+Tis971XDzfGkDd7xS1eX5BcAgI61Oey4QQov
         Vsz+7Pl6XgZhs4tQBMp8ZL+4fgN9KhXHzoqJ12aF/ax0FOkob2havyygmHkmcYl5stPL
         FEbWw4dmH+/Thf/0eCZEBilKiEFUAoJ18PbEbq9DwB7+iw+Wt7ayLrFHvSbTAbr3/rb9
         Xmj9lyqv/CcKI0KBGkgNpnOhDYCQy5BiGwbVt/D91QTb2kDUQeo3Brws+jUMPtBblgvl
         wsFGZ7AB2wyREwFRs5vWLcr9Tm3FoEs/F2JhrvabYa7WjnU0edM6uIE7eI8ujdhuq8ml
         Rk7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bvljJ1KM;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o23si829029edz.4.2020.05.23.16.14.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 May 2020 16:14:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id l11so13869397wru.0
        for <clang-built-linux@googlegroups.com>; Sat, 23 May 2020 16:14:50 -0700 (PDT)
X-Received: by 2002:adf:f186:: with SMTP id h6mr1778157wro.22.1590275690639;
        Sat, 23 May 2020 16:14:50 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id 5sm13787336wmd.19.2020.05.23.16.14.49
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Sat, 23 May 2020 16:14:50 -0700 (PDT)
From: ci_notify@linaro.org
Date: Sat, 23 May 2020 23:14:49 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1710606215.1433.1590275690089.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-allmodconfig - Build # 3 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1432_1070455618.1590275689589"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=bvljJ1KM;       spf=pass
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

------=_Part_1432_1070455618.1590275689589
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-release-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
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
# 00:27:37 make[1]: *** [__modpost] Error 1
# 00:27:37 make: *** [modules] Error 2

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

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allmodconfig/3/artifact/artifacts/build-0ea355ef78434ae3e8faffe605c98b62e07d1273/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allmodconfig/3/artifact/artifacts/build-7b9d428e05197b589d5b770a791231cf972bd2ed/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allmodconfig/3/

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
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allmodconfig/3/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allmodconfig/3/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allmodconfig/3/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allmodconfig/3/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-next-allmodconfig/3/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1710606215.1433.1590275690089.JavaMail.javamailuser%40localhost.

------=_Part_1432_1070455618.1590275689589--
