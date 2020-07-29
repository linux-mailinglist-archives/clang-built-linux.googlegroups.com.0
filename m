Return-Path: <clang-built-linux+bncBC2ORX645YPRB7W6Q74QKGQEIIJ5W3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FF5232729
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 23:52:00 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id j22sf2943054pjn.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 14:52:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596059519; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/M+ZyqX6jFO2cyncRqTQ3xx9HhjGcJKmwacAWRyF7uC+DQQGAVNVioihWfRhO2Vcg
         7hOhrGBmORRCae/FEux7L34jBG7hmlKlr1pD+cQ9FUNsWZBLpv9OjuZJkaeols35IDOf
         FpeN64rl6rj/6C/B4FSZCmfH2pkAS7eOJbJCA7NuEWl2UucBglJAXcj1U1YEiWG9Kn6Z
         akyvj+0c1e3Rb9YEwrKewwllIRBxzJgriFBbiofsur83NqWkILzxCy6umP3YiRCVjvpq
         X9OHlbyXnYakepQQHN66d3bkzfmy44H3bwaVjc9q+YtkBrmHR4oajH5rLAXGwQrVP2jo
         BRxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=JFgLd4xmxMAL8sdY6WQN8TcgagMJVROrNWo6lq6CCZ8=;
        b=r0XvVUxSYCjubxcbdTk7ZUpizsSyWUxW/e3dEV7GBbolVfBOMbaGwmU6fjxzPF3ViN
         pwsHz2R316O4bVWU1ReihGzcOohh2v29mbrsvQyy6iCtU+kw2oHtJYxtInE+7cfjHO/D
         79Bq2boHQVgD6Nvt/tnV1KoU3vcP7V3vl6xrxd3OXFL7Ojlzfz4Q28993/k2izkIH/pO
         PZzo28VncPDkc1UX1pH49NVvWmfQZZUybX+FrQEkAlahO3SjHM2oS+gHXxHbiUVJjzx/
         3xf+WRSMWOrfTJnRc+MDg484UC/R4XEs7JGoN5wrl7u4vxpkVf0o1XJjbQw1wAepXQ7L
         Ek5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ciUZh/ty";
       spf=pass (google.com: domain of 3fe8hxwwkaoiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3fe8hXwwKAOIWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JFgLd4xmxMAL8sdY6WQN8TcgagMJVROrNWo6lq6CCZ8=;
        b=EomlbfDKB4K95AAd6xeg3mCi3dvwAHlqcgzyDb5xanwD+phsi0tLcuyqL62FBpfIYQ
         FktdhYoJo7INUn5/3oCp2w1fwImg3ORytMAfEvQxptAw0fOAlYPYiuFPvq3yBEDUrwjF
         zRwh9rLsEEi2CT/IUralxydYaMtsU5slwNFna0xBAwMvWU7hRxTYPMlsUpdSsZVuf5hN
         MXKcBPBxF5u4maH1zoSDx39NXU4aUjrjQywCrVM4C6NgCuz+Xh14QGXPDXMB6z/2q7z8
         a+CA2Rsqbct39c7oKZEU190LMXs1LWzJtwg7ZP8uwzdSeKVm657ItBfROD2iILZHYVag
         9rHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JFgLd4xmxMAL8sdY6WQN8TcgagMJVROrNWo6lq6CCZ8=;
        b=Qe+Yi631SA1TBZJvjALK8jIdqPFrtaLA8zSVjWvcRw7lk/LUKx02zSWB6gAh1fpQwk
         4WGD+zWfd+t4L5OY5wLy0WOqPbF8x6cVKn4vBuYhxdxKnT5Kqqelzo/z+BTfBwvWPkfy
         2cVPjJiPCAV7BARFGz9gLBAy+WPPvxxwJ4432WwYyuEs9kRLQzVyTB65ugrBQpbzAeEN
         IRuEE6kEStucLlnO+Hd6KtRbmLyDGtPUXVe1IWItEGaRAnhYAHFDHsE69RsEIi+PF4Ba
         kqs5InlS0/+EcsOTP1MfoChiz19LbKIVoCopsJoTIQsq8EgJWhNTYwdGHQMukxDCNn7u
         hARg==
X-Gm-Message-State: AOAM533JZLcA+ig7ACFVZtJb9sEQIZYLjIfo4caM29zwNPPI46XBZL99
	4HdVlHoNps/EDDNr4nWP2zE=
X-Google-Smtp-Source: ABdhPJxx5cx5A9OdIIB2dErhA9PAw4YgaN9boNtE/JnfwKMx66+wNW2vpcAwJPhDNbI+gNy5LUFoFA==
X-Received: by 2002:a17:90a:ea82:: with SMTP id h2mr11665815pjz.75.1596059518987;
        Wed, 29 Jul 2020 14:51:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls1013086pgo.9.gmail; Wed, 29 Jul
 2020 14:51:58 -0700 (PDT)
X-Received: by 2002:a62:3684:: with SMTP id d126mr71756pfa.234.1596059518482;
        Wed, 29 Jul 2020 14:51:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596059518; cv=none;
        d=google.com; s=arc-20160816;
        b=dwhCMQQadhaPevCINKQqBgBNNXWTRnLSqlg8yx0Ox2g4GgLLFqAjwOVQUKYBrPw8rV
         I+/PKxK3IyupNI5VsHTOn6weZeAZp+6uemjHw3uFAPHf7zaXGEfNNdocPutiblAwNw7H
         wrTFg860wTknuYHAbQBksbhzMwBBSzvBMKbhns3Wrl2N2tgsQJc641YlSnRc0V55up7e
         95GabBAps/QgTgKzvqG0PeIKiSuJf0nLfiiNpUJ/ihVba6rwsxNVNBvnzRLCh4eBMgUm
         6p6rZds04TYaxsEily6l2oCCnWOmJ51oBuBaOF6Y7F5gZ/byDKiWABFebbmtUkwp8G9k
         nrlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=XqcTC2vuCfQSKcre8J8WDJG0kMjtcm07zH5Lw6F6DXE=;
        b=ZbTjHQc4L1AefswZ5mTsOjdlgyYKGsKFb5hNErX4uw7GtT2mmwnPYZWZuN98q9VwZP
         hUJSVewXV18bWK4w44+cniQoC+mTFPPcBeCqOP/kc5UB5nXeyskADpEHmrE+cvwe8JBj
         EU/VFP4SbaVVlD6xfVmSmc66iAgtIA6urvQQWSecBdpAd9HuHyW+ArpkpSY/hDARodfH
         Pbtf/O5G1uMOup1gT0m1P7ozrLOW7Cg1UcAaAB7naJDAEcZTjSCPyPRuiNHYVhzm+HpL
         JN7bB9DQFCXs1CHc67+UQMR1Z15aeGKlHWjCOHesRiXw6Spscx+Kz9oZJGv3BrSK3Z2S
         sHSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ciUZh/ty";
       spf=pass (google.com: domain of 3fe8hxwwkaoiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3fe8hXwwKAOIWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y197si279499pfc.4.2020.07.29.14.51.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 14:51:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fe8hxwwkaoiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id u189so30824919ybg.17
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 14:51:58 -0700 (PDT)
X-Received: by 2002:a25:a107:: with SMTP id z7mr719351ybh.310.1596059517661;
 Wed, 29 Jul 2020 14:51:57 -0700 (PDT)
Date: Wed, 29 Jul 2020 14:51:52 -0700
Message-Id: <20200729215152.662225-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH] arm64/alternatives: move length validation inside the subsection
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ciUZh/ty";       spf=pass
 (google.com: domain of 3fe8hxwwkaoiweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3fe8hXwwKAOIWEQMXSPZERIRKSSKPI.GSQ@flex--samitolvanen.bounces.google.com;
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

Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
sequences") breaks LLVM's integrated assembler, because due to its
one-pass design, it cannot compute instruction sequence lengths before the
layout for the subsection has been finalized. This change fixes the build
by moving the .org directives inside the subsection, so they are processed
after the subsection layout is known.

Link: https://github.com/ClangBuiltLinux/linux/issues/1078
Cc: <stable@vger.kernel.org> # 4.14+
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/alternative.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index 12f0eb56a1cc..619db9b4c9d5 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -77,9 +77,9 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 	"663:\n\t"							\
 	newinstr "\n"							\
 	"664:\n\t"							\
-	".previous\n\t"							\
 	".org	. - (664b-663b) + (662b-661b)\n\t"			\
-	".org	. - (662b-661b) + (664b-663b)\n"			\
+	".org	. - (662b-661b) + (664b-663b)\n\t"			\
+	".previous\n"							\
 	".endif\n"
 
 #define __ALTERNATIVE_CFG_CB(oldinstr, feature, cfg_enabled, cb)	\

base-commit: 6ba1b005ffc388c2aeaddae20da29e4810dea298
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200729215152.662225-1-samitolvanen%40google.com.
