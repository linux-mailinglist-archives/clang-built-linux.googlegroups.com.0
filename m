Return-Path: <clang-built-linux+bncBC2ORX645YPRBLHPTL7AKGQEWMWWL5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 172D02CAE99
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:49 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id j24sf618510uak.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858668; cv=pass;
        d=google.com; s=arc-20160816;
        b=vdadhL5TfbrrbkUO69lMEB1VSt+hpOjgq+BeYWPNPsx3WSlNKluq//1wsV2aiZDZC6
         xtkdnG0YKPIUkWeD/Dg5886C4BHdpobSbb61CpIFktToNjtrsiNQF1d78VksNzQerTaT
         8F0bp/9SkLDa180BwIb0zPIBK3vuaqSud4QDl/L0M7sZMOFkZ230TPmrBtgOQbGCEfb7
         9YYca4IHKbtKlyJ1/I+CjK932HPxLVSxNYIFf3VMmCVBS3SZ+JrXe9UkT6hCjyN+91dO
         vRVVNvtlo3cNJjEv4GhUQ/gM9IiEkUZAIrnqYSoc69NI2usB4UiStUNCn57O3NSvWV2B
         bcFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=s9I21l8KolYRq2ahVCALtPp73E86l3lEuobeFtM3+As=;
        b=WZTdWrHhel4xVe9ySoIJfavIEdYKruPwOEuKkNGhZyRu6mgSL45HIsXjb9nFW51g3Q
         4khhP6oDJo1sHBHjDNG46Ar2YMMWVezZjrhEjumWj45glHRCtjVHKkQJQn4lpHhXUkMM
         uFsI3HsIaWU25Fb/zZhcpqnKjNbfgII3RRldvPqKgPXMYrd+YVLXFtEzne2gdLPTVEJi
         3Q4tlIAXmpQpu7F2ZFx8W8SpkQXcl6MgCNw4VKKJ6c+t4v0fOUlc/SrxPSHqnAgzHtm7
         Rg/G7WjqcfZh9fD668aoeZPPrIQPxkFWdHvh/ex65A+0aJJwu4lSZ8ozZjFFXglqQm74
         9X7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lDxihdeJ;
       spf=pass (google.com: domain of 3q7fgxwwkadoowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3q7fGXwwKADooWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s9I21l8KolYRq2ahVCALtPp73E86l3lEuobeFtM3+As=;
        b=rv6QAhmvPl2uIXSDv4Q+zFubfROF+E0FE1B59gEFTpgCXNRYlfTOzyXCUY4Mo2ih+b
         pjYxv3ZorQ7p06gMg9UbfFCu2Uml0Gm94grgG9JJR1aVjpKlBdvA5RQCufV6iI2yd0Kw
         qHv7yxqZ252Ci9eUuMpx/d+yadlx2ptv65my7QVJm0YEPVunf/Qii0Cp8tdic1VTIK87
         8HQFTcaNhI4vM63rxTLSf1ZpR/ZoW31fwRYl02sLqZxN/KVPv6WJ5WciZ2T9zzpCc/CU
         RG95J5wowCTh4dmqcHYVx9S4oc4ruQx3HntK44aVRbmHnh+IjUP227E6FmiaU3vBvdB3
         cjaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s9I21l8KolYRq2ahVCALtPp73E86l3lEuobeFtM3+As=;
        b=N0dTr7hAaMRlymB8VAHB8dpx6Im+YTNFG0b6s8UPIl/fYM1V7WEa/838FOqm4WMLI4
         4mcGNT5RZGVxHVkvl1Vb0IYc7oGsLVbifPIlWRln0v2usGBiylRTwsf8BCCD/s4lUFlA
         jr1W/xT493a8Im+ZoXMgKghsnIDb9t4IH/Jk/6fURUc9nLYmNq/MWO7WXlc5WpD5CW1c
         j8lJL5tM4O1TR0WrV78cNU9Xk+DNFyvPhS5TgzdmxZDLVVxg9MxudT79ec8Oh3aIuKCy
         eKKYIVZbPGsAg+WxV0Ik8+MZtTHuQwur1ev8SSw9tMvohLu4irxuYrU/sDuZyHgACcIH
         +dZg==
X-Gm-Message-State: AOAM530/bhGIOSinTxYdMksILUbIXrkJWkQfcquZhv2A2wl4FiGDbtQ5
	TWPa8ok5clD/mwqh8NEl1ZE=
X-Google-Smtp-Source: ABdhPJwwPdkBcmRlSZtMCKgL0tUF0jr8ER5S3bfvZ2Ntt3AU0KQBG6ErOGO22Yuegp1/7xVFVmZtcw==
X-Received: by 2002:a67:6917:: with SMTP id e23mr3365864vsc.37.1606858668089;
        Tue, 01 Dec 2020 13:37:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:36ce:: with SMTP id v14ls336597uau.7.gmail; Tue, 01 Dec
 2020 13:37:47 -0800 (PST)
X-Received: by 2002:ab0:2898:: with SMTP id s24mr4011511uap.124.1606858667684;
        Tue, 01 Dec 2020 13:37:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858667; cv=none;
        d=google.com; s=arc-20160816;
        b=oemty4KZCDTy9WiwByRHzXxPxUjr6KL3fxDUM5Ivg6V9D/MqrtCtD7LJ7fwjn4vny4
         eVKJLQzlCndjdS96fi7II/lOPXEjCVk2vt9kSCb3faNnCl5Vd7wRAqWPSVtQS3I9KE4r
         PEBhDDTHjeJ4i5ZueSrjCuMx75TnWpScYF4c7XTCYHD2sTFAaETTtaPV6cU94Fep/38t
         2Ehb/c0EzStVmkdF0cXLC7LO9ZUasEWzPlOQGn4AESwV4BXik8TaSqDw+pjq1ucth3ar
         t+b2AW3yw2o/KgCdw4QjxvtzVGEPdlie/MWyaATy+bS4pQ9SZ0RiCQOjv+7W3jvO+WpF
         hPDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=IAko/M6Zt1aSlSrXq3lDXb64GB1qle9I29x8xbslmiM=;
        b=SQ6BjnLC9evnQ4bIdfLey1R9HmdwrULqdZ7JtJ7jcAylNuJnk6LuNRWUxLcDcwWZbG
         3Je9YmJ1fVTe/ccnUqNTFyBOOs0aHbnQEj/uaKgDS/qYAOpo7xigpBoiFcsTjpb2PvQ/
         wMSHfi8jh/lnPU6EKJf52ju2SWgMlFrb8elwma8gT+oZJLwDWW+wEeq1pys0MJpinzey
         F3+sv3IdQhgbB2SnlKXRKIg4fsfxxjy3YAS5G1tg8XfZhuWP7CJcQiO+YmDSMzNBf5CI
         Y28hqwgUC7eIdvXAtvQAZH/f3Y/abkxx0oBfmMmr+vhPcWBG3KT30ROblwpGf+f9aB+G
         fW0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lDxihdeJ;
       spf=pass (google.com: domain of 3q7fgxwwkadoowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3q7fGXwwKADooWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id p17si152152vki.0.2020.12.01.13.37.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:47 -0800 (PST)
Received-SPF: pass (google.com: domain of 3q7fgxwwkadoowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id w8so4046734ybq.4
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:47 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a5b:846:: with SMTP id
 v6mr6465998ybq.436.1606858667278; Tue, 01 Dec 2020 13:37:47 -0800 (PST)
Date: Tue,  1 Dec 2020 13:37:06 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 15/16] arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
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
 header.i=@google.com header.s=20161025 header.b=lDxihdeJ;       spf=pass
 (google.com: domain of 3q7fgxwwkadoowiepkhrwjajckkcha.yki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3q7fGXwwKADooWiepkhrWjajckkcha.Yki@flex--samitolvanen.bounces.google.com;
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

DYNAMIC_FTRACE_WITH_REGS uses -fpatchable-function-entry, which makes
running recordmcount unnecessary as there are no mcount calls in object
files, and __mcount_loc doesn't need to be generated.

While there's normally no harm in running recordmcount even when it's
not strictly needed, this won't work with LTO as we have LLVM bitcode
instead of ELF objects.

This change selects FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY, which
disables recordmcount when patchable function entries are used instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 1515f6f153a0..c7f07978f5b6 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -158,6 +158,8 @@ config ARM64
 	select HAVE_DYNAMIC_FTRACE
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
 		if $(cc-option,-fpatchable-function-entry=2)
+	select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY \
+		if DYNAMIC_FTRACE_WITH_REGS
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-16-samitolvanen%40google.com.
