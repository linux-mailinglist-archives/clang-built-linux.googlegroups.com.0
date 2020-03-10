Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBWX6T3ZQKGQEZU4UFLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id E175F18032C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 17:24:58 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id n25sf607585wmi.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 09:24:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583857498; cv=pass;
        d=google.com; s=arc-20160816;
        b=z/OndzCXVs20bPkoNGhj6rpDJF9+9hdD3nRLZH8NulGRTh6ocg1V297UT4y9FymjIn
         ldsxY7jghSz44Ts7FSNAAaPUtjFX5ZV+DrvcY/dWaJLuaNrlA2fn0uZdcNIqbgLWM+xb
         fzb2scJhpK53/BrRhJ/bt6DUiTB8IgjfRTNMPyW1RVg+ROMI4vlLq5rLHPJAguA2BvEd
         n19QBFofnJoSoCGF9wVwIYkzEmf7r+i3IksBJNCXS7GcoPamMpg/WFHHZJDo5xs6nsQc
         WsCD2ufsIyfLe0WtLB+HDCqif3OWjGzzDn2ogmOaJSuPleT+R472AfqO/mt+lTqNhRsY
         0DnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=wVkCBpsHL8QoLUSULvZUXGq184vN/30WG7IynVVYwZc=;
        b=dpu6nn9LxysaAr1i8Cy+LCOklbdegk9ceLBJR8ht5mJuHhr/aWsGm+ns2CJiGgJKPN
         OIw6WGw7/prW9kgGApODf8sfNpnbYkB88GPzV8SisPIk42qYCiEjwLHiIdhxHdT+KqdA
         /9/c2f54WGuqT86gbfq5jhab4NbWiodsMRxRTyS5pCxVWF19yDpL911FPyy0eVOg+lp3
         v8/+tXPPnPffmCLyLnr9iDODnyrWUamW3OlTLR4w8rlfmBQDKyjsdBu8Wd9y2QO87i2B
         4mxV00zylQNpb71PN+Ery2wC1SKcv/xu3dEaQv26yYrkFqXSYjVVCsslKHODHwLahHA8
         anEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sqyRzhzH;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wVkCBpsHL8QoLUSULvZUXGq184vN/30WG7IynVVYwZc=;
        b=fdyEsahGcM/B/NLfUofXVBB57JO0lvPSvxMdT97+QTgaqKkWkQnXnFFJYGyOBS/ZXY
         rPh9RBBtrAQLizLs0b83L01jwzh9jKaQyQkZ1ehS+fKDhDxoh9ZUUw0ICiqLP2mS6QE2
         3whOfAybKjczKJk2eTKlJ0n1vGIeXpJEGw1cUtz1qrhzkEwVMTPIqOvNhCLC6CAfqRtt
         CsLIDVnSpGBwuVRZ4weH1Ur/fRGOeZHo3ohPy1vREAzAq4VqBvY/Rb1ocTLmsBj47ipw
         fxeev99zOenSzg49fN5npCKH86UQ+ESbD2IjIdWJLw5DfPl3a0ufWqj3mAvHKeA7i1lP
         9Eiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wVkCBpsHL8QoLUSULvZUXGq184vN/30WG7IynVVYwZc=;
        b=lGQqQJIORHcwXxOHp66X+iS2l8apHp20HiDCnBVmuP++m5svKpVg8tznUplaB+Z/UK
         dv9lVe71HCnbzXImAjOQ4FPWWKxawxVM8PxicZJj8dNT7MZrb/Aaiq0NUczlseo4B0R3
         nsS8FPhAyfR1jeFBhG3jMNuZNoTZDcb3dtyHZUWxtcZLQ7yanVoltWcH5RrmYZT1GH5c
         oxLbLVT7L4ZTixmJRqUg4O/FGyIxjhYvK7BsxgbUCxUjMe82DMHU62T7UCCh/Pfef/fx
         e6CUgfTULB0xhswR89U5jNnpUc8VmX0pCUVUQ7IwDNcsZMLKgQ7kULQfIs1f/yK1KCHD
         CViQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1mc42ZgyOjUKLxNPccSHMidVntIqCwZPLBfdUB1/CHHYRf/MsY
	Cp2gyyUW4LWh+tbYt3XcMCo=
X-Google-Smtp-Source: ADFU+vtZywmIdlSzlcc/WwOZvX/bfPULfCgDDiFVr02HskvjXyIimoJPyRn6RgjfJBr3dXABE2wUjQ==
X-Received: by 2002:a05:6000:370:: with SMTP id f16mr22080659wrf.9.1583857498607;
        Tue, 10 Mar 2020 09:24:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4b06:: with SMTP id y6ls637804wma.3.canary-gmail; Tue,
 10 Mar 2020 09:24:55 -0700 (PDT)
X-Received: by 2002:a05:600c:2306:: with SMTP id 6mr2906052wmo.86.1583857495033;
        Tue, 10 Mar 2020 09:24:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583857495; cv=none;
        d=google.com; s=arc-20160816;
        b=kkEsv86K9GKKHyT2IrkWGQGgNPKkVMsSIBE9QQlwFKPQ2c22ArnFNFYe2bfH8JjIwv
         7OfDZPdJqrekqqxaC2rZcwu6eeuw/0082QhW6v7Y9vOHwPldwCalxS1tNCzp3Yd4emPH
         JH+MC6STc2kCH7DpgR7q8ilRC3coRxuSrrMpnnVtNgz1t1qGVe5YGWEdLA82lonzAkun
         EuPyMMwJgxF2ZJpUfBOBxWMuLhbOj+MWFfaANFhTiF77YHKQCYx6DLNuDzekwEJPUZY7
         2GEYPkdGXpKtkHEQ2yAEJwIxO8LOV/SQndaSQ2qzU0KONGjbjFwKDHJbtrkh4IfYg58E
         Pbbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=r3lXV0iCVHTY+0/6aW6ZatlVAK7hPByguPG/RFOjEmk=;
        b=cUAkXg/bk83BR3bP5sEYEopLHALC7Za2rvyoK93cAtcLjXV/Ifpo4uDBjtU1krqesI
         mSDfzIp3kyOJqEZcbbY4oQ8coTO5E2WGHU2JhZfwzl/67OeHfaZkKFJ4rkmhLv8XQ7sZ
         4QVRkwNWlgMyqsa9i2SGRHJoMKy2ol9T/Ve/+kfWTZvnG21yJ/5kEbMQ1z+6RgKH9LCL
         Ux0bBbN7d6oHKcF8qYhjdGZBZylxI5xPGCa6glkZNKOouywCpFFOfXZJm39Ah0YBqSiC
         9SzSoU2Ausp7Xt/ZBdLx9tPlfJHNIucpn2gVTp/7RphyrSSfbHbDsaXrvxaw7yE+hCjX
         LF0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=sqyRzhzH;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id h15si204428wml.4.2020.03.10.09.24.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 09:24:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Received: by mail-wm1-x331.google.com with SMTP id g62so2084755wme.1
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 09:24:54 -0700 (PDT)
X-Received: by 2002:a7b:c7cd:: with SMTP id z13mr2735296wmk.97.1583857494654;
        Tue, 10 Mar 2020 09:24:54 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id x5sm4380035wrv.67.2020.03.10.09.24.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2020 09:24:54 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 10 Mar 2020 16:24:53 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <647039014.9003.1583857494012.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-defconfig - Build # 17 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_9002_1231401858.1583857493364"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=sqyRzhzH;       spf=pass
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

------=_Part_9002_1231401858.1583857493364
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-next-defconfig

Culprit:
<cut>
commit 08120d236c47dd2bdb6f7366782f4756dd7f417e
Author: Alex Elder <elder@linaro.org>
Date:   Thu Mar 5 22:28:29 2020 -0600

    soc: qcom: ipa: support build of IPA code
    
    Add build and Kconfig support for the Qualcomm IPA driver.
    
    Signed-off-by: Alex Elder <elder@linaro.org>
    Signed-off-by: David S. Miller <davem@davemloft.net>
</cut>

First few build errors in logs:
00:01:01 drivers/net/ipa/gsi.c:220:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:01:01 drivers/net/ipa/gsi.c:223:39: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:01:01 drivers/net/ipa/gsi.c:710:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:01:01 make[3]: *** [drivers/net/ipa/gsi.o] Error 1
00:01:01 drivers/net/ipa/ipa_cmd.c:182:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:01:01 drivers/net/ipa/ipa_cmd.c:183:28: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:01:01 make[3]: *** [drivers/net/ipa/ipa_cmd.o] Error 1
00:01:01 drivers/net/ipa/ipa_endpoint.c:584:14: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:01:01 drivers/net/ipa/ipa_endpoint.c:965:16: error: implicit declaration of function 'field_max' [-Werror,-Wimplicit-function-declaration]
00:01:01 make[3]: *** [drivers/net/ipa/ipa_endpoint.o] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="b86a6a241b7c60ca7a6ca4fb3c0d2aedbbf2c1b6"

Results regressed to (for first_bad == 08120d236c47dd2bdb6f7366782f4756dd7f417e)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
5704

from (for last_good == 530f9216a9537b58cdc2f967b5cd78f5dafb34c4)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
6265
linux build successful:
all
linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/17/artifact/artifacts/build-08120d236c47dd2bdb6f7366782f4756dd7f417e/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/17/artifact/artifacts/build-530f9216a9537b58cdc2f967b5cd78f5dafb34c4/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/17/

Reproduce builds:
<cut>
mkdir investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e
cd investigate-linux-08120d236c47dd2bdb6f7366782f4756dd7f417e

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/17/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/17/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/17/artifact/artifacts/test.sh
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

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/17/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-defconfig/17/consoleText

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/647039014.9003.1583857494012.JavaMail.javamailuser%40localhost.

------=_Part_9002_1231401858.1583857493364--
