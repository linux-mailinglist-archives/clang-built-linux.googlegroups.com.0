Return-Path: <clang-built-linux+bncBC2ORX645YPRBD5A5TWQKGQED5WMSQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AE3EB529
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:12 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id c19sf5721858ilf.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540431; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqMt6H5o6X5G+Rf55J6UKW0cerRXIVh7ed0Bx6hyfEAQ5JpADM8yKr5Rt2luGfKiEW
         xSCHz8qmmBwL2IU1exuwEofkVCNPrYBRB56eTvda9WV++PBjfuyPYngnoJq1jQ/QywzF
         yw0pSaBlwycjvzFVnFh1+vUc1GmqarWXMdBbP12McHLsoLPmPi4DcbVhSYn/aQEhxp18
         mdbI1dHcOKHMa6VHE+x/VhtKtwqdtawBtXzuN7WPASaXXGBFRunUyardnWaEwZAmxdCa
         l5uELPD66S/dfnuOUinO6vgnRlbMT4gP7TttNuUpOGCDOcjGZLKj7hUZCJe6cFsqRbc+
         igvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GuC3lrxWZRmloEJ2//P0tw/C8AgX57YYEc5+pSuNv8g=;
        b=kOnqMVMSMO3IrE3e1BLmm4gK+5FqP62ulgCidinmPKAeaaL8/76DlzNYfSG3vIOXZS
         o1AxOsbr0SGoNtkZNeyTaidvTiU4W92vfauRf5wUYi6IHFy93DyDsQFWP8SdvzawNV4z
         K35xAix/5XAUoOAA2FA+j5erk6TwzdgPIBspHJ//OeY8rZPCqwwEkkufFjxznriFg5kg
         2qBm2Dgbm49ez9FSg1OQucuCh5UJ7vzxuKibmf0k6FxPolFsgwjP+8IbD85ein/5Spyz
         gBjkfalhPSZl/XwgCEWrJ2GS+Bw1JWHc4HkYE5hri7AiECA7bu/SpbRXtK+Ydfr1Gi1I
         HZQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MFB8Vi7T;
       spf=pass (google.com: domain of 3dhc7xqwkaa87p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DhC7XQwKAA87p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GuC3lrxWZRmloEJ2//P0tw/C8AgX57YYEc5+pSuNv8g=;
        b=QZ92brtrHFXuM9rObxD8HtvYvyWmtQjUDi3qAgnlPfhLuj26rxftlcSwYPW6FCJgAF
         AkU4sI5r+YlQG7Wgo2sF6Sf/5tP1dq7++1eKXPc2GlfIJw9dFWNq+6gvAJJ1rERRBFMA
         x9CN268Bijjt0CyN9N8961OVVu/EDe+m1Xh3oQ0gwwHAF2+wbszdU0NZcCR3HsMgD1zT
         o2PqrcgNEYWeMVbuGLwQET+Y+I6l1YXQYLecUkt786hF1tqnCQb+JVc1wu/7lSnc+/Pn
         2gp1NUnbPrk7KBJLcJPVOXmchcYiDTLsg+nS6LrF5XV02AoobAB75l2pD2GYH13Nk41q
         BXFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GuC3lrxWZRmloEJ2//P0tw/C8AgX57YYEc5+pSuNv8g=;
        b=J7/rRFe+QMk1yG1brw8lDPCUceM0ZrbmRn8H+3a7Iw7UkuJ8/2WRTKVhGNhbycM98R
         YgDYz0UUciaFMzFPqbX5YP9UWCtQHzrsYtAJKXMjwKtXz2hTwaOB0ssoJSzekVirExZ/
         CrQz1UAZT3IyZj/mbu2W1dYeF2YKplSZhr23oCEYs7C77R/NI5z91bpbvdX00uk8wSBr
         LmGW8hnmAl/HYuFuTjq8NS/mHPc7yGkxz5WWPdfI6zvMr/mfd1I0gooH2/BoRvsl51NH
         l7mB3bendEGBqjpEB8IBXl9eUufnqSZ2HT9nzyglGwFXBmpXV5UKm+d/AnFeCMwQfbaG
         uhXw==
X-Gm-Message-State: APjAAAWkHeRjYgpK4fljqTnicDtGNYmFxS4yJCor+imj9FyO7jAvorLb
	jw2lhopTVCn+MZGXua968wM=
X-Google-Smtp-Source: APXvYqy6hy+2asBlwX9C17KHOGM9pP8vLLPucd1BVbMSSCOFzXQcWqfzRebxN7NHkDeyRfUhfFGfcA==
X-Received: by 2002:a02:1ac5:: with SMTP id 188mr1199886jai.77.1572540431368;
        Thu, 31 Oct 2019 09:47:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9309:: with SMTP id l9ls564083ion.3.gmail; Thu, 31 Oct
 2019 09:47:11 -0700 (PDT)
X-Received: by 2002:a5d:9712:: with SMTP id h18mr4333787iol.256.1572540430992;
        Thu, 31 Oct 2019 09:47:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540430; cv=none;
        d=google.com; s=arc-20160816;
        b=hVo1/9cujJnKWTmHW8S9/+ASIjM/paJRPxkAy/0tQB6PdRKuBzGyyEhbbL01U0ImTo
         fnW8iz0CpqF/xTjaWiEvk3PaSNqabKG6u38UBl/jT0Q8jxWWVcJG5N7u8DugX7qwzqkP
         I9YJofUZkZnYo60SAUgPtCG0fAbjqF4ipW4sFCpXh9roTS+ruECH+YH+HQupmhs4bt/A
         qZfTC2iii2cJp24CCYqKcyuP0AAPfi6thdSXRhRClLfE9aZj2+aTG5RnGDSUwIxLxLhh
         1SPEXQyV2PmODPgN4lybjcnT5r1oSgs/pNCUfDpuSZW5Tywby6ScBDMBnXCi5H9dGOBv
         fAdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9Ao7uN2sNi3wFwgEShB4rOY2NPtO1ve2nhewvDVkd70=;
        b=oG9P7YMqYrzSCR0xxRvAYMzlVqXIxm2Nwz19UeNh4gx5xKnEWr9tVKJT04jcvnC+ja
         KpsVyCrGMvnxUEwg5rZZEKdkBQ1XE7utqwv7XbRMqTO/oSWE/2Hhiyxn/Zx6Tj85Aukk
         eBVx+zu/ekprKSKiCPjpBFrZgus/FhorEez/XS2Ph+zG2trlCC5t17MpQ8tHFMveZXFC
         UAgTV/wUwpSqt33qIfkk8ZfVmHh2ltT+VEv4itUrwgrQvGhEZY7zYU9Sok1Ceju6/gS2
         p5RAvF4plKHDAdCpt6dCKwT9NW36t2N0OFdDQNLz1bLX+HZ5K8kmmudFJbaQR3LfQUtI
         iJwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MFB8Vi7T;
       spf=pass (google.com: domain of 3dhc7xqwkaa87p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DhC7XQwKAA87p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id z130si252297iof.5.2019.10.31.09.47.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dhc7xqwkaa87p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 20so4986852pfp.19
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:10 -0700 (PDT)
X-Received: by 2002:a63:d258:: with SMTP id t24mr7711243pgi.289.1572540430252;
 Thu, 31 Oct 2019 09:47:10 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:30 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 10/17] arm64: disable kretprobes with SCS
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MFB8Vi7T;       spf=pass
 (google.com: domain of 3dhc7xqwkaa87p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3DhC7XQwKAA87p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

With CONFIG_KRETPROBES, function return addresses are modified to
redirect control flow to kretprobe_trampoline. This is incompatible
with SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..e7b57a8a5531 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -165,7 +165,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
-	select HAVE_KRETPROBES
+	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-11-samitolvanen%40google.com.
