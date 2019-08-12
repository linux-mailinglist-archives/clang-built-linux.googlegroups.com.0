Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBS6JY7VAKGQE72BX7AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDB88AA3D
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 00:14:36 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id f15sf78740629ywb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 15:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565648075; cv=pass;
        d=google.com; s=arc-20160816;
        b=nkS2eb9XaUEzTE0nS19KPUFs4mH7/gOimF4bhcYODlGfQBTFIuWBlkFsXGfJjY/aER
         figuEXqJ+AUuX5b+sXgdVwIwTuP1/9jETOEj3hz6KDiySRRTiK/Jh/j8PxtreZkPU5/0
         JlROJgU8GIZGVPLzOuSWX+EHmBvJszw3xzxUb5e1f7ZgYQ3JdwSg1XoVtl2YgBrSbUjG
         kftOG5X1oY+uybO3EFEYqF8I/dMcp39Kf03PjZvSLvLC9Cps71G1LjZHdDnEOQoOPob2
         WKOhVOYxRT+xju2/kOh2D/5a4ZR5KrzJHOQ6OMs7X++DBsoPa3+GBeR9390JQEy9anRb
         GozA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cvfGNeTixmUJuYkj3RizTotfwYJ99c3MKVk9c6I+97k=;
        b=u5YTjpcXDRqLt8eeCxSY9e5yDsaZYOMFbL1k8cM1Byq3Z96hVhwNb+VkDwjPqd+mZ3
         KqrK5BEzh+REdHR6OCCiUhpUhtpDrYTIobhjSaAjfvURSIMFcI2ScU/MF8ZeL279U61X
         Z0Sw0Ug4YcadIwZhh0chVbApDL0u5jEf0LxbQz6c2qTydlq+238H3mIHa8Q5pnqY/B8x
         Ajb8fJMi4hD81VTJbaA+DKjAsqDjzHR+ZmlbpN8Fzez8Cb8xS10/7VBU8qveWHCE2gRR
         AjCk1LSmC0doKV8TZJQzS1zsk5Xn6O2z9pSjBjQjuHnvg3n0JdUmvPvI1aAhhiONJaCZ
         QsuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iXjwC9Y2;
       spf=pass (google.com: domain of 3yurrxqukecs4ybt1x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3yuRRXQUKEcs4yBt1x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cvfGNeTixmUJuYkj3RizTotfwYJ99c3MKVk9c6I+97k=;
        b=c34e5+6oN6QOefFt/LjxWoXRrBRcBDE6+AlPUTR/J/VyoFENg+qfX3H+61T4CrjXvM
         HC10UZ2ipGznBh1ONAD1niUg6Tbq/diroCWa9fCGMU3ggI6M9mwlv+8HwXQt1syhIvaO
         iwrtnKCjJ9eRyEHh4UwHnKwo8/GnATEFZnLrS1oLmYvQs8cRtch0Rxen4AT44KOqjCyO
         mIOGppQ1gbUvJ2rLndKzf7OGtw8leTAKyTEpcuZY7htf8M71vHqdTiW21hBvU1pc5gES
         xz4WJE2mb9L0WcYtbVa/Y9WiIMnc7PZ0qSlfiCW/LXXv0WTftYgErpc4TeAGoMBJd6gw
         IEGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cvfGNeTixmUJuYkj3RizTotfwYJ99c3MKVk9c6I+97k=;
        b=SN+V+mtTQJH+5+aBp7gHFY1+yfzF2Wg4wWdK6qwrmbj4BReSQai14SAGOhn1tOarRq
         4kGmVKVS+NR8dnO3zp8cfqTgjs8zRbDlviQjxlUy5EuamJtRDaxNyZTGavefdjXYI69g
         jSWGEPoR8absDpwC6+3D5fg3CGhrxbr1RaVA8CoYNaneZvWVUMSuvzIq9zdDvuEOOJLe
         ZSqqNDGH5IhiCMbjc8veOpiWpuwzbtnxfjNsssmTFSDZqgvgIfJntGF+BLMM6Ynp/tsv
         edkee6emPacKsAU1FQgxqgCtd82N/macnRPk2fzIwK7PZ3MFAG6imHk+4P6GvPvrPBBi
         ewhw==
X-Gm-Message-State: APjAAAVS2BvQR1mt0DJch64KhLEjavu/ocrS4ZuINZHulnfGYkXUt+2Z
	qid8nQmswZ45Bfq1G1RBki8=
X-Google-Smtp-Source: APXvYqySVQq1fI3zI/WDbUnpD02Pss3P8tI9y3cvhSUpay2t74HypDJGxZlFjBLNG7P1fyJ41LHkQA==
X-Received: by 2002:a81:2445:: with SMTP id k66mr25951157ywk.94.1565648075551;
        Mon, 12 Aug 2019 15:14:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e4c2:: with SMTP id n185ls3755424ywe.1.gmail; Mon, 12
 Aug 2019 15:14:35 -0700 (PDT)
X-Received: by 2002:a81:9917:: with SMTP id q23mr3150366ywg.312.1565648075229;
        Mon, 12 Aug 2019 15:14:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565648075; cv=none;
        d=google.com; s=arc-20160816;
        b=DNiipFa1U1r3ecv1nHUaSNXmthaFVUjx/y8PwuPBZRLnP7SBbb3c2Xh1U/55e7cwjB
         c36KNuoc5Y7dAdFbT3CkyqCND1mrEzy2IXvUx1LwFkrFdXOuwXlz92erlgMZa1kClq17
         HG08GGYzKRwBPgXBYM4ZOfVckIG/rINv9HIxhWA4aXRa0uFF2Jy/4JBDWfqpFmTRi8FC
         RD7M3efyP6w3TX5+Q8s18n5MDUk9JoGmtCl365VIvVQXt7rWhEW/xDKx0QZ5jv+a/mxr
         EC0Ze/neEYAktFD/UYackdcDcs7Sc135+BSs/h6+kFpdzWrkSdZBm0AiKPOQG2qa2li9
         yxDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YzrsGQWJ9vf69SNd20htWu1bd7T+J/M+qkSI3MhX4Ko=;
        b=em+JhpXTALcTNoM+u59KU3vM+xtectS5fX8ymyID0RGj8hLdWbjyTAJeyBm/B/9nUk
         xo9AvTEAbV1mhWn5tmqwhb4mMJHOM6me0aalugg1qIsTsa/+hw1w+Lya8b54iZ5kvsgM
         JIGiMCYQgHB22nHjOWC88s1ldZ3rBZo6iNnPQj34KHahNxDFjHowfzUZDYNPM7mnKqAl
         2XOmQRQ7msd68cYShoAEoIYGtqCVVsQPnrTPbiGq7ULti9StfTICWpro4k1TXx69asFl
         p/MxmrBIKu7Tzyn3BWdBYwEfskXSghhjhVBuf6yrRCjiN2JZhqSlfsjbV9URhi4A4H7G
         LlTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iXjwC9Y2;
       spf=pass (google.com: domain of 3yurrxqukecs4ybt1x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3yuRRXQUKEcs4yBt1x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id n40si215133ywh.3.2019.08.12.15.14.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 15:14:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yurrxqukecs4ybt1x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id y67so2547554qkc.14
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 15:14:35 -0700 (PDT)
X-Received: by 2002:a05:620a:1f0:: with SMTP id x16mr20622958qkn.11.1565648074752;
 Mon, 12 Aug 2019 15:14:34 -0700 (PDT)
Date: Mon, 12 Aug 2019 15:14:16 -0700
In-Reply-To: <20190812214711.83710-1-nhuck@google.com>
Message-Id: <20190812221416.139678-1-nhuck@google.com>
Mime-Version: 1.0
References: <20190812214711.83710-1-nhuck@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v2] kbuild: Change fallthrough comments to attributes
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: yamada.masahiro@socionext.com, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, clang-built-linux@googlegroups.com, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iXjwC9Y2;       spf=pass
 (google.com: domain of 3yurrxqukecs4ybt1x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3yuRRXQUKEcs4yBt1x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--nhuck.bounces.google.com;
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
 Makefile                            |  4 ++
 include/linux/compiler_attributes.h |  4 ++
 include/linux/jhash.h               | 60 +++++++++++++++++++++--------
 include/linux/mm.h                  |  9 +++--
 include/linux/signal.h              | 14 ++++---
 include/linux/skbuff.h              | 12 +++---
 lib/zstd/bitstream.h                | 10 ++---
 scripts/Makefile.extrawarn          |  3 ++
 8 files changed, 81 insertions(+), 35 deletions(-)

diff --git a/Makefile b/Makefile
index 1b23f95db176..93b9744e66a2 100644
--- a/Makefile
+++ b/Makefile
@@ -846,7 +846,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 KBUILD_CFLAGS += -Wdeclaration-after-statement
 
 # Warn about unmarked fall-throughs in switch statement.
+# If the compiler is clang, this warning is only enabled if W=1 in
+# Makefile.extrawarn
+ifndef CONFIG_CC_IS_CLANG
 KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
+endif
 
 # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
 KBUILD_CFLAGS += -Wvla
diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 6b318efd8a74..86c26bc0ace5 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -253,4 +253,8 @@
  */
 #define __weak                          __attribute__((__weak__))
 
+#if __has_attribute(fallthrough)
+#define __fallthrough                   __attribute__((fallthrough))
+#endif
+
 #endif /* __LINUX_COMPILER_ATTRIBUTES_H */
diff --git a/include/linux/jhash.h b/include/linux/jhash.h
index ba2f6a9776b6..1d21e3f32823 100644
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
+		__fallthrough;
+	case 11:
+		c += (u32)k[10]<<16;
+		__fallthrough;
+	case 10:
+		c += (u32)k[9]<<8;
+		__fallthrough;
+	case 9:
+		c += k[8];
+		__fallthrough;
+	case 8:
+		b += (u32)k[7]<<24;
+		__fallthrough;
+	case 7:
+		b += (u32)k[6]<<16;
+		__fallthrough;
+	case 6:
+		b += (u32)k[5]<<8;
+		__fallthrough;
+	case 5:
+		b += k[4];
+		__fallthrough;
+	case 4:
+		a += (u32)k[3]<<24;
+		__fallthrough;
+	case 3:
+		a += (u32)k[2]<<16;
+		__fallthrough;
+	case 2:
+		a += (u32)k[1]<<8;
+		__fallthrough;
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
+		__fallthrough;
+	case 2:
+		b += k[1];
+		__fallthrough;
+	case 1:
+		a += k[0];
 		__jhash_final(a, b, c);
+		break;
 	case 0:	/* Nothing left to add */
 		break;
 	}
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 0334ca97c584..7acb131e287f 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -158,11 +158,14 @@ static inline void __mm_zero_struct_page(struct page *page)
 
 	switch (sizeof(struct page)) {
 	case 80:
-		_pp[9] = 0;	/* fallthrough */
+		_pp[9] = 0;
+		__fallthrough;
 	case 72:
-		_pp[8] = 0;	/* fallthrough */
+		_pp[8] = 0;
+		__fallthrough;
 	case 64:
-		_pp[7] = 0;	/* fallthrough */
+		_pp[7] = 0;
+		__fallthrough;
 	case 56:
 		_pp[6] = 0;
 		_pp[5] = 0;
diff --git a/include/linux/signal.h b/include/linux/signal.h
index b5d99482d3fe..fb750e87566f 100644
--- a/include/linux/signal.h
+++ b/include/linux/signal.h
@@ -129,11 +129,11 @@ static inline void name(sigset_t *r, const sigset_t *a, const sigset_t *b) \
 		b3 = b->sig[3]; b2 = b->sig[2];				\
 		r->sig[3] = op(a3, b3);					\
 		r->sig[2] = op(a2, b2);					\
-		/* fall through */					\
+		__fallthrough;						\
 	case 2:								\
 		a1 = a->sig[1]; b1 = b->sig[1];				\
 		r->sig[1] = op(a1, b1);					\
-		/* fall through */					\
+		__fallthrough;						\
 	case 1:								\
 		a0 = a->sig[0]; b0 = b->sig[0];				\
 		r->sig[0] = op(a0, b0);					\
@@ -163,9 +163,9 @@ static inline void name(sigset_t *set)					\
 	switch (_NSIG_WORDS) {						\
 	case 4:	set->sig[3] = op(set->sig[3]);				\
 		set->sig[2] = op(set->sig[2]);				\
-		/* fall through */					\
+		__fallthrough;				\
 	case 2:	set->sig[1] = op(set->sig[1]);				\
-		/* fall through */					\
+		__fallthrough;				\
 	case 1:	set->sig[0] = op(set->sig[0]);				\
 		    break;						\
 	default:							\
@@ -186,7 +186,7 @@ static inline void sigemptyset(sigset_t *set)
 		memset(set, 0, sizeof(sigset_t));
 		break;
 	case 2: set->sig[1] = 0;
-		/* fall through */
+		__fallthrough;
 	case 1:	set->sig[0] = 0;
 		break;
 	}
@@ -199,7 +199,7 @@ static inline void sigfillset(sigset_t *set)
 		memset(set, -1, sizeof(sigset_t));
 		break;
 	case 2: set->sig[1] = -1;
-		/* fall through */
+		__fallthrough;
 	case 1:	set->sig[0] = -1;
 		break;
 	}
@@ -230,6 +230,7 @@ static inline void siginitset(sigset_t *set, unsigned long mask)
 		memset(&set->sig[1], 0, sizeof(long)*(_NSIG_WORDS-1));
 		break;
 	case 2: set->sig[1] = 0;
+		__fallthrough;
 	case 1: ;
 	}
 }
@@ -242,6 +243,7 @@ static inline void siginitsetinv(sigset_t *set, unsigned long mask)
 		memset(&set->sig[1], -1, sizeof(long)*(_NSIG_WORDS-1));
 		break;
 	case 2: set->sig[1] = -1;
+		__fallthrough;
 	case 1: ;
 	}
 }
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index d8af86d995d6..1b7d3cf81dd8 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -3639,19 +3639,19 @@ static inline bool __skb_metadata_differs(const struct sk_buff *skb_a,
 #define __it(x, op) (x -= sizeof(u##op))
 #define __it_diff(a, b, op) (*(u##op *)__it(a, op)) ^ (*(u##op *)__it(b, op))
 	case 32: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__fallthrough;
 	case 24: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__fallthrough;
 	case 16: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__fallthrough;
 	case  8: diffs |= __it_diff(a, b, 64);
 		break;
 	case 28: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__fallthrough;
 	case 20: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__fallthrough;
 	case 12: diffs |= __it_diff(a, b, 64);
-		 /* fall through */
+		__fallthrough;
 	case  4: diffs |= __it_diff(a, b, 32);
 		break;
 	}
diff --git a/lib/zstd/bitstream.h b/lib/zstd/bitstream.h
index 3a49784d5c61..36c9aeafd801 100644
--- a/lib/zstd/bitstream.h
+++ b/lib/zstd/bitstream.h
@@ -259,15 +259,15 @@ ZSTD_STATIC size_t BIT_initDStream(BIT_DStream_t *bitD, const void *srcBuffer, s
 		bitD->bitContainer = *(const BYTE *)(bitD->start);
 		switch (srcSize) {
 		case 7: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[6]) << (sizeof(bitD->bitContainer) * 8 - 16);
-			/* fall through */
+			__fallthrough;
 		case 6: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[5]) << (sizeof(bitD->bitContainer) * 8 - 24);
-			/* fall through */
+			__fallthrough;
 		case 5: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[4]) << (sizeof(bitD->bitContainer) * 8 - 32);
-			/* fall through */
+			__fallthrough;
 		case 4: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[3]) << 24;
-			/* fall through */
+			__fallthrough;
 		case 3: bitD->bitContainer += (size_t)(((const BYTE *)(srcBuffer))[2]) << 16;
-			/* fall through */
+			__fallthrough;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812221416.139678-1-nhuck%40google.com.
