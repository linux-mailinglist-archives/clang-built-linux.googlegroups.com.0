Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBBEWT73AKGQEZD3XZNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 915191DE72D
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 14:52:20 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id w189sf4080914wmg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 05:52:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590151940; cv=pass;
        d=google.com; s=arc-20160816;
        b=fiXGH+24D0DoauD/0O3M33DSflGhhEHOuM4s9Jx9rXEY2cN2aTH4NLCSDJuubBJZUj
         BMOda9RJNmEckmS+GU6+wGtDFXlKcRFC85YmqL6DGpXRYKMHMIJHQCbzhgHAsZiabZFM
         8Xi5g2ZRA3w/6MZcycU66mApa/tLzNy/uU6Fyu1LqMWPefZuJeq8GdGaFB4NIW963NLJ
         f6hanRMY0suKZ1jIL+CzpDkcnqvOXkvL+bwf4A+u5/PLHaAQPkfjn2suJgzj51cEDG6I
         vKBYJOagLK+0evMX7pSpd/sbzADh5lckYlhQYYypS2QG1d8y43Xufz4Qwz6fCcoHjf1e
         FS7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=M6KMr/Rml8FPF1epQkWKktqLnj4Onpr5Vn9KCQe7ATA=;
        b=gnX5+DO38YkVKUGy1tshpPD+rhiZKaX4hdW5GYoiI/D2NoKDfUxaiCauQHCu+wuKQs
         nORSkE58dLPE9Wpaof5pAPdIX6g/kV61QOZ4+MyOCi88I93UUhkl7VQIaS6PO36CbKhO
         a7DkIv+woxobMswwdbKFU9R3oIaPdEOeZBqavxbkFbQ9bG8qW6RSxSbXFSO29h2tBE//
         6V/teXNt0q3priZUHJz1ak9+fMpfzuBtyNbznq6Y2Fza3+rjN7vzl957/dkh5yVWcSDe
         UeYNHO/m837+vyx5LjSjE+2IanXHu3nZrXq/8PeavKITltgyuH/5PuKPHAYNstJLuHJP
         ZMYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XkPQyUvE;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M6KMr/Rml8FPF1epQkWKktqLnj4Onpr5Vn9KCQe7ATA=;
        b=WWRZvHyE1yWKE8xQAAzGZvEEfL25sjxYLvanzaH5PUmst4+DcIEYAk+bNiBNZaJ8M7
         ia8f9BePIBCiwaEngD6Y3+p4GcwJDbbN9qzcameTLpqopDNnCrQWs7x8cHBivB/O+WTQ
         jlm5a1q8hPrgVIf2VFiMf0pqcRe7Smz/Qvk3L27C+UV2tqjN7xN4sqPOteQHA2cB5qmh
         gRj8CUDgX9EUPOtQry42ywI1vrOaBvpZLbPDd1Ih+0ZbfCMGyfsuqGGblA9qRLjhciUQ
         ZbpCmecf8nLMb+43VcekZ3rpGlExWZ1sqFNV7ISZ/yctbKt6/fvH1/MVxq1Jtf9iX/PS
         GJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M6KMr/Rml8FPF1epQkWKktqLnj4Onpr5Vn9KCQe7ATA=;
        b=FZ8+b8CaNotLiy1KK4Q6CzzKNCzdckdUys9zZh7e80JSc3wphwLDj2SeOOdcYIvMIF
         u0pgTMZt5e5B1ObNtHimrJFlzi3SOblUXA7FRdrjCLriqyTOieg7aDLIK0jXQazuRRv/
         x876NbuHIquLNHhdFQqaFIi0zvXm8S0+2IB6QgMMUmpWBKLlxChAzkqPOusJj/xokPf2
         7OCAYB109Lip+2dJ6fId29ZbXlIH7VUshIfiKL9tWp89MSI0VtbvyXDakd77xWmpZhT5
         yNaEPvLN7KEFvAq6JIHlkOQFvWi79CnCvBRNQ5nyGeZtvyKHECwFVsxspb+HddCWiU/+
         X4QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XzHGpmhOhovROWN3ogA7VXlRQKZvzPwroRajpncTD9sNNBs5t
	9tsoc9SzXVQLe3s1quCYngY=
X-Google-Smtp-Source: ABdhPJxHdKvo/aWwFmfcYLnOJ6fyKLkMsToKq55g1JETFjVC+HMT3Q/PjyGqRhYJT9PGeRcfAkhBnw==
X-Received: by 2002:a5d:49c5:: with SMTP id t5mr3449792wrs.18.1590151940243;
        Fri, 22 May 2020 05:52:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls1636635wrc.1.gmail; Fri, 22 May
 2020 05:52:19 -0700 (PDT)
X-Received: by 2002:adf:e38e:: with SMTP id e14mr3475448wrm.2.1590151939674;
        Fri, 22 May 2020 05:52:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590151939; cv=none;
        d=google.com; s=arc-20160816;
        b=dlo6eisqNdILmqu1kT2W6VLUeuRyNWUiivRLOCpV/55aJcc2s4UH9QW65PmDHS30fv
         DJTCDzP3kqV3ivflTAeW8SncZ9LKc16f0E6cKRYitPl1HGodEDOKLQZwB6uqPZ978+dH
         QEtpsZxBpJ4CWtBz28fryzRIjke3P6eXz651+UgqGFSlXQ+1PU/ixAdxTpheRLmFV3UV
         FsKUa6sqr+MPsG/aVMvLS0NICyWPAvJHTg06vI0P77nH+DmzkR+Cx5+h7SlxDrNcWEMn
         tlxL96F2M7ZmPnq39K8jB9JSvNqmJ/Ny6qdCcXKyNSLzmV08UDCJ5HSb4jmvlShzYHZ8
         a5Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=vdxbjNXEAH0R/Lc2euHVq6nfaksntL4j8UqATBl6/ko=;
        b=MDbhaE9xeGl7Kw9rzpwVTzMLUT0mM6dg+ntFC6jWU8ZB7WkYTifcDIC7tv9b0YNFQK
         o88aqy3zCOZK5MPzzEqs9TFfyNIJoyEBvvqXDbBz768bPndFi/ZwBETte46hwQpVrPZM
         SbUDMyBPJdPRsLT3JVSv8ZfeOezq6aMUZKoukJpxZOTFvxgGJykCZeP0g5KO+JEihoh2
         yqvzwrFkok+zEu2dsxJThlpdjLhbPWuAhrm6U8t1lEf93ZuJUR6EmGkwGOcAo/BigFlk
         jkSaQyrBnaUa+zYqpkPUHPac+u1eGyQFmnEiVC6Uj5c0LEdzdY7xWQKEX7jY3EI+FzVv
         cGQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XkPQyUvE;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a2si541429wrv.4.2020.05.22.05.52.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2020 05:52:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id e1so10055025wrt.5
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 05:52:19 -0700 (PDT)
X-Received: by 2002:a05:6000:120f:: with SMTP id e15mr3182752wrx.231.1590151939260;
        Fri, 22 May 2020 05:52:19 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id p4sm9500766wrq.31.2020.05.22.05.52.18
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 22 May 2020 05:52:18 -0700 (PDT)
From: ci_notify@linaro.org
Date: Fri, 22 May 2020 12:52:18 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <409374279.1306.1590151938724.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 4 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1305_1618822693.1590151938317"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XkPQyUvE;       spf=pass
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

------=_Part_1305_1618822693.1590151938317
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-release-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig

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
# 00:13:10 make[1]: *** [__modpost] Error 1
# 00:13:10 make: *** [modules] Error 2

from (for last_good == 0ea355ef78434ae3e8faffe605c98b62e07d1273)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27985
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/4/artifact/artifacts/build-0ea355ef78434ae3e8faffe605c98b62e07d1273/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/4/artifact/artifacts/build-7b9d428e05197b589d5b770a791231cf972bd2ed/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/4/

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
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/4/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/4/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/4/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/4/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-next-allmodconfig/4/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/409374279.1306.1590151938724.JavaMail.javamailuser%40localhost.

------=_Part_1305_1618822693.1590151938317--
