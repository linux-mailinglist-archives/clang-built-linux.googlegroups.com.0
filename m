Return-Path: <clang-built-linux+bncBC2ORX645YPRB7OWZ35QKGQEL6DZPZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D07E727DABA
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:42 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id s12sf4836016pfu.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416061; cv=pass;
        d=google.com; s=arc-20160816;
        b=EvNxEvTAaZJL+zmPTpmqEEWFZBqZlapzmLzVEyaA7CcyXfmuyQAGBiyXbBeCNsINqv
         51x2MjDQzAIRiO4DwFGVlFVUZ6Xv0kTOBjFoynSO8e55YOyljQ1YkXH6vOR2g4DI23hX
         hGN2skzx9FIz8oho95jDz0YnQ6Mcc7O6Y2E/lMU00n6o2h//VjqDBitjnY2/+QdI5WGQ
         EEIoHd+ysC69UAVPUOoiFiG64SMNGwiTkN/+wbfMh0afw8T+BxewokPMNLixoQ+Kl2K/
         iNxPG39+db+GIUbQV7IVfN3/HG7lqsyoUFri5jYNqvgRyRgrRSMWHyIUnXQUCFJEFL0h
         3urw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Ro460WxPS8GmJpj5d77YK5qhJyeBXOF4F4PJODGWL98=;
        b=uUi23NkV0NWN66g/WFP2DNTl/5/QNAGOIEn2CcSyU8c5ykpmmM1w/duafKBWTrZSOh
         nzUFgej9KVzGSMaC74U3Q2L7b7KUvX46+8b3US7odED6Uw2ChBk4CJGc45wBP2RDLkH2
         R9QeTG7FtqiVS6UkuhFdRJEbrz5X6qN15pC4hUTSnfhwuU0EUqNzH7Rqx5O5hcPPcAyA
         Dz4f2u7PGDP4tMgI9wcOv42IP5Zj3KuI9f5fLwEXYUxpHXJQMM98sOsuclLJuVkar5Pc
         qzxFzOdEFpeJJI2BqncK1OFqTuE7+y7uadIoa9BdK8LBbVVMa+GqP5ILGZ6fJ/a2/YXt
         YBUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eAC3sd7F;
       spf=pass (google.com: domain of 3fktzxwwkakmvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3fKtzXwwKAKMVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ro460WxPS8GmJpj5d77YK5qhJyeBXOF4F4PJODGWL98=;
        b=rmAfZc1zC/YWIl4MMlEd3kxZ9VbZe7mBzqTCo1afaOqVnmGWT2FuBzefXYCe/DOiEe
         14HK/sH0826X5nJwAHu040hlBKXXvVXWALMlNbyo9yPGI8lSqcNAFM7kO1XvErnHFi4a
         DZkKqvMYAoOFHk/5MRFtVbY8RfT5GDqqWZeG65mjtGylfbkYepQ33rRp/b+m+UWTQylp
         fM1vjn614+nFG5sAmmshtRLmAxi5NlFy1jKRg7j1vozjWDgq6duyFVP9NMrHZ2qf40QP
         UJR6Lj3qcl7TA26HEUQFdMRVrDVougY2I+W6NFwpepcyHL/YlsB8epqky66twuEdOe+N
         xchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ro460WxPS8GmJpj5d77YK5qhJyeBXOF4F4PJODGWL98=;
        b=XXrQO8aO+HphQX8AFdobGgZBCwsgVJfQaflW1aigbbiXWNcVCnraOtkBWbL1eBQrh7
         yoYVNkoH9cZyGTfrqI38QX4FJokEkfIESZDGjXyEnmLWRw2M81o1mPGtFvs7jd3ro6ns
         Qc9KoiICM4Tf6d9ZIw//t0j/xhJmjmdeqxvT/nkszjy/7S0/7l5/kKaQuT6rFPAQT9IT
         qNoFmPcRNgw+sgF1sV+YxKMJOcjo+S/0z4H681Uzybf0GTJEh+OP2QXHob6Mth2gcL+i
         2iEQ9JW9Ilr0qRIvNxliDuwtnPBgz4V9OfP77RXgaJ26P+I40U+0MzvDb+9ezeeIwHsK
         tQZw==
X-Gm-Message-State: AOAM53130lxVWGp0WqQ3SMKU9kQCzXrRTqmMLTd0INAmfMqKi/OYk+Gn
	Z7ZZOkFyeqsJzEif+zq1uM4=
X-Google-Smtp-Source: ABdhPJxINYvNX1gW7gfqwtrCrMYu5++GlYvGEmIAHhRgMq4IBS3hbbF1xce8gPxtUJnMQhyWAL+L+Q==
X-Received: by 2002:a62:7fcf:0:b029:151:15e0:ab82 with SMTP id a198-20020a627fcf0000b029015115e0ab82mr5923753pfd.80.1601416061554;
        Tue, 29 Sep 2020 14:47:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls79159pfq.0.gmail; Tue, 29 Sep
 2020 14:47:41 -0700 (PDT)
X-Received: by 2002:a63:441a:: with SMTP id r26mr4888291pga.290.1601416061055;
        Tue, 29 Sep 2020 14:47:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416061; cv=none;
        d=google.com; s=arc-20160816;
        b=YFsEwKYiMCXMq2WvZ3gJFFi+xuDTIAqkzrGVCOrpwpmgTRFbd5fuvU5ootsAKjHhcj
         cKCja7C6rV/buozdQjSUc669aoW9H5u0t+q1DNQCtIEK5jZGQxnR6iHwKCyZ+dtrOkzA
         wrpmpimLftFEYu5EOsKeMXC+sIB2w5EW+13E1CiAJ2gJVNWcPYP3KlplGzqvbpwIQ2QD
         1VyWx6lRQRnhRK3eG3DkO+J+rR8mKVkocJjJAW3cVbH6NMstsaBKuuxdBqOC6seLWfun
         4Dm1G2IjUOh4yRW9YgykRbR9ATKuhW4c4pnzW4B1Xzt2R57C1oVOd1zzajC2b5v5FZ+j
         NOnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Dx9e+jODClwF/iJJnqk8YtFURfMacOCvss9V22Z0Fc8=;
        b=LdYd5X0+e2pT8kBx5PDHSbX5xzevwWfFvOILAjiWAC+QjuY5s8xTAVM6PaTobBe3Wz
         VOMgC5WANNXjTSS4s068T4Q4SpzGWDxnZMnwegdGAA4PDaYt/soIsAo0jjlxQ662rvxi
         IURjMmyYIW9ZKN4Hu3pxRtMwNFX3MGGHsj6FBL9UY8sBS13SAbiltsqA73UaOaVTTmiu
         uj42sm1pu1850cF8klUOdU57FPrM6TGsYms741BqOL2Ih/zx1T53gbhUHoYtLSXK5IuB
         SXmQK336YkQAIwEev1YhnzY5luM6LH4PNWKFNXXsrHJ+ML0ZU7yxlll2VkRat5iLzLny
         kAMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eAC3sd7F;
       spf=pass (google.com: domain of 3fktzxwwkakmvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3fKtzXwwKAKMVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h5si89050pfc.0.2020.09.29.14.47.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fktzxwwkakmvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id z40so6355506ybi.3
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:41 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:bfcf:: with SMTP id
 q15mr8695443ybm.133.1601416060255; Tue, 29 Sep 2020 14:47:40 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:31 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-30-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 29/29] x86, build: allow LTO_CLANG and THINLTO to be selected
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
 header.i=@google.com header.s=20161025 header.b=eAC3sd7F;       spf=pass
 (google.com: domain of 3fktzxwwkakmvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3fKtzXwwKAKMVDPLWROYDQHQJRRJOH.FRP@flex--samitolvanen.bounces.google.com;
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

Pass code model and stack alignment to the linker as these are
not stored in LLVM bitcode, and allow both CONFIG_LTO_CLANG and
CONFIG_THINLTO to be selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig  | 2 ++
 arch/x86/Makefile | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 6de2e5c0bdba..0a49008c2363 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -92,6 +92,8 @@ config X86
 	select ARCH_SUPPORTS_ACPI
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_NUMA_BALANCING	if X86_64
+	select ARCH_SUPPORTS_LTO_CLANG		if X86_64
+	select ARCH_SUPPORTS_THINLTO		if X86_64
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 4346ffb2e39f..49e3b8674eb5 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -173,6 +173,11 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
+ifdef CONFIG_LTO_CLANG
+KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
+		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
+endif
+
 # Workaround for a gcc prelease that unfortunately was shipped in a suse release
 KBUILD_CFLAGS += -Wno-sign-compare
 #
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-30-samitolvanen%40google.com.
