Return-Path: <clang-built-linux+bncBC2ORX645YPRBZEWXWBQMGQEPCOJGNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D397358C2C
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:28:54 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a6sf1678985pfv.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:28:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906533; cv=pass;
        d=google.com; s=arc-20160816;
        b=LUmwz+DOLEuZSSjgvMSjHvYoKOq+s3QHmYE0fZREP3745ASANckEhcqrHQlVWvntsD
         ec0SknuRchXvUf90iR7X0kHmfKJx3MjdJaDjn+/jFitcxC3VOxvAb0qAqrkxoOSgmaJG
         EO3lLwRWiBxzQ6OlUSGNGvgHIJxecDBDdSesPZ1tmHFk6mZ9UQW0CCdkh//9eqMjU2wP
         iRrvTAdRGeGG3PDlK7ShCs8Yc1ZuDneROWaVp/KIEMhdr32b+komSx1fRvqF8O4FE5Dv
         0fOsxfXn/OLXU7x/nKpEC3G0F5itX+6YMliHtZIztknVlxwbFuMLhbgJfJDNTxmP0tjw
         VfGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=RqbEEHR2Yms64HcKCCdth7qVYOwJSNrCJTQaSTHItIk=;
        b=Sf+pTGQGnG7jeCxemXyphr3Jrcxg5T2OvuOTt56LpD4yXKq0NCHLNBVQoWoUKi6E20
         gjvAAJurl2qBBWLlvFniQ/7kcDJjOuqJcSaPe/URyo4z4IyYavWTjKD/f++cM1wmj2l8
         YjJ30Sohs/V6NLUlnV5/IBuhhdtcPCAEsOK2V4Xq58IzCLu51ADNHt9jZWpVCYqFqRIt
         auCO5xSwBNpMJQczYRPQZbUDAHj9/Uy6FyPdhN0HbcpCbDz/nAMJTvGxKEMBCa7bXS9n
         +m1KitgtPu68XnBRuynsAkcp90SHn4i7XL0QIqKaxQiboP6OT+MAS7wUm90CYCX5zkVX
         9Hjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=prCsiu3t;
       spf=pass (google.com: domain of 3y0tvyawkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Y0tvYAwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RqbEEHR2Yms64HcKCCdth7qVYOwJSNrCJTQaSTHItIk=;
        b=CyhvWazZKQ93Wj5O3dgE8yGpcDDe50HzARvtt0MuSfx4Lg/Ku4KlFX5kKSJSoLOH82
         P/kHkHjCEAz3RxMGdXNZnQf3A29qxtLiidZ18gJ+XI5Tc+Fi3WJYpm4XI1Yye2BIW6Jl
         eEo3MppsNOgz0IRvefKCoK0Yy6MEbabNPYyMgfPNRuym6w71mwZ6X+OfeEAVGj5Mlt84
         49tR2Mpnim5omcGqGFmPOvWvJvmU73R7q7/E2U4jmkkgH1r604m+bETalhaOgtvJQFam
         lAayRYFuG7PKbqrMKddppXXvZ4HEmFQS88vmv0upmlEjdyJ8e5qycTtxjCdxiFCvKdrE
         7ZHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RqbEEHR2Yms64HcKCCdth7qVYOwJSNrCJTQaSTHItIk=;
        b=WTMVjL8zTAqHfOFpuEKhd16o7O/TD6rXHyc54QUKnji+MM0CZ4rsjZ25k68AI230Nv
         ORVh06AnrvceBVJwZeZK7aomlHvHcd3J48l7yeJM1q++z1OTsdXmZ+vca+9LkfkfQlmO
         MshYXG9kEOzzgfZojwAMDgRU/kOHk5pCzXwJCK73PWixxYu9fzgN//4kc2LO9KrwaQgp
         TmMFuM14CC7dcGfcMP6tyx7Itsssb4Vxq/+4s/oLBmd2RQQqxnb7xeUVFimJWrEnEJXP
         23QIxBu2vUCemMVZB0SYhHhviE3T4kQb50iveyP6NY5uIDyBYfk3kjWn2Kh1VessBoWx
         6lIA==
X-Gm-Message-State: AOAM531/uAzhYwiANYyoUHYqZ2GQIa/OXBi3KkkhATK0Kn3pXdzErQg4
	vd3XZF9dIFfcPJbAAL+3lAA=
X-Google-Smtp-Source: ABdhPJzw/ZcpvtQfGRC2rVGKm5s9afN9kvtyzE4CVKWXCvM1xST9KWjIM5ABehDv4IfZgeFfoZ0gsQ==
X-Received: by 2002:a17:90a:be04:: with SMTP id a4mr9638615pjs.169.1617906532863;
        Thu, 08 Apr 2021 11:28:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:547:: with SMTP id 68ls2395931pff.7.gmail; Thu, 08 Apr
 2021 11:28:52 -0700 (PDT)
X-Received: by 2002:a63:4763:: with SMTP id w35mr9325638pgk.226.1617906532318;
        Thu, 08 Apr 2021 11:28:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906532; cv=none;
        d=google.com; s=arc-20160816;
        b=bJr2+TiRMThUGmDn9yjsEZhXp+b7v8nDDlbWzinkgzQATu4TX+rBKWXK5LD3eTxkLa
         4hg9Yzt2rKRr3H7TbmA91eQH86ukzgBn6bLZl8HvB+ETrcPeSFO3xd1uHsmsgKd+7u3s
         XWLnE6WYDqtAsqET1kdsmRGZzsES83RRoMWk7Qm7hnLHfzWB2Z6pBb5gGaNWbydmDIlx
         C8C5WrD5ehMsjkYzqxQ/GBS9ZNvuDJqFjm3zDZCLsuSYsWsTeLZ0/LpkEm461tk5R6Ow
         aky4UUSRL9Myau8eT/p6uHPw0254ZdqGjoilNo6OJ25GdtqBFpln7aEGmCdapRcq3vFx
         jlJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=sqe+SRM2tt54QgMNprHB5Ltl/JmQ4l0M9EfeayUX7cA=;
        b=evQhqqE5pXei0wif6cCTQHzAkBSyEuy3q2eiqgkz0AF4XIH7mfUP4xJhcLDklUHtjw
         siu6rm5jk+ouJ7g/rh+WzEE0RpLdTcwJ1u9UAExWZ6D56/OzK55ym9OonodeGIK5DMyM
         hu5/TSVaUoTssoXRop+q0hEzLsWLr6MVn9lp2PwaVDAar2zDYE4jbS9wjSJSsrh69jPP
         I0wKzgmjqNhMpP4DjL9JYNO9QzUFf/v8ljCCpZTSugwD5JaYQf0kSeYCsW/W94jjW3Ik
         9QsQAyW6LjDFTHu70LCavW8IDdQIoxdA6BEmF1qBFWZagzycEk7801yBfEJQNb74daCJ
         QFYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=prCsiu3t;
       spf=pass (google.com: domain of 3y0tvyawkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Y0tvYAwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id bj7si4931plb.5.2021.04.08.11.28.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3y0tvyawkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id m189so1399132ybc.19
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:28:52 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:ae03:: with SMTP id
 a3mr14172639ybj.118.1617906531475; Thu, 08 Apr 2021 11:28:51 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:28 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 03/18] mm: add generic function_nocfi macro
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=prCsiu3t;       spf=pass
 (google.com: domain of 3y0tvyawkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Y0tvYAwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function addresses
in instrumented C code with jump table addresses. This means that
__pa_symbol(function) returns the physical address of the jump table
entry instead of the actual function, which may not work as the jump
table code will immediately jump to a virtual address that may not be
mapped.

To avoid this address space confusion, this change adds a generic
definition for function_nocfi(), which architectures that support CFI
can override. The typical implementation of would use inline assembly
to take the function address, which avoids compiler instrumentation.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 include/linux/mm.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 8ba434287387..22cce9c7dd05 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -124,6 +124,16 @@ extern int mmap_rnd_compat_bits __read_mostly;
 #define lm_alias(x)	__va(__pa_symbol(x))
 #endif
 
+/*
+ * With CONFIG_CFI_CLANG, the compiler replaces function addresses in
+ * instrumented C code with jump table addresses. Architectures that
+ * support CFI can define this macro to return the actual function address
+ * when needed.
+ */
+#ifndef function_nocfi
+#define function_nocfi(x) (x)
+#endif
+
 /*
  * To prevent common memory management code establishing
  * a zero page mapping on a read fault.
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-4-samitolvanen%40google.com.
