Return-Path: <clang-built-linux+bncBC2ORX645YPRBOFFYX5AKGQEHXUFMAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F25725CA6E
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:53 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id 6sf1143372qko.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165112; cv=pass;
        d=google.com; s=arc-20160816;
        b=GICfCC5oD1/U/zwZ5z1n+0be2SF7mhLZP6YUd8Mio4C0m7IRuvCaJ39zHPhLk1k1PB
         9o5G3u62kdTzBBwm1+L0KFybEAB+yUhZDC/YsoKwQLdp2EZNTgdsbucKFhzM5dKTkOn0
         uDjQXZ4tJa7GjFOJtbMp4RiYuufiisA9TZnwckZOHW8/OZI2pKURoIpyhvKTlFkF6i8w
         W14hTAgTHc8IAPgSg+V958dLDGWrju8z028m4dMyPfOv5nYJU3IvIElbzkK4BTYne6Dy
         HFrofFdNBINYKJsJowFSdJWB2lB5FZs4xkdKgL14HxyZC4/fzxNV51rImzxp/MrAkp5U
         ECRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=drqosU/SUcsYinf0eHpAUaKMxGEEGToAKFwNgr58n7w=;
        b=uqd3JoxVLsy9xYz/5UuN8i2ubIKL7zib2AuRIR2u3kKgYCc0zT895YeIG+R8ByJOjO
         Y9yryAjC2ZOcpFKY/GJe517XCCNnVwFz70E/aaWuSp2L7jhyGYly4arTrssByJKTwo9t
         6JDZol3z/vNNF6YawkzRX0No/pKHv33Qe06qO9hB9ZWb57RcU5dUUadkxYE6HU5LQ1XQ
         y9Yiwiham8EzNz8b4Hzp8tM7xM8TD+CQy+1IolRfMJuFXFDq1n5JODG4DjoHpdYewAMm
         +sM+ppvS4IS06EJothh7TP/yrs6RpH/tVI1MJ7wKaFIIxDZhFCOLTqnrMTTRHzejcUxv
         4aSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQRyuXb7;
       spf=pass (google.com: domain of 3t1jrxwwkakiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3t1JRXwwKAKIUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=drqosU/SUcsYinf0eHpAUaKMxGEEGToAKFwNgr58n7w=;
        b=sWJv9ibAttTjemcutrl2oKihKSgYQypXV5rTN81rh8xRejig8FFHWSfO3b9/qjLJLm
         cRuVV89Ya1jQc0//CUvZch+qR2Qit8oxKz4zXE4zgYcWK4RfKzPhUI9rv3Mz+a07nPmW
         R6QYPd92+PHzflnqGtoYENoGxDf+/KZrWKFEOG/dXTXYH4JPSFlmSWCxrnkv6uvWNCyk
         2a6PQaG4R+bOrzbmZ0gcj3WFvuOGWSFIPYrNZUfRYme4oR4Z9MDK2hhHn5zJPybsDvUv
         2tK88h8n7wL8BxCPaDmxdTYBard240bBBhVSp6R3nWLVEojxP6+Qw6ChdgQqZZnLL6pk
         jVqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=drqosU/SUcsYinf0eHpAUaKMxGEEGToAKFwNgr58n7w=;
        b=TjPcAKa9sx7ih8K454ukK8do8XFpqw+lNW5U4xd5AzbIVATiqHzm2ALo2XCEm2y2js
         YP57qv122cf7ewf9fmtYU8qICu3ypWh1OqsiUQo7Sd3GCMZKaJn7QlBoAb/b2p+MVs10
         ooOrZNYY1qg2kpGoTTzTKpnUNZfNmaWFB3YHtKWPvCcuaYQSL6lOsH8xkkaHHR8tnDS5
         K9jjIyFPUJUb6RiVtixGcxGywkz6eC8pSeK3vg9WI6M4qe3J268j3L/OsucyQc9389Hn
         bh1TZEn+qzPgiM3htr4nuYzoD8xBAt5E9YP6u8gBFg2JnD6XqKzpisNbM7ekAsPTRciI
         +Pqw==
X-Gm-Message-State: AOAM533JHUnolf2gENWOplw8CuiqpKYFxrOAmZQ7LD3JUmu6tHuAP+uf
	2AjNOkH0fYKdAiSz1n4Ki+w=
X-Google-Smtp-Source: ABdhPJxP9fEFdz1YL0cSFn4vKZZnmxjQh5shQepgZTrr0588uC/EalfmokSKmVd7C1JhFib+amfksA==
X-Received: by 2002:a37:a64a:: with SMTP id p71mr5166402qke.389.1599165112626;
        Thu, 03 Sep 2020 13:31:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c9:: with SMTP id g9ls3548640qkl.4.gmail; Thu, 03
 Sep 2020 13:31:52 -0700 (PDT)
X-Received: by 2002:a37:8b01:: with SMTP id n1mr5000649qkd.62.1599165112181;
        Thu, 03 Sep 2020 13:31:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165112; cv=none;
        d=google.com; s=arc-20160816;
        b=GQxvl4Qk2tSGIehqWsBVjzCag2u2bzTOScj6KA+b52ARXqmWEloTOhf5cVRhUvefc1
         0mlKx+g6NL97tgXlIyPTKt4JX2UHK41k+QaCESO0+bY9J2HD4fh4AGBDyOyJD10UIGFX
         ck1kEYpBiIr+9ctQVD2A7z66tH8QQtNHR/LXc9qoOQWFq4Y9Jlu42Snki1aNCVcWnKLp
         hLrB36hnlMalHDyj+nmnmiwDE/+pZTikvJKLcHoY4Os3g0XJ5n/Qhzm+hrMn81wVqxPn
         lRanTw2Ciac76EA7Jdu5FKQG6s3TBvHYE0svYhFS6QxsCZ2uMUjnXX6K0fHPH6i5q2PY
         oBTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=KoA5zv+DpjEyp13/YuX/m1kwH/JJTx3lL+cQSxNvvDE=;
        b=KsPP/L6PiETHno3lYK6yFnpLhfdWaiwqHUJwwDCxa6FffmIgYPMsl1lwKR+j/6TMEj
         9niLQogdIBhfYFtx1+U0pBNnektomAKLdM5EESMqeMP4a27Co5iL6TwZrK9zxfFHXdDv
         GOIQh1WOEJnTf22ClssSvagvOykfeBwaZzw/A1ISXtjOef4R5xbF0zOWzHhFj61+0P3B
         ztXnEiv51rkGiNvcDt5fZQs/WJhd4Uhgc9UxA9K1IwNUAmMYK7UxqLUS2hjuQZ3ylpAW
         Lfmyvl+w//NR60I2vVqNMc+LRJcQ1bD1VSVnao5b7SAmY7E+aP0HHd1N5MOQcX6BmOyL
         zNZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iQRyuXb7;
       spf=pass (google.com: domain of 3t1jrxwwkakiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3t1JRXwwKAKIUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id q5si262917qkc.2.2020.09.03.13.31.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t1jrxwwkakiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id i15so2504786qvr.15
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:52 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:1105:: with SMTP id
 e5mr3719981qvs.11.1599165111812; Thu, 03 Sep 2020 13:31:51 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:52 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-28-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 27/28] x86, relocs: Ignore L4_PAGE_OFFSET relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iQRyuXb7;       spf=pass
 (google.com: domain of 3t1jrxwwkakiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3t1JRXwwKAKIUCOKVQNXCPGPIQQING.EQO@flex--samitolvanen.bounces.google.com;
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

L4_PAGE_OFFSET is a constant value, so don't warn about absolute
relocations.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/tools/relocs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index ce7188cbdae5..8f3bf34840ce 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -47,6 +47,7 @@ static const char * const sym_regex_kernel[S_NSYMTYPES] = {
 	[S_ABS] =
 	"^(xen_irq_disable_direct_reloc$|"
 	"xen_save_fl_direct_reloc$|"
+	"L4_PAGE_OFFSET|"
 	"VDSO|"
 	"__crc_)",
 
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-28-samitolvanen%40google.com.
