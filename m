Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBEHSS32AKGQECSLE6EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A21219BF10
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 12:06:08 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id j12sf1232075wrr.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 03:06:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585821968; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qcv0FcNEd4sSaw/VWyS6T3N9M/tgl9z6Gaeh5T+iEE+XSU8HoMKL6XUkDLrUlwleDq
         s4Q6K4X9JQL7lwrT56dCTMT+V647lsqyHGSFpfRQc9jPgXkEQrpobmuZiIY1OvwL51aK
         ZT4CLaTI84y6j9gqw9L5fdaRQ/Eg2F2e4d+uVtjpaK4Prmd3UOWxeEy8XlxtrRpQECMj
         Z6gFQDQeIBdZPRyjiMZAvW5XVw3ZeRpwGVgpfw0xTxVxIctasaOOrSuqofcz0hz/Z8Hr
         VknHbPc0COk9ut7Rspmj5kJ1Os8JczCj1lYoAL1rESNrnmIQ9kYUcl089+RHfHhqt5Zc
         B79g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=c2AU0JlDsbaLmzvaKpFYvCciXij6ac8PfCqhrE7m21Q=;
        b=y1pZ79CvMlh1jlyT0zMLFMUrW78IpQRZWkQU1upgPDHllHWnkdIdtvQI6Kk+F6jZbj
         FLgO5eQPDQfb5LbBfMz8L9MhAlwlXkG/nOuEZ7MfIqJAFJJ8uPwH58+RfVxDvjZCMEVF
         Bura+fMxGsFZ2XGZKjtOKGCF7wCe70hlcqWWgkAjoqyJkxF2ZMrTOGePKJGMFV07RlEi
         esPceOTvnVORJZgFyDjnXmbgfWXPUtaLuK/9jQlx8L2H7PMnPH6PB5pNJhuU9PSKQKho
         QnWlSsFKThjB3IMvQA2hq/02efYPug4aAa8e1Lg67KBpMy+omZBQ8yUsz6hhJ8I+UBIf
         1C3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=J6CHskje;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c2AU0JlDsbaLmzvaKpFYvCciXij6ac8PfCqhrE7m21Q=;
        b=WkaIEMEmLO8FJL5hzJvbTU3fbCClR3R43LUaonjHxgEI8km4rT1b5NXE2crpZH6/J3
         uWUM1et96a1QOHPzsoBY59g+SrIXD9LgJE7JmrCRgBg49RAxRsvlyQ3w22hph5XEZMz1
         AvQ625M6hqKk6vQx9G03pulEPazmhqs9v4iLGIIiPcyidJ6BFJPGouZsrarGZeCn4YeK
         OntWjxXOWm0OP2bNUYNkh8aCwjCbalgG2JOZK4eVMBarovBcmqcBhZCL/A5O3yptFUi4
         8jD8xs9N9gP3Tas4TXZe8iVkLIdpPLz1U2vfBsAwYw/0JlrXCE0KgxMOVImNpV+YiG8i
         jH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c2AU0JlDsbaLmzvaKpFYvCciXij6ac8PfCqhrE7m21Q=;
        b=UpiOXlDc6qfIH7kXMX0Gf0o84hz5P/Sj38tKgt/TEXj5qWbTzsvIcxzl/166/PmewG
         m4G9mjiYbQOxL1GjV9wq3N4RD4zKYz2QFuloK7TLL46ZM0gMNWqiIEHWxn0a/yeOsUOd
         y5P7sUJFBq/PvLQmzFkKQziNr1BhYsAoTTBI5zXTA1IAVgawAUrFywYB6706hsPIgT2Z
         hQNRnpweVHWIRF01j+D0UAUAGV9gPXxdbFn6IM+kJijy7uANK3cKFhmMjiFba6t4iDvD
         AFlPfAqAjIuZhnRmlocUVh0pYWbGrXN5MpRMMaatDpwF3JHJA8m0i1r5jSz9S/ErZ5o8
         vSUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZF8GebpREcuzgMRGOLHklBcjWtUspEOLIcnCNTcr6PlHrKN85L
	nCYeQxt1sigUPeeo5Y87/M4=
X-Google-Smtp-Source: APiQypLpgrdNAIOuQZQ/IY2z5WjJ2bTmDtRG61JvinVVNDkxi7BtEZa4l9ZFLaZHefiOJHvfDzR1KQ==
X-Received: by 2002:a1c:b686:: with SMTP id g128mr2664867wmf.75.1585821968191;
        Thu, 02 Apr 2020 03:06:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls801131wrp.6.gmail; Thu, 02 Apr
 2020 03:06:07 -0700 (PDT)
X-Received: by 2002:adf:9e94:: with SMTP id a20mr2802409wrf.334.1585821967639;
        Thu, 02 Apr 2020 03:06:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585821967; cv=none;
        d=google.com; s=arc-20160816;
        b=Zml5WmNdx2wPY5aK4NVy+kLTqpgffJR7N8dpxlZ9qmcW/zntcJo6JqrcRIrbrdTj8o
         e9cM5zAHterkv51lTy77wy2WMs3Em2ypYrMI00cxiw2Enz16Y0/yT0GYVSiumbryi3ub
         MvrCDNiLQ/ftm6LCvFDnu4m6XR3hVMgC4xTGtuJU/X2viqaq/xlzuG+2T93WpdGLTZQj
         8IoJdBicjOJFdknHztONWGUZRrcNzcuI9qR3iwc3A20Ge25dOPlXlewD3hcErOtHP1r6
         EPkr5QqD2pt1x6Q3CreOSvJnWwS1jLXgh62U3zB8nlI0GjsgSXKUo0Q/ujsJdRaLG8zY
         M2Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=twtOO1z5kWe28oXevbQ1l4CsbgalzZMfRVbb87tITN0=;
        b=XQtpY3yBCY9nONc3zzL148TkpaxzDl6YupzUbfL4CpuN2Rk9WDazdaLF/CqLdiS+6a
         hihTJCr4lA+N6tuwmSoSWx1rCB+p4se8F9UXwW4hdvu78ydgzD0vsgog1oFzj+IUUwcO
         98jJkOpkVIV1+cRQnAHGR7+/m8tG2mKUMF026/qyZY1/BEzUZxcIsy74Q0F2Pxp2467I
         /Gt3LwD64lJU7CUPjB7ioHzgQuaBpqOGlErmDKXPy/RkERX0pfjiLbRY+QJShwUO2wxQ
         FrFCANG1V0LojIDgwjPMebYoAa5mcVuODR0D2ybO+R4bmGl+EKtBIQC00u9aauM974VA
         VGuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=J6CHskje;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l16si338699wmg.1.2020.04.02.03.06.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 03:06:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id m17so3403894wrw.11
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 03:06:07 -0700 (PDT)
X-Received: by 2002:adf:e90b:: with SMTP id f11mr2682854wrm.65.1585821967082;
        Thu, 02 Apr 2020 03:06:07 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id o9sm6753530wrx.48.2020.04.02.03.06.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Apr 2020 03:06:06 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 2 Apr 2020 10:06:05 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1299521751.13881.1585821966560.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-defconfig - Build # 26 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13880_791660639.1585821965823"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=J6CHskje;       spf=pass
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

------=_Part_13880_791660639.1585821965823
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-master-aarch64-mainline-defconfig
 - tcwg_kernel/gnu-master-aarch64-next-defconfig
 - tcwg_kernel/gnu-release-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-release-aarch64-next-defconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-defconfig
 - tcwg_kernel/llvm-master-aarch64-next-defconfig
 - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-mainline-allyesconfig
 - tcwg_kernel/llvm-release-aarch64-mainline-defconfig
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
rr[linux_branch]="cad18da0afb1bc7b37d73a74067ab7ff5974897c"

Results regressed to (for first_bad == 08120d236c47dd2bdb6f7366782f4756dd7f417e)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
5704
# First few build errors in logs:
# 00:04:06 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:04:06 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:04:06 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:04:06 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
# 00:04:12 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:04:12 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:04:12 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
# 00:04:12 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:04:12 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:04:12 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1

from (for last_good == 530f9216a9537b58cdc2f967b5cd78f5dafb34c4)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
6265
# linux build successful:
all
# linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-defconfig/26/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-defconfig/26/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-defconfig/26/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-defconfig/26/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-defconfig/26/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-defconfig/26/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-defconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-defconfig/26/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-defconfig/26/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1299521751.13881.1585821966560.JavaMail.javamailuser%40localhost.

------=_Part_13880_791660639.1585821965823--
