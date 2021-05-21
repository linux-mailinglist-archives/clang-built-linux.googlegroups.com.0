Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNUSTSCQMGQEP6N4KGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A5838BB5E
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 03:13:28 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id j19-20020a63fc130000b029020f623342e0sf11454707pgi.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 18:13:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621559607; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aa7s1UhVt8vIZ+VT2Qb/Q0fxbPVL3mJLvumZgwg34QYTX/u/UpQwL0KRD8vjWb/W3c
         lyGVV9bL63tiqMFqml7zmearfQlxm3ZU/0tkNNLUPmK00MBa7deTM8fmZyVHqCRXJDqr
         oyDIdg3dNYWVdlj1um0rg3p+1hNUP8VC+k4OTralgaml8zUZwSaE5h1EAUTXpvt6qtmv
         p3bmlts9fvILkzzLEeBiC8h4iMz4iAK8w0DmcI9pxCUqSQXNXwjxp8a6N+uH4QupIyjb
         PZQVZKyllfVe+ckdN98C29ycu3Fk+bDdALLkc2MalDf0aponSJoBELhT21w0yqyIf94I
         ISmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b11sLRv+qBTo538KaKpBNx/KjmdcrLDOlf136toVnkk=;
        b=gTq0dH2tGsOzCT5Aton6LBEsbZXlZeCt6hiKbeZl3etr7bLi21xbEkMoDFBZstTWV6
         Xgs45246DviP+Re63lxmdWOfqg7ay9/UY/PhBXh7au8LQRDS8MTydmc3c1HcgfBO72FJ
         91Si+AkEekj5rbTLK+WM4EcAtX/yL7TH/BQewY4O82tc8M/358Bg8S6CsI6P0s4fwC//
         VeQLPUr19fhsTD7X9R8C+89xT5vEch7S/Lz8Nyyb0x5TBE3ybr46V13MHjyOEkXtH+RU
         NCOTxVANRB/+YpjQx1BIXwKvhvT0fDfKoT9Eby4Zco+FDqUVPfTcWgG5enzQijfLUIkg
         Bumg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Wa3x4reI;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b11sLRv+qBTo538KaKpBNx/KjmdcrLDOlf136toVnkk=;
        b=tS0woGdOmnVlwN8YIFA6zUR4+nhwvEQGDo3ZmDVdikekHQrL0X+vnIeK4ts8zDBnpH
         gDPirz5OCwqTtpZcYJq0Qbo2KoD5XedYkXq4tqAoyH6LL43bJPgYTegYb0fehddR5nth
         TTGHbe4LYc6DxFRYsD39wLRCZltfzeNfDVl5WXPZeaCKU1ZiGD2gDONmUh1cFeLpngqY
         bEabeBuhYEibrZN/VwiWy8U/N4nWgW1EMozekYTmVmSn+YbnTLqH4DBTIt8dyltUdFJD
         cjDzKIktFzMLaH3ryOaygxUXKvLT5pbWkWA3fyo+JocPJrjA+9rwfVqBaUL54Hmj1U2X
         XHvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b11sLRv+qBTo538KaKpBNx/KjmdcrLDOlf136toVnkk=;
        b=p2avVNYwMyd/hRovLehkdiAhJi9/KaWBH53/XylEN7rceUfZTRrOvqrGhJ4xnzyzEp
         hKzRRK1yCE6QeeNifPuLrtGCTen9T42EUMfgMSeTuIvx4S5R5rHrV/6Rj4BxjHT0YO5z
         GjTISTe1K1nSopyrGMAzSQtImAU0JKsNiRRUGfnPoGf3ms30BWnVvXBQr9o0fwN3Q+J7
         5vqhDYcZaOGH7L89j65wYi+wqKsCZJ1TIHOd3TiKnc5wzzIrbPs50QjzSYnLAHjRDcPz
         9LX9OTnIrsBDgsQY0dGpS2rHMipPkWkW3sxDYFgWDETjbhS1OhFfLKlJa1EX9QklT1oO
         1jdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Jua+RJpaE+HCItrtgX/kG0XpscLFIuFc5iGbNGBxs3sUq+1sT
	XewaUIB+drtVaWLucfBp9mk=
X-Google-Smtp-Source: ABdhPJwY0qsFD97g0Jnka9CPJFUxMfgNDcNXyBanqyPzHUZA8Ux6rOQdLbezfUI+KPPCz0E5WKs9kA==
X-Received: by 2002:a17:90b:11cf:: with SMTP id gv15mr8086126pjb.26.1621559606934;
        Thu, 20 May 2021 18:13:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d95:: with SMTP id v21ls2959044plo.8.gmail; Thu, 20
 May 2021 18:13:26 -0700 (PDT)
X-Received: by 2002:a17:902:bcc3:b029:ed:4637:fb2f with SMTP id o3-20020a170902bcc3b02900ed4637fb2fmr9024485pls.72.1621559606387;
        Thu, 20 May 2021 18:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621559606; cv=none;
        d=google.com; s=arc-20160816;
        b=WxDAzw1vqFk8xXzkbaKE1MMeXRZBRPiXWJ4I/ZrbskWN6HIt+eh87eM9SQA0wld+aU
         EVnBCp9oZn4QAy+zKU9M4qnEd0Wr15T5+f5t8QvO3J4ys4qfHaW9Q8uquftDSrrxdZ2f
         5d+CfR162YnQ2ssYnROb7TZOJQNgDgMCc7tYI/lsx3FVr0+aKAuRVtYvFqDdBhyXk3Ez
         se9CaEjWn0lNGsa3vQ/ckN0iRmHUTcjvxGNaL1WKKcWZqaFQhA3LKhXGrklu2j0VSO+k
         5vRrua72Qx24Uoahp9RRem89yIUdZZS3cJwYsRhnKaLRneEwzOkK/3elbeBgbUHk5W1W
         +8zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cwe0i51SCZk3CLQMaY5KY1wqqj2RiORqp23tnMHlSrg=;
        b=eL/TuT+6W8GdF4jp7DZZGvXHyftHxRXwyRaQ0PyQMRYLcQbnK+I9/4tUEgKTyKj5Vt
         ImTUn4ZIDiFQI2FroRKWjqm+j6CqWHU/djydJ1jTPf1aXUNB99uNaDDODMxcQDB+zKHb
         vt5GXcHnNNqcrg7E/MLtzoJAR9yo2wYU7dFBrP9SDrhzZlXenW/wUmzWqTkVYe8jKLbf
         ir0dS89v4GzRkJentA927ltYY+NzUpkVuPyekvBZhWwODS/mmFsfTed/W6++EW9pwrOj
         uSylkdm81/a/aVU1gOSxN4x+et/huBK6uQ0RimYvehgk/9yx9v9kEulyn+BSfZ5XwGuU
         g7DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Wa3x4reI;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j17si468602pfc.5.2021.05.20.18.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 18:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C4D6561353;
	Fri, 21 May 2021 01:13:24 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Brian Cain <bcain@codeaurora.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/3] hexagon: Use common DISCARDS macro
Date: Thu, 20 May 2021 18:12:38 -0700
Message-Id: <20210521011239.1332345-3-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
In-Reply-To: <20210521011239.1332345-1-nathan@kernel.org>
References: <20210521011239.1332345-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Wa3x4reI;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

ld.lld warns that the '.modinfo' section is not currently handled:

ld.lld: warning: kernel/built-in.a(workqueue.o):(.modinfo) is being placed in '.modinfo'
ld.lld: warning: kernel/built-in.a(printk/printk.o):(.modinfo) is being placed in '.modinfo'
ld.lld: warning: kernel/built-in.a(irq/spurious.o):(.modinfo) is being placed in '.modinfo'
ld.lld: warning: kernel/built-in.a(rcu/update.o):(.modinfo) is being placed in '.modinfo'

The '.modinfo' section was added in commit 898490c010b5 ("moduleparam:
Save information about built-in modules in separate file") to the
DISCARDS macro but Hexagon has never used that macro. The unification of
DISCARDS happened in commit 023bf6f1b8bf ("linker script: unify usage of
discard definition") in 2009, prior to Hexagon being added in 2011.

Switch Hexagon over to the DISCARDS macro so that anything that is
expected to be discarded gets discarded.

Fixes: e95bf452a9e2 ("Hexagon: Add configuration and makefiles for the Hexagon architecture.")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/hexagon/kernel/vmlinux.lds.S | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/hexagon/kernel/vmlinux.lds.S b/arch/hexagon/kernel/vmlinux.lds.S
index 20f19539c5fc..57465bff1fe4 100644
--- a/arch/hexagon/kernel/vmlinux.lds.S
+++ b/arch/hexagon/kernel/vmlinux.lds.S
@@ -61,14 +61,9 @@ SECTIONS
 
 	_end = .;
 
-	/DISCARD/ : {
-		EXIT_TEXT
-		EXIT_DATA
-		EXIT_CALL
-	}
-
 	STABS_DEBUG
 	DWARF_DEBUG
 	ELF_DETAILS
 
+	DISCARDS
 }
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210521011239.1332345-3-nathan%40kernel.org.
