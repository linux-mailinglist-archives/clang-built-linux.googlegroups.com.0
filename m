Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDNJW35AKGQE2S54PQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB2F2584C8
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:42 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id w17sf10969591ybl.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919821; cv=pass;
        d=google.com; s=arc-20160816;
        b=ioZmw6Yc70sFgawba3biQBWVHHhS4Yf1ishCetZQmAoJjIHoO60TG/gJFMSK4YTAg1
         uYNFRVpyQ7NwYF7r/hW/UT66IV8Jm5sDnBeoO6bAoFuQcqcVnBpxoRLQJfqBf3eW1Wl7
         91GN0uAscs15IX91sB9IUrMv50gOxN0WdJIqSeduJPrNyO3ha/MsIL/4bbMXUYWi11kR
         nMwpcV0LpjfOmCiYkCWCDjfMofMBm/6+1UWKH3W8VQ5IyoCBOFITZ0lmGtUX53pwyQcj
         R5tCZAFabiNeDmLjbUlfjXtyYPrAXMLCw7Xp2coXWchJYNMzpDLxSiBOOy3SrXNkj3F8
         EMOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Uwx6H55WwBlWUIRcmIoaD8XJAML2Vuo/qKn2qcomVbw=;
        b=yXEZf9vj0ICP+SSIZ2Y8FH2EvG7zIR9od7qI7b+EjyZxTvL6qArLzVIXjxo5uDoUYb
         c4DIBCv0qVRsmHI7NtYcpobywcVWsawbT1/XfDTtfZz/NHcZLwjdUJv+5PEwsFlIPppo
         SbwwaA3lE95FPRt8x7jnAG1jwiG52gcCx/QZ6BsL9Iykz2MYM2utSpQQtl2LZNuwMzpG
         EmtxJlVa9RwcQmBrXMPTNd9fNRicyFgXlMPokHULWLkx8XS2LWJ4R+KlZwHSkizQ971W
         QhcIaIu6ALF3Ag9orR1BgUqHOX/sMtHo9ij0TZwcSAgdRju7E62WtvTraNNiTvDIsHwx
         LEvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nDE4gJkT;
       spf=pass (google.com: domain of 3jzrnxwwkaowbrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3jZRNXwwKAOwbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Uwx6H55WwBlWUIRcmIoaD8XJAML2Vuo/qKn2qcomVbw=;
        b=tccVnBzY4rALDleWPh8BOp/y8m+t/qfgvFLT3UwuuMPslNLRUIJuoh9BdrweoHh7id
         FtMaWMzfk3tor8a7OwgnM9BOQIotD6GGMkOWSC/nKtZChVJv6GPZfXFqauE3rmI0OZ52
         oNf5jdMW3B4owcgMYepNUJN4G6Cz4V4jno2jnAE3FbZqSZ/dhKWZG+tDDXmv3h7p7O1t
         P8eqyDoxPMDTLDoLiRUmok3WtxzxLqmnTr2S+rCWn76iJe+dLldDstz4Pa3dNytD8+X2
         XFGrvXt4aKUNqGHKyzhfk5bC8r5t/gwAT6alhtG7oKQtlNxJ3PvE9fXs9vhBmsB0ZQ5v
         iB8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uwx6H55WwBlWUIRcmIoaD8XJAML2Vuo/qKn2qcomVbw=;
        b=MIODkAW5FrhCGEaFfN9hm0L8k93ih7ddQNaBISrNxWrT7oEwwTPOHL6klSMfR1dB00
         rnY5r4iQGAM80L3PjhCtWqwH2rbvUtoPv1e/KOwAdV6197xF6L1OqqK+uDybuS41gRXG
         If3od3Eqya73ryytxSf6ckKi9qZeKRl17z5pBmYdMy9TQziqlU5o1UUH1My/672nS13F
         v0PATOTzkCajLqNCqG899ome0Pqunt5olwTA7KHngJaiwxT74JD306UVFLWclHKLnrzs
         ZpVg8/14OnRI2NLVwXph/mhqs9hkws2BVjwGDcCgxjyyVlVq5tisO+6TGbFP89bgTpAC
         t7xQ==
X-Gm-Message-State: AOAM531efFfoL4MSqZ3/bYgmkKEiYzIOEPPj+nvfaWnBc4twoxTykeJg
	yGshaYiKy8qu8Kk8jd8G6jM=
X-Google-Smtp-Source: ABdhPJxSXXigMBkxFG6ChsVjTtkXNNRqSp3aQ3KtwvaE8k58e29reU9vnLVUL7iGECbxEHtFa48gcA==
X-Received: by 2002:a25:4251:: with SMTP id p78mr5999194yba.306.1598919821845;
        Mon, 31 Aug 2020 17:23:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b612:: with SMTP id r18ls3750546ybj.10.gmail; Mon, 31
 Aug 2020 17:23:41 -0700 (PDT)
X-Received: by 2002:a25:bfc8:: with SMTP id q8mr6328452ybm.156.1598919821489;
        Mon, 31 Aug 2020 17:23:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919821; cv=none;
        d=google.com; s=arc-20160816;
        b=EvJeq8IpKgrcr4a8nekuQ5AREVJCStNy/M9Z0m1SndBpaLxEW8h63mavUDUs6JdLr9
         MLPr/8Sw5alDR74yt6y6B0WfMOdx5rktYp0VVhTpxoywL2RDAPXX+tQXvXoG+i5u4RcG
         lzDhmJIb17O0q9xtEw5tF5E3L9Oz7O+ELTFGoDOWgVLQzK2qZ2EHqx9qhCornJV7W1Ip
         72gZYkQRtb5ipKz6t91AhZvKAhVjtIXA3Ql8E44J0VtEjMprmzgBi2X/g7VoiMjOb2NX
         ifFK2ynAU+I/49PFjfCx6vMd2Zu55zkz1LOBmJcz48I8IjIOYedw4NWpYfddWIzoFJN/
         vNbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=UYhwqzzKZ0/ALhGvtSLUxxGQ4j8cmcIi3OxNm3DV3ws=;
        b=RlkvQ2zevl+nahy+wkb6WbM8Gz/Ria0WKIZK+N+QQynYG004F/HEVAo3pOEWO0oxrV
         bN95RDFUv8ClzOpFRk4ln4hHosWRNrewOEnkAZDOQLRzxPonTE3LCtvI5vD6Jk11tUCC
         0XN4VIt0g5UBdcykPd71nycXJEaO7F+mz4tZfORd0gFPRoZrwJk1Tg4QznlMWju4/TN9
         hdMja7HjCG27mM3MXRBPtBM8YS/3oyOzMwjng8IqDXlfvUINhdJwu0+fg/gAo8rIgHVj
         ni1o27Zlr5cv79AIu/gmjuMFNI+d8P49K0UqVlokY8S3b4VWrROEL/7zdIiR2qSCaKLa
         raaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nDE4gJkT;
       spf=pass (google.com: domain of 3jzrnxwwkaowbrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3jZRNXwwKAOwbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id 7si367628ybc.0.2020.08.31.17.23.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:23:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jzrnxwwkaowbrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id a13so6570522qvl.6
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:23:41 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:b626:: with SMTP id
 f38mr921855qve.0.1598919821103; Mon, 31 Aug 2020 17:23:41 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:23:24 -0700
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
Message-Id: <20200901002326.1137289-6-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com>
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
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nDE4gJkT;       spf=pass
 (google.com: domain of 3jzrnxwwkaowbrsgoizbwsfguccuzs.qca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3jZRNXwwKAOwbRSgOiZbWSfgUccUZS.Qca@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901002326.1137289-6-ndesaulniers%40google.com.
