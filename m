Return-Path: <clang-built-linux+bncBC2ORX645YPRBSWWZ35QKGQERAGHUUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F3A27DA76
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:51 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id b109sf3769195otc.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416010; cv=pass;
        d=google.com; s=arc-20160816;
        b=AMwFPmb836/fom0qOAg09sqn3HkOHyXORRnkYLMOzzujTL2/R4lISB5HuMFxVY8dCV
         bDRhkii0TjDdjkmnNXlJvzhDFpJEsm5MTGhTI5MxwDfMHRaZeZH5//SgTqysbELfqeVN
         baFbQ3TK7pY+j3pUjWm7TctkjIM8iVUTPGGpRsHFVwHNwiP3MlMLwFk6ZbBW4kq0dwox
         KWHKE2pTVhsfBjHQ+CXPw3ZXb7XRGT7HC08/Dosb9BTxZ28Rr7DgCjWKZJzsrdJDuliN
         tje1vB9fUVmGPSOt5KcVheR2Njsto1k2m5MYslQc3wJJHLGPPh76+p2/oteXcCuPSbCz
         iw1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=JzGzKEXlv3IQFMhgninP1ueVJ8P4vlYTDhNf0P0CQu8=;
        b=NP0QgYyngUJMawSz6qzV6vUFAlfMDBN1CX+fYoP4EpHKSiUqZDe3+Xl+U5K3PvPNp9
         ibGQ7f3/NDV342BQIMtXmkI3DghWYxpQuc0ZYsv6wTqvZkiQSp5hXiyXQ5+x+CuNbWFR
         SDksiZlrSbHCkAYiresCVyhvgdiNgsEtCx6v91cWvEUWxkJWgpBdBJwo/AgPBvljN27V
         fYx+peYmkuCWv3Sb9p9ZdLlYeRgrD3DTpBQNn2NW04ml32xykBlCbQGmY7OrmGcsgSA0
         O60SdUZfbNW7aKB19iKpXK275kxiLStYmjw5hcIAQDzFKVhKuJpu12A08nQJIj/nFKzs
         qOTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZTQa+nx+;
       spf=pass (google.com: domain of 3satzxwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3SatzXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JzGzKEXlv3IQFMhgninP1ueVJ8P4vlYTDhNf0P0CQu8=;
        b=H37vRhcGNh0Ne1GrX1THOAwglRlkwewlGZjJH2Um1EHN/Kxm37rDH6bUyJQ6uwuWBM
         NoX/+ekSdt53IywSpyGkIR3gZCMklS99taVqdXFnVIo7PvnAFdwsbClk0I2GgshaB5e2
         zgPz/pywYyBzqVo+hOfvKa9maB5gS/wlVfcBFu09OhtJ47HU9y9a8Aeo8mNEfnjeHET6
         gnGgMdkbHdf/IEvUcq3m/miA4OqCWgDTbWoxK/PuDV/BlOKeh3GL1WS3eSLYND/IJM8Y
         0mp6ZG48gy+TkrnshBmg8Jb7Q9lvV9AceTVE6wLmuPBdlk3sYSAVSC6Qcjb91JsY8hJJ
         i5DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JzGzKEXlv3IQFMhgninP1ueVJ8P4vlYTDhNf0P0CQu8=;
        b=iEtGFGsG2d1zu1fAcGp+YKn6CK4Emja5AA82aIeSG2Jbg23KYj7FlQu4pJKXl+6X4o
         pGNzeVO1EeAnFv7OLFl9rCJHyTqnPV7dga+xXxhvtPOnW41IxRoQFPAaO9G/pZqqAx4W
         PTaNGEPtZbcJ8tzGIhQ8E6IP1NunF+HnVILAAzk44dfNk5JSAdd0T3ATKwW3bKUjKJcJ
         KorBm+De1sfrRiUQ20znH2MYycZ5YG47I8haeX7NxLE0uS0niJEGCrlAuFi9Up9IT0MT
         RgdygSG400d1L63ff3KxaXspTUJgNe8ftDW9t4VUCoWfqimGFaL4flHYhKx+HdDhHEFu
         +I4Q==
X-Gm-Message-State: AOAM533w8vXkKwFA6K9BjmTIgmN+AVDYzN/MeTlr3J62x3qntSIIte/p
	htHspnDD9flbFQrJEm981Ds=
X-Google-Smtp-Source: ABdhPJz3b57pBMxApYNNpELQYQ9Ozx57VeiaeOXSgw0jfTVTKmVm28Scx/sNiXULs735KaH2uR9iQA==
X-Received: by 2002:a9d:4d13:: with SMTP id n19mr3925794otf.351.1601416010644;
        Tue, 29 Sep 2020 14:46:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a86:: with SMTP id l6ls1476377otq.11.gmail; Tue, 29 Sep
 2020 14:46:50 -0700 (PDT)
X-Received: by 2002:a05:6830:1d8a:: with SMTP id y10mr4316642oti.92.1601416010234;
        Tue, 29 Sep 2020 14:46:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416010; cv=none;
        d=google.com; s=arc-20160816;
        b=z7rTexR99lfMveM9O8h/QBWNIa0/IixCsW4J5liWfn42FdrsFAS/Pz9lEYM78jOAp/
         +O1BFYO92w7LwuojJDidcmTasytMvRN5M5neMmrJnkHiYqLwYINmU81ZXUQJ9MmV77t4
         SOpv5Ple81l8HOHbqRwPS/aqqOv45OV2gLWxd93hd7QCBh9mI32KaY8yYH9s0l8AUL/K
         dUfGYz41ObBhIsuoqWqyY8HPRV2d20UBbW1nhx5jef7rirJtKAoAJptXaByNhDbZn0Ih
         JwGN53oyf0SDeo7+UTuNJst/UQC2pYG5agr+VCz3tcqveeISdyACRjtKiggvEaQAsuiC
         EBBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=wzTjCzGg3xaEC7ll/kCd4uRGsOqMFFvk2QDCKEKZJPs=;
        b=c8afUBBrtoYpC2Dsd0JMqn4kppiW+t7IEoIaLhHQEU8dNI3o7TV7ZNc3o9w6X9+wWR
         gUhZIuu5a62zDEFjlku52aQPOYZtwJhimxZmnk03Rr4fLqOs4uY+IQYZJ0wh9Xk54j+A
         8k1W3ZsWuJquxWxJmWNiGeXUD1Dx4bzyiUO9KgULfG8yXjqlf3x/aErSfwgxtJN9lkot
         PVJ6U0D9srQG0AKYffYWXQuY4yLuYvlShMBYGfee98Y1mpdjYk6JUbPZdyLWQnscOC8r
         NWXz0kG1Xi4DHgCrCvZbCRFq3zwa0e1TpUAbTOOo7Ml0t6hilxmkRvoAwZqFNq5BN5CK
         Cx4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZTQa+nx+;
       spf=pass (google.com: domain of 3satzxwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3SatzXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id k144si489225oih.5.2020.09.29.14.46.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3satzxwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id m203so3655719qke.16
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:50 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:58e3:: with SMTP id
 di3mr6759116qvb.54.1601416009709; Tue, 29 Sep 2020 14:46:49 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:10 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 08/29] x86, build: use objtool mcount
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZTQa+nx+;       spf=pass
 (google.com: domain of 3satzxwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3SatzXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
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

Select HAVE_OBJTOOL_MCOUNT if STACK_VALIDATION is selected to use
objtool to generate __mcount_loc sections for dynamic ftrace with
Clang and gcc <5 (later versions of gcc use -mrecord-mcount).

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 7101ac64bb20..6de2e5c0bdba 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -163,6 +163,7 @@ config X86
 	select HAVE_CMPXCHG_LOCAL
 	select HAVE_CONTEXT_TRACKING		if X86_64
 	select HAVE_C_RECORDMCOUNT
+	select HAVE_OBJTOOL_MCOUNT		if STACK_VALIDATION
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS
 	select HAVE_DYNAMIC_FTRACE
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-9-samitolvanen%40google.com.
