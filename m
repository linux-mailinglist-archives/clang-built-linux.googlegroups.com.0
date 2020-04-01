Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBROVSP2AKGQELZSIHSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 254C619B65E
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 21:25:58 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id w6sf825689edq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 12:25:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585769158; cv=pass;
        d=google.com; s=arc-20160816;
        b=LOhTKyZbiWBzjbjRGdSTEa3hQ8uv5z3G5gn1kC6dyoJlnWeHvediMaCVx1z28lVPVD
         5RLFm7sORNKx6vHHwfAnUIBh1hAcEjSeb99VR59tPpq3L9xeKEmOMosXTUWEE6rejPvx
         5aPMNr2/nxfM483hmCBowJeoWWG8s1FlWjAH/tNLPMia5TGs7RSaBQhoOwFfGFvs4oQk
         nZcyv6nVyvfHpHDj/GOX2/zh+J965XQz45Er3LpAvV0He5m1/XTFMYterDlTJQ3DRx5e
         A4dFP35dJLTnRktxnVehnC/PgL7/crvTpYwuTBD5IEQv14gPktRVcpeU6ynVa8Hlw1gA
         iXSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=mWRGsDGnqyRjBejBkKQYi0L3bUR8JUVvE7xoAXeie8Y=;
        b=AIlccVxsWwBbik5UAXAkqtXePEn2QigX+eRN/eqpmOUOfY6h1giyjVMk6BkqAA2Rht
         f33ZGHP9PS4AgIZ7z79vy8a8m5+ywqs/Psko4851yKxC/2Vic9FGNd1OJXqeUFNCtkLT
         EfHtXBCbZO64wGQTu9OYAYwLlcT1JFZ1va01V/Hw9CBMbMmcRpel/EupeZN1VwGTKp6H
         WICppln9PRADtfoe0APe9xB1f5pn/InpQJer+CvXUyFcE1CL4RoOOGa95toJEtQ8QRcN
         JDarnCNAVmg8DtfoWoniT5v4VtdULw7Yu0A6DPfy+rNaJA8MPeK83SSe66pto6wxg4a8
         VjsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TZbCgHrx;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWRGsDGnqyRjBejBkKQYi0L3bUR8JUVvE7xoAXeie8Y=;
        b=s2LXtFg50U2iXc0S8aSwi2iT1seLdWn5MEADt73brZZUHcMcqTAKxs7YgLU9S6KPO3
         07CC4D/KFiGfJwBi8Abx1ltM8ksqQaUOsADGp1b0wHhhTxLFot2UdAWxm44ogalEzEhw
         IbLqdg0povZq62SvJjtX2dZAnx2+YgxCxuyD70nSFC7w/gTfCSmAX1tgUqKc5+uFpBoz
         qeaGBlZr/9Fa9OmnI/qB+oZpfyo8J6Gd6tRu2ik5V4RLTjsT57r2wKGsFpVyCirxYdLm
         HHX+kqO8camcdIRbR/YdKxvwRgBSDJdHBja1qulsHOhRKeTFpIZlncKWy9AHPuCsz5x6
         kFLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mWRGsDGnqyRjBejBkKQYi0L3bUR8JUVvE7xoAXeie8Y=;
        b=qBAfBmr6nxBXDjg7pold6ghE1WdWW0dA0bfYRFMY7K/glOcjETO06FYq6NVNKnFsPy
         b1NkHFvVd5Wr4COTF/CF7g8VVHBqkI8xLFitnSlm/irHhaHd17CPbgBIcxVmUAXEA56Q
         1dO9NZzPUqBqf2hfhaus1phTUFRcOSIdnvgK7LQ0gGwP9qfOYNyypnwvhxkM4MAOredy
         4xUucMaleGKWkXdYQV81rg5NFSHYrOqzWPjp13/X9DHDy9gkHC5G/vL09T5edFNSKxp0
         5rdekFnwc9+yMqCikkNKFSmal8VOv5sm4sv605qxjCM6k3TKaZHWDpZl8+32q758LYRn
         SiOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1p8VOitpPi70PMIDIoLtW1eEmOJcUkhYqvqQlwo9t/W48ZBML3
	8R9veXsd9zQ2U9A3BM0WUBg=
X-Google-Smtp-Source: ADFU+vsARztC55Bbqlw3p32OIaLAuNizU73oe+7NcqIsTvvuauAP6gL6cydo8he/0KADv3EZWj7oJQ==
X-Received: by 2002:a17:906:77d3:: with SMTP id m19mr21169593ejn.307.1585769157783;
        Wed, 01 Apr 2020 12:25:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:99d5:: with SMTP id n21ls394747edb.10.gmail; Wed, 01 Apr
 2020 12:25:57 -0700 (PDT)
X-Received: by 2002:a05:6402:22aa:: with SMTP id cx10mr22684379edb.297.1585769157273;
        Wed, 01 Apr 2020 12:25:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585769157; cv=none;
        d=google.com; s=arc-20160816;
        b=S6LZxrm/TFvscYDaNclm9bwG5x65FM9reMsLzbyAf6rKJZ8v0N3I5DsARtcVdcDUcD
         70VocNZEpzFi8MdSEYgGqpiZHBGQl9wjrF950Q9c1cASwSVVneuiHjyL46qPu193FTHj
         IUIyBiCHzKmGCIF+x4zSo0maefJ29eGQ7QnGNB2BngLmTgHxHDB/Cnnew4rn2iz8otG/
         B956/lrWamNN6Agmje7wqtP51IN2v8sxX3y1s2SJbiprL86ER6U7rkpcZ6AMxRcLs3Gi
         6LDkwkDAAvfbo0qYGyYVmVWWREBuqgLMOalW23+NAWzx1xrIm+Qm+1Du7E8g10XywVI/
         XzgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=/eV60S/UlZfiiecHqEmUpbyLGUJ+0g1RzCHA2uaWPeU=;
        b=DsaqYHjYwAYyH543wF8/dz3aVQETQEfuSywwWZJdOQd3vsm7QhuhcULvPKKkpEpwuh
         +0v11v43ATA3Lqx4HvNt6EjgrBHLjiwtO0QqiUuVZHIzync3stlxBn5xbcxOGY7Ze0qS
         Jv08yZqd0LqBT+itc+xsUMyTcBnuFV69uydG/vHD2hSKmSu6Uik95PAJfszkqYzPxWuU
         UplZjiq2eHIFIg0q8p1TrQVhQQEn9+iDTAztCVb6zgbPcKBQFZryXMG1CjJOJP0P5BQI
         N2Uma3zJRem35ZOzFB//OMY3lKEFDlXOpbrECDyDVedU+2Gf19Q1JuohbrikDm+UznfO
         UM2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TZbCgHrx;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v14si151293edr.4.2020.04.01.12.25.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 12:25:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id a25so1502106wrd.0
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 12:25:57 -0700 (PDT)
X-Received: by 2002:adf:ce07:: with SMTP id p7mr26837530wrn.261.1585769156851;
        Wed, 01 Apr 2020 12:25:56 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id f25sm3783677wml.11.2020.04.01.12.25.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Apr 2020 12:25:56 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 1 Apr 2020 19:25:55 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1527392545.13747.1585769156305.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-defconfig - Build # 30 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13746_1513088872.1585769155642"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=TZbCgHrx;       spf=pass
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

------=_Part_13746_1513088872.1585769155642
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-master-aarch64-next-defconfig
 - tcwg_kernel/gnu-release-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-release-aarch64-next-defconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-defconfig
 - tcwg_kernel/llvm-master-aarch64-next-defconfig
 - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
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
rr[linux_branch]="7111951b8d4973bda27ff663f2cf18b663d15b48"

Results regressed to (for first_bad == 08120d236c47dd2bdb6f7366782f4756dd7f417e)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
5704
# First few build errors in logs:
# 00:03:34 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:03:34 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:03:34 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:03:35 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
# 00:03:38 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:03:38 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:03:38 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
# 00:03:41 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:03:41 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:03:42 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1

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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-defconfig/30/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-defconfig/30/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-defconfig/30/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-defconfig/30/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-defconfig/30/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-defconfig/30/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-defconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-defconfig/30/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-defconfig/30/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1527392545.13747.1585769156305.JavaMail.javamailuser%40localhost.

------=_Part_13746_1513088872.1585769155642--
