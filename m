Return-Path: <clang-built-linux+bncBC2ORX645YPRBSNOR6EQMGQEMTJI7NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9E23F4F18
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:46 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id y8-20020a0568301d8800b0051b222a05a6sf4969582oti.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738825; cv=pass;
        d=google.com; s=arc-20160816;
        b=JvpbhMVYP1tobMz3uJbjNdbuVscx/6iukkqT2AWs1dWM96FY/4rfrXPPDoCTRTQ4Jy
         ylL4HwoPBsn96WnoCdCtV5QHYH6XZ95CIrkocG8GQVvRjDcS7312XwoqCiHp0YsnLQFi
         5Rj27SCvNmaCZTp8DB+myEB4u10u0kmDuxy2E7UF4jeRsjZ+GfHUIofjqqT1IMCM6V4h
         DVmo9QYMhzs10Vg5XwA0KN5x65BWsL5jf9sTklkbHrU+KOFcnx675kz7LdiNHEbjz7qn
         Ow9p/69NGPPfhMwW/sCIpICnGKokjerb3eGKo4PK0Lfo6md+KpD+HA/RvYKqTOyZqr/O
         uF5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=paKLMDTM/7gyHTyLc+NFDeAQ5ZvuU70vym1ZaJ0KIWU=;
        b=KdOJUunQqqv7brxypWuhdv1nK3NVW9FPsjgUIFdjuIky6P39cDFAPPiYQZNRzNQGn1
         zWuZ2roz5MXUdmMlR3zGFHBIsxXQXrL7pe8Q1eOG/CmJLgi4S7VSEcXLY7GsIsAH7QKF
         6tsLc0IQzEOTj80u+ClyFpIZV9n5xtR2WH4axpa3WCypME8i1mnaTOU7snksu6ryF6yv
         o2jM3V/2zjiCoDwNNGbQLckEjqKTeUsJzhSuihrtUd+E3nIQjbIjhgWKRKwzYZUkpt8O
         Z2pnCsqffVcdmcFgjrMIHKfB14lrZmNhETgEm5MgVU2PLjSdZwMevCiX+a7ldMNjoasg
         t/Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bIfEQab0;
       spf=pass (google.com: domain of 3sncjyqwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3SNcjYQwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=paKLMDTM/7gyHTyLc+NFDeAQ5ZvuU70vym1ZaJ0KIWU=;
        b=gNeyaLiFrZFSkfXlARpKpXay2CRJnfUVzr/CprUEimZgvUd0Zt6EGb4P+AFR+kzq+K
         OQrEOJOpmZb2nWPdHIBxNkmEmJrVQblNP9WuWGnJsTxkACmi8q8Y0FUluGoXHWGEqL2J
         GQt2axJPtAanFZ5oeMYpZdB7CBQ+MHs60gEuyDcUw2LHIz090sWK9TnuO3rmXvbZgu/v
         hs44pgAbuDIMnL1nTLm8jIRXDIaJ+qboz2bj+Z9Pk/zBSm0r4ksXm/h0TdQNfXec1ckf
         88rj+0MzCTlFGie+HAakG5/2FPUoi+ScGSx2zWgiSDB9PtTg32E7/P4+Sy36ic5X7O4i
         ZUxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=paKLMDTM/7gyHTyLc+NFDeAQ5ZvuU70vym1ZaJ0KIWU=;
        b=pjbRWBAFkpoW3VcKJ6x2o0RHM6sYpUgVNDVLzOxKt8FuD4R36bU98hZhd/W3TNYXWV
         6DZ032j5ceYD4g+HSdyiirLLrhx23Ww5M7ND/32hAjLmJDuZTetDXJCnShpP16Ikstgq
         g+GeX08om9qWPNnfXJ00KIcqLrKvL1L1cxTGMLMh4TU8icExQIFAMICaW/fuo5xVevQx
         pQuRQUO/Q8JQk2kAoy1KxkpPlcXYt9ImjCEKRg55L1lpIOXqZ7HjIy3mCruX8btjDVQN
         k9CGHSAav01wOj6DQbfq34+9luI4tl74OuqqgE8UqdMD72lFxeYHV52NgGki6I0FSICk
         bMvg==
X-Gm-Message-State: AOAM5338CwoMhYSh25xHW2rB7ndcDL/1qk6Ukacqa83rmfmMGV91pxtk
	vFlH1aygDVW6xxp2DZfnTj4=
X-Google-Smtp-Source: ABdhPJzPEnIHXFrMDNBlpu2fl4n9xMDCSp/6GRZb2I3lm0AKM+MGqflichrC6yVuARyV6wS1NSM/VQ==
X-Received: by 2002:aca:f203:: with SMTP id q3mr12228291oih.143.1629738825590;
        Mon, 23 Aug 2021 10:13:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:210a:: with SMTP id 10ls4168387oiz.1.gmail; Mon, 23 Aug
 2021 10:13:45 -0700 (PDT)
X-Received: by 2002:aca:d02:: with SMTP id 2mr12443961oin.126.1629738825220;
        Mon, 23 Aug 2021 10:13:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738825; cv=none;
        d=google.com; s=arc-20160816;
        b=VWvMMB+cGUiqad0Qm6yYVFJmLFpYCAWShZN/JgOxv6voN4E8Ch0fUTl1Fsn1KxKhlr
         2SYWX/8gZxCv3CS4tF0uoomRbrLByoXuxsMSIJajNelnPRLy+gfX5Yu4J2BilohdWi0o
         Kp9YhqqJ41VZQIzJ9cp84EYpSFk0RXAC7pS0PnO1TGokt6Fsw81VZ0qX/+wDqZh4kw2d
         03epfpamFSqnYrT97cQVIVElsYUA9q1QREoSMUxvC4oaRJu3m/cQPT0/uq5FBcwW1fX2
         HAalSoBwIK9J/JbF0Kzv7wkIepbby7J8Gi78DYvs7uFHKpgOvcZ4thPRHqHqoA36fueH
         sSJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=vRXS84bbJsUYBdo6NrPKOtGxl8FaD7rd6BPrYrnkXmM=;
        b=OyOU27NtCvULYPxSzqqjoOWsgJ+0RGYQovZ+xiPJWWjeGtP+OmsY77oU02fX/q4jDf
         Zc0k4CwDmG5/J9ijes+dZxuRmVcQpPCaMFE7US7K4o3YThVG2QT96Je4GbbmnD/f2pEX
         bk7pEt/4CyKktMPkYdCXxmt5sbBHnS7v6f2c4ziX81o2kEtmi3OV9T9+grraOV2tVYV/
         RwnTDDWb5FNYQ63kGR72hAflxVxgj3sQ7A+2kS5CT6iUTj4nsXljp/kYGBYzgAQa2AUj
         TF8JzYwK7xC4vbD9P6sRbkNDTINFIpV77QVvqCDxnZKd/v9qhM4WGiY9yZpU2QRgmJ98
         H3SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bIfEQab0;
       spf=pass (google.com: domain of 3sncjyqwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3SNcjYQwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id bg35si422182oib.3.2021.08.23.10.13.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sncjyqwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id l85-20020a252558000000b0059537cd6aceso17132860ybl.16
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:45 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a25:9a84:: with SMTP id
 s4mr45327262ybo.416.1629738824799; Mon, 23 Aug 2021 10:13:44 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:14 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 10/14] x86, relocs: Ignore __typeid__ relocations
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
 header.i=@google.com header.s=20161025 header.b=bIfEQab0;       spf=pass
 (google.com: domain of 3sncjyqwkajuhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3SNcjYQwKAJUHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
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

From: Kees Cook <keescook@chromium.org>

The __typeid__* symbols aren't actually relocations, so they can be
ignored during relocation generation.

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/tools/relocs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index 9ba700dc47de..fbc57cc00914 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -48,6 +48,7 @@ static const char * const sym_regex_kernel[S_NSYMTYPES] = {
 	"^(xen_irq_disable_direct_reloc$|"
 	"xen_save_fl_direct_reloc$|"
 	"VDSO|"
+	"__typeid__|"
 	"__crc_)",
 
 /*
@@ -808,6 +809,12 @@ static int do_reloc64(struct section *sec, Elf_Rel *rel, ElfW(Sym) *sym,
 			    symname);
 		break;
 
+	case R_X86_64_8:
+		if (!shn_abs || !is_reloc(S_ABS, symname))
+			die("Non-whitelisted %s relocation: %s\n",
+				rel_type(r_type), symname);
+		break;
+
 	case R_X86_64_32:
 	case R_X86_64_32S:
 	case R_X86_64_64:
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-11-samitolvanen%40google.com.
