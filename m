Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ43Q72QKGQEIE2TRMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 386BE1B61C2
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 19:18:33 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id i15sf6694297iog.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 10:18:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587662312; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCBa/Ge2QA49PPBIrpAneEfy6IurfC2i+3jn4j7qxgyL/MoZ9iZLTTBPmiMjB1W6Mu
         tU7j2yZpQCiLXjuNax2x/Mjhn9LrYtlC3kSPDl0JOrhm61zje1euitIT8Wok66Z7K6um
         8mbZpn3bgSkfdcacFdZ+zGHrC7kLlhV6s4E9rn5IYnpstLjkfigoRW6MqpPbzblYetz5
         q1v7g0rEtf4K5hDLpMWQsWh/XtNC/v3gX7pCrOokG3RbnULVbqNUZ8FmhPOytTRHbk+8
         cUxqEeAHwfLwYEJPpzCyUJtoNUJq8X7/DjmzMExzV44PlQiuxvcfGJvp7X6+atAGFnBD
         nnMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=0jlYPrFEULNYcKw9SgN4GMFBYWbXSW0+wbXou6gQwOY=;
        b=1FyM5+m7/KHEin8EPdIiMCXuO4Uv9qcG/pnTucn4+fCuUT3YfiVvAz41RVmPXEzHGj
         vZEXNugTC9Sigehw94T9HhwOP1vJlW+mufL7m21zoyQKQg4evKjQFO2dzmclFrQS7Jil
         eZ25AD/DrDmfNDnTrzGeJbvhprc4f+yI1b+il61EnBlGyPS0MpxREmdco36mA5dkUlmP
         RclDE9D4uqHzqTqvQTKigck5fGRDOux2T9/fV8n2YCtTlc4vFBoggHBboMufV5LTkeUn
         2HJyZ9Qxjs6ScJfw43zi8VKhtvmB3t5oyjCjtV7NSD403YhVeIuLO60AGKHjqEGRB5EN
         3xAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjYeQYK8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jlYPrFEULNYcKw9SgN4GMFBYWbXSW0+wbXou6gQwOY=;
        b=SVwXptsvzMpU58y5obhcHHAydlhVe7rZE2O65Rhb1BNhykro3objfeffGbxfDKp2IX
         rU/EQ1AMucHx7BdOPWE/NT/BfZolC86LfLdHqU51roJGAxmazb4+alPW+0q3HUU9Zb1f
         BA3eybKPHzhuu2s1Zi3IVXaA0lKLUGlPn4x07Fju7t8YfKjQfo6GYwpS8rUPpl+jB5ZV
         zqD/Yai4Zh3Y3M7K6pnJKEZNm5m29ggHsh+hXuXOLx4iuTN2XTf69Z9DcrAwTdwfVw0B
         +oXSZv3qCgPpAR5cj18Yi7ZfYEmDbZEXqjMtqaiLHqlGYbX0wNIlC/SW5ZHdmCCK1RfN
         6X2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jlYPrFEULNYcKw9SgN4GMFBYWbXSW0+wbXou6gQwOY=;
        b=PsWYuNecj0D4sKpZOXmHUzXvCVSsvkV00SL21jZnnUBffbIlyK5uxRtRllW8Kwgfhl
         G1/8tkdaRyR/hmPb1YcjfSmsnMK3Dp0QA8onRwgYm+dWebx7TN+gBkDIsjLESvvVFoRC
         QCUG0UD/5Ud1C7+opSXoFAsUxR/oRMiC4jSIrztLzRbPHhPaD26MHDQkRd82LTfRbutT
         J+Z6c391wxP+8syRPlCRwbBGSJ+a/T9U/Qje4D6gsEZvLz4PYc9sxhSQG28K/spfocsy
         E4AZkrQoOj2D/dD0a7zhm2f1vDY8z7jsWNdKWfKX4PFYCjlrRDFqkAcP/ea8NLsQPOmz
         Gl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jlYPrFEULNYcKw9SgN4GMFBYWbXSW0+wbXou6gQwOY=;
        b=h0n7rExQUH28s4a5k4GChVFI3f1HLX0UuoUovqQ/V+IJYg8BilcC+YmqO0rCS/qbou
         c6uIIAG6qyjQBFKQW8yaKsQ/5tx7oB+xX/dGf/37JAGpRw+0FfPtut4umYPhzvF8+dYm
         /IgLJNpBHh1ElWsAOm5msYeco/LBaogQwFhq05PoGTI3y2wXfhXzzda284eKfhDJqlvV
         s4On/YqbCbohdHfl8GPHam5J7Ku1bUMAZfIDUwsuGNyX60IuA5r1CAKsteAwIBeGSmpb
         qUjjLBdYvfCyBLk5m6rzAWPvQdjkT0KFgoTjLGYfFoh6H2lzRiZzq2pMs5cf7Je5dSoB
         T3Nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubHyNcncmyqeRDH0Tp+dY6z5i68WDXiBQDbA0El8rwMVTs8rOVV
	wPZy17RGv4IDdy3QH8BXVpg=
X-Google-Smtp-Source: APiQypJTZjCELHMQFf7DdK8ncaq3hWVWFBZxeIXOS+AHHPwI3IXGsdIoJc3S26gdtn6q8il3Eo9BfQ==
X-Received: by 2002:a02:969a:: with SMTP id w26mr4095174jai.71.1587662311950;
        Thu, 23 Apr 2020 10:18:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce4c:: with SMTP id a12ls1629787ilr.8.gmail; Thu, 23 Apr
 2020 10:18:31 -0700 (PDT)
X-Received: by 2002:a05:6e02:5cb:: with SMTP id l11mr4577943ils.236.1587662311590;
        Thu, 23 Apr 2020 10:18:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587662311; cv=none;
        d=google.com; s=arc-20160816;
        b=u3W5svwJAAUq7icsGXcCU/S4im129m/+DQ2yWpouQdnGqQc19IfAkIAH9j2RrIpm9F
         RD8Ornkc9htPryW7c4yq35rC+Q+ZAICisnhY6XN3xRyhvJw6YUoDcx9BjLeoZJ6Of7pw
         2zDUx67vjLtq6t1J4D0gvx0G+8+gEe26vh4OUE00q1ShUUwnZOKE6nWH3HxnYed/vTM1
         Zxs8JdszwXKDwyMu9BnRh2y7mkz9gwxrubsfX6lGv16JK8KBDC8twdYfCJdgy0JOPqlJ
         DsOHmpsFx3gql0Jpq6SPAzaSGlbwLVcpmahvqjEYqSHszSmeo6NpZSbr3YrWlxA40a4G
         dyyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HTHjP+xa7tR8VrtaPBa2UF2GKJnEOq+tUvqQYj54eMQ=;
        b=ZREvIHmAccyX1N9d05lStUwptdzDeBV+BbekcQnNZbVAf6OcnsaH7O64GG5BHz17QQ
         uymAVYZy6JuNJRX+g/Vky3ZiDaCfC/8V4KDy4fIVmO/Nzd2lakbbXwvV3gbkGWPSgf38
         oc7svz3ZPrfJLdueMPbLF7z/QBxHCi/c38U+2eyHQx/869SXrd4iHXrmORnZa0gI57Hp
         eBDQJXipIns2UPr+OL7wEVKWzZIQoGDuh8kjVC5Fi30lryRDSrzlKrZcz0y2aeGohXAl
         iikjFVk8SM6qDRfhVZ+sQbnR4FN3ehJr4kWMS6Q9maFqJ8W/SPcmqKTi2dixiW1az3cK
         lXbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjYeQYK8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o6si140663ilo.4.2020.04.23.10.18.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 10:18:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id e20so7358087otk.12
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 10:18:31 -0700 (PDT)
X-Received: by 2002:aca:53cd:: with SMTP id h196mr3919944oib.104.1587662311195;
        Thu, 23 Apr 2020 10:18:31 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y5sm746726otq.38.2020.04.23.10.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 10:18:30 -0700 (PDT)
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
Subject: [PATCH v3 2/4] MIPS: VDSO: Move disabling the VDSO logic to Kconfig
Date: Thu, 23 Apr 2020 10:18:05 -0700
Message-Id: <20200423171807.29713-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200423171807.29713-1-natechancellor@gmail.com>
References: <20200419202128.20571-1-natechancellor@gmail.com>
 <20200423171807.29713-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tjYeQYK8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

v2 -> v3:

* Fix CONFIG macro in arch/mips/vdso/vdso.lds.S, thanks to Sedat for
  catching it.

v1 -> v2:

* New patch.

 arch/mips/Kconfig         |  2 ++
 arch/mips/vdso/Kconfig    | 18 ++++++++++++++++++
 arch/mips/vdso/Makefile   | 30 ++----------------------------
 arch/mips/vdso/vdso.lds.S |  2 +-
 4 files changed, 23 insertions(+), 29 deletions(-)
 create mode 100644 arch/mips/vdso/Kconfig

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 690718b3701af..45220e4b8a653 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3275,3 +3275,5 @@ endmenu
 source "drivers/firmware/Kconfig"
 
 source "arch/mips/kvm/Kconfig"
+
+source "arch/mips/vdso/Kconfig"
diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
new file mode 100644
index 0000000000000..36a52158d849b
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
index d7fe8408603e8..92b53d1df42c3 100644
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
index da4627430aba4..d90b65724d78e 100644
--- a/arch/mips/vdso/vdso.lds.S
+++ b/arch/mips/vdso/vdso.lds.S
@@ -91,7 +91,7 @@ PHDRS
 VERSION
 {
 	LINUX_2.6 {
-#ifndef DISABLE_MIPS_VDSO
+#ifndef CONFIG_MIPS_DISABLE_VDSO
 	global:
 		__vdso_clock_gettime;
 		__vdso_gettimeofday;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423171807.29713-2-natechancellor%40gmail.com.
