Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX7F6L2AKGQECHORW3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 1738C1AFE0B
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 22:21:53 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id b1sf9704548ilq.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 13:21:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587327712; cv=pass;
        d=google.com; s=arc-20160816;
        b=oYC+JZsXvT2qswyJlrrOMKR3EeyeCHr5pg7MQu+D7xvxYxQnI8V51rnXdAKw7GJ/sY
         +EFKvnIgKEdvXyLlb9Hi1X+CQrN6v51P80n/RaT/ep/kUJahDC2csT4kJrxvm9NDokTn
         HjHzTVt/ZHPVigSb3utb1r/TsjM8NltdCcVqVznR3mJWOW5gayxMo4MhKeLBpa/1jYGk
         QlMC2xpZpMUaqjgMStd6iahbc/VitfIKDQAPUAfNvuWxatvZm9zyJjW6bXplVgxikA2m
         2a7vqpe2Dz+CyKh0Nb0XJHRNQ1YLFP+RchppqX5DMwrrTPqyO5RdG2s+p30tjIXXiSSs
         n5XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=rxpwvUXDLCV+uXnjBM4GboSfLndD++YZu0DfrhbqjsI=;
        b=MKY65cs6PTtS5bbIr7gby2N1G3AS8SeJfL/zuAbnJG7ANNd3FSYal9NlqJ6/mUDFe1
         5yqpz2M4cGi1ISXXuGq2dLfab+gTAj8eRmdX9my1Dncxquxv7ccctyCuXZ4h35k3YWvm
         vnT+Hp7NjCR6cl8HHdiucZmyXgsjc132sp8oRTi3eL/fVx3UwY5dSNqmrvRW9xY3c5EF
         vTT/4ekPBrHwmXjomtWxtv9w4D7w/3I1Slalt9f687KMiniIySJwrjS76KWA3rI4ifVh
         K+cIHz4ymlG2RyVs2OoKb97+Pm2pX1bMbnnNPY7ubDCfL15zOU6EybWERxQJJEmTpJ3N
         Fdrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mnAdHYHt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rxpwvUXDLCV+uXnjBM4GboSfLndD++YZu0DfrhbqjsI=;
        b=ZWq2dDuzpJxGEbMCc+bnY7cTgo8K+5k59qtOv/wK5aSu2bkTL0TCHTbGFu8og8Rr8I
         wzgJq6E14R9f9Jw+VG5IWtWYfvKgXZDBIPts6mMWYm/2RlFoSB1fAOvvurLdsuhzaqiW
         NJoO77HzXRseSZHUFyVBVB9BcFmGb5v5O/yfoDbgE+9fGhGhwGvnpnQE65CCSeAG57qQ
         PI1a6bQQL7EpFa5BGwVHMnjPe3sczdZUcXwyEB8NR0eYvok+C21leNLUloT8RhVMSu9a
         mCgdP1J16eGkmUDIPWffhr8mPcWacaZkCPIMAe+HB+MsO50ZlT4ve+Jruo971RKL7lDx
         8PZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rxpwvUXDLCV+uXnjBM4GboSfLndD++YZu0DfrhbqjsI=;
        b=tpg5d3KvZXWCZvCy6rtPrRwHE+Btta58isaF8MCjRNcI+iKr3an93yz9/KZdhVwhU5
         zlGdd+LhEqkHN+iqNzpo3q4pjcktfx1iiSr2VBnFu/UY65UFVCrE9lnIv59OMzdpMeVA
         y+qtCBMXuG2jS3WBoEOdTK+d0JZcJeBfuofIKeMjXYh7JhWZTbIWhuN2TRsgG/MbAM/q
         8hny8KqOd1VXXsowPdFerln1WKN+7+w9F5V6Z6jYDsVwYfpO9QnH0Z/VRLPgrLxPyK9Y
         Kev8d3WrPVXZXtVLHyoIjkSI4dRBw27hybFhQ85Z23eHExNPlCaFc3m6zkuUFIPuZeiU
         yKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rxpwvUXDLCV+uXnjBM4GboSfLndD++YZu0DfrhbqjsI=;
        b=Yp4ZETnbNHvcP8NtGpbrXED1vvtqlzEf8frUIZHOu1E+6fqqZQMkKUzFzuBB/04Pep
         5JJXgwSKmMetbaoDqnGAbTbsApMbWzSB7Lj5k5yJykJsl0xLKLO9buTfbgMcBrs3fO2f
         C9/8HZJeuG2kOXewg9C0MoRP7JMbirk/1os1aWJL96O3JfIAt2bFbagcTNrAHm51Hbqw
         w6/HtyAHsK3k1X4rDYaXnvECgG6DxXi2Tus6OFngk8KgmT6/0txSyDGeujD2U3LDRD2o
         rBfB4Gg/ud/CRkQ7nRqgG+9f7qtAwSlS2UhCuGf1Hc/HKdveNVeyTqx21aZ78iq0S9u5
         a7tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubllWhe5KBTv61wLb0jmW3l57njRaqAyeDm0QeTea9CFUFYwR5M
	7gtvEw0CWYbXE6EfmtRzcqE=
X-Google-Smtp-Source: APiQypLqNm4cSjSeZYUWaWeyCep4y0w0uPl/Yx6xFOymb/nQoXQP2QuiKEBqCmG5v2nO0+ciw/+Mwg==
X-Received: by 2002:a02:a40b:: with SMTP id c11mr12480094jal.62.1587327712044;
        Sun, 19 Apr 2020 13:21:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:1cc6:: with SMTP id c189ls1890182jac.8.gmail; Sun, 19
 Apr 2020 13:21:51 -0700 (PDT)
X-Received: by 2002:a02:a90e:: with SMTP id n14mr10657723jam.97.1587327711791;
        Sun, 19 Apr 2020 13:21:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587327711; cv=none;
        d=google.com; s=arc-20160816;
        b=zdVExcwZKVj7LqHCJnYk7iX8hzEqRz0SmDrnHSCBUWUKv8gS1NTLPh+5wKLwHIax62
         t9bffEKXbOqCtUVsci4bWKikWz5iwvL2M8vSGMv7BH5jYPBeYVib2el6nw/U+PsGfI01
         q3St5WkL/S50PiHvSvpJKJmZ4pdYP21YBPI/bcxkxzZrLbEjnAm/UuWav7tIHPIsDQg/
         TK4CmDJ2M+FAI+EbnB333FxtY/hW2v0tgANwGF6wcRkoPI54bwQBEf3jUFzkXa15zJIv
         Dm4cCGhTE9he7PmqjuVXLcvSRZH7YFVzilCziBW5wWlrpkVKomlDd/HlWLPGKJkBGMRs
         dc3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HrfHo3gwGIOtAf36S+sgbFqzxxgJQCzD86LmLZ5F4KY=;
        b=uMLuKNw4us20xoTaEE4ZE2zE3vFx0rE77PXTAnXT3CTKiSCggQbRPIGKlb9kJWngX5
         jfEeXUgWUf+XmoVxzk3igTEVRXC1NFjBqkGdhEqgqzvPe81E1LvcNVWtlC9m6GzuVSl3
         rOWWc2KXN41g15t/03nc8QTU4+ihE0KmOqGnsgKQkHw1+eBsnrUo7QbsAZ59bXn03VL7
         703S95HaeUiq14VUP7MDSKpCmC6Rn89qKDoN0sA0rQTWo/GVj9diEqB8YUrkGAHlcy4T
         9naebQCC5svrfBkYDlhjBIq5zgEYtvACGvX4nM3MJSS5EuwnTlnrlwnXh/5MMdCBUWxZ
         hS8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mnAdHYHt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o6si63664ilo.4.2020.04.19.13.21.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:21:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id g30so3919342pfr.3
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 13:21:51 -0700 (PDT)
X-Received: by 2002:aa7:9297:: with SMTP id j23mr13072001pfa.15.1587327711147;
        Sun, 19 Apr 2020 13:21:51 -0700 (PDT)
Received: from Ryzen-7-3700X.localdomain ([82.102.31.53])
        by smtp.gmail.com with ESMTPSA id s66sm10881010pgb.84.2020.04.19.13.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 13:21:50 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2 2/3] MIPS: VDSO: Move disabling the VDSO logic to Kconfig
Date: Sun, 19 Apr 2020 13:21:27 -0700
Message-Id: <20200419202128.20571-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200419202128.20571-1-natechancellor@gmail.com>
References: <20200419180445.26722-1-natechancellor@gmail.com>
 <20200419202128.20571-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mnAdHYHt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

After commit 9553d16fa671 ("init/kconfig: Add LD_VERSION Kconfig"), we
have access to GNU ld's version at configuration time. As a result, we
can make it clearer under what configuration circumstances the MIPS VDSO
needs to be disabled.

This is a prerequisite for getting rid of the MIPS VDSO binutils
warning and linking the VDSO when LD is ld.lld. Wrapping the call to
ld-ifversion with CONFIG_LD_IS_LLD does not work because the config
values are wiped away during 'make clean'.

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* New patch.

 arch/mips/Kconfig         |  2 ++
 arch/mips/vdso/Kconfig    | 18 ++++++++++++++++++
 arch/mips/vdso/Makefile   | 30 ++----------------------------
 arch/mips/vdso/vdso.lds.S |  2 +-
 4 files changed, 23 insertions(+), 29 deletions(-)
 create mode 100644 arch/mips/vdso/Kconfig

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 690718b3701a..45220e4b8a65 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3275,3 +3275,5 @@ endmenu
 source "drivers/firmware/Kconfig"
 
 source "arch/mips/kvm/Kconfig"
+
+source "arch/mips/vdso/Kconfig"
diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
new file mode 100644
index 000000000000..36a52158d849
--- /dev/null
+++ b/arch/mips/vdso/Kconfig
@@ -0,0 +1,18 @@
+# For the pre-R6 code in arch/mips/vdso/vdso.h for locating
+# the base address of VDSO, the linker will emit a R_MIPS_PC32
+# relocation in binutils > 2.25 but it will fail with older versions
+# because that relocation is not supported for that symbol. As a result
+# of which we are forced to disable the VDSO symbols when building
+# with < 2.25 binutils on pre-R6 kernels. For more references on why we
+# can't use other methods to get the base address of VDSO please refer to
+# the comments on that file.
+#
+# GCC (at least up to version 9.2) appears to emit function calls that make use
+# of the GOT when targeting microMIPS, which we can't use in the VDSO due to
+# the lack of relocations. As such, we disable the VDSO for microMIPS builds.
+
+config MIPS_LD_CAN_LINK_VDSO
+	def_bool LD_VERSION >= 225000000
+
+config MIPS_DISABLE_VDSO
+	def_bool CPU_MICROMIPS || (!CPU_MIPSR6 && !MIPS_LD_CAN_LINK_VDSO)
diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index d7fe8408603e..92b53d1df42c 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -52,37 +52,11 @@ endif
 
 CFLAGS_REMOVE_vgettimeofday.o = -pg
 
-DISABLE_VDSO := n
-
-#
-# For the pre-R6 code in arch/mips/vdso/vdso.h for locating
-# the base address of VDSO, the linker will emit a R_MIPS_PC32
-# relocation in binutils > 2.25 but it will fail with older versions
-# because that relocation is not supported for that symbol. As a result
-# of which we are forced to disable the VDSO symbols when building
-# with < 2.25 binutils on pre-R6 kernels. For more references on why we
-# can't use other methods to get the base address of VDSO please refer to
-# the comments on that file.
-#
-ifndef CONFIG_CPU_MIPSR6
-  ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
+ifdef CONFIG_MIPS_DISABLE_VDSO
+  ifndef CONFIG_MIPS_LD_CAN_LINK_VDSO
     $(warning MIPS VDSO requires binutils >= 2.25)
-    DISABLE_VDSO := y
   endif
-endif
-
-#
-# GCC (at least up to version 9.2) appears to emit function calls that make use
-# of the GOT when targeting microMIPS, which we can't use in the VDSO due to
-# the lack of relocations. As such, we disable the VDSO for microMIPS builds.
-#
-ifdef CONFIG_CPU_MICROMIPS
-  DISABLE_VDSO := y
-endif
-
-ifeq ($(DISABLE_VDSO),y)
   obj-vdso-y := $(filter-out vgettimeofday.o, $(obj-vdso-y))
-  ccflags-vdso += -DDISABLE_MIPS_VDSO
 endif
 
 # VDSO linker flags.
diff --git a/arch/mips/vdso/vdso.lds.S b/arch/mips/vdso/vdso.lds.S
index da4627430aba..ffcb5fc12708 100644
--- a/arch/mips/vdso/vdso.lds.S
+++ b/arch/mips/vdso/vdso.lds.S
@@ -91,7 +91,7 @@ PHDRS
 VERSION
 {
 	LINUX_2.6 {
-#ifndef DISABLE_MIPS_VDSO
+#ifndef CONFIG_DISABLE_MIPS_VDSO
 	global:
 		__vdso_clock_gettime;
 		__vdso_gettimeofday;
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419202128.20571-2-natechancellor%40gmail.com.
