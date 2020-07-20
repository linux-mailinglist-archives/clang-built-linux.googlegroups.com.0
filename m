Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIMH3D4AKGQEPWRHSKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4DD227010
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 22:50:42 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id 14sf3167199uak.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 13:50:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595278242; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZoUQg9UK2nQb3BmbAA0zB0qzKJnCJmdPKjSNZ/JYgBNVamv41eS8YKacM2xKnQHliQ
         nM1VPsFbe3+o1fXpe/HppNd4qe093iaIbKo6Jwo+6rx20IMyoCVQMjsRN0OBWd3S90Px
         6vFniGg3GaCeefG+LqqyLNY6rWTVllQHyf8kXGYxEswRS90Q4rqqqFAXc6JIhR7c8Jbe
         zDtaYZYBPJSj3ylEpXfGQxtSGhggw8Q0gzqCAraQlamxVqt+sA+XkPijyXyaYYmfT4CD
         F8vpfT+YD0qgg/0FNdI/VahUgelLRFyM9lbqxQ7c1N3Q9qVhsSbI/C5Q3QjAiqbtACqF
         a8Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=w7h7GB3DNNpygmTiL11pVrGp3bMgQzgdZXFTbWRiKNs=;
        b=uTO81nhhAQ5IDghRInzAbT7IIndGn/1UZH7T1SJ0juwg22V/DQy4NM/33DrmvVGek3
         Qmld0sXiokQC6TIS01OevcaHyJGSh+E0NO4mKUg6SZwES62PCK6ufG/NKwZhEty+z/by
         lWKCPfjjyvb71rkf4U1u3V+2uGJ/3lcly2dAdhqI817xT6wGZUrTd5LDwcFFH+5GIN/J
         qJ8HW9fYHtzo/Zmrner+mDlNAiqCrcq/cQ4AjIglaS4zDHtGUmORSfZ7HzHyJd25a/XW
         9oWunX/iI3Sc9xFAyRvt+K1CcVZmagX/U89c3GKQbowRmZ6cZ1S1d/gFpTUVJPzWnhIs
         c5Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jkS0Gag3;
       spf=pass (google.com: domain of 3oqmwxwwkap4tjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3oQMWXwwKAP4tjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w7h7GB3DNNpygmTiL11pVrGp3bMgQzgdZXFTbWRiKNs=;
        b=E4Y7C/m5iGv108Z/ofwzUutj6CtQxXWC1J+QgrbJ+cy0R60SSsMg9+w5fQhrAfMAhg
         WSgv9aDgOcFT52hEO1GNJyS2dZYyUqLQ2sUcOQjj/nkq5B0YQNGjHCp4dxw7PHTSRJ4W
         bQcD61Ku+GLodLeEIj4WI8LfdCUFMkFM1cQKUQxu40l5MqUW9xFm7EbyptaC/tG1URbh
         Pzvir1zjMrozgrdEqwqWSL9s45KtV9S90HEpA4xt4aeQVroGwrmpUINx3rIDB3Z3jawn
         AZBXLgkzTPZhjG2QFdEEl0eWqxMWWoh6KopU/SKyL0/WCGKQt4VvltJAl8QXJhpbucrL
         nZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w7h7GB3DNNpygmTiL11pVrGp3bMgQzgdZXFTbWRiKNs=;
        b=uktM0ke2aNXgFFkoVe0B8TmGLHt4YBkjfttoKQAHmC4w9NIYQRRgdVyLnaIaGUQXZm
         5Oas9s4Y1hkMtug6/m0KcaTNM2NNJtH35ydEHvdU589VTYlp/zqt1JstGJlORohl8C7H
         +1jkj/P7v/tkbQrI3weR1im/Um3DBaXy+SFYUxX/Gn9NXts2CYA8/YpmNOhqacnNnVA7
         bgvYFdEqw1sheN26mdonzMaePag3b0f25CzI9OvGB5PXebMUvKuyfItXcYEBDSp7LnlQ
         oA5KM65SWtaHao/wjximdg6+YTAA9/XXdyrb+Yn4CnO3ZZg1HoUNoOl3rpnjctqrtKUj
         QOYw==
X-Gm-Message-State: AOAM531W49aCFWc2ixV60AlK4Q+WA+Xrfodn6777mD7MBuOX7QFhFhq8
	TSmbDwuh7TADS2D//CA+88c=
X-Google-Smtp-Source: ABdhPJzgRp+RrmaddBkJ4S8FfVZzJY7HvVV2tc1FY5EseqptJaNkQcR4F2B86h98BWsDSOC4ht07Rg==
X-Received: by 2002:a1f:9144:: with SMTP id t65mr17555284vkd.50.1595278241923;
        Mon, 20 Jul 2020 13:50:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2549:: with SMTP id l9ls516079uan.7.gmail; Mon, 20 Jul
 2020 13:50:41 -0700 (PDT)
X-Received: by 2002:ab0:189:: with SMTP id 9mr17627152ual.75.1595278241523;
        Mon, 20 Jul 2020 13:50:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595278241; cv=none;
        d=google.com; s=arc-20160816;
        b=t2cfYcp6sEnLgQTgnZ96dxwg5vot/Vw1exVWyPSBj1Je7w3zPAceDDUdGeYy0TkmGD
         zXpYNlaxMfPusoo8r1zgEzfFmUg7gD6kyIPdq4n4n211qD9OBoqGX5cWzHbMPZfUz/05
         T4IpcFfoo9299Fqgb28V3xm0cR/sBGfapso3lqx/N0uf81bLgHvk7lETJAWggZEDcI7M
         eDo639UDrSfFLCKcf0QA25shXGgkSb5J/R/FBIgkYJHsn7YTn6wxD7YzGeM/LKc8Uc8L
         vWHPZtJJQmsI4I+SeJIGHYPJAY1DYIN2LsDNmJp1lOCtxdy9mQznzJ27m4NG4/yvukmu
         R7lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tXgM/MA7/QFcS0+HoEb1LtIEkU6uWRnwjEeT4D6Ysz0=;
        b=Z0bq/UyazplVg8q6OBqTzR21zOMHVHFzWFexU6OFCms9wvPTqoy8FoAtXf4Wn7xoln
         G4YjePR+OocB+Ty9kNZrd+j/KgnR72MX5skVvttwONKAwheK5jYRu6XVaMWWrNxcoV/u
         NWEUHyRyZ731XN3MOunbeDlO4NKcBBNqFbPojXTKAAoNAUgWrL41q6PVGFySppAip4SD
         3Hwnjqn+B1SukJF9uCApjhISr66oaPAkZa9EWH93UgFHZCNrqwyuihyNGFJ9y9OzfWyL
         q/iUa0C3wzV0rX+bbgCzkJfB6kCKJ0VcTKOEm1R2aZjQ2d7ifOgBiNylLbbCMIuvL9RD
         ENTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jkS0Gag3;
       spf=pass (google.com: domain of 3oqmwxwwkap4tjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3oQMWXwwKAP4tjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id o9si875098vsr.1.2020.07.20.13.50.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 13:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oqmwxwwkap4tjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id t36so12777366qtc.16
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 13:50:41 -0700 (PDT)
X-Received: by 2002:a0c:ea26:: with SMTP id t6mr23459159qvp.220.1595278241089;
 Mon, 20 Jul 2020 13:50:41 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:49:25 -0700
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
Message-Id: <20200720204925.3654302-12-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v3 11/11] x86: support i386 with Clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	David Woodhouse <dwmw2@infradead.org>, Dmitry Golovin <dima@golovin.in>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jkS0Gag3;       spf=pass
 (google.com: domain of 3oqmwxwwkap4tjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3oQMWXwwKAP4tjkyg0rtokxymuumrk.ius@flex--ndesaulniers.bounces.google.com;
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

Link: https://bugs.llvm.org/show_bug.cgi?id=33587
Link: https://github.com/ClangBuiltLinux/linux/issues/3
Link: https://github.com/ClangBuiltLinux/linux/issues/194
Link: https://github.com/ClangBuiltLinux/linux/issues/781
Link: https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
Link: https://lore.kernel.org/lkml/CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com/
Reported-by: Arnd Bergmann <arnd@arndb.de>
Reported-by: David Woodhouse <dwmw2@infradead.org>
Reported-by: Dmitry Golovin <dima@golovin.in>
Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Acked-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/include/asm/uaccess.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/uaccess.h b/arch/x86/include/asm/uaccess.h
index dd3261f9f4ea..9d57556ad42f 100644
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
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720204925.3654302-12-ndesaulniers%40google.com.
