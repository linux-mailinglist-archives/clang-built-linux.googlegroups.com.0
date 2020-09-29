Return-Path: <clang-built-linux+bncBC2ORX645YPRBTGWZ35QKGQEF2JZIEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AF727DA78
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:53 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id i18sf4776659ils.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416012; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7IBqJ+IYdq0pfeVeuHKnGxBkjPzgBbkfqz9rvNLlkj1N1Y/eWCRzDuno3j8TlKNgr
         AlDPvFARNuOtLtp4U2gCcnbTxAoQrZGF1penJvvO8mj/unY177itjh7LQ1NQc/seU4W2
         2hffGYNelx+1aY4KbQ0a58+PTFtO2F77+3OWXNkyD+aiJn5QiSALuk79IeXFdBsVMMSp
         eN9HSJ1swa9kIoCEJSi3TFlSwEfa0PWf/cll4cF2GuzxgpFFAI7EFScOCcrd+DDyorTR
         vc0FcijXE3St8iUMzXXTM6OsULZ6xpwn/3JTxc8aCPUQ67WiImpCQmFGVYXgaGRbQ9Ob
         6w8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=J1jWQMDMtXknrV3TiZ/wr/ZZEly5tzM/4OZbEuubtFM=;
        b=O4UmT1WQkI29A56J37AqsHBAwlW42cXxOTdHOOqaSn4wpxNfCHjsOqhwuiRJaj07mS
         zN4Nm0OLeh9mL8Rpda/Mo6E5e0rXLf+YHcLCSBrd+xXEv6auC3/d/ahrR0iMB7w3jZxx
         Ur3/sWtPaGjuU5F4GjHCn21e1g5+2tL/xDPk7vBF3fIDoWxNy4rulYgzc2E3vKZZsrJC
         LxY7Z0SJTbClVZNeQfYNxkmAyjcDqBjYB4b3tPj17UG9/RasmMvUeIJPUGW5xXP252gz
         emAI9nzb+zhjMym5GpJhMNuc2AUULfeNR8T/qhzdqTlsMRtUCJ5NPaSHz3ovd8/DGJk/
         wBCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HdK7XgY2;
       spf=pass (google.com: domain of 3s6tzxwwkahiiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3S6tzXwwKAHIiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J1jWQMDMtXknrV3TiZ/wr/ZZEly5tzM/4OZbEuubtFM=;
        b=DPynzWlZs9c2jr9MsyI3fg0NaD+SvR9DlDmClUtO6Bj/oYuzOxSVqD6np7C+QeUMcD
         eoQ2mF4kaLE981tBZVyP7ez7sZFTXgoqrYI0V8FlYwafWbttsryBMijjdsHbcyIsziqW
         lr1VMrqC+Rex1RblCbui/W6rfzFcnodqaJhsxbqhg9Ae/vzgp9BtpqrU6RJjzonY9CyL
         1iXixiHeIFHqAVeudtyMyYPLS/LcIVfMVcshk9rBk7Jy9oY2XGdx1K6UmiK+pM8VXc2Y
         W15YDOIQ8j9f1LZbnFfscyTifZu469MuJTsNKpEOnnJEwBsyFXYKBjJ/wDsLPIl7ab+v
         el4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J1jWQMDMtXknrV3TiZ/wr/ZZEly5tzM/4OZbEuubtFM=;
        b=RRVDUiuOomEOPkPJpVu+s95nSTb84lu5D3U1kyvq20hnFYx3v203yAcmuwM3VI6k8R
         SHxXxjjUElVeb8gc81KEfQNFpq2YHWOp9wRAhZXypzDUKo2psifF7bAli3yknjlmaWL0
         abFBX2VD6xroWdZiulkCSyIwonwOnz9L6ShZEPijj7/nuEzItibX6G4z6hP5CzZZ6I5n
         FYiTbbRtr5FZycUrwfSZQC3naHJrU6wObL5fk1TSFY2QAop84ckJ+qpG7zCWfHt2/pGy
         4kWnKvQew34LoRWKfLePUH80+moy52PnlTgs+9GlooFg14ctVzMsN36tSfMHoBJqs8Yo
         yLbA==
X-Gm-Message-State: AOAM531qjZKY0QQZP/sEoqsR+FN6PTH9eOSKX4MoatfLTUwAsmnn7m0F
	hE6qSZ/rnYd5IbULvg82zAI=
X-Google-Smtp-Source: ABdhPJxgBkoNLEiqyNpVo72DqEFsM9LPtRa/9y4tYHcipvDDMDlbT9I+tSr0EpBfkfcXsapxQsG8Gw==
X-Received: by 2002:a05:6602:2c48:: with SMTP id x8mr1845709iov.152.1601416012741;
        Tue, 29 Sep 2020 14:46:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c148:: with SMTP id b8ls34285ilh.9.gmail; Tue, 29 Sep
 2020 14:46:52 -0700 (PDT)
X-Received: by 2002:a05:6e02:1045:: with SMTP id p5mr4756072ilj.34.1601416012416;
        Tue, 29 Sep 2020 14:46:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416012; cv=none;
        d=google.com; s=arc-20160816;
        b=YCqNBL+DEZMr5ftLMNIDDDhI3AIfa29So2pCFcqVdyiYfBXNNNDU5cT6QCvYDHKSgF
         qVoxlGnBff91rNPD3YIjKaNdxNGqgYhLng5j364M6kGDS88DOD2S+j6Q6nCZIJ1Yv6NZ
         iVuqcYk5ifL2RweBVEda7Bae9EXS9vXJJHLcwE4PEVIBf24yUG7QHOr4o07OtOtsswNC
         ZE+/t8CRSaYij1tf9sSCsNCtb5ijB0x5Au90ZsGUJtBOmklsRvJube+8hWxDxYJcaaCA
         X+4dcAZMKNpEANxHpGGuNIKwzTUGVlbzYAnM66+OCmH7qGq//Q2I8YPEqZPPpLIsKo/O
         TUDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Xjrukg6K3IydY/lqqi+bCZNdR5RjdEmABiI8yk+fZMI=;
        b=Npl67RZNKHxOFDZhQIzJ9q+5/ZmnlfplVQz6VdEJsTqR6ytn1GrUdHzyb9qkCtY9C5
         jb7v3w4tKSZTdwV0W4m/SD16+2sQelrxdoLOx6LoKdn8J93qEOmWMjTMB6gag9+ysRNM
         nVXKQHaT9aGymRmhxLVdjy4LZK0CzeKClH7qRRBdB7fOGqy0K+RIwWJLf+G7c52fOIWO
         Wc9qYjBuaNhUmPXpqCSLmvbAHqqDBu+vslvZ0cVVQ0g/kjkRt8Svh0P86JV9BeT+Ckbe
         fPZErwaj9WZfCGgtWJK0UD6+56tpB6ntX9Ah5yPXnvRmbCOwDSmVm5tl+4B3xrFAcllH
         cnbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HdK7XgY2;
       spf=pass (google.com: domain of 3s6tzxwwkahiiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3S6tzXwwKAHIiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id y1si553677ilj.2.2020.09.29.14.46.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3s6tzxwwkahiiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id w3so4055682qtn.16
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:52 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:42b3:: with SMTP id
 e19mr6361028qvr.6.1601416011975; Tue, 29 Sep 2020 14:46:51 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:11 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 09/29] arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
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
 header.i=@google.com header.s=20161025 header.b=HdK7XgY2;       spf=pass
 (google.com: domain of 3s6tzxwwkahiiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3S6tzXwwKAHIiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
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

Select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY to disable
recordmcount when DYNAMIC_FTRACE_WITH_REGS is selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6d232837cbee..ad522b021f35 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -155,6 +155,8 @@ config ARM64
 	select HAVE_DYNAMIC_FTRACE
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
 		if $(cc-option,-fpatchable-function-entry=2)
+	select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY \
+		if DYNAMIC_FTRACE_WITH_REGS
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-10-samitolvanen%40google.com.
