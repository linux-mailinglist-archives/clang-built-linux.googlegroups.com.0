Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBENJSX2AKGQEDT5TR6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AC919BA84
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 04:57:22 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id q14sf803516wro.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 19:57:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585796242; cv=pass;
        d=google.com; s=arc-20160816;
        b=iJO+xinm60iKX0sk9Se07l05tL79VFmzy+JXo0WuhKLOf5kHtRbnRQ5FBh6kJxJhq1
         nGpqvr2B18YSGJZukDNCeplJlU3cp81/ueSbxrJNPwMaavLr3Ui6RlXh2RaTbCqSzIs8
         ZewDOf6wQUjpbSq3nnMpQEQGY+9Ndz6Ahp0Z38mYRinaK0VaaVlZHs2kyR+MbN6kaROo
         PdxFnaSl7lx0xhnxOZAYWM5X+vddTxy2VcBhfLI2MpUtRuMneQ/+2TjUiI85XgrGy7hF
         AGo8uHF/ROsisXOwHdcMoVpx4GTiQJZfR0Ahys78x04H3c9t9KTbwa1+0rsGwTOpr9pb
         VqGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=lk9L5vUEFAknB2SLKmHxKkJ75Fyrl2jryS3xIOI0A9M=;
        b=ZQlc3ICzmtfsJ8lT/RIjGmdf/uwApxM+Q1FLRjKp/qCajJUOW83nOlqDWM8Ak0Bxs0
         KJCzYIK1mc2xefKudseAraVAvut+nDpF7J8LTqwKW9Wru+6GKwuRvAvDCEJ1aYR+9p6k
         IDcTXmGnyNIyvR/B0wv1xP60J/3TtYe4JE3O4eX0or8LTNtuUZbyP5Ic3L+M4BZIvls+
         lFnOPPtp3JHwwPNnUkR/4SGVWsFHtF8+n6kxnz9ZLg4N4/h1OfHPdoTNuu8K0Buf6iBX
         1Jmsp3RTDV+9E6oqtrJtK/NRIJnltZ3R5E0YBf2V4bA4v8yyfsT9r1D7M5t9HTazdhmF
         X91g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xSKdhq+3;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lk9L5vUEFAknB2SLKmHxKkJ75Fyrl2jryS3xIOI0A9M=;
        b=jQd6eH/wpRJbbzn+1R9cH0mwH0TDuFV9m6lqIi9lN86PCH77K52T7joo1KO1f5nxfq
         ZbCIznBFoRsMAUd0J5nL4u7EDqUsGi5W8m76JBzvU3kKcekfLiwhKU4PVYlOEr6Ro9ja
         Y6P/7i80yt+Plm0hrhs55LHzvjK8Q1wk7bory59smMUtTQonSrRZ3UwmGM+KCGy6Lse6
         4UY7JUC8zwFz2ROWU2bCHRGjdIZb0GpEyE5X9bmWBLWTfBaxB7eQ0ldGPPjIvmWa43qo
         9Bynqq/dzvtMuLLwp/yANSXdFUNAVw9q9w47mDKyg9jOpLKWtcOf3sLiktG5H+lbkPkY
         H7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lk9L5vUEFAknB2SLKmHxKkJ75Fyrl2jryS3xIOI0A9M=;
        b=l07NfMKcYba0P6io/VYfuvouxQ6MMnaMw0zgkSbgQXI9ZRUbRobZX+J111kJk4SdGB
         KoYKtoEfLYuyaq8wR+q6H0elsNkmCHHyNSFHmDdsn4nHD24NRZHmF5WFf3jZKJsxU6Xm
         CX4BgfbTQvH9WxFnQaIRo3qcuXdiH9RCaU7MwwggdTiYYbQ6j0wR/Ev1DX8mNf0RbP9B
         2umH/aAo2X1RpqDAT5H1G8ML4T9AgZJQKjGjhV1QBz/AxvzZWcvZhZj5jMRsAEu9PpvQ
         CCHJ8ZHsDGaIjWPVOrH+JHDbHcjvOERhM8lDkaplUG5a0iUv8HJssttdDq3mHaukc/Xk
         NWwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZi2b/qhQa+/Zpk86dR467yJHZFF3z0miCo2lCts2jfTApURR2U
	oBJqe9DGL029bV74dVQrSw8=
X-Google-Smtp-Source: APiQypLEtpXBIlLpZRFJjYqUR94n5yxkzyi4seb5UlGDKCm+aEUrxaR5ymRwX/4UjUMymBeWmVwM8A==
X-Received: by 2002:adf:fac7:: with SMTP id a7mr1071702wrs.191.1585796242032;
        Wed, 01 Apr 2020 19:57:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2250:: with SMTP id a16ls576269wmm.3.canary-gmail;
 Wed, 01 Apr 2020 19:57:21 -0700 (PDT)
X-Received: by 2002:a1c:5a43:: with SMTP id o64mr1090920wmb.95.1585796241524;
        Wed, 01 Apr 2020 19:57:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585796241; cv=none;
        d=google.com; s=arc-20160816;
        b=0IHQZmpoWCleMOV86pLcu4HTVAUg43el1G6xk0RRgu8guTuwFe4gnDRLCYqzp04bpv
         CTiHoZv0OYxKxdPbZh86iqE+fYZssplPPIZAhn/7mdFzfJvVAfnNVJ0PYCk8NqH5Fmfi
         lDckJ0ssdpwwtjxoeTNlcvzxgHve5BYqV3yumSgIErN+p25EYlHTyUphhzinI25I7Wx5
         3AnFI2glffWLNGP22oGgw9z6xeA29yzuey3oz6B/343NR5+CUY5wOq/vknBGSj28M3C0
         rIiE4yRnoZ1KALWJtVAUXITT998LtYRCKGWyOp0JJCqDQx/5UqbmJX5mHmd8GaCqeuFX
         LH9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=mdRVIf2Ejx9vsSaknKYs2zkgzEm2xENIodpnFYjKIYU=;
        b=aNaaFINTSadO1pWeqXvlCmkuHN/x37w9WB5tTtW8srVNXf+7Bfm9DMjdywz3xcw/Au
         ef9b7qsdDbT4vYkTSfLDm9DvYh/Pf3jIrl/uZ75qnzPjnQjkynHTmlm0qsAq3C6Nv1c6
         l2aubfLpvLUC0rh0GH+U28skg//nYpIRJ42xYLljFmRrQKn1q8xE5ZgynhrySj4XPxth
         NjmLlHHaWooKt7u7hgL2W6CogOsIf30poqqHAc9fJHlnYgMtA/78CZ01XFGqEs+DcQD5
         ZU4M2vn5Xgrex/MEZgId4antambA8a4CBZ4BFrPWOwCkiKertctGCbX2mh5JWkXGV0YH
         gjQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xSKdhq+3;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b81si181416wmc.2.2020.04.01.19.57.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 19:57:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id t8so1822783wmi.2
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 19:57:21 -0700 (PDT)
X-Received: by 2002:a1c:cc0a:: with SMTP id h10mr993310wmb.127.1585796241044;
        Wed, 01 Apr 2020 19:57:21 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id y7sm5736823wrq.54.2020.04.01.19.57.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Apr 2020 19:57:20 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 2 Apr 2020 02:57:19 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1584563730.13827.1585796240352.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig - Build # 24 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13826_938758480.1585796239747"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=xSKdhq+3;       spf=pass
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

------=_Part_13826_938758480.1585796239747
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-master-aarch64-next-defconfig
 - tcwg_kernel/gnu-release-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-release-aarch64-next-defconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-defconfig
 - tcwg_kernel/llvm-master-aarch64-next-defconfig
 - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-release-aarch64-next-defconfig

Culprit:
<cut>
commit 08120d236c47dd2bdb6f7366782f4756dd7f417e
Author: Alex Elder <elder@linaro.org>

    soc: qcom: ipa: support build of IPA code
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="458ef2a25e0cbdc216012aa2b9cf549d64133b08"

Results regressed to (for first_bad == 08120d236c47dd2bdb6f7366782f4756dd7f417e)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18301
# First few build errors in logs:
# 00:08:54 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:54 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:54 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:54 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
# 00:09:02 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:09:02 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:09:02 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
# 00:09:05 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:09:05 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:09:05 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1

from (for last_good == 530f9216a9537b58cdc2f967b5cd78f5dafb34c4)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18358
# linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/24/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/24/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/24/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/24/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/24/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/24/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 08120d236c47dd2bdb6f7366782f4756dd7f417e
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 530f9216a9537b58cdc2f967b5cd78f5dafb34c4
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/24/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allyesconfig/24/consoleText

Full commit:
<cut>
commit 08120d236c47dd2bdb6f7366782f4756dd7f417e
Author: Alex Elder <elder@linaro.org>
Date:   Thu Mar 5 22:28:29 2020 -0600

    soc: qcom: ipa: support build of IPA code
    
    Add build and Kconfig support for the Qualcomm IPA driver.
    
    Signed-off-by: Alex Elder <elder@linaro.org>
    Signed-off-by: David S. Miller <davem@davemloft.net>
---
 drivers/net/Kconfig      |  2 ++
 drivers/net/Makefile     |  1 +
 drivers/net/ipa/Kconfig  | 19 +++++++++++++++++++
 drivers/net/ipa/Makefile | 12 ++++++++++++
 4 files changed, 34 insertions(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 66e410e58c8e..02565bc2be8a 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -444,6 +444,8 @@ source "drivers/net/fddi/Kconfig"
 
 source "drivers/net/hippi/Kconfig"
 
+source "drivers/net/ipa/Kconfig"
+
 config NET_SB1000
 	tristate "General Instruments Surfboard 1000"
 	depends on PNP
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 65967246f240..94b60800887a 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -47,6 +47,7 @@ obj-$(CONFIG_ETHERNET) += ethernet/
 obj-$(CONFIG_FDDI) += fddi/
 obj-$(CONFIG_HIPPI) += hippi/
 obj-$(CONFIG_HAMRADIO) += hamradio/
+obj-$(CONFIG_QCOM_IPA) += ipa/
 obj-$(CONFIG_PLIP) += plip/
 obj-$(CONFIG_PPP) += ppp/
 obj-$(CONFIG_PPP_ASYNC) += ppp/
diff --git a/drivers/net/ipa/Kconfig b/drivers/net/ipa/Kconfig
new file mode 100644
index 000000000000..b8cb7cadbf75
--- /dev/null
+++ b/drivers/net/ipa/Kconfig
@@ -0,0 +1,19 @@
+config QCOM_IPA
+	tristate "Qualcomm IPA support"
+	depends on ARCH_QCOM && 64BIT && NET
+	select QCOM_QMI_HELPERS
+	select QCOM_MDT_LOADER
+	default QCOM_Q6V5_COMMON
+	help
+	  Choose Y or M here to include support for the Qualcomm
+	  IP Accelerator (IPA), a hardware block present in some
+	  Qualcomm SoCs.  The IPA is a programmable protocol processor
+	  that is capable of generic hardware handling of IP packets,
+	  including routing, filtering, and NAT.  Currently the IPA
+	  driver supports only basic transport of network traffic
+	  between the AP and modem, on the Qualcomm SDM845 SoC.
+
+	  Note that if selected, the selection type must match that
+	  of QCOM_Q6V5_COMMON (Y or M).
+
+	  If unsure, say N.
diff --git a/drivers/net/ipa/Makefile b/drivers/net/ipa/Makefile
new file mode 100644
index 000000000000..afe5df1e6eee
--- /dev/null
+++ b/drivers/net/ipa/Makefile
@@ -0,0 +1,12 @@
+# Un-comment the next line if you want to validate configuration data
+#ccflags-y		+=	-DIPA_VALIDATE
+
+obj-$(CONFIG_QCOM_IPA)	+=	ipa.o
+
+ipa-y			:=	ipa_main.o ipa_clock.o ipa_reg.o ipa_mem.o \
+				ipa_table.o ipa_interrupt.o gsi.o gsi_trans.o \
+				ipa_gsi.o ipa_smp2p.o ipa_uc.o \
+				ipa_endpoint.o ipa_cmd.o ipa_modem.o \
+				ipa_qmi.o ipa_qmi_msg.o
+
+ipa-y			+=	ipa_data-sdm845.o ipa_data-sc7180.o
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1584563730.13827.1585796240352.JavaMail.javamailuser%40localhost.

------=_Part_13826_938758480.1585796239747--
