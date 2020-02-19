Return-Path: <clang-built-linux+bncBC2ORX645YPRBDPZWHZAKGQE4VNVE3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id A830B163811
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:47 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id 91sf11071932plf.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070926; cv=pass;
        d=google.com; s=arc-20160816;
        b=KbklJ5/ABGGsTPf0I02NUmnehLg6kzPkzJG5E8qeHTDUEKTV+FB6JpnwRtqTcX7ksu
         1e4aFdsZOnqK/ir3rq4E9pRK9tJs0mGovAzd9ZW8JptF6wx0cY0L86hBmBzaDGJZvwyp
         2TbxFaplEHBFNqbwBM1yfcLwK+yz0VDehJRdtZ/NjoTbojMrnV+d4UW8qec27H4LLodS
         JZI2R9RRgqQkLEq7Do4xVjGe76GB1xP+YJYqs5deRA2zweLEJPODakKYmgJjlGdGeJk0
         T7+2jGrx6Lzjmn6zf1M2wFKk79e81MT2sUqVWy8EwbzIbnb6ZtSMA+snk0lZ8xAiOG4H
         063g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LLY1J0BcDZ4g6UpzjuAiWVfWfywA+74Xxg6kp8cbV9g=;
        b=RLJwYkSrHx9GddvSmgIQwwBwAhEoKfA6Amx9mBZ1fXIrE+QO8djE8s9PQ4emXuqlds
         cew0mUlUhbpDAHR3SRiY/vRUph7pdoXzfcOJobPrqOgxRBWbpt/a4aFhVjhVCUSrejjK
         BjAvVv1YZyGOW9fRWLN+Qt3Hs9qHLI8lRxC36UaPNAzt7lLswkH4W0IinomizcAqvbk1
         NPQs5AZw3vBFbfWkn1pVn1g3VgkFFhQ1vEnil0m+QDWj+3SStVYxYVGMPu2h396XG//1
         5AOlYELHzcoSWXI1LRxVCZ/IzKdSMlNUwMzV/TaB8o8KriV87LeET8mdQO7g5Vg32FTg
         4vGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YBtomVXu;
       spf=pass (google.com: domain of 3jhxmxgwkak8hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jHxMXgwKAK8hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LLY1J0BcDZ4g6UpzjuAiWVfWfywA+74Xxg6kp8cbV9g=;
        b=gpKTkCRgQW3+34qSgVftOZAANPHbftF+ZpaZNKayuxz3M236TvZocbOz+bLTdlvtH4
         FMx4aMb27+LrQxS0v6r/vD/hMJJkqmzRE5LQze7g9enknueus8ASFeAkP2hJLoPwp75X
         vqF8pXlUBfRGXHly9JtsNdpePvzD6lPR2cf8MX6bKNS+JKYheNC1sjH79z2OB9h75SS3
         fiD+QaxOjOceXjWtDtHASH9QZZrYVPp75NgiU+x+RrY7Czu6af9Q5745T0fhFPCcVgdf
         xBVL7dBZ5ZreloGanecW2bEO40zPxMOHEjOcMUrMjOJBFzPSNmKbf346cnEBBGbddy/8
         FQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LLY1J0BcDZ4g6UpzjuAiWVfWfywA+74Xxg6kp8cbV9g=;
        b=FCtRk7ln77WWMEJdbzfvCq7i3kRYq/g50+wMSsEIa3tjGiNNQd1SkYD03g4hrG1c+y
         /VTwMYIiTkkor2SpZ63GVjd6qbk7ZPEuonHAgZfSM5fBrvODDXwnst69yMafEIZgwOAk
         aNkoG94uul7+3lHfNMUVWhIimHA5dVuDgQnQUwXJTSqq2Xl6fvKNFTNam233e/moQIwC
         gWb3yJQxuLvmRFAlEh6dY6KJslkyS0QL9rd6TmrTNhjtp3GtnXFQE5k7veFeGFK7nFZF
         RpbbXk3dvB6D5iIPvWXPJGJBtZp35bMXUKfTzumGQqaCz5walnt4kd3NuH+eHjYt9LQ4
         vA2w==
X-Gm-Message-State: APjAAAV6Jz8d+2Kf0yMZWyQQZulr2LGZnJnX0zTyNgwg1bfTW10cUq3S
	dwLhCju0PfUu7qDrrt/BiL0=
X-Google-Smtp-Source: APXvYqzlQy3N1ANb+QDodkWd3ly0sDnAG/tIWWNDq/FrPbwgENw27cxC7p9lHkjuegN5YOkNELuQrQ==
X-Received: by 2002:a17:902:8303:: with SMTP id bd3mr23762145plb.171.1582070926033;
        Tue, 18 Feb 2020 16:08:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c583:: with SMTP id l3ls2065216pjt.2.canary-gmail;
 Tue, 18 Feb 2020 16:08:45 -0800 (PST)
X-Received: by 2002:a17:902:654d:: with SMTP id d13mr22253587pln.187.1582070925516;
        Tue, 18 Feb 2020 16:08:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070925; cv=none;
        d=google.com; s=arc-20160816;
        b=a8mqM5OW9PkaMmicxh7EkpDHv2O9yC+YRyfsrQjsRCGZlAWpuwbIi6wCp7Y64gPBca
         C4vQotOP8s4emjmyPBca64k/0LGM7O9jy1e84ZXmfcOrXerI1CcBTs/dgUAgAm0/vl6r
         QGUjBXLh+PSc1H0w+Rjqeo2MgBJ6id0Hjz6w15lBZaNVbYHBtHtGhtSpZfmgQaT8ZvOa
         4iyM+lEUbKg3yaktEHyhm2r2hrpz6awMtjaEeEg02bq+aBMCrl0BcLJPv1fm01+sTZv6
         0S1THs7I02pIBPMqazEu304gpeRC19Y48j9B5m8rj5KH7Kw8S4hOqzXrGpM5rD2kqKr6
         H1tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jVKqEF9zEsFZTQz5E/s7PAlXyZsbPgu1MND2Fom4HAc=;
        b=R4z30rNbzcZJlrc8S5QGcDcbxS70FSDly1LGN8mdTiHIv1DHgw/C0PCr867Z0GQFCY
         IOcbfLjuyiKly0xc8iXyhqVYVsHE4qXhP+IPkvAu3zM6w6b6MoCotp3O8PsLeTVcI7ru
         LQ4MMdj5YCgVBvFlkcDXnA7TXYjdvTkl85xAvyY9i0tzt0fcnzUDY5+mr6JGx1/1jbzq
         5ggPz0SQBXLgKCN6rAWR698CtriPNY+zcK9ZyJY+l15J0ZAx5YRACmlLIuexxkkZf2ap
         ypyoFfuJSkw/Ni45HNXmyok2nPB4qP+M0Ei1IUtUFQzimU4RUxESLV2M9I+RJLAzdq65
         nngw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YBtomVXu;
       spf=pass (google.com: domain of 3jhxmxgwkak8hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jHxMXgwKAK8hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id d14si13745pfo.4.2020.02.18.16.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:45 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jhxmxgwkak8hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n71so18917799ybf.0
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:45 -0800 (PST)
X-Received: by 2002:a81:57ce:: with SMTP id l197mr19086954ywb.235.1582070924606;
 Tue, 18 Feb 2020 16:08:44 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:10 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 05/12] arm64: reserve x18 from general allocation with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YBtomVXu;       spf=pass
 (google.com: domain of 3jhxmxgwkak8hpbxidakpctcvddvat.rdb@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3jHxMXgwKAK8hPbXidakPcTcVddVaT.Rdb@flex--samitolvanen.bounces.google.com;
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index dca1a97751ab..ab26b448faa9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,6 +65,10 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-6-samitolvanen%40google.com.
