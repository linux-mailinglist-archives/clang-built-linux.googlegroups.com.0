Return-Path: <clang-built-linux+bncBC2ORX645YPRBUEYQL6AKGQEUH3VMEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EF4288DFD
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:10 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id bb2sf6613670plb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260049; cv=pass;
        d=google.com; s=arc-20160816;
        b=gCEDRe1aQke4WP2aR2yqxbLC0IM4n+U46+bnjblCdIw6gVpkfxg/38m5+5uPfAeHFy
         X2wZHwDyp5ipJq0hWEqNhjO6lv8nLIHt/nLTdVSDpcqN5N0KN+aQ/HjvreX12NU2b4Jr
         dDG+Je1nU78lU37Jw9SquJqyhwI6riDItqsdOcVEjqMipKTF0RT3s/bYeKF5zrvvsLv+
         Jik9nLS/+KRluPD4kPJEi8Su47wbH3XhmcXoNqXsT4UkhNcYFZkg5nC3E/9Om3lLpwk0
         iq3Pckqy9ZM/9QPslRl+Xb/WOv8vR+ZTV063RYeoJVKqWdX6czZJzeho9gAcqFZ0L515
         xseQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=rNJnKRu/ebjF3Zr+EaYao5oBxYNkkQkCRIKU4jYXFPk=;
        b=a1q9mpt8UrO7dbl1Yu9T9YqQXhilD5cpFngeZE94UGilVC+x4a1H5KalsCnHAuJ9KP
         dSWwTclAVU3YlS1vphhRwU1dkK3K4eCBW5njRzb/uHwAw/wWJxSSvFVPWPGIwMtjyM+X
         ZlwqWhfsfG+TRhg5ilVcToLqEGAkGllmgNyJivYmSZMSlts/9vIGEuIBzNkQ0mpfhnLp
         lFBLnOuqP0ft/hBX0InVG4kSAlId+/TepT3kRsgmK7A0MeJFTwlVbT8eLyLC3fbLu2CB
         zT1WVHdh4B+NtmMse5sKLTymGqX5mkHrhN8QrjHvFBrmfrkIcGmI2LoVN9bbpylsHIfi
         lZZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sEoOB3be;
       spf=pass (google.com: domain of 3t4yaxwwkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3T4yAXwwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rNJnKRu/ebjF3Zr+EaYao5oBxYNkkQkCRIKU4jYXFPk=;
        b=F37Fz0YpMRd6NLzmQrYfzZjlIgBsdCQNh6kv+35odMSY2w5aA4BPGa25v2QxyF0hnv
         yWYfcMbkpOQhaBjV6i94kPrvO9qIAQRlPdOrqmAplBNDzKeaGP4NojvkyU6P2GVSTavL
         xLcjtQSKKOU25OOnqoPbLlYTbF1qlJiRStUsV8OuRMOPgtCkHlfnxGgKwbp+LVRJGGVb
         CacMvQs8TIqfEwHqhObRt15UL/ZDC0ojkulp9NOI22UHSYT+uP0imfy9RyNuyOrO0/s4
         O1DZxoqA/n20bOpv6ttiHUZkg/SyUtkBMbhOTFk3S4tHg46uddJtE4NpHYcsPOA8gIDX
         MRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rNJnKRu/ebjF3Zr+EaYao5oBxYNkkQkCRIKU4jYXFPk=;
        b=pKzoP6tFUi1Lo97LjqMG3WdaRpxKNeW3Gr3uGAhJeZ6EMzfRyzsYJ4rP/GpdZMX2R6
         TeN0CHLbm5RqRkfQriGsUoDJ3CByc/TIkbFkhtxh3O0jgSPMwOgjrnHSvkKDEHHaa0ES
         QvBpRJx93RryqtFFrbur3YwrYO1cVOOaeTh29pR5uGRMfCXo8ARLnRIP3t2+XUDmo2ZH
         vkhAmjzPm7nFhem7UHJoZTsmARVz7LQyVq4VEMLaRNw6H2vEoX7d0UXrs5YHRxWLLuKv
         Rk80zASMujsA3/o+8ZwGrionLJUXkCHOOKCBGBW07UlxLAgjP9qy2+hE2h2uS7zDnVSg
         BauQ==
X-Gm-Message-State: AOAM532ESITrgAPcOgV4suAnhnBsIYgwptYvvrIpH2OQYaBQG6Mmm6XW
	nJpjk4TfSAhP4XNCl9ifwaQ=
X-Google-Smtp-Source: ABdhPJxLddttW2vxyGQBcWxGjOK2/QsS29b/X9FtpW7Omhq/6Sar5EFxeBpDgI7PPk/oC/CUFxF8UA==
X-Received: by 2002:a63:c18:: with SMTP id b24mr4077783pgl.208.1602260048830;
        Fri, 09 Oct 2020 09:14:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc0c:: with SMTP id w12ls5054552pjr.2.gmail; Fri, 09
 Oct 2020 09:14:08 -0700 (PDT)
X-Received: by 2002:a17:902:6b8c:b029:d3:f9eb:a328 with SMTP id p12-20020a1709026b8cb02900d3f9eba328mr9053855plk.17.1602260048182;
        Fri, 09 Oct 2020 09:14:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260048; cv=none;
        d=google.com; s=arc-20160816;
        b=BVnJ4nFr+B1HIGX7I02n7l7//Qk/dTmFsQ93Ez9mdLVbjlHjCoVZEwPzJyQRvbJJHw
         dCLp9NWf8mBmg+fqLK8ttPPXraR8RqoAFhZQIrABzi8/hVk4y7BfSqdb6pn4zU6uecn6
         ZGb8MQ94GL5r26HUn1knMVP38hTndRVqbxF1W7lSH9zs1us1k0l+fb/iZ5QIT9SH7i0Z
         Qy/7al3TrkN76WK63mZGkQNTIXRyyZZqk9AvgqvcTg+wXNcIltWGAR9bbJnHw1Td9RJe
         vLe1MgdvkcVRcSnfB/YvjMDFUvym/S/Oix9OH4HGvPFH5xD0vS4nHS4X4kv2TxqEd/Dw
         HM8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=i0HfMD/wRChzzw+H0j5SIQI+XYlsyfomuEvjB0A2b7U=;
        b=RqOUS+okWWS3zzk/zy9hdTZ87ZPGQfJ+93w8mRhG0M23YFB5Vyb59Lvz+BrUCz2HlB
         uuDdtMv8Pq+90q0ZkG8gdk5a7LYV8eY9TpvTYt+xp6rjdKaV42Gbx0InV6pUfBZzsw2G
         AjQ7KIPfBFNaAhdTMLBkk5Tyg6mTGX29LRLOiRmJm8ek4waGzy2rnKQSzKwzFzXpgUGx
         omLcd0fsQn6B3aamEtX1db9Ug9oU7E5xrVWh4qngWqnaiWW9xiro6AXZmwGaAPI5NDyU
         i/VSWBm2HkTMGhtEn/HYTo8nCFkivlkl0S8J1kYuoZePEKTdgcwB7YLApTNq8NK79AiZ
         eX9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sEoOB3be;
       spf=pass (google.com: domain of 3t4yaxwwkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3T4yAXwwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id mj1si658032pjb.3.2020.10.09.09.14.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t4yaxwwkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id i10so7139786qkh.1
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:08 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:456c:: with SMTP id
 o12mr14223376qvu.48.1602260047185; Fri, 09 Oct 2020 09:14:07 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:22 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 13/29] kbuild: lto: merge module sections
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
 header.i=@google.com header.s=20161025 header.b=sEoOB3be;       spf=pass
 (google.com: domain of 3t4yaxwwkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3T4yAXwwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
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

LLD always splits sections with LTO, which increases module sizes. This
change adds linker script rules to merge the split sections in the final
module.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/module.lds.S | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 69b9b71a6a47..037120173a22 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -25,5 +25,33 @@ SECTIONS {
 	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
 }
 
+#ifdef CONFIG_LTO_CLANG
+/*
+ * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
+ * -ffunction-sections, which increases the size of the final module.
+ * Merge the split sections in the final binary.
+ */
+SECTIONS {
+	__patchable_function_entries : { *(__patchable_function_entries) }
+
+	.bss : {
+		*(.bss .bss.[0-9a-zA-Z_]*)
+		*(.bss..L*)
+	}
+
+	.data : {
+		*(.data .data.[0-9a-zA-Z_]*)
+		*(.data..L*)
+	}
+
+	.rodata : {
+		*(.rodata .rodata.[0-9a-zA-Z_]*)
+		*(.rodata..L*)
+	}
+
+	.text : { *(.text .text.[0-9a-zA-Z_]*) }
+}
+#endif
+
 /* bring in arch-specific sections */
 #include <asm/module.lds.h>
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-14-samitolvanen%40google.com.
