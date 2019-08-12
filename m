Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBD55Y7VAKGQEUYCRFHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AB38A99C
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:48:00 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id y67sf2481013qkc.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646479; cv=pass;
        d=google.com; s=arc-20160816;
        b=OTB2GxNWSQ7teAE9iB8kAKNcjCBqebgYTg44veCv+5IB7XNU/5eF/VI5X35e4yUtyi
         dgnzbboZLgMFGdE7v8qFhboy3bBxd0e7QkfOHzuQEX82HAUEO4JqFBnEreoNa6f399So
         ozUtUnbRT97p8pkTdkI6Aqved3yeX2ICMdjPxj8rqLy6OyWn7BDkOuKV1dBahRoouOpl
         aDO3TMbYAE0+m3T8j653ACrloLH+j+diewjhNx1kR3RN7Lz+K0dLl/AYQym01RpcmhOH
         4oaRaAskJTpOMyjlNC5eKd9dRE//WFxNIxvgirOLDdl3rwoN+x1ZRyffyf9b1XDMc3s4
         c/pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=DMQWgELp1v2FmLSIWqVT2ED9mPJSVuoHHD/QKJGJljI=;
        b=NekGDePPcv03C5tnuKh7xw94wAJRlw8ZfuDstWWXvIUpw9fhIiKKXcgCHYOJCqkuNS
         U3sz8Z53hBwj2yAD1XIarT3v/EhaWpmVr9RTA5fLZv45tz/pDRbub6ww362oYq6jw8zw
         +sD1pk+ubLjFKDMe9BRTASuA1YYJk9JHRxcqB80pct6/RmWUhrvHvmEjtw7106IbDTTj
         SXMmWUVvVRe0uYyj6eoo/kMB8Cbq/jiWHu6phLHKerIUUJoK1XrLiZbdjhlYTsJri6H7
         FMT4nWi0diK3bhOUdEtZ3K/p2Lnn1sVI6X8at3IzyaxUpxsiec+MX85BltxWoGoXNiOa
         N3Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M2Hk8avN;
       spf=pass (google.com: domain of 3jd5rxqukeyitn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3jd5RXQUKEYItn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DMQWgELp1v2FmLSIWqVT2ED9mPJSVuoHHD/QKJGJljI=;
        b=h8grlQAkf9q+Bf+pp/SpEiHuvFC8iHS2u/r2BIGnjFiH3PoGx76GIiVx2IN0XMQYoM
         K/k2Mihuk/ksVesJil+9KFW2EwzvYlgEmNJyyIdTQ+YkimpzY4asB0/hohyUR+nlLPnO
         TQnQQB1DpfONPdEgDgRybN/hzzUwlk0t63E4fk8idAkeUQWRQn7TCjfwXKNCxzV3vkBG
         BHvrnm4BOs/q2jcK+GmKGupNnOE0Brhsu9+sBEVyAU5HVpOEnAeCB8xd7dTjp6AubMD0
         h2FO+nuYDdOwUM2uS1BeItvZmfeBis+CuiBxa+ePzi7DU+NElOHUNXEmVJiSoHoPoyc2
         DY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DMQWgELp1v2FmLSIWqVT2ED9mPJSVuoHHD/QKJGJljI=;
        b=Gy3yxqL8ie9lpYVRp/4Dvyx6fZfJN0spOToQx5rKlSq6RGWpsGBbLD9aWoGYa2dPbe
         TTfJhneUVpwjQgcWjierR7mYFWXhZH2hL8hkUjhKP9pQ2vJbDf4GgBZsYkRZq4Er+TKN
         njCfR9vdhLrtE//qS4qa7HID2TImlVdQ9v4D8MZ9AsvKd8K9vvqKYWE+irgBEaVk5XM6
         ntStJvCFUXhANRdF1ED/O+o4FEf0LlowYjj9P+ONKpCc3pPOlzE16padSYhtPo7IebpM
         d2i3LoHPw+lIau3azyNg5qycy0AOLtjdFC/WMJkrObupSqW12DhW8CFrk980CH9TW50T
         PpDQ==
X-Gm-Message-State: APjAAAXvj8rOfkC8ebKEJlGadwOlqk+4xcgiGqeu1jls+NZH/OyUaOkk
	K/84H38vKFtsnNwPxNaqiqM=
X-Google-Smtp-Source: APXvYqyQGr6f/klBrwwVcl/ewJ2DrIiCvhLn09K8kF4LT1yCSLptb3bsQd6uvscQEcCY/fOQhTKg1w==
X-Received: by 2002:a05:620a:12c3:: with SMTP id e3mr22584402qkl.165.1565646479239;
        Mon, 12 Aug 2019 14:47:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:81f6:: with SMTP id 51ls792874qve.2.gmail; Mon, 12 Aug
 2019 14:47:59 -0700 (PDT)
X-Received: by 2002:a0c:d1d3:: with SMTP id k19mr3060666qvh.6.1565646479015;
        Mon, 12 Aug 2019 14:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646479; cv=none;
        d=google.com; s=arc-20160816;
        b=FPX/bB2CEm0Kmr3N4zKBuoFjKy2KeVqdHPEo20AdupWZF6nI6UFrYbWibhBbxr2yC4
         rUdBt7yRfCLNqCji7h/3kPFesp7wYgx1guyTThdaRKZ8ukEYw4XwG796Itb9VIvPYtwr
         c8AWCkjoE+yy2E/Th8owO25CjePmqmBPKadPJ3UyCvu7b+jdkEA6O26j1DNh6wgKUTBP
         gnBXwT6Qsv8oRM1Y6BFx+1/uX3HJm7ZWY9pB6I2T0klkC9imz0bujVO8JLYVoIl9+K7a
         vvCZxxA+Bh/NE177ws+nJOZOcLd5fNFE4A6zvyK+KrZPt3Mnf54B69j1UPDmSqBygUHc
         gPNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=+RjtCqVpVQHEQV5UWqwn329eqcVzZZeuadC4ZfZTt8A=;
        b=eU/SEDnTSVoRenlrCbcSH46lUwtzL3+dnGIRSk8EWNiJmb7MpNDiuX/J3EdU3UdQ/e
         o3rSH0PmQcOJBbVI5yaYWoBPXIfwnNzPF8AsmhY98KFrxGzpe5uf1LZZQ8qfCQ9cXz4/
         udtSrUoqvSH3iA/piMEdAUOXiggqBevJ9VqUcWKZYLxuokJlS7uebjvCYYXxQ011rqF6
         JI3D5ow9F04VXoz28XMrhOk7dd69RRFyIxhZ2PFMIYqdKMKPP52USGmgs2PRENqQvDBS
         Uqy8R5ArHLMZNiO5Ue1+B3+RXOfxWA//xgXnESt7Mdyb2AzaYk40u2OPk9tF3qmCL3H3
         cMOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M2Hk8avN;
       spf=pass (google.com: domain of 3jd5rxqukeyitn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3jd5RXQUKEYItn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id o56si1984031qtf.0.2019.08.12.14.47.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jd5rxqukeyitn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id i33so61856304pld.15
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:47:58 -0700 (PDT)
X-Received: by 2002:a63:ee08:: with SMTP id e8mr32361203pgi.70.1565646477641;
 Mon, 12 Aug 2019 14:47:57 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:47:11 -0700
Message-Id: <20190812214711.83710-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH] kbuild: Change fallthrough comments to attributes
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: yamada.masahiro@socionext.com, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, clang-built-linux@googlegroups.com, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M2Hk8avN;       spf=pass
 (google.com: domain of 3jd5rxqukeyitn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3jd5RXQUKEYItn0iqmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--nhuck.bounces.google.com;
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

Clang does not support the use of comments to label
intentional fallthrough. This patch replaces some uses
of comments to attributesto cut down a significant number
of warnings on clang (from ~50000 to ~200). Only comments
in commonly used header files have been replaced.

Since there is still quite a bit of noise, this
patch moves -Wimplicit-fallthrough to
Makefile.extrawarn if you are compiling with
clang.

Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 Makefile                   |  4 +++
 include/linux/jhash.h      | 60 ++++++++++++++++++++++++++++----------
 include/linux/mm.h         |  9 ++++--
 include/linux/signal.h     | 14 +++++----
 include/linux/skbuff.h     | 12 ++++----
 lib/zstd/bitstream.h       | 10 +++----
 scripts/Makefile.extrawarn |  3 ++
 7 files changed, 77 insertions(+), 35 deletions(-)

diff --git a/Makefile b/Makefile
index c391fbb07195..875930c19619 100644
--- a/Makefile
+++ b/Makefile
@@ -847,7 +847,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 KBUILD_CFLAGS += -Wdeclaration-after-statement
 
 # Warn about unmarked fall-throughs in switch statement.
+# If the compiler is clang, this warning is only enabled if W=1 in
+# Makefile.extrawarn
+ifndef CONFIG_CC_IS_CLANG
 KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
+endif
 
 # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
 KBUILD_CFLAGS += -Wvla
diff --git a/include/linux/jhash.h b/include/linux/jhash.h
index ba2f6a9776b6..6cb2381501d1 100644
--- a/include/linux/jhash.h
+++ b/include/linux/jhash.h
@@ -86,19 +86,43 @@ static inline u32 jhash(const void *key, u32 length, u32 initval)
 	}
 	/* Last block: affect all 32 bits of (c) */
 	switch (length) {
-	case 12: c += (u32)k[11]<<24;	/* fall through */
-	case 11: c += (u32)k[10]<<16;	/* fall through */
-	case 10: c += (u32)k[9]<<8;	/* fall through */
-	case 9:  c += k[8];		/* fall through */
-	case 8:  b += (u32)k[7]<<24;	/* fall through */
-	case 7:  b += (u32)k[6]<<16;	/* fall through */
-	case 6:  b += (u32)k[5]<<8;	/* fall through */
-	case 5:  b += k[4];		/* fall through */
-	case 4:  a += (u32)k[3]<<24;	/* fall through */
-	case 3:  a += (u32)k[2]<<16;	/* fall through */
-	case 2:  a += (u32)k[1]<<8;	/* fall through */
-	case 1:  a += k[0];
+	case 12:
+		c += (u32)k[11]<<24;
+		__attribute__((fallthrough));
+	case 11:
+		c += (u32)k[10]<<16;
+		__attribute__((fallthrough));
+	case 10:
+		c += (u32)k[9]<<8;
+		__attribute__((fallthrough));
+	case 9:
+		c += k[8];
+		__attribute__((fallthrough));
+	case 8:
+		b += (u32)k[7]<<24;
+		__attribute__((fallthrough));
+	case 7:
+		b += (u32)k[6]<<16;
+		__attribute__((fallthrough));
+	case 6:
+		b += (u32)k[5]<<8;
+		__attribute__((fallthrough));
+	case 5:
+		b += k[4];
+		__attribute__((fallthrough));
+	case 4:
+		a += (u32)k[3]<<24;
+		__attribute__((fallthrough));
+	case 3:
+		a += (u32)k[2]<<16;
+		__attribute__((fallthrough));
+	case 2:
+		a += (u32)k[1]<<8;
+		__attribute__((fallthrough));
+	case 1:
+		a += k[0];
 		 __jhash_final(a, b, c);
+		break;
 	case 0: /* Nothing left to add */
 		break;
 	}
@@ -132,10 +156,16 @@ static inline u32 jhash2(const u32 *k, u32 length, u32 initval)
 
 	/* Handle the last 3 u32's */
 	switch (length) {
-	case 3: c += k[2];	/* fall through */
-	case 2: b += k[1];	/* fall through */
-	case 1: a += k[0];
+	case 3:
+		c += k[2];
+		__attribute__((fallthrough));
+	case 2:
+		b += k[1];
+		__attribute__((fallthrough));
+	case 1:
+		a += k[0];
 		__jhash_final(a, b, c);
+		break;
 	case 0:	/* Nothing left to add */
 		break;
 	}
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 0334ca97c584..52d99f263ca3 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -158,11 +158,14 @@ static inline void __mm_zero_struct_page(struct page *page)
 
 	switch (sizeof(struct page)) {
 	case 80:
-		_pp[9] = 0;	/* fallthrough */
+		_pp[9] = 0;
+		__attribute__((fallthrough));
 	case 72:
-		_pp[8] = 0;	/* fallthrough */
+		_pp[8] = 0;
+		__attribute__((fallthrough));
 	case 64:
-		_pp[7] = 0;	/* fallthrough */
+		_pp[7] = 0;
+		__attribute__((fallthrough));
 	case 56:
 		_pp[6] = 0;
 		_pp[5] = 0;
diff --git a/include/linux/signal.h b/include/linux/signal.h
index b5d99482d3fe..4fb0a0041a37 100644
--- a/include/linux/signal.h
+++ b/include/linux/signal.h
@@ -129,11 +129,11 @@ static inline void name(sigset_t *r, const sigset_t *a, const sigset_t *b) \
 		b3 = b->sig[3]; b2 = b->sig[2];				\
 		r->sig[3] = op(a3, b3);					\
 		r->sig[2] = op(a2, b2);					\
-		/* fall through */					\
+		__attribute__((fallthrough));				\
 	case 2:								\
 		a1 = a->sig[1]; b1 = b->sig[1];				\
 		r->sig[1] = op(a1, b1);					\
-		/* fall through */					\
+		__attribute__((fallthrough));				\
 	case 1:								\
 		a0 = a->sig[0]; b0 = b->sig[0];				\
 		r->sig[0] = op(a0, b0);					\
@@ -163,9 +163,9 @@ static inline void name(sigset_t *set)					\
 	switch (_NSIG_WORDS) {						\
 	case 4:	set->sig[3] = op(set->sig[3]);				\
 		set->sig[2] = op(set->sig[2]);				\
-		/* fall through */					\
+		__attribute__((fallthrough));				\
 	case 2:	set->sig[1] = op(set->sig[1]);				\
-		/* fall through */					\
+		__attribute__((fallthrough));				\
 	case 1:	set->sig[0] = op(set->sig[0]);				\
 		    break;						\
 	default:							\
@@ -186,7 +186,7 @@ static inline void sigemptyset(sigset_t *set)
 		memset(set, 0, sizeof(sigset_t));
 		break;
 	case 2: set->sig[1] = 0;
-		/* fall through */
+		__attribute__((fallthrough));
 	case 1:	set->sig[0] = 0;
 		break;
 	}
@@ -199,7 +199,7 @@ static inline void sigfillset(sigset_t *set)
 		memset(set, -1, sizeof(sigset_t));
 		break;
 	case 2: set->sig[1] = -1;
-		/* fall through */
+		__attribute__((fallthrough));
 	case 1:	set->sig[0] = -1;
 		break;
 	}
@@ -230,6 +230,7 @@ static inline void siginitset(sigset_t *set, unsigned long mask)
 		memset(&set->sig[1], 0, sizeof(long)*(_NSIG_WORDS-1));
 		break;
 	case 2: set->sig[1] = 0;
+		__attribute__((fallthrough));
 	case 1: ;
 	}
 }
@@ -242,6 +243,7 @@ static inline void siginitsetinv(sigset_t *set, unsigned long mask)
 		memset(&set->sig[1], -1, sizeof(long)*(_NSIG_WORDS-1));
 		break;
 	case 2: set->sig[1] = -1;
+		__attribute__((fallthrough));
 	case 1: ;
 	}
 }
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index d8af86d995d6..4a1df6714dfe 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -3639,19 +3639,19 @@ static inline bool __skb_metadata_differs(const struct sk_buff *skb_a,
 #define __it(x, op) (x -= sizeof(u##op))
 #define __it_diff(a, b, op) (*(u##op *)__it(a, op)) ^ (*(u##op *)__it(b, op))
 	case 32: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__attribute__((fallthrough));
 	case 24: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__attribute__((fallthrough));
 	case 16: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__attribute__((fallthrough));
 	case  8: diffs |= __it_diff(a, b, 64);
 		break;
 	case 28: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__attribute__((fallthrough));
 	case 20: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__attribute__((fallthrough));
 	case 12: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__attribute__((fallthrough));
 	case  4: diffs |= __it_diff(a, b, 32);
 		break;
 	}
diff --git a/lib/zstd/bitstream.h b/lib/zstd/bitstream.h
index 3a49784d5c61..cc311bae44da 100644
--- a/lib/zstd/bitstream.h
+++ b/lib/zstd/bitstream.h
@@ -259,15 +259,15 @@ ZSTD_STATIC size_t BIT_initDStream(BIT_DStream_t *bitD, const void *srcBuffer, s
 		bitD->bitContainer = *(const BYTE *)(bitD->start);
 		switch (srcSize) {
 		case 7: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[6]) << (sizeof(bitD->bitContainer) * 8 - 16);
-			/* fall through */
+			__attribute__((fallthrough));
 		case 6: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[5]) << (sizeof(bitD->bitContainer) * 8 - 24);
-			/* fall through */
+			__attribute__((fallthrough));
 		case 5: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[4]) << (sizeof(bitD->bitContainer) * 8 - 32);
-			/* fall through */
+			__attribute__((fallthrough));
 		case 4: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[3]) << 24;
-			/* fall through */
+			__attribute__((fallthrough));
 		case 3: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[2]) << 16;
-			/* fall through */
+			__attribute__((fallthrough));
 		case 2: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[1]) << 8;
 		default:;
 		}
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index a74ce2e3c33e..e12359d69bb7 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -30,6 +30,9 @@ warning-1 += $(call cc-option, -Wunused-but-set-variable)
 warning-1 += $(call cc-option, -Wunused-const-variable)
 warning-1 += $(call cc-option, -Wpacked-not-aligned)
 warning-1 += $(call cc-option, -Wstringop-truncation)
+ifdef CONFIG_CC_IS_CLANG
+KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
+endif
 # The following turn off the warnings enabled by -Wextra
 warning-1 += -Wno-missing-field-initializers
 warning-1 += -Wno-sign-compare
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812214711.83710-1-nhuck%40google.com.
