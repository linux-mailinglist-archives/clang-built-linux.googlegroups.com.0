Return-Path: <clang-built-linux+bncBC2ORX645YPRBXPHQOFAMGQEQOFKV2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC4440B792
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:26 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id h14-20020a62b40e0000b02903131bc4a1acsf155292pfn.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646685; cv=pass;
        d=google.com; s=arc-20160816;
        b=vLRn1A0fVDbYHvKVt4osTonMfCGL9jKbwfAK2ffyaWgfZQW04Z8t5Xefb9rMkE1K1g
         IjPMG0eGctHlg5k05jPTBy2f+G42c0mVDfRI6GfVjG18YDds+MdrBL+HdQx9aeoCKBen
         kV7bBGlzXtp58ibfbx6XX4OWnva9jmXZbK3Cr3B7E/b2rKO+85FzVR55TlqMM16Gd/jm
         psHQfgJW1pHTrEIhd7VA28yfgcjIKngI07Yv4y/1WREF4WRP/pOomxeDkMJ+rdrlK0fg
         WCxqV9hcTTeGlY4hEAWFCFj5NXRkg2VCvpHPD+cXazKMqrurl0lrPlYM/WsT8xtbTcOf
         c7mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=pZuG1m9WRjfgb/G+jFcKeezdD15RhXHaOwWBG8zNL1Q=;
        b=Jq46zBZR5Bahay4scBK4X9ZhCPa9aQQ8+cwi4ZfNHGPXvhao/Y/D6Xf7qlKpuYI4Xt
         qks6avbPX4CiDDFdHO1WdQFViVCO2ZMe57aGc5eXY9UJ59IPH8pKClC4K+fw8ispi76O
         oMctkEoylSPk0IN7YQ+jXnoS5zN+kybDbxM1Jfr32M7tBHwJNBOVqGdd6Mun4f2XCP3+
         inLAuqqWUUM0LtQx+WRJFQFAlwOkt+V45G/ML1FERXk1R1CXgxXpnm1RJLHxjhYJvp3D
         Ilc+l5SlS5BgdPhCes0pAFUfBnX8sBy37tXTCSL5MwFQzbU23L1r7IxrSXWUWSQCrl4W
         SE0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=STkzKETE;
       spf=pass (google.com: domain of 32_nayqwkanyk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=32_NAYQwKANYK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pZuG1m9WRjfgb/G+jFcKeezdD15RhXHaOwWBG8zNL1Q=;
        b=e2HOVsiBDMoBEpnxp3RnSweMT22jGVyWBQfpRPcbQf8LP/1f0ALwH+0YsPXZplyJNZ
         5XZJzgZUgiYtuz4lHTlIzDgmP/6RcSwqyumgV/WBWBZLoOFEXYOaz1fjY+T3lkn8kHBs
         s4pNEtzRI++pEVWWw4qvNqUcsY49hn82r+yOZa6kOTY8Aqm6OI5T1+23RGhqB4tdBwLG
         97Y0y0o8BV6VTucFfcDovT1x6Bua+M0UkONJR2XcIv2XqsEzeiy+TMJFA69REyg85Kxw
         vE2ACqS0d+kct1RQhZZjMQd0QDrRVDwa+Wrf1+SnfEjXCB8AmB+WbB0IAmdOIefbLWJ8
         Dorg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pZuG1m9WRjfgb/G+jFcKeezdD15RhXHaOwWBG8zNL1Q=;
        b=pmSzvajXO7c66NARc87u8W1E6LTc7FpYMUwN8WOHBNwmIpCR5kgiXWg1+3RRaxWv7S
         5p2lDZEWxT1eV6NsP5bc8OLtyk73q/GthTe+UOZFOiYFVVoILYpguLKpjO90AUKTowJJ
         rd+Pf8we4tQJZdeIGi5Ps2v/gX4eCMVjP8LKWmvchE0qRprWD4jXzDd8D7SLnjLujnme
         3R/OAPV5NgAaW6ipmf1ncbgx6cOuyA6sU1KD15Dlshf04Mk/3ph31y3Ruql81zkX6+Ek
         +bdWnzDDzCWlW76TLFjsY5jp/+hbgYrPKPOm7t/4Bk4UuN5G+NluRrBVuwWP9paAI8fQ
         sRGg==
X-Gm-Message-State: AOAM5317o2FSawpk4ptSh9x1d/IqbXbcUNCrwij1OA6AcrLGWZVJqfd4
	aUYKN0FcgTCmwWuHpE9+QRQ=
X-Google-Smtp-Source: ABdhPJziVoWWOjxLM3bLgBophd9Xk40ssR1z3CLsr7wtHWboGOl8eZQsbFr/dBZ0pf17yoGOOLyf7w==
X-Received: by 2002:a63:35cf:: with SMTP id c198mr17112408pga.346.1631646685435;
        Tue, 14 Sep 2021 12:11:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls23830plo.1.gmail; Tue, 14
 Sep 2021 12:11:24 -0700 (PDT)
X-Received: by 2002:a17:90a:ae18:: with SMTP id t24mr3831436pjq.92.1631646684798;
        Tue, 14 Sep 2021 12:11:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646684; cv=none;
        d=google.com; s=arc-20160816;
        b=FCIOjzSIh7ro0Uo3SgYxPmTo5P4b3m18aDh7TmmPGb6ByhqUYx/gfbTHLnXC2Xgp68
         xtEJZB9VyUoodpVowOLb6nu08jKcmMwHcGkb/X7xlS6gwynq0bE2glL/D7eZHVFAT6eD
         oYdVKvyq7by3iyURlQ0m8o5/qRIhwNUv2xTS9dVtDVbYJnnGwIPGUw8WqD4rolvWrSNb
         Mw0tDS+EAthKBTvzh6LCp8gfhvxi8B+sEiekhhAkSSp3y+7yjxcZipMNz1Ajvl/uG1mO
         slqwp12USNJuMbwaCXduedxaHr9Ahp/bWKZBOgzcpU/psok53m1A2aboymapknE8/bdV
         8xKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=oDPSLYTnc85OD2zK5qomWzi0UW7SiJ+z2icJ5bfjJhg=;
        b=E1TEb2cyPXbeAhndGT9QDVAs/Ec5De50PEyQhGn2hAumd60UJ6SLzDQeAlZGNkDC5r
         /Pa7NtTFzlOxJt458vEqOyxYC3n6puoRZH88D21RLDfN3z13uL1LEtDD3gvrGDPBz/OD
         7SMCbOUEPV3NBrn8ZNmaPJSPGvYGUk274jRCdYNhE3AUpriIr8AN3CUfOIIED0IvNGEV
         RpQ9ZG7FFr324Xc2C3CfjN+9K70I8cJZVMZY3UZWNoAT1VK11fre7Fa+9z0Q8HivOcKW
         CmPQ/ZoF4gS0pmUU8pJN20tV1QbyWPU56yjPR11I93jTYXEjQHGsyRmzizh1QRwhBI7m
         nIwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=STkzKETE;
       spf=pass (google.com: domain of 32_nayqwkanyk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=32_NAYQwKANYK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id u5si312444pji.0.2021.09.14.12.11.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32_nayqwkanyk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id r6-20020a05622a034600b002a0ba9994f4so61469252qtw.22
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:24 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:40d:: with SMTP id
 z13mr5046584qvx.38.1631646683964; Tue, 14 Sep 2021 12:11:23 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:44 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 15/16] x86, kprobes: Fix optprobe_template_func type mismatch
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=STkzKETE;       spf=pass
 (google.com: domain of 32_nayqwkanyk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=32_NAYQwKANYK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
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

The optprobe_template_func symbol is defined in inline assembly,
but it's not marked global, which conflicts with the C declaration
needed for STACK_FRAME_NON_STANDARD and confuses the compiler when
CONFIG_CFI_CLANG is enabled.

Marking the symbol global would make the compiler happy, but as the
compiler also generates a CFI jump table entry for all address-taken
functions, the jump table ends up containing a jump to the .rodata
section where optprobe_template_func resides, which results in an
objtool warning.

Use ASM_STACK_FRAME_NON_STANDARD instead to avoid both issues.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/kprobes/opt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/x86/kernel/kprobes/opt.c b/arch/x86/kernel/kprobes/opt.c
index 71425ebba98a..95375ef5deee 100644
--- a/arch/x86/kernel/kprobes/opt.c
+++ b/arch/x86/kernel/kprobes/opt.c
@@ -103,6 +103,7 @@ static void synthesize_set_arg1(kprobe_opcode_t *addr, unsigned long val)
 asm (
 			".pushsection .rodata\n"
 			"optprobe_template_func:\n"
+			ASM_STACK_FRAME_NON_STANDARD(optprobe_template_func)
 			".global optprobe_template_entry\n"
 			"optprobe_template_entry:\n"
 #ifdef CONFIG_X86_64
@@ -154,9 +155,6 @@ asm (
 			"optprobe_template_end:\n"
 			".popsection\n");
 
-void optprobe_template_func(void);
-STACK_FRAME_NON_STANDARD(optprobe_template_func);
-
 #define TMPL_CLAC_IDX \
 	((long)optprobe_template_clac - (long)optprobe_template_entry)
 #define TMPL_MOVE_IDX \
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-16-samitolvanen%40google.com.
