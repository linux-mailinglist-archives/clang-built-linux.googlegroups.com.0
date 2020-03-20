Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBKPY2HZQKGQE3HSOZVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0439918C8DA
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 09:17:46 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id ce13sf4397166edb.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 01:17:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584692265; cv=pass;
        d=google.com; s=arc-20160816;
        b=I2NgccPPHx5ROnLCvOrk7tMmNg8iH5fejvMzcqyHTv7UlSMlABsBJSdggE03kBCgAH
         sQRdnOvPJ3dP2777/YPFbzONZIq2EC8C3gIxZG3i2Q7F3bEI0RUaSthDk13mxupnVdg8
         D5XlrruiQ5GHNFs+3ojqbzrIHV6Ns25t43PC5ld+u7S1Te7XzNuiOOTZ0yUuGYt9xOJT
         owHNdTd5aWKvTqrG5r1xIAU/4Jem/nQ9aUEMTfuuDZ+A5dyA6a7GhzhtpGO1ipGi+tNz
         5n8ga9Q4pj2Yq9HhOHBQ0y07CqSiV246oKNiHc08liPT1+8S2Lrg1L0r74OpUMSDXN/c
         l9yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=VdC5EoKHH9ja8MygLDQcXlZP3AW9QpGdZtZYUqElJJI=;
        b=sINyrruN+ZnwIQP4zY8nsg3oo/eEn2G59C897wAmeDYxk/dRDei7vs/PG7z3RJpbm9
         wLJxEcQurgUsRr/swauZHUVkKqUABA/DL7L4Lg8NOTvGXJ1qjCXKMCLISYPF7nnJCSs0
         sKx0dLKJDY1Ttkm5dRu6srzRvCZcQjQ5/PW0eTtqTCaCwK3yJ/xhuq/B0AVkg9/xyr0I
         0BtihmK+tT2PL2IQbo9ICTJ/eE8vc5JrclRkntI76IEhbqh69VvuFFDLbnLSXNCCZhzX
         V/SGpnkuW38Mejs2S/RQgOv8GpitpWOFpcIJIaUvGAn+goX6GSdlIZK6+IgaH+6mij0P
         EsiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=EfRMiro6;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VdC5EoKHH9ja8MygLDQcXlZP3AW9QpGdZtZYUqElJJI=;
        b=Kj+vr9/voI/djFrA5GzXvhADI0LMX/20S4AsH9BuVJ8cFRljav3uDRE/3kRpoGQzO+
         td17j5Aympi87xEwNg2KEvE0vhbqH3m6u9VvMGbtZj0xumBGmN7KWGUilRfMz3hvpMdK
         CLxh3+lFhhHRE2hrbEnMQMwwCvEdZo71YiXTxOA6/beSJCCi0Sv6bUuiO5vM4c0N3N3Y
         mD16lK3g5HbfSf9aui42jSk1+AFrEWKF2rHtUf/HFLPse3UDVn11wbN2vI7NXQJnQKKG
         axRiY3XDF0PNjjdK/ZrePz2jvF83MSRdMruVVxHIf/WEY+O/aVXh2UcqbwEZQZN/EMJu
         9RYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VdC5EoKHH9ja8MygLDQcXlZP3AW9QpGdZtZYUqElJJI=;
        b=TFGqQNjcPyhvjjVKPsF5pUlscIGtFG2N0rbw+4aPzdaasba8K8uoas+FKrHUD0o8de
         dvldnEO88HErW0PTyJOeAB6R2O8wVA6u8Nlq88UzllwLst29/h9CZhgpPGQLw2/h/FbD
         PAc+3Yiv4pJpcXu3uVX2CptcsuYxClrHjopA4L1Z97P7elT2o5CHbM9lu8Uqpv4dxW6z
         dv65LWWWFaZ46gdn1s8e/kRQFgJSq0keEpl+4rdbi19usj+ZlwSNVvXGdn7DwVTCrFzw
         nO3OT+pvdm9iNOU9FkOKhv6Nv+tbrEl7xz2tdI0ZUFjZi/iig4zGRGFRveEPuaQPYjst
         uydQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0HXGapa9jOoXGxVtC0CIuYDonD0Q4xOI+MBncInJOSYfq6ktcT
	wBbIiyqOJr/0jvW8OiHVR/g=
X-Google-Smtp-Source: ADFU+vva6VxBddU78UnpSE6J+IZiqf+fth9uLOc/chiTC8jLrNqNInK7KNw5Hh2xq/B76CcddgGt/w==
X-Received: by 2002:a50:d552:: with SMTP id f18mr6697298edj.341.1584692265653;
        Fri, 20 Mar 2020 01:17:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d99:: with SMTP id dk25ls2849973edb.3.gmail; Fri,
 20 Mar 2020 01:17:45 -0700 (PDT)
X-Received: by 2002:a50:8d84:: with SMTP id r4mr6817567edh.305.1584692265074;
        Fri, 20 Mar 2020 01:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584692265; cv=none;
        d=google.com; s=arc-20160816;
        b=l9NP0mwKWKq/xyIVR9ilqYmcPKJt/6DbG8xH3okdo2zqn85Wqpf9LJTrUljO5n1Uta
         v0Xh/0ToIl74WzIOHwAUxzFkK8DstFyaT3gNwhkdwlrshFq88nrpXhr5NGijyYgRy5zQ
         S1UdxNNV8Bc7ztA2J15NBK+6XSHeqb7ZV10RP3rNwL7hXzOXwvIqJU9+yOUfqJ6eG5Kf
         ZsY/cpLCNOpauftudIC2pfsvrLoU3/o6h79MVGr1CeTOGKHen0YCpqioIgcn2LE4YF1W
         0Gwhqo3In2fATrIqrDh/dOoaMJtS9oaEF8JEeWhMY/vLXakCksOet758/YGZ4o3l3hSD
         fjdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=+8hnarmChFO9I3VvjNS11Iu8qKkSGyIvrLimzZsR/O8=;
        b=T5V1lkbEpi0T/GsykvK1EIL/NOnotsPPGJPNHOlt/xbrwtq+kmcTJYMyEl1JosXxbv
         5E//j130//6CaFGE4ETHxcO2SV2qRe78FFAXowy5T+UnrOaFtRjhbx0UKsD/kL/Su/0T
         WWLmPLPpE9pR4ijVAiG0jS83BoKJ0pVF15zEUaz2CHcco1pLDsPgp7NofO9OLVTOgB8+
         vz9eT9XgR9a2UH0ezJN8CZUwjZPzXgNnl5t2XZe9jLbDYkkDFYQ4Vw7atpvKxQsUjEOV
         oYSWpKrpFWx7+mRqhU+65uNbz1QAR0kdLIpeJ86q3I+yDoGGpJjqqfKVW2J4N+H4f5As
         gkEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=EfRMiro6;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id ck3si110690edb.5.2020.03.20.01.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 01:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Received: by mail-wr1-x42a.google.com with SMTP id h4so6334663wru.2
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 01:17:45 -0700 (PDT)
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr9373203wrw.52.1584692264725;
        Fri, 20 Mar 2020 01:17:44 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id u1sm6940546wrt.78.2020.03.20.01.17.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 01:17:44 -0700 (PDT)
From: ci_notify@linaro.org
Date: Fri, 20 Mar 2020 08:17:43 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <134903312.10741.1584692264065.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-defconfig - Build # 38 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10740_340960675.1584692263162"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=EfRMiro6;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42a
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

------=_Part_10740_340960675.1584692263162
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
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
00:02:28 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:28 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:28 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:28 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
00:02:34 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:34 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:34 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
00:02:34 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:34 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:34 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="47780d7892b77e922bbe19b5dea99cde06b2f0e5"

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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/38/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/38/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/38/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/38/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/38/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/38/artifact/artifacts/test.sh
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-defconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/38/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/38/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/134903312.10741.1584692264065.JavaMail.javamailuser%40localhost.

------=_Part_10740_340960675.1584692263162--
