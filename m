Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZPBSL2AKGQEYD6KXKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 3583119AE9F
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 17:19:02 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id w9sf108456wmi.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 08:19:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585754342; cv=pass;
        d=google.com; s=arc-20160816;
        b=pOWi1C68VHL2EdcIm9QSYv5vhX4BZgmTwzvL1rb7yNilrDCLAZXvD6JmvqYqXMuYzU
         d5+S25x5WtZqZoVuQ6+ugwfffQtRlzWcEmkhTSbMUmDHE9T8ujTFCoKUs3gV/Rlm1YR1
         LP3T3pRoIJbYNo3rnpX4OzMqw5CS1qFr0DPz8WdsafRxDiboP4DcSUPpMKxNe0XSNQdN
         5+sAfnddHNY0xOo9lNCh0zxshZroxJuQG9/vzDIIoC7XLybIsoNggxweMCt9TY4xx9m/
         Wmg16yGw+Nld2VGZzNX2DV8e4qKrjAHM5eZiiwJ+CBuySeZdqu1S+DJEVZkN+a4aIBz8
         ONIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=QurXWwNgbydxfmip7deZV6VObofMuarf9tcs8GrkJCA=;
        b=Bp0fSefxHRNGeNOvS8o/Qo2Wpiwq6bguUd14INC0nums3PPu9nzvAIG7gCJnNfHFTe
         usM6xyypBivDKtKZpjU8jQnCfNXpyYJP04eLi67JmAvdJU0Lct66mSHOOHuJCGJa5n+G
         3EaZCoYHx68txBFslQzi8dWeRND9VvPNI8x/48lt8jdt1U2ctl32FbHLmfQyqZ2x+UUT
         drxWQaU3UrMiY0s6utaORb/teR+skTW5HSjy8eUy+HtuuuDiqw9BRcUvbEbqXQyphaEs
         ijE+GhPBH7cEHVXOuS38Wn8zP9g52rJ6UQ3TpZsoFFGSFlmalws7Fi1nMtK+r3aYn7Xz
         TUeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pEUGpunI;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QurXWwNgbydxfmip7deZV6VObofMuarf9tcs8GrkJCA=;
        b=CxupMURo3WrmEvMcr5r33mVT5l1H/7B6V9HOwu5KNTDU49TOCxucUndwSUhZF0tnN7
         0tvsBGUuh+2pW3BlEBR57pzvlqrkvDCpYMaMpiH4s2qvIJsVedkayQEYWjx+07h9ypl1
         TcacGQBq3nrsvYmkHK6mp2YEoLyMziQsOrhOMV+QG5WBTztPx/OPLFVU+6hXCyysJWyc
         pdGXbQHU7+F7Tw4GkzoWv+tOxCG+U6UcsaxO8sJxW7Jnrb472oT0LkFN79e3Jn5u0TUt
         sseF2DoaSHmqlnIPqQzo/gDjfxwhtxxN0MU2Hy3yCxlqWLHxjpfHBQKgfE4WHb82CoTd
         zlnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QurXWwNgbydxfmip7deZV6VObofMuarf9tcs8GrkJCA=;
        b=dEL3dzr3idGCVgBDGSSkrAffJ28O1gB4QaVhWa1WIFJMyduZ2TVtqfaqooDicXbO+Q
         3yt9ZSocL/UH+2HaQK2VPLmF8aGN2RkaTHKy9zxqbyEUJCeGYERD3+DzVLzmwcfoVvDD
         wl6t1D1sNlZHGgMClofSjVqFUxyBY761ZD4DnG7kingEKlYTP7UuOjjqMwIu904YW+vB
         y2iJOmuOrPJCVNEAXDQfIXLflZM+91SFup6PgRE0VM0z9lReQZNuuQTybmXeRuJO+Kxz
         TLCzxe0rK0BmEMX4Q7UUZaBt4hgZWpeOIT5Rq6NkVkDnI7CPeGahfgZy4aGnSlxKEfo9
         Lpdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub6NFR451VS6HVs2I36G8mqHibkaLed0BguPJ+8xq0NucY9bKMQ
	8zmusDV9DjQ2S/f/HyfeY3E=
X-Google-Smtp-Source: APiQypKa4V2DbpA5h4WlhDDD9QrOf0eyXmMqTcUt82FW1BgKy2j1P/ftgQs7v54Awx8pW1U3rvAD2g==
X-Received: by 2002:a7b:ce0b:: with SMTP id m11mr4736046wmc.52.1585754341895;
        Wed, 01 Apr 2020 08:19:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls3272401wrq.11.gmail; Wed, 01
 Apr 2020 08:19:01 -0700 (PDT)
X-Received: by 2002:a05:6000:108f:: with SMTP id y15mr4506316wrw.423.1585754341378;
        Wed, 01 Apr 2020 08:19:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585754341; cv=none;
        d=google.com; s=arc-20160816;
        b=Lo9f85IM/e+HETfhcjqRjGqYRFBm0WY1/cxPHrNNLAtGx52jkyd4MhheJIuJm/x2zC
         PL5UWBhPn/jNzReK1jBGhLZKEGPY62V5hq/VcxbtTFDumofmvip+D2PlqrRj75GpHKuX
         7feZNRDLqDXhrOV/CtsY7f25SevyOEqCIPEnsh/glT/VkLodt7jfatKn9gc7Smn2AcoA
         FxfIy4kBoDLx49Cz1kG8apM87E20kICB9M2C+YDptkIvXyjsvvYssXpZmTCeEG1Hnr7z
         oniXJN1Sn5eTlg7H2r8bxj9AbGi8M5eTvWYErmD5r1aluqa/STziHX9YK44mnt9JMhxr
         9Ojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=rILfbOTJGNaovi/7hwvy+rMHi62zjAZ/2JFES6ILR5A=;
        b=Su6e7wsp/7w/o6wcxC6XHcexslf8y2MqgL0CtCV4oWsYNPs1U+unAw3f0tEW5xa+xP
         UNFnt9giSmc+HFHIDKPoLp2DJBgevkW9mIYGqUXACtDkjAGDYjIBWi14y6JZ4kuQ3TWK
         /GQN/JLVNBajiT2UkwN/9PzRA1kndBPkeTt7qv2YhtF44NDb/LN9URgUbijQO5sgXCAo
         3Mp/x0IHTkZwQsw3AuUJUi73Eta36GEjJkcqZAePFLsrOrUF9ZJRRFBPsiwnmctLBiYb
         3Z9ujLZNhdvAca/3Hrjoc7Qsp3MkzbWPPZ4SSga04Lk+MFYa7J+/y/5lFt4+zWAQK0Fz
         Ucsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pEUGpunI;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id g78si165522wmg.0.2020.04.01.08.19.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 08:19:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id d202so136464wmd.1
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 08:19:01 -0700 (PDT)
X-Received: by 2002:a7b:cf09:: with SMTP id l9mr4908630wmg.11.1585754340967;
        Wed, 01 Apr 2020 08:19:00 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id h81sm3286840wme.42.2020.04.01.08.18.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Apr 2020 08:19:00 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 1 Apr 2020 15:18:59 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1305216907.13686.1585754340253.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig - Build # 81 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13685_1551218773.1585754339625"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=pEUGpunI;       spf=pass
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

------=_Part_13685_1551218773.1585754339625
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-master-aarch64-next-defconfig
 - tcwg_kernel/gnu-release-aarch64-next-defconfig
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
19981
# First few build errors in logs:
# 00:10:04 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:04 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:04 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:04 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
# 00:10:21 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:21 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:21 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
# 00:10:22 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:22 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:22 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1

from (for last_good == 530f9216a9537b58cdc2f967b5cd78f5dafb34c4)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27236
# linux build successful:
all
# linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/81/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1305216907.13686.1585754340253.JavaMail.javamailuser%40localhost.

------=_Part_13685_1551218773.1585754339625--
