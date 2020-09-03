Return-Path: <clang-built-linux+bncBC2ORX645YPRBNNFYX5AKGQEAHAJ6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6255A25CA6C
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:50 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id l1sf2536093qvr.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165109; cv=pass;
        d=google.com; s=arc-20160816;
        b=SaSopkD1jn8KfylDKVQOTChWwr3I+TV2oCJVbGpafn90utUyzi+lRWne+6YqZixNL+
         +Kb3MVQKYgiqHlk6HGt5TazaV/+DVRN2TFta49ciXy2XKa+Wbr9X+BAe0Rn2Cu0Okfri
         8foUdaJrg4nLx6sp23CO1cn0pT6WHzxw6tLdbSszMTmou0GSTEWmNlzzPlYl1P3Y1Voi
         XI2/bOT7QZ6giQMBykrlIRe6QfqkIUThIrOEote7fCE4eySI6BH+uXf4yITwvow7JPRH
         QZKqr3ZJs7/VhxuhggYZWRBRvhkkg8BA+s3XVIkvwXnLKpI2GCI3iXsI+pkbMXNy3WWa
         uADg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=vlsYAYbsDiNZlhtaGRIyPMlhweE+gMenzF8ibzfmWS4=;
        b=YHbK1DlHTjUOLvsm1E3hq9TX0qI3Hy4BZGvLhOfCmgEEOOIy5kBvmG5GLwdnFGZhQr
         5Rm4nawE8jNuTjOamlncTONk3ONDE/ObCBmInpRNBPYn7VVdXwjV+aFpgHMCCkqmn62J
         tHuSrZe7SFhmSD7ftTFPFQ1C0FJXQXlXvwnHsKfgazDrCPemry2IOAvkmGguLLYIv/wO
         NproKUXytxw/ODJBLYxEvQL9BYqBegxYG+EttAsgAUvk978Edn8X/Dp0x3AXsmW2ZXh4
         HQzU8roebq0dROxv0gEzDfk6hwc73nXDw4c1s1k55Fxar8Ygokz8pye0B5lzBQtdfF1I
         Z+UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WYxR9JOX;
       spf=pass (google.com: domain of 3s1jrxwwkaj4q8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3s1JRXwwKAJ4Q8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vlsYAYbsDiNZlhtaGRIyPMlhweE+gMenzF8ibzfmWS4=;
        b=WxqkaILfYtaCT4jKuvRSwKH6GP+XKYNkt9Ce50X9aWVugB3PTnlYYeVz4Z/esXnFTr
         5Sz2N521i9wSadmiPYleNIvmogUl1nrHyLXnBlQ10DOa4N0UBZAUfTChBzNL6smYPUHR
         2M0Xl9OZtsEbY0xZXvmhkm3GZwonKaezqYtqNgLoPBaWTOMzGhiijyiPwsDTLtB42Yn3
         OXMGSdTvUmFkQvjupp4Yvx6clCRfu+/CNDWGydwwtVJeuGsvoj4qlLzonWeJdp88ldS4
         KKzD6o1xzTmejXAXGVy3k2+zkHbzvu2X5aQLkj7+ICDiNk3Lwb3faS5MHNQSROfL793v
         FikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vlsYAYbsDiNZlhtaGRIyPMlhweE+gMenzF8ibzfmWS4=;
        b=DhysZ3k8txR3gkabfD3ORIw/i0cJEC5v6v93fT10MvbQDFjVjjkceErU1I22X0E0Fa
         RMulRe/HRTdclRPUkgAogFxHNak/k8kuiX2612nRrEtZDHhFzXh0ZO0LcBLOl71AlCmZ
         J2IORFBAMlRIgp5ULSU6c+gw87m9O9cfNHwyXnXpGS0FoKSZ5im35Vf4VwXmrdofdes0
         Ts8pk8hWOtICX1ZJ5V+xSysX0ls86W3tYg/WmJal4TzpaJcx2oBiBFZ9kKVNEW9YNs8p
         hXlkm9rFqxMc6M5A2VEhW4OZn0R3mXQbbwgjg3zkyO613GsrvbEUc4TLK94kCUjV7Dmv
         bDLg==
X-Gm-Message-State: AOAM532KbPYSyBqEntnjFKn6vQ/uVJ6eMxiSZCUgPOVWLlPN2KU6EL96
	NHEWPpH3+Ygig75fVmffmbY=
X-Google-Smtp-Source: ABdhPJzD6aTuaBidQNLCTs8mGXPMnQdCXcnyqTkGlDuhEQHj59D3E7FUc+4y78nVm2O7Pc5tUQ1aFg==
X-Received: by 2002:ae9:eb57:: with SMTP id b84mr5058698qkg.450.1599165109486;
        Thu, 03 Sep 2020 13:31:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:346:: with SMTP id t6ls3557348qkm.1.gmail; Thu, 03
 Sep 2020 13:31:49 -0700 (PDT)
X-Received: by 2002:a37:e50e:: with SMTP id e14mr4787262qkg.323.1599165108928;
        Thu, 03 Sep 2020 13:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165108; cv=none;
        d=google.com; s=arc-20160816;
        b=L6GhgFmRE+n9SQ0SD9DTI2I6bQYjhtE86Mp2nDEkM4cjo4ZZXHSabIeveEXuidJWOu
         i1UIFsaNQe5OhYj9QuIBWXcmALst8THP8q5D0w4+I8p9hDhRonQxnNxhZ42hWfnF2KWs
         iPP2UbV3F1WsJpcY+W4ICV95n0zHKPEM5SGMvTiK919ewKhLTJgvgrDGzEA4MYS8MvAu
         k8YAlBdh0Z0kKsN9so0+tz6fNE7T0goYhQOFLRi4J3K9QcB3YC1WU5xPvdUGsB+gAeRN
         N9JrFUKJd1pdDNXk238ZvrdhcYr5u9tt0CQnLsCpwuCr/Fc7ogHdyomu+stQrss+9y2x
         Nm9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=cZOWhnp892SUnLhqC+1TPlOe8BVqsfDWwTFGwwryYEw=;
        b=y16arf+c6/CpRUkIXQx/GkauNTEgxw7EqSKZShyWFBe6YI3JLpUeEkEO75UJG1znAx
         xi9HqE02rHAPhQJaLuCGoilehnSSH46DrOoBPqRHSyacvcrZEGztOjME8f29UEtGQqyW
         tTIDsj3dXLIFbrft+oX2zKePjpZJnJKyHTHvnxIlNOjFjcx/C7rs4z/3g00h2011xjkE
         HOx3xSn9bdw6I0sCbC1JsI+uFCpbqlDfxQKxklGtOfGw2WWuYWUl/vjXA8B+vuZntHbt
         3YkxHE38tXrxCMarZBuqObnJ0ieZQLVzeHuUk6ZYjgw/UvcxSl+ARGsbFFY2KOxZY8NR
         DFig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WYxR9JOX;
       spf=pass (google.com: domain of 3s1jrxwwkaj4q8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3s1JRXwwKAJ4Q8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id h17si128982qtu.2.2020.09.03.13.31.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3s1jrxwwkaj4q8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id c18so2685810pfi.21
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:48 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90b:4595:: with SMTP id
 hd21mr720735pjb.0.1599165107467; Thu, 03 Sep 2020 13:31:47 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:50 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-26-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 25/28] arm64: allow LTO_CLANG and THINLTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WYxR9JOX;       spf=pass
 (google.com: domain of 3s1jrxwwkaj4q8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3s1JRXwwKAJ4Q8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
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

Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6d232837cbee..2699fc5d332e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -72,6 +72,8 @@ config ARM64
 	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_THINLTO
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-26-samitolvanen%40google.com.
