Return-Path: <clang-built-linux+bncBC2ORX645YPRBZUWXWBQMGQEO5YPZZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1FC358C2F
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:28:56 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id p11-20020a17090ad30bb029014dcd9154e1sf485644pju.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:28:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906534; cv=pass;
        d=google.com; s=arc-20160816;
        b=THfcSDp3GGDeJvoY3c664AqKsNIc2rB/Ski5wmDUafzyDQkoFiU238xd6gq5t6FjZ+
         0lNc0+fwqrh6LVcWx0qaJrdNjxvGWt5M+T/lpne9undWj3jePJTVq4fSsUL8bpfQBl7L
         LhH1WWxa/qvAxNXTwxreAUK8Iwbn2c/PbJFSFSbbjr0m1Adf+UaL4z2e4xgMZj5ofsLB
         5bDnBTz9gLFcEW+Tj0enzqYcUqQ9ZB+e/Ocjm5CSCfo/cSPXlUwE2wpD3SygU8Uscasg
         0R1Ygut8t8AffeVD9BBWivMIa39HUrZW3vXIjmf84JnCSATA2rq/EEtTEAOjK2TmfHkR
         o29g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=UWcKghOhuM8jEnhpmjeMYAEpNLKUhzEjeCfX123/ky4=;
        b=Xn1SbwipBZYf4KaVsovFe9XXOqzgN7Jemh4DmGPZ7j9Wa1Z69mmPvHZYpv8I+YyEz/
         ynThPADOjFrj+MU1R4NRo+drF/xN8Em8tlmuKWXupM4Pk2xyG8J2PLiFp3Dc4TIBw6uS
         /ksObgmJLYu6EeGLOU9CXHvLwtj8/7jsQAziGoEvdt+Gpvk9SxCDNCyKNjlkAHv6dsoo
         wLJ7/KPmhxAlM56c8qMlG+QJ65tS/P/Z7LBLr/22yoTO3AOoz+B2jUNFD/x8i7tnyrgT
         hMMlCvq8GaJv2TwSa6Mbt1USWmdPml8GGvqXZYWHtQqU7mqT1f61KtaIz/adReVtOXrW
         MoIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nmyke+h8;
       spf=pass (google.com: domain of 3zutvyawkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZUtvYAwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UWcKghOhuM8jEnhpmjeMYAEpNLKUhzEjeCfX123/ky4=;
        b=l40MvZS0s26zqwWgdeQTX2No1f/748F2wH9buxDe8i4IXf9Oqadw27kPtwjG3mGm8L
         A80WG15PnqgJZef597ltKDkF3KwjaQ/wELvwy6U6oOFKu090FvxkFMckVtTFGcUFdjO0
         yBOocO3rsSKIu8bvMYlQY918AUs6r6Ei924fHNPi+OpPRLeCIqXzAYTUgNrCzlS96gD5
         2rQJZO1COTuwrwejP8mUMiu+Ue0u+VcrjHLSEPlphtGOCxeXuk8yKL5+Bf4It3jDG4Nr
         uUGJCasC1w0NMwjYnKIq8PQMkSw0aP7ixDCAXQ6L13cH3Jz5kADc8MLhmfa17gsPqOuY
         tg5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UWcKghOhuM8jEnhpmjeMYAEpNLKUhzEjeCfX123/ky4=;
        b=psE1ADFQOoIJL0Bbe/NWDtScPZdEXBmGtcjMiXCebjXyL28omb7bpASV4ZIYWF0oUv
         vNroAotCt58Cmx4zHKShsNt7ZAsp70CdAAeXMN1K4gXpMdkQXjXc5gHuha3ZOWadhbyp
         2JVVLEMAPLOiFM9AwvUWZMkh3rF1Tpi2rBiMuGpM7gX1oV/RYkRNO0F5fUR0xdxxc5im
         9tD+oivLMW6eR6+mTO3GFG6rZpQ/1xneRsgH2IeOSaAMiBLtx93sEIgWoFS3UJ9zBonV
         9ZBsMug6pyIQXxKscBJf5Ua7QmlrpjbFCeZHGPKjCVazJnJ0PWDvMtnJEHk3mV5oOz5k
         oJqw==
X-Gm-Message-State: AOAM531hzcdaAb0xCSzlsESKu2a2voDTWSJufOQftSQaj0MjU+bsCr/P
	+O/y2lw5q1eaTUo5UhU6sqI=
X-Google-Smtp-Source: ABdhPJwj1EjUoZ5jBQdvPla6IOVaPoENRAEtwVslV5LifW3RaPMvtugse3Z8al/G3zqm49zHli0KYw==
X-Received: by 2002:a65:57cb:: with SMTP id q11mr7821833pgr.183.1617906534817;
        Thu, 08 Apr 2021 11:28:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4007:: with SMTP id ie7ls3617453pjb.2.gmail; Thu, 08
 Apr 2021 11:28:54 -0700 (PDT)
X-Received: by 2002:a17:902:820e:b029:e6:f006:fcff with SMTP id x14-20020a170902820eb02900e6f006fcffmr8934535pln.60.1617906534208;
        Thu, 08 Apr 2021 11:28:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906534; cv=none;
        d=google.com; s=arc-20160816;
        b=QwoHcUbyomIP0VVD4crhFk1xR5ud6LDbumoUaemVGWpz0xxoPVSgRmtBcrtR0wIa2g
         XGIUodyAWc3F9LWGlloy9KfsPKHSoAxtez6DgGP6615rjvPmFZofOS8yokLtEkxt0b9f
         k2DwULYCPh2Yz5KVErojfuuwdWFoFT3EpESPHawItu0hbGjGqRspUMcK8NLyZubrfkbN
         JR33C4I3p5dCUESm6AkXmuFW0DNz/WEz4UVE2snbCbKEgE/TzF1mfOfFKmE7o1xuKDBj
         5E6a1PirUIGG8fsrOkkhG1LQ8XBkChlRTD4UKO1eB+uVxU5IoYH+7rYNYIqB3mys4uY/
         JS2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=eRIdrbJ2jhHVLL9Tut/j9YYL8eIOqR89a+xPlg5BO0U=;
        b=nqT+IGX7puGYLA741116ykoSLY39Rx7wE7J9OHJFyIUp8HeYwsIT1RwZl4DWkDovOF
         29VS941RPpmkMIxPKnRpnAIL/crsbH5k0F2NpBrz3QqgfDe1z8JYuUENSbE6PdzDu9hc
         Znh5n9BnY7OqMGpezuPmCSGc0gpjqnFpQMTr7SL05uRNERd/wVmCV69tsmlzQxCQM7Rf
         Dn+CReN5txj8rU1mMnI7YnUyN8EDRpTg0JgP/TmzhozitSf+jFBHUeRIGn6Glmh2U39F
         g0TdaE1lPPp3941ipUyc8+7A2toXTePPrApcBiF0P8Ep2nK6olss4QpAsAbOf4FDysEA
         8+DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nmyke+h8;
       spf=pass (google.com: domain of 3zutvyawkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZUtvYAwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id 7si26137pgj.1.2021.04.08.11.28.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:28:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zutvyawkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k199so135698ybf.0
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:28:54 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:3c9:: with SMTP id
 192mr14007073ybd.319.1617906533406; Thu, 08 Apr 2021 11:28:53 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:29 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 04/18] module: ensure __cfi_check alignment
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nmyke+h8;       spf=pass
 (google.com: domain of 3zutvyawkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZUtvYAwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

CONFIG_CFI_CLANG_SHADOW assumes the __cfi_check() function is page
aligned and at the beginning of the .text section. While Clang would
normally align the function correctly, it fails to do so for modules
with no executable code.

This change ensures the correct __cfi_check() location and
alignment. It also discards the .eh_frame section, which Clang can
generate with certain sanitizers, such as CFI.

Link: https://bugs.llvm.org/show_bug.cgi?id=46293
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Jessica Yu <jeyu@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 scripts/module.lds.S | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 2c52535f9b56..04c5685c25cf 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -3,10 +3,20 @@
  * Archs are free to supply their own linker scripts.  ld will
  * combine them automatically.
  */
+#ifdef CONFIG_CFI_CLANG
+# include <asm/page.h>
+# define ALIGN_CFI 		ALIGN(PAGE_SIZE)
+# define SANITIZER_DISCARDS	*(.eh_frame)
+#else
+# define ALIGN_CFI
+# define SANITIZER_DISCARDS
+#endif
+
 SECTIONS {
 	/DISCARD/ : {
 		*(.discard)
 		*(.discard.*)
+		SANITIZER_DISCARDS
 	}
 
 	__ksymtab		0 : { *(SORT(___ksymtab+*)) }
@@ -41,7 +51,14 @@ SECTIONS {
 		*(.rodata..L*)
 	}
 
-	.text : { *(.text .text.[0-9a-zA-Z_]*) }
+	/*
+	 * With CONFIG_CFI_CLANG, we assume __cfi_check is at the beginning
+	 * of the .text section, and is aligned to PAGE_SIZE.
+	 */
+	.text : ALIGN_CFI {
+		*(.text.__cfi_check)
+		*(.text .text.[0-9a-zA-Z_]* .text..L.cfi*)
+	}
 #endif
 }
 
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-5-samitolvanen%40google.com.
