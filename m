Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBO5C4HZAKGQEAS5Y6UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A94172C46
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 00:31:07 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id a9sf272353ljk.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 15:31:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582846267; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jx9iSRBwedu6blNdWMolCAxSjEwSRI0VT+aXyQrhkV0l/kW6XZ8hQE9HnBsir/Q4mj
         dvJvmQRY7HKM5J3uk3hP4dzTM+eqMiOQ5w7gw/Cr7Z+3lQkhDW0DbGaplMHFKfrXDYVj
         vbWoL9bBw83+Ddo+jnMQhboOziexydV57xq0KrQxe5tsL3Ky3ljYYnSEXzhVGsKZIqG8
         3SpfpQxCisktUJvWhF9OzUjuCnGVO+cqXYYdHBSDaDCxfPoTJ34AWSBAtX/xTqeDDRUi
         6zh/rcliTo2xGpRt10D4RaGVW6ljbL5o4h1Px07zzQHC1OroaAUQwDMS3WV1DCC5R/Ll
         lMuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=wkBwWlj3lxGVIX1oL245Mv1NTX24pt2UyfTCzEBwujk=;
        b=FGsKEoxOhQkpVfID0XUUPzQsqTbIrJG9bO3x9GN+TFQ9nHSyxgeDcN14FkBc9vaktm
         7zyuixUnwotp2P9EGR0NNqHwBKUpCEHKCpZTzWQRqYgZiBHOkLuSEIsVt7Pc9UT3pQ/H
         8sN/iYyZ6u15PY0+Y994zexP8klRUsZXLcCfHTHuKWt0J+Ljpd1nUtOiP8s9gI1FmhLn
         KfQ39+Lp72R6Poa6hsgscQ/q5EtpDgA6PPHA3RiKjd4teEQDAFOEGv2Ryj01SpMqxG83
         5ojinfkppp4V5FHtAeWGIp1NB+/yopKNMW7W5B/YoD5rcEbJ3z+0at5arNTzCRQy/cj6
         gDzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XHURGO7c;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wkBwWlj3lxGVIX1oL245Mv1NTX24pt2UyfTCzEBwujk=;
        b=UnWZQmbNlFX8VZ+a7HAPM87AhoEaHGT3GCZRHojhjQ7msk+/fMfnzKHTtYPYM98dPI
         Zv3Ip+NczRhzUGXWEl/nEc5A1K3KoSdxibB8ZUB7ssJqTPOvaXRES/NgFhc1C/+jFxvY
         8rx/8Tx6wYrIFBKAF/qT239hzgNkTmpXWlibOBFUTSuv0f5YJCfr66N6MfW5ouLy3bDA
         Ciw1RmSB/Qy0Si/v4OQduZbV2tOMUjzNHlERN3rMEn9nbaL0McxHnD6dhLesIohdaoP5
         2Dxvyy1hKY8RCcgvvNqCDqTl5BgbWRNjr1iP+yLObtmdrsiAvLQEZrsl/KNLL7MPRwBq
         qtIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wkBwWlj3lxGVIX1oL245Mv1NTX24pt2UyfTCzEBwujk=;
        b=kMvqFhmZWvs9M19XmnwW7QcrJpoZ8F42YA2Q+V+OwRBNI1wbJOcvDxDENO2XOzjje5
         oNvwJgUusvrIj/9vmtkX1JSwWwnZZOMhVyypo1zA2zK4YMUF6x5QSFfkFcGMM0pvTosO
         Q2iel40hPy7+8VGR/jzhnee0+zQ+hZJWnAxTyhRfzs8m5r2h0D5/uxtDAGs3b2hifCZr
         +hEPo2ozAC+aLUs3NJIAtCbow+OnC9esN1kQz9FTfnhNN+Xz4FBEPIYUzicu2M/7ZtEW
         v45AzhIb73s2QFwlUw2Tp9r0P2AVHBSBej3OrLiKZEy1rnC29W1td5vdlPsM5dDW6UwR
         FHKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ10GqDIJB2Sj2AwbeQzWUfClzcJ96M+70oj2cs0orDQzFa2/5Z/
	FrZHiaGzgAdyngf/dEKb7YQ=
X-Google-Smtp-Source: ADFU+vv1hNrMXiBMxEDhMZNuRav53B3d8AhmyKvuyNLumKiCyacA1A/FMfw0mnFZTF53lTGi2cB2Eg==
X-Received: by 2002:a2e:8145:: with SMTP id t5mr948487ljg.144.1582846267268;
        Thu, 27 Feb 2020 15:31:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1b4:: with SMTP id c20ls229132ljn.5.gmail; Thu, 27
 Feb 2020 15:31:06 -0800 (PST)
X-Received: by 2002:a2e:7315:: with SMTP id o21mr916410ljc.276.1582846266692;
        Thu, 27 Feb 2020 15:31:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582846266; cv=none;
        d=google.com; s=arc-20160816;
        b=kDwmI2blqBBzzg5KZuWIRSsuHxMC1hDLHfAqyFT4uhe03sTVGZXF4qyaesr5UfDCs+
         XztXEA4zLBz21MqF+C+4Yu5e+1vuHbMAlWhvxoNdN6n+WQt3IXfDcImv+WiW2ZNoMAuH
         FzZHuJTnhJZVn7J5R8Y7foPj9o0d5Edv1Tj2cEWHK+LUZBTEBPKY1SCS3zd1S2CXWWaL
         GH1fxxL98et6a256LaWFb4nePtFibCk/mqhH0w+Qmu/jazkS3hHshI6R3puczY9W6nBx
         F552u0Rq86hWVMJ5u+o66VcFg5X0AwkVFbEy1+s0xHaZq0XSAUoeLj1JJL9IOS77uAsu
         xznQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=8FbGp6yGe0VrKkx3uuU7vNHokJrGT1PxbXL2sWIQ1sM=;
        b=Yg2gCNCHx4bP8KlaLxJwA3cpY1+qRyW/Qyt6kUNmQADvQ9zXjxyw58CHeOXAVp6Ztz
         AN5OFMm173sGi14HOo9waddvjhy0XzHC5sP6Y1LiYzTIN5D/oJwG0gUI9077ud0zrhCc
         4I7eFs2YiF/Lynn7f1cnPM37Ty+G7tu+mmX89jS0A72CGfMj+9FewI359I4KWTI/lwar
         2N5+jqkuZBc7CepFTllVH6DLeeS0dQe2SNl+9u/TPE/dVSdDcWzD4pzASN/OVH6RqHmx
         Q/+OjKMXVATd+9SP1R5a5/hz7xLhT8nBFp8rda2WA4yMvTflz7cMV9dP9o6AHlfQSzuo
         MMpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XHURGO7c;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id p12si97115lji.1.2020.02.27.15.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 15:31:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Received: by mail-wr1-x429.google.com with SMTP id x7so956524wrr.0
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 15:31:06 -0800 (PST)
X-Received: by 2002:adf:dccb:: with SMTP id x11mr1223019wrm.214.1582846266049;
        Thu, 27 Feb 2020 15:31:06 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id j15sm10287914wrp.9.2020.02.27.15.31.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 27 Feb 2020 15:31:05 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 27 Feb 2020 23:31:04 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <53116919.4827.1582846265561.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allyesconfig - Build # 50 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4826_2133294364.1582846264848"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XHURGO7c;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::429
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

------=_Part_4826_2133294364.1582846264848
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-next-allmodconfig
 - tcwg_kernel/gnu-master-aarch64-next-allyesconfig
 - tcwg_kernel/gnu-release-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Culprit:
<cut>
commit 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
Author: Marco Felsch <m.felsch@pengutronix.de>

    pinctrl: da9062: add driver support
</cut>

First few build errors in logs:
00:04:02 drivers/pinctrl/pinctrl-da9062.c:28:10: error: '../gpio/gpiolib.h' file not found with <angled> include; use  instead
00:04:02 make[2]: *** [drivers/pinctrl/pinctrl-da9062.o] Error 1
00:04:08 make[1]: *** [drivers/pinctrl] Error 2
00:19:46 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="c99b17ac03994525092fd66bed14b4a0c82f0b4d"

Results regressed to (for first_bad == 56cc3af4e8c8eaba91b51efa6081a868adbd97c3)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18276

from (for last_good == c93214689f0c70b6942ba1d12b8371b9fc60ae41)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18349
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/50/artifact/artifacts/build-56cc3af4e8c8eaba91b51efa6081a868adbd97c3/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/50/artifact/artifacts/build-c93214689f0c70b6942ba1d12b8371b9fc60ae41/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/50/

Reproduce builds:
<cut>
mkdir investigate-linux-56cc3af4e8c8eaba91b51efa6081a868adbd97c3
cd investigate-linux-56cc3af4e8c8eaba91b51efa6081a868adbd97c3

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/50/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/50/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/50/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach c93214689f0c70b6942ba1d12b8371b9fc60ae41
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/50/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allyesconfig/50/consoleText

Full commit:
<cut>
commit 56cc3af4e8c8eaba91b51efa6081a868adbd97c3
Author: Marco Felsch <m.felsch@pengutronix.de>
Date:   Wed Jan 8 11:47:46 2020 +0100

    pinctrl: da9062: add driver support
    
    The DA9062 is a mfd pmic device which supports 5 GPIOs. The GPIOs can
    be used as input, output or have a special use-case.
    
    The patch adds the support for the normal input/output use-case.
    
    Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
    Link: https://lore.kernel.org/r/20200108104746.1765-4-m.felsch@pengutronix.de
    Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 MAINTAINERS                      |   1 +
 drivers/pinctrl/Kconfig          |  12 ++
 drivers/pinctrl/Makefile         |   1 +
 drivers/pinctrl/pinctrl-da9062.c | 300 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 314 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 408fd7c660aa..260c0c4c6e74 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4921,6 +4921,7 @@ F:	drivers/leds/leds-da90??.c
 F:	drivers/mfd/da903x.c
 F:	drivers/mfd/da90??-*.c
 F:	drivers/mfd/da91??-*.c
+F:	drivers/pinctrl/pinctrl-da90??.c
 F:	drivers/power/supply/da9052-battery.c
 F:	drivers/power/supply/da91??-*.c
 F:	drivers/regulator/da903x.c
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index df0ef69dd474..834c59950d1c 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -126,6 +126,18 @@ config PINCTRL_DA850_PUPD
 	  Driver for TI DA850/OMAP-L138/AM18XX pinconf. Used to control
 	  pullup/pulldown pin groups.
 
+config PINCTRL_DA9062
+	tristate "Dialog Semiconductor DA9062 PMIC pinctrl and GPIO Support"
+	depends on MFD_DA9062
+	select GPIOLIB
+	help
+	  The Dialog DA9062 PMIC provides multiple GPIOs that can be muxed for
+	  different functions. This driver bundles a pinctrl driver to select the
+	  function muxing and a GPIO driver to handle the GPIO when the GPIO
+	  function is selected.
+
+	  Say yes to enable pinctrl and GPIO support for the DA9062 PMIC.
+
 config PINCTRL_DIGICOLOR
 	bool
 	depends on OF && (ARCH_DIGICOLOR || COMPILE_TEST)
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 879f312bfb75..0b36a1cfca8a 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_PINCTRL_AT91PIO4)	+= pinctrl-at91-pio4.o
 obj-$(CONFIG_PINCTRL_AMD)	+= pinctrl-amd.o
 obj-$(CONFIG_PINCTRL_BM1880)	+= pinctrl-bm1880.o
 obj-$(CONFIG_PINCTRL_DA850_PUPD) += pinctrl-da850-pupd.o
+obj-$(CONFIG_PINCTRL_DA9062)	+= pinctrl-da9062.o
 obj-$(CONFIG_PINCTRL_DIGICOLOR)	+= pinctrl-digicolor.o
 obj-$(CONFIG_PINCTRL_FALCON)	+= pinctrl-falcon.o
 obj-$(CONFIG_PINCTRL_GEMINI)	+= pinctrl-gemini.o
diff --git a/drivers/pinctrl/pinctrl-da9062.c b/drivers/pinctrl/pinctrl-da9062.c
new file mode 100644
index 000000000000..f704ee0b2fd9
--- /dev/null
+++ b/drivers/pinctrl/pinctrl-da9062.c
@@ -0,0 +1,300 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Dialog DA9062 pinctrl and GPIO driver.
+ * Based on DA9055 GPIO driver.
+ *
+ * TODO:
+ *   - add pinmux and pinctrl support (gpio alternate mode)
+ *
+ * Documents:
+ * [1] https://www.dialog-semiconductor.com/sites/default/files/da9062_datasheet_3v6.pdf
+ *
+ * Copyright (C) 2019 Pengutronix, Marco Felsch <kernel@pengutronix.de>
+ */
+#include <linux/bits.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include <linux/gpio/driver.h>
+
+#include <linux/mfd/da9062/core.h>
+#include <linux/mfd/da9062/registers.h>
+
+/*
+ * We need this get the gpio_desc from a <gpio_chip,offset> tuple to decide if
+ * the gpio is active low without a vendor specific dt-binding.
+ */
+#include <../gpio/gpiolib.h>
+
+#define DA9062_TYPE(offset)		(4 * (offset % 2))
+#define DA9062_PIN_SHIFT(offset)	(4 * (offset % 2))
+#define DA9062_PIN_ALTERNATE		0x00 /* gpio alternate mode */
+#define DA9062_PIN_GPI			0x01 /* gpio in */
+#define DA9062_PIN_GPO_OD		0x02 /* gpio out open-drain */
+#define DA9062_PIN_GPO_PP		0x03 /* gpio out push-pull */
+#define DA9062_GPIO_NUM			5
+
+struct da9062_pctl {
+	struct da9062 *da9062;
+	struct gpio_chip gc;
+	unsigned int pin_config[DA9062_GPIO_NUM];
+};
+
+static int da9062_pctl_get_pin_mode(struct da9062_pctl *pctl,
+				    unsigned int offset)
+{
+	struct regmap *regmap = pctl->da9062->regmap;
+	int ret, val;
+
+	ret = regmap_read(regmap, DA9062AA_GPIO_0_1 + (offset >> 1), &val);
+	if (ret < 0)
+		return ret;
+
+	val >>= DA9062_PIN_SHIFT(offset);
+	val &= DA9062AA_GPIO0_PIN_MASK;
+
+	return val;
+}
+
+static int da9062_pctl_set_pin_mode(struct da9062_pctl *pctl,
+				    unsigned int offset, unsigned int mode_req)
+{
+	struct regmap *regmap = pctl->da9062->regmap;
+	unsigned int mode = mode_req;
+	unsigned int mask;
+	int ret;
+
+	mode &= DA9062AA_GPIO0_PIN_MASK;
+	mode <<= DA9062_PIN_SHIFT(offset);
+	mask = DA9062AA_GPIO0_PIN_MASK << DA9062_PIN_SHIFT(offset);
+
+	ret = regmap_update_bits(regmap, DA9062AA_GPIO_0_1 + (offset >> 1),
+				 mask, mode);
+	if (!ret)
+		pctl->pin_config[offset] = mode_req;
+
+	return ret;
+}
+
+static int da9062_gpio_get(struct gpio_chip *gc, unsigned int offset)
+{
+	struct da9062_pctl *pctl = gpiochip_get_data(gc);
+	struct regmap *regmap = pctl->da9062->regmap;
+	int gpio_mode, val;
+	int ret;
+
+	gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
+	if (gpio_mode < 0)
+		return gpio_mode;
+
+	switch (gpio_mode) {
+	case DA9062_PIN_ALTERNATE:
+		return -ENOTSUPP;
+	case DA9062_PIN_GPI:
+		ret = regmap_read(regmap, DA9062AA_STATUS_B, &val);
+		if (ret < 0)
+			return ret;
+		break;
+	case DA9062_PIN_GPO_OD:
+	case DA9062_PIN_GPO_PP:
+		ret = regmap_read(regmap, DA9062AA_GPIO_MODE0_4, &val);
+		if (ret < 0)
+			return ret;
+	}
+
+	return !!(val & BIT(offset));
+}
+
+static void da9062_gpio_set(struct gpio_chip *gc, unsigned int offset,
+			    int value)
+{
+	struct da9062_pctl *pctl = gpiochip_get_data(gc);
+	struct regmap *regmap = pctl->da9062->regmap;
+
+	regmap_update_bits(regmap, DA9062AA_GPIO_MODE0_4, BIT(offset),
+			   value << offset);
+}
+
+static int da9062_gpio_get_direction(struct gpio_chip *gc, unsigned int offset)
+{
+	struct da9062_pctl *pctl = gpiochip_get_data(gc);
+	int gpio_mode;
+
+	gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
+	if (gpio_mode < 0)
+		return gpio_mode;
+
+	switch (gpio_mode) {
+	case DA9062_PIN_ALTERNATE:
+		return -ENOTSUPP;
+	case DA9062_PIN_GPI:
+		return GPIO_LINE_DIRECTION_IN;
+	case DA9062_PIN_GPO_OD:
+	case DA9062_PIN_GPO_PP:
+		return GPIO_LINE_DIRECTION_OUT;
+	}
+
+	return -EINVAL;
+}
+
+static int da9062_gpio_direction_input(struct gpio_chip *gc,
+				       unsigned int offset)
+{
+	struct da9062_pctl *pctl = gpiochip_get_data(gc);
+	struct regmap *regmap = pctl->da9062->regmap;
+	struct gpio_desc *desc = gpiochip_get_desc(gc, offset);
+	unsigned int gpi_type;
+	int ret;
+
+	ret = da9062_pctl_set_pin_mode(pctl, offset, DA9062_PIN_GPI);
+	if (ret)
+		return ret;
+
+	/*
+	 * If the gpio is active low we should set it in hw too. No worries
+	 * about gpio_get() because we read and return the gpio-level. So the
+	 * gpiolib active_low handling is still correct.
+	 *
+	 * 0 - active low, 1 - active high
+	 */
+	gpi_type = !gpiod_is_active_low(desc);
+
+	return regmap_update_bits(regmap, DA9062AA_GPIO_0_1 + (offset >> 1),
+				DA9062AA_GPIO0_TYPE_MASK << DA9062_TYPE(offset),
+				gpi_type << DA9062_TYPE(offset));
+}
+
+static int da9062_gpio_direction_output(struct gpio_chip *gc,
+					unsigned int offset, int value)
+{
+	struct da9062_pctl *pctl = gpiochip_get_data(gc);
+	unsigned int pin_config = pctl->pin_config[offset];
+	int ret;
+
+	ret = da9062_pctl_set_pin_mode(pctl, offset, pin_config);
+	if (ret)
+		return ret;
+
+	da9062_gpio_set(gc, offset, value);
+
+	return 0;
+}
+
+static int da9062_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
+				  unsigned long config)
+{
+	struct da9062_pctl *pctl = gpiochip_get_data(gc);
+	struct regmap *regmap = pctl->da9062->regmap;
+	int gpio_mode;
+
+	/*
+	 * We need to meet the following restrictions [1, Figure 18]:
+	 * - PIN_CONFIG_BIAS_PULL_DOWN -> only allowed if the pin is used as
+	 *				  gpio input
+	 * - PIN_CONFIG_BIAS_PULL_UP   -> only allowed if the pin is used as
+	 *				  gpio output open-drain.
+	 */
+
+	switch (pinconf_to_config_param(config)) {
+	case PIN_CONFIG_BIAS_DISABLE:
+		return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
+					  BIT(offset), 0);
+	case PIN_CONFIG_BIAS_PULL_DOWN:
+		gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
+		if (gpio_mode < 0)
+			return -EINVAL;
+		else if (gpio_mode != DA9062_PIN_GPI)
+			return -ENOTSUPP;
+		return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
+					  BIT(offset), BIT(offset));
+	case PIN_CONFIG_BIAS_PULL_UP:
+		gpio_mode = da9062_pctl_get_pin_mode(pctl, offset);
+		if (gpio_mode < 0)
+			return -EINVAL;
+		else if (gpio_mode != DA9062_PIN_GPO_OD)
+			return -ENOTSUPP;
+		return regmap_update_bits(regmap, DA9062AA_CONFIG_K,
+					  BIT(offset), BIT(offset));
+	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
+		return da9062_pctl_set_pin_mode(pctl, offset,
+						DA9062_PIN_GPO_OD);
+	case PIN_CONFIG_DRIVE_PUSH_PULL:
+		return da9062_pctl_set_pin_mode(pctl, offset,
+						DA9062_PIN_GPO_PP);
+	default:
+		return -ENOTSUPP;
+	}
+}
+
+static int da9062_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
+{
+	struct da9062_pctl *pctl = gpiochip_get_data(gc);
+	struct da9062 *da9062 = pctl->da9062;
+
+	return regmap_irq_get_virq(da9062->regmap_irq,
+				   DA9062_IRQ_GPI0 + offset);
+}
+
+static const struct gpio_chip reference_gc = {
+	.owner = THIS_MODULE,
+	.get = da9062_gpio_get,
+	.set = da9062_gpio_set,
+	.get_direction = da9062_gpio_get_direction,
+	.direction_input = da9062_gpio_direction_input,
+	.direction_output = da9062_gpio_direction_output,
+	.set_config = da9062_gpio_set_config,
+	.to_irq = da9062_gpio_to_irq,
+	.can_sleep = true,
+	.ngpio = DA9062_GPIO_NUM,
+	.base = -1,
+};
+
+static int da9062_pctl_probe(struct platform_device *pdev)
+{
+	struct device *parent = pdev->dev.parent;
+	struct da9062_pctl *pctl;
+	int i;
+
+	pctl = devm_kzalloc(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
+	if (!pctl)
+		return -ENOMEM;
+
+	pctl->da9062 = dev_get_drvdata(parent);
+	if (!pctl->da9062)
+		return -EINVAL;
+
+	if (!device_property_present(parent, "gpio-controller"))
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(pctl->pin_config); i++)
+		pctl->pin_config[i] = DA9062_PIN_GPO_PP;
+
+	/*
+	 * Currently the driver handles only the GPIO support. The
+	 * pinctrl/pinmux support can be added later if needed.
+	 */
+	pctl->gc = reference_gc;
+	pctl->gc.label = dev_name(&pdev->dev);
+	pctl->gc.parent = &pdev->dev;
+#ifdef CONFIG_OF_GPIO
+	pctl->gc.of_node = parent->of_node;
+#endif
+
+	platform_set_drvdata(pdev, pctl);
+
+	return devm_gpiochip_add_data(&pdev->dev, &pctl->gc, pctl);
+}
+
+static struct platform_driver da9062_pctl_driver = {
+	.probe = da9062_pctl_probe,
+	.driver = {
+		.name	= "da9062-gpio",
+	},
+};
+module_platform_driver(da9062_pctl_driver);
+
+MODULE_AUTHOR("Marco Felsch <kernel@pengutronix.de>");
+MODULE_DESCRIPTION("DA9062 PMIC pinctrl and GPIO Driver");
+MODULE_LICENSE("GPL v2");
+MODULE_ALIAS("platform:da9062-gpio");
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/53116919.4827.1582846265561.JavaMail.javamailuser%40localhost.

------=_Part_4826_2133294364.1582846264848--
