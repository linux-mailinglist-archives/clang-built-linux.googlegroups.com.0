Return-Path: <clang-built-linux+bncBCIO53XE7YHBBVHE6T4QKGQESMRDZKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2D824A143
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 16:08:21 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id l28sf10867044oti.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 07:08:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597846100; cv=pass;
        d=google.com; s=arc-20160816;
        b=xrRek/xJnz/rvwqk9NRZiuh7G8BoJ85ERfCJI8c8WBELo/I8SZ1kKksnGE8dB/uk4+
         o/qflPwXECmn1Jso2xxrXjPu68yGVPlNpB8/RkzvBElMb/EgCliutd5CghKCX8EInC/w
         iQGh0v8B9o7xyXkWr5fThswMrGcKacq70LhU5JO2hAWXdjci8yaGwLNpL1ApipvkxuCY
         hohwquWCnTbsW/5RweDAGYZ6vBALTLqEb6ZDBS+yZmNpXeYhkmRVThGhyOrZE/tvZeG8
         3epikUB/zGhKWI6n0q3Dwwon9b/MeICWO9ZoOEO8hk4w1v+jdz6qn5UJcc18WoRlpId0
         bF1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pVlB2RspnHW7+x8pb5NgjWQSVKiSIJIh9Fhouj98hnE=;
        b=KJ3YNIa4BN1t27J/oV/2kHro5GhkvBt49u8qwR2pYl62jTvnmUcSfe1IDA50i3QeFg
         /LpO1jSkQ+ubIbwortTRn2o8peio71ldMZGUTTnt7dYXe65zAElavKAEVj26YE01yED9
         qZWa2x/0W+HAXpcsN2X4UEIomNgmgVX1R2w2M3hs6xxawqS1OrE354t5ijVkwAA2aPUo
         IUDysnptIqVKFkXRqns6db3XJRyvdowuqDaUxvu7hPzJBK/ctjvSDdEih5YKHs0YV/Gu
         sPS48dNvEa0oqgy6BKs30rFKaKXqlJC+Mrtysyk5cT/CC+sRb8Lf2LSb1EXDlWGMp+8X
         HYcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pVlB2RspnHW7+x8pb5NgjWQSVKiSIJIh9Fhouj98hnE=;
        b=WA94R42Ln3pzBNWSw2kmxWGr2o+XPk/jou5EC0GQgNAfUfc4GPLSBn+Xjd77vTjIVL
         5jr2fDnKFcNv8g2iVqCnvTSCq8nTn9eOapASqbZymbzZ1N+2L4pZWzmzZa6fyE3wKKnL
         Gi8lEqk1vUEMx8I424yf0Eh4ZV/tLKkeKC/MY1/vdWEoNllaKd0bH3Fiok+XNxnkpJrE
         DxhaB/v0UlGvLkii3JwL/GaLRF8x7I1K7kmZeVijpuFQ4u5XpFmJx9mkJMKA4ZFXowTv
         qTVoDBF4AuMk+uerDK2i7MbHDbcW1qECFv59cY7nE/9rNLca+Yqsh3sn87rbezFjkwm6
         xnUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pVlB2RspnHW7+x8pb5NgjWQSVKiSIJIh9Fhouj98hnE=;
        b=XruK+D/J8CQ4d402FAE4R5Wy8UhFQeZJSXN9fZ8m70/BvyPhpmpRvk8ryiDu1jTtwJ
         Nnuc5tvcdV8N9tWVPjqtsBKyIRS24U+jZ/XEg3Tx33gssrwZLzmfEoWgzb7ltZlZP0YH
         jo5FyrPi186dhTAYPmQcLHQO4n4d7Yktp7zeAsnbHIWdZRAXxgR75vnRG6/52gCun09A
         FtX/1e7z2SG/jC6fLPucelPF6MRHemYPSVi5XVPsPCW1swNQTHcsHaN9b8vqxBRZGOPx
         uWvrD10MUch5mVTuuKzdWatP3JQnV0PiXm47OlJznU7xfaueY6P4oW4X6YT0zM7rl3lB
         b63g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329JdXq/7tEdwiCp3JH1TkYAC+s+EZVykymM3sux5ezVnESy5Wm
	CtrNSqF8IypUWSSoHz9xV9E=
X-Google-Smtp-Source: ABdhPJzvwMiUJZ2Cfddz2LVF21L4++dvnibHSL5nS8/M7dkH2NpiTwiAz1UD6Zo6w/iJl/lIfTYZLg==
X-Received: by 2002:a9d:113:: with SMTP id 19mr19043228otu.16.1597846100486;
        Wed, 19 Aug 2020 07:08:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f4d3:: with SMTP id s202ls4903830oih.0.gmail; Wed, 19
 Aug 2020 07:08:20 -0700 (PDT)
X-Received: by 2002:aca:724f:: with SMTP id p76mr3279760oic.35.1597846100120;
        Wed, 19 Aug 2020 07:08:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597846100; cv=none;
        d=google.com; s=arc-20160816;
        b=VLZjrJrIdE55DWWMNAKEoBOGXym3LXsluuJYurBi4wSAk7kjKAbTlz8V+B7zpPa9mw
         3ErIuOhX5K5mDsgwFRnQBXnvTbt45LMZ4F8Mm5nqXGO5l7cQJX1LZwmitITDPmzGG6YL
         ANvLzdrL0gIYhQFNQBA9ZOnIBDhdq/hKJgH9QO5MBART9YM80uSkZwqTfQuKtiulJSQx
         pDNPcItUrlxKmd8+RIl8HioH+DVxm2hbN+ozeRLyPPYZL6uQOHlfNbQCAYTiV9Uh9ou7
         SW9NhCW1Km3L+6dZLTvpA/Z5i+/LtXte0tkw4u+DIhhlD00ikRDqB6qEtCiMRUaMiX5s
         xP+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=RV6pBQZ9MRlDByHN1h5rkzmXbG7Gch7l2dQUZjdYLUM=;
        b=LCL2stUyswAHM8US6TNGRPjWU9xb45AiVeKStYgDOCopMLku/0JRundcwwsBQ3M3P0
         Ahid5bErwAj+Dl//ECvL+oz7H1MVf1eejxEkiPR0TGYh7rUZlEvxcnhO+xGYuFahnYpB
         9cRnWFh3LAThf3wTRKzadY1WKfU+kI6A4mep+LaLJwXIjCG9aheX5/oE65QlS0dQTwbS
         k4ba8HTzN2ognSXgslg9c+GxpT1eZJODCzQk98uNJaei+Pf9CdwS8fwUsRBGTXjAeky3
         Zq+e03yoMS8NnT6aBnbUzKX+wu+r8jjThvVJEb9psbeClM7fVHIVJs+utp7bTJeIexz1
         Qf8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com. [209.85.219.67])
        by gmr-mx.google.com with ESMTPS id 22si1353909oiy.5.2020.08.19.07.08.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 07:08:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) client-ip=209.85.219.67;
Received: by mail-qv1-f67.google.com with SMTP id j10so11260051qvo.13
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 07:08:20 -0700 (PDT)
X-Received: by 2002:ad4:4984:: with SMTP id t4mr24046002qvx.110.1597846098109;
        Wed, 19 Aug 2020 07:08:18 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id v2sm26975641qte.25.2020.08.19.07.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2020 07:08:16 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] lib/string.c: Use freestanding environment
Date: Wed, 19 Aug 2020 10:08:16 -0400
Message-Id: <20200819140816.3807604-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAHk-=wiJLvqS1_O+yAQSZr-Lj49HdJyLpt3J_nW=otHLfEN4RA@mail.gmail.com>
References: <CAHk-=wiJLvqS1_O+yAQSZr-Lj49HdJyLpt3J_nW=otHLfEN4RA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

gcc can transform the loop in a naive implementation of memset/memcpy
etc into a call to the function itself. This optimization is enabled by
-ftree-loop-distribute-patterns.

This has been the case for a while (see eg [0]), but gcc-10.x enables
this option at -O2 rather than -O3 as in previous versions.

Add -ffreestanding, which implicitly disables this optimization with
gcc. It is unclear whether clang performs such optimizations, but
hopefully it will also not do so in a freestanding environment.

[0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=56888

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 lib/Makefile | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/lib/Makefile b/lib/Makefile
index e290fc5707ea..a4a4c6864f51 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -15,11 +15,16 @@ KCOV_INSTRUMENT_debugobjects.o := n
 KCOV_INSTRUMENT_dynamic_debug.o := n
 KCOV_INSTRUMENT_fault-inject.o := n
 
+# string.o implements standard library functions like memset/memcpy etc.
+# Use -ffreestanding to ensure that the compiler does not try to "optimize"
+# them into calls to themselves.
+CFLAGS_string.o := -ffreestanding
+
 # Early boot use of cmdline, don't instrument it
 ifdef CONFIG_AMD_MEM_ENCRYPT
 KASAN_SANITIZE_string.o := n
 
-CFLAGS_string.o := -fno-stack-protector
+CFLAGS_string.o += -fno-stack-protector
 endif
 
 # Used by KCSAN while enabled, avoid recursion.
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200819140816.3807604-1-nivedita%40alum.mit.edu.
