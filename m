Return-Path: <clang-built-linux+bncBC2ORX645YPRB76VZDWQKGQEJUL4GFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7403BE3F8C
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:51:44 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id a5sf444372ybq.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:51:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957503; cv=pass;
        d=google.com; s=arc-20160816;
        b=YrMOFLQM4YlvsHwS37dTIxEzKc3pzL12Aj7QdEO142tEmII61+z6Ik9+uXM/KUEju5
         0eMz08ipcejWfV5+3Kn9hFiI1RS8KQPPoBBPXB0mtwnLbTWaOiTyks1B/UZel1Y39I/1
         gVv762jvIL60EyH02OGmsHgpS3Yu6aLbNJwBhlUU5lX2n/I11wjm5hGYhKnzMJ1wD4mh
         FlMorLwNIETKADJzjfnhQiMuINBUOCcptJBfuRBv577DYZsjdEETpRrzhQ/J/+tvd1WQ
         FtrKuIU4q9bqirPb9Wt8gTclbDvJjdwBsbrph6kOCtYQZpae6bx7mySx/k1TLJgt/46E
         qCdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/xgYr8Fpn9XF/O+NNjRkzW1qIanvB0UZkLljbIHjTTI=;
        b=u+ibPewizeHhs7XD3fs8A17HVO+1wCqg/4/GEV2GuYSXm77K7MPffqSklOUStkgo81
         DSFbBfxyfVvvP9hsT3blHZUDrTlU8VI0AskfoZzy6egyEo5yVfpPhw+NePzamw5cC/fM
         +01ehAizo2jdKgxBy/t8Px7OZKIZ/3MBdLYuRL7G7J/82kB+wwiZWP5rINaF3/a17v1j
         /cB4A9AhpDkiitVmjYGUxOHm8hdOREr/d0C6B4JxrutRBfe14CtwDTkMnAPC01kBo47Y
         wfBNZWmk6TciwTI8P5NJcRymvnMJ9mqBfzGggegWIzfKDzAUxUDZN9cyCuuXS1KbddaM
         Ln1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="aAbpXLe/";
       spf=pass (google.com: domain of 3_sqyxqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_SqyXQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/xgYr8Fpn9XF/O+NNjRkzW1qIanvB0UZkLljbIHjTTI=;
        b=d/Mcl6TStKrkGG8DdoRWI1QOokLIYhwSB752XoAp9LLNHpnkc6R1T9ZnquT2tLYydl
         dyB5V1jcQUPq7iq2Ds7rwSDzaKfaFcVI6gr9Ta/d0UiMTpCN/tbcdJkrt6P6k4bD6Vc5
         svgyJSYZBUPLeDPAdNosojP042wBxybhY/1zCyoTqhlrFU06H20e34eWO2zXRin02r+h
         P4RLVkka6AHMwc1qCaGxbaHr3QEm7VKwLVlHAQbIamYuUdCwa/mxTFtFKBUGJHOBTdRC
         6Xq1/8VaaMwQ9VhFQyGLv1OY4ZhNSzGHlUhanS7J6/zqZ6RSbkQB04tl0zBS/4x+HYag
         qP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/xgYr8Fpn9XF/O+NNjRkzW1qIanvB0UZkLljbIHjTTI=;
        b=Ke6KdsTgBlSa3uqEMPNPKcG8MZSNvyGWme5iFc0u4J8elckalD2CPkXRML0SFc1IVp
         JkYuMH3Wi4zTc/2gN/M3DPB9xU1wmrBwg66sW4NDSxYE/oUo2zQRdlSFPwdQNGo/1xnP
         Lf5X/r2DraaJlDkkBYmWTM0jj9CBBo3eX9EOXnFTxe9ILPxdNbdXarxBdWZpeDr5cZbs
         hmbSz0ShPvneD+KqjNT3k2hT9jxPft5zHppyllgXQI0bwr+8csU+NYaqABaZagwVVKo0
         +AXKQ2erxkPAeJwIr9Y0dhXtKoHOPb4jnAn89XmLxiVdhH/JHzLrB1uzbFEcAqJmcFAF
         YakQ==
X-Gm-Message-State: APjAAAXoAtEfT163kzzEDQYyPz49xH5KHplyp7lmlCFWdDIzrRlF+p9f
	WAa8NAHyw8YcRN6litbcIbs=
X-Google-Smtp-Source: APXvYqyZcxn5lH2z4w8VNDwe6fBQMG0trthMap/0P+E8xiUezLlIbViC6P2pNFppFrzXr1yS82ysCw==
X-Received: by 2002:a81:a40f:: with SMTP id b15mr9319263ywh.474.1571957503145;
        Thu, 24 Oct 2019 15:51:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9209:: with SMTP id b9ls496870ybo.3.gmail; Thu, 24 Oct
 2019 15:51:42 -0700 (PDT)
X-Received: by 2002:a25:4b04:: with SMTP id y4mr687084yba.478.1571957502660;
        Thu, 24 Oct 2019 15:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957502; cv=none;
        d=google.com; s=arc-20160816;
        b=lqMDuKS3iTUmEEInaXJiIngJjAJzdDYNrKMJZPLrhsPi0T7+Ts2vBtrGGkVDguDLnP
         3qmumtY3B6mtAr4IAupjDZ+8fA5O5MxkF0ab4EWfw2rXAjj/Z32ucA9Vj5ehPiVhSIgE
         10eFuTQ4ePcFIOCybv62fnvs26JtH78HVnUnVXLuyIR1TRBmX7yB1tEF2uXRvqDc2MKF
         gZlxgQ6P2Ba0dzm8BI3u/KnUQlAukdgjcKaQ0jUZlsepY1Aur9pIeoX47pZcoidC6kDv
         FvoxdEkHfYikpRXjXtUS8YtslZfgwG0wBXeZYWa0u0ZN6lJhDvzXBTtq/Ra9YjQKJ+qL
         Mjdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=NgbC4P1sZEmAi9I2/zNK/CWQSp6FGySYAm217ZB/f+0=;
        b=vI9+0J23bUGWMwCVcWpx24Df0G/O8R3Nz+1EqfsFZ7w1MC2vRkJ0gQCOiyrrT5jgDS
         tA9k4/bCbJLFAirM55BupfC5YewrwHnjpYNhAgTZ7UJfb9k/qwNF4aNY66QYzLP6IIJO
         e/EuckRERoochzWxDLnLjGt/ptT8kZKSy8X3Fy55aUTFi1TE3xt7QOWn/gH0sReIHMP+
         gKyj8ORibMxbY+WBVtrextRuPuiJkysK8xzXynESKqjFWZRwnon3S8YdfREwwjpuDH84
         5QabacgUY1yr6Cg7LvowL88tbmaacyQQT5Q0g+1XOq7Mti1rcymb7WrMsqrAlKGv5gqm
         330g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="aAbpXLe/";
       spf=pass (google.com: domain of 3_sqyxqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_SqyXQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id r16si16758ybk.1.2019.10.24.15.51.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:51:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_sqyxqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id a14so267925pfr.12
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:51:42 -0700 (PDT)
X-Received: by 2002:a63:4104:: with SMTP id o4mr484324pga.169.1571957501557;
 Thu, 24 Oct 2019 15:51:41 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:17 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
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
 header.i=@google.com header.s=20161025 header.b="aAbpXLe/";       spf=pass
 (google.com: domain of 3_sqyxqwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_SqyXQwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Register x18 will no longer be used as a caller save register in the
future, so stop using it in the copy_page() code.

Link: https://patchwork.kernel.org/patch/9836869/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
index bbb8562396af..8b562264c165 100644
--- a/arch/arm64/lib/copy_page.S
+++ b/arch/arm64/lib/copy_page.S
@@ -34,45 +34,45 @@ alternative_else_nop_endif
 	ldp	x14, x15, [x1, #96]
 	ldp	x16, x17, [x1, #112]
 
-	mov	x18, #(PAGE_SIZE - 128)
+	add	x0, x0, #256
 	add	x1, x1, #128
 1:
-	subs	x18, x18, #128
+	tst	x0, #(PAGE_SIZE - 1)
 
 alternative_if ARM64_HAS_NO_HW_PREFETCH
 	prfm	pldl1strm, [x1, #384]
 alternative_else_nop_endif
 
-	stnp	x2, x3, [x0]
+	stnp	x2, x3, [x0, #-256]
 	ldp	x2, x3, [x1]
-	stnp	x4, x5, [x0, #16]
+	stnp	x4, x5, [x0, #-240]
 	ldp	x4, x5, [x1, #16]
-	stnp	x6, x7, [x0, #32]
+	stnp	x6, x7, [x0, #-224]
 	ldp	x6, x7, [x1, #32]
-	stnp	x8, x9, [x0, #48]
+	stnp	x8, x9, [x0, #-208]
 	ldp	x8, x9, [x1, #48]
-	stnp	x10, x11, [x0, #64]
+	stnp	x10, x11, [x0, #-192]
 	ldp	x10, x11, [x1, #64]
-	stnp	x12, x13, [x0, #80]
+	stnp	x12, x13, [x0, #-176]
 	ldp	x12, x13, [x1, #80]
-	stnp	x14, x15, [x0, #96]
+	stnp	x14, x15, [x0, #-160]
 	ldp	x14, x15, [x1, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x16, x17, [x0, #-144]
 	ldp	x16, x17, [x1, #112]
 
 	add	x0, x0, #128
 	add	x1, x1, #128
 
-	b.gt	1b
+	b.ne	1b
 
-	stnp	x2, x3, [x0]
-	stnp	x4, x5, [x0, #16]
-	stnp	x6, x7, [x0, #32]
-	stnp	x8, x9, [x0, #48]
-	stnp	x10, x11, [x0, #64]
-	stnp	x12, x13, [x0, #80]
-	stnp	x14, x15, [x0, #96]
-	stnp	x16, x17, [x0, #112]
+	stnp	x2, x3, [x0, #-256]
+	stnp	x4, x5, [x0, #-240]
+	stnp	x6, x7, [x0, #-224]
+	stnp	x8, x9, [x0, #-208]
+	stnp	x10, x11, [x0, #-192]
+	stnp	x12, x13, [x0, #-176]
+	stnp	x14, x15, [x0, #-160]
+	stnp	x16, x17, [x0, #-144]
 
 	ret
 ENDPROC(copy_page)
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-3-samitolvanen%40google.com.
