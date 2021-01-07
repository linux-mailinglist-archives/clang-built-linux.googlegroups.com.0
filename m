Return-Path: <clang-built-linux+bncBAABBW7M3P7QKGQE4PERDTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E56B2ECF23
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:54:03 +0100 (CET)
Received: by mail-ej1-x638.google.com with SMTP id k3sf2292403ejr.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:54:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020443; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxFafaKeBZvwWw5dXk3VCnDFIkcxiMj2fO7qpwlsOdmI2hHfBbBcgACs+28COWJCNw
         5/ie4DybYD9bjkI+43kw+RTllNLqdvx4wy3uHc9tIOQ9J9s3zSd4rSI9l9haFkUUEOCX
         O01gsdUlWdPv3Xv2GiphQxWRK2RAR0IMtoAFeLi0fZ7YP+WJDisCjHeyOoXa34wu+vi1
         cMv/o+P0C+bSduOuAwER4AQq7GTs0DPr2l1McoMSh4TZf999ZgWks5I5CYdKK2HZL0eM
         m/uOguMkdzmdpQxKjGLtoQBj01W2RV1DCULwre4Wscxcm48Dkavo+lFJNFWJK7v11SiG
         i8Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=AsvQNCaeqV/DmU+kicaKj3hqSu38K3stKyXtiWIEZ5k=;
        b=dV5jg4j/QZOaJuSy9lrEmWZaXW5goBNMcLqBOBAAPNPU4SUBjAyQ8zIHAd6DHh9jxm
         ASmbWJG74Jkk8oSTWcoeElCXwOOleaCDIxmRmpkwwnIWrVCTjw7VZAaDpajxYk1MohLL
         UvyYtuw8CVgGI5gQeYe95fvU3DxE/TaLGpwLcCQ7P9lb3fbeI2GwMOf3lBGaqiIQXnWk
         CyDpJfRd2uSG+t26470HvldQ010ifFBbaQKql+J0ooiJu/UG7o5I2UO40Em4doyS1s5O
         kfBEaPtuPKyGskR0fjZAckRunU7emOtxv/QD3HuAS/eF1cc5/BAAh9VZ1tuUQ1Sc5AN1
         igXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=olch6uOd;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AsvQNCaeqV/DmU+kicaKj3hqSu38K3stKyXtiWIEZ5k=;
        b=C8uS2giCTaO3Z8B3Trhab2Wm2OmNxEXR/gjF+YxFddIpfyrUNZj5GTX9NrU2Z/gEhS
         2DuYKAJqMObuDCEAaiYII9CBDAtUv0/43UaKA5lYC1Rc87oc9Po+ZOsJcsl20J22XJY5
         2Jvl48boGh14Wee7HeLA1F7uLbClYyKoj2S+xg7DL9MT+Zu06BPQ2/l+srLsy/Tj0M09
         C/wgFsqtXYcWiXQdQNz2uMp+GEGu9FTbqqXbOLfTy94LhxeZt/DKBWqMr8IvSqnOB7Xc
         xYk4PbT+Jck18UurfLSUFK2zVVtVrizcvfhv8jiarPx83mfAHLXrtvcBVLZFvBRZB0zr
         k0Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AsvQNCaeqV/DmU+kicaKj3hqSu38K3stKyXtiWIEZ5k=;
        b=OFO+eo7wmVrCRp9WF7HdMQ6dGoxhD+IP9vLvo3NdRW/kKKjREGk0PPQOtMbk04u/IP
         dFmFJc1hCXGYYFucl7MVgqdlKQgoPtLBwvt1jJXmL5JgIBJ7v7Du1Ji9ZHFovdG00fCa
         uD4ldMyO3pVaeaGSOQX5eDoRTdcZOSO9g101z+ElmSDKN0JJUn3NapJ3WPrYBP2IpIeS
         Mqq8Wjm0HS0flimnbMKuR+cZGVQRAkWoWyxdV3qYNgSUGvE9ONZvYDQQG6j89TCAU3Ql
         iwizUhfqTihuzzDdzhnh23+sVsktrQ+Tlu4FIBchReHPevu6SCRlcHzKptdbilG8Z1Ei
         Uo2w==
X-Gm-Message-State: AOAM5313JKymzr0LY3gGeRxtIYax450yX+qyWAaAd7QmgPGttxmd24i7
	soSaTxITAuKzdCmQCzU1iVk=
X-Google-Smtp-Source: ABdhPJyfAV/yFoEF+izCNrXFIQIu5fjwm3yVlAO4XrLY1pQMVVnCnRH/ob72o52ATV/sqFAMSQjUow==
X-Received: by 2002:a05:6402:8d5:: with SMTP id d21mr1466075edz.57.1610020443349;
        Thu, 07 Jan 2021 03:54:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4890:: with SMTP id v16ls2717221ejq.9.gmail; Thu, 07
 Jan 2021 03:54:02 -0800 (PST)
X-Received: by 2002:a17:906:4e46:: with SMTP id g6mr5757025ejw.243.1610020442544;
        Thu, 07 Jan 2021 03:54:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020442; cv=none;
        d=google.com; s=arc-20160816;
        b=kfIUK3xPnliEsQohiVgdem+OXBgs8T+8G7XCzpgFsPjHtuOuIW8zOiGGTaCHy9CAPw
         tYwiQ64MW4o8fQC6mA9if2bwQhr0F1o99PoFwW2PRxN1hNjRgWptRJrgmxcjo1SJaogN
         2RsOdwX2VhQqs1n/rWA2bEPA+LK6Cjx9mz3K4F62scJ6HFomb/AjaRmtLW3G2pmGcquz
         UoRxl3e7vI8FQPjRK3gx3FWhHTxuTRblIzi9lW6YyjSji5883tO4euCMxuoIjaSxcz8/
         VjKdiMat6fZ9pFOre3uU3/l3Syg5FhzNDz++ykd86AhFnCmQz3mKQzTloJP4PJnDDuNI
         G22g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=Yi9X+eUEsj/PoAs0Ktl/IbvqOd3Iq8nO46nm6Q1y7o8=;
        b=YipLNwdeYRgeTa9loAvK8c+O/pbSUc/FXqcgcsD/7f9NXqIrBRsawFdMiKAQfbrZOH
         LqnmN45FyxNZ/wlCY1VEHuucEoLLTmFCZx9mvgXYnkTT3KfuhD3SCC/eHMjHXuTQvnh8
         tCojyKeGlMJrUQSh+yQwtgNozKTirFO1iKhJZR/9ZeWOIkQicdZfBoOXnJlRwmxODujI
         Z1+atnRPxlfe1K/x2hzSrd1p06t7YUYg4MGv8/JXKuckpuhq5eayIEUo9nhGa2G4Acg5
         j+Y99XHgeaYB6susvDPU94mvSZXFVTBgYLqPwnMdBbDCJGlqnssN0LI+/yiBUturtiTo
         Q4pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=olch6uOd;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id d9si368963edr.1.2021.01.07.03.54.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 03:54:02 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Thu, 07 Jan 2021 11:53:55 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v3 mips-next 3/7] MIPS: properly stop .eh_frame generation
Message-ID: <20210107115329.281266-3-alobakin@pm.me>
In-Reply-To: <20210107115329.281266-1-alobakin@pm.me>
References: <20210107115120.281008-1-alobakin@pm.me> <20210107115329.281266-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=olch6uOd;       spf=pass
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
---
 arch/mips/include/asm/asm.h    | 18 ++++++++++++++++++
 arch/mips/kernel/vmlinux.lds.S |  1 -
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 3682d1a0bb80..908f6d6ae24b 100644
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
+#define CFI_SECTIONS	.cfi_sections .debug_frame, .eh_frame
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
index 16468957cba2..0f4e46ea4458 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -225,6 +225,5 @@ SECTIONS
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107115329.281266-3-alobakin%40pm.me.
