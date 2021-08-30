Return-Path: <clang-built-linux+bncBDYJPJO25UGBB247WWEQMGQEXLOFYTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2BB3FBE66
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 23:38:53 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id n189-20020a6b8bc6000000b005b92c64b625sf9394145iod.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 14:38:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630359532; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3bFKIGlN/OBhI2gNvjeMXzLl2Po58cvt5cyaSqZnAVHbCxRXFddA2FJcmP3ZmRs4f
         OkXvNoZEDysT/ChnzZb9LJeJLmE90S1N7vT8I9eFKu5luD9cPDO1Z1zbNhwBXDTTc5Ku
         pfB9UGVTSC/CDunitdIlrpH7Z4tDejeDLfkH2SkN4KgrZN2zs4pWlsuwOT6rVsb+YKjF
         kBaoVNkp3P5i0KopmwAwtdeWD7i6PgqSJESPFJrv83kHqZh+vcOGjoxmjQOC1Vo+kgUd
         8GpJDkGSXlsmfWweTzSKGqF54H5NyVN0E8K4MUd/eDVMYcHJ1vFKcc8NhYlp2dUL+g9v
         nX0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=QUW1ND30d0wVSQeSCcIPJaonoh5RqzK4jekuyuFvwJk=;
        b=FAE4+TgodSEr/DFy8KyExbhT2TCiPwNM5EPMvwzqe/otOhAYdhzZ4iUMMI67cbYNLR
         sNvbdVKDdvayscBztyUUJocrr8gPJ4KOfclve0awPXSCH9P3i6OFoGCazuBxr3C9EPfd
         Xr1H4HZIlmjRhZ8ivbeBhiPBvke+nJSdpRoBvqoEBRBgsrXxb8LCqkNRsRnHezRNyBtX
         N51BI8OKaiXndiqf+EYb+XxVAav5lnRiAcrEsVC3fsPjR5+G+I06zb9z44cPcaMn8o8m
         vCwK9PH7E6vwk4jqD3Rhp6gdGkooIuiQ0x2AH9a2aiCuW2i2UCChg0ROkqpOta98QyPD
         XBew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vw0YkpLr;
       spf=pass (google.com: domain of 3608tyqwkafa5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3608tYQwKAFA5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QUW1ND30d0wVSQeSCcIPJaonoh5RqzK4jekuyuFvwJk=;
        b=YnSMoPh6106SuQ+ehN1smOpqpgAO6dx99WeTM1wZsBHSRrc4X2oy4hPDcnU1k+41Ks
         uVPcyKSe4cPKzIzPk72664L752Ml120xxwWwa6WC1yhCRlRvgvoEimNm5aKU79ZSgs17
         Xr3QisU95d94FWjCL7VuCz3Ie3lEvcxd0jUssLQue/5QeQOBysAfGLtpcW5/k4uAnZB4
         wdWMttF++0qNmi3vQrmih1Cxwq5x+F+Ft1XUrpoHgipfm6gKDCsjgJCQvnzhdz8IemMz
         GL9O2b4TqW8Pe2Z3rhn8rF72ltDR/gZbe2l7gJbtHRMSn7O7HhPGeMeBIashlu5ZlF7J
         uB8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QUW1ND30d0wVSQeSCcIPJaonoh5RqzK4jekuyuFvwJk=;
        b=bbd6yUZz276hm6BhF50g8eSbSm93czI5hoxzRTMLZ/zGRHB3agb7XFoBFIuTi1Az8w
         2IXZdnHzSMoDXnRF83UF786e8G53wX5bH6G2PQx3jRYaR0jGQ3fAglENsoHT/21J60z3
         C26cV4T6vRzWXzT05ZGV4pUMByAbRuN6+pmnhMP9kSCQHOzHgYWxq+IDLngpxmqwki/0
         g7oadjwZJZNkSmaTtmaZw2Q6n2kDRBh5CJIycrjmFicFxohOmsfuvbMEh9KmS1rKhsvU
         59jBssWuZXfNZeYufjkfWtAyZP/Z6V87IVhxVpGGDN2YaGHT3Q8Qa1K7RntxttbGBpNx
         nRcA==
X-Gm-Message-State: AOAM530IFN+rBgJqNvlhJcIdpA8IeU1MTPZ5I24zBFsRgBCBBliK9Slt
	6Z+DWVAvVzGQwPFaTtCWgkM=
X-Google-Smtp-Source: ABdhPJwhAcWTLA8xf3AzgyXMlvxd7f0rVwuXYF2xBHlwAGPenqIhZGFFIWajNDafgdcNuRPZOj/LfA==
X-Received: by 2002:a6b:e50e:: with SMTP id y14mr19858521ioc.54.1630359532026;
        Mon, 30 Aug 2021 14:38:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cc2e:: with SMTP id o14ls500247jap.6.gmail; Mon, 30 Aug
 2021 14:38:51 -0700 (PDT)
X-Received: by 2002:a05:6638:2493:: with SMTP id x19mr433461jat.57.1630359531688;
        Mon, 30 Aug 2021 14:38:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630359531; cv=none;
        d=google.com; s=arc-20160816;
        b=LTdaJQxh5Mke+aM5ap3tUij64zearalUMaFQzuyHF4JPFGZHYc3khBX2I8fww3bj0u
         XbO9Wjf4lxrZzyiSVZpljsczWQHN5jZgYYMGBnhWPXc89c6sGo9JQrHU/M1kFDqjcySX
         MNem7OhXvBPRVqXgp5me8m8XiR5SHHEIQFOFcYKMVUeWCiJtI11r6rtxuuHLTBFnh6yN
         njPNgPiFiLl7TmRkrmR6qviOMIybsIwoBqiv9kfaP6qy5ttEXV/zr+MJARbPB+wBSXpq
         QMQwBqihD7wIpLDquWjg+4UlqZEPFcaxoZaN1EYn4Ca4VJ2PvNg5Anbti40HUdOAA+QU
         K3+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=HL0bHPC7fRhw8NveiezJuSyRlf1c6pLI+gcpO0vq9Sg=;
        b=JEL6Xv5IZD8eTAKKyyO1Qu0GfvsuYvOUqQGzFKgRxWdSNjq6Pst5Pt1hWh36o1/ZYY
         l+XWm0LM1ExrD+OSwgV4WQcOxZ5yq6FUzreQ7/B5Lc7rrAfFznj6j7L+HPSTU4rt5ML4
         OtNvhNVEsCDxMCM4R9cQk6/zrvZ6hdBENGNFO5Cfs2WASPCj84MRj6Xk5vfUEp2rVQEb
         l6i7qf0o/SlrNChIF3cNdpM/BuXqGGWy/hqp/QPNA+4eSRMFVqury8khoSXIYU+Ix/X0
         THQaANx9Iqw7hR62Rr6s+tJ6h1oJBqfGjQ1f46XE3YmlNhbSbzEk9IQTwj7x4PLaMjL4
         9m1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vw0YkpLr;
       spf=pass (google.com: domain of 3608tyqwkafa5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3608tYQwKAFA5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id l68si1513770iof.1.2021.08.30.14.38.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 14:38:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3608tyqwkafa5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id f64-20020a2538430000b0290593bfc4b046so6010092yba.9
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 14:38:51 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:266b:6ef5:38a3:394c])
 (user=ndesaulniers job=sendgmr) by 2002:a25:74cd:: with SMTP id
 p196mr15254588ybc.454.1630359531173; Mon, 30 Aug 2021 14:38:51 -0700 (PDT)
Date: Mon, 30 Aug 2021 14:38:43 -0700
Message-Id: <20210830213846.2609349-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
Subject: [PATCH] ARM: select HAVE_FUTEX_CMPXCHG
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-arm-kernel@lists.infradead.org
Cc: llvm@lists.linux.dev, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linus Walleij <linus.walleij@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, Ard Biesheuvel <ardb@kernel.org>, 
	YiFei Zhu <yifeifz2@illinois.edu>, 
	"=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?=" <u.kleine-koenig@pengutronix.de>, Mike Rapoport <rppt@kernel.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vw0YkpLr;       spf=pass
 (google.com: domain of 3608tyqwkafa5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3608tYQwKAFA5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
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

tglx notes:
  This function [futex_detect_cmpxchg] is only needed when an
  architecture has to runtime discover whether the CPU supports it or
  not.  ARM has unconditional support for this, so the obvious thing to
  do is the below.

Fixes linkage failure from Clang randconfigs:
kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit: R_ARM_JUMP24 against `.init.text'
and boot failures for CONFIG_THUMB2_KERNEL.

Link: https://github.com/ClangBuiltLinux/linux/issues/325
Reported-by: Arnd Bergmann <arnd@arndb.de>
Reported-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fc196421b2ce..b760dd45b734 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -92,6 +92,7 @@ config ARM
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
 	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
+	select HAVE_FUTEX_CMPXCHG if FUTEX
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IRQ_TIME_ACCOUNTING
-- 
2.33.0.259.gc128427fd7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210830213846.2609349-1-ndesaulniers%40google.com.
