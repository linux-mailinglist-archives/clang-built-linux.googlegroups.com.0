Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBVHDZTZQKGQEVWVEEFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F89A18AEA0
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 09:48:21 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id t10sf651728wrp.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 01:48:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584607700; cv=pass;
        d=google.com; s=arc-20160816;
        b=lIQ4NGGK0+iQxYxyNnbHj424LRmpbNXHiB7YEe7iQrDk0J/wjf5bWt0lZ7gwyNhHZ9
         XrKt4Sdq96Tpo03bNO4+w/Y+i0PYAJO46LBw0a4PzZPJEeI1eCXJPYDKMbxmI10LPL8S
         9YtwkbXa0UuxWQDhNKa1Qwtb7sLKHkjjHiFYBJOD/BSFKB6/3AWx4ddOZL5TFPC1BLxB
         2o4U1xkttGKRR1OB5mm0ADJay69yWm3lRc21y5WrzjPv1d51zUOSJpHoSckR3rB2fR6c
         ZCxy77WtE7dehCEEz3A//e1Y9miGuUZrt7MV4OO2RY3Qa520YQxFc6QDR66h1ujMkQ7s
         IfkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=dvxWbisQ9iTmBFrexKJ97gRCoOIS6KAy13ejFqhiD5A=;
        b=G41JhXxhjriIS5iUMGPy5rVhSjihmOGl0YlW1tbMFdW5oQLc4NbEKGulzdGq6d8ujl
         KQpx+4fVVAAMbH1B09BJitYA9tllR67bnRQBEcMEEsG2VN8ifYkLiw3xUJ6pKQKO99D6
         LLVGUFk1Ke4zF30umk+xuJZ6Rm5ReYNrXyNsxzDyl/wtXEzhQQwjFIvS6n4rGrlT0TRm
         LtRNkcdu6nriCnRbFYd6k7GMSX/sS+YkG+oeivaksCXpb2c2tAC6eVcN87Mu06GFKWdA
         lHkXQC2rld+ulpyceyVhr1UIX3L7wW1o9I/hwCWnzssGbNQQj88HWRNSDjE+UTnnBkHk
         v5Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bW2aD8JF;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dvxWbisQ9iTmBFrexKJ97gRCoOIS6KAy13ejFqhiD5A=;
        b=LAvjOpajsh989FR3y6AvqGrEOnAPCaVunGr0NVJfudGjW9IltJxx8hviTT+uZruWOq
         T4AJ91Y6o96LILHn8gOmzupx6Xu2dSYzpXPRTxiGbkOnBvCuoRXuajeNNtxCkxByN2/6
         2IoWlWZEeuBN2m++iPySJ02kiq/IDgz6p4MnjpAQJdWYsN4Fsa66hqpN8iHfWzPl4Xhj
         omVsZpU5YRWYlPgKfWOZ7dfpJQciuMCCfjln3JBFiWU4iSl7eZI6QN0qIsmPUAbfofab
         jZSuMMxcjntIdwEhh+XB6LFyJi8kgDuRxJHTuvlKQSPzeR9+R4dHcI9QmIjji3XwGewb
         /F5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dvxWbisQ9iTmBFrexKJ97gRCoOIS6KAy13ejFqhiD5A=;
        b=A9Pfq+Mc4pEhA2Tqi6KeF4sTAhlgBPBnAcAxzmLzsg9zoIsNDSUlV2XxKVclRt3MWu
         UfY0HzKFyCER9EN1QcICC+o46zeq5VIhjwxbjxlBWtqYY2Eq6ZKx20oMRC/4VKWRvZE6
         KiI0PWWUIm8/rDBJucysVzh+n2CTpxyIWDaOH/P5vBgpG1EHe5G4V7+l/KsSBgBumk1+
         XQdU09ndCYp/65dXKO4+U96dBEPjSSciA2EBCLMM9gRciCnkZOznZqz5mc738xEmX7dG
         ZlgAopF364JUbSOjtTOEQ1DalJvwOzPazLuppbfe++/6BaLmp8lL7yUTQxxDwleMkurc
         2swA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0/7o+lTYL1z0+8QiqS41abK8oe8VqtfW+JvVYQMcfWeGQZL3O1
	KV1bU/zcUmE666TEhi7goEA=
X-Google-Smtp-Source: ADFU+vv8OpYvD55n2DGlv0QoZ3ZYCReBYcmQYGgfVzQxUBWlvdOxqql+AEHwnTz+NBza94EcHtyzkw==
X-Received: by 2002:a7b:cbc5:: with SMTP id n5mr2294532wmi.164.1584607700790;
        Thu, 19 Mar 2020 01:48:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls608574wrc.7.gmail; Thu, 19 Mar
 2020 01:48:20 -0700 (PDT)
X-Received: by 2002:a5d:6cce:: with SMTP id c14mr2925044wrc.149.1584607700145;
        Thu, 19 Mar 2020 01:48:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584607700; cv=none;
        d=google.com; s=arc-20160816;
        b=koaCMMvoaBIbiIRLcYxIeUdIcoFwMr9CUebgnAvivblUIgBPIkScRik2uSDrR7P7tk
         SZGObSS676Ju74LWjF80t8F0INggW0oArWOhW2hanrze/e+PmDsW893RDPValS5lE5+o
         njJO5LPxsBjKzKz06doZCjOslo4J8NVg+FWPqc0DT7LVrizTR2jo0X7MdwQrALcUEo1u
         9kOokIpybq15dE6fXb2z/ZMywSdFhLZCNu4J98JkXLStdlVzDJPm7OcYczKoMPVltWHW
         kgReHq0ItBMk6uU5aZ79IJqdMarL3OVUkbeQpvN78aFQp7XlZibkvIJw3lq+RLE6j4fh
         taNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=tNowubN0XvqfeelhXYoVE2VJ7JJh+ikpK0xZS4ihfww=;
        b=urfvbXHeQ/ViPXX4osXtdu39PMBnYKJHKWNzK/kXb3bJJx0UbbewbRWk5KMFofJB16
         SiFjRXE+4ngIO/8yJ0uPrB7DA3/9XQYuA4QrN0fHEV3hKPif8gQclBQ0L68fUjhhH5Cy
         36LtiK6mp1hpVXYVxzKgwxsW2257DfowwgpLBtnwngBc+OsR6AGdrKdM3iBRo9B4Cli3
         DF2V11lGn2Gvo16DDZz3TuTvApF62oocX2jsWhvQDDFZRM3FKYMJ61WvLzJYAkLAA0h1
         U+jTkvnzHMPQXeNapjSCWrajfQiV7dD/2DJAyBysf7l/jERSNdXlDPFy1jz5fGqVw7nb
         SSXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bW2aD8JF;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id a18si54396wra.0.2020.03.19.01.48.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:48:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Received: by mail-wm1-x331.google.com with SMTP id m3so1053626wmi.0
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 01:48:20 -0700 (PDT)
X-Received: by 2002:a7b:c776:: with SMTP id x22mr2444690wmk.135.1584607699600;
        Thu, 19 Mar 2020 01:48:19 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id i1sm2544391wrs.18.2020.03.19.01.48.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 01:48:18 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 19 Mar 2020 08:48:17 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <163028942.10663.1584607698796.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-defconfig - Build # 37 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10662_826919890.1584607697993"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=bW2aD8JF;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331
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

------=_Part_10662_826919890.1584607697993
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
00:03:42 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:42 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:42 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:42 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
00:03:58 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:58 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:59 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
00:03:59 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:59 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:03:59 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
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

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/37/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/37/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/37/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/37/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/37/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/37/artifact/artifacts/test.sh
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

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/37/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/37/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/163028942.10663.1584607698796.JavaMail.javamailuser%40localhost.

------=_Part_10662_826919890.1584607697993--
