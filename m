Return-Path: <clang-built-linux+bncBC2ORX645YPRB5VKST5QKGQEVXEQOFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2EF270665
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:51 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id a26sf6068937qtb.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460150; cv=pass;
        d=google.com; s=arc-20160816;
        b=mabsshNcw3hduM+Ukwshsb9NNGEhbtCs6sIM+h29D7CFzPIhG9o0zVPfPauK3C3Qy9
         jlwlRV3fG/euLEBHEoZJ/HL6656UL7dGSP3tXbQo0mco4y2ujAsuNAeINY95JPPHSVH+
         W4GJ8opzOsPwJHA8SSDMFVZhf1++iYcxPvS7y39tVWkljSJe1ppYnjlB5ZF9RLPfCJG7
         05cWBfmPbeiRPSWVq5DfL6Iv/2YN40T3PLzzYyFKf7QtwNyc3BKhjSQu7GUDVgsRK+2d
         fh6rtQIiSK1uBC83blZCW7+8Oe9jpJGE0WPMZYdqCH2Lh3iavRtQLdv/Ith0YFSiwXHG
         KEsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=MJ5MLbfwKvmFcsNOJJ/+oaPa9tDOYPeYh9bF9bLTVBg=;
        b=z4hnJcXmoHS0h8SyQbaKyUjogNoByn7rcanRx5j07p+4msqgeobdNa4rL4taeHBoq9
         O2/Tk6exQqp3mVNPFDi+N/kIjSR2AFudWrHN2G1miTrzMz7ZKyEHFtcz9EHoTjiyFI4+
         he7/+nEh3GnqEDnTSrR1+KJzROUPCKEL+uUO+ux0vtAgQjKEV/4qj8QjSxkw/1Du2+oX
         cQCA4MSZKgGU/2jJxJ6Kk5lsATx/F5bEz+Pc6LPqdZXz82+nS8thrVtIfHC4KQdkP28w
         gUdtNXv2L2f+g+T3ogtE0XguX9oKZnyqAtIr+pe8FzBpidhxu/r1ptTTuDOLIGPjUp60
         H9Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TVxfXnF4;
       spf=pass (google.com: domain of 3dbvlxwwkadujrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dBVlXwwKADUjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MJ5MLbfwKvmFcsNOJJ/+oaPa9tDOYPeYh9bF9bLTVBg=;
        b=m8sUnMq0bsgyANwB8aLXK4PmNDfYKme75wjYUKP3AcWbb4dy28L84vqg9WrHvbuVh2
         olCQlNgEe7oVBkq0MPqnUJ1ph1048Aise0Wp8bQe9qy6gywjdBk8/0Xbob810v56t27U
         Bu12yTYiwFHBiCTJyVybbTYb76TSNLcXpGYP1sp95SXT6OL2YB1J3gTQUD6tscC9W+Dr
         mHPE69vnb2IU1jPOiykiFh3NBJMT53QVxMIq9AhAiIlY0S412tt3bakbW/1BIzw0JpHn
         ON0fsLPDilnPPBCgt3P6U2bP05QH49bMI2HfFZUVNrKnI491cbBnydSO3POIOU1dJeF+
         mrsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MJ5MLbfwKvmFcsNOJJ/+oaPa9tDOYPeYh9bF9bLTVBg=;
        b=MwuLfqeh1LCqSUQm7+Y1WeFcPmK3RgMeIlrJ1FZBcwVCSqml+BqZZ4VojhCoDAg3gs
         HDEDSvjBPwPaqk/cpp1iSAeMVNRq0jihZ4eOTVTG47yHTVjMbBszxArOv+KmOqaaiuGJ
         o1+X9z7qlz3/GKs9oXi/wSucLR7RLSPjVepjHUFEHORqukKO4tUKVZ+K3EFx/VWDN54t
         DhfOL8r1Wn0J1mcsFTMRzAoWKC5mbzr22uzm1JM52fRR2PctRXJJn0xOc+3720CzHJJi
         HhO/supuU22NiAQJsC07s+JGBZEFFMIM/mFzzxjbuuO5Os1nlTlJrKSDHTU0xDDzyFM7
         PNXw==
X-Gm-Message-State: AOAM532MoM8R+VHDyM3HZwzBZj3fstU1BrUvr0bHs6KUvg4zdsJmgXbD
	mkP1ZfTyKlJ99IZjEZElOvY=
X-Google-Smtp-Source: ABdhPJwN9gyKUY7AMWe7oMrV3YdwkmF4KuGxmwxXCkMPktjZbOZoFsh5VMtBDn/19JGg7rzA1AHxKA==
X-Received: by 2002:a37:84a:: with SMTP id 71mr27629682qki.166.1600460150337;
        Fri, 18 Sep 2020 13:15:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:228d:: with SMTP id o13ls3391713qkh.9.gmail; Fri,
 18 Sep 2020 13:15:49 -0700 (PDT)
X-Received: by 2002:a37:474c:: with SMTP id u73mr36765467qka.45.1600460149905;
        Fri, 18 Sep 2020 13:15:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460149; cv=none;
        d=google.com; s=arc-20160816;
        b=L0osPctr4O3tIOxBgfGMGaEcrbeXndmDxbWK5x40GZBOgQE/2xN6RHPJVVvFTOyZRj
         MHLc0FLPvMqbndm3Ybk27McD3k+qsMv6FwP25y0995PEa4k6/RvqjmafkiKBFfjiAz0D
         mULdHODm2ci5n+xFX2F89R62lf2B9F+dHEvfx07acGFCHOK5BzPc/4kIwdI2w7yoNsYo
         QjFAUrBiHoi4o0ZcZRuIYgWsM1xl5zw9JCLYKozVo6elA5TqkZT9iv+HQMHSSU946jDs
         NygD4FKlqTiqHf1R6C+6PetD9NXJEZ75boo/pYTj+7N2+4m9TLoXi1ny1rcJaxDkPEWy
         kbNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=FDO+ZF09uotnTu6WM5EnkpUkRKmQDNuzRpzleKkQ7Yo=;
        b=VfgfMt7LHncG3mAYIHeAQJRH534AwlbuxJazGl+AlUqg4cYpFOYfFcUyLO4rgGhoSj
         3MXzMC6aq12/Yfpmh/0cqYNOnCbZ4PKXHdYsGGw24ezu4OgLx29QEYVC7bQP6xiIyjCh
         WDlOs+M6F2IunLyRhWsCljNpW9bQhEpABwigvV+s4vnba+yBU7HdgWK5tKs45Jo5ZULw
         zMNrZ2Q7sOLMFQKC3uI4lxNerQRJGI7L2zdP3F4b/lqoQ15wsW35is+si+Fealu4Tsuq
         qqKmGGGrASSvcQMdKFU2PIMDVlwQ9bzqa4HFUmPEcVOVBkShybcGfSweyA8wmcynogMd
         Nblw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TVxfXnF4;
       spf=pass (google.com: domain of 3dbvlxwwkadujrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dBVlXwwKADUjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id a27si258895qtw.4.2020.09.18.13.15.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dbvlxwwkadujrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id g10so6146878qto.1
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:49 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5653:: with SMTP id
 bl19mr34387705qvb.7.1600460148677; Fri, 18 Sep 2020 13:15:48 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:35 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-30-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 29/30] x86, cpu: disable LTO for cpu.c
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
 header.i=@google.com header.s=20161025 header.b=TVxfXnF4;       spf=pass
 (google.com: domain of 3dbvlxwwkadujrdzkfcmrevexffxcv.tfd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dBVlXwwKADUjRdZkfcmReVeXffXcV.Tfd@flex--samitolvanen.bounces.google.com;
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

Clang incorrectly inlines functions with differing stack protector
attributes, which breaks __restore_processor_state() that relies on
stack protector being disabled. This change disables LTO for cpu.c
to work aroung the bug.

Link: https://bugs.llvm.org/show_bug.cgi?id=47479
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/power/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 6907b523e856..5f711a441623 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -5,5 +5,9 @@ OBJECT_FILES_NON_STANDARD_hibernate_asm_$(BITS).o := y
 # itself be stack-protected
 CFLAGS_cpu.o	:= -fno-stack-protector
 
+# Clang may incorrectly inline functions with stack protector enabled into
+# __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
+CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
+
 obj-$(CONFIG_PM_SLEEP)		+= cpu.o
 obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-30-samitolvanen%40google.com.
