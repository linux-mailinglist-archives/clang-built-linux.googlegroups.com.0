Return-Path: <clang-built-linux+bncBC2ORX645YPRBFMI4L2AKGQENTX3FDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2591ACCF9
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:13:11 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id x25sf3420379pfq.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:13:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053590; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dq9Mah6DcQ6Ytybcs4Y3tRQiDMrTw6DDz2gSdgBG3kZMiZqXsnI9BVmuCpmPTF1vXO
         GXnYSlvP6Nyx+ghLW/TurqBhZZlAQNgr7FlqCuPmbxWVHDTqYZVWbWSKlgyu0l1ihRy0
         lfjX03hWEMhahPojlFnsA7Xu4x12ODn6Td62zeCJ9cZ1MstUrcdzm0CcV5cl3YfFtgzN
         pvPUxQymWpv0caVjQ3GswHnB5C/NU0zb5RUfirn0Jntb8G7qa0ALrVcVKtajl82+2lko
         zocd9/IV2myN3s0Iwk/8n6UVAmX5j4U7qgdbvBqZnU+nx6g0HIgBVQwpSSSWcOQsE64B
         NEQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Yyx3OxCBXWqaE7ZlVm+svUnJjHYv4Yi2yBsLH0SJGDk=;
        b=YXB20hbhQjdhQb6jGWKV/VmtprFjz7kgnnK+ji1qgFFaxFt43eo7Tp8VE1122PYjio
         Uv5ILNJwPzCFKzs8uGn97Xkka6XmyAsUoXmEKtUUdz6IErERWq3oO//zKeVRJJtTU1h3
         GsZPpwkm5O/zJ9w03KNw8FEYnqFRPRWoNyuDkZXYCwI4mVVxykUHoYTCt0/OM3B4z2Cp
         rEsBF0e7DazbaQ0LEWUMtOKssKTfGYSq09jWJELFGfcN7kc6wsWlmnymy3jjPqMtQD2x
         4MU5ifmmViZwDTvafmiunapo0V62qID9Gbn0ycMtXDGf88Y/ktePdmuQyQNQXrhduHIC
         ravQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CpB297mh;
       spf=pass (google.com: domain of 3fisyxgwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3FISYXgwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yyx3OxCBXWqaE7ZlVm+svUnJjHYv4Yi2yBsLH0SJGDk=;
        b=CBSO/2JN8xobKT+yFelJkhF3nIFyyqusxrhCGSw2Jzzf0rLF1cmq7jh4k8LBVNeTd9
         Dkeb26RS9PUm2e2zSHqEIxg6vFDe1oZzfsQd82QBananEJDpOGsTNABCu8kQoo0IaWHc
         QjteU1DJQZgwdJrVXNx8aFjAHpppqxx0SSDqnqYa9qQh8kuCEdtowKA4mHOhUCe/TA3Q
         Q+Nkp8kXlHaQqvto1E7e1XU98bsyIuxSx6rutWYm0CQTBDBA6cmLdRrY6UF2Xkqjqc2F
         iwjnziaS0XTWKzppZeH+PJW48JDZrTOLOyUagCj0wn37CKFwRkZ3jEFamD2L6Z+6FSvw
         aemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yyx3OxCBXWqaE7ZlVm+svUnJjHYv4Yi2yBsLH0SJGDk=;
        b=NOG3S8Vh4n7IEyPA8QxdgMNpM4aAR6ZQt+5NLiWTA9IBipxM0nCwB0XgsphYEKRoHP
         FflIZz2KQsjRRte440sa0xb7W0CX5IoHOpxo90yLJvNYDg99Zwe+REfhufPdAMaKmtA8
         N36RquVPuSp2boTCo2/8MATdVkORQFJTqdOFrPp/kBt0MivTrn/WRvsg18dtBHVFKQ9B
         riaQR8K+1V+8a5m949UWRwNUo+dKoQCm91OzTIRbzBQ1KgsWFtCMfce9cxpDloJ2ztZQ
         uJqjoWM4C/ogt6a/zWVvI01OPh3EXlw2UDkYv4GSHPQ6vOweAxaXJOAfOdacACGKSGQR
         E1tQ==
X-Gm-Message-State: AGi0PuZHZ/ZaT1vYKDBlO+ow7tLKnn3XHP7SBjw5TZ5+YYF3t0pGoljP
	lCIvKhnLCMibTD1Kjc0P6MU=
X-Google-Smtp-Source: APiQypL0mCOg8d8XVFST8aIkgRUyRLRXIJxWVZjnYotS7FgZx6B9TaalkEdkv8MuQMMSLUN5yTx1Yg==
X-Received: by 2002:a17:90a:7187:: with SMTP id i7mr6059230pjk.39.1587053589869;
        Thu, 16 Apr 2020 09:13:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:68c1:: with SMTP id d184ls412919pgc.9.gmail; Thu, 16 Apr
 2020 09:13:09 -0700 (PDT)
X-Received: by 2002:a63:1e59:: with SMTP id p25mr32946178pgm.219.1587053589270;
        Thu, 16 Apr 2020 09:13:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053589; cv=none;
        d=google.com; s=arc-20160816;
        b=elkul8jYHUcgaMUmdZR4fPBzYz7qKU6gof70WxwPxNhuNsfidJvRAebOYLRJ7wZRlj
         Xuxwa9aZTNw/NwJIHDaKz5upVNDOzhaePdb5iVaTLkqRujSHm8DC2QFoaRnG4RgivKPr
         uPiSMM6vC25LQV9VRtS4BwrW2Cw4znb8OLJfpQO7FryCqYOfnC7ciopESNlfA6sEpIv8
         M1ijO3G0/+z120vIiRdSXkVuutP3ocohiUGlnIV3yYpOavWltESvRRiQUASlAoHHoZFE
         HYo/yxh/9i49LwyHn+Wj+RmHg1RWHzQ5icLMUknoHApRz1F2uRn9fkabycO2USzfkhv0
         qLUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=MhRn5bu5/kvUh5QzOzRXssMosuq4vthGJuay/ttgTR4=;
        b=RjNrxrBqNZXPk6beMsT+uAxq4ohvgeKKQOjPcjHXsMteWNH+OnUwb4hJNLjw6GC5hM
         tEaqb3QdxfmG3ZDl8+qUhLtXlAb6YVz7JxyzQSrhBf07xn6nNkMavGd0xyPR+veJ0lM/
         QdVjRFId4pdE5BNgeMwIEqw5S74CrEqWc7tUTr/pxMH0V+mUeLMsxXCChWvp+Ppiy8vC
         e0j3H4cggucp59N59YcfzRB6f9pLvo9zQiaHLMjq0wWc0jYTiAGNeP5XCfnKP/7az+L5
         MAvfU0g4tue6NZ6q/LYFWsIl1qBoOmFtf+vMBHDwxheRLxewFWLdCqjv02UHkafRzKZi
         ElHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CpB297mh;
       spf=pass (google.com: domain of 3fisyxgwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3FISYXgwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id g23si1711877pgi.5.2020.04.16.09.13.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fisyxgwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 18so3398657pfu.22
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:13:09 -0700 (PDT)
X-Received: by 2002:a17:90a:f407:: with SMTP id ch7mr6146496pjb.72.1587053588956;
 Thu, 16 Apr 2020 09:13:08 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:41 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 08/12] arm64: vdso: disable Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CpB297mh;       spf=pass
 (google.com: domain of 3fisyxgwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3FISYXgwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-9-samitolvanen%40google.com.
