Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBEPEVKEAMGQECIZO5MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8616C3E042E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 17:28:17 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id q19-20020a1709064cd3b02904c5f93c0124sf947471ejt.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 08:28:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628090897; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ls8pCCVwlwF3fWiOcdRUKNMda11yPGl5lNzSTlkYubhE+/UYqJpl83Pkcw7V7QsMV6
         mc+Rd52/EtDRwX6OzPTFpc3hmK9ZpJTgRUobCMuL9FFvsvY6bgJ+VD/ZsWfpMZy5bceJ
         W0PlqGMYHAT/cQR30OEr1GKgud+4KnvB0mW3GJajV059yGXKyPqyR4BIX+LiXfGb6aAv
         wIq0tFg22Jv8T9FtDakX6uX9pez7aKDU9KdZ2veIiGpWnNz3BP5IuKNYbYhVRnONsPKx
         x1d9kFr9y4NQyhzEkR9i0awybTPWbwE04XAxTnT7aqNnoMtylfxW0sqMMPzkOaeFeyEa
         QXMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=W6zn/icshr7gNdycTWQBG7X2q58ZNBMnAXWVPzwruTw=;
        b=es77z9LSBmcEq/oTbkJquxm8y1LMl8TWQf73DDZ30zl6GEvXQUQLXNpxDtCoDXPYDu
         rbtqqdN9WJgS785nicp61Ve840LAIkjPx3W0tlq64K5DKvFmTsC1ZZhuEp6rc64+rIXa
         nopzuu+0ZWE9iL7woLHvoJsM9taaKW7HtWdtBpfIc6GPysm5MGdzMzqgSoRN8ge9LPBb
         6VdITCxKLOCQXug4Zy8PQ9Atb+DdJ78zEPGidfUtwQNXb8eQOT1xliUD/6+k+VdRzln+
         ykh5YQTGGK+a2KgMxolUYPsNFGMEx2HZP9McyCeko4x7SMiIxt9bxNMmQujyXRKaYW0B
         6ZNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QPDhmoCV;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W6zn/icshr7gNdycTWQBG7X2q58ZNBMnAXWVPzwruTw=;
        b=P8haztT2rJBUQg3n4Ja2fl1kYfP7I/U5TGKHh3LSQQYibyA4xqoATZldZLsYM05c8d
         Z5LIgwVhqQNVE4kDSL2hURErNybCSLpyHlArYt9EFnZs1jIe/ZsbZhtngY+n+GWeGNrC
         NhKjxtnrEXd7nWsROww39kIUwd0czgz1gxbaG/pIBFA+CPQe3/0WB2hzRz4HDJifNbdt
         rHiTH7FQ44uR43Ae0rHi0qejtSF16uCz4s2EZw4hEyAk9yMGHX2ux023kUqMaFS+BFtD
         /QgoKIdyXlgSRWqqfYSbJR4+BpNtlaDSAF7cKct5lhOJagSDwn40HyqQn7TGAsaQSIs3
         sW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W6zn/icshr7gNdycTWQBG7X2q58ZNBMnAXWVPzwruTw=;
        b=TkpDtm0p/0fR8C7QCa81wuiUz9c4vqlls0Rn/onEmq0vLkpXCC5+gTmfdZcQRGuxyK
         0Nj96+4NObwY/byQv99mT91vloyDE9y0LAGBe+zVLYql+nx2u/DREo80YcZVyF1z6vLv
         AE/XW5S+Ll/yiG22RXh2ZRCGrBAqaFxbkIoiFp5IRGTDPcPc0Zb+puXGgTbcglzJxci7
         AMPABmE/InaASS2CU97dQaV20WLMBHBIAnetsxUbOAmMC08mA4FTVUkpM3C5t/0+PcC1
         0Ed/l3RAuEZAqOTo7vBxSlKetE53f6TU95ilE/eo+H+SKjwHFn0FW12m5Pfcqt7+NohR
         H01Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MQAyQx6hUr3hNvrSfgx8eRI/FoUQhz+aLb576N3kwqcLrwD1x
	s+Bx6HApxxiYDxSmj3tkWPs=
X-Google-Smtp-Source: ABdhPJw8vSRDbVN9g6K2XfvplQn6vaq2JqI3iM6L7DX7HIylYeNY0YcVZp1qurJLBjD5f9wKDi9xUA==
X-Received: by 2002:a05:6402:1d3a:: with SMTP id dh26mr354944edb.250.1628090897244;
        Wed, 04 Aug 2021 08:28:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:fa0e:: with SMTP id lo14ls1238816ejb.8.gmail; Wed,
 04 Aug 2021 08:28:16 -0700 (PDT)
X-Received: by 2002:a17:906:705:: with SMTP id y5mr25671348ejb.149.1628090896229;
        Wed, 04 Aug 2021 08:28:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628090896; cv=none;
        d=google.com; s=arc-20160816;
        b=EmfPtFoF/syuBn7tbUp5wPXHB/gzBDzgmXqOYbTH2EKcChsi8Kjhcdm4OyWpq2YNSZ
         6VDo7lxJM5gfuLlvGF8iSWoUpmvBFfB7oszj8KhcQ+CeALOeH6YsuGneCu4iYq50QGef
         ZreuSk6SaltOJCGnzSUaCBeSaAnROiBkcoBdkg+49Tsj42NF6PRudpRV92NB24hO5uEr
         W8oLxaFgkpi0MYbQlbkjsiHSlwVZrpQP3bnmLDHClL8U2iJ6psBj9mPDCJ6El0pjlO1G
         W32t4iqmWvBnD7+A/WfsXl1uJ0PwnfKNtAq8xkfEs9KvCUP+c7xulo0Iv1DbJwp9JEJk
         ouTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=QqMw53rs8F9WPTV2uBmkc2mnqv8ZK5t4xbO8EiIOSa4=;
        b=FvKwTc/bF3dDjfTnz/Dgbo2YpfAzefYJOr9YAX86Qmc0NJYO2VmOApn/GtnlzKlGYh
         DbbwZL4kHCp5NKJl7ym7JByUZ83NHUJX8cPdC4N0otoaUXC4TdIlbYbBoDoxl8LDZnV8
         I0+9/M8k4BiXc+EDA8wnFfBlja0PblYUkfpUZoCtdmJEySEim9l3I2MpMhZ0XvlmDgVR
         zycmY7JHKTmbG6FX6kj7zc/eDLm5DTnlCa8kvRZm+8NuxjuLoMs05U4hrA8xV4l6Na2f
         1jzRhSOWEcmRs2Z8bRPgk6hrHzRG0xMOW+LBtl7PO1GMuk+9JX9davWWjt/gPTn0maZq
         oTDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QPDhmoCV;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id z11si165409edb.0.2021.08.04.08.28.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 08:28:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id b13so2723694wrs.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 08:28:16 -0700 (PDT)
X-Received: by 2002:a5d:410e:: with SMTP id l14mr9203111wrp.337.1628090895771;
        Wed, 04 Aug 2021 08:28:15 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id u2sm2522924wmc.42.2021.08.04.08.28.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Aug 2021 08:28:15 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 4 Aug 2021 15:28:13 +0000 (UTC)
To: tcwg-validation@linaro.org, Linus Walleij <linus.walleij@linaro.org>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <1097075110.2060.1628090895087@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-stable-allyesconfig - Build # 9 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2059_1896554781.1628090894043"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-stable-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=QPDhmoCV;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42f
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

------=_Part_2059_1896554781.1628090894043
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-stable-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-stable-allyesconfig

Culprit:
<cut>
commit 341db343768bc44f3512facc464021730d64071c
Author: Linus Walleij <linus.walleij@linaro.org>
Date:   Sun May 23 00:50:39 2021 +0200

    power: supply: ab8500: Move to componentized binding
    
    [ Upstream commit 1c1f13a006ed0d71bb5664c8b7e3e77a28da3beb ]
    
    The driver has problems with the different components of
    the charging code racing with each other to probe().
    
    This results in all four subdrivers populating battery
    information to ascertain that it is populated for their
    own needs for example.
    
    Fix this by using component probing and thus expressing
    to the kernel that these are dependent components.
    The probes can happen in any order and will only acquire
    resources such as state container, regulators and
    interrupts and initialize the data structures, but no
    execution happens until the .bind() callback is called.
    
    The charging driver is the main component and binds
    first, then bind in order the three subcomponents:
    ab8500-fg, ab8500-btemp and ab8500-chargalg.
    
    Do some housekeeping while we are moving the code around.
    Like use devm_* for IRQs so as to cut down on some
    boilerplate.
    
    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
    Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
    Signed-off-by: Sasha Levin <sashal@kernel.org>
</cut>

Results regressed to (for first_bad == 341db343768bc44f3512facc464021730d64071c)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
19634
# First few build errors in logs:
# 00:03:00 drivers/power/supply/ab8500_fg.c:3061:32: error: use of undeclared identifier 'np'
# 00:03:00 make[3]: *** [scripts/Makefile.build:273: drivers/power/supply/ab8500_fg.o] Error 1
# 00:03:05 make[2]: *** [scripts/Makefile.build:516: drivers/power/supply] Error 2
# 00:03:05 make[1]: *** [scripts/Makefile.build:516: drivers/power] Error 2
# 00:03:54 make: *** [Makefile:1847: drivers] Error 2

from (for last_good == dc72a15859b2e604abb8a4bff123fbac8a0be92a)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
19722
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/build-dc72a15859b2e604abb8a4bff123fbac8a0be92a/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/build-341db343768bc44f3512facc464021730d64071c/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-stable-allyesconfig/9/

Configuration details:


Reproduce builds:
<cut>
mkdir investigate-linux-341db343768bc44f3512facc464021730d64071c
cd investigate-linux-341db343768bc44f3512facc464021730d64071c

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach 341db343768bc44f3512facc464021730d64071c
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach dc72a15859b2e604abb8a4bff123fbac8a0be92a
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-stable-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-stable-allyesconfig/9/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-arm-stable-allyesconfig/9/consoleText

Full commit (up to 1000 lines):
<cut>
commit 341db343768bc44f3512facc464021730d64071c
Author: Linus Walleij <linus.walleij@linaro.org>
Date:   Sun May 23 00:50:39 2021 +0200

    power: supply: ab8500: Move to componentized binding
    
    [ Upstream commit 1c1f13a006ed0d71bb5664c8b7e3e77a28da3beb ]
    
    The driver has problems with the different components of
    the charging code racing with each other to probe().
    
    This results in all four subdrivers populating battery
    information to ascertain that it is populated for their
    own needs for example.
    
    Fix this by using component probing and thus expressing
    to the kernel that these are dependent components.
    The probes can happen in any order and will only acquire
    resources such as state container, regulators and
    interrupts and initialize the data structures, but no
    execution happens until the .bind() callback is called.
    
    The charging driver is the main component and binds
    first, then bind in order the three subcomponents:
    ab8500-fg, ab8500-btemp and ab8500-chargalg.
    
    Do some housekeeping while we are moving the code around.
    Like use devm_* for IRQs so as to cut down on some
    boilerplate.
    
    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
    Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
    Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/power/supply/ab8500-bm.h       |   4 +
 drivers/power/supply/ab8500_btemp.c    | 118 +++++-------
 drivers/power/supply/ab8500_charger.c  | 339 +++++++++++++++++++--------------
 drivers/power/supply/ab8500_fg.c       | 136 +++++++------
 drivers/power/supply/abx500_chargalg.c | 116 ++++++-----
 5 files changed, 379 insertions(+), 334 deletions(-)

diff --git a/drivers/power/supply/ab8500-bm.h b/drivers/power/supply/ab8500-bm.h
index 41c69a4f2a1f..012595a9d269 100644
--- a/drivers/power/supply/ab8500-bm.h
+++ b/drivers/power/supply/ab8500-bm.h
@@ -730,4 +730,8 @@ int ab8500_bm_of_probe(struct device *dev,
 		       struct device_node *np,
 		       struct abx500_bm_data *bm);
 
+extern struct platform_driver ab8500_fg_driver;
+extern struct platform_driver ab8500_btemp_driver;
+extern struct platform_driver abx500_chargalg_driver;
+
 #endif /* _AB8500_CHARGER_H_ */
diff --git a/drivers/power/supply/ab8500_btemp.c b/drivers/power/supply/ab8500_btemp.c
index fdfcd59fc43e..3598b5a748e7 100644
--- a/drivers/power/supply/ab8500_btemp.c
+++ b/drivers/power/supply/ab8500_btemp.c
@@ -13,6 +13,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/device.h>
+#include <linux/component.h>
 #include <linux/interrupt.h>
 #include <linux/delay.h>
 #include <linux/slab.h>
@@ -932,26 +933,6 @@ static int __maybe_unused ab8500_btemp_suspend(struct device *dev)
 	return 0;
 }
 
-static int ab8500_btemp_remove(struct platform_device *pdev)
-{
-	struct ab8500_btemp *di = platform_get_drvdata(pdev);
-	int i, irq;
-
-	/* Disable interrupts */
-	for (i = 0; i < ARRAY_SIZE(ab8500_btemp_irq); i++) {
-		irq = platform_get_irq_byname(pdev, ab8500_btemp_irq[i].name);
-		free_irq(irq, di);
-	}
-
-	/* Delete the work queue */
-	destroy_workqueue(di->btemp_wq);
-
-	flush_scheduled_work();
-	power_supply_unregister(di->btemp_psy);
-
-	return 0;
-}
-
 static char *supply_interface[] = {
 	"ab8500_chargalg",
 	"ab8500_fg",
@@ -966,6 +947,40 @@ static const struct power_supply_desc ab8500_btemp_desc = {
 	.external_power_changed	= ab8500_btemp_external_power_changed,
 };
 
+static int ab8500_btemp_bind(struct device *dev, struct device *master,
+			     void *data)
+{
+	struct ab8500_btemp *di = dev_get_drvdata(dev);
+
+	/* Create a work queue for the btemp */
+	di->btemp_wq =
+		alloc_workqueue("ab8500_btemp_wq", WQ_MEM_RECLAIM, 0);
+	if (di->btemp_wq == NULL) {
+		dev_err(dev, "failed to create work queue\n");
+		return -ENOMEM;
+	}
+
+	/* Kick off periodic temperature measurements */
+	ab8500_btemp_periodic(di, true);
+
+	return 0;
+}
+
+static void ab8500_btemp_unbind(struct device *dev, struct device *master,
+				void *data)
+{
+	struct ab8500_btemp *di = dev_get_drvdata(dev);
+
+	/* Delete the work queue */
+	destroy_workqueue(di->btemp_wq);
+	flush_scheduled_work();
+}
+
+static const struct component_ops ab8500_btemp_component_ops = {
+	.bind = ab8500_btemp_bind,
+	.unbind = ab8500_btemp_unbind,
+};
+
 static int ab8500_btemp_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -1011,14 +1026,6 @@ static int ab8500_btemp_probe(struct platform_device *pdev)
 	psy_cfg.num_supplicants = ARRAY_SIZE(supply_interface);
 	psy_cfg.drv_data = di;
 
-	/* Create a work queue for the btemp */
-	di->btemp_wq =
-		alloc_workqueue("ab8500_btemp_wq", WQ_MEM_RECLAIM, 0);
-	if (di->btemp_wq == NULL) {
-		dev_err(dev, "failed to create work queue\n");
-		return -ENOMEM;
-	}
-
 	/* Init work for measuring temperature periodically */
 	INIT_DEFERRABLE_WORK(&di->btemp_periodic_work,
 		ab8500_btemp_periodic_work);
@@ -1031,7 +1038,7 @@ static int ab8500_btemp_probe(struct platform_device *pdev)
 		AB8500_BTEMP_HIGH_TH, &val);
 	if (ret < 0) {
 		dev_err(dev, "%s ab8500 read failed\n", __func__);
-		goto free_btemp_wq;
+		return ret;
 	}
 	switch (val) {
 	case BTEMP_HIGH_TH_57_0:
@@ -1050,30 +1057,28 @@ static int ab8500_btemp_probe(struct platform_device *pdev)
 	}
 
 	/* Register BTEMP power supply class */
-	di->btemp_psy = power_supply_register(dev, &ab8500_btemp_desc,
-					      &psy_cfg);
+	di->btemp_psy = devm_power_supply_register(dev, &ab8500_btemp_desc,
+						   &psy_cfg);
 	if (IS_ERR(di->btemp_psy)) {
 		dev_err(dev, "failed to register BTEMP psy\n");
-		ret = PTR_ERR(di->btemp_psy);
-		goto free_btemp_wq;
+		return PTR_ERR(di->btemp_psy);
 	}
 
 	/* Register interrupts */
 	for (i = 0; i < ARRAY_SIZE(ab8500_btemp_irq); i++) {
 		irq = platform_get_irq_byname(pdev, ab8500_btemp_irq[i].name);
-		if (irq < 0) {
-			ret = irq;
-			goto free_irq;
-		}
+		if (irq < 0)
+			return irq;
 
-		ret = request_threaded_irq(irq, NULL, ab8500_btemp_irq[i].isr,
+		ret = devm_request_threaded_irq(dev, irq, NULL,
+			ab8500_btemp_irq[i].isr,
 			IRQF_SHARED | IRQF_NO_SUSPEND | IRQF_ONESHOT,
 			ab8500_btemp_irq[i].name, di);
 
 		if (ret) {
 			dev_err(dev, "failed to request %s IRQ %d: %d\n"
 				, ab8500_btemp_irq[i].name, irq, ret);
-			goto free_irq;
+			return ret;
 		}
 		dev_dbg(dev, "Requested %s IRQ %d: %d\n",
 			ab8500_btemp_irq[i].name, irq, ret);
@@ -1081,23 +1086,16 @@ static int ab8500_btemp_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, di);
 
-	/* Kick off periodic temperature measurements */
-	ab8500_btemp_periodic(di, true);
 	list_add_tail(&di->node, &ab8500_btemp_list);
 
-	return ret;
+	return component_add(dev, &ab8500_btemp_component_ops);
+}
 
-free_irq:
-	/* We also have to free all successfully registered irqs */
-	for (i = i - 1; i >= 0; i--) {
-		irq = platform_get_irq_byname(pdev, ab8500_btemp_irq[i].name);
-		free_irq(irq, di);
-	}
+static int ab8500_btemp_remove(struct platform_device *pdev)
+{
+	component_del(&pdev->dev, &ab8500_btemp_component_ops);
 
-	power_supply_unregister(di->btemp_psy);
-free_btemp_wq:
-	destroy_workqueue(di->btemp_wq);
-	return ret;
+	return 0;
 }
 
 static SIMPLE_DEV_PM_OPS(ab8500_btemp_pm_ops, ab8500_btemp_suspend, ab8500_btemp_resume);
@@ -1107,7 +1105,7 @@ static const struct of_device_id ab8500_btemp_match[] = {
 	{ },
 };
 
-static struct platform_driver ab8500_btemp_driver = {
+struct platform_driver ab8500_btemp_driver = {
 	.probe = ab8500_btemp_probe,
 	.remove = ab8500_btemp_remove,
 	.driver = {
@@ -1116,20 +1114,6 @@ static struct platform_driver ab8500_btemp_driver = {
 		.pm = &ab8500_btemp_pm_ops,
 	},
 };
-
-static int __init ab8500_btemp_init(void)
-{
-	return platform_driver_register(&ab8500_btemp_driver);
-}
-
-static void __exit ab8500_btemp_exit(void)
-{
-	platform_driver_unregister(&ab8500_btemp_driver);
-}
-
-device_initcall(ab8500_btemp_init);
-module_exit(ab8500_btemp_exit);
-
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Johan Palsson, Karl Komierowski, Arun R Murthy");
 MODULE_ALIAS("platform:ab8500-btemp");
diff --git a/drivers/power/supply/ab8500_charger.c b/drivers/power/supply/ab8500_charger.c
index a9be10eb2c22..af32cfae9f19 100644
--- a/drivers/power/supply/ab8500_charger.c
+++ b/drivers/power/supply/ab8500_charger.c
@@ -13,6 +13,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/device.h>
+#include <linux/component.h>
 #include <linux/interrupt.h>
 #include <linux/delay.h>
 #include <linux/notifier.h>
@@ -3276,10 +3277,74 @@ static struct notifier_block charger_nb = {
 	.notifier_call = ab8500_external_charger_prepare,
 };
 
-static int ab8500_charger_remove(struct platform_device *pdev)
+static char *supply_interface[] = {
+	"ab8500_chargalg",
+	"ab8500_fg",
+	"ab8500_btemp",
+};
+
+static const struct power_supply_desc ab8500_ac_chg_desc = {
+	.name		= "ab8500_ac",
+	.type		= POWER_SUPPLY_TYPE_MAINS,
+	.properties	= ab8500_charger_ac_props,
+	.num_properties	= ARRAY_SIZE(ab8500_charger_ac_props),
+	.get_property	= ab8500_charger_ac_get_property,
+};
+
+static const struct power_supply_desc ab8500_usb_chg_desc = {
+	.name		= "ab8500_usb",
+	.type		= POWER_SUPPLY_TYPE_USB,
+	.properties	= ab8500_charger_usb_props,
+	.num_properties	= ARRAY_SIZE(ab8500_charger_usb_props),
+	.get_property	= ab8500_charger_usb_get_property,
+};
+
+static int ab8500_charger_bind(struct device *dev)
 {
-	struct ab8500_charger *di = platform_get_drvdata(pdev);
-	int i, irq, ret;
+	struct ab8500_charger *di = dev_get_drvdata(dev);
+	int ch_stat;
+	int ret;
+
+	/* Create a work queue for the charger */
+	di->charger_wq = alloc_ordered_workqueue("ab8500_charger_wq",
+						 WQ_MEM_RECLAIM);
+	if (di->charger_wq == NULL) {
+		dev_err(dev, "failed to create work queue\n");
+		return -ENOMEM;
+	}
+
+	ch_stat = ab8500_charger_detect_chargers(di, false);
+
+	if (ch_stat & AC_PW_CONN) {
+		if (is_ab8500(di->parent))
+			queue_delayed_work(di->charger_wq,
+					   &di->ac_charger_attached_work,
+					   HZ);
+	}
+	if (ch_stat & USB_PW_CONN) {
+		if (is_ab8500(di->parent))
+			queue_delayed_work(di->charger_wq,
+					   &di->usb_charger_attached_work,
+					   HZ);
+		di->vbus_detected = true;
+		di->vbus_detected_start = true;
+		queue_work(di->charger_wq,
+			   &di->detect_usb_type_work);
+	}
+
+	ret = component_bind_all(dev, di);
+	if (ret) {
+		dev_err(dev, "can't bind component devices\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static void ab8500_charger_unbind(struct device *dev)
+{
+	struct ab8500_charger *di = dev_get_drvdata(dev);
+	int ret;
 
 	/* Disable AC charging */
 	ab8500_charger_ac_en(&di->ac_chg, false, 0, 0);
@@ -3287,68 +3352,47 @@ static int ab8500_charger_remove(struct platform_device *pdev)
 	/* Disable USB charging */
 	ab8500_charger_usb_en(&di->usb_chg, false, 0, 0);
 
-	/* Disable interrupts */
-	for (i = 0; i < ARRAY_SIZE(ab8500_charger_irq); i++) {
-		irq = platform_get_irq_byname(pdev, ab8500_charger_irq[i].name);
-		free_irq(irq, di);
-	}
-
 	/* Backup battery voltage and current disable */
 	ret = abx500_mask_and_set_register_interruptible(di->dev,
 		AB8500_RTC, AB8500_RTC_CTRL_REG, RTC_BUP_CH_ENA, 0);
 	if (ret < 0)
 		dev_err(di->dev, "%s mask and set failed\n", __func__);
 
-	usb_unregister_notifier(di->usb_phy, &di->nb);
-	usb_put_phy(di->usb_phy);
-
 	/* Delete the work queue */
 	destroy_workqueue(di->charger_wq);
 
-	/* Unregister external charger enable notifier */
-	if (!di->ac_chg.enabled)
-		blocking_notifier_chain_unregister(
-			&charger_notifier_list, &charger_nb);
-
 	flush_scheduled_work();
-	if (di->usb_chg.enabled)
-		power_supply_unregister(di->usb_chg.psy);
-
-	if (di->ac_chg.enabled && !di->ac_chg.external)
-		power_supply_unregister(di->ac_chg.psy);
 
-	return 0;
+	/* Unbind fg, btemp, algorithm */
+	component_unbind_all(dev, di);
 }
 
-static char *supply_interface[] = {
-	"ab8500_chargalg",
-	"ab8500_fg",
-	"ab8500_btemp",
+static const struct component_master_ops ab8500_charger_comp_ops = {
+	.bind = ab8500_charger_bind,
+	.unbind = ab8500_charger_unbind,
 };
 
-static const struct power_supply_desc ab8500_ac_chg_desc = {
-	.name		= "ab8500_ac",
-	.type		= POWER_SUPPLY_TYPE_MAINS,
-	.properties	= ab8500_charger_ac_props,
-	.num_properties	= ARRAY_SIZE(ab8500_charger_ac_props),
-	.get_property	= ab8500_charger_ac_get_property,
+static struct platform_driver *const ab8500_charger_component_drivers[] = {
+	&ab8500_fg_driver,
+	&ab8500_btemp_driver,
+	&abx500_chargalg_driver,
 };
 
-static const struct power_supply_desc ab8500_usb_chg_desc = {
-	.name		= "ab8500_usb",
-	.type		= POWER_SUPPLY_TYPE_USB,
-	.properties	= ab8500_charger_usb_props,
-	.num_properties	= ARRAY_SIZE(ab8500_charger_usb_props),
-	.get_property	= ab8500_charger_usb_get_property,
-};
+static int ab8500_charger_compare_dev(struct device *dev, void *data)
+{
+	return dev == data;
+}
 
 static int ab8500_charger_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct component_match *match = NULL;
 	struct power_supply_config ac_psy_cfg = {}, usb_psy_cfg = {};
 	struct ab8500_charger *di;
-	int irq, i, charger_status, ret = 0, ch_stat;
-	struct device *dev = &pdev->dev;
+	int charger_status;
+	int i, irq;
+	int ret;
 
 	di = devm_kzalloc(dev, sizeof(*di), GFP_KERNEL);
 	if (!di)
@@ -3393,6 +3437,38 @@ static int ab8500_charger_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	/*
+	 * VDD ADC supply needs to be enabled from this driver when there
+	 * is a charger connected to avoid erroneous BTEMP_HIGH/LOW
+	 * interrupts during charging
+	 */
+	di->regu = devm_regulator_get(dev, "vddadc");
+	if (IS_ERR(di->regu)) {
+		ret = PTR_ERR(di->regu);
+		dev_err(dev, "failed to get vddadc regulator\n");
+		return ret;
+	}
+
+	/* Request interrupts */
+	for (i = 0; i < ARRAY_SIZE(ab8500_charger_irq); i++) {
+		irq = platform_get_irq_byname(pdev, ab8500_charger_irq[i].name);
+		if (irq < 0)
+			return irq;
+
+		ret = devm_request_threaded_irq(dev,
+			irq, NULL, ab8500_charger_irq[i].isr,
+			IRQF_SHARED | IRQF_NO_SUSPEND | IRQF_ONESHOT,
+			ab8500_charger_irq[i].name, di);
+
+		if (ret != 0) {
+			dev_err(dev, "failed to request %s IRQ %d: %d\n"
+				, ab8500_charger_irq[i].name, irq, ret);
+			return ret;
+		}
+		dev_dbg(dev, "Requested %s IRQ %d: %d\n",
+			ab8500_charger_irq[i].name, irq, ret);
+	}
+
 	/* initialize lock */
 	spin_lock_init(&di->usb_state.usb_lock);
 	mutex_init(&di->usb_ipt_crnt_lock);
@@ -3422,11 +3498,6 @@ static int ab8500_charger_probe(struct platform_device *pdev)
 	di->ac_chg.enabled = di->bm->ac_enabled;
 	di->ac_chg.external = false;
 
-	/*notifier for external charger enabling*/
-	if (!di->ac_chg.enabled)
-		blocking_notifier_chain_register(
-			&charger_notifier_list, &charger_nb);
-
 	/* USB supply */
 	/* ux500_charger sub-class */
 	di->usb_chg.ops.enable = &ab8500_charger_usb_en;
@@ -3442,14 +3513,6 @@ static int ab8500_charger_probe(struct platform_device *pdev)
 	di->usb_chg.external = false;
 	di->usb_state.usb_current = -1;
 
-	/* Create a work queue for the charger */
-	di->charger_wq = alloc_ordered_workqueue("ab8500_charger_wq",
-						 WQ_MEM_RECLAIM);
-	if (di->charger_wq == NULL) {
-		dev_err(dev, "failed to create work queue\n");
-		return -ENOMEM;
-	}
-
 	mutex_init(&di->charger_attached_mutex);
 
 	/* Init work for HW failure check */
@@ -3500,63 +3563,36 @@ static int ab8500_charger_probe(struct platform_device *pdev)
 	INIT_WORK(&di->check_usb_thermal_prot_work,
 		ab8500_charger_check_usb_thermal_prot_work);
 
-	/*
-	 * VDD ADC supply needs to be enabled from this driver when there
-	 * is a charger connected to avoid erroneous BTEMP_HIGH/LOW
-	 * interrupts during charging
-	 */
-	di->regu = devm_regulator_get(dev, "vddadc");
-	if (IS_ERR(di->regu)) {
-		ret = PTR_ERR(di->regu);
-		dev_err(dev, "failed to get vddadc regulator\n");
-		goto free_charger_wq;
-	}
-
 
 	/* Initialize OVV, and other registers */
 	ret = ab8500_charger_init_hw_registers(di);
 	if (ret) {
 		dev_err(dev, "failed to initialize ABB registers\n");
-		goto free_charger_wq;
+		return ret;
 	}
 
 	/* Register AC charger class */
 	if (di->ac_chg.enabled) {
-		di->ac_chg.psy = power_supply_register(dev,
+		di->ac_chg.psy = devm_power_supply_register(dev,
 						       &ab8500_ac_chg_desc,
 						       &ac_psy_cfg);
 		if (IS_ERR(di->ac_chg.psy)) {
 			dev_err(dev, "failed to register AC charger\n");
-			ret = PTR_ERR(di->ac_chg.psy);
-			goto free_charger_wq;
+			return PTR_ERR(di->ac_chg.psy);
 		}
 	}
 
 	/* Register USB charger class */
 	if (di->usb_chg.enabled) {
-		di->usb_chg.psy = power_supply_register(dev,
+		di->usb_chg.psy = devm_power_supply_register(dev,
 							&ab8500_usb_chg_desc,
 							&usb_psy_cfg);
 		if (IS_ERR(di->usb_chg.psy)) {
 			dev_err(dev, "failed to register USB charger\n");
-			ret = PTR_ERR(di->usb_chg.psy);
-			goto free_ac;
+			return PTR_ERR(di->usb_chg.psy);
 		}
 	}
 
-	di->usb_phy = usb_get_phy(USB_PHY_TYPE_USB2);
-	if (IS_ERR_OR_NULL(di->usb_phy)) {
-		dev_err(dev, "failed to get usb transceiver\n");
-		ret = -EINVAL;
-		goto free_usb;
-	}
-	di->nb.notifier_call = ab8500_charger_usb_notifier_call;
-	ret = usb_register_notifier(di->usb_phy, &di->nb);
-	if (ret) {
-		dev_err(dev, "failed to register usb notifier\n");
-		goto put_usb_phy;
-	}
-
 	/* Identify the connected charger types during startup */
 	charger_status = ab8500_charger_detect_chargers(di, true);
 	if (charger_status & AC_PW_CONN) {
@@ -3566,78 +3602,86 @@ static int ab8500_charger_probe(struct platform_device *pdev)
 		sysfs_notify(&di->ac_chg.psy->dev.kobj, NULL, "present");
 	}
 
-	if (charger_status & USB_PW_CONN) {
-		di->vbus_detected = true;
-		di->vbus_detected_start = true;
-		queue_work(di->charger_wq,
-			&di->detect_usb_type_work);
-	}
-
-	/* Register interrupts */
-	for (i = 0; i < ARRAY_SIZE(ab8500_charger_irq); i++) {
-		irq = platform_get_irq_byname(pdev, ab8500_charger_irq[i].name);
-		if (irq < 0) {
-			ret = irq;
-			goto free_irq;
-		}
+	platform_set_drvdata(pdev, di);
 
-		ret = request_threaded_irq(irq, NULL, ab8500_charger_irq[i].isr,
-			IRQF_SHARED | IRQF_NO_SUSPEND | IRQF_ONESHOT,
-			ab8500_charger_irq[i].name, di);
+	/* Create something that will match the subdrivers when we bind */
+	for (i = 0; i < ARRAY_SIZE(ab8500_charger_component_drivers); i++) {
+		struct device_driver *drv = &ab8500_charger_component_drivers[i]->driver;
+		struct device *p = NULL, *d;
 
-		if (ret != 0) {
-			dev_err(dev, "failed to request %s IRQ %d: %d\n"
-				, ab8500_charger_irq[i].name, irq, ret);
-			goto free_irq;
+		while ((d = platform_find_device_by_driver(p, drv))) {
+			put_device(p);
+			component_match_add(dev, &match,
+					    ab8500_charger_compare_dev, d);
+			p = d;
 		}
-		dev_dbg(dev, "Requested %s IRQ %d: %d\n",
-			ab8500_charger_irq[i].name, irq, ret);
+		put_device(p);
+	}
+	if (!match) {
+		dev_err(dev, "no matching components\n");
+		return -ENODEV;
+	}
+	if (IS_ERR(match)) {
+		dev_err(dev, "could not create component match\n");
+		return PTR_ERR(match);
 	}
 
-	platform_set_drvdata(pdev, di);
+	/* Notifier for external charger enabling */
+	if (!di->ac_chg.enabled)
+		blocking_notifier_chain_register(
+			&charger_notifier_list, &charger_nb);
 
-	mutex_lock(&di->charger_attached_mutex);
 
-	ch_stat = ab8500_charger_detect_chargers(di, false);
-
-	if ((ch_stat & AC_PW_CONN) == AC_PW_CONN) {
-		if (is_ab8500(di->parent))
-			queue_delayed_work(di->charger_wq,
-					   &di->ac_charger_attached_work,
-					   HZ);
+	di->usb_phy = usb_get_phy(USB_PHY_TYPE_USB2);
+	if (IS_ERR_OR_NULL(di->usb_phy)) {
+		dev_err(dev, "failed to get usb transceiver\n");
+		ret = -EINVAL;
+		goto out_charger_notifier;
 	}
-	if ((ch_stat & USB_PW_CONN) == USB_PW_CONN) {
-		if (is_ab8500(di->parent))
-			queue_delayed_work(di->charger_wq,
-					   &di->usb_charger_attached_work,
-					   HZ);
+	di->nb.notifier_call = ab8500_charger_usb_notifier_call;
+	ret = usb_register_notifier(di->usb_phy, &di->nb);
+	if (ret) {
+		dev_err(dev, "failed to register usb notifier\n");
+		goto put_usb_phy;
 	}
 
-	mutex_unlock(&di->charger_attached_mutex);
 
-	return ret;
+	ret = component_master_add_with_match(&pdev->dev,
+					      &ab8500_charger_comp_ops,
+					      match);
+	if (ret) {
+		dev_err(dev, "failed to add component master\n");
+		goto free_notifier;
+	}
 
-free_irq:
-	usb_unregister_notifier(di->usb_phy, &di->nb);
+	return 0;
 
-	/* We also have to free all successfully registered irqs */
-	for (i = i - 1; i >= 0; i--) {
-		irq = platform_get_irq_byname(pdev, ab8500_charger_irq[i].name);
-		free_irq(irq, di);
-	}
+free_notifier:
+	usb_unregister_notifier(di->usb_phy, &di->nb);
 put_usb_phy:
 	usb_put_phy(di->usb_phy);
-free_usb:
-	if (di->usb_chg.enabled)
-		power_supply_unregister(di->usb_chg.psy);
-free_ac:
-	if (di->ac_chg.enabled)
-		power_supply_unregister(di->ac_chg.psy);
-free_charger_wq:
-	destroy_workqueue(di->charger_wq);
+out_charger_notifier:
+	if (!di->ac_chg.enabled)
+		blocking_notifier_chain_unregister(
+			&charger_notifier_list, &charger_nb);
 	return ret;
 }
 
+static int ab8500_charger_remove(struct platform_device *pdev)
+{
+	struct ab8500_charger *di = platform_get_drvdata(pdev);
+
+	component_master_del(&pdev->dev, &ab8500_charger_comp_ops);
+
+	usb_unregister_notifier(di->usb_phy, &di->nb);
+	usb_put_phy(di->usb_phy);
+	if (!di->ac_chg.enabled)
+		blocking_notifier_chain_unregister(
+			&charger_notifier_list, &charger_nb);
+
+	return 0;
+}
+
 static SIMPLE_DEV_PM_OPS(ab8500_charger_pm_ops, ab8500_charger_suspend, ab8500_charger_resume);
 
 static const struct of_device_id ab8500_charger_match[] = {
@@ -3657,15 +3701,24 @@ static struct platform_driver ab8500_charger_driver = {
 
 static int __init ab8500_charger_init(void)
 {
+	int ret;
+
+	ret = platform_register_drivers(ab8500_charger_component_drivers,
+			ARRAY_SIZE(ab8500_charger_component_drivers));
+	if (ret)
+		return ret;
+
 	return platform_driver_register(&ab8500_charger_driver);
 }
 
 static void __exit ab8500_charger_exit(void)
 {
+	platform_unregister_drivers(ab8500_charger_component_drivers,
+			ARRAY_SIZE(ab8500_charger_component_drivers));
 	platform_driver_unregister(&ab8500_charger_driver);
 }
 
-subsys_initcall_sync(ab8500_charger_init);
+module_init(ab8500_charger_init);
 module_exit(ab8500_charger_exit);
 
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/power/supply/ab8500_fg.c b/drivers/power/supply/ab8500_fg.c
index 0c7c01a0d979..acf0f2471c0b 100644
--- a/drivers/power/supply/ab8500_fg.c
+++ b/drivers/power/supply/ab8500_fg.c
@@ -17,6 +17,7 @@
 
 #include <linux/init.h>
 #include <linux/module.h>
+#include <linux/component.h>
 #include <linux/device.h>
 #include <linux/interrupt.h>
 #include <linux/platform_device.h>
@@ -2980,27 +2981,6 @@ static int __maybe_unused ab8500_fg_suspend(struct device *dev)
 	return 0;
 }
 
-static int ab8500_fg_remove(struct platform_device *pdev)
-{
-	int ret = 0;
-	struct ab8500_fg *di = platform_get_drvdata(pdev);
-
-	list_del(&di->node);
-
-	/* Disable coulomb counter */
-	ret = ab8500_fg_coulomb_counter(di, false);
-	if (ret)
-		dev_err(di->dev, "failed to disable coulomb counter\n");
-
-	destroy_workqueue(di->fg_wq);
-	ab8500_fg_sysfs_exit(di);
-
-	flush_scheduled_work();
-	ab8500_fg_sysfs_psy_remove_attrs(di);
-	power_supply_unregister(di->fg_psy);
-	return ret;
-}
-
 /* ab8500 fg driver interrupts and their respective isr */
 static struct ab8500_fg_interrupts ab8500_fg_irq[] = {
 	{"NCONV_ACCU", ab8500_fg_cc_convend_handler},
@@ -3024,11 +3004,50 @@ static const struct power_supply_desc ab8500_fg_desc = {
 	.external_power_changed	= ab8500_fg_external_power_changed,
 };
 
+static int ab8500_fg_bind(struct device *dev, struct device *master,
+			  void *data)
+{
+	struct ab8500_fg *di = dev_get_drvdata(dev);
+
+	/* Create a work queue for running the FG algorithm */
+	di->fg_wq = alloc_ordered_workqueue("ab8500_fg_wq", WQ_MEM_RECLAIM);
+	if (di->fg_wq == NULL) {
+		dev_err(dev, "failed to create work queue\n");
+		return -ENOMEM;
+	}
+
+	/* Start the coulomb counter */
+	ab8500_fg_coulomb_counter(di, true);
+	/* Run the FG algorithm */
+	queue_delayed_work(di->fg_wq, &di->fg_periodic_work, 0);
+
+	return 0;
+}
+
+static void ab8500_fg_unbind(struct device *dev, struct device *master,
+			     void *data)
+{
+	struct ab8500_fg *di = dev_get_drvdata(dev);
+	int ret;
+
+	/* Disable coulomb counter */
+	ret = ab8500_fg_coulomb_counter(di, false);
+	if (ret)
+		dev_err(dev, "failed to disable coulomb counter\n");
+
+	destroy_workqueue(di->fg_wq);
+	flush_scheduled_work();
+}
+
+static const struct component_ops ab8500_fg_component_ops = {
+	.bind = ab8500_fg_bind,
+	.unbind = ab8500_fg_unbind,
+};
+
 static int ab8500_fg_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
-	struct power_supply_config psy_cfg = {};
 	struct device *dev = &pdev->dev;
+	struct power_supply_config psy_cfg = {};
 	struct ab8500_fg *di;
 	int i, irq;
 	int ret = 0;
@@ -3074,13 +3093,6 @@ static int ab8500_fg_probe(struct platform_device *pdev)
 	ab8500_fg_charge_state_to(di, AB8500_FG_CHARGE_INIT);
 	ab8500_fg_discharge_state_to(di, AB8500_FG_DISCHARGE_INIT);
 
-	/* Create a work queue for running the FG algorithm */
-	di->fg_wq = alloc_ordered_workqueue("ab8500_fg_wq", WQ_MEM_RECLAIM);
-	if (di->fg_wq == NULL) {
-		dev_err(dev, "failed to create work queue\n");
-		return -ENOMEM;
-	}
-
 	/* Init work for running the fg algorithm instantly */
 	INIT_WORK(&di->fg_work, ab8500_fg_instant_work);
 
@@ -3113,7 +3125,7 @@ static int ab8500_fg_probe(struct platform_device *pdev)
 	ret = ab8500_fg_init_hw_registers(di);
 	if (ret) {
 		dev_err(dev, "failed to initialize registers\n");
-		goto free_inst_curr_wq;
+		return ret;
 	}
 
 	/* Consider battery unknown until we're informed otherwise */
@@ -3121,15 +3133,13 @@ static int ab8500_fg_probe(struct platform_device *pdev)
 	di->flags.batt_id_received = false;
 
 	/* Register FG power supply class */
-	di->fg_psy = power_supply_register(dev, &ab8500_fg_desc, &psy_cfg);
+	di->fg_psy = devm_power_supply_register(dev, &ab8500_fg_desc, &psy_cfg);
 	if (IS_ERR(di->fg_psy)) {
 		dev_err(dev, "failed to register FG psy\n");
-		ret = PTR_ERR(di->fg_psy);
-		goto free_inst_curr_wq;
+		return PTR_ERR(di->fg_psy);
 	}
 
 	di->fg_samples = SEC_TO_SAMPLE(di->bm->fg_params->init_timer);
-	ab8500_fg_coulomb_counter(di, true);
 
 	/*
 	 * Initialize completion used to notify completion and start
@@ -3141,19 +3151,18 @@ static int ab8500_fg_probe(struct platform_device *pdev)
 	/* Register primary interrupt handlers */
 	for (i = 0; i < ARRAY_SIZE(ab8500_fg_irq); i++) {
 		irq = platform_get_irq_byname(pdev, ab8500_fg_irq[i].name);
-		if (irq < 0) {
-			ret = irq;
-			goto free_irq;
-		}
+		if (irq < 0)
+			return irq;
 
-		ret = request_threaded_irq(irq, NULL, ab8500_fg_irq[i].isr,
+		ret = devm_request_threaded_irq(dev, irq, NULL,
+				  ab8500_fg_irq[i].isr,
 				  IRQF_SHARED | IRQF_NO_SUSPEND | IRQF_ONESHOT,
 				  ab8500_fg_irq[i].name, di);
 
 		if (ret != 0) {
 			dev_err(dev, "failed to request %s IRQ %d: %d\n",
 				ab8500_fg_irq[i].name, irq, ret);
-			goto free_irq;
+			return ret;
 		}
 		dev_dbg(dev, "Requested %s IRQ %d: %d\n",
 			ab8500_fg_irq[i].name, irq, ret);
@@ -3168,14 +3177,14 @@ static int ab8500_fg_probe(struct platform_device *pdev)
 	ret = ab8500_fg_sysfs_init(di);
 	if (ret) {
 		dev_err(dev, "failed to create sysfs entry\n");
-		goto free_irq;
+		return ret;
 	}
 
 	ret = ab8500_fg_sysfs_psy_create_attrs(di);
 	if (ret) {
 		dev_err(dev, "failed to create FG psy\n");
 		ab8500_fg_sysfs_exit(di);
-		goto free_irq;
+		return ret;
 	}
 
 	/* Calibrate the fg first time */
@@ -3185,24 +3194,21 @@ static int ab8500_fg_probe(struct platform_device *pdev)
 	/* Use room temp as default value until we get an update from driver. */
 	di->bat_temp = 210;
 
-	/* Run the FG algorithm */
-	queue_delayed_work(di->fg_wq, &di->fg_periodic_work, 0);
-
 	list_add_tail(&di->node, &ab8500_fg_list);
 
-	return ret;
+	return component_add(dev, &ab8500_fg_component_ops);
+}
 
-free_irq:
-	/* We also have to free all registered irqs */
-	while (--i >= 0) {
-		/* Last assignment of i from primary interrupt handlers */
-		irq = platform_get_irq_byname(pdev, ab8500_fg_irq[i].name);
-		free_irq(irq, di);
-	}
+static int ab8500_fg_remove(struct platform_device *pdev)
+{
+	int ret = 0;
+	struct ab8500_fg *di = platform_get_drvdata(pdev);
+
+	component_del(&pdev->dev, &ab8500_fg_component_ops);
+	list_del(&di->node);
+	ab8500_fg_sysfs_exit(di);
+	ab8500_fg_sysfs_psy_remove_attrs(di);
 
-	power_supply_unregister(di->fg_psy);
-free_inst_curr_wq:
-	destroy_workqueue(di->fg_wq);
 	return ret;
 }
 
@@ -3213,7 +3219,7 @@ static const struct of_device_id ab8500_fg_match[] = {
 	{ },
 };
 
-static struct platform_driver ab8500_fg_driver = {
+struct platform_driver ab8500_fg_driver = {
 	.probe = ab8500_fg_probe,
 	.remove = ab8500_fg_remove,
 	.driver = {
@@ -3222,20 +3228,6 @@ static struct platform_driver ab8500_fg_driver = {
 		.pm = &ab8500_fg_pm_ops,
 	},
 };
-
-static int __init ab8500_fg_init(void)
-{
-	return platform_driver_register(&ab8500_fg_driver);
-}
-
-static void __exit ab8500_fg_exit(void)
-{
-	platform_driver_unregister(&ab8500_fg_driver);
-}
-
-subsys_initcall_sync(ab8500_fg_init);
-module_exit(ab8500_fg_exit);
-
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Johan Palsson, Karl Komierowski");
 MODULE_ALIAS("platform:ab8500-fg");
diff --git a/drivers/power/supply/abx500_chargalg.c b/drivers/power/supply/abx500_chargalg.c
index f5b792243727..599684ce0e4b 100644
--- a/drivers/power/supply/abx500_chargalg.c
+++ b/drivers/power/supply/abx500_chargalg.c
@@ -15,6 +15,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/device.h>
+#include <linux/component.h>
 #include <linux/hrtimer.h>
 #include <linux/interrupt.h>
 #include <linux/delay.h>
@@ -1943,13 +1944,44 @@ static int __maybe_unused abx500_chargalg_suspend(struct device *dev)
 	return 0;
 }
 
-static int abx500_chargalg_remove(struct platform_device *pdev)
+static char *supply_interface[] = {
+	"ab8500_fg",
+};
+
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1097075110.2060.1628090895087%40localhost.

------=_Part_2059_1896554781.1628090894043--
