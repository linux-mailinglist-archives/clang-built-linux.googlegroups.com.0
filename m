Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW45VDVQKGQEMEXFDYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D2699A42B9
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Aug 2019 08:08:27 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id h3sf5341881wrw.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 23:08:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567231707; cv=pass;
        d=google.com; s=arc-20160816;
        b=DB+QubRSjSOJYXMdsqoOXFqY9NQ9QSP2l/JQLVBjXbqIY0bQfubYr+arVCjuZuNbsA
         BgBGiu+hUPAaaj3OurzclLxGuHWT00n7BNtTSyz/CcNszCImGPFKJQk5taaymh6ivdVL
         Sbzsn/H8VK2hywgM472fhN0Q0ctchY1KG+LLi3euY8fTDTu0DIXPgTmrUNFFRufo3R/T
         wSLQO6yl1zdEUYPhGo12CCQ5H8GjfpVu7O6rqCcvPgUUpXBj9mGaJV0rTCoikGATl/rb
         sOS5P98jIh88ho/+jrtNql8BfD9v/Asz5TmbJ10UUjTHvHSlZ9R3Mr7NreB5id+EVOQk
         wpeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=+HxLJKE4KMC1wl2qWRXwq8b9kANn/2aHhImtyBiGWKI=;
        b=sHs7qrOIYehl3g1slJ2wAEMydKzhFMrt4l4orjNvEw8apdUuSJTMX/fNWe2cr4/y07
         EUweX/Fq3jgxhkS1wJ6l47ABqiUTdTyjuPLZTXvdHoE5NNbvQmRlFhimZay/JkbeK99O
         NAVlTxEt6AYanrYbTgbeAzhF+TcPQbaIJpkjocgq7CoMoKBvlPhhKLt1jAiz/QlxRPOn
         PSP2vX7+NQA/VOsKn7RvCCuAWg35wWbnc1GmYJrScX0hrAlAAJax+2RxRG/j12E7HKH4
         yV0ZdLleCQt1ZaBCCa6Qt+hchg/rl8a5cya6J19j4q5ORMNTek8X6IF+w//DA71wavea
         yrTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pKEWbtp8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HxLJKE4KMC1wl2qWRXwq8b9kANn/2aHhImtyBiGWKI=;
        b=ct1BOVQSQ4K51I2nP4Rhz8Iy6dkKm3XDUQ7iE+UICuHLAb2taY72tHiB7mzhLQXk4H
         GK5cSeKGjFBYK8NkbaR4z4XRnAqZ6kWCG/IULXDF+9HVIVn+dJHpRh8JoVyvud3WSAcm
         O2bQsRHtUvIzSLIDlhBNO7mSMqdbB/+NpsAZoQhIq1LNeu+VvSvDSatsIbv8vhMEHDOR
         3uizSZZhp8sO2Vmp3J7oKWOmPWF51hZTHX5wXbc4J+gZwxszPvr5YVFhB3KJQ7CmELhy
         bh+TBGro6VRqikjLbnrwu2kLYPWOfAL0/UZdQXYdEZaCUoWzxmjYQSTSxAM668GtsBF/
         NrOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HxLJKE4KMC1wl2qWRXwq8b9kANn/2aHhImtyBiGWKI=;
        b=tpH0G9/5kEGU34duiY3N1RvgfJ+G5Mo048O7a9Pv9YM58k+ok2+DNKCbkzO0RpO/Q3
         Xp0IqTraU5KTn7F+9BGQGP0grWfMVH7oAUF8YtJ6yH0bHdFWkFFtPDXMoMS9IZfV6G0S
         DxQXOfheF/RL/uJt+g02EtxQ+8qIwhmHz0ktk4/AgqxVfnVv3D1oR2LnmWZH5CpOM1WH
         DGlu9b19hNSEZDf3BWBLRPXNHh0DmThqI84FyocDkeWtuvQfdVnSCNU+IiAxOhHUJDe/
         +Tqh2itT0BFPUJmaYE6ua2EDSp2CEYioy50Mc+yfOLF1iyN3ANfnnBe7vDqMtHA+pAIM
         1OIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HxLJKE4KMC1wl2qWRXwq8b9kANn/2aHhImtyBiGWKI=;
        b=VOS4c9CJ3iM4wH9qdovDUI7nwc6MLs/Oj9gWcobdtTgAWvEsDjIlMQeqb/rt4jyP9w
         kF50bY9653IHtLYIhGUXbn78UPt1ZYA+mTezgz7IpwJaICen/7LmeK1AVW7eVe5eu4X8
         4jPPEz7Wfin2oabGcUE8IoVs7EZG0nUtcPIsIORow27DMda7/RyZ4yOixqvak1Dm/fxc
         IvDPI/q5AFuJBZPS15VUJgNBGe5CeFQt4QjSu7rtpIg8WFECwLhPAkLRBARJOhGb0uDk
         /+XHhhKpXcQ5ywIicHHovw6FMSmGwjzDz+7Pr9X8tSQKjlYydF0d3IqYbMNif+oSL3wv
         mxWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmcQMXVOuMFG1mYHSRquD6euNJ2EKYKsKMj5A92kMNflGNHi1v
	oAFjP97SwenM5jfr8obN7c4=
X-Google-Smtp-Source: APXvYqwCdAqxnca+xrCRULaJkhtBdGKskwKXaeKxEwPulWGGry55CtXSwfNjvzaXccazCmNJwvXZxA==
X-Received: by 2002:a05:600c:2151:: with SMTP id v17mr3965309wml.69.1567231707475;
        Fri, 30 Aug 2019 23:08:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:660f:: with SMTP id n15ls2594668wru.11.gmail; Fri, 30
 Aug 2019 23:08:27 -0700 (PDT)
X-Received: by 2002:adf:fe10:: with SMTP id n16mr23437249wrr.92.1567231707086;
        Fri, 30 Aug 2019 23:08:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567231707; cv=none;
        d=google.com; s=arc-20160816;
        b=f0Xh0D71EHx9PDNDI1QtcuWozt7D2W1DKBs1cnH776QqN68hQN7Es0vJ2Ca/KNyTLy
         61CPvsezf7ToYWTLTRMBwasSgIeaPfMUd7GtjQCn7SaKveikLJXEUbNY5+9RuhOgbuG6
         letRgMCnmfvAOhy8WCySIebijla14iorrw5sRVpxVItbkJ+K+Wg+4EdUl+vtIQpjaabn
         KeXvKfEdeGXLDRNzo5QhhOmB2ahu1iiYKIWjL8p/g3zDMNAGag3q02j2QH2GCMW4nxmg
         FAWTYPlkxy1KeqLLMYDna6A5px4QrR606mQH0GfE5wXSAIFTL2QVg3MZIyyqxaeHZ/9j
         xbMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3NQT/+H/R/Gs9klh5utfpPtpga01Z/bPDqOTKDdobn4=;
        b=yX/YYv0Pet8sRA5r+oxwfkkzl7QlkoS68lnfm9x1xpgCckxN8fJtCdw/cjbSiA+aMw
         HAJmqKVbV9aKzYs8Z1DOFTyl7vV8LnntH4+tfow/TDtjY90BCsBbwMi5oafshf3L8JEQ
         OmKHoYi6iTDZGV+sSYZwlxDM9GWxjLnuVc2rbWUyciVbXb+yU7Lwfakb+yqEg4LndRre
         WGS/ZuZ1RV5WiCNbWFNuMgRh6CCyw0HxR1QBQtnppQg5mmN/p+b5n7497RkDbSyBo7A1
         B/gTRRJqW7NcSM6Wv9coogqS/gsJe9ixQc2YW/CDu866bQfBTz5ARqWT1K7FEHYjzMcQ
         Kxlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pKEWbtp8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id f13si720639wmc.3.2019.08.30.23.08.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 23:08:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id k1so9414191wmi.1
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 23:08:27 -0700 (PDT)
X-Received: by 2002:a1c:2b85:: with SMTP id r127mr7079242wmr.30.1567231706449;
        Fri, 30 Aug 2019 23:08:26 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id l62sm14708814wml.13.2019.08.30.23.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2019 23:08:25 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Matthias Kaehlcke <mka@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH v2] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Date: Fri, 30 Aug 2019 23:05:31 -0700
Message-Id: <20190831060530.43082-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829062635.45609-1-natechancellor@gmail.com>
References: <20190829062635.45609-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pKEWbtp8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
with clang:

arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
softirq.c:(.text+0x504): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
softirq.c:(.text+0x58c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
softirq.c:(.text+0x6c8): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
softirq.c:(.text+0x75c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
softirq.c:(.text+0x840): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow

clang can emit a working mcount symbol, __gnu_mcount_nc, when
'-meabi gnu' is passed to it. Until r369147 in LLVM, this was
broken and caused the kernel not to boot with '-pg' because the
calling convention was not correct. Always build with '-meabi gnu'
when using clang but ensure that '-pg' (which is added with
CONFIG_FUNCTION_TRACER and its prereq CONFIG_HAVE_FUNCTION_TRACER)
cannot be added with it unless this is fixed (which means using
clang 10.0.0 and newer).

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Link: https://bugs.llvm.org/show_bug.cgi?id=33845
Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Add Nick and Stefan's reviewed by tags
* Move version check from Makefile to Kconfig. This prevents '-pg` from
  ever being added if '-meabi gnu' would produce a non-booting kernel
  and it allows clang 9.0.0 and earlier to build and link all*config
  kernels because the function tracer can't be selected.

 arch/arm/Kconfig  | 2 +-
 arch/arm/Makefile | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a98c7af50bf0..440ad41e77e4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,7 +83,7 @@ config ARM
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a43fc753aa53..aa7023db66c7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -115,6 +115,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+CFLAGS_ABI	+= -meabi gnu
+endif
+
 # Accept old syntax despite ".syntax unified"
 AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190831060530.43082-1-natechancellor%40gmail.com.
