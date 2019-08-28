Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIENTTVQKGQEET2ZDBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D51A0DE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:33 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id g125sf1636488qkd.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032992; cv=pass;
        d=google.com; s=arc-20160816;
        b=kVUYCeWPBevrjE6jT1m5CKtbxFbVxA6qckQcsjVwrj15MCX1UmrX74i7Akf0R5wobq
         ASiJ2ysMAjv6dFtIiSrPdRa+EtT8GSOLkHj1YD9Ic5ScM4x5hDUjX5ovkzuyvSGtvALV
         NJVG/SQgGcuCYV/ZiTykSd7VZ8vGM+DAbl+blEOlaVNS04AU6dPinfZ1n+hkcpqKQrgP
         8FzHDyDse4a3oMnbhO3lQ+ytE35jk3StZBYBEOXL3meGM9SW/PqKAefaNqcCY4wZqfKt
         Ys34xSzotierEfbUUylZ9fOaQS+My1Ss7UsomBdJmFgO+nYKLFl57k+I2cS7zDQfGoB6
         48mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/HZS8JIffWk+CkebqO9UCv9i6u73532LE3xxdrgNb8s=;
        b=n8ap5gH0InYVLpgf+0OhrF9u6rJKNKzSDeGw7eEelWHsf+/Racs+vYU3YfUXPwh/FL
         lCKku2sNpGsArthhnHMFjTHtuCI0ASosYEGMwLjBlrlMTY5ZWZ17PM8TnoAxnG6vXWxK
         0GxcPjxdMp8zH+Q2EpFX4SWLbLDOX60zWUdLbf7sjP7LrKlPoyyP3wl1y5ERC0oUIXpW
         ejlQgSYy15b+iNI3KI9rKiPnehfeawX+mN4HTZupUBQc+v2LvJeZrJmp8FCfC0aOtxJX
         fQ4g5XzQWK9ubTsGljwOogUa563vLSPvkIDD6r/qnGPuOrsx4mOoq3mebrb5S1bsu890
         Wq5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dI5spwXf;
       spf=pass (google.com: domain of 3nwznxqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3nwZnXQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/HZS8JIffWk+CkebqO9UCv9i6u73532LE3xxdrgNb8s=;
        b=Tbz/PMsqXUkc++SKX1Clvn4Lpiz9/GKlmKtCPYz8dPPWd8bE+DZPNohh2q2tv5wwDM
         gXihrydA6SySnXMjtiNMtKWWYUQVGbq154TOIpdcqE0PqVdwmkWWElYqDVo9VvMuT2Hg
         bKKOLr5hVxjhaTRC2J6YwO/Aue6zpy3rF1o7x9LQ3jrC4qx/fZNl9/QW+ZSY1Nnp0btO
         jybZOZFC7bsCYNpgnz5hKJ5BDkK2UynXYFgCpKMVm+BxdZqnwwEXBUN/WnIvKW12TubD
         lfaFhFKKI83NyW6r6p5g4Nh2nje8x758aUHpFDS5+kLa/yirnH4UxcNTd3j8269/LOSm
         D3Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/HZS8JIffWk+CkebqO9UCv9i6u73532LE3xxdrgNb8s=;
        b=kjuEf81vMtQk3pSTF+g+gprU5HV9haKGG117Fd8kN1EG7CASs7H1k50JVZxOxINwZb
         4vhEDWa2za8vDR29NRvCbwcwJwrmDjDniVvqy7+3C4tPHHHVCr8GriaB7797JESnf5yU
         hWP05CVA9GpRfe/H77U49RauV8xlbjOEN81VN2KfkGt7+gyvQvu1JwKRtOaWabEdzdUq
         p7D7jkTmdFaXJEYy35XPkIT9c9lUN6TMehOdt7g1zbA9iTPPFjlUR9Q84Ru8WzSZ2o1p
         zOdlQ2UjyR//UudYLRHYCB6DnHEPllKv97bcDzWMkLZ/up4RRCjG7BAqkkKTellOvgFs
         yzzw==
X-Gm-Message-State: APjAAAWdb8OdQzH55qWV3cfgs1Nq04jrV3Bc9qrV845VU1aKcRqq2RHV
	z4IWI40KMKmSVHrlcl62p+A=
X-Google-Smtp-Source: APXvYqwf2TqH8ZpaWbk93kt2qahLZAoGZCbtTglx3YJX6OR/F2n2AqOqZ5rLMqiw/ZT4HFWqtr5Cqw==
X-Received: by 2002:a0c:928b:: with SMTP id b11mr4700484qvb.209.1567032992756;
        Wed, 28 Aug 2019 15:56:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:681:: with SMTP id f1ls137348qth.11.gmail; Wed, 28 Aug
 2019 15:56:32 -0700 (PDT)
X-Received: by 2002:ac8:7543:: with SMTP id b3mr6949816qtr.13.1567032992565;
        Wed, 28 Aug 2019 15:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032992; cv=none;
        d=google.com; s=arc-20160816;
        b=PgjZojociXleGZCVlIzRjtb45mJwrS5lwOlh3L4Ir5TFtRe/AFgckuUrAahVfCVbOF
         pH2BA4ALqZS0lB7qbKRqs5hUKwuOkFm1iC7lwEmih5bQcyIj9HXWiJDZA1aBDjqK4a5i
         MMsZTNU83f0/wxsWKKxoXXRKPcs+FD/MnORbVaAeDNTiB6Q7GB1PkicFZu0jdIw8ly73
         BO9SbSiSgVdRJgUF1pqU8LYxtLhfPDndKIhGjDNsEhTJ58XFwsURwuTyNPmz0yaXVr+b
         pfqGauex3aylqyHHKaMljSSKAy6pBjY8hXQVutWNrPKx5GXgH18BIxeZmXklVm8qhzGE
         Qy0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6RxBbYYa4fUI8s5OPNOU3iQ7zoV1TR03oRwDSBMZl1U=;
        b=yWmcTtyDc936FrAS0E24sqA1S9wOpxZu8l16gyjTFafYe+EXv+VofXDrHxFyXy4Yul
         RHI8qGAdIo4X6sN2owXm52gcLPfk+fJFrm7w504LX2TVC6wU1SKOjj3K29eyKlTnCZmv
         nM9zGdjyA2FV3xyRFy2M19slz5UA/QlHoKZR0a32WtsbAJ7zsBoCub3b+8zuI6A+3WjJ
         AETtKq3p1POTGzJIYmBbQ/f/XAeo3QDNM5CpS9gksgWwAvSP9vd52JOcu9OmUdBoHRsx
         sKx444s56UlGGSrC5kCw1pUBA2i2pwBx8sDtKsUbDykCtKcWmmgx8knaxD6vx86yAG2g
         qpGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dI5spwXf;
       spf=pass (google.com: domain of 3nwznxqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3nwZnXQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id h2si31893qtn.4.2019.08.28.15.56.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nwznxqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id t2so818280plq.11
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:32 -0700 (PDT)
X-Received: by 2002:a63:31cc:: with SMTP id x195mr5459002pgx.147.1567032991282;
 Wed, 28 Aug 2019 15:56:31 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:34 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-14-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 13/14] include/linux/compiler.h: remove unused KENTRY macro
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dI5spwXf;       spf=pass
 (google.com: domain of 3nwznxqwkadojzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3nwZnXQwKADojZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

This macro is not used throughout the kernel. Delete it rather than
update the __section to be a fully spelled out
__attribute__((__section__())) to avoid
https://bugs.llvm.org/show_bug.cgi?id=42950.

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler.h | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 5e88e7e33abe..f01c1e527f85 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -136,29 +136,6 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 } while (0)
 #endif
 
-/*
- * KENTRY - kernel entry point
- * This can be used to annotate symbols (functions or data) that are used
- * without their linker symbol being referenced explicitly. For example,
- * interrupt vector handlers, or functions in the kernel image that are found
- * programatically.
- *
- * Not required for symbols exported with EXPORT_SYMBOL, or initcalls. Those
- * are handled in their own way (with KEEP() in linker scripts).
- *
- * KENTRY can be avoided if the symbols in question are marked as KEEP() in the
- * linker script. For example an architecture could KEEP() its entire
- * boot/exception vector code rather than annotate each function and data.
- */
-#ifndef KENTRY
-# define KENTRY(sym)						\
-	extern typeof(sym) sym;					\
-	static const unsigned long __kentry_##sym		\
-	__used							\
-	__section("___kentry" "+" #sym )			\
-	= (unsigned long)&sym;
-#endif
-
 #ifndef RELOC_HIDE
 # define RELOC_HIDE(ptr, off)					\
   ({ unsigned long __ptr;					\
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-14-ndesaulniers%40google.com.
