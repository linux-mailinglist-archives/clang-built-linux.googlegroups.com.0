Return-Path: <clang-built-linux+bncBC2ORX645YPRBC5QTGBQMGQEZOHB2ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 35242352397
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:29 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id 13sf4231523pfx.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319948; cv=pass;
        d=google.com; s=arc-20160816;
        b=MDZE57loV3CWgg6vuklDAOCxYpaIEHVqr0h0I7w3dOjfnybR7NU3a5w59JvJl+1WZ+
         BVGAxENmasJMb107psC8IHh+Bz4k0M5mJ1ZaB6H/fk3HCJ/EGvNOfj8QSCQMNNJkpOIX
         5uNPWWfHqTQ3DXU5HUrkVebUNwjGOj9gI3EKACyQ8vW5ix/OVjiW65l136yuCocspMZj
         WLpFNyo2mATlnjCm1dp2ubcgAh5AhY/bu+vZl6WvgjPptEdDSMUaDQ0oTrMLzLkAHRSt
         q0Dj/fJ/JldJCxhc4C4h28KT6enG0TPdL/7aPpHesI0JYfQDV8fjCmTI9CkBuvHlM/83
         NqaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=f61Rllf8ji+AaU7x51dCyC3p5iBaUkoQMrglj5mbKjE=;
        b=Dmbe74FM3jreY8IaFn5tmESVep86+GaZQ8iW7OGopuMHKypmlCHmXhjbmelPkXZpt9
         wx2vHOQOmlxsnYWRCjDA+eZnbHpMkkvtUZ16PgwTjXTCLz+sMRBqrprzhWbv/5KvpJuF
         lN61zKTWiTPCSgE1sPmEZpcRcXwq62b1AxdEcpoM/Yo1e9VmjQuZzzflw4Y/Gbys5G0N
         R7SAhdP+yzxonEaQ2zLZs8SAbclF+DAmeBmajrZShXLBKi2cAu+GrSBYDM4yBv0gtduJ
         VXXg/D9eBnu8635VYvnLg6c8ZZ8yLvFRuLTBUUhsu2glCE0VVY/KSpz8v5HU2gHs3Acm
         opCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BjeqB6cz;
       spf=pass (google.com: domain of 3clhmyawkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ClhmYAwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f61Rllf8ji+AaU7x51dCyC3p5iBaUkoQMrglj5mbKjE=;
        b=qHbnzcw+c2dyFoInIZ6D93+cB0FDIYiT9x1VuzuN+OlsVYmZH8gqql5fL68UpBvTjo
         UWIoxHGACPXAfk7M6b7ho2VaKo5wvD9BvvvPgXRvrX+k5QmL4vpkJMKBCC+KIgyJieyu
         EJb6hHYKQaverC9fdUvGdHE26ecYxUriD4LpZHlOomDYMNirGUgl9m7j9T//2Q4WSwqz
         efCMrxiWGi/rlapU3aTdnidJjjkIyZ5f/cPVMboXFqHOxfcEg5m/bKLGmSSIR4fh++pC
         Z72jFQ/pAwZMjr5Mlvo5ehscPM0WeoH7ssFY4kTeJcok+Cr5+BW2YrX8Gg9O0iErj7S7
         p/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f61Rllf8ji+AaU7x51dCyC3p5iBaUkoQMrglj5mbKjE=;
        b=cfeTVRxLSHvXtYRgvDBdsCOgVpeNWxqqHigviYsXCpzs0jkoyByOztIrnmw2EkAhD+
         7oY44hKyDKS2ka92HQZ76OL2CVEOef6lwd86zmzzLgyruoXJ1QlkuoLROqcvQXOgfYFo
         43xlefMg6H1YUYcb/gvjhYZVQ/aoLs1bvVNb7WwoWwcvSc1zi4gvpU02yEeywMt1+x4U
         8PcfH+tAmCPiuqAaYKGIB8Q6v7CSq+cpFtYiIsM5cw6gHJDT700I9Pt4SACurNoibNb1
         Y3DWSZ5vvWvGzwGO871UI1WmLRqjMWF+XvKADAgmKyQNBIHYbgJ4HS+0UpZWnlEaTggz
         bRaA==
X-Gm-Message-State: AOAM530GMm9g82strCNyHpXzSiBNtWFGO4J5qk91jf8N6/uKRMlEMQRh
	Tlo/sYEMHJxcrMN8CEdcTDo=
X-Google-Smtp-Source: ABdhPJwL+GktRjBfESbRvwNQ7n8HaFH27SJjcPNUs1Gu9zBWcGMBD2erZynl7JWo6y1Ih6MQfqcrWQ==
X-Received: by 2002:aa7:86d9:0:b029:1ef:4f40:4bba with SMTP id h25-20020aa786d90000b02901ef4f404bbamr9561550pfo.54.1617319947970;
        Thu, 01 Apr 2021 16:32:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:cb0b:: with SMTP id z11ls4405175pjt.2.canary-gmail;
 Thu, 01 Apr 2021 16:32:27 -0700 (PDT)
X-Received: by 2002:a17:902:ff01:b029:e7:147f:193 with SMTP id f1-20020a170902ff01b02900e7147f0193mr9987871plj.82.1617319947376;
        Thu, 01 Apr 2021 16:32:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319947; cv=none;
        d=google.com; s=arc-20160816;
        b=JmVYxdpiC6KvsHnWeDma7gYUMFbnojNH5klwGTaJpcC2m9NYRHFeK6IhGO7xYtDIA1
         6OMQ3RGqu1W+8BqOozDeBlWxLjfq+jn6QSgMp3+fiGaJALBrcbd3Wf501CE2EsPWwMyc
         /EVS+vvvysh28suqEGe/lhTSjP8vKR4pVrzG0hnf+BbE8KoFWhDvbYBYkdpYLEXTozw/
         SZJ/HGo2NSlWeTXb4M8knLVO9EDZ3FwCCehctR88iBrJ/xhP8JZpf9VFfeX9l7VvBbrk
         Mg+ofeueBLYqM2NYLe7BwR3E7DNHz9wTstIPuQlg386U+dksyCXc3Sgu6VHZ8ALGIsh+
         8Bpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=X7pKNQoykGsVEBpcKZlriYQJ1U+ZvEkb/I/sJpCEmoM=;
        b=wQx7C4Leqs1JUrCRETqIWUi37+LTyYRyxS9A47UfXXwUXapAyJ3hGDwchlaRTZA5ZG
         coWnIfJ9P+/IvVPYIkWTpzs64CZM16MUifeRFkBGAI1boINQ2wkJ5Lw7AZeYF4Q/Nm1R
         vPid3127mSCAX+O6cE1jYf0srPrjCWkdqO7wfclX18dKpC3wTPVFOdDv0Yho4BDNiIGa
         1xjJPaMDU3BYxOpJPW/DMXsqnvFEdiCmjH+Mgq2jVPbkYRSKOasWHSgyle6AnRSm8sIn
         685E4RaWVwA29vRiWGKwfDiMb/JETmifyTDPrKnFCh6jiHsLzWBQns0KhqiJiunAw0a2
         qKNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BjeqB6cz;
       spf=pass (google.com: domain of 3clhmyawkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ClhmYAwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id j184si528914pfb.1.2021.04.01.16.32.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3clhmyawkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id w5so1088216ybs.22
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:27 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a25:25d7:: with SMTP id
 l206mr15429911ybl.43.1617319946420; Thu, 01 Apr 2021 16:32:26 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:02 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 04/18] module: ensure __cfi_check alignment
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
 header.i=@google.com header.s=20161025 header.b=BjeqB6cz;       spf=pass
 (google.com: domain of 3clhmyawkaf0n5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ClhmYAwKAF0N5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
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
---
 scripts/module.lds.S | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 168cd27e6122..f8022b34e388 100644
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
@@ -40,7 +50,14 @@ SECTIONS {
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
 }
 
 /* bring in arch-specific sections */
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-5-samitolvanen%40google.com.
