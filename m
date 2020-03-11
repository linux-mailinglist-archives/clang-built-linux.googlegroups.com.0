Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBCHHUPZQKGQEIWQTX5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B984181B02
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 15:19:53 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id 18sf364067ljr.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 07:19:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583936392; cv=pass;
        d=google.com; s=arc-20160816;
        b=WPYQFpXSL6mSCaOcXmiOiDcpDcB8oktm0+9fdZC/7zpPhXud4x3VYAqoG1MRSN2U54
         Uee54q78lXGaBecdufk4L1xXZzk9xTguTBvFINZyrigRbE7S3EIRNNPZYz5y3NnprJdB
         5rrKYW2BmkNqw8ZAzeRNnzc+MVxp1euyVCT118t5wYVdDx/40WguCPKh/WTsX3TuQkPu
         Rzob2uTxjMPD+5P9QjCPfssB9PzQw5GVEOuQziNF0OYan1ZSAyslIY/WymlPl2nNY8Qt
         y+WnVI9Yqjf8RdDBnM1c30lpq8PlLQNky922JKpxDmC7rNek9LOwN1bed4jgX0iQCBFT
         pVWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=+FbrOzE/Xs2/6i3xT8fn3zn1vSGBU24wVjD8wBVfpd8=;
        b=bAhLhnU/sIVJnWC5aOTCrHuocpQDdh/qyYSpHZUvxPO+4OEIAdmC6tDgGBkrH+5cp8
         KEvMdWGdXCvhZLqEmVbl3TiG3oeK35vRHD+5W+VD4BQ5WvSYsYPtaUzgIALaCeFiPN60
         UdyCGy597ZXM+YIgr4lD9I6m8Q8mM+B6m7Pk4rZPRQ2q2eeHCdZwO31FS2p1yqrieUq1
         6/GihLGEOtoXcWlQA3/1tQGm6nY9mGDAwO5Mrj8w9D8LeH+24kYYk0VIX4tEythnidz6
         cYew8+aOKy3yfXqDQJGVVIwUd8ob3ZRNTXm/Dx++/dL35bF7aEYNRuGxxf9S8Q2uOmss
         wgLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=e2fcJxbu;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+FbrOzE/Xs2/6i3xT8fn3zn1vSGBU24wVjD8wBVfpd8=;
        b=EeiqtxLrt05je5CUl3fe/7jHFed2ASFHo6BZfwSI7iLPLjG5Yc49M0TS19DT/1xqAF
         Iqpk0Jk2HsJkEt7bNNMDkgg/u6ng4LJawR1bdNTzTkL/AIVopUutmZFvCo4FJDpjPCgh
         ITFngSY7pUlVPzBEOyj407PfLfNsN+ta1ienlSiF/ElvtxpoYjhj0N+iLrM3Aq3dycB+
         fzglJBVZb7fkOnxkgGrCZsT9PxLmgoTGvtUt+oY4hIEP1eKk8ioSHh4P2kFKSu44APLJ
         Me+jgyvsGzwxAiFrGgqeJPrD9HZMWmyLjE5QkEcA1WtROQ46v37tEIqW/YAd5bG/RyT9
         5xYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+FbrOzE/Xs2/6i3xT8fn3zn1vSGBU24wVjD8wBVfpd8=;
        b=pgUbdbgB7JBAWhx5EudsEYlOc0piz7POVMVOtqeDlImvlO/dzkWizam/c2aLgBlUKs
         49Uxif8vMih/PBpr98VKkVRJ2c5cJyDHa77jzivQk0e3guxg2dNADd86W2Fdmr3JsxMP
         9Bbzj4hZLf02BA4Z/DKCzg7Ggb7zsPMo0Ezd3tzUr+BC/jXE0W5vZ2y1dBeM3VhyU7CE
         r9Ezkc1+erHmtPKWYqyaH5PKEaX0ozlW6nE4PfUVS1Ld40P6dunvNbk34V9aGsWCbKlj
         bTVZOL4Ed4O0Jf82n8C7CzQsVYUE2eKnrtLSlgY0fHI2P8MeL/IOKXmfhD+VhpWtwTzr
         3N7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0pGwox40Owl/OL4Fz2+s8Vidsja1LNKOKHIiBJC7UT1vH/vIuN
	DxwkBqiVuCmf7YfJzZJczjc=
X-Google-Smtp-Source: ADFU+vvV+XMPHMneFDgsSaQ9TiRA13LEGUfR1So15VeZr2fV+bE2xE2fwEUMWz5KENimfoMeKEhLiA==
X-Received: by 2002:ac2:5605:: with SMTP id v5mr2391969lfd.184.1583936392551;
        Wed, 11 Mar 2020 07:19:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b24a:: with SMTP id n10ls433285ljm.5.gmail; Wed, 11 Mar
 2020 07:19:51 -0700 (PDT)
X-Received: by 2002:a2e:b792:: with SMTP id n18mr2388590ljo.268.1583936391913;
        Wed, 11 Mar 2020 07:19:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583936391; cv=none;
        d=google.com; s=arc-20160816;
        b=EzVMRIuW6QT9WCH3IVIAL07BM4LOnWlMy6UtjrOEBaOQmnhqAhAcAY7WMoIlUmTIE7
         OlkX4+tJ4eXY4yhcNZli3Lf5jtNgvoa/H0/uqFJOQTopn7GdvVrLbLjUFp435xJg0zBI
         lnuY8EbW4NC7zZTpRJmS+1R4VR0JuxS0lZye8uByXo37S4/mnp8kzzI+Rh0+bJ+8/fvi
         SjoQc8qE0D1VeiPrmloNmnwXc60+YyR+aT+rcfqMF33qj+bPlSKdEhT/26ErJ3utAPuP
         Pl3o8GshCNBKi5Pmlefa30pe89pHrUmkoXU3nxIb68Xyy6UFcTGR4g51gXG/+h5vF7Zh
         05Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=65sML0/SX7VLke4SYNemk24TpHtX7xNeccAhGruoLAc=;
        b=Xi87/f/GDd8sTp8bnLmpPZ6cNs4vpcl0kSQuC73KydYx57nTF5pJkE3iZvAqRkxo3B
         i25WbGNNbIKg6af5Zm6KeqZubDlBVnqLWrZDspXDbJpJSSYcF97sc855P3TPXNio1/Hw
         LVUsKXUmDFpLaOtGXAfmvKG5N802f91qNBVYLSvAXs74fas3hRyATqG1iX9HcIhmbg56
         dPQjliVFrvkmPoDb1wq9u3SgEcW340gTGB2F1QXBNQWZMbIMV3zXpNEUQhP+5qyvEC+0
         QfvsiOk+nWzJe7blyKA/TBJxVg+A4WER6cdvJQp5v1GP+ZnwJhtVgAexE76MgICGoPY7
         5cSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=e2fcJxbu;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id o24si127786lji.4.2020.03.11.07.19.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 07:19:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id z15so2871792wrl.1
        for <clang-built-linux@googlegroups.com>; Wed, 11 Mar 2020 07:19:51 -0700 (PDT)
X-Received: by 2002:a05:6000:100d:: with SMTP id a13mr4586899wrx.234.1583936391534;
        Wed, 11 Mar 2020 07:19:51 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id l17sm9616210wmg.23.2020.03.11.07.19.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2020 07:19:50 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 11 Mar 2020 14:19:50 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1737630245.9523.1583936390954.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-defconfig - Build # 36 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_9522_2005338922.1583936390257"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=e2fcJxbu;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::431
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

------=_Part_9522_2005338922.1583936390257
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-defconfig
 - tcwg_kernel/llvm-release-aarch64-next-defconfig

Culprit:
<cut>
commit 08120d236c47dd2bdb6f7366782f4756dd7f417e
Author: Alex Elder <elder@linaro.org>

    soc: qcom: ipa: support build of IPA code
</cut>

First few build errors in logs:
00:02:35 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:35 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:35 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:35 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
00:02:41 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:41 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:41 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
00:02:41 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:41 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:41 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="b86a6a241b7c60ca7a6ca4fb3c0d2aedbbf2c1b6"

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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/36/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/36/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/36/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/36/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/36/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/36/artifact/artifacts/test.sh
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

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/36/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/36/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1737630245.9523.1583936390954.JavaMail.javamailuser%40localhost.

------=_Part_9522_2005338922.1583936390257--
