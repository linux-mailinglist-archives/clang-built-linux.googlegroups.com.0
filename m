Return-Path: <clang-built-linux+bncBC2ORX645YPRBTGSSOBQMGQEYM7TXQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E99735091C
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:41 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id o129sf3587233ybg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226060; cv=pass;
        d=google.com; s=arc-20160816;
        b=ROXbNuQo7Qij6A2X0NQgZgvIn+Qcxvlo4rNp9tDyy4sh+hzlsaqTFfCmJtY+YKhQAE
         kWuWQ3PKVjIs4agn/CHZuhJdLRC6qb6fV8UZrxcGRm5jDy/oONcWEGMPOYkoI4xPOa72
         BsrKuB7Gifg24q6KzpNHG3S6qXrnUErX7Zb3mBaQ6kq61ctATHARArzc7OKd+NHztpmf
         znZAfxP951y6zXShizNnCmIE6sryu/7396ZNCNciwEUIfNqvGIkwxU9yRqKk9+68IDAC
         7pNxCtAnTDzrZbhqUTH6dYHD2QFOQnZRUJhp0RCqf5hJQ9m+sghwRHLbbR77HLyxqMMm
         6/4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gp2G6wL0dpOKlCI5kOSyQLOtcoQncSrMNfyTUz6v4fU=;
        b=z1oaaVYGc3eBE86dxvZ7zhKubsrK6v5PMpzNSTKzCNT7qVZsU61Buxg3nOz2JAeC9p
         DPeoVQ4qPsFjR2LGTYZHGRxJOVI6bZO7p28jvXAS57KX15qnLnBfMecLA60C7thjX2k5
         N1SKyYFM/sAJZFNF+5rFxFlbCb0IYfgicrw3lkEa/GiPcIFrQp0mbIbdK4KGs3o81x4O
         Ir9pHWlQCJ7pMgFKxkedaaOvBQFbr9tJLefrzRfMHDLXFoFaBWFndYCPJzwwK08+M19Q
         AhCIdk+vSkeWIGF5m9DcO0mqrLaiXwDkQuVPweEnwIHKu7+sJdy6G2sbuTb1/VQ2LGKD
         wXRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lPEGjGAW;
       spf=pass (google.com: domain of 3s-lkyawkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3S-lkYAwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gp2G6wL0dpOKlCI5kOSyQLOtcoQncSrMNfyTUz6v4fU=;
        b=JCFvEl8midlwToWeD2u0HpoyDLPWtuBQAX7sYQtG5h91aFP6Y5vioDAItRdPHCeMNi
         D0R3Teoif+RKmDGWLpT4f5LdtUUH2NJmggGPvS8VGCW2foaEGFsGHDCOpl/FXk6fXn8j
         AL6Pmq+H2pveLjs4andDRcRZ9qKknPVQbOPMNdH8el28LBGrA0D2jJLqzO0Old9S6X+u
         bmTEZD4IwAlOpw3k5UzRdN8FRbCSSWp1v1xnvG3p2eHPPbwax1VI/+KecNCgMGYhXtCW
         6MYjNBlS4+B8nq1xJSt9iddGlBEZFBzR6Ri1EHQLPNTRmGbZ6rvMZkGWgsgzcd3AllG+
         HndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gp2G6wL0dpOKlCI5kOSyQLOtcoQncSrMNfyTUz6v4fU=;
        b=b6Mjyuz6OMSZ4+zklZ3n4GFmP+Tsl91fGzXkvoxEo0hKvYU6DyC+CWViN8BdzjtrXN
         bSBE9qfZqerCXh5ky+FsOIJFhGQ67ayOPPkffrTJLctIJcjbBDWq3fYzg3XZhP77rO/9
         3reQA1f0hNuO/OdHD/flitJNrl44tpD3wBBMF51Ex64hh5AOWTtk1LhChnh6RrRBzrtR
         Z2HWusd4yqNqVOsnnKCs3fWIBJJm21dGIxRrwGHDDjiExlReMzlGLmAPxzJ2IbYzxEzI
         f+2DD+L6UzsCX+082+tzHlUGpzqVRnNlqxbN6fGTYsth7oc12gpCK3kJVRkxp959tlHj
         WKJw==
X-Gm-Message-State: AOAM533n42ojZfTNUgjnlBYBmI0xFL9irdKcUnL0i0R4bLiE43DcTE4e
	VBsJSisDllqCTA7g6yUpvRY=
X-Google-Smtp-Source: ABdhPJyl6kgGnHapTQZwTzzZ83XQszHojJmWEEMadkk2fZ2IPN/dbhlWcpE7npJOH7jB7zEv2MNEzQ==
X-Received: by 2002:a25:e911:: with SMTP id n17mr6750391ybd.480.1617226060319;
        Wed, 31 Mar 2021 14:27:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls29080ybt.8.gmail; Wed, 31 Mar
 2021 14:27:39 -0700 (PDT)
X-Received: by 2002:a25:d2d3:: with SMTP id j202mr7375951ybg.157.1617226059631;
        Wed, 31 Mar 2021 14:27:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226059; cv=none;
        d=google.com; s=arc-20160816;
        b=eT6+GIsAvtogGnWQfLEWP6VkMJ2b+Qc2P7U7IM1nk1T+UBhN+uCFv2GcU6TLTgEyHw
         kvNgeWvT4InGVYpk6NKR9H2AyjFlGhhduKM+9EPslF/cA7HIjeRkBLXnFAFD7FWAp1JE
         kfCK/J8+WdRNWZMG8QIXP69g5ZON23DH0GGOK4dfTQf7Jqq6Hf3ertTPVwa9+YXAMUZ+
         uzUZrwi6SiG6eqUTSZd1RoqMf5xuJphYmHJdy5Bamwk4vb0B0h5tkpCALeNnicqR1xEE
         L8TxICp7068p1T2NyPCgTO9hqbv+w0D+mR2No6AUoSnJ8yCx7h/CqMO1f5yhvCx143jN
         yXRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=VrfRHkoNzR+0/b/OZROtS1u75H9EO8EEUwf0vNpKXW4=;
        b=h+bwiuIMi6g7vM6oJRPqLqYSo+T6AyXQ94dmA0WQ+RzUjWdr1RpAPxSvGLBVw6itVr
         BUx4ta438CRp9BEQeJpznGN7TfZ/M6m5PA/Ge7uBDiEWhMfHXyvzvSiBVa7Bf6BgzJxK
         lOaibWaV8uI5Ip0xoX2XHjBIyXEH4HI2rJIPIs+JVthyJ97/YHosSpFGBDjJ/s12KyzR
         D2k1U8xLHHoTDyVgzWXVL5Ve5KQIj+8AcEL7duVrlLhyPVRR8ijik/Z5Si4opFgELSgA
         EkILICRJncPcfLBVs6JaVRTTtb0yyXYWrKiJZXH+/ZiWJctCbevoO0kYID7Hf4FDb3xl
         bmdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lPEGjGAW;
       spf=pass (google.com: domain of 3s-lkyawkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3S-lkYAwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id s192si59529ybc.1.2021.03.31.14.27.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3s-lkyawkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id i6so3683767ybk.2
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:39 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a25:bb49:: with SMTP id
 b9mr8136529ybk.350.1617226059304; Wed, 31 Mar 2021 14:27:39 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:12 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 08/17] bpf: disable CFI in dispatcher functions
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lPEGjGAW;       spf=pass
 (google.com: domain of 3s-lkyawkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3S-lkYAwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

BPF dispatcher functions are patched at runtime to perform direct
instead of indirect calls. Disable CFI for the dispatcher functions to
avoid conflicts.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/bpf.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/bpf.h b/include/linux/bpf.h
index 3625f019767d..2f46f98479e1 100644
--- a/include/linux/bpf.h
+++ b/include/linux/bpf.h
@@ -650,7 +650,7 @@ struct bpf_dispatcher {
 	struct bpf_ksym ksym;
 };
 
-static __always_inline unsigned int bpf_dispatcher_nop_func(
+static __always_inline __nocfi unsigned int bpf_dispatcher_nop_func(
 	const void *ctx,
 	const struct bpf_insn *insnsi,
 	unsigned int (*bpf_func)(const void *,
@@ -678,7 +678,7 @@ void bpf_trampoline_put(struct bpf_trampoline *tr);
 }
 
 #define DEFINE_BPF_DISPATCHER(name)					\
-	noinline unsigned int bpf_dispatcher_##name##_func(		\
+	noinline __nocfi unsigned int bpf_dispatcher_##name##_func(	\
 		const void *ctx,					\
 		const struct bpf_insn *insnsi,				\
 		unsigned int (*bpf_func)(const void *,			\
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-9-samitolvanen%40google.com.
