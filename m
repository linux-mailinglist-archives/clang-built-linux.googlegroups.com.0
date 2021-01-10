Return-Path: <clang-built-linux+bncBAABB4OW5P7QKGQEO33ZZXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 398512F06C9
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 12:56:34 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id d27sf147970ljo.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 03:56:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610279793; cv=pass;
        d=google.com; s=arc-20160816;
        b=tk+KMpriBTJFEGq3EaGrZgFPTV8SLIO63SLMbNy8rZwgNZhRZvb59btiCT1OOmfSC9
         LWvbtSmw/9K2eZR2mZ9uTxn0pUnae+1POXFlIZecEBxoXCb4Rdn+8AHwq45GeBR7r9BS
         +wshg7dQnEY0O0ua5gLhmwE+TzsFP15mtTOouQRvIDNOfAg/kw6ykpnXJG/s7huotRy8
         Py310/ccKo798GX1AHlYDbmmUJLjvh+jIOwMXtc5j7LQoDUjlsBXpnOmHSvSf+YD5YBW
         z0GZ1jUnavs6ikPFuuoy8UuXA9TLu+EVJ3q0xYwaY1wLrNktKuGgY3XOc59tyc5ALTsg
         7dEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=KSPOl3oRthks681vNnKafI+86+aYKWhHY4dbuGRWOko=;
        b=xlAmTzEkZE8bgMRcAzPeQTABXYN2NLfRAu6sSN8ap1vBTfa/u5Vz3LTbM87i/o77aR
         oMc0vcY2wZSiPH6vawccPfO8EoAIhNuPT8ICcZv9IlAAeWptd5WqWu0uNd6GNTf8Qq59
         pCIg0klk+J68T+c9e3a3X5HFqexQs8ADOi9xutfwqXE32aTMIB5ojp9tdJPF9A4iGUuI
         j1cnboTHqVOzYwTTlmpjOEcM4wDFsVFONx1ooMfSo3Px6lNo0OQqctIgnyJqU8NiEEi0
         zUGno4yBVhvqk/gQ67vZEwZcDXD8mqJ2D3UckPK3afAoUYXj1ZlBVuNDR6Sho98KUtrX
         BPPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=EFriee+m;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KSPOl3oRthks681vNnKafI+86+aYKWhHY4dbuGRWOko=;
        b=UFJIrTRT8wVW1aWMsUDuUJhi9uQY1VmhFtIaeUJpotx31h3PnQ6yojw/EjJxhJrbrG
         kT32Cwbs2joKWGrnLJpEaRqAl7HT+RWHGjTh9d1HNjg/7HApzat5b+Z4rRSnZGv+pKeR
         TbXod20a4GDE/FRQXU2EIapFb7umzuNsXuAFjgIg6uqmSDYg/Y9UMrCrIOZf9Z2vU4Ug
         PmHUT+sB7rMWUldMpymhOpwYoQ33SXwZlvA0VnjKAbvoP6FO6ZFa3he3ju0F4KKabOzU
         9WLqRkI62D2rGHCpV8VlQ35YWNRNE0IapcVZNjkuywf6x4NEyOwjHrqb82tcTlWUzXaX
         4hCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KSPOl3oRthks681vNnKafI+86+aYKWhHY4dbuGRWOko=;
        b=h2tzwlVXvnjHCJ0ghKPlSG+1wU2ZS1V7h84JEkuRCH6J2cMjgiHgjqAuNdLLIFMmvC
         cuHsmhCDZ/7QtbTrgoOwISeECNPogb338nR8hdP5H3LytdHUkkJa6iB+inX6ajQ7Hj6o
         CoONQ5N/BqCgjLshTfqfC941iLufz6p3pdwNZnKzGLf9T5aO8Uj2DXR7po7pvcUBKfED
         /gpcUt3285im4AHpM9yAgQZgFkq+K7IkQLJHgMv6oZLZmVB/QpOv4xIuvKUvOwAfaUOV
         MkBFKfFsF9BPp9O8Bwg9uxpvFHBPOqkeLb2E6P2D0BDW2dSDkhO2gHMDmC3MJM12kIIM
         tbAg==
X-Gm-Message-State: AOAM531mINi96bY9o91HghAtwLZ0K3gefCMLSXGHB/7D7+hUQaNrdZTe
	4wb6ROxbtWhazzRyH5wuOiE=
X-Google-Smtp-Source: ABdhPJz0Tztw5pb0Y+36Z0Qzm3mdmurSdVurYpdV5hlT39q4GEfMboEcf8Ze1H7Kl2fQHWVmmYyrGA==
X-Received: by 2002:a2e:9bd6:: with SMTP id w22mr5102221ljj.335.1610279793809;
        Sun, 10 Jan 2021 03:56:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:810b:: with SMTP id d11ls2500589ljg.11.gmail; Sun, 10
 Jan 2021 03:56:33 -0800 (PST)
X-Received: by 2002:a2e:7e05:: with SMTP id z5mr5892788ljc.353.1610279793065;
        Sun, 10 Jan 2021 03:56:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610279793; cv=none;
        d=google.com; s=arc-20160816;
        b=xC/qGkbDmxkE5ALdnGh4n14zW1/NeOEMNmC0iCCn7jM4jXC5RhwmPuIC/Usm36JhxO
         kHW26lnvgGCvv4aWJ/fYeQsR+QT3lbU1q+IWCp956qHQl9OPCEezJI0u84TNIFQNObNR
         oJFBXYEW6Gy36EDUvy4bY13jKs5R14LeurQLl0CnysHcdQ/XYsama0pl27E6FJdzO+So
         hVK9GxK7RCzgBqyNSODpxfcQg2Mz+oVPUqqvT9Wd7debBLmk6JvNOzMpRpFyFHER+wF0
         dmv2KUtdbEVp0WBo8bASHbdc1EdAIhqLSqVhscjxrubGzW42z2t5dpCrxOu+UrNze0vM
         edtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=NTGpJ7pXsbGsFYQgxGiOz3p29EZ/v0kLX/q+gBWkQ8E=;
        b=t23mB1XMLXf/jjkJS8kbJCjxeX/K90BBFeW/d1RagtS2iJ3gfUfLeLRXPJ0fOFS9Ka
         0fO1yKXBSlWBVq0ty9fM0EKO105sUfPI7nvFoIGgWJD0nzvB7cJfzLE6PcYZQwW6TxcW
         RcnzF3fQSE/doZOhz2CcgKwqjhPJjlT1VuGPnL1oflakHETolgsTcGGzNScQy2GllbCC
         G/CoRmpRPI3z1tWmXrbpKsx0b97zwvhOFR+xzKIiU7T1U/hj0cLA9Cx/fh8nZOoYQ+Sj
         QDBcfn7xckQBZRNO7VxlYTsyrC9a2c3W+DjqjOxoV5VPP8oQd3w9NjDY5MhGfaO4DwUN
         ujIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=EFriee+m;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id q28si661273lfb.10.2021.01.10.03.56.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 03:56:33 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Sun, 10 Jan 2021 11:56:28 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v5 mips-next 4/9] MIPS: properly stop .eh_frame generation
Message-ID: <20210110115546.30970-4-alobakin@pm.me>
In-Reply-To: <20210110115546.30970-1-alobakin@pm.me>
References: <20210110115245.30762-1-alobakin@pm.me> <20210110115546.30970-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=EFriee+m;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

Commit 866b6a89c6d1 ("MIPS: Add DWARF unwinding to assembly") added
-fno-asynchronous-unwind-tables to KBUILD_CFLAGS to prevent compiler
from emitting .eh_frame symbols.
However, as MIPS heavily uses CFI, that's not enough. Use the
approach taken for x86 (as it also uses CFI) and explicitly put CFI
symbols into the .debug_frame section (except for VDSO).
This allows us to drop .eh_frame from DISCARDS as it's no longer
being generated.

Fixes: 866b6a89c6d1 ("MIPS: Add DWARF unwinding to assembly")
Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/include/asm/asm.h    | 18 ++++++++++++++++++
 arch/mips/kernel/vmlinux.lds.S |  1 -
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 3682d1a0bb80..ea4b62ece336 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -20,10 +20,27 @@
 #include <asm/sgidefs.h>
 #include <asm/asm-eva.h>
 
+#ifndef __VDSO__
+/*
+ * Emit CFI data in .debug_frame sections, not .eh_frame sections.
+ * We don't do DWARF unwinding at runtime, so only the offline DWARF
+ * information is useful to anyone. Note we should change this if we
+ * ever decide to enable DWARF unwinding at runtime.
+ */
+#define CFI_SECTIONS	.cfi_sections .debug_frame
+#else
+ /*
+  * For the vDSO, emit both runtime unwind information and debug
+  * symbols for the .dbg file.
+  */
+#define CFI_SECTIONS
+#endif
+
 /*
  * LEAF - declare leaf routine
  */
 #define LEAF(symbol)					\
+		CFI_SECTIONS;				\
 		.globl	symbol;				\
 		.align	2;				\
 		.type	symbol, @function;		\
@@ -36,6 +53,7 @@ symbol:		.frame	sp, 0, ra;			\
  * NESTED - declare nested routine entry point
  */
 #define NESTED(symbol, framesize, rpc)			\
+		CFI_SECTIONS;				\
 		.globl	symbol;				\
 		.align	2;				\
 		.type	symbol, @function;		\
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 09669a8fddec..10d8f0dcb76b 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -224,6 +224,5 @@ SECTIONS
 		*(.options)
 		*(.pdr)
 		*(.reginfo)
-		*(.eh_frame)
 	}
 }
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110115546.30970-4-alobakin%40pm.me.
