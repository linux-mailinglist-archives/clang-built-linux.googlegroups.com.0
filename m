Return-Path: <clang-built-linux+bncBC2ORX645YPRBSGWZ35QKGQEQDPE77I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 8668427DA73
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:49 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id fs5sf4537800pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416008; cv=pass;
        d=google.com; s=arc-20160816;
        b=p1I9K57ExPlSOnDzkmzvsVGD2MtAIui9cMS3ObzYgSOzf/XkStm+hK952vBiu/7NAD
         kHhc+tAQ6qz2a3GVufFRksJATRz0WrGP1/xXB2ITTCc823AM2aYqTm4m5MDjLJ5KxP8y
         2zbnDCUQunrr1ECJPkpn3b5iHc5lMmvkVxiLoJj5rVPOK3mpuzh+SRrdd2PZhUOriwVU
         kEEVRxzvhZOOUTzh1SprPt5duvDZGDGe72jnIEAsCajlJbB1YR3kcTRhxUMZrp0tnKLF
         BrkvdGG5/KWWeI5ROXMZz/T3QFfL3yQG0FJPT/Er5cMHJHaAaUDcVAbnxs+ok698zV9Z
         PBig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=IYKP1axto9xjo1txs1D7Sq+vPa+F/7pYyLFQzhgtnBM=;
        b=LsVBZyxSdJ6MTVCrI/m3HirlzJYGWFYb9aPRSPEprbUhKMjbSCWmqOgnCFDhugB/se
         P81M9nAdKLNXCR0CKJDqtmwRIr2th9zq8RE0O4coHLT0Qrcobl2DisDxcSL5U0ZcqtWz
         seyK+fC+fwnuMXJ9fepv9DQFOCJF89cE5PXRh/uD+ge6l4nzc7a/Fi0cRKCQ0nbtrJHv
         L/GKpa2tb2MlYBXaw7K3rv9VuGvBbOoTcjBf1PrITPAwy58gdOFVhboozHYSj6V6uNqi
         Q9f8mYENQHpYYdGlQM91HLW2O9BVsUn7BRbdgHH1NEKmgsdmgy3UvhFPBy1mTfkqotwf
         sk5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dgV6SDo9;
       spf=pass (google.com: domain of 3r6tzxwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3R6tzXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IYKP1axto9xjo1txs1D7Sq+vPa+F/7pYyLFQzhgtnBM=;
        b=OanQOS+FFbjHf8pr3ppDRpqirFUmEAFJZE3PCTWgO1vQZ5pMxcqOcL3E5Chskd8G1N
         Agx2rKDML1mcrpvOnuRTLeh2+99h7vmUGPhUDE2PMiI1MRCYgPGmpQzYWblDrUU1Og8A
         6M/WU6ThXUDiOLfl/C9ZTlu37B/DRHehjkJEUrXih8pzDZFKqLe5/5zxnfJcNBQ9fnDT
         V/+ojWfkhBw4UfTFyHRfXKmhD5PmTEFZLhwLIDky6OOwsAqIlRGCG3s78Y7pBIn2qh6m
         x4q60TLC15Cz4GLhosdKJs63lfaAVtZMYjXeWixttU7j2BE6GJ85ULen4egtSlUd37bh
         HsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IYKP1axto9xjo1txs1D7Sq+vPa+F/7pYyLFQzhgtnBM=;
        b=eOhonodJf1hZrQbWY/YudRSlfQq0+b5QqnTRU3t5XgvIvc/BD0QC0gCA9iHkhcmoUA
         jFhCloj3WLZOXWGr6at8wlFLGkY/BWk+9me/s1mPI33R1gFbFhJeKCqg035e+xCJU72T
         iWBhWQd87x7+iqu24on/hIVHG7qivBC0heu1mKK2O1nzFDo1CqjjmeWaHafWgCv1LFnk
         uEvEW9oBbtongNuJeTgFMaMsQbOSHrILOQMVr0Y5eOgdevC2n9S8cS+cycK13biPsNIJ
         KL+cAnm74a7WugMa4aw+sbS7CdaOJsBdxovIv5WDg1CgzkL2dCohZIzV5iVV2dYuz0mo
         9aKQ==
X-Gm-Message-State: AOAM530w3p82pq2qfGOjSRsa3J8RyfRE1kLDeyUKb2hGruE+DnmnxA3I
	zXtmtluh0fdL8NgJbeEqFCw=
X-Google-Smtp-Source: ABdhPJxRzFetmMeIdBuRfoXe101OI8tCwLaKoSdTQ8o7XFkEucvf7UJhzv2Djn6GJRTC0k8zAObYCA==
X-Received: by 2002:a17:902:6941:b029:d0:cbe1:e705 with SMTP id k1-20020a1709026941b02900d0cbe1e705mr6609236plt.19.1601416008281;
        Tue, 29 Sep 2020 14:46:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d90:: with SMTP id v16ls145579plo.3.gmail; Tue, 29
 Sep 2020 14:46:47 -0700 (PDT)
X-Received: by 2002:a17:902:bf4a:b029:d2:8084:7e46 with SMTP id u10-20020a170902bf4ab02900d280847e46mr6773083pls.54.1601416007649;
        Tue, 29 Sep 2020 14:46:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416007; cv=none;
        d=google.com; s=arc-20160816;
        b=qb+/Fr8lJGpwfPkFi6OvqXnAv5spF30XkOlCXkve8wlI9oX6quAhxcCh0D8eftGPHd
         wLvgDdkG9njCRaF6/JHvt1M6WvpVFpHqUec8hOelGCzbu5VhRNqe6wFP0/9qqKCWDRvz
         2gY3UXKK04CJPf7SSz/b5o/lwr4N2oa7lwoTfigvlKgOeSCLkOXbBBTNxqVlQ2BqwBPd
         dYmWVjGHDpsNDsiUzKC0ThKcgOPv3VCJiw0mWI33sXDgSHPYRUC2ucEQlQ6yYDpQd3w1
         BbOaujxHBkPP5w7xwh6dDjMFZ5b+Ztw7K5PEzJCazdsdpzB7bHZdYfiw5UIfqnElhgi8
         x/Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=19SL9ILYFnZ21fbCFqMg6UAhhhxZhQrjD+s35+X1B+w=;
        b=ctw7ynZCst+GTvv7frZf1jsekH64R+Xtj71GrGNCPGnxN7bQUJuS10SjkWhlDIqIzW
         PF+qmGZvY9R7sOkr0EiKzX+gl6CuX4tQ9QGR+Nw3N4Y89n4Tp4icQde3OPxSvZSqyEEL
         OLn93r/06SPvLU+Z2k7NtukjcFUgCwnZahIadxf9GC8twJ48NfOacDYnT9w23jaYOmHM
         yRiiZgfrPt2hvsQuvd41wtnxfl0VZY5WDU1Rxh7Nlbz/L1LKW5OIsGTsEgDKteELCA0I
         MjKBYiaqTKn8yS/2oz3dbnaWPLwA2OxpvYRs5MNo9VsFjioglh1RTftcLradErYBl4g9
         +MMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dgV6SDo9;
       spf=pass (google.com: domain of 3r6tzxwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3R6tzXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id t15si651146pjq.1.2020.09.29.14.46.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r6tzxwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id y6so1757686pjn.7
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:47 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:c907:: with SMTP id
 v7mr5593265pjt.204.1601416007270; Tue, 29 Sep 2020 14:46:47 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:09 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 07/29] tracing: add support for objtool mcount
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
 header.i=@google.com header.s=20161025 header.b=dgV6SDo9;       spf=pass
 (google.com: domain of 3r6tzxwwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3R6tzXwwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
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

This change adds build support for using objtool to generate
__mcount_loc sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile             | 12 ++++++++++--
 kernel/trace/Kconfig | 13 +++++++++++++
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 77e4f0a9495e..9717005e41c4 100644
--- a/Makefile
+++ b/Makefile
@@ -850,6 +850,9 @@ ifdef CONFIG_FTRACE_MCOUNT_USE_CC
     endif
   endif
 endif
+ifdef CONFIG_FTRACE_MCOUNT_USE_OBJTOOL
+  CC_FLAGS_USING	+= -DCC_USING_NOP_MCOUNT
+endif
 ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
   ifdef CONFIG_HAVE_C_RECORDMCOUNT
     BUILD_C_RECORDMCOUNT := y
@@ -1209,11 +1212,16 @@ uapi-asm-generic:
 PHONY += prepare-objtool prepare-resolve_btfids
 prepare-objtool: $(objtool_target)
 ifeq ($(SKIP_STACK_VALIDATION),1)
+objtool-lib-prompt := "please install libelf-dev, libelf-devel or elfutils-libelf-devel"
+ifdef CONFIG_FTRACE_MCOUNT_USE_OBJTOOL
+	@echo "error: Cannot generate __mcount_loc for CONFIG_DYNAMIC_FTRACE=y, $(objtool-lib-prompt)" >&2
+	@false
+endif
 ifdef CONFIG_UNWINDER_ORC
-	@echo "error: Cannot generate ORC metadata for CONFIG_UNWINDER_ORC=y, please install libelf-dev, libelf-devel or elfutils-libelf-devel" >&2
+	@echo "error: Cannot generate ORC metadata for CONFIG_UNWINDER_ORC=y, $(objtool-lib-prompt)" >&2
 	@false
 else
-	@echo "warning: Cannot use CONFIG_STACK_VALIDATION=y, please install libelf-dev, libelf-devel or elfutils-libelf-devel" >&2
+	@echo "warning: Cannot use CONFIG_STACK_VALIDATION=y, $(objtool-lib-prompt)" >&2
 endif
 endif
 
diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
index 927ad004888a..89263210ab26 100644
--- a/kernel/trace/Kconfig
+++ b/kernel/trace/Kconfig
@@ -51,6 +51,11 @@ config HAVE_NOP_MCOUNT
 	help
 	  Arch supports the gcc options -pg with -mrecord-mcount and -nop-mcount
 
+config HAVE_OBJTOOL_MCOUNT
+	bool
+	help
+	  Arch supports objtool --mcount
+
 config HAVE_C_RECORDMCOUNT
 	bool
 	help
@@ -605,10 +610,18 @@ config FTRACE_MCOUNT_USE_CC
 	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
 	depends on FTRACE_MCOUNT_RECORD
 
+config FTRACE_MCOUNT_USE_OBJTOOL
+	def_bool y
+	depends on HAVE_OBJTOOL_MCOUNT
+	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
+	depends on !FTRACE_MCOUNT_USE_CC
+	depends on FTRACE_MCOUNT_RECORD
+
 config FTRACE_MCOUNT_USE_RECORDMCOUNT
 	def_bool y
 	depends on !FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY
 	depends on !FTRACE_MCOUNT_USE_CC
+	depends on !FTRACE_MCOUNT_USE_OBJTOOL
 	depends on FTRACE_MCOUNT_RECORD
 
 config TRACING_MAP
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-8-samitolvanen%40google.com.
