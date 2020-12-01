Return-Path: <clang-built-linux+bncBC2ORX645YPRBIXPTL7AKGQEZ4RN2LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id B48312CAE94
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:39 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id v4sf1686213oie.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858658; cv=pass;
        d=google.com; s=arc-20160816;
        b=roVQ207Funoa7luNTQ5y809pqTyaMq2qQz9limJ2MW1Sx0eOz5rWAPdJCZI8BUCZ2Q
         MikOseAemouFmvN1rmcBjM8gjgJeUROjydPd6+6R9lJh60CFamkt6CjfG6JvoC9BbvuH
         I5kGRbOuIlNFkiicxXO07aBU+nHNSbE+d2Tr8MKREFCLONcK4QXbRyLUlguUL+4SC6TJ
         P+D60TESp7Uld0WyMNvUmCkCEhTKUWid8C+TRTM7wHh5GmCrJXZnk1ZGc0bpoGLKJOPQ
         o8k7BLgH1sEf8qcck/98dS8oXH/CCHYFzXBA43gftfoXrQynIJ92BJGlcpotsy/Tka4k
         pucg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=H/fFeN2OZn1Mw+ceoT27iIvwOEluUnMxIvUKpKkfvtw=;
        b=wF/dwfBmAbam06Rld4me/fRsI3rVSA+bUVPsEXBVbzcAoiU9D7vye2/U02Buy8ymEm
         BdJsWZLIkzT87fH9wwN3wPVM6YHIbLl7pt+hEfmZDQVGnM2nfRn9rj5UI33XMOOokkyB
         cP1nceEj8Ym/NNxzdZvrRb6mYYrnixAtRIxBJ22bR5np3WncwAuhE9bjKLZYkMPJkpTm
         4UnfQ3ys/HDHr1JUxas6osaBPG499j+3B7wHgz6xGPHkHyRZDtEP8/lKcIZnT49h58O4
         i7cjErec7guSGnMcBfwpli7jPD4ok89LSbPilkPDGdJ6muVlchdE+NAsyf5y7xjKBg+Q
         rjMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oZ+MM9v/";
       spf=pass (google.com: domain of 3obfgxwwkadaemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3obfGXwwKADAeMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H/fFeN2OZn1Mw+ceoT27iIvwOEluUnMxIvUKpKkfvtw=;
        b=aEI9AMShYieU9qOT1U6FhZwxDhfxaptRzAmaTPQ65DQpvU3Gh9SSQpXL7WrDHarcak
         JJo3R9UGQmprGX1jQMDUelraBhU2mXs2DMd5uwstdIRkTO55l0FI3cLywKJlnCCXsPcI
         pXbE/32IIxRSjic0bPB0UG2E75ifHvuZzg8zp7qE2Qk7S22d21X128UeMXi8IsmU9ZJw
         ZAoEdOp0HubLN5mQRmxFY+NA3C5qDR8UvXNvcHPOieGJ1HDrLUgSLF2PhXvnp3uTyuBX
         rXB5MJy+Z2M+drkt3hJUJwsqGGGiGIelRuzVjN033xgN9hMU6OsJoKmCt1iCXoMJj34n
         ZOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H/fFeN2OZn1Mw+ceoT27iIvwOEluUnMxIvUKpKkfvtw=;
        b=IZX+/wWdP/OZqmfouPK3NtU9VyeO02ereIpohyV4iVZiQbfWKNsM3YKKPkPoKSp11+
         h3Fcwy1qE0XYXqN+E/8VtdnP4EVVfAziclK1F/j1kkvJfj9c6nIfY2l2J+A+nwYyjIU2
         N8qvPlzVEktYO/9HTF0z1+gJI79lUUcxRz3Xd6Wn3o9YrT5mckiqeLPSWSsrlDrrsMmK
         ezaQeQ/gZm2fpwwJ5hQ/co8l80yReI4Ct1reu8J5owJcpwy/NKR9s37v0RDHYioCbVgQ
         MXxlA42wqePP4FD1itIDblyNrNip4vLXq3WDmfk5ma0OHZRsGq6PiAkYqrVo4xP7Lxmq
         /oOg==
X-Gm-Message-State: AOAM530r0b0UdyftfGWmsezSzHv/EKwtYDEzXo6+t8EGkx81Z0TugT/A
	VpRfkrDBaDur1QUOMXkf3As=
X-Google-Smtp-Source: ABdhPJy8oDtu4wKpB0288xmKlWNk7a7Qdh2XlKI2xfpsSlrwDtkyVvEK4skLNbC8BHBNozy544kZMA==
X-Received: by 2002:a4a:e972:: with SMTP id i18mr3349435ooe.17.1606858658699;
        Tue, 01 Dec 2020 13:37:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8c3:: with SMTP id 61ls23909otf.6.gmail; Tue, 01 Dec
 2020 13:37:38 -0800 (PST)
X-Received: by 2002:a9d:6f8e:: with SMTP id h14mr3427145otq.257.1606858658271;
        Tue, 01 Dec 2020 13:37:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858658; cv=none;
        d=google.com; s=arc-20160816;
        b=V8iyTR2emorDex2jmIpSVoNsj0mLIV/FmTEOud938ZRqEJFOHAvSTOYYjse+O75lT0
         exxJq9XxIB1v5X9O1yonoQBpeOrOB4pscfMrbUc2YnBvb7glPgxsKy+jeImEIn1zS86l
         Uat77Wmk+UKcdHgRIMqOSnnnuW3+GcQf9fpBzqGXV6sK6MfycpwBNqaFu0vZbi2P3mRK
         jpjVjms6qz4GzQEvvnKXXDUWcT2EJBXZvvng/T2Vf0xGP14oJILzWsopy4B8lOyidSaN
         ZrK31rtfWYFX3CrToPSLDd1104Jn41IESVCLbqnh7U2YWkAGvakXpTYjLnyUxTb5M3Zv
         CvyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=sUICI29mkgxH8XDf6qhMCrhn46+Hzc1owynREvsajYA=;
        b=ubpzvrwj/pbquugMML+BdGkEuWt36oH/uM1bU6EFm8hScWBS9qS3zi0IhdQIDjZbRO
         6/Bckd00YN1kPrge03UIywBsTFzyQBViAlx2iKnyJ1n0eDmrUVB/Ylw4bF+OqMy9eu+o
         FmI+0wDFn3sD+4TBF3IJ8fLBgud0yrC5lNIgcmhPQOhcN7hbPxkHV0iCkTtPT3LgvL1w
         ZYeQjBDDxFGzSQD7IX93injkZqjFBdHaPOfN2AqcVxsBgbPYLZYJEeYSLIvoaxJkaJuJ
         7PGxxNNVsUpgmL926AlhT0L9hKM6lCOIS9XUWZ9CKxxl9713pZrw1bV/l/NXDbJM9DlM
         J5fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oZ+MM9v/";
       spf=pass (google.com: domain of 3obfgxwwkadaemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3obfGXwwKADAeMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id b4si112299ots.4.2020.12.01.13.37.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:38 -0800 (PST)
Received-SPF: pass (google.com: domain of 3obfgxwwkadaemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k7so4017094ybm.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:38 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:38c1:: with SMTP id
 f184mr5273120yba.41.1606858657749; Tue, 01 Dec 2020 13:37:37 -0800 (PST)
Date: Tue,  1 Dec 2020 13:37:02 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 11/16] scripts/mod: disable LTO for empty.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="oZ+MM9v/";       spf=pass
 (google.com: domain of 3obfgxwwkadaemyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3obfGXwwKADAeMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, clang generates LLVM IR instead of ELF object
files. As empty.o is used for probing target properties, disable LTO
for it to produce an object file instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/mod/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index 78071681d924..c9e38ad937fd 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 OBJECT_FILES_NON_STANDARD := y
+CFLAGS_REMOVE_empty.o += $(CC_FLAGS_LTO)
 
 hostprogs-always-y	+= modpost mk_elfconfig
 always-y		+= empty.o
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-12-samitolvanen%40google.com.
