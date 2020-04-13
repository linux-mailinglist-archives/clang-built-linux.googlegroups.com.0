Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXMF2P2AKGQE4LNXUPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id D35D91A6CD8
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 21:51:58 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id z9sf2227547oth.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 12:51:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586807517; cv=pass;
        d=google.com; s=arc-20160816;
        b=VHSe8Xg7L6mGRuxSsDfH8YuzycKlmUr9FlOQ87+yIXMf6jBRxhLC5lID/UIfKOIZmp
         rPSNTi9PL8pTDHi/vR1u8vVht7Lii3mIO48VIArZsFhQeP7EaCDULH8VO9F6BjOTpD91
         h5e/LUuVg6IYlF7yMS07834SIxyzrvAVwzYh7voIhEmQOwuX4fzB/zg3OOR+hhfWv2DH
         ZYKLHJ0fe1OZ+IdUbujWuHNnVATDDHmLgsOUyOUKvHm88gx8MDYyHQPpjnR5e4nL5+vl
         RhAS/iroACBJradHtYmE7Or82WC/TtkVsTqi9uy/wBI2lcRvHsxI9MHJe7xulWG82lCN
         6YoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=5WdsDQ4gRSA3CvKKIqLUjRyqTUtzqJ9bH2+EYIJIC60=;
        b=zrlSJ8dCR1ijzWMkFLDGYehbo3g8+bJA/qf9WNDBk1CLnAJhYPiOLvruDpBs2Abzv/
         o7O2rXIEql7hpjFb0diCtMfT7Zl3zMS2rMtVKniWnm4oYNz1PuRH4ljnom1tz/IMLey7
         abPTlTd65+bsIRZP9aRaP+3PY1TOpIjl9/hSGdEyDy7V/JW0+weLELeLQ1HGBfQ/V6re
         PNFhqjC4CjfZcPCFQTFdJvZ2waaI1Z1X9A3epvrKzr89niioAaM7CbDfmhNPSwSr522h
         2c4vFgMsEka8DU4VOw7jSEU6qdkHqaZgG7hMY/JdostMIvgSWUwYCxemfShFkrHK2FnF
         TL3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q0dRq4el;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5WdsDQ4gRSA3CvKKIqLUjRyqTUtzqJ9bH2+EYIJIC60=;
        b=Lkjm+YM7qrrx6OXMsb7xDZMolU+B/0Am7n3GXV9aBCZaHs+AyVHNmPryXyC+jX1+j2
         ZI2MoLHApOJme7z0taR3ajv7ORpRXUVDdR1+UmvTi7s//1eFz9EDmk37aRf6a1bi0isK
         22AOHTuD6DwGJPJXjoNtquBc+4am8WQa+oPej8uFwCpt36LJG+V3lu0V4miJC/bMORSL
         GMEfXbS30Hjvr9Id3aXCB/zZ9HDQWA46EYwr+sjoyNK/fL4XzpXMawZsWX0IDDO6AN65
         SoZpqYX6RvVF/fNeM9v9+HCrZag5MV4he3uzOlaA30mwa0cAlhFDJ15L3gMklQvaNHg5
         B76A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5WdsDQ4gRSA3CvKKIqLUjRyqTUtzqJ9bH2+EYIJIC60=;
        b=EpUUCUUy0A0cLXVlgsp1u1vrCwZAz9h6HRN6YAzZnanENoXzJY8MOkxza4Jfjbu4EV
         veYac8hOxxDJ0s9E9gaQv8MpxKZudKjPIbgTk82uYtnFiXNbQJInpVfmyamXKwjOPsQ+
         vOJSutx4QkRNNTNVGwH6YzquW5WRoZXg34TcIxwedS4BzvnfyNjTIW5wZeS3oFuPCqjT
         zk0QuWseD7F42ld+0bVX5emBXS9+II6MuJdgTfSi/SNvOBwwrSMjODMLFUPO6YtmkP+Z
         PYiGEm9kITE+JfwbKhDEvzU6YBUf1U2d7mB0buTgemrRsZ3GexUEiV9hvS6I71ypPfJw
         KNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5WdsDQ4gRSA3CvKKIqLUjRyqTUtzqJ9bH2+EYIJIC60=;
        b=LV9KktM7bq1IaG9MhD008s4R8AgxspInUBbn3q+epyYdbu4CAuNS0+b40Ubf4JYGZd
         AUIkdmbEx7o4+MPjD6sqJ8KkhhSrEes/SvB/icqHhjrfmXBu5TkI1A2opc4h1XrVoeOM
         zyI7sModf7b6/h9duYT9lMEboogSVb64F9H3hPfcNmCJBEqExPlXe1HGH4f9gvT2bBAP
         8MYEwHceAkFuKM/jcViR3qI/1d8MTMubPOTeLS60/pdFGFImppsVSQmYz92YNGuOfJvl
         5+Olji87NFur6ZDhoVO+6R1Wj0deSS925SNxcJQVd1fE7IzWKTEeYfAgi5Pz/Jxbb/Gf
         GPRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZyew+Y+vtMLs3C8tizoB7a+cDf2Gzb8dX5Ec56x/ik18x5ubcA
	wh3+T83dNtspVo06hA/99YI=
X-Google-Smtp-Source: APiQypJUT2hfJH0+rIfw1m7gqLiO3G61VFZyGhi8LGZlMvQm6trgLbLjY3+qd6YMiJPsaUrzl54WmA==
X-Received: by 2002:aca:4046:: with SMTP id n67mr12489436oia.117.1586807517797;
        Mon, 13 Apr 2020 12:51:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls241753otb.7.gmail; Mon, 13 Apr
 2020 12:51:57 -0700 (PDT)
X-Received: by 2002:a9d:6097:: with SMTP id m23mr16459611otj.316.1586807517368;
        Mon, 13 Apr 2020 12:51:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586807517; cv=none;
        d=google.com; s=arc-20160816;
        b=I4wDsd7ksTaarc/BCnqHHTdQO/FtYQN2vAHFGxFyO4LCXwPS5Cst7NR0MDe4+Eyhsr
         tkU4Lme2T9A0iNBFnR1/Z0Mbn/K+Mde1T3UqhTR8hwxIyh73qv4ZVWA1s8UqLs7Clj7x
         oX9dpcL4YgOjXxmCuGWu7daZhMJwTZPbNcyThzbB4CrqQr2Lp1nkHomLIFpCMljVnoTx
         Hyo/WwqNlQGyXHpJLDrNWFil6w8zmUvCbu4Le3gnTHNlCzGipl2AqER3r4P0rXcQ5XR5
         /SN0OY02KBtMg35eMALf/M5Q5lKt8wA/dxirwgc844Q3ngBh6jHQcUdGamCoK8vhzfF4
         hAaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9/SNyg00K2RwmSQDXWhtQELp/kcSR3KGW1LXJbdnOpQ=;
        b=qNzf3DSSJ/4LajXoBUQFwFMoXJRIIElnb2lFrbHGQ2uWoDOlFq0eBdk6kjhjy8o5UG
         ZUWieJYMiN+ivJWjgtWfPE2XfkUM+B9mW6tWtjJIuLZIvxLIZXzIpBFCr722vHJHmcnw
         vZnn7tjJQAU/SItmaua6oPwjznoz9Gp2AwusMTQngQXZPjmau6wV3c3dnycPCuVqFYin
         TvFCCWLdi8iVjmhLjC1KIjWgJo+lpChfnhPu0kvkS+PzvIuDTGp9d3Fb3vdeWXGu8NNP
         zp5ZyErpIWIVNAwFcUr8gMi6irSZciPByodfcVD76Ve+d60ZOuyUQqJVr5SgqTI/wkMN
         wMhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q0dRq4el;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id z14si450376oid.1.2020.04.13.12.51.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 12:51:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id w12so9471915otm.13
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 12:51:57 -0700 (PDT)
X-Received: by 2002:a4a:95ee:: with SMTP id p43mr15297173ooi.24.1586807517032;
        Mon, 13 Apr 2020 12:51:57 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id t193sm5062852oif.34.2020.04.13.12.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2020 12:51:56 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linux-crypto@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH] lib/mpi: Fix building for powerpc with clang
Date: Mon, 13 Apr 2020 12:50:42 -0700
Message-Id: <20200413195041.24064-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q0dRq4el;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

0day reports over and over on an powerpc randconfig with clang:

lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast or build with
-fheinous-gnu-extensions

Remove the superfluous casts, which have been done previously for x86
and arm32 in commit dea632cadd12 ("lib/mpi: fix build with clang") and
commit 7b7c1df2883d ("lib/mpi/longlong.h: fix building with 32-bit
x86").

Reported-by: kbuild test robot <lkp@intel.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/991
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Herbet seems to take lib/mpi patches but there does not seem to be a
formal maintainer so Michael could take it since it is just a powerpc
thing.

 lib/mpi/longlong.h | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index 2dceaca27489..891e1c3549c4 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -722,22 +722,22 @@ do {									\
 do { \
 	if (__builtin_constant_p(bh) && (bh) == 0) \
 		__asm__ ("{a%I4|add%I4c} %1,%3,%4\n\t{aze|addze} %0,%2" \
-		: "=r" ((USItype)(sh)), \
-		"=&r" ((USItype)(sl)) \
+		: "=r" (sh), \
+		"=&r" (sl) \
 		: "%r" ((USItype)(ah)), \
 		"%r" ((USItype)(al)), \
 		"rI" ((USItype)(bl))); \
 	else if (__builtin_constant_p(bh) && (bh) == ~(USItype) 0) \
 		__asm__ ("{a%I4|add%I4c} %1,%3,%4\n\t{ame|addme} %0,%2" \
-		: "=r" ((USItype)(sh)), \
-		"=&r" ((USItype)(sl)) \
+		: "=r" (sh), \
+		"=&r" (sl) \
 		: "%r" ((USItype)(ah)), \
 		"%r" ((USItype)(al)), \
 		"rI" ((USItype)(bl))); \
 	else \
 		__asm__ ("{a%I5|add%I5c} %1,%4,%5\n\t{ae|adde} %0,%2,%3" \
-		: "=r" ((USItype)(sh)), \
-		"=&r" ((USItype)(sl)) \
+		: "=r" (sh), \
+		"=&r" (sl) \
 		: "%r" ((USItype)(ah)), \
 		"r" ((USItype)(bh)), \
 		"%r" ((USItype)(al)), \
@@ -747,36 +747,36 @@ do { \
 do { \
 	if (__builtin_constant_p(ah) && (ah) == 0) \
 		__asm__ ("{sf%I3|subf%I3c} %1,%4,%3\n\t{sfze|subfze} %0,%2" \
-		: "=r" ((USItype)(sh)), \
-		"=&r" ((USItype)(sl)) \
+		: "=r" (sh), \
+		"=&r" (sl) \
 		: "r" ((USItype)(bh)), \
 		"rI" ((USItype)(al)), \
 		"r" ((USItype)(bl))); \
 	else if (__builtin_constant_p(ah) && (ah) == ~(USItype) 0) \
 		__asm__ ("{sf%I3|subf%I3c} %1,%4,%3\n\t{sfme|subfme} %0,%2" \
-		: "=r" ((USItype)(sh)), \
-		"=&r" ((USItype)(sl)) \
+		: "=r" (sh), \
+		"=&r" (sl) \
 		: "r" ((USItype)(bh)), \
 		"rI" ((USItype)(al)), \
 		"r" ((USItype)(bl))); \
 	else if (__builtin_constant_p(bh) && (bh) == 0) \
 		__asm__ ("{sf%I3|subf%I3c} %1,%4,%3\n\t{ame|addme} %0,%2" \
-		: "=r" ((USItype)(sh)), \
-		"=&r" ((USItype)(sl)) \
+		: "=r" (sh), \
+		"=&r" (sl) \
 		: "r" ((USItype)(ah)), \
 		"rI" ((USItype)(al)), \
 		"r" ((USItype)(bl))); \
 	else if (__builtin_constant_p(bh) && (bh) == ~(USItype) 0) \
 		__asm__ ("{sf%I3|subf%I3c} %1,%4,%3\n\t{aze|addze} %0,%2" \
-		: "=r" ((USItype)(sh)), \
-		"=&r" ((USItype)(sl)) \
+		: "=r" (sh), \
+		"=&r" (sl) \
 		: "r" ((USItype)(ah)), \
 		"rI" ((USItype)(al)), \
 		"r" ((USItype)(bl))); \
 	else \
 		__asm__ ("{sf%I4|subf%I4c} %1,%5,%4\n\t{sfe|subfe} %0,%3,%2" \
-		: "=r" ((USItype)(sh)), \
-		"=&r" ((USItype)(sl)) \
+		: "=r" (sh), \
+		"=&r" (sl) \
 		: "r" ((USItype)(ah)), \
 		"r" ((USItype)(bh)), \
 		"rI" ((USItype)(al)), \
@@ -787,7 +787,7 @@ do { \
 do { \
 	USItype __m0 = (m0), __m1 = (m1); \
 	__asm__ ("mulhwu %0,%1,%2" \
-	: "=r" ((USItype) ph) \
+	: "=r" (ph) \
 	: "%r" (__m0), \
 	"r" (__m1)); \
 	(pl) = __m0 * __m1; \

base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413195041.24064-1-natechancellor%40gmail.com.
