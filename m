Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFKS3VQKGQEZL7SDEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EFE9F44D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:41:05 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id b143sf305762qkg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:41:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938464; cv=pass;
        d=google.com; s=arc-20160816;
        b=vZS4xbAyjcHRKeIr8lJz2wo22XTm3wBXTPznQQqfa8XuhZBbPEtkSIZLfNAP0OO/7c
         r+e5AXT6lUvdSZ6UqKDJwoCFMCb7xlNjHjV+Hsp1GN+cLo0uHSTE3wHXckP+moJyMhab
         Zs850OwyNhsckv1gkfKeV5HaM+ODfYLjh46JfY/xqpYyi1Q1XDc3bb4S6aapg5rrPO/6
         Kl1TZqljrpLWuD1FilfD0RGUK/Bdb5EY5oCF69wklRnUSdoGDq95b0vRLSYWzFe9Kmgl
         gvW/l/dOeu6o6bTx5Du0krBjhZcr5OJZyU6JF2F4oYY2z2yhiz0bxtSEvx1shAldcwSB
         l4jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QTVdpNoLojX6QJ0N/VTpaYFQleD4KlYCNn7QZbm5NSs=;
        b=YjIWoyqIkDFOilcm9COIrcZUNA8vqo5XlL4GN/tNdidFpB1Aub8OILPazP1ekI3E7g
         4Z7/XX2v22uhi77hHMGIBmRjyffx5hiINsV3AKLWV3p9OKpfHVxIEEXV+Fj3kyrEEF80
         VoPdOmiqUqRAeWWpb7n0iBm0hk5qdZYJlNwP6TMc+6Ly3fdQZd0DkMmaqHpLdYvvxTob
         gOdLTnwjN32vS7Ev3EO6QCGeb+yNZbAtQKZ6raVfTEpatabSaxqMtGFKFjwNCbCDgilV
         8RjYxKB87+Pp/Ad+e1kx5MxNxGyyW6+cEYytrHavD8Ssa8me1Ez9DP1S+hbJQ7SN+II7
         CX5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gIdzwFts;
       spf=pass (google.com: domain of 3x5vlxqwkabi5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3X5VlXQwKABI5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QTVdpNoLojX6QJ0N/VTpaYFQleD4KlYCNn7QZbm5NSs=;
        b=q5oGlb4G0xgX4ShDnV7l4vNYxvP1GzJ7/aiMo9mIUPe8/9J53X6jg00I8AXUSw82Gn
         2H7Kk1Tx9UeHGrRTIzZhhggavtXHHmHRqres8UV9cRWbOODAR9l5HK/S0X+gEX/5XPQA
         M5V3VcHmjx8jRsrz/nrtb2PM2TAJjv/PxJYxuhVxWMtR1y1rg69evljDpZdPzw1Hikqi
         8jKsgS1pKzTNgeSpPbNUUCqsAWZTuiaG3cdAy4HMYIfyawF9SFqg2ateldA+CC+Kq3AH
         y90bu8dvmb5bh93g2X53nYowS6aUEaOgTpagAPVQTf0ImOaZi8IlR6poACu3cYOQiIK2
         XI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QTVdpNoLojX6QJ0N/VTpaYFQleD4KlYCNn7QZbm5NSs=;
        b=T90zgv277Pg61+SI/in04prjTWeLMYBT396MMb7NMzm0Z7DAdG2LtShkvYxzkNWHCX
         Z03eHnU2JytuaBnfNbKBOeoCpjrR8UuSwCoZzbfi2MipQ2Y8oGkm8TSucoWe+KqhbyNG
         aMnRGVuRu60Eye9TXQ+5rOpQ2efhMbAw2kFgYAd3N5QYDxrHM3kUbElqYGh1C45bQLAZ
         K+5spqyTYn4ESKgovZ0clKviG6iobL6AQQY4mmUSRBhLEXaISvg5xR8EfChkebUQUyB6
         H/rOxDXdQpxpSGU4TSBE9Mk/mYuo6Dn9k2RBmoZc8xq+IpTVGmkSk6tkhJovFHRee0q6
         ylJQ==
X-Gm-Message-State: APjAAAWhqTBnBt2twqs+towkfBOMZfGhl3G26OAl/1rlzZ1UibmmxcxF
	Yb5rzICc/rFJL0S3u+klSqk=
X-Google-Smtp-Source: APXvYqwmIbBNZb6ne7z40h611G/qWI5sx/lZfcA5RzsImFGAWa3Fc9YpZnxgIDTgrNnI98iyChhESg==
X-Received: by 2002:a37:86c4:: with SMTP id i187mr492868qkd.464.1566938464484;
        Tue, 27 Aug 2019 13:41:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:138f:: with SMTP id k15ls218921qki.9.gmail; Tue, 27
 Aug 2019 13:41:04 -0700 (PDT)
X-Received: by 2002:ae9:e412:: with SMTP id q18mr492762qkc.318.1566938464243;
        Tue, 27 Aug 2019 13:41:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938464; cv=none;
        d=google.com; s=arc-20160816;
        b=zbHCVaFN7jgDDbcC/G25VG3nq4YuXvZFCvyUX6zfjrg0Xzsz5QgnI7pSDnRwEVGJSZ
         OJZ7XgdeZkTphX3vX9E/yWbgT4BvpacTNSiTmvlWYu0ZqkmOpbaPdVZrd2n6L1kg+hZn
         w103HmtiEUts4Rn9x1ur4FH22DILXQ/mUnUWhb0zUmTrCQzhEr7ERETgfrvjoYI4zHL2
         vLizb7BvWgJJJGEf/mFL+HML1HNbF4k1oGJivMtABcDlwbriyKqJZs3GZWCkXJ0gvHcM
         paPvxGQs9ShK0BnNEfektn1VfV2l7tiQg4JADFCN4r1NNA84OecJm14b5BlJBN1o5fQ9
         0pEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6RxBbYYa4fUI8s5OPNOU3iQ7zoV1TR03oRwDSBMZl1U=;
        b=RtMKmNr71f+4wAC5GsLCNbpPbHjMw+y2wVLfX91ZuVsq06cFban74Zfx4RdxQkzTlx
         KGfUL0EN1eH2oRRpwWlyJxpkKpjlfD/fM/yatVF7uUb78g1FWd3WwuFizzxy1x4Y46am
         56PPzmMkoVDNEDexVSt1/EbLFUsOdeZrqOi+B4jbxH8OsApsjTrd0iUPVPhO6QnUpvmd
         bO9D+NvFcK9ZvEHTeA/6UBwcwoWLmZt9CmfJtXWvqCzjx0f3ho7kvtfIXj00Fkmu7XKW
         ge7oBE0W/EZoNsCcm+InrqRtS3xpP1SWuKO5QrwebAm0wyLfvs+vesI0rQwa9qyDp0eD
         2GbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gIdzwFts;
       spf=pass (google.com: domain of 3x5vlxqwkabi5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3X5VlXQwKABI5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id c79si29233qke.4.2019.08.27.13.41.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3x5vlxqwkabi5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 22so206294pfn.22
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:41:04 -0700 (PDT)
X-Received: by 2002:a63:7d49:: with SMTP id m9mr283474pgn.161.1566938463070;
 Tue, 27 Aug 2019 13:41:03 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:40:06 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-14-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 13/14] include/linux/compiler.h: remove unused KENTRY macro
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gIdzwFts;       spf=pass
 (google.com: domain of 3x5vlxqwkabi5vwasc350w9ay66y3w.u64@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3X5VlXQwKABI5vwAsC350w9Ay66y3w.u64@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-14-ndesaulniers%40google.com.
