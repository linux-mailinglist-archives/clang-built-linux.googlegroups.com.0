Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBGWWZHZQKGQE74CHFBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 1932E18A287
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 19:40:27 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id p18sf1464580wmk.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 11:40:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584556826; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUBRBtSb3ektJIdMtn4kRlnhuiUsJBBhCcCcfHevJwEyrD3aMbn8v9OAZUiExxth0F
         navsV/EJqTrSnrg/mwx07iol6EvVZ64N84zm1AScU7OjKHuOixbeS7CVbeZzJF856BiA
         60e8ij7C0FMWUd/xE4FkfZp/qtZy/BWopf6kdzjjshpRcVTmsYwpSo3PF7UZD/9RC+14
         3tcBEKprWvV5K2dYWx9Yc3XtZb3SQRKeHNv5ATxvxdOF7uEtm+Ji8Kk+DVN5ybrCbaWe
         UAhgptB+LYwhQ61mQyJNrsxNRHZfTkOXI5ZlbpzyGfpAFukq/5LaGC3Un9gnXfiF826o
         e9XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=Iff/1x4XjgI/BXolQowHz/cXRcDW5nOKCEnQhmajFgo=;
        b=NnaVB27bhCMVM6HmkUPAUnRkxxIGjwBIjOEdSYpJBjvRSrzFpgJzA4d9h5Ep3GU96g
         7uISCEML+RSapbTgMsvg0I/sR1o+gFlF06d53l1tDahTcv65pnpgZOQDe03m3Lwp8lgK
         Hi3B63R+HZdpukle7+tKlafzFCaSZ/ACEI8PjGnk1o0u9yYBTcK3b2Nb4VL2Dwz17HL7
         VEy/2QZJeAFjGU/e9krs10Lq5CUSoQss5y0Ttb4WME86zKfmztbBN/gdv1PkuH3rf5bO
         s1qmy30UWwzFcLYI9zhwo5on53vU6jXia4bDOlUyN5kTbv0CbHBX1JplygHNOXt+fRFE
         ttdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iPx0M9T8;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iff/1x4XjgI/BXolQowHz/cXRcDW5nOKCEnQhmajFgo=;
        b=Sg1cWzPNliFgFxpiqjM8jGj0i0RJE5Qu1rcDUQcniYLvaHTFldljujmyA9e7nTcefv
         7vvtvZWx9+c06eAREWyJYhID8Q2lTmPJr4RHWDP7+ivJfvgAAJrySTojSK3c2i5QlRpV
         YGZIKiNkrK++ZrZHDn7c7D0V4jNEg/b61AfYMkI/TTzqySO1AqVh+JMCF5E0gxji0pmO
         ltctkawEHw1B6Cg/ZIEszaEKxlAQUfMmJDiIymvVfxiTTbv6wuKVVUC6GC6BrWTCIScw
         15vqnN2p0KeD2LpRXdKK2ogIsS6g/Usr2zUCGU8xl0C2QxaZAWNwu1ZivrRdlGV76q3g
         dxDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Iff/1x4XjgI/BXolQowHz/cXRcDW5nOKCEnQhmajFgo=;
        b=culllROLtK0MjfuHjGqRy6GDhxY4hH7nYVqAdGG6T31p2TR82GMgCYJHG2ghXQDFYY
         Qjlrmr0xtT0xkpIBKkufCI4OX3QRNIg6dYmen0NlB8MAA0Rt9ChgiHjXKf/zE2CjxO2Z
         xapZSnQyeapzfugnvFaf3nXrFopuV4tC4+auFD4zHX36R0IcEg6xFaTth8wnKsV/f743
         4gHQfjUI07DM31aPrDgtNdpZzhxe4frrSX/CJuoaMQ1Z+uAHdpuWG6+4l55GDFdR2pku
         l+jQ5Mwiruj1LjZYJQU7AkGkED5mh6kjoSLB44JAumr6lqH6IqzavD6rBf73uddGHhQq
         sb6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ00szVt189BCTB93VFrcOLpIlstrcVmRfe42MmHvgb60FVjjIVk
	8qf8hagzjyWfvpOtOK98VUY=
X-Google-Smtp-Source: ADFU+vsnAz0wVIcaoFvKd/itq49R0o3L1SioT1DgNs8nAcqm3J60w/MPqnZmEoPkIP4cB24YEEw4/w==
X-Received: by 2002:a05:600c:148:: with SMTP id w8mr6561708wmm.146.1584556826820;
        Wed, 18 Mar 2020 11:40:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls1049152wrd.5.gmail; Wed, 18 Mar
 2020 11:40:26 -0700 (PDT)
X-Received: by 2002:a5d:458c:: with SMTP id p12mr7464463wrq.66.1584556826304;
        Wed, 18 Mar 2020 11:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584556826; cv=none;
        d=google.com; s=arc-20160816;
        b=WVeq/jXYfirTrUV7/LfeZ7S3SBa+SUjRUzyvkF68ksYhMVmY2kawdK7e7Sywyi580T
         juS4qx+ZuDdm4DBldlaT7J8GWW1fnrDi/v5n7BfwEXyhrORRCFTXwIiHTjXpovdE0LTl
         klL0tkJpNvwLc5yezbnsm8eLvmYdN0AZpFZkOMOX6I7eIWrl7ZgF5qCSchPkKj1A2vKw
         fCS/kODem/aRnE7qY6Z0S8FLaLz+hBRlQJmIe1tu/S4Q/QhchSgl8P+NXOJFOAmqXcbY
         LhxI8zZSOmTowYHYLiRKHSK28cTv4iynZAPclGccl29IHmlLyqXbXdBQeXBhyT4+dupq
         DKOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=eVfWpF06BG9PJDA4eRzZCq/MdYPVbfAsxnVFcbfvgTs=;
        b=g+A1gEbkaZDCJ45P1NFRUGgHeA0pfvaH2FbM4kg8yI6CCU2hSg8EeKN/qNIZ60kNih
         8ad2gsC4ypQd/uuzFGHEp4BsHgoHl5zssoSULCrrXj3DNXR/1+8uSWX07k4q3nLHY2ac
         /7NMP/7b39HvxWyVuWVIHLNBZVsWeOv+rtXhYxiYJ6lARDcOHuRIZyEWYOpwFv4wnOu3
         C8lh8V9twXPCRH4NWd4bA0gUTt90Y9O4riYedy5gRlmbdcHjokhsMYDhcq0M9iK5kwXU
         gKZH4UpTbWnHx/k7AqiX1s29ZcQqOWvr3mxkjsdeCJYdNjVH2HlnnM+cU+ii0CsKA3rM
         t6KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iPx0M9T8;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id n7si165022wmc.1.2020.03.18.11.40.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 11:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id f3so24791991wrw.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 11:40:26 -0700 (PDT)
X-Received: by 2002:adf:aacc:: with SMTP id i12mr2873089wrc.116.1584556825844;
        Wed, 18 Mar 2020 11:40:25 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id g14sm4973964wme.32.2020.03.18.11.40.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Mar 2020 11:40:25 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 18 Mar 2020 18:40:24 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1056466409.10585.1584556825292.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-defconfig - Build # 19 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10584_1862412943.1584556824722"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=iPx0M9T8;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::434
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

------=_Part_10584_1862412943.1584556824722
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-next-defconfig
 - tcwg_kernel/gnu-release-aarch64-next-defconfig
 - tcwg_kernel/llvm-master-aarch64-next-defconfig
 - tcwg_kernel/llvm-release-aarch64-next-defconfig

Culprit:
<cut>
commit 08120d236c47dd2bdb6f7366782f4756dd7f417e
Author: Alex Elder <elder@linaro.org>

    soc: qcom: ipa: support build of IPA code
</cut>

First few build errors in logs:
00:02:59 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:59 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:59 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:59 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
00:03:10 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:10 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:10 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
00:03:11 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:11 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:11 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="ec947d0be5f959fff44d59161401515a98a837f3"

Results regressed to (for first_bad == 08120d236c47dd2bdb6f7366782f4756dd7f417e)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
5704

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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-defconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/19/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1056466409.10585.1584556825292.JavaMail.javamailuser%40localhost.

------=_Part_10584_1862412943.1584556824722--
