Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW6MQD5AKGQEJXCW2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B416F24E132
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:04 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id b142sf1965999pfb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039643; cv=pass;
        d=google.com; s=arc-20160816;
        b=LMkKaD2MfiSfpFkg2axvPlYXImEX/bWn1gF3v1r4NcAmbddJWLWXcLTztwsz8BHMJ8
         Z1NHTfau3VLh0MzSlzYGeSdIL36YYWTamVK8Af31wgh4Rt28iQqIPJWnpZsv5y4mpg+p
         fTn3rgxHixEX12gRB0CcTbr40xj9TTOA5mHY+B9FjUrfhReBCtvP8vv4RkpBWJM7KQ8/
         vEOJ3h94bV0V+lqMTbW1uUaOsxpZHrNS5hm80qQtrRb7kW0cZWMO4IOe7+Zkm6tjS2OB
         8Nby1T6FBTqAL0ko15ee4NWKtfPCDxoFt4L7MBUowbUNrYDN5xqnaHsow+mKngRlIjD3
         aOAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Nw4rmF2m4Vp7iA30JKWJgf+xlpE5apAiQP837/4m5TY=;
        b=TSInotKHjgpOxGW2jks6+oCCAXFZvjs26UbFNLMKLKwOkJKtYn5ZDE6JwpN+fDUq2Q
         oFfVg5y4MI2S0wgl3LVpBmkwlNoiFcDc371i1p/kLAh9mpOxxXpDmLRmk+YoHkkQHI/q
         gjmnoM5eczhH0kqxlGoUUFIXYa2pjCCBCc1Sm9zzR+yA3mJXhaEydXai6AqxkRTHDVcj
         ffjGPPsurAoH/r5UnwmhCx32IHS1N1t1LNuYqdZnOWOMjLtpsIO8BA/F5BCnXgPOrAOn
         HcpEWMT20i1+TryORMkvFS04bNQC9YoR1M3hs+90RKNte2wZDs8wbSYYaOofgFwfY+6I
         agpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KCpWIGu2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nw4rmF2m4Vp7iA30JKWJgf+xlpE5apAiQP837/4m5TY=;
        b=bqiF/xHRjFF9sISIRXZ3yLLQpm3CvpqLd8MOavKJYuKF446++z0WTYfc1dfxUrnGit
         uoJAzKb+t3oOT2xC+67ahxvDYZ3XZT+A/h1jiTPEXk9WkJYute4gczWZwb7fNmAax/FU
         YyGAVvlAREZgc+JmU1c4bAAaLeswy/mr+mvjRWKaLyAFJSpUHLwPuOZ36HUD5aP4EEUN
         ckFWYtbGU410sYA0d91MTZ0KaFToK3AVmn1p9bVZS+0GglSnuCFHPQOU6M/+Tu9S++n3
         /DIw/06R1B10XskEa0hNHvOJec8gTYW9WtIky0ctplG4MOQzlL+bpO9lyJKU77arAo4+
         eAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nw4rmF2m4Vp7iA30JKWJgf+xlpE5apAiQP837/4m5TY=;
        b=Yg/6CV/jxLM2I5jK8iK6GjdhhfYvE5nlwkTAtnYDXaFFAQIyOlN4EbqxXaCox1PpMP
         YTQerV/lBKVRj2jdGwza6++bF4pbYUKBakmmoy+dN+m+k9tLra/qKQYkYlgIkJJlR/49
         MlVpqlo/L4Fk/2g26RGowzqxYhjaEtBvAFvbO6i17OoZzaFjNg/vQX3UMOSiG2apPGW6
         hM3gn691b0AODqp1tCM4nkdlpf0315ypmzVFd4I8ElkTui478f7r6rvp/5VTv5Js7O+4
         dFnj+K4/dE+Wy/Xl5+RjQS8TMeeuNK0uwkAo1VCPojXUTq99OF5eDrEchgRaeYUXVTJx
         uK/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HphkLkpW0qO4/felbfdY4Bk/ogl3vWnCigdvLyw0uvnoQF59z
	tobwCGvXeXfzuLr9I7vCMIs=
X-Google-Smtp-Source: ABdhPJxnOQsRHDSiwJDZkMsPOoSjVyOut/nEMJi0mBaP0Ha6udoMxaX+MCrU/qkvL5H4l5DYjYI09A==
X-Received: by 2002:a17:902:7d84:: with SMTP id a4mr3693918plm.44.1598039643460;
        Fri, 21 Aug 2020 12:54:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:19d4:: with SMTP id 203ls414677pfz.4.gmail; Fri, 21 Aug
 2020 12:54:03 -0700 (PDT)
X-Received: by 2002:a63:f913:: with SMTP id h19mr3483416pgi.427.1598039642947;
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039642; cv=none;
        d=google.com; s=arc-20160816;
        b=n17lzouhoG5Ujlgk+9i7KGdePF6tHZwouDGVwTq+2t0+BW9wwBDAkh9EuARD/sMW5J
         lzl/ZgmMLLKQKDcJbP2Ee92HuWvJhvSK1B8anYudaZBZ/1DjxYe8OuyEfUeLM7YXExvI
         8f0IYUlPCgHox/XBkuuBZmBEGewQVkxL3lWIm3/UdJGcGfFDOp85gbFWKDXIEo2iFziJ
         r9/miBz1KVClZGrU6UeBENG/TAVwTbRvK8p3lFRJHYIQmwKurtX/m2QcN2LFu25kcbcN
         H4t9WkzNdvC5MneeARNN5g4PU/lDl8wPnrQMcgcPIrx+2BAwf/5K7AYGY3yuNHnSGair
         xgvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PeNFh808sp94203AedRRDxtBogHXBjPfBsBbm9/bM3w=;
        b=NWuMUPfiYznUU1hl46mNQEP38v8oeJsZPUa4mwWrd1bu0MKUcREObDDbHmoFW5Wkxi
         gDMm47EgbXvjaCzsTu8zMxNFmqyMAmMuPdqelEiYED7WrV7HN9SJp2eJ+0JaG6uKViuB
         JgcgC7lWY3FDRs4vwg5gMSsEjCEeBjntPyUi10M/4mMlwTYvCm5IcVttt1eMaVAoyJVi
         6CtV1kWq6AbI2imdF8X6O8DQMkkNJYAOiXPt5vGmZmQ9LGXEvIHWb8uN+krUWwh5Go11
         dCyURRxy4/Z8TLg8KIvEWpdLwEND8+XmAaI2AovKefvLxETHaLKWGk801oqKdWqfhJ4e
         EFlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KCpWIGu2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 76si178480pge.3.2020.08.21.12.54.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d19so1472943pgl.10
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
X-Received: by 2002:aa7:8bd2:: with SMTP id s18mr3553849pfd.284.1598039642687;
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x11sm2748233pgl.65.2020.08.21.12.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:53:59 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 22/29] x86/asm: Avoid generating unused kprobe sections
Date: Fri, 21 Aug 2020 12:43:03 -0700
Message-Id: <20200821194310.3089815-23-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KCpWIGu2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

When !CONFIG_KPROBES, do not generate kprobe sections. This makes
sure there are no unexpected sections encountered by the linker scripts.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/include/asm/asm.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/asm.h b/arch/x86/include/asm/asm.h
index 5c15f95b1ba7..4712206c4325 100644
--- a/arch/x86/include/asm/asm.h
+++ b/arch/x86/include/asm/asm.h
@@ -138,11 +138,15 @@
 # define _ASM_EXTABLE_FAULT(from, to)				\
 	_ASM_EXTABLE_HANDLE(from, to, ex_handler_fault)
 
-# define _ASM_NOKPROBE(entry)					\
+# ifdef CONFIG_KPROBES
+#  define _ASM_NOKPROBE(entry)					\
 	.pushsection "_kprobe_blacklist","aw" ;			\
 	_ASM_ALIGN ;						\
 	_ASM_PTR (entry);					\
 	.popsection
+# else
+#  define _ASM_NOKPROBE(entry)
+# endif
 
 #else /* ! __ASSEMBLY__ */
 # define _EXPAND_EXTABLE_HANDLE(x) #x
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-23-keescook%40chromium.org.
