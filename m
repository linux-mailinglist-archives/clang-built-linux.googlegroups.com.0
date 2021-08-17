Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBEC5SEAMGQE5WOBFRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA713EE0D0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:21:25 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id f64-20020a2538430000b0290593bfc4b046sf18505603yba.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:21:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159684; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sr2EAUgQic8M4PPYuECFktjflrzMkN00X1S2Xy0mg8rziu6Ciqxl+dwIDJsYjADSOi
         CJdOkRWz+i/4Nmgd3rRUKlGGVifR3hI1nNrQnCxKb5nfPEYjojIcFfuh7tB6yUWCC2Br
         nnT8r+xaoKsc3+qoaTB5PRIg/J+aGZqDk3Hz/kEVtjKNLKjHhxKXked0Z/149XxYz599
         m/kkvmBcVHeITy269ZqNVtJ/yY3OkRORb1xBzSaILUqYnluR1f3BV5bqVwaiPIvRUvUu
         VRCosZcIE4Usaq2JHruKjTxaAXsPeWjK9B9fPHU/YTw9Gx5clFyN9/ElUfQmK6JN56bX
         xgxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gRVawkim8rwA5RLRCWJ13yBX0UCYOt1Tlteoee/4iCs=;
        b=Sism1xAHEwanpJu/+9kkrmrZQscK+XXUUqF8ee3AK3SussuKOSgNoQXgfxlLnJoHbM
         V/j0+XQmhNVA46H53JOWstVYsv51z3Cs2YcWBmfmQnbxGrWyKWynCVYCpcCSac6bP2sm
         339MlG3xJH7pmXeLRpg7QSMLIt7yOgXqeoOUpwDerFqpMbZ6KeQHd0rQys+EDZ4O77e3
         IFU07vIlagMYuw7luDgAZ5rjNMfvcptkQk3v8+WT3E12r63BDoyBNJpkAXY9kjRt3N+/
         qWfjOyr2lJMhleJ3eDM6Zn1cSiE+wMAR0gDC7CPCuGuPQRh7fbMFJul9bptPWXw47bXi
         1ctA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jkUmqiWk;
       spf=pass (google.com: domain of 3awebyqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AwEbYQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRVawkim8rwA5RLRCWJ13yBX0UCYOt1Tlteoee/4iCs=;
        b=Zi65keA/Il//9LdmYA/oPbxXFcpxpsvLfrfO26ekTgKDXHzuF2pHXK0wBN8HBGGhSt
         pg2I78HINCRH+6yYy0dOn0xOBXgQdoa9yiQjINGYOwKK5+JgzXWjfyHZDl9X7Kv+2eW0
         pL4aPLTtRnRxFz1SPBaa3NdEYVJC1xg8ZUm5CNztaOmVOUqTtV95HPQ4XdfQcomEgY1v
         Uc+of0JfMilelnT7X++6bI5p3Igo8AWgNCHmdtTJMXwk/ZCa92AXZWHvUlPSWDWspYjP
         /uvUqcn0y7biDyTGYph10UyDZcXW+//n06AMsUMoGlHfEqrnYT8OY8vP7k4LDa8h4c/l
         QQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRVawkim8rwA5RLRCWJ13yBX0UCYOt1Tlteoee/4iCs=;
        b=Vr0BN0blqcbnpUwHoypayLaQDu+olZmUrKJqr6guyGNPbX7aDLduayHVBdhp+XcShF
         g4VbJXIPb4Rd1jnD0NNALsmnaMW/90UK3X4FTEAiGBFvg2AH3Fg4f+6TjZgcjIkA57G3
         nuqZZokXVmB/+9rDkwhknRYwihigoFWx3sj2HwNa+SpTQ8oje4OV5B+1aDFlJu7EnL+L
         2Zd6/SieLhJVWfRs51Os7kTJor668QnyGEsLxttMAAufa+0r/PjAhN9vn4LKsT9iZorf
         +cOn+PLjUiDTlF3uDt5kIjGbval/j0WGrsLlGnYOzBjRfbiUIOYe2syrNzQOGq72kxum
         UgNg==
X-Gm-Message-State: AOAM530+G43DBCAWHpifemY2YFsaKOJAV7K1AI/SvB3Cf9GH2fl7kl6+
	5PNvNMWB3gmb1XkoM8bAP5I=
X-Google-Smtp-Source: ABdhPJxkK8ycf05B0uVR6inxs05rg10J4KbTiqCdPKuW/CPK6uF8ZnBqiHrBj113eQaX+g94/dq9Gg==
X-Received: by 2002:a25:a20a:: with SMTP id b10mr932442ybi.478.1629159684490;
        Mon, 16 Aug 2021 17:21:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9a02:: with SMTP id x2ls240258ybn.0.gmail; Mon, 16 Aug
 2021 17:21:24 -0700 (PDT)
X-Received: by 2002:a25:7497:: with SMTP id p145mr965411ybc.338.1629159684087;
        Mon, 16 Aug 2021 17:21:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159684; cv=none;
        d=google.com; s=arc-20160816;
        b=J3gm4xtM1w14YZuOULz3yERi3TzfLmuvq1zInEHyBK5+110mkcPvBT/QOWfWcPho2t
         cHp9gmAT1DLJlzeMFCMLichhWj96AsHN09xodAiWeZfCzNg3XJTB3SJDUbr6bp8I4H6j
         5nEXSTySdwjfYjApOprExtmFd2Rp/woe/R/epSdO1lgXTKuyxSRMdscWaGNM65qWqutW
         NuUNNqC94a9Y720goY17JnKIujGR35VW9ffC61YhtOufivkRtyzEixc31XyEnNsBgCIY
         pQ5Ib3Q2g+N3OpzluK40StW/uqAII0DZESzgO4SbZ/XytPOu0QUpMxemfPSC7deFrkjG
         WMXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3mIJT3ikKBz70xHqPeYP9DUuj3yJmyYSvnlROWprNU0=;
        b=EnqE8lmGU8042ef/dRwzS+GIkQHp6J/e/YMBGc95olCKUdAcLhEnvgF8RNhDLSO+5J
         Gi2VjYOP7HcFj/4/zTQd4DcYCruaTmUSCIKL2MEJXsU6uKHOxxnt2uSs0jKB+9UA3DhF
         RrOlm56pcTROoc9Og3ISr155DgglTV2FDVpEtWjzjW5XTsagdfGPggTkhJj52JCmkElZ
         A+CLxNK/ewz0hMcojRBFvFLOW1ABqE5YgYVlynFW60B4mxXMn2cxwAhETmYKCm4weY/o
         W/8vamQlKD9qhMHVr0+VzScE3BwSXgzB5M7AnsMKIU30w7IC3Xnp3CBaQwJ7DItk5uNU
         zeAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jkUmqiWk;
       spf=pass (google.com: domain of 3awebyqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AwEbYQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id z205si42641ybb.0.2021.08.16.17.21.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3awebyqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id x5-20020a0569020505b0290592c25b8c59so18492630ybs.18
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:21:24 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ca8b:: with SMTP id
 a133mr882102ybg.339.1629159683765; Mon, 16 Aug 2021 17:21:23 -0700 (PDT)
Date: Mon, 16 Aug 2021 17:21:05 -0700
In-Reply-To: <20210817002109.2736222-1-ndesaulniers@google.com>
Message-Id: <20210817002109.2736222-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH 3/7] powerpc: replace cc-option-yn uses with cc-option
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jkUmqiWk;       spf=pass
 (google.com: domain of 3awebyqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AwEbYQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

cc-option-yn can be replaced with cc-option. ie.
Checking for support:
ifeq ($(call cc-option-yn,$(FLAG)),y)
becomes:
ifneq ($(call cc-option,$(FLAG)),)

Checking for lack of support:
ifeq ($(call cc-option-yn,$(FLAG)),n)
becomes:
ifeq ($(call cc-option,$(FLAG)),)

This allows us to pursue removing cc-option-yn.

Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: linuxppc-dev@lists.ozlabs.org
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/powerpc/Makefile      | 12 ++++++------
 arch/powerpc/boot/Makefile |  5 +----
 2 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 9aaf1abbc641..85e224536cf7 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -12,12 +12,12 @@
 # Rewritten by Cort Dougan and Paul Mackerras
 #
 
-HAS_BIARCH	:= $(call cc-option-yn, -m32)
+HAS_BIARCH	:= $(call cc-option,-m32)
 
 # Set default 32 bits cross compilers for vdso and boot wrapper
 CROSS32_COMPILE ?=
 
-ifeq ($(HAS_BIARCH),y)
+ifeq ($(HAS_BIARCH),-m32)
 ifeq ($(CROSS32_COMPILE),)
 ifdef CONFIG_PPC32
 # These options will be overridden by any -mcpu option that the CPU
@@ -107,7 +107,7 @@ cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mlittle-endian
 aflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mbig-endian)
 aflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mlittle-endian
 
-ifeq ($(HAS_BIARCH),y)
+ifeq ($(HAS_BIARCH),-m32)
 KBUILD_CFLAGS	+= -m$(BITS)
 KBUILD_AFLAGS	+= -m$(BITS) -Wl,-a$(BITS)
 KBUILD_LDFLAGS	+= -m elf$(BITS)$(LDEMULATION)
@@ -125,7 +125,9 @@ LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
 LDFLAGS_vmlinux	:= $(LDFLAGS_vmlinux-y)
 
 ifdef CONFIG_PPC64
-ifeq ($(call cc-option-yn,-mcmodel=medium),y)
+ifeq ($(call cc-option,-mcmodel=medium),)
+	export NO_MINIMAL_TOC := -mno-minimal-toc
+else
 	# -mcmodel=medium breaks modules because it uses 32bit offsets from
 	# the TOC pointer to create pointers where possible. Pointers into the
 	# percpu data area are created by this method.
@@ -135,8 +137,6 @@ ifeq ($(call cc-option-yn,-mcmodel=medium),y)
 	# kernel percpu data space (starting with 0xc...). We need a full
 	# 64bit relocation for this to work, hence -mcmodel=large.
 	KBUILD_CFLAGS_MODULE += -mcmodel=large
-else
-	export NO_MINIMAL_TOC := -mno-minimal-toc
 endif
 endif
 
diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
index 10c0fb306f15..33e1de5d1c95 100644
--- a/arch/powerpc/boot/Makefile
+++ b/arch/powerpc/boot/Makefile
@@ -66,10 +66,7 @@ ifdef CONFIG_DEBUG_INFO
 BOOTCFLAGS	+= -g
 endif
 
-ifeq ($(call cc-option-yn, -fstack-protector),y)
-BOOTCFLAGS	+= -fno-stack-protector
-endif
-
+BOOTCFLAGS	+= $(call cc-option,-fstack-protector)
 BOOTCFLAGS	+= -I$(objtree)/$(obj) -I$(srctree)/$(obj)
 
 DTC_FLAGS	?= -p 1024
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-4-ndesaulniers%40google.com.
