Return-Path: <clang-built-linux+bncBDY3NC743AGBBPVI3DWQKGQEJUF5TAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6ADE69D7
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Oct 2019 23:03:44 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id v20sf4318188ota.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Oct 2019 15:03:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572213822; cv=pass;
        d=google.com; s=arc-20160816;
        b=q1BGaH41otLhXKhRb/p83XEgmOf79mRS4KqT6lZqjyDuhH/b7EsyKjzO1Gawrg89Fv
         aCSwdyl12CRMx2OX4mbtpV/4MSoR2/5VeieKh/dNzDslMOg4lreaJ6/p85S2KHl0bWGZ
         ogpAE2E2xszF4FS7dH8fNJI5Rle26WfdZu0BuWdqS4NSDlbmrAVbEKK3Mbn12yxOwOwy
         LgUHqfIYF2s59nqf2Rp0T7zHatGM6cdDWhXcBm3q0c+9cLI9HF348kczIKVZ8ipPKCEW
         G/wUZTzOaxwQU64K1oSZi+w85q5aO9Ap/8lHZU05zwiCegm4UQhbIDv1CKAG5xYYvFgH
         CyxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:date:cc:to
         :from:subject:message-id:sender:dkim-signature;
        bh=tnQkDcgDLmygIYwrYa7CIjrc3C6p+IqOBN/GLN+xYOg=;
        b=uDmwHht9WDWLT8zYEikLiD6Hyx0rCkzYu/V/UzCGo5/8DgbxmoKr6MpMM7PM8qyp6z
         PT96At4bTSQcLn1x48uohpqgoGrXMs1YUzf/5SUnP73O8hKWJ5cngIUekDtiJW/Z11Ym
         Y+mte5wCl3EZxujW+tAgHszjPXq0HDi69UdTxEXmKvfLnqQGwcUS1HlwGlQRhKaYZIpP
         LkcMHVPoAiGneZxeWzrDIQeD4X1D0Q7sHAv69PZj5A0riJTcs9juwcA1NeFk0sW5tMCd
         yoJ/V9rmGqn1UI4ADyZ78ZpH8e/aBaM8AfVee/P8gQ3puJuJ3J7pkLRwTurzuy9QywQc
         ksXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tnQkDcgDLmygIYwrYa7CIjrc3C6p+IqOBN/GLN+xYOg=;
        b=bVP7KbvwlpqGLrLnik5r+4rbabkIZNNpkF1LGD47pUVYgOBMIVfKJH7+lLjZG97dAA
         ePzz8wXSYVlACDGGjEHTKIDhp7uBmMdNmCBOybf8g+Xin9H2n4DqDkkoFl/C8iPgdpHC
         r1JUEGtVoeFpwVHOmkIZi8TjhstG5vco/+7O/euhDGr9FAo2io18Z7Tv/9eYphXmhUkk
         d18V9nPMJjRiYTa3sKxYR9cY2ofLijGvgZW5Q3EpeBd6A78elGfs3M8fIZUHvlIyvVFj
         Tfi4vpCcwKZ8P8OP2UZ5DpVlxL25DappxK5oYkGmDjbaEa0s0I9f6hegyvBqhgUX04Cm
         EKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tnQkDcgDLmygIYwrYa7CIjrc3C6p+IqOBN/GLN+xYOg=;
        b=XPISniEUkRMA2paYpABRtYuAo0kClG5YGTYrvnUEvPIKWJeLeOz0elBQ4JNVmubU3A
         Nhr9dS7Yh27zeGCWykLHFxwZm9K5qich9YvSBmE/NcQt8kIuWHZD8WwbP5mN/073Som5
         wXs/kE3ctO/++DwVLXxG3wpHOMvqEn46luEaF4qHlFZ9yckZ2GZx3XpI51ka9qs6uzMk
         bMY0CxhUSca2DRpltKg9XpsOTMblUDpr3V1QYNkOyKu+5Zgef8xneMdFif5aLsQyMmRs
         R++4PPGfF60GbM9iLt8lijNG4iLKGXkAYlDy9sGxYRD0hHHTuwyirDT0bd8f6L6kE/W/
         KB+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCKtmEuN+EArZvVWGed/YJzSeD/fW61/GsqBCsd9wBbxZwjBTq
	EOyCYR0G8WVZpQG8pbcZXjU=
X-Google-Smtp-Source: APXvYqweADQx7wWAh9eIni5JdLFnvTKJpac23Oy78PtSx4Crfc+Kd4apiGH62PL2YP8CeJ36lDtuYQ==
X-Received: by 2002:a9d:5606:: with SMTP id e6mr10422636oti.173.1572213822634;
        Sun, 27 Oct 2019 15:03:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7549:: with SMTP id q70ls71236oic.9.gmail; Sun, 27 Oct
 2019 15:03:42 -0700 (PDT)
X-Received: by 2002:aca:ef04:: with SMTP id n4mr4204046oih.91.1572213822147;
        Sun, 27 Oct 2019 15:03:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572213822; cv=none;
        d=google.com; s=arc-20160816;
        b=C78U25Craa3whMbfS3WfjM3KkXmYvlCSBXSbGcbisSSrwF/v7KNlJtIWvDUb/jZi8u
         8xr3Xnx/osrC53sf7NO/won25B/q/do2OXEKeFecW7IpclnqNCUF7m5XmCRkraBBf/+e
         ELmMy+CB8JM2nUb8JKfBpamkev70UKiGPb4j7YyTS9s2CLniT5xjIWQ+G2ttfr5534Ti
         +F2+lh8AF8irMysx6fSErCyMQ+LLGLKcKdlEwlJo1d4beHBokFycn7+xalxOjBexC0GW
         +9pbI+M/D3q4QrniXprVkLKCBJbCaN91XAfI9A9rWsJbb1O0G2O1L2R41y2h8U7b5oC3
         Hd7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id;
        bh=hsvu9IoQflNtJSBXHF6HWRnVXvhrIAEptUV7WlYIUyk=;
        b=RVkJIOt/kYBiKIs1uwAeMIoM1VAVVQ7V73Av29OtM2l2qN7v1pgOuyo3aoLy0Z93ZO
         rtFagCGQ+8aHaAaJsoWNTDWGAhZARBFURbelBbgt9JaphD/HNzeokhrYafLPyrtHKXj6
         /QXDYAcYj1veqkgRBsi6+iMJkUFnSEtzeFtXeyYtsLKk2Bm27AOG5aMa9Dp+wct517/s
         G4Fl3JL6GqrJCk2zZcpRF5NFm7DIXeWm2hg26mOp3t9A6Einw3/FYIuCrG9ztdixw8T0
         JAB5op4+cVjCluVR+Jef8J7WsAfGcOmgZvoBA7f3mxNu9Ejjm2UVsIWgwDuELZ1k5TSl
         D0wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0164.hostedemail.com. [216.40.44.164])
        by gmr-mx.google.com with ESMTPS id v3si389701oth.4.2019.10.27.15.03.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 15:03:41 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.164;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 2396345DA;
	Sun, 27 Oct 2019 22:03:41 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::,RULES_HIT:2:41:69:355:379:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1431:1437:1515:1516:1518:1535:1593:1594:1606:1730:1747:1777:1792:2194:2199:2393:2538:2559:2562:2828:3138:3139:3140:3141:3142:3355:3866:3867:3868:3872:3874:4321:5007:10004:10848:11026:11473:11658:11914:12043:12296:12297:12438:12555:12683:12760:12986:13439:14096:14097:14394:14659:21080:21433:21451:21627:21795:21972:30003:30029:30051:30054:30070,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: map19_775f4b485eb16
X-Filterd-Recvd-Size: 5943
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Sun, 27 Oct 2019 22:03:40 +0000 (UTC)
Message-ID: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
Subject: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Date: Sun, 27 Oct 2019 15:03:34 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.164 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

To avoid macro name collisions and improve portability use a
double underscore prefix and suffix on all __attribute__ #defines.

Before this patch, 33 of 56 #defines used a form like:

	'#define __<type> __attribute__((__<attribute_name>__))'

Now all __attribute__ #defines use that form.

Signed-off-by: Joe Perches <joe@perches.com>
---
 include/linux/compiler-clang.h |  2 +-
 include/linux/compiler-gcc.h   | 10 +++++-----
 include/linux/compiler_types.h | 34 +++++++++++++++++-----------------
 3 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a66..26d655f 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -19,7 +19,7 @@
 /* emulate gcc's __SANITIZE_ADDRESS__ flag */
 #define __SANITIZE_ADDRESS__
 #define __no_sanitize_address \
-		__attribute__((no_sanitize("address", "hwaddress")))
+		__attribute__((__no_sanitize__("address", "hwaddress")))
 #else
 #define __no_sanitize_address
 #endif
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index d7ee4c..7a2dee 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -76,7 +76,7 @@
 #define __compiletime_error(message) __attribute__((__error__(message)))
 
 #if defined(LATENT_ENTROPY_PLUGIN) && !defined(__CHECKER__)
-#define __latent_entropy __attribute__((latent_entropy))
+#define __latent_entropy __attribute__((__latent_entropy__))
 #endif
 
 /*
@@ -101,8 +101,8 @@
 	} while (0)
 
 #if defined(RANDSTRUCT_PLUGIN) && !defined(__CHECKER__)
-#define __randomize_layout __attribute__((randomize_layout))
-#define __no_randomize_layout __attribute__((no_randomize_layout))
+#define __randomize_layout __attribute__((__randomize_layout__))
+#define __no_randomize_layout __attribute__((__no_randomize_layout__))
 /* This anon struct can add padding, so only enable it under randstruct. */
 #define randomized_struct_fields_start	struct {
 #define randomized_struct_fields_end	} __randomize_layout;
@@ -140,7 +140,7 @@
 #endif
 
 #if __has_attribute(__no_sanitize_address__)
-#define __no_sanitize_address __attribute__((no_sanitize_address))
+#define __no_sanitize_address __attribute__((__no_sanitize_address__))
 #else
 #define __no_sanitize_address
 #endif
@@ -171,4 +171,4 @@
 #define __diag_GCC_8(s)
 #endif
 
-#define __no_fgcse __attribute__((optimize("-fno-gcse")))
+#define __no_fgcse __attribute__((__optimize__("-fno-gcse")))
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 72393a..b8c2145 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -5,27 +5,27 @@
 #ifndef __ASSEMBLY__
 
 #ifdef __CHECKER__
-# define __user		__attribute__((noderef, address_space(1)))
-# define __kernel	__attribute__((address_space(0)))
-# define __safe		__attribute__((safe))
-# define __force	__attribute__((force))
-# define __nocast	__attribute__((nocast))
-# define __iomem	__attribute__((noderef, address_space(2)))
-# define __must_hold(x)	__attribute__((context(x,1,1)))
-# define __acquires(x)	__attribute__((context(x,0,1)))
-# define __releases(x)	__attribute__((context(x,1,0)))
-# define __acquire(x)	__context__(x,1)
-# define __release(x)	__context__(x,-1)
+# define __user		__attribute__((__noderef__, __address_space__(1)))
+# define __kernel	__attribute__((__address_space__(0)))
+# define __safe		__attribute__((__safe__))
+# define __force	__attribute__((__force__))
+# define __nocast	__attribute__((__nocast__))
+# define __iomem	__attribute__((__noderef__, __address_space__(2)))
+# define __must_hold(x)	__attribute__((__context__(x, 1, 1)))
+# define __acquires(x)	__attribute__((__context__(x, 0, 1)))
+# define __releases(x)	__attribute__((__context__(x, 1, 0)))
+# define __acquire(x)	__context__(x, 1)
+# define __release(x)	__context__(x, -1)
 # define __cond_lock(x,c)	((c) ? ({ __acquire(x); 1; }) : 0)
-# define __percpu	__attribute__((noderef, address_space(3)))
-# define __rcu		__attribute__((noderef, address_space(4)))
-# define __private	__attribute__((noderef))
+# define __percpu	__attribute__((__noderef__, __address_space__(3)))
+# define __rcu		__attribute__((__noderef__, __address_space__(4)))
+# define __private	__attribute__((__noderef__))
 extern void __chk_user_ptr(const volatile void __user *);
 extern void __chk_io_ptr(const volatile void __iomem *);
 # define ACCESS_PRIVATE(p, member) (*((typeof((p)->member) __force *) &(p)->member))
 #else /* __CHECKER__ */
 # ifdef STRUCTLEAK_PLUGIN
-#  define __user __attribute__((user))
+#  define __user __attribute__((__user__))
 # else
 #  define __user
 # endif
@@ -111,9 +111,9 @@ struct ftrace_likely_data {
 #endif
 
 #if defined(CC_USING_HOTPATCH)
-#define notrace			__attribute__((hotpatch(0, 0)))
+#define notrace			__attribute__((__hotpatch__(0, 0)))
 #elif defined(CC_USING_PATCHABLE_FUNCTION_ENTRY)
-#define notrace			__attribute__((patchable_function_entry(0, 0)))
+#define notrace			__attribute__((__patchable_function_entry__(0, 0)))
 #else
 #define notrace			__attribute__((__no_instrument_function__))
 #endif


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel%40perches.com.
