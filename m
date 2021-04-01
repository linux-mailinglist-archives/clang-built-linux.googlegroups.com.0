Return-Path: <clang-built-linux+bncBC2ORX645YPRBJNQTGBQMGQEIH3HKJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 531AB3523AF
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:54 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id x11sf4756129qki.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319973; cv=pass;
        d=google.com; s=arc-20160816;
        b=bVlQme4s8EgcgGPaPTlKfVy3JzuHw+FbjMDR0+/0DxMP5/6T3ohrgwemArOzIpmx7s
         /RZqVVyOYuiYxnYP1X/LMl65WHhk8/f7dP5tbJzoc/LveJSpMAPxCE89yWpwkk7wjhge
         0LAiQi8J5RwtA9XLtrMk/LtbPB2E4qiC0pg/taPnfX5RfcVIpIpiROsBh8r3p13J1DgW
         1OTCSHeKJamqVKtImZHus0hdKxnwXbqfRjd4HMIHyrb4c1b09yn2OLmdhhsPRKfoTSCG
         zkeYw6aeBIMISFtSbOO3d7TxlF5jJ+Zq5ZnDoZ2ihumyaDJTUj41JcA+c3vsAwLfC/ny
         5gaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=y/PGSki0ZKzIqgDzSIfWO1TGi4tRbn5kRS2XyNuX7IQ=;
        b=ueC3WXTGonpPI8fJMarT4x+w9OwA7rBcv5+Nb2abLrUIOr1lYeys7yRpT07UCHVwe1
         kIn++5H3aXtMArHjY9lsSKJEozdpg1Kdk8fIz2RwbM+yFTzjvMrBoXzliopKykJdY/hc
         Aw/j+KceOoakD0PnSd8XRCa68Oa4xviwspD0b5Y3AJYYpoD7ISlOdDAwA/vPhsZj17FB
         9v/PV2NtPzr0//xpaH76DyI2V11MKVliESzirRdwRxSEkFb37JPW/nOG+FQ/ms3E8qO7
         yjgzBlJDmhqew/LLQJZJnUHdgSaYYoeQk6I6NjGdMY5/Aslp2zAVGgjNljA2P0KghTxC
         /LZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PH3FtJBG;
       spf=pass (google.com: domain of 3jfhmyawkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3JFhmYAwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/PGSki0ZKzIqgDzSIfWO1TGi4tRbn5kRS2XyNuX7IQ=;
        b=q6zMv9JfNZFwWmwusrw9hTFSzDlBUqK64ZoywPMxjR0pEbbmrCZIVxXqQAPPaB1abb
         9JTXJHCo5Mjv9rb4tHsqWRiFOTYJHf6dy5z6BpKwuW4jcBvcHQm5tmT7fGxlOUBAP162
         S5+EbGRLJXGI/LUYOmj1to1P1NKZrzhVOOJ1cJtZ2jMlUDMZbZhXklrHx3ER1dj8ZPO1
         UQ6lIrbN9OU3NZ0ZtAh2C2QhXPNeR2Y7CA+tZ/KBGpqMyA1Yg1mSrUmltxfXXC583Nfy
         k8vvsqBLJ5zvQJ/5ifDk16xTlj2aPdb5zbc9O6m6dUff1E7fNZsHid9eE36ST9n5lSns
         BLsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/PGSki0ZKzIqgDzSIfWO1TGi4tRbn5kRS2XyNuX7IQ=;
        b=Cv0tSq39M+wzOEQcPqRyQ40Y3AZDXtFRTGys1GcoHrkgPYne8IhQOZHEDSF6vjfhpK
         H7UKIus1Z5h2gJmW0hTify77an8UAFcARzB+ksrtjtYV3tWbP84P3ChKnGat5NOFqqJd
         +5UCiokp6TWovPB4GeyGWYxKcV9Fg+J2bB7e0viRQO73AHuxP/SLwIrglUqo4UxwTIlW
         etCsHKIHzPgQnBlKl5R5zTBKwYCMpDDzy7oIASVqhBV+aXq6emqP49wG8qZdFyMh89UN
         FMF6kDpnz0L9QKBHJAgz3HyhzfIMo3kM2klRCChvDHs9RUciOfdaDTORzKJrrrl9yzr+
         3elQ==
X-Gm-Message-State: AOAM533qExwY2owk3AC5eCFO+GDuKz4GcV8+LE+DykdC5BWVi2pgW1Aa
	qJU0yKX3isfZD3oiF/vlCVw=
X-Google-Smtp-Source: ABdhPJz7modW6iTgBX7PgxqM5D7uwjakJx0ImcBKyMq0YbANz1dPr6slPK7Mr+v1nI8lNJM16UwycQ==
X-Received: by 2002:ac8:584a:: with SMTP id h10mr9133192qth.358.1617319973456;
        Thu, 01 Apr 2021 16:32:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a050:: with SMTP id j77ls4114511qke.10.gmail; Thu, 01
 Apr 2021 16:32:53 -0700 (PDT)
X-Received: by 2002:a05:620a:12da:: with SMTP id e26mr10194181qkl.92.1617319973034;
        Thu, 01 Apr 2021 16:32:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319973; cv=none;
        d=google.com; s=arc-20160816;
        b=zQadr2HQ56jNnCvIpDa6uMZQYopbFKepjAFXjymfrsc8MCJujxfvOnJjeRiDg49Ilp
         e/U8T2u7/EYquCmdIcBUA4msXjsz9YPDrh/maE3sgN9dcEqQMhrrAy1b3NNAgip+2qJC
         bKOKAjNUKoU+fXAoeWA3XwXdSiK0WbxA/hqjrsBCz8P/Wx4FQaozWVRe5GnM6XKnlgMm
         zia7GnEqSTrmlm5n4GmcqVPgEWgkW0Y0mZQwoK6N/QZ3rYnnVZE1wUXtgjHUxjrsum2y
         6pIqOIqhLKP5DPhYdS/zJTzDMzCM8nu4wgtm3di9tm6cJXlVfwTLNxPO2shUdGHPd6Q4
         KrVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4zmDXsca0ECrWDzVS194BszWB+2fKXJW5Au7Imi/uhE=;
        b=H/5rs33pir9FBIyj7qVWUutVIt3pNTAdgIe98jtvAAryYAff6r7CQbitfSgIbyVfIe
         zLdwvB9wAmOI/sOm1zd90L6xm5ZEWLVw/MQHO/dLrmjLPmw3TMbo7PoIYWjebM2yjw9g
         mWsSym5knL+v0kbuQ7bBtiIOtUSXz+EijIb0ZmjTz1V2MF/wzmLwS51nyz8PWHfsYx5g
         GevQOzjnR+FtlW1jA+2KD3KKE9UxR4yrA+H/wxVjAaRFYVh2/g890ThIs8etSYmgBTij
         gwN3wVjFb7gJPlZSL6R2ocndjP4l9obDD7oprCcwn/Hym+HGqqnY3D7YF4bTu7l130LO
         G8wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PH3FtJBG;
       spf=pass (google.com: domain of 3jfhmyawkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3JFhmYAwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id b2si1184986qtq.5.2021.04.01.16.32.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jfhmyawkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d1so7416811ybj.15
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:53 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a25:880c:: with SMTP id
 c12mr15159486ybl.399.1617319972614; Thu, 01 Apr 2021 16:32:52 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:14 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 16/18] arm64: ftrace: use function_nocfi for ftrace_call
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
 header.i=@google.com header.s=20161025 header.b=PH3FtJBG;       spf=pass
 (google.com: domain of 3jfhmyawkahcnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3JFhmYAwKAHcnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function pointers with
jump table addresses, which breaks dynamic ftrace as the address of
ftrace_call is replaced with the address of ftrace_call.cfi_jt. Use
function_nocfi() to get the address of the actual function instead.

Suggested-by: Ben Dai <ben.dai@unisoc.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/ftrace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 86a5cf9bc19a..b5d3ddaf69d9 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -55,7 +55,7 @@ int ftrace_update_ftrace_func(ftrace_func_t func)
 	unsigned long pc;
 	u32 new;
 
-	pc = (unsigned long)&ftrace_call;
+	pc = (unsigned long)function_nocfi(ftrace_call);
 	new = aarch64_insn_gen_branch_imm(pc, (unsigned long)func,
 					  AARCH64_INSN_BRANCH_LINK);
 
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-17-samitolvanen%40google.com.
