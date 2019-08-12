Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJ77Y3VAKGQERQ727EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D458A735
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 21:36:07 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id e8sf50589835wrw.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 12:36:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565638567; cv=pass;
        d=google.com; s=arc-20160816;
        b=rHXCsidjdTbSOw0PqVzVbotPncojNNovfKU9WQAcMPurrCumlua8vVg1mdGPc6q2NN
         HwBTrLwoxAFfqMu/Ng2HPw55Yq8eErZT/uznMgKmNWQOV/K1MTS36ePiorDiOo9r3wt9
         t41yI4xXQwAJt6EPl/9HFG+M3rL1XYNq0++bOKljzPltQHWmUX9zGOpn1qMKe1U/09/V
         SE9ofChaZvI/HogkVEJCkC/r2BEY9Jkya8HvHURqSVEtgbDQHmTcsrWSuGRDXJ9OnMcb
         uqFw6e4tZ1KAoTheCHPFYD6RalH7QAbIXMpYpFRWjfpkHFUVrNOmolsLizTYH4Xl+zXt
         grcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=bK4vICLG7NJjRDDaC654stfX86bIdcnFAwj15WGe+fc=;
        b=Z1YS+PWvValkRt7TqCTeWWse8RZ79E5qZsSGBRlBOh6AmIiD/rWN9wly9UJxZJJzxa
         HqmY+/qnmJcqhYKi3di4vctjM3F9siztBVFMVUV8dF7b/urNn/NjNR5baQMWzPB3IWpc
         QrtOtkReEG34ovQB7q/ipn8oRuoY9gWhMQvF1T7uAlzxvPuJvRZh+gZ5znsE85QbpKi/
         diGSkB86sMUFCEBrKBbTE8zEU4m88nVhjdq0eTPdZYyGDMqWgX/vlD93i3MeoI9kAZYl
         k13Y1OLiDP7Y4s2hsrag7mWH0aKKvNXzCLq1eM80Rs3BQqvGCgUneFxIHuBY6FuwhFhy
         y0rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+vcXW+K;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bK4vICLG7NJjRDDaC654stfX86bIdcnFAwj15WGe+fc=;
        b=biS/JFZFeHBqlGSNOBbEwPSRced8f7ddo0HUdcjHYjbvKG/4OLebaEtL6VCHDKmW7+
         hhSOUAEXoQH5WnbHRKQvaP0ZrWXchRRvvlgbwBfpqNb7FtuyzFTTO1pvdQ9v/O44m6cE
         ac7qwuk1RDoJAcLiJycp0x72DaXTafGG9GD/v4jwlyvb1ThdLbTOpHukTWHG2LR1xEdM
         uRLxdsCczwxKL36DpW+XBGJ8Rbtfv6ClPT3uyT9ikAUXwGJ18ok3G3lDesl4Ett0zY51
         HI1hlGQZrACdUJ6zG8OFK/5nugTVmDXYk1CqV5aj2HyIVn5hVGvXd9Xu+YtAoQBiJFq9
         ELaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bK4vICLG7NJjRDDaC654stfX86bIdcnFAwj15WGe+fc=;
        b=mmuXjRGeJlqdIGZZs3UoIeetZlBn5i4m/3vzkdTjKOx3nsdD1AUVcZ1edTMHP6bbfK
         QesCl0CT2RVy4YZ/ZWlio9mOGPJmg6A4spElCN2qXSZ2yOJqTeIyy9vG2sDbyCzjU873
         d/JeJ//esaupUF7TP2CaUZitbaKnjOsZDH7VM0e2OTbKtVayuP28Xz//RAOUKox4ODUf
         EVf4j0ci3Eaex+JT/ov0KYAJ8akusc21IA4qzD56tld4+hGzJQtQxXyiyr4vAw9V0zeB
         ttJQxWSjFsv3SsPpLhD6HiwYvrSwRtVYnrfiId8pYU3dP7g59KotrCUue3Q9p8ywOP3F
         mSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bK4vICLG7NJjRDDaC654stfX86bIdcnFAwj15WGe+fc=;
        b=CcOqQGxYpD/r0u2dialwA6ysOi6qB+U4+F2JHKx0yTuGw53x011v4FL7tmS5BsvCDn
         vth9TwYGGQLOnJrSsrwcfjZYcORtMPBVLyUuS1Zjx4sAOusQYrB91JotuEOxjAE6iGUP
         STpezLF30QpE6Tn0LqetjiAJaZ79kruuJEvrzs830X2bL3b88Vs14cmDcc+C1jD5F01I
         JDWTmjjzw14WoiLm+XXtNgxhJrR2YVEEkYb5AXD+tQUXna0iIx0kTpS0jlikwAUurj6A
         rHl/QxGtBsFn1SJL2RlzZroVd20gQ2iaMDcimUZNZzZ/K85f7mLaCKkaRrRYvv3wfXEF
         bAFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUL5KGLvhcyx2i2NewpCwsMuIyb8I39iGkFSE6mWGw/OS60OE+n
	3UyPa7vBVL2+WijMA8kHFg8=
X-Google-Smtp-Source: APXvYqyCqktew0UAapIwfbypsIKTFugx1S3/abto7uqgkye58UBUeSdNPyJ/hLJW8SPloJaa2VHd0w==
X-Received: by 2002:adf:e74c:: with SMTP id c12mr12366748wrn.173.1565638567345;
        Mon, 12 Aug 2019 12:36:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c05a:: with SMTP id u26ls182622wmc.4.canary-gmail; Mon,
 12 Aug 2019 12:36:06 -0700 (PDT)
X-Received: by 2002:a05:600c:2245:: with SMTP id a5mr820740wmm.121.1565638566849;
        Mon, 12 Aug 2019 12:36:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565638566; cv=none;
        d=google.com; s=arc-20160816;
        b=dL/pD0PG3r7hE716wagwADBWJYsiidWjfOsevHGFq6JuagUVGRwAkQQhn9LDtK5WzB
         uxWnZTzKeTItkp8zKNpJrR3zy9y4G3+RQAUB6Gi7EzR7HNUhqA1xSaEVwWf7odMEmz6f
         MVjCaTuqVfNe7fttZ+yvgX1jjdCnJAi24hQUhIr5rFxNzLbEbjiGDR0zVU/heTGaKWj4
         VuDyr3Yufq0DDog99dU9dqhgZY+yAfvU5df44/QwxYizHC9i4p7B37JcS8avPpxMSzxW
         y+KIbHynjPSpN6Y7Iavhntfm1rORF6gJ9thPvFWteCKMBy+GsIMghs0qiEqyCsZs5bEG
         AICw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=k2Q5Zs7N8/j45SfwYDhEjobCOU8g/47tJEkHFeIxHdQ=;
        b=i+OO42EOKfdKYmaB/ZJ/ni90+V12foS9EB5pn74sIT56Xmetk/xfFdjEX/AWDVgPl3
         tZeebHhbg9u68NIpi8UtclU5NdGAMHdUpAHSJ1FvzgOyp1UocT+r0yeA1aXu+BjohGdI
         yDnfBTsZsCz/nrqixcLaiAsY+nrwVfY+Okg4VzQm2fwlicIzuagcnodi88Oal/fQ1JDX
         XtG+qgn+vT0HxwPM+4dR3uWV2YXgp5g/xxJwIe+7j2pNbiVoceYt4C7H+2BXdGWxiPHK
         5+IP9wpze4cSpNIoIia70oAtBZZJ1W8Nqu5nA/MJPV/OhNoyqPDpDKLjdkH+3Tu3NZdH
         3Fvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+vcXW+K;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y4si2382739wrp.0.2019.08.12.12.36.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 12:36:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id r3so11866109wrt.3
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 12:36:06 -0700 (PDT)
X-Received: by 2002:adf:fe08:: with SMTP id n8mr40819056wrr.60.1565638566277;
        Mon, 12 Aug 2019 12:36:06 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id l3sm26874346wrb.41.2019.08.12.12.36.04
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 12:36:05 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>
Cc: linux-mips@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] lib/mpi: Eliminate unused umul_ppmm definitions for MIPS
Date: Mon, 12 Aug 2019 12:32:57 -0700
Message-Id: <20190812193256.55103-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L+vcXW+K;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang errors out when building this macro:

lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast or build with
-fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
        : "=l" ((USItype)(w0)), \
                ~~~~~~~~~~^~~
lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
in asm
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ^
lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
             "=h" ((USItype)(w1)) \
             ^
2 errors generated.

The C version that is used for GCC 4.4 and up works well with clang;
however, it is not currently being used because Clang masks itself
as GCC 4.2.1 for compatibility reasons. As Nick points out, we require
GCC 4.6 and newer in the kernel so we can eliminate all of the
versioning checks and just use the C version of umul_ppmm for all
supported compilers.

Link: https://github.com/ClangBuiltLinux/linux/issues/605
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

This supersedes the following two patches:

https://lore.kernel.org/lkml/20190812033120.43013-4-natechancellor@gmail.com/

https://lore.kernel.org/lkml/20190812033120.43013-5-natechancellor@gmail.com/

I labelled this as a v2 so those don't get applied.

 lib/mpi/longlong.h | 36 +-----------------------------------
 1 file changed, 1 insertion(+), 35 deletions(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index 3bb6260d8f42..2dceaca27489 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -639,30 +639,12 @@ do { \
 	**************  MIPS  *****************
 	***************************************/
 #if defined(__mips__) && W_TYPE_SIZE == 32
-#if (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
 #define umul_ppmm(w1, w0, u, v)			\
 do {						\
 	UDItype __ll = (UDItype)(u) * (v);	\
 	w1 = __ll >> 32;			\
 	w0 = __ll;				\
 } while (0)
-#elif __GNUC__ > 2 || __GNUC_MINOR__ >= 7
-#define umul_ppmm(w1, w0, u, v) \
-	__asm__ ("multu %2,%3" \
-	: "=l" ((USItype)(w0)), \
-	     "=h" ((USItype)(w1)) \
-	: "d" ((USItype)(u)), \
-	     "d" ((USItype)(v)))
-#else
-#define umul_ppmm(w1, w0, u, v) \
-	__asm__ ("multu %2,%3\n" \
-	   "mflo %0\n" \
-	   "mfhi %1" \
-	: "=d" ((USItype)(w0)), \
-	     "=d" ((USItype)(w1)) \
-	: "d" ((USItype)(u)), \
-	     "d" ((USItype)(v)))
-#endif
 #define UMUL_TIME 10
 #define UDIV_TIME 100
 #endif /* __mips__ */
@@ -687,7 +669,7 @@ do {									\
 		 : "d" ((UDItype)(u)),					\
 		   "d" ((UDItype)(v)));					\
 } while (0)
-#elif (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
+#else
 #define umul_ppmm(w1, w0, u, v) \
 do {									\
 	typedef unsigned int __ll_UTItype __attribute__((mode(TI)));	\
@@ -695,22 +677,6 @@ do {									\
 	w1 = __ll >> 64;						\
 	w0 = __ll;							\
 } while (0)
-#elif __GNUC__ > 2 || __GNUC_MINOR__ >= 7
-#define umul_ppmm(w1, w0, u, v) \
-	__asm__ ("dmultu %2,%3" \
-	: "=l" ((UDItype)(w0)), \
-	     "=h" ((UDItype)(w1)) \
-	: "d" ((UDItype)(u)), \
-	     "d" ((UDItype)(v)))
-#else
-#define umul_ppmm(w1, w0, u, v) \
-	__asm__ ("dmultu %2,%3\n" \
-	   "mflo %0\n" \
-	   "mfhi %1" \
-	: "=d" ((UDItype)(w0)), \
-	     "=d" ((UDItype)(w1)) \
-	: "d" ((UDItype)(u)), \
-	     "d" ((UDItype)(v)))
 #endif
 #define UMUL_TIME 20
 #define UDIV_TIME 140
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812193256.55103-1-natechancellor%40gmail.com.
