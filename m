Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRN6YL2QKGQEVFJPMIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5CE1C49FD
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 01:03:34 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id x26sf78895qvd.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 16:03:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588633413; cv=pass;
        d=google.com; s=arc-20160816;
        b=BxuMnUHRXmz+oHg4iNrzWA8Nd13/TpgVSVr/vR6s/xpXYk6R4vjBAvIIRinwkzZj4M
         PUnkL6waYTOeOBRupuVdiK/x3yhsOjj941vu5RNhP5jPYEizg8Pb8+DsjJBYBzjSOC54
         M/hWMCGz0PTt9EXmLNG8uHEBfto4qNZMpk3qPLxIy1yO45KjnDGVvGWYL2rgN+Q3UTuy
         9Kb0ovzcxMWHXOwMZTeSvpDR140ccau4jmluHLJTUDwJOHGSu0DOUFhTBcJEqqKmE2LK
         8GocWFaRSMhd6auU20m3vlKTbLl2+uuudLGsWOE+H46gtqbD0IoK+WO0fUSpGy1hxYOR
         4QjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=HlJLvfY6o33n6nGQE5lVK6jy5IPnJx6hyNV4VIeCVds=;
        b=VQbd3sl2o+7FtnSi85qpau4zWVaFUvlFfO9oKXx74vVRbkw07ysmytH6M0j/x6H7Hh
         5HtJxHDOdatr1S6sYXKWFPFOX5F5OZj3su51AapWNC4CewTKwLG8xabHciawrqOFKh99
         DkRMvE9GrHU4jFiXnO30mYtDM1IcU4WHdf0wtFwnAe5wDZfnpnoBqIpERNuIu1bi4RpZ
         yfTzbPeBoUOuHGawx+0nCfPE1jIJOfLe2XY5AYo/yC3wItN1N6uBRbv+CQn8JBFX3rSX
         Rr+z6DW1yNLoIkuT7wv12bsSTx0PxVM/UlERTcnVnAdeOR5s+p0FkOmA2USHL3N6wo5B
         zB7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nSNYyMa0;
       spf=pass (google.com: domain of 3rj-wxgwkaeeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3RJ-wXgwKAEEqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HlJLvfY6o33n6nGQE5lVK6jy5IPnJx6hyNV4VIeCVds=;
        b=Y06JQJDXxGrR2ww2Z6Uwy4I+iGFfphf8YxRowjKTD7wG4JEYeUcLw+cxSeXWVQK6Eh
         zkTNQCHM7UmpAKkZ5TytR3iTWXk9lrhMbxMK9BZ9LR3XhsuOelm7//Jx2Bw6Go23FPwL
         0TjkPvhQhhP6hsW84yah90pbP41k4PzRUkZwxgVRLrFPx9ZAgXWnRRtbV7il3gTIqyQx
         t/pVVxz6L96G9JF3proQirUR0hmfaWI5hzMo3hmN87tMANSXjJ8yzBxr36yGorz1E60i
         cTyZXeD9vN+MT8sC3TIs5Jkn6IXg7gbOBM0/SRSdUjoQs9Tnx2NIzjycq2w0CGdA7yVh
         RBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HlJLvfY6o33n6nGQE5lVK6jy5IPnJx6hyNV4VIeCVds=;
        b=BRc+msi0H3yUjVvP9sai0XGC5FQyAtgpLTv7sXR7R7MuhZMYS3j115eEdcVwPG86ZY
         69I436VzNEmCFL0ByVPzeMjAkCvhkJ52zCclpICRSamOoYTnEhLXr/xDB3P+hX+Ypf5l
         s4k2EGFTIda2y0HsUipvtiS2t+Tu0HuWA1/8G1+J7o832PUXhK94mWB1bMbrpF+MMT+B
         rKdY1nNguN/0NDE37ZGWd3soryUGdbTJo1iV9kk0bf9DVXY3fKrSMcX6Ap3WkPy++ziY
         GUYQCogZ4HU3oWIJcHII973JOJ5FNdLCssSzsY6nytPNvNCdOwfiMCUHNoQvS2UlDuFE
         c7oQ==
X-Gm-Message-State: AGi0PuaSOQc4gDnFbqCWbwrI6UH8xOLXWQjkwQvu10qgMtBtlgsGgjZJ
	nnmGg5YfDPRo44gupSkBoxE=
X-Google-Smtp-Source: APiQypKozGxVSiVsQ7fo2kT9dQzKNsXAntjLxHAFkdp8iWD45A7MvYNw8z0srj6ZgmuPuhHTyBmEvQ==
X-Received: by 2002:aed:2964:: with SMTP id s91mr32639qtd.200.1588633413320;
        Mon, 04 May 2020 16:03:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fd5:: with SMTP id w21ls421586qth.7.gmail; Mon, 04 May
 2020 16:03:32 -0700 (PDT)
X-Received: by 2002:aed:3f68:: with SMTP id q37mr49288qtf.34.1588633412906;
        Mon, 04 May 2020 16:03:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588633412; cv=none;
        d=google.com; s=arc-20160816;
        b=Ax9ulRbFZDJfoxDaS7WqJLqW4bdQ8Pjmcx5+t69s6xtlbXbNHgmL5OEfDSNIkHLv9t
         y7Wzv/2gKUB62lPPbiiE+93VtP8aQWngHGDzZlbkxKZbyAHRcwg8FtOLBohd6TqHc/GE
         MbJiPIcAgPPN+Tv6HA1JJ4rUPkDWjJ0Cm48eu2KgCJKMSSahr44M8yR0Ndi0TN+s5EiF
         cMSjqbh+9S/ezx3KYZ61ncbCjrYyuJs/nKtbsTv7kLyM0SJiIeDQyGnGgKljWjiWwWok
         gJYd04KLZ3jot4yvcZIZTdg0pb8fYrVvjPI+0Fl+u2Rv3d3yM8feHQDXRzBDCvTu6VfP
         Ltfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=riJtF6wnIn/7Sr6BY03T361JLi5EWFboyLscUDM7chc=;
        b=fFXwLvwix7ARc7/3xIA7BYqHbapAKNdCS0+dd3QJOBsiy3yP/omzDir2vyI8TOi/1F
         U84G2piXp7Yj977y5Sg3R2T8K0ooWQuQRdLiKrl6a35Vda1pCiRATPVcpYARpDTVpfhd
         ZnHRKOA28ODPNN36tTHGVfFeky6opq9yFlNEGj6y8OMatLUHcpmD22d+UpLmRmZAkhWA
         Omuy+NvYFasXzN/dZf5ft34jDNZVVOp2zKFloo1dbYUAzR9AqXpggL0jcSZCqyiczHrd
         wlU0Ze/10cxk+pQKcXcGBJibwUkuDU2sVqB5ZLvSiZl33cLAI+bzWyXEVAMtJ6lZGxs0
         COSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nSNYyMa0;
       spf=pass (google.com: domain of 3rj-wxgwkaeeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3RJ-wXgwKAEEqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id u20si39449qka.2.2020.05.04.16.03.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 16:03:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rj-wxgwkaeeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id v18so1106297qtq.22
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 16:03:32 -0700 (PDT)
X-Received: by 2002:a05:6214:1242:: with SMTP id q2mr354063qvv.198.1588633412455;
 Mon, 04 May 2020 16:03:32 -0700 (PDT)
Date: Mon,  4 May 2020 16:03:08 -0700
Message-Id: <20200504230309.237398-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: [PATCH] x86: support i386 with Clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	David Woodhouse <dwmw2@infradead.org>, Dmitry Golovin <dima@golovin.in>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Dennis Zhou <dennis@kernel.org>, 
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nSNYyMa0;       spf=pass
 (google.com: domain of 3rj-wxgwkaeeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3RJ-wXgwKAEEqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com;
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

GCC and Clang are architecturally different, which leads to subtle
issues for code that's invalid but clearly dead. This can happen with
code that emulates polymorphism with the preprocessor and sizeof.

GCC will perform semantic analysis after early inlining and dead code
elimination, so it will not warn on invalid code that's dead. Clang
strictly performs optimizations after semantic analysis, so it will warn
for dead code.

Neither Clang nor GCC like this very much with -m32:

long long ret;
asm ("movb $5, %0" : "=q" (ret));

However, GCC can tolerate this variant:

long long ret;
switch (sizeof(ret)) {
case 1:
        asm ("movb $5, %0" : "=q" (ret));
        break;
case 8:;
}

Clang, on the other hand, won't accept that because it validates the
inline asm for the '1' case *before* the optimisation phase where it
realises that it wouldn't have to emit it anyway.

If LLVM (Clang's "back end") fails such as during instruction selection
or register allocation, it cannot provide accurate diagnostics
(warnings/errors) that contain line information, as the AST has been
discarded from memory at that point.

While there have been early discussions about having C/C++ specific
language optimizations in Clang via the use of MLIR, which would enable
such earlier optimizations, such work is not scoped and likely a
multi-year endeavor.

We also don't want to swap the use of "=q" with "=r". For 64b, it
doesn't matter. For 32b, it's possible that a 32b register without a 8b
lower alias (i.e. ESI, EDI, EBP) is selected which the assembler will
then reject.

With this, Clang can finally build an i386 defconfig.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Reported-by: David Woodhouse <dwmw2@infradead.org>
Reported-by: Dmitry Golovin <dima@golovin.in>
Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Link: https://bugs.llvm.org/show_bug.cgi?id=33587
Link: https://github.com/ClangBuiltLinux/linux/issues/3
Link: https://github.com/ClangBuiltLinux/linux/issues/194
Link: https://github.com/ClangBuiltLinux/linux/issues/781
Link: https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
Link: https://lore.kernel.org/lkml/CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com/
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Note: this is a resend of:
https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
rebased on today's Linux next, and with the additional change to
uaccess.h.

I'm happy to resend with authorship and reported by tags changed to
suggested by's or whatever, just let me know.

Part of the commit message is stolen from David, and part from Linus.
Shall I resend with David's authorship and
[Nick: reworded]
???

I don't really care, I just don't really want to carry this out of tree
for our CI, which is green for i386 otherwise.


 arch/x86/include/asm/percpu.h  | 12 ++++++++----
 arch/x86/include/asm/uaccess.h |  4 +++-
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
index 2278797c769d..826d086f71c9 100644
--- a/arch/x86/include/asm/percpu.h
+++ b/arch/x86/include/asm/percpu.h
@@ -99,7 +99,7 @@ do {							\
 	case 1:						\
 		asm qual (op "b %1,"__percpu_arg(0)	\
 		    : "+m" (var)			\
-		    : "qi" ((pto_T__)(val)));		\
+		    : "qi" ((unsigned char)(unsigned long)(val))); \
 		break;					\
 	case 2:						\
 		asm qual (op "w %1,"__percpu_arg(0)	\
@@ -144,7 +144,7 @@ do {									\
 		else							\
 			asm qual ("addb %1, "__percpu_arg(0)		\
 			    : "+m" (var)				\
-			    : "qi" ((pao_T__)(val)));			\
+			    : "qi" ((unsigned char)(unsigned long)(val))); \
 		break;							\
 	case 2:								\
 		if (pao_ID__ == 1)					\
@@ -182,12 +182,14 @@ do {									\
 
 #define percpu_from_op(qual, op, var)			\
 ({							\
+	unsigned char pfo_u8__;				\
 	typeof(var) pfo_ret__;				\
 	switch (sizeof(var)) {				\
 	case 1:						\
 		asm qual (op "b "__percpu_arg(1)",%0"	\
-		    : "=q" (pfo_ret__)			\
+		    : "=q" (pfo_u8__)			\
 		    : "m" (var));			\
+		pfo_ret__ = (typeof(var))(unsigned long)pfo_u8__;	\
 		break;					\
 	case 2:						\
 		asm qual (op "w "__percpu_arg(1)",%0"	\
@@ -211,12 +213,14 @@ do {									\
 
 #define percpu_stable_op(op, var)			\
 ({							\
+	unsigned char pfo_u8__;				\
 	typeof(var) pfo_ret__;				\
 	switch (sizeof(var)) {				\
 	case 1:						\
 		asm(op "b "__percpu_arg(P1)",%0"	\
-		    : "=q" (pfo_ret__)			\
+		    : "=q" (pfo_u8__)			\
 		    : "p" (&(var)));			\
+		pfo_ret__ = (typeof(var))(unsigned long)pfo_u8__;	\
 		break;					\
 	case 2:						\
 		asm(op "w "__percpu_arg(P1)",%0"	\
diff --git a/arch/x86/include/asm/uaccess.h b/arch/x86/include/asm/uaccess.h
index d8f283b9a569..cf8483cd80e1 100644
--- a/arch/x86/include/asm/uaccess.h
+++ b/arch/x86/include/asm/uaccess.h
@@ -314,11 +314,13 @@ do {									\
 
 #define __get_user_size(x, ptr, size, retval)				\
 do {									\
+	unsigned char x_u8__;						\
 	retval = 0;							\
 	__chk_user_ptr(ptr);						\
 	switch (size) {							\
 	case 1:								\
-		__get_user_asm(x, ptr, retval, "b", "=q");		\
+		__get_user_asm(x_u8__, ptr, retval, "b", "=q");		\
+		(x) = x_u8__;						\
 		break;							\
 	case 2:								\
 		__get_user_asm(x, ptr, retval, "w", "=r");		\
-- 
2.26.2.526.g744177e7f7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504230309.237398-1-ndesaulniers%40google.com.
