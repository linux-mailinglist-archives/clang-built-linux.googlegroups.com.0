Return-Path: <clang-built-linux+bncBC2ORX645YPRBUFKST5QKGQEMBZP5GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE30270639
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:13 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id o68sf1404350vkd.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460113; cv=pass;
        d=google.com; s=arc-20160816;
        b=EfyzX+qdvIejv+o7/PwO6CwW0Te4Agrj1QiLNdySFB6zQ77lVGrgzc5/ErxV6EJo94
         z/dli2Txjn7KrE2Adv5nWKBpsLdqBBlk5gQDvdUiLiaMlkQJXNpRIkbgZ9M1jlRRrzMs
         Up6bsrZt2JD8wSscqkSGw5139rPDY5gAA6MaQ6nhTWkcyCbePah9CNtHM1tKwuQAqM1P
         B7XeswY+fQ1o6V8zr3tnaZ4kdcZVfhVr5HmI1pezKXQDet8JaPMMbwxbMB3y8zt5CrKh
         OxwdcO31OOJNifm6uZVl+no3m4GeMAEPWNtJO3wXxBtzy5PoGssyjdRDQLlD/9FlnP+y
         4HKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=tmYqq0mLvpyxNYUuZ2EdmpF7/vFXU8XtCx6qexDIbYo=;
        b=cju2leqdVBe1LrifWsprjZ9vCPwyaQR8HWQvdSt0FeA/0m3E9S/diAEoQf38W3Q2dk
         RBOUDpITZElkm3Kj0BZRpRnooJWrLVPZJ2plKCk7hkFSgxWItUm/Lnf/w6k4yEQk3kUy
         kpoaMivFT+u00Xs5vnBjYtlWD4e3hE9B+JrAJD4P0RiM5H+PdVOAdalQRBomtmXtaIOi
         cKgH2V5yI+bhS4TrrE8+M9K4j9PDvTTVZf6dXp0BnPytQQoJgqjb6cvh8y7yh4qADZhW
         Vz5xOHDmBU9Tg8+k20qdrNRJt8bWGlNXMbx8SrwrQ9n5zj9ishKxTW6annxDnsrdGoB4
         l7XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pyxY37Ar;
       spf=pass (google.com: domain of 3txvlxwwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3TxVlXwwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tmYqq0mLvpyxNYUuZ2EdmpF7/vFXU8XtCx6qexDIbYo=;
        b=l1fp1vO1F9DNuODAwVza9n/J5/eOqNrkYKcdTuVWB3wQ/ICG3MPjpgtH3hjXGR4H0u
         thAc2nOsXVIhGZ0PDcGfDF8YWR+ZFzkmWfKJZjQqJ1LrEQqwvDiPGHbC73PGeJ24/3qR
         7Qw4k6sZSX0TDIE9zXqvpoAyk0+5rAmVIpt07gb08ByBcdp+3tfS+tt5KW07LLm/mwcG
         V19PbKTkgOxVNl68RJSEtB9EFPi4U6CWfR/y6l1zKAbrrcz0s6AFT+mpP2fREllPZK2X
         IgcMYjmxf/QhfBARu7/+/m/k43ojXQhIP1pB1fQUubYfmhRP27p+1kwmcAFpybRdZvKT
         BAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tmYqq0mLvpyxNYUuZ2EdmpF7/vFXU8XtCx6qexDIbYo=;
        b=nMrdYS5twd+X3flO5CYf1cEGNIVzvprDSlHIX7Ux/Vjdnt0UO1VwgozJMqYKCPFGkZ
         Mv55Qjgfrc2Nv5og/FBBXNDGPPBjmZEeKZaO3qw4biRub8gjxO22cLYtVaAR3BZrjIPl
         u8S9o6j8tDhxDwLej0UQJgLCwwPR+jwuDaJSSc/yVTwuITNDwSH9lYh29G/uh8ptvEne
         R8LX6diifeCtwkW66O9bDWU+wCgCKn3kDFM1nZmzDOHjbo3vQk0KIdTQA/k1t0iicxb0
         5z6Ensb9XyV5OHSwGZX94oIdAJeNYLRZQmuz9ziVIgB0u8XwkPFqaf7a5Dg/pmzXVSNB
         EUrw==
X-Gm-Message-State: AOAM531fcw2KpxUd2pKjBYiPdPysDNJcBJXETKwihP24QUgAQ7L4LYKQ
	9ElofkbZLoSbdQDr7mwS+B0=
X-Google-Smtp-Source: ABdhPJwlLt9nxT+E8inWSkwpBJgYoS2AZCQT6GZ0Stpy28Q4khtfxnqnE8+7mXmW76UbyloPFlxpeg==
X-Received: by 2002:a1f:a7c8:: with SMTP id q191mr13065278vke.18.1600460112890;
        Fri, 18 Sep 2020 13:15:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1f6:: with SMTP id 109ls468591ual.2.gmail; Fri, 18 Sep
 2020 13:15:12 -0700 (PDT)
X-Received: by 2002:ab0:15a9:: with SMTP id i38mr13594840uae.134.1600460112340;
        Fri, 18 Sep 2020 13:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460112; cv=none;
        d=google.com; s=arc-20160816;
        b=W6MDLDZ+XTA69Buv9X3WAcjYkzqNn00bHi+29UImYBSR4Ce1j4HYnJ8HO4sWJeKUKv
         VFUWbKDrCt3dMo3hv4CKMUbSVT6bEZt1r5bE6GdZOLBPLmhOa0cRBljxBbSq0Wca/gY8
         vu/gdm+/6xUfIFptLGLW347lJy28AsSQmf//4cOF6l3//g6vNUOD427dIse8adeU2EU3
         TM65UhM3/rpR5x2B6lMXHaBYuc+icku5qvksryO6wHbNmIWY0MpMButzBDgyLpVki/QQ
         GFVPK2Gewb56skTi6yulZmJUbrtwFFNIbu0LbIPRr7kgnEr1v36gb0rpM9SRmRrVP5bp
         Nw3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=AuswF6CKDN8dO1xH74r4m5G29uexAro1Nb2/kCMl6ng=;
        b=Th3ydVYQAdCVAJPOGzj7sbobE8Rp6LrzFq+UtIGMv1IJ9eO/BPFPpjKjJIWKO6EwRh
         6/ZsYHiDeyrygaytdzuCc+xlVA+hGhO5mmqH8xRxIuHJxSmP2hO1KihFPyUiYV2dDFBm
         Vl1xhR/G2K3lmY3uZvQORg5CAtD2SMcgYXbeVLIXenZU0vvSeOPs0UplzJQsG1z91eDS
         QQ5xoirmU8fHSo2M534MuOaNIxS1FvS/WIffRHZ/ibmtUsQK9tPSPRuJNDnOpx9XUAN6
         BiDe619R4irLFMoalJQjnRWpY44uC2M3YFxxA7E6chp/l8/Lk+v82CRBt3rkEc1bRkoe
         cOAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pyxY37Ar;
       spf=pass (google.com: domain of 3txvlxwwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3TxVlXwwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id u25si302291vkl.5.2020.09.18.13.15.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3txvlxwwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id r128so4372876pfr.8
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:12 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:d70e:b029:d1:e626:d12f with
 SMTP id w14-20020a170902d70eb02900d1e626d12fmr17241070ply.74.1600460111357;
 Fri, 18 Sep 2020 13:15:11 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:20 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 14/30] kbuild: lto: limit inlining
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
 header.i=@google.com header.s=20161025 header.b=pyxY37Ar;       spf=pass
 (google.com: domain of 3txvlxwwkaba8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3TxVlXwwKABA8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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

This change limits function inlining across translation unit boundaries
in order to reduce the binary size with LTO. The -import-instr-limit
flag defines a size limit, as the number of LLVM IR instructions, for
importing functions from other TUs, defaulting to 100.

Based on testing with arm64 defconfig, we found that a limit of 5 is a
reasonable compromise between performance and binary size, reducing the
size of a stripped vmlinux by 11%.

Suggested-by: George Burgess IV <gbiv@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index 629d4b18e413..973155c24711 100644
--- a/Makefile
+++ b/Makefile
@@ -912,6 +912,9 @@ else
 CC_FLAGS_LTO	+= -flto
 endif
 CC_FLAGS_LTO	+= -fvisibility=default
+
+# Limit inlining across translation units to reduce binary size
+KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
 endif
 
 ifdef CONFIG_LTO
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-15-samitolvanen%40google.com.
