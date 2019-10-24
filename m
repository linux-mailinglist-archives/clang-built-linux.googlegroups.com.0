Return-Path: <clang-built-linux+bncBC2ORX645YPRBGWWZDWQKGQEUJWEG7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id D666AE3F9B
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:11 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id x77sf367041qka.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957531; cv=pass;
        d=google.com; s=arc-20160816;
        b=ecMC4OzBNfbkDbwbfQJ4Tc+iHtpPS+Q43lSkdNU8JbTqYPwVLbtgUAI14PPzJRs3vb
         XpifTv+WMLmgquPCP4aik1/j23kgB+KMp/pVk2AeupDYYejLMosYI932p+lrAueBJvmV
         EtY6+JRw3LC93pkmlLqy+gnBhvqT6LHgOw0YGLQO1rktGXbV0Dzw164ssSN/x7qHxfyt
         xsupGWEzjhf+BmB0VUvJ0n6ivwjxFqtJNG5anuFWkwZgF9LKosPXMBRz2cVWBK0LDAKx
         WUVkAe39KfNB1auQxjJpRiMjputO6+Iutkc94ClUgTz9NFZDfA4yYynclsHPkum8fjnN
         AXzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Q20goncjzUCJOuM9yP9Y9bWfChedGRUFSNGY5Y0m+x0=;
        b=xQDA+KhsrBQXHz4YMx9SjA2VGFepFlcnbZtaYw5ITXgb5FlrsFXLPKN/vUBiHbZVsN
         0FU4xNmgmpbHSaCSkrRFuiK7ultBeg/IBd9Ngi0KeqJjEoU9/mivsUw+eisdBKI4++Nu
         U+JaS5niQn0Z9EccoSl3P0J6e83DTanqoN4PJEPuQ5Y1lFYJbQUWOS2OuyQ0hE7rDieW
         Fz3+fm3vC/dS8L78oyQXzdpsvb636UL9qToD0bysvmeZVdAy9uMKpkH1ll3/Pb+/n7ow
         5v2Jw3+NtQa4njy16AHWa4eLqGTTCUcZ2Vx7hM5ynA4Qot3pDb8br9q2hV3c12x8F+ql
         ziOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h7CmDroH;
       spf=pass (google.com: domain of 3gsuyxqwkacwaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3GSuyXQwKACwaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q20goncjzUCJOuM9yP9Y9bWfChedGRUFSNGY5Y0m+x0=;
        b=bVuDFXbBaJ63N6cw2f+Fg28obq5qn1jZl4vfuwR/VAYcc/sElN/VxB0g0vaIyrZYQ4
         QRDDfo4+4GkKL+hakF6tYxz/I/vmzWJH8tWXrNIBkHxQVD9HLJ8wCpurTG34MpKSN1TU
         thHy1ODLsxqVbaB39+cAmVJUvWCopfyaPPru7pbGS6Vjr8ayngnqn5xd2XiEJ7j97REy
         AFqhcl0E28c1rjQwUQs2sSu9YRmKH01Sc+CM/WpwoMnQCWe7i4eVP0raCjjd+H+ZGlxd
         WWkQT43JrJjnzKaWT7sflTMkRbGjNfKUEGyjQlPM7d5CRqVPC6VHcbiWVH9xdb66aMJs
         JHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q20goncjzUCJOuM9yP9Y9bWfChedGRUFSNGY5Y0m+x0=;
        b=BvGwLjsCHGSQkWV2Wk/lsSdIaTUlp6Rn9ozjRHNw5aWnew4y6AR7s8LCzMJhe4RrjK
         60XUNqtaSbu2URdhWQ2xBLnO6P82MjmdwW7FaVxcHyI3fU9Zm8TdEUHoeZEllF7wBQCE
         B0YEKRV6tyn01kWVpx9f8cTkWCC6nAWNDuWeX6LpDS5bN0rXP9qhj4gJovu+fOJuuKQI
         IettvyxuM/VOmYbi2pVJIILgG71w/C37WhpuKkzkZWce7OVwqmdBxrbCR2vATEyhbKTC
         lTGagY51UKjAd/gKB60yuY1Tul6PeDXbOiHTVH/8ZYiYAVnEu0xq8hRZJrv3Qgzun025
         6OuA==
X-Gm-Message-State: APjAAAX/pCS/y0sY0fGGJojNymhaxoGJNClaohC2Ll7WfN5AZ7ouwKOy
	Jo29pP1VuKanBxnxCR4S2Mw=
X-Google-Smtp-Source: APXvYqxtO9QdKjPjFUlnzm56knIegifCTRte0rCCnwxSLCo2xH1hZHvvQhwV99GBOb7GxsSV//HpwA==
X-Received: by 2002:a37:9c9:: with SMTP id 192mr273920qkj.358.1571957530885;
        Thu, 24 Oct 2019 15:52:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3c70:: with SMTP id u45ls2287068qte.16.gmail; Thu, 24
 Oct 2019 15:52:10 -0700 (PDT)
X-Received: by 2002:ac8:768e:: with SMTP id g14mr127986qtr.378.1571957530600;
        Thu, 24 Oct 2019 15:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957530; cv=none;
        d=google.com; s=arc-20160816;
        b=i7+z+NCiUeKweUateafQrg0uPHcXSXR/eaG3RHosKGung3ygCk0IUZuMNrKIbxxc0R
         yPy+QfS8e3fe04NnI3jc+87XX9r7+2Tw2Jh4LhuHwD+rkgRAR1JNNjylj1iPbUyLGZ6Y
         5+kTb2BGqWO3q5KRatvkIiDrdaG6BXJW9QtPjJVefsQQeoJqMS5vos6TemWUvkYcRM3i
         mW2U+Qg2sdNqIXaOuXiOV1RNXVhhqjOKmh1krEVnyWdl30rxEoCXagDvj6v88vhLULqs
         Fdy+rHTofUpaT12Q2dur3eP5HXhmMOCYjKDtmh8wd3perj1HE9ClJ5lSEy4+xXRDVaai
         Xqyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=mYL9Vajfp90RBhmOr5x+royOTK5ijTSQrnKKnKdSwP8=;
        b=JQ5UwCBXLOIkYclGXlAabBYqpd0tN1KN25oE2ZfCdHfI6GOdnDUnvVO7tb2HH1dXsC
         +3eLZOKAPNxNFdQY7L7jU7wksOzOe/lu+57qpz9W5rmDwEFBeklXUdlUzY/EAcF7BgHO
         BcTB9+8KFC/ovgl+5X6zfYlzFuyzxMLqKj2QZ+Y0k9e7fNj7preE0eTcMMx+c1Qx3UH+
         4+Iqo0p+FGFa/Bz+l9M3BlKX29Bd9LhcCujtHAn7Z+HrZI0OIIp3PiLKkQiAkr1Vatlk
         uNlgcuS5CbkfmZ7YeLuoQLM0dKhiunpAB0A8CWsSW73MFCSN8VmbXlajalKss9kjCF+/
         aJPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h7CmDroH;
       spf=pass (google.com: domain of 3gsuyxqwkacwaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3GSuyXQwKACwaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id w8si25154qka.6.2019.10.24.15.52.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gsuyxqwkacwaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id g65so348165qkf.19
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:10 -0700 (PDT)
X-Received: by 2002:ae9:e885:: with SMTP id a127mr114159qkg.427.1571957529972;
 Thu, 24 Oct 2019 15:52:09 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:24 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 09/17] arm64: disable function graph tracing with SCS
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
 header.i=@google.com header.s=20161025 header.b=h7CmDroH;       spf=pass
 (google.com: domain of 3gsuyxqwkacwaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3GSuyXQwKACwaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
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

With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
modified in ftrace_graph_caller and prepare_ftrace_return to redirect
control flow to ftrace_return_to_handler. This is incompatible with
SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..8cda176dad9a 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -148,7 +148,7 @@ config ARM64
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_ERROR_INJECTION
-	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-10-samitolvanen%40google.com.
