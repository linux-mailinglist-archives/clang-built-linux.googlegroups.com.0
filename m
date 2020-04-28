Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB25EUL2QKGQEFDGFIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9531BCD6F
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 22:30:36 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id m6sf2192060eda.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 13:30:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588105835; cv=pass;
        d=google.com; s=arc-20160816;
        b=d8EhSDZeAvvUMT4XFaIME+zbnWm64G4hBjvgyNV7rbqt8lJvVAidTv2oEtCkVSSGJ0
         wo9NWLrQwpFzSD82nCY+7o04MZsfZzl1tZSuzZVRl/y0rOdME3Cyv4nsfj3//8yRqNnF
         W89uJMYxH78XLMIQNyR6+bhdjEyyAAbhednu3khmtWUxxfLfLYD8KvmRPLZwuAGq2Po0
         PlkcXcEX7f5b8fb5ezBGQdWYgbkG/7nBkdsPBH0qsRBwTY3BzJwntonp/b7Ex2VKaTkX
         C/xirBohvZ+B5T1DDR7ehG9oNEILXklXHkXCrBKDcVjmrzL9cfJo7POvFuxHQpRCPKFO
         s9Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=3pIVS6hoBbLYXOJ5ZxDc8Dk6/MPsTuJG54gtdEDTtTo=;
        b=yV+h7bZcw5SlOCpWsjJ9gqJM89byMwwVAmFkhrw5Xhe70dmRnzZnWp3/2rcIn/h8bk
         dQ10LnIYWVM5wHuN4CdzUbjMO1CIHeBpf62FXDnF1WYkfIymyqBcXN36fhaK50UxA55c
         leInCv3w2Avq2lqOkYxtfCVZKPcGeOjBDgQI3Zx2EcTXnX0y5AfeifSFfm1a1Nz9JJWr
         oDWbGSKIAYeT+IKjq0of7XFF2jKIICPL+OnIF8TZXM9Nrx35irNARELY0VPQ9vzEtyTR
         XGp+xUYZmeeNG72xzr8RaSRPrD4b6TMPaGx8P6YnRHOcZEiDUQOxXtQuCibS/bm0fkQp
         zRow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ksHDarod;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3pIVS6hoBbLYXOJ5ZxDc8Dk6/MPsTuJG54gtdEDTtTo=;
        b=lJwFXOBbmGoVJm8as70z5KQiyVSsUWPxGkkSVPaVw6oabI+K3Xq7Y5UPGGoARE+8P/
         HgOjJfXrDzCDPxkio41EoHo+Ku81nfyEBM/Ktkm86i0g+mcVzDPv0D6St2AAhfJ8DOLC
         LSJtZ/by7SGve8i+MSGs0EIYHMgZou3SO/7jFvBcxlNFRMmXpqT6VngKp3z6FA+q5f1m
         ksbZIZO1vZUSlTC017/H3dA59EXrAA2nm0C3QFvRA3FNcgCN6AcYm1AaGYBroqMIsupY
         y19bRqql4yriYW0P9mpQHCnLqlw6rJZq2X8wGLZ1Nt8KX4fvwp0k+YlBsiR5autetVPL
         gZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3pIVS6hoBbLYXOJ5ZxDc8Dk6/MPsTuJG54gtdEDTtTo=;
        b=SyOIMFWgyHpEDxnvymQDVoX/LdMlN2SAZFI9ky6ECUYqk2csMpjRdt1P0y+vzUtpuS
         eH8/8IhpuO/PGDKcJI8xTKqQyQSAr2FVC41zXdPCgHFgIbank/yBsjjeH9wyFb+gktbT
         ipRHs0CieH6/A9WVpu1RCsuri6XgGqlbqJEznr7BOaL822JVDjO93KfU52of23ACnBZO
         cVZSXe3D2wqNOOOBaxxpJ7Qv5PbIWwUnod2N+JBNyI+w7OBUusiawFS8DKKKf0+eBGzH
         8ywzRu3X+gj//RQrHo+WRtb9gzkP23Q11fHdD2xP0A1okq2Z7yPAogW1HkfrPu4Gi6qI
         eVfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZTM4/O8UWasfcrWmCSf3BAQ2mnqchzkxzO8/GnTHVJyZVFKcU4
	B5VAxD550Hh/j6kSBesW71I=
X-Google-Smtp-Source: APiQypKoJoK+81Ld/YobDqjzEYiPedclmoVef4nd/cHzO1E+pxcNAZ01O3rmHuMCI872/kMgh6bpMw==
X-Received: by 2002:a17:906:4a4e:: with SMTP id a14mr26744661ejv.363.1588105835610;
        Tue, 28 Apr 2020 13:30:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a2d2:: with SMTP id by18ls10408347ejb.2.gmail; Tue,
 28 Apr 2020 13:30:35 -0700 (PDT)
X-Received: by 2002:a17:906:8699:: with SMTP id g25mr470886ejx.365.1588105835013;
        Tue, 28 Apr 2020 13:30:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588105835; cv=none;
        d=google.com; s=arc-20160816;
        b=SloQMtjgPJUxLEGBEMxvM5rvCHnQsn0cHxAuDijet06X9dAJKE4/KSUxjFFZRnAo3s
         tRB8wbWTgNI4Syrh0ePsUUn7XFeM3TaRUC2xRtW6c26SFWMLQ8aXUKo0jrHLIDf/crYF
         UYXMYTF0LPJfdPhBGjIKakerobU2mdRNtNPMeJZp+36obbC8bLsiVvYA4jlXbawi2lih
         oKeeH7K40ttq9Svxx0BJgg1uyLOj1kmweRiqDIho0EsI1BhwFCvjMNCUQE1MGi5Wimcl
         pdkz4mjS3EANaKJZg+p9Nw8FPdu4wSvBulm3kXoaVQmIvLIjF83NGPDB+fGmnKkAgSN0
         8z+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=G4NdnpC/IbgUgL+80gGYbl5Uh1hiHt1EqwayWgsYTio=;
        b=top8fN3rKhCP7nC+Wpg3PEjk+v1MEtMt5eS3xN3snaXlFTEpKybevb4EoMG0QuNzko
         f/CYTJ2AUAA0v2Apgl1TgMPytR27tDQYLI6eZoxARjf7bc8mIKWOX1+rAvvSUS1J3T1I
         YyxuIU4xARFDyTFiXijVjlWKvKPUNqT9bizgz6PvcwpDm2l0OQecjkvpc0cUKvXI6Bt0
         0sLETlG7O3zuDDLb1eMOJ4yvZucfvfjMrN3oUftv7iqt3YHf9RAwCg4lMHpK0uCETkMn
         19JEr+dNjnsKjkYm4t16UyDTlfgDGDPRHdZmMslA1hkua3NMOAkdWW4PTVqU8WAscbpq
         pOzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ksHDarod;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id f24si159303edw.3.2020.04.28.13.30.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 13:30:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id r26so229545wmh.0
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 13:30:34 -0700 (PDT)
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr6153000wmh.47.1588105834588;
        Tue, 28 Apr 2020 13:30:34 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id y18sm5052503wmc.45.2020.04.28.13.30.33
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Tue, 28 Apr 2020 13:30:34 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 28 Apr 2020 20:30:33 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <939302357.19287.1588105834030.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 65 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_19286_1279355662.1588105833548"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ksHDarod;       spf=pass
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

------=_Part_19286_1279355662.1588105833548
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 02b925a9104d994191cdc7210a5ef07f0f3e7a4e
Author: Andrej Picej <andpicej@gmail.com>
Date:   Thu Apr 23 15:27:33 2020 +0200

    hwmon: (lm70) Add support for ACPI
    
    This commit adds support for lm70 commpatible drivers with systems that
    use ACPI.
    
    Signed-off-by: Andrej Picej <andpicej@gmail.com>
    [groeck: Drop direct include of acpi_bus.h and acpi_drivers.h]
    Signed-off-by: Guenter Roeck <linux@roeck-us.net>
</cut>

Results regressed to (for first_bad == 02b925a9104d994191cdc7210a5ef07f0f3e7a4e)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
20445
# First few build errors in logs:
# 00:35:38 drivers/hwmon/lm70.c:186:34: error: use of undeclared identifier 'lm70_acpi_ids'; did you mean 'lm70_of_ids'?
# 00:35:38 make[2]: *** [drivers/hwmon/lm70.o] Error 1
# 00:37:06 make[1]: *** [drivers/hwmon] Error 2
# 00:38:56 make: *** [drivers] Error 2

from (for last_good == 8e5c4f885286b57f5e9e6a80e554fed3daee414b)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27984
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/65/artifact/artifacts/build-8e5c4f885286b57f5e9e6a80e554fed3daee414b/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/65/artifact/artifacts/build-02b925a9104d994191cdc7210a5ef07f0f3e7a4e/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/65/

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="a5840f9618a90ecbe1617f7632482563c0ee307e"

Reproduce builds:
<cut>
mkdir investigate-linux-02b925a9104d994191cdc7210a5ef07f0f3e7a4e
cd investigate-linux-02b925a9104d994191cdc7210a5ef07f0f3e7a4e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/65/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/65/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/65/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 02b925a9104d994191cdc7210a5ef07f0f3e7a4e
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 8e5c4f885286b57f5e9e6a80e554fed3daee414b
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/65/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/65/consoleText

Full commit:
<cut>
commit 02b925a9104d994191cdc7210a5ef07f0f3e7a4e
Author: Andrej Picej <andpicej@gmail.com>
Date:   Thu Apr 23 15:27:33 2020 +0200

    hwmon: (lm70) Add support for ACPI
    
    This commit adds support for lm70 commpatible drivers with systems that
    use ACPI.
    
    Signed-off-by: Andrej Picej <andpicej@gmail.com>
    [groeck: Drop direct include of acpi_bus.h and acpi_drivers.h]
    Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
 drivers/hwmon/lm70.c | 44 +++++++++++++++++++++++++++++++++++++-------
 1 file changed, 37 insertions(+), 7 deletions(-)

diff --git a/drivers/hwmon/lm70.c b/drivers/hwmon/lm70.c
index 4122e59f0bb4..63123fdb23eb 100644
--- a/drivers/hwmon/lm70.c
+++ b/drivers/hwmon/lm70.c
@@ -25,7 +25,7 @@
 #include <linux/spi/spi.h>
 #include <linux/slab.h>
 #include <linux/of_device.h>
-
+#include <linux/acpi.h>
 
 #define DRVNAME		"lm70"
 
@@ -148,18 +148,47 @@ static const struct of_device_id lm70_of_ids[] = {
 MODULE_DEVICE_TABLE(of, lm70_of_ids);
 #endif
 
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id lm70_acpi_ids[] = {
+	{
+		.id = "LM000070",
+		.driver_data = LM70_CHIP_LM70,
+	},
+	{
+		.id = "TMP00121",
+		.driver_data = LM70_CHIP_TMP121,
+	},
+	{
+		.id = "LM000071",
+		.driver_data = LM70_CHIP_LM71,
+	},
+	{
+		.id = "LM000074",
+		.driver_data = LM70_CHIP_LM74,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(acpi, lm70_acpi_ids);
+#endif
+
 static int lm70_probe(struct spi_device *spi)
 {
-	const struct of_device_id *match;
+	const struct of_device_id *of_match;
+	const struct acpi_device_id *acpi_match;
 	struct device *hwmon_dev;
 	struct lm70 *p_lm70;
 	int chip;
 
-	match = of_match_device(lm70_of_ids, &spi->dev);
-	if (match)
-		chip = (int)(uintptr_t)match->data;
-	else
-		chip = spi_get_device_id(spi)->driver_data;
+	of_match = of_match_device(lm70_of_ids, &spi->dev);
+	if (of_match)
+		chip = (int)(uintptr_t)of_match->data;
+	else {
+		acpi_match = acpi_match_device(lm70_acpi_ids, &spi->dev);
+		if (acpi_match)
+			chip = (int)(uintptr_t)acpi_match->driver_data;
+		else
+			chip = spi_get_device_id(spi)->driver_data;
+	}
 
 	/* signaling is SPI_MODE_0 */
 	if (spi->mode & (SPI_CPOL | SPI_CPHA))
@@ -195,6 +224,7 @@ static struct spi_driver lm70_driver = {
 	.driver = {
 		.name	= "lm70",
 		.of_match_table	= of_match_ptr(lm70_of_ids),
+		.acpi_match_table = ACPI_PTR(lm70_acpi_ids),
 	},
 	.id_table = lm70_ids,
 	.probe	= lm70_probe,
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/939302357.19287.1588105834030.JavaMail.javamailuser%40localhost.

------=_Part_19286_1279355662.1588105833548--
