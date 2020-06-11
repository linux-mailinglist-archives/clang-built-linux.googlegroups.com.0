Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBNPSRH3QKGQEMLJOTFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD321F6D82
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 20:34:31 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id co8sf4914783pjb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 11:34:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591900469; cv=pass;
        d=google.com; s=arc-20160816;
        b=YayGy/Ogl30eexoyl5uvyw5SHLIg5UEbjRvnmsurZDLArwd+oZr7TFMmRPJdNaiLcb
         9uQ+tBkDEdw82UF2hwMfAUxm8Q4PWL+aQw1neWlB6//9VDJ3tfZUIdsHi1N8l+iP0oXW
         dx2z4ddW8mJXNrHIkufZqbgFI5Q58AZll+xWo2rEHURw/ozqlVp4DvQrxRa5s34q5eak
         bQL+T+CwFahypVXHq5XdStSCw3efhidhRO/sAhHUIlvf9oQDMcWiHpW5BV1udqH4lMRm
         jcfnHUY7SGnZGFLluWFt/By52owngeycSfFgGnuBLyxCQECTOR1M5Se9mbc7vd4xw9rR
         eYag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=i9598i6C6pRdUw5u0hhqbd1HRNbv1zwpNh7r2FfzvOk=;
        b=WH9p/gK8v4/6/rP00QiwNmmZ1YmMHDmQkf78rVyTdKCLk+ejcErG9sI50QMR9TqvK+
         abon8JId6tBJl/tKt1HdR1BW1Ix4D+Y1nYNDiAYUJMFM8vKsvZmSU6G8TTeYt6uVCmVW
         CickmsI88I0uICgWBJJQiBQcEbSzftC80IGmcVE/6GV2guiZQV+6Fiv0GEQzEAv9rHjz
         AU5IbQGRMNK8rii3Ywq8vb/o+H7zpSwaeAw1rOAstaC7xbsvVSxkqpinm4Qe51i1QXTP
         ol8fY8oknq6SdhLowNiru9q7C6aClCJjl3rsQkUeI6bn1LNRavDfmViDz3ubxGu8ZPy/
         V9zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o9hdq+lD;
       spf=pass (google.com: domain of 3nhnixgukea0auhpxtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NHniXgUKEa0aUhPXTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i9598i6C6pRdUw5u0hhqbd1HRNbv1zwpNh7r2FfzvOk=;
        b=Oz7kV+IaMRBXjvh35jODVT7ycGdrzSVNU2PQGDnG3LO9hr+6s8hKXUzzPbKaOv8qHu
         8KsZIP9zxRTkdnB5GFWvr4TIozPtkHmR1NpBr1bvtLPKrhG8GZEJqXDrV6X3lPdx4QM0
         wR6i2Zbl/949BQnZGUCeqfed+Sze/B1w66Hry8ZK9Cvj4rDitc3FgfgEt6EUVb0/ke21
         /CgYHJo/Yy9ArdamSFb16p9f+8337R3bcRcTkOvy+TDIaGKnl34fnAX3ibovMOV0YJWn
         cTXl9gqHubvewyhHpT8qW+QuAJXdQotLWMPe514nE9VvjyPIOF7T2soUd2IaRUb+uent
         BwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i9598i6C6pRdUw5u0hhqbd1HRNbv1zwpNh7r2FfzvOk=;
        b=VxLiUoYQwJixyZlqOGhcsd3xJ7cA1hZT5N71IpbJe7slC14yDBsOYkPbJOLlytnKZK
         Yhjfy/KOJzy1qbKTiDZJGRHUFxB8XkQDBYRgmGBtpiW1vi3eky5vxCP3lNQNJj2kPfZ0
         +r8tf2Zs6rQkjQbtTdmzU7qwQSuab4RGcPoY4qtCzOVLJzJZdNq3AMGgmehsJI2EsL7d
         QwF/n/tAAbPZcVIH0RtINeQn7BO1RIowHchwsJm0KUgOpevlCkiPsF8R6ZRWuuK9NLGN
         L2IvhShnffiU4MWnzLMkZBZcLAh2GfWt/shBr1+PgDpcjZN2dAkVGdRTivLknjJb7k3r
         heVQ==
X-Gm-Message-State: AOAM532HPEO0Lmdz6XdGwehMCxUEk6B+XlT1ok+XU2OeUpi/OFSU9a8R
	RkIrkfujVxiwLSf7ml3cIoU=
X-Google-Smtp-Source: ABdhPJxpGy17ZWOSP3K8ZJvvz9Cy/IQFGALbLwguUe1viEriz5oDA4+1xEl3pq20Qr5tIgOPp+HrKg==
X-Received: by 2002:aa7:96b0:: with SMTP id g16mr8532965pfk.126.1591900469503;
        Thu, 11 Jun 2020 11:34:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:178e:: with SMTP id 136ls952192pfx.2.gmail; Thu, 11 Jun
 2020 11:34:29 -0700 (PDT)
X-Received: by 2002:a63:516:: with SMTP id 22mr8078798pgf.349.1591900469065;
        Thu, 11 Jun 2020 11:34:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591900469; cv=none;
        d=google.com; s=arc-20160816;
        b=FqETXRzBq5+8ZCburV6RcTgkoiD+G/kvElUOot8ej5vzsPxWLv9chvDOtXrPwIKzlO
         VbwqF+QcTy7LiNQzuSWgJM9w6c4J9NCyOfOdjYPFyk5ThxoQnqA6DTyWkWKF2gZ8X3Xf
         fsN7B4ep+iICeEQfZcUSFNjy4EkveA1G24gxROUyyHluCCEJtyqNUxW3eZtHKRiXYlgt
         L/75ZyZY6/CJghJI7K4p6bKME4J7LQzFqEjtFab3pw3GKn2RAiQvdRNi8tU7rS9ocORk
         5T3LoHrLOm83NO45gsENIuSDRtjGn9tMJbjxHw/dod3Po/8suVEIE5W0avZ1eRasHxGE
         Llww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=COXpdfYzdd6T2PLhteaDM1tUQElcqbQJ6tIcGD3EDRg=;
        b=olHnTBOqcqcZppoR9JwODAW1VsgSeTpZu24h7BIGAdMIEoL6WAriRkSWSN0Vv+7BD5
         88m+3vndoAWdruxc7XPxEJ9MFfzuHzAktYuLp8NxWPLZHGwsDrjuD718emmSxW+H2W3U
         Q5duNg/3WoVTLQZ0rRcZ9RaQAgrUHhC/3riOxfhOIiarfA9/2fXKlBMlfk6J3C8PQ0gF
         y9VzLVmTgXEmqCvO28uD7nQwDDCc0/XKeP2e8HjG3HpNLgWfelZzSQPH6JK4fLqt5Vyk
         sC/0I6mtMWSibW18gOf40pNVg1AyHMisnJ/AD/XzxVNZfY4evGCTVOm+vWXRQryMwv70
         InjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o9hdq+lD;
       spf=pass (google.com: domain of 3nhnixgukea0auhpxtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NHniXgUKEa0aUhPXTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id l9si282788pjw.2.2020.06.11.11.34.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 11:34:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nhnixgukea0auhpxtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n11so7581145ybg.15
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 11:34:29 -0700 (PDT)
X-Received: by 2002:a25:3103:: with SMTP id x3mr17950241ybx.36.1591900468187;
 Thu, 11 Jun 2020 11:34:28 -0700 (PDT)
Date: Thu, 11 Jun 2020 18:32:35 +0000
Message-Id: <20200611183235.37508-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH] riscv/atomic: Fix sign extension for RV64I
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o9hdq+lD;       spf=pass
 (google.com: domain of 3nhnixgukea0auhpxtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NHniXgUKEa0aUhPXTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

The argument passed to cmpxchg is not guaranteed to be sign
extended, but lr.w sign extends on RV64I. This makes cmpxchg
fail on clang built kernels when __old is negative.

To fix this, we just cast __old to long which sign extends on
RV64I. With this fix, clang built RISC-V kernels now boot.

Link: https://github.com/ClangBuiltLinux/linux/issues/867
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/riscv/include/asm/cmpxchg.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index d969bab4a26b..262e5bbb2776 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -179,7 +179,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -224,7 +224,7 @@
 			RISCV_ACQUIRE_BARRIER				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -270,7 +270,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -316,7 +316,7 @@
 			"	fence rw, rw\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
-- 
2.27.0.278.ge193c7cf3a9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611183235.37508-1-nhuck%40google.com.
