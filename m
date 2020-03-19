Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBUMKZ7ZQKGQEC7BIMDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B0918C032
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 20:17:37 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id dn10sf2907865edb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 12:17:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584645457; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Plm1zRzYV/nyPPDjqXYSu/N6rL7s9d9yRG0lTgJRUaxmK9nbynlqysQYz2AF+KApS
         fBpkprX9Z+jFjTeow/7BhOYJ0OSVnXzY8tlGROK0mhwxFyHTZDATIipQ3bD2TK/tZCbY
         rHMJBdEcc60pWrwPl0bhSYeXiBavn60o5x9SAL88Vagukg1GkfjIu9/vcPjv8XYi1EIi
         Siyls+z1iwdEvfIe5428N9wIlAHIdfgzzgsfT5VAgl/XnuFssk62rUBUivadGUZGYGJg
         y7oKrPCgTvORsF01d+3oJTzoptRnTYZP9GY3mgsEWdATLl+65GDtDpebeNt+23SlYbaL
         vNBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=1OTe38gLZoyL9YYVOBGiGK9okTrTpvXh7d3UmLnhQ+o=;
        b=cFmVzrNpCh63zOvNTpWDmvxmuyoGr6HZ/6O704EpC7XLjxOwLLK1tr+reQNFhZZrgF
         PJ3fh32l1CbLX/JKqibyRQMGT4hhmK5uTFoDR+y79UTbHFsrQmV7BWC1eHUGPMbx3ULt
         M96sahZ5gsVgHhtl2/biJTAvCzn0qUZQyLteDDKGGX1J4uATpG6roODy5FtqBmUHVS7k
         sOf3e3DrgSakMRrC4boRXTnU+Kwn9WxeZPTBbIDvRZh/RDel5ldkINL0TmXZNLQMaxEi
         Hco0ZUd3Q+11f2KplNFIVvNrDpH0nRcGxoBdXKjN3G4JTU4jADbGFex5lkI/3P0/JuGA
         u30A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="rL/WGT4c";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1OTe38gLZoyL9YYVOBGiGK9okTrTpvXh7d3UmLnhQ+o=;
        b=MbIxpOWX7WTKjPrmmissodUKCBTvffXSNRb1tY09uBpb6xTaZDJ/XFyBUvFUlM1ByY
         PKqJOp95NUOcjWfDeUeTGuLbAuYwPsKQ0qzJuDDrvb+hQ4vonj+CjDVTzgjKftA1Kdht
         956DnNSE1rWN6NTOevwe83QvftiskphJToKXocYry+TKQQLiLYOu5xkuaFrYMeaGS9Pe
         CqgmTMIzNpOVaEkaBHPFk4ZdZWSwIAuuf0IrJlrexQdBgvXczLLzyNIdL3mYyaCmB9Qp
         2QS6CGeNLVJlOJs369/DkQXHZoiAaE+Jx2UjYVwOLPzRe8TbV5jAebkVN3Kzct2GPFxh
         jBFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1OTe38gLZoyL9YYVOBGiGK9okTrTpvXh7d3UmLnhQ+o=;
        b=lrgaDMFVF/4BYKtOfDfYQ4WoNSfS0py+rM/vBj9x0aUNVfvlwWd8UCplXh2kkpE/+z
         zxLNtn5pvgbnzNYgzLL6jy6plCQVsBqmiEAAXyAvk4c3VMoTevVa2YYmipWcqi33zw+L
         TcDA91mkrvJZlu86grSwj2MwhCHka5MwH28LvvUMAi4vLqfOJnjzDlkpEz6urzanb62Q
         OB0toqmHyN9mdSC3qLEq/UxKQFNAzvaYbndWA6MTSDwC2LNiyrsycNpCmYuIoFbUt3x7
         5yUkBngM0iBu/7tLaxN/9GWUd3VOIKJg7aqj3Xuldwo0xBLQDyfdZuMEDXvS2rEagYG4
         fb1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3LXZuUUBcmALwpIZmGMpvIBx05zK5p4OVsRBYPnradKH8ujC77
	MD2nL8P71V0wiOPvG6eE6j0=
X-Google-Smtp-Source: ADFU+vvMaAobYcXjlTqYz8CHpb/p9ojVHSPYiJouAUPp0aa0PeBxRxDy6GSKk1INFajLoOPhhRDOpw==
X-Received: by 2002:aa7:d345:: with SMTP id m5mr4476247edr.257.1584645457079;
        Thu, 19 Mar 2020 12:17:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:358b:: with SMTP id o11ls1542648ejb.3.gmail; Thu, 19
 Mar 2020 12:17:36 -0700 (PDT)
X-Received: by 2002:a17:906:78a:: with SMTP id l10mr4816324ejc.263.1584645456437;
        Thu, 19 Mar 2020 12:17:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584645456; cv=none;
        d=google.com; s=arc-20160816;
        b=rbdT3bB+y3ExdYULoQQFVmSOA368YYpOnOGnqxA+zyekYcr44WEDVdpAFVDA9f8DZV
         YmG1utJlCN9TMIgArpqCml9gYYrxasO7SI0F4CYcCUL4GH6DexPCYjni34sr7DQRmJah
         Hv9VPKOoWc3wMQ3PK6lMu+zrr6R/D3mMAa/S/xTp0u9jzzyqPJDYVGtgQbJAy9BqTwO7
         LoR33o71PMm5klNIy1pdiEvpp5DjB3m/GsgCuCg/FkOYD14S74ZUSVX/TAUUhC/iK/zu
         vvhwB4XDI0Ha5Yg8BUlWWJyQyeCIdK45nTTmvOQsXrJtRo2cfZkoF/OvoDAVyTdgdoQi
         gSCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=zwNV/y0Rdu7hjtvvXIsnbQ3+CoCK9GH274E5cBkFEC4=;
        b=r8qnttcjD9JEz4bUwkjS+qMDqYn5UFvrw6Se9xdeCr9MFp1a1bRsMRQWvm2jQM4KWK
         lCWEJ7jtplmepMi8rUhtT+GTF7ewTaoQbRoP+8q7AP7RezZ3JsrtOF+AlFyXtb1kWlwg
         OP7EgVkMpGrL+jDVVJDVVVxQc/YU8k+aGk+V9GM+5duDWvjLtX+ccj2+CgG/34pK2jH4
         yBfspM4ywy8H8stESdPxR8phkmWrMsil6Qx9asIEH09CRKXQufkKTfLa3pVR1Q7Fqpo1
         yc/ZiFqJxytKYv9FZUjTDJKYSo2dU8wVRSZMZLNTMhedjWpJMj7wxVgLGqR9bnmsJcUO
         QXBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="rL/WGT4c";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id ck3si25055edb.5.2020.03.19.12.17.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 12:17:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Received: by mail-wr1-x42c.google.com with SMTP id f3so4570073wrw.7
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 12:17:36 -0700 (PDT)
X-Received: by 2002:a05:6000:11d0:: with SMTP id i16mr6028065wrx.319.1584645455990;
        Thu, 19 Mar 2020 12:17:35 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id q8sm4960433wrc.8.2020.03.19.12.17.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 12:17:35 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 19 Mar 2020 19:17:34 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1494773751.10703.1584645455341.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-defconfig - Build # 20 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10702_21508755.1584645454479"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="rL/WGT4c";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c
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

------=_Part_10702_21508755.1584645454479
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
00:02:16 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:16 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:16 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:16 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
00:02:22 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:22 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:22 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
00:02:25 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:25 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:02:25 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/20/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/20/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/20/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/20/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/20/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/20/artifact/artifacts/test.sh
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

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/20/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/20/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1494773751.10703.1584645455341.JavaMail.javamailuser%40localhost.

------=_Part_10702_21508755.1584645454479--
