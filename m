Return-Path: <clang-built-linux+bncBC2ORX645YPRBUFOR6EQMGQEVMZRT6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 048393F4F1C
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:54 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id q11-20020a4aa88b000000b0028e498bb328sf5720192oom.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738833; cv=pass;
        d=google.com; s=arc-20160816;
        b=s27WtAEVnFk/dTsG4rkUsP+HMstHQkYa5Kc83A7JewxNwozWEy5g0pkYiKFoEp7Rup
         r2eJXRrUvRzyZnaSD17QukXnlyVrF4W64oIHZHbvGkGbghXX6TcbOEFIgq0GLZinZiC5
         CU1S7Ed8q0sIOCHdu1yE+P9/bBWBTZ5/UwIXv3eBXuArp7Ow1+jlnVmzzrFc7K1wUn2U
         D1g26pG9VrWR4etcRsqDni1iP0VrnIdU7aqFsOgWnQpywxuB4cZhTCzBqcL+nvqgXyjb
         RGuQ3Lg+/wWO7w1kyzImGfLx1McqDYAtz8hFGAIGRlpEu2lRcKAQ5a8bDGUIb6PQnALz
         iXzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=jFEJkHWtxeuQWphHHCGRtMWf4a2MNaVOq24aRdAAXOw=;
        b=PB/ajbVTVnh7L5R20HSPUlFjkJbwX2VXqOIR2Ebi1XQl/Auh5W8NdPnQlOrOT/MwSE
         p8MfK4vYtmtGtoridEXYyJtlxyetGWuV2Pgt2Qe+dtfV8jmCj00DlwEWh4cYKXG3WxOE
         8KV8LgeW69go0bPSm7MMCqhm5KtDBWpZFUhsYFSa1o5IRKgzwhPqktm5+gkP2GQ7YrlG
         Mko3utBIEOt1BCWmHa0V9phxgfkEu/njkCEUkKu6mObcSEhyra1sou5Cph+6YZMFQstZ
         TuxdzM0O3QTDIkkHdEsn+1RAEyIXY0aX5gYg4X3x0cUS6pOjNhxsbfxTl/qWp/23kmAz
         UU1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hFjJ1e+C;
       spf=pass (google.com: domain of 3uncjyqwkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3UNcjYQwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFEJkHWtxeuQWphHHCGRtMWf4a2MNaVOq24aRdAAXOw=;
        b=mgvjpLgD03IJrkugMOoDn0IkHXOR2A7xSrZGR+J3GbOti+WaJi0lqisb9PIUDAcxWi
         j07r+LIvADbk9+86aGSgr2oHl347Xx+9dRPSZtM0oQZbc28S146P4PuSiO5kDF7vaN8I
         Km/fhPEbDA8YCxHxjOOtaStUt8vRaDllJ2OnYvSVJQep7z1O4O9qLszhM3Uxbz2zbb7i
         Q7fOx9huBFS6HVY5fUHP22dSbRH/ir+R/Uhu3lpT2zqU2224atGrQ11fEdWNbRhHeGbD
         f2hI4Wnwai+Vn+FqwTJrvQbJZmVZFctrSOcsIdR4aaCFwsLjbQ2DG4biN5PlVhxg8hy/
         //uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFEJkHWtxeuQWphHHCGRtMWf4a2MNaVOq24aRdAAXOw=;
        b=QP0AsFP7jG0tstw4Gmx2m45pH0cF+0ZPqvdxF4F4TOGhOg0r6j9W9K2eidVG0fVEfD
         V88fhc832e1laO+aTEtGty8iOohnMTu7n/Kv3kBhXF/VnkV7U530Nz2QmBvd2BhWQMLX
         4TI+ailN879fzLgJlNWTn0m1OIe6c0xs4o5QniOD+gAiHtVA4HO8tT9NIv3GDbj8TAY1
         ZSJk24rBeFG41DfYevZFgSaKB6LI/Ja/wmMYPgmy8Foc3VafbeGFqlv5Q9V/3HVZ3Bhg
         tCMLlBkbdVupdVT391XOjFwyKC4xTogIPh2GZ0GJkApRwRHTrEXNfPp3OpmXdcYcK3lC
         bpfQ==
X-Gm-Message-State: AOAM532gEBD25gP0TUHltjKLW3inHalroTezGlE5mG7COL7Sepr01KxL
	L1ys2GiGpqTJWwhkmqCNqPs=
X-Google-Smtp-Source: ABdhPJz57f/SQHJmNw6KxNG1rRlG/2ZapXnTtThCMJT80zAOZrGVvjyYP6Xafr4xHgl2tOcZI6ObKg==
X-Received: by 2002:aca:ad07:: with SMTP id w7mr12074158oie.22.1629738832997;
        Mon, 23 Aug 2021 10:13:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2442:: with SMTP id x2ls1443925otr.3.gmail; Mon, 23
 Aug 2021 10:13:52 -0700 (PDT)
X-Received: by 2002:a05:6830:3144:: with SMTP id c4mr27848209ots.153.1629738832568;
        Mon, 23 Aug 2021 10:13:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738832; cv=none;
        d=google.com; s=arc-20160816;
        b=xhQowYLpHjmkl7lU6C6T1n/6bVR4FNjHbYu0mGVEbyqfyh1UFhKS/qiiDp2ojR2zm3
         oLfMmf9bxl0n0Yd3QpOSH181FebVcvQySFPQ0uNsiDFJu4eXdoq8WoB6Kwl9G/ekIgaf
         c7JvCOhKq21PSShz2IC4Yr42HQrmtEgrjXX+23VkOWy9CxBcitH69mMXzoSmyfBTy38D
         93/CgXvXjbIR/tM6MJpwbzSkQrk0S4DTTF/w3dLoUYiZARcwCmX5+ho2KY0c3xZkaIfP
         87fKuIsgHuDmlnedseNUdEfynAKAN3LEkejr4Uce1JMXip+I92wjWxW6e3BmIxdE6GC9
         Z7Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+NWMVXrt3P4ge7VqYOvLEIp/M9aVwCe7Nh6ObW2ZBPc=;
        b=DOeCydkV+sq6dL9mgdOFSbFN25KFE6pJeJ1YIvtZIaKrVr5yu1JfSq9D5QaFzTqN4x
         Wf5s1jNr9zIyhLvi9H6ML2uOWRLUPZEzx6ekjHOjfV0jzAhbzPPCHXZ3YJ7QSvadvIML
         dShVfjFLPiFuMoZ5RO89TCOlPJ33XX3Hq/ToAdr2+ULtJcev0DrZB2zDDfLTs0xZvNaR
         ZeGf2kswJ5fLpgfoKfTgLriDMkhPV5G1Mk6ixB50D+77ZR1K6UM7gBw9Dc7vtiokoxQ5
         3+4KjZnaGFpEsHPnDuP96eLPtQnBABDLqbBvLtVxWzl10WhwYQa21wDhdApfeMrWvBqR
         +pZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hFjJ1e+C;
       spf=pass (google.com: domain of 3uncjyqwkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3UNcjYQwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id bf14si514891oib.0.2021.08.23.10.13.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uncjyqwkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id s4-20020a259004000000b005947575ac53so17224628ybl.5
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:52 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a25:c60f:: with SMTP id
 k15mr26774743ybf.200.1629738832122; Mon, 23 Aug 2021 10:13:52 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:17 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 13/14] x86, kprobes: Fix optprobe_template_func type mismatch
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
 header.i=@google.com header.s=20161025 header.b=hFjJ1e+C;       spf=pass
 (google.com: domain of 3uncjyqwkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3UNcjYQwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
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
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-14-samitolvanen%40google.com.
