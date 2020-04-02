Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBL6OS32AKGQEI4KQOLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7723D19BDF4
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 10:49:52 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id s17sf372333ljo.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 01:49:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585817392; cv=pass;
        d=google.com; s=arc-20160816;
        b=w/Z8TYqZjLvPXm7EOr/2F/gXTqD7o5VdnmQSBfckenrKo5ffSMdQQjX9KnMNgM8+X2
         HOyyY5YD+N53gqWHem5e1QFhoW6IUBsfgLRbMC0Jg/e6fM3R85AAR1PiuB7/1uU4XdLz
         KCZNmWrIuFCFGMhFAXg86v9hSMh6oinTE6AS72JFNkMcN05EoXmhm4XDS06p4bm+mWAw
         bHYnXKPevJRDyITP5aceCBDmXS32cdVuvyiGiAvA5tjp3HY8/DI8HH+oFINSDxbcDUTX
         gfV/Ljf7DnwwquZeDUa6tihW0+mWSzk6+FvolNkchZXfsWbOeFZqs1F6uL7DCX1TN3GP
         Kb/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=eWIU11yuU0/w9y21JskkO/2i8tIzHcsNuQXfmxoqNyE=;
        b=iJspwlriR1MxSmn5apHaIY4PGW5P6HapfAjPaM1Vt+toZ5ioX3dSmyxHYRi64XaJrA
         hsM0WdLtrCFeOSgGQfupE8MWEI5V3nxyC1fz8gnfuB3GN2G0a6j2+ee/3eIdJqEvA64c
         VCrmgAdSduDNSHbgyePvQLU1j0PQ8NCXHS6nLKm9xCe5ooNXrC1lxT3SPa5sBvQEyNIq
         mHWE/4s8NON/ygFLL08BrRb9cg7Vdc7Q/J+s8LlhXvd+UQb4VTfDKxHJ2nukDAAWtBg6
         r6/Mo0BHnIRRX9y2HXguHefk1UNYQ5Hri/EuqIJQZHqqvpE7RW52HO8XFK8+Y0C63uwO
         ZUnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=laGkOEmT;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eWIU11yuU0/w9y21JskkO/2i8tIzHcsNuQXfmxoqNyE=;
        b=jlDg95lEyRWwakNuV/Y1hhPpJGQsIu1YzGv+JBQGa0d5cWYkMLPgo17MsXyifVeYBo
         krPEJJT49Hh+YeiiODcoZor5JC1bkV9PcyBUpSkpbdZuYA/US7Xf4dbfMmpzYLOinyGx
         RYjJckGY3f07iHhHq5SF9XYdqncpcya9JUvOVyJRVZEZNVMg1e+1dw/4g6g50Kz9SMRJ
         G9RQetf3JlBtLsLc6Um/DfLQTHxIXNP5IpAg1t2sMAPebNCznDCbBfxWHAeszP1k7F2e
         9xQG6muW18vHh6zcCFXrJs1rOOAj0VqCqCYNXFJQXYswXWqcNoHJHctcjglpcgFOMdwt
         1Z5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eWIU11yuU0/w9y21JskkO/2i8tIzHcsNuQXfmxoqNyE=;
        b=o7j5BCzVu0wg7SEskLt183f1drgih/UBpxK8hcybudMdKQBojwUOBgLj78I/6HBJcg
         R+nOnZMnWwHX1mAGlQrmM3E1z5BX8S1EpZA8b9YKrO1OVVjLpyL9CKj3zMpJYDKxLXV/
         jczKomjudl5bJYBuLawD9ZQZ7cynOVa8Hfliscp0al56fF2soNDkWPvPiXfVDxwXBXjp
         reoFxLnY+E1wGlgcu6agOTpGDduJENpTxcKFsfLXCbWSSZQNiAyc4zqCb88h5xjEHNXF
         4C82r/nIqwuniPruLX+rx8ZbcTZn2RrqfrVMlDUYCxmP53IKB1QI7HoQz2U6kVgkq2nL
         xrhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubRVu+Qd0qAZFh6Qg9MMIa0N+3oQ7oE0wOUA3uljjp5jMA7uybL
	6fodGWSdcJuRJG676mO5YQc=
X-Google-Smtp-Source: APiQypICynkg25TktAuzbTtji1LsbsDRgyJx5ej77cZgu5vTbEn4zPTfdsIKLa/j9kPYs0apKCwjSg==
X-Received: by 2002:a19:4f43:: with SMTP id a3mr1467471lfk.22.1585817391835;
        Thu, 02 Apr 2020 01:49:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c310:: with SMTP id t16ls282930lff.2.gmail; Thu, 02 Apr
 2020 01:49:51 -0700 (PDT)
X-Received: by 2002:a19:691d:: with SMTP id e29mr1474303lfc.83.1585817391220;
        Thu, 02 Apr 2020 01:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585817391; cv=none;
        d=google.com; s=arc-20160816;
        b=fPtSeigtvg5lHPB4v2Eoqih4PoZOna2UgfwQYbRVCkeI77ZtMJk6ebDbbhBTXXbly8
         wI5hAKHnbt/O1H2WeRHq6nkXCRgzh32fd4icDpck4Uyjfs4aHFq2LLqRcQOu7EpxhzL1
         HIwzfYDysspFwlQ2rt+TjX/RaD0Wsec05HQP/DLKDYr3iSqRgALsblffek9ogR9+FJ/6
         SxhvMXIKjNql4bk4NtBje+xAlqGxm+DeBRpPEuudZFYfRDQh+APGa6ltTgSC23kh/ziD
         AMrDZ1181JbO/ebjlkx2p0/qdh/d7eR2jwd/WmJ6wpuD2iFdh/mj7+E1goxxWu31iDAl
         0U8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=T56noHM+ERrq2drfHjazQvvkhS+TTOS/bgtlhAWkASc=;
        b=wuQn7mI8a20Z48xmrgQXWMHEvQ/6eNXXsv0zHposKIhjEjcQHWp3BrEmJhUZvGLCW8
         GqzCcVjX1aOT9tsdGWjN3rJSou0uwp6dSz0yVAfa6J86ff2Z68PmzF14WKtX6EUGPhwd
         L7daHblfi/618QvBn2Gem+CQihJTdKLDzMBcgxpc8b2hkQ962NA2IPujxOnGNerXF0WC
         3ev0B2tTphyZwPRv5d7rrvYTbOZfrqlWoLl6VaXQ/499vhkwaZ9oNuQaebTm35cX/XCY
         il1ORpAqhlA/E//9ousgdy4DYsHXxPp8vchENsITx+JxL/oYOYsMPfdyDcOJ2vJqy5o5
         N+UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=laGkOEmT;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w186si192845lff.4.2020.04.02.01.49.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 01:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p10so3161762wrt.6
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 01:49:51 -0700 (PDT)
X-Received: by 2002:a05:6000:370:: with SMTP id f16mr2464198wrf.9.1585817390636;
        Thu, 02 Apr 2020 01:49:50 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x206sm6286883wmg.17.2020.04.02.01.49.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Apr 2020 01:49:50 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 2 Apr 2020 08:49:49 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <358438418.13864.1585817390165.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig - Build # 95 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13863_333604204.1585817389560"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=laGkOEmT;       spf=pass
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

------=_Part_13863_333604204.1585817389560
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
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
19981
# First few build errors in logs:
# 00:09:51 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:09:51 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:09:51 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:09:51 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
# 00:10:01 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:01 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:01 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:01 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
# 00:10:02 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
# 00:10:02 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1

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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/95/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/95/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/95/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/95/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/95/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/95/artifact/artifacts/test.sh --fail
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

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/95/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-mainline-allmodconfig/95/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/358438418.13864.1585817390165.JavaMail.javamailuser%40localhost.

------=_Part_13863_333604204.1585817389560--
