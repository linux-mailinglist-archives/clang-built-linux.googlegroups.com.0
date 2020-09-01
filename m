Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZFGW35AKGQE5WK5TQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA462584B9
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:18:45 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id q62sf5253930iof.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:18:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919525; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ebzxv6C6JjdtaD2Uow1l9P9bZcsC7coeTiYHa/3hmKI46urCTuFQnLjQDicCtHLC7O
         xGhu6BCmBzlFbl0yznpug+jBocK9McFUg48hLgcyIVJd7cK2riYv/yqFkXCgVd0uibIm
         G3JJF5K/4maGVIlbnPTfQBUpGDIocMQ1RDGgpOdn8rHMivn0AaeKOHlpOAHCh6Uh5ryi
         FtV7XAiKcONHaSphgaN53AhPtWdRExAnP+MShQ0I5dEwHYTJh7OBJ+AKsisGi7+IQ6Su
         WrHOw0/qlIrl9LJVjQJGf+nWnrPLGDULngLCzh2PhFiRF9kvjcySNvPedch72ENytMR0
         X2PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=4LLSOyYHtsu3C2CEQ3CmmcukJdbqEaTWxmk0SpV7XMs=;
        b=Zqp8kfnqidwufZrPoJC1KT+cJzF6sWg3jp6RJKRYdVz45TloRggD534yzcZY/YsLeS
         tgdRNAyEtVXbiOQZPQQ51vg7Vysd6T7LRt0x6uFB6kl9xkSLwKPNd94H2U0emk6dLbqc
         VRHrgBSheSC+R9RW3UlNLv9uN6IHu82thMYs9zcrTXmNRr/R1DEgMaF9s/wLxctUmYvA
         luUcSfEcj+vkY7S7TGPIl3Sgujn0LqmrOYF0vsL0qOu9a/ejM3KryXQZs/50y4OHWDXf
         tJ9ptpKyRGXnK6SrIhYCCVfzHMNlqiWxWGEwHJ0HXMEA/vDkGkccyTK0A6HEAB50fvkf
         NYMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="DRyW5/gM";
       spf=pass (google.com: domain of 3zjnnxwwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZJNNXwwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4LLSOyYHtsu3C2CEQ3CmmcukJdbqEaTWxmk0SpV7XMs=;
        b=OidYOM3NG35H25tLLkZ550qLs7O5L6TvY4eK6MscVOb6PRyE56EwQjzS3alQG/Wwjj
         HHwbWQJcgzTdI6gE66zd5+KHjA4EYjIwMhaNhQTyO/oxOqWyR1iwa17qQdsbX7ZD7WPN
         uA1k4VkzqLXX8TPY0/la6r7a9h0MhlC3l3NrDNgT97rPQmMS3ZYfmJvGcasLvX0AO+Bk
         QyrNUqVsda7S06PBXLJ9/yt5i6vspg38Bhh2pYEG+8JRLOid4sF/DMoVmgTFyfaIZO6E
         gcyICp1SRDfwc48u/wVfYLmNCcyhwkdeLgKtSuAqF5uFEzrkED/5g+zpwli6/SYLhq/d
         tczA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4LLSOyYHtsu3C2CEQ3CmmcukJdbqEaTWxmk0SpV7XMs=;
        b=I7ppuSuDxXtabLy6sGtFvRzuccO/1kjmzEGjOOZzJTLq2YZd3Ex6dDSv6zWTfbcNJ4
         9Vq9NVKeNi93IjZvQKnwJ3qO53nNJnQIghAXt+brT37WWaKK15NFoQCs0G7AX07al4+s
         XgxJTqmCjOqiq8ikXMTY65Uj82qXR2q0Jtl3QV4R1SjOhWDjzIsoqSAqbay7z7f0SAfP
         W8WGXyVvhdSChayPtk+j80MIzRoS0BFEzR8MUH4PClYHqB6u0S+1ENmb/cqwqOYey3fg
         mA1jPK8LB/SYuo4Rh8RxEax1f31BLH5THaGuefpZhkRYysQWYjMKZWq1AKuWKoez+B6A
         lLig==
X-Gm-Message-State: AOAM530bXDuCzVec4wtd0f4xqu/7JkAL7imn9IbhS42mGCJnYJ5VVxz5
	8SwEtFr4QMcl5pJBXscStuk=
X-Google-Smtp-Source: ABdhPJyTZHGCEgdi+3wAMZsBsdAeySiTOU6EirFqG6zeqYHe0JYsZEpaa8qIrn9dr8ghmtjP3rqEMw==
X-Received: by 2002:a92:8b8d:: with SMTP id i135mr878992ild.153.1598919524942;
        Mon, 31 Aug 2020 17:18:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b58:: with SMTP id p85ls785056ilb.1.gmail; Mon, 31 Aug
 2020 17:18:44 -0700 (PDT)
X-Received: by 2002:a92:9fc9:: with SMTP id z70mr3365747ilk.91.1598919524610;
        Mon, 31 Aug 2020 17:18:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919524; cv=none;
        d=google.com; s=arc-20160816;
        b=AcVC7+KJv3FfXD12fN8zrcl6VlO0eNbeeSUGLQTDFXHlAhYWZ1Pg3DEUtPxd5AL/7d
         mRhoDT2FQhtgtrH7MRWlqeZdclt1fT5JEeMkSV1fMtKvSosqf2VHlzMgWQzBVyjdDtR0
         ibdg1rLww14IgVeb9JiU7IG/KiBYrFDxsrkvMJxMYwFmZiZ3NLPGXtSP5ceCNC/K80n5
         7E0ubvm4Izu4O4omLi1psqq+nW/9HhR1zJQUxxFWUSw38cV/XIv4gxyJi9ctKVjoxzFB
         cUyQyOfrwbiFKHrTFnTSTQw48MnM8azqRwzDVCIsYNkE4UyjBbdJBltcC5s0Wvtd6/FX
         x2vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=UYhwqzzKZ0/ALhGvtSLUxxGQ4j8cmcIi3OxNm3DV3ws=;
        b=mXRH7tTQyABmguChY2UBLbbRVZ2uPHpkb1Bgw963qPA7m1i9NLdQ0pfpL9DfdUW8FE
         c8IuDTkWj4GKrWwz0u+EE/R+9kioAvfArSvig8WB0OSNHwW/ge1ee4+0UZz4xDfLptw/
         afH0Kt80e3lVmUTxHvksQabVN0t5MASn3kcWedhCS6D0afMJ5OCiS1vkJ2zcWEKECQFk
         QS06TuG03woFpAMMUFon1TKl8vrGaK3YPnAfrGeYWWDfthhiGGhJ5/5dzm8dU9NViLLI
         JoVtkrSRppvWKukaQKqudAG++twdVt5FfDCcOJAnu+Iov82cp/gPwPgZsG+CaTzW7UQH
         KwUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="DRyW5/gM";
       spf=pass (google.com: domain of 3zjnnxwwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZJNNXwwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id e82si606828ill.2.2020.08.31.17.18.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:18:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zjnnxwwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k74so6335271ybf.23
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:18:44 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:b228:: with SMTP id
 i40mr6191342ybj.442.1598919524086; Mon, 31 Aug 2020 17:18:44 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:18:19 -0700
In-Reply-To: <20200901001821.1126189-1-ndesaulniers@google.com>
Message-Id: <20200901001821.1126189-6-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 5/7] Partial revert "ARM: 8905/1: Emit __gnu_mcount_nc when
 using Clang 10.0.0 or newer"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="DRyW5/gM";       spf=pass
 (google.com: domain of 3zjnnxwwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZJNNXwwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
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

This partially reverts commit b0fe66cf095016e0b238374c10ae366e1f087d11.

The minimum supported version of clang is now clang 10.0.1. We still
want to pass -meabi=gnu.

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 82c197a248dd..09a7669eea1d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,7 +83,7 @@ config ARM
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901001821.1126189-6-ndesaulniers%40google.com.
