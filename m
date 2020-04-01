Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBH53ST2AKGQEJ2YTNUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFD319B8CA
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 01:02:56 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id d5sf268966lfb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 16:02:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585782175; cv=pass;
        d=google.com; s=arc-20160816;
        b=atkAwqINxoiu5gOX25+ZldxhGCTaLib3QXAMrqzFi45DKHlxYS01KVAXahkMB7Hh1l
         eBB5c9TsB9b1CEbeWJHYg5hAVqWkUoLzK4LVwI2HDIDn3XhFcufuH4+dK1AZWN8BplhN
         1YW8IGV4fUDCpPvyOR6SudVKffPltdAODSE/D3Dw+4yyWlTJkuJQ49HyxHp61wf1MxQO
         NgJ/trKzBZt9ch/kYVk+2KspuLVb9NIXzrvY6BN0jnqe/vbQRXvptI/zCK+Vj4dNqHbN
         Z0eNWpMGMTmn2eRxeP1J2932WbDOtf5PD0MNvig08hrDbFqbC4Oxzj7VK8wUjwoty1y0
         97mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=nSQlV+fqzOLVPTkNwWRAKmQ+9FeKGVJ95v7UWa9U5dg=;
        b=z2DZFRqSvrlmdnHu5JgN9nts2/7T5xLglgv4soDI+mEV6r77dS9VJK1KGt5Di75s8A
         60F0rC9dJ1q/l2cizvfEvFRgwBkHkWhu5i/rL6g5g8hc4Tum9ebX3Ccl412ro7q+DMVY
         /a3ZX7kYidvmeT0fUNvLlDm4tnKkoGiPl4eQOHa7GLTEozTsuoB2tkbWxJpwtOEV2Szo
         48GwllnWSyePjNVlxD/zHiv0iugjcFyyQ+WqhW197JiZ6gxXR5mplD67NACz5bXahS6A
         HAa3rFlw+MUJNVCr8eWwTSkIOLjvUgDZ3zeQihXSM1AEM6UpIOsi8QSYze5LjHiuUzWQ
         IIrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IF8P9ICn;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSQlV+fqzOLVPTkNwWRAKmQ+9FeKGVJ95v7UWa9U5dg=;
        b=UTThw4P0tJenyY7DJDM+VL7+aiVOOQ0d9iIwI4Z1Z/eDfvPopTLpr51nXQeAXmWiCI
         McVKrGjYhrvWttWHseoWe+wkDfxEqgoCyCSSU7kk1ZpOxfsNjoLEnKoTIU15DQCYGcnp
         PBkZmhb63/n0TiPh0vTZlzBpSA9WkaAevdQ7EEVhHGtYdw1RGYvqiqHh4jFmVPArAqz/
         QR8tYtS3ZKijxQTdftWIphqz7VfpOCnkTKvkfCu1rMpExxqlmwJoTEf+xxg4bOl3Hyg7
         kRBQgH/LN+M1YpyhYNSR7xMf9kr258NuIZilvSrS+enkcvX3RbVsW90wi0qLhBWFvyXh
         fr3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nSQlV+fqzOLVPTkNwWRAKmQ+9FeKGVJ95v7UWa9U5dg=;
        b=GC0zo4z8DgMwhHdJz6pg0byevk1DqQQzc8fAH+IWvVJMoByTg+2Q5IIcZPQadBeyiM
         vnQzC3wvY/6q/U3sgOyji3+LKU+Wi2ynkrkVE7A6Y7gLUJni1gYdDbZGDn0pVseuSmTK
         u50R0oO3vMgI7bnO236OTcq5ZOVYRGO9OYUB/RtwelHeLRlIPURfmLeUPQQQkmb7kCN3
         rl39owjlX4QoH+xVLPomjo77BxCWIo7lJKU2qKneK8I+vJUKr6fVxLUkiAQAZ+AlXw2Z
         ZiEMVz61n+yv/PUKL/cERi5IpuSGLOuzcqMFkps/RxCmw0GV3VqTBzdRKJxVsv96e3Lq
         cMrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYkhKhPfbC5PPASaxB8CynYU/DhnxVWF44YtUiL1DbXFs5aZ3P8
	gyEFjUwts9KhCmxoUa039NQ=
X-Google-Smtp-Source: APiQypJtQuZpEL67T83naTjj0S2IS4XDVFto1mqzYoO+hdlAgKhCZhXkQ+/dmEa76esZl8abjqdJ1g==
X-Received: by 2002:a2e:3612:: with SMTP id d18mr290987lja.97.1585782175693;
        Wed, 01 Apr 2020 16:02:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4207:: with SMTP id y7ls231479lfh.5.gmail; Wed, 01 Apr
 2020 16:02:55 -0700 (PDT)
X-Received: by 2002:a19:f20c:: with SMTP id q12mr314864lfh.34.1585782175067;
        Wed, 01 Apr 2020 16:02:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585782175; cv=none;
        d=google.com; s=arc-20160816;
        b=DI/0kcTjlgqRfBEIaqF+3CguA3YBER8QJwGi72ZzacYpCFl65UtROWIPosnjMJdRaV
         DqXjn4d+lunduvYTNWSQeT3MdfR1cn8bWR63e+x7cvW8mnx0AOXZto3s3cHbEtIrUQDf
         2SKxuMs1MCVaUQ21ULnVF1+kvP1m7M7v2FUKd36O6Cz5GN9dzBgqh/rWKLkgCqVrVH3d
         aFzR4xD1XYKVwNZbmrQ0T4nij63ceS92h6OqZueh55LtmyKEcYf6RoA4YXwnu5N/sO0s
         FEHsX48KV6hvpb6AMDjCGAOlMfw3aGBtWRWObT4qcrA1Aqyli4tkMnW+O0Uo2gX0VY4t
         g1QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=M3Vba8BUKiLcUIRFfbEnfZAQ4jAa1wSWlDzKyeduQsk=;
        b=bCHEyGMXa/UVJCCRV0zzk5tYJ0pamPzvE3lyH2bNoaKZyFJFtZBEIYK/ctxmT3eflU
         ZS0QS2egSMFE4evkV2m0sBEuFyiA4rL+F526yNuhzXVbKEQN7nzwdtXV0wKEjfH0cSf0
         yippTyriBgswPXPkJj8NDNirj24S97C9iwh3CHA5ZfLOYON5fNZd4pojOgka6Cc/9ySp
         cQ+sqWcxpQ91Sgh5fHChawsX7J2xCF83kajX50IhCd2iUshHje1WYd/RBQh3ZwG8bMek
         nE3U0brg6lsQmsKo+DZz9iSf/UVGqS7zlV0hAkd8PMdAh9w/1gqTdc+nDrxOV2keO8zT
         ie7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IF8P9ICn;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w15si176081ljm.5.2020.04.01.16.02.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 16:02:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id w10so2059149wrm.4
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 16:02:54 -0700 (PDT)
X-Received: by 2002:a5d:4ecf:: with SMTP id s15mr318102wrv.302.1585782174444;
        Wed, 01 Apr 2020 16:02:54 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x16sm4867632wrn.71.2020.04.01.16.02.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Apr 2020 16:02:53 -0700 (PDT)
From: ci_notify@linaro.org
Date: Wed, 1 Apr 2020 23:02:53 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1647464346.13773.1585782173978.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig - Build # 25 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13772_1382587253.1585782173363"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=IF8P9ICn;       spf=pass
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

------=_Part_13772_1382587253.1585782173363
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-master-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-master-aarch64-next-defconfig
 - tcwg_kernel/gnu-release-aarch64-mainline-allyesconfig
 - tcwg_kernel/gnu-release-aarch64-next-defconfig
 - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
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
18301
# First few build errors in logs:
# 00:08:42 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:42 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:42 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:42 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
# 00:08:53 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:53 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:53 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
# 00:08:54 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:54 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:08:54 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1

from (for last_good == 530f9216a9537b58cdc2f967b5cd78f5dafb34c4)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
18358
# linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/25/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/25/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/25/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/25/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/25/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/25/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/25/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allyesconfig/25/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1647464346.13773.1585782173978.JavaMail.javamailuser%40localhost.

------=_Part_13772_1382587253.1585782173363--
