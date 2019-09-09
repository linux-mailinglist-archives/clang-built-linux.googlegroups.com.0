Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBZHI3LVQKGQEBDPRCAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A5BADFE6
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 22:21:56 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id l6sf7902186wrn.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 13:21:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568060516; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIfmWbDS3Dnp2w86G3dxlioxN98AkPW+o4JRJ3J9KWqP9bl2oQU1gHjf5yXfMkz+9w
         INczEFO+E2a0O06f3ftLNSsXIJJ4pJpPaTXrEzv5qglBorp9EDYYIBDuB1IFKnGYfsnT
         mqQ47zUvg2uSNSSpo4CK3+C/oyYlABjW4vfMdlynpUG/qXYgCQUrtVLDgD4FWFegJsH9
         xN1DxYpTA7s1BI8u6RR8s2ZRhvFusYgJkLHl4DNFnH5a93foyQ/vE3mNEVvnrz8/fwE4
         03o4TSnRxEu/fhLPP0+c38BsPXzyfhi2HnYVQkqxGuptU5kV3uTAX1C9fiOypaX/0MSc
         zv1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OkF5dsQ16a5BadncAmKBCYL0HK9RERalp7ctQK5SiD0=;
        b=DvIDyYlaamQRgvNmH6KzN1hKnhFIihfCrUwUcqVTxHW4YRwXBMVjJVAzKQ/WCx/2ky
         9GXHXMyql4kzHJpOI77kOkO4xOxdKl8ThAg9g7JLM05kLVp/GG53THs59RiUHNVotYot
         NuWZNpweD3bRWAoWz/ANtsjUzJAzQ1l4yjmrjjTShqKK3xX7JuVyBEFzvQlMfUsZBv+Q
         40GXbJCN+vLkHDDcc/5UM4AjVfKQitYmJ6PWSy+uxbxVN//HyW3AeuA898QE2T9qXweb
         tGtVSenVocQWQOWdJv0pXczdNspbxKQwu61j/bjJAzfs3EZ8G24O6Dlj/Zz/3+fQ+vGw
         P/yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OkF5dsQ16a5BadncAmKBCYL0HK9RERalp7ctQK5SiD0=;
        b=fnDuwQWxyJU8ewX4YYHCJ0FqVSW8HVMEHRcErXAcGeox8pq3eLrtq3pOmMGrSK+npG
         lmF7qcv8tq1CGWhXXIf9LtPsQpGaKx+hKxVP/Cc5Gj8/oT1lL71O/6LV5QRSYdzrn0U8
         DGFS/MS6rvKW6Frs7Ms7h+6zgqbgItLg4tJzTeuKbBQWQG6tHVf6fXQcT+etdiZO0FGf
         MzKEV6U2AeaWIIXghcX/m1YZGAoA0hq0WdnxqR+HVv05pNTqyDY6R6jUMRJvOimZWJG+
         azzEBl2OIQLN6TJF12ZAUh8iH9z6D0aa++kEAa62+Ol67pfGrNRDmvSIKtbJ7xupEQ/5
         1zWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OkF5dsQ16a5BadncAmKBCYL0HK9RERalp7ctQK5SiD0=;
        b=njkOLXGp0LIUiMNIcf/b/+Ig0mM90sGk2kqyC1dlksJpCNhdFR6WcDdNbAVHFqTo28
         vRAHjf5DaweeY8wmHbLOKr78dqKL14iwYHNtJTxEK2feRSafdhDu1rbREem3mDgVScYy
         kS3SfFWXGBkPzrPjjqvzYMKzFqWYMn0xsQTCHTjwgo4gkSakzvIK0t4X3r9R3IfyKrbM
         7xyGtSu8BFxVOk6P1Ka8oUQLP3ooQ+G8mawhxjjgaHshRGEHUcrhhkVb1a8tOaDRk+l3
         69/eyjUI+CaCajqrB6urciQS5AxWe3M+N59KDtdjmU/NF0kgabKSg4x27f5qxWXkZXjh
         PYOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUlRMnlcv3nsJDzBTTkPFc19hqqgHdC+TZNxXG6dWqb5EzQyrn8
	iqjYzvzOdgr5yq46nu7xyEo=
X-Google-Smtp-Source: APXvYqxq83d63EVanGCP6NsYIRDJvPZxc8ylN5li1WDYNOwtyqb02ECOqkoCl7WHBoWhuDOmYyetTQ==
X-Received: by 2002:a5d:4b8b:: with SMTP id b11mr5759711wrt.6.1568060516487;
        Mon, 09 Sep 2019 13:21:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3c4:: with SMTP id g4ls4297931wrp.4.gmail; Mon, 09 Sep
 2019 13:21:56 -0700 (PDT)
X-Received: by 2002:adf:f846:: with SMTP id d6mr21294044wrq.67.1568060516097;
        Mon, 09 Sep 2019 13:21:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568060516; cv=none;
        d=google.com; s=arc-20160816;
        b=MKosfXTcyWNW6Y91KCv5LG6f+N4m67JwgHDmvSW4ldnglz1zV6s05smz+MA11YSmzv
         O9MEuNFHdldrow7X7TLheXOMAm7dx4NeKKOiKnigieJHBoTAO8Xz0LBJcGe77P0qvlng
         1pn8OFZBgUuhqi1h7NYCorf1E8RIg7hBqZ3gJ63L6Mk/sJ8KggnGXUhxGYuDKCsR8rBa
         ZRna7ov76rjOSv2ZwrLpT+RqOYQf5mUo0ALI7WaMkn7kZfyCNFJdP11iE5ULBtvPIftd
         9aoTw9iRm+g6j5CHgJv5PPmraIFW92pv46iYEO81tB59aE7IEZPsq+8iMes4rUGd5Oe3
         ecNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=PrYpFTZqKwq9LuEhuvqFSJRfjP9K1zUCcYGWKsSq1SI=;
        b=wPJQDpNSm8cPtFCq8AzcCZQ/vrUEnocHNS7ok/5G6y5jXkMygrQcjPQ0yH/j2U5yyF
         PzX0hsFLjPaSmUAadPHtOEGiqUkY6pXrxHtvjWcrh/uMqm6EHLyw1RzCs2ftX/qgMcni
         ZpcCEcZNlkGNkyTjSmjUCNkj3xB7aVTyMnKEF+Pk8pkVDKGUuO5FQoPQ+xzHHD3gMTNe
         9c1mLcYimSOyvk0xC3yuX2FnsGcwp1iGU5VlZpXozJCZ2CZfWTKDicjkUyB4iWPWx9pf
         YAGdsUVHiOGPuzmMGa0+H3X9sPkJSZgH3UEbGQLwDcNopsufNRBUsNGanMUcgPmUfaQU
         qyRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id p3si863118wrn.4.2019.09.09.13.21.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Sep 2019 13:21:56 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MtwIW-1iQ3WI0jXQ-00uGVx; Mon, 09 Sep 2019 22:21:54 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Murray <andrew.murray@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] arm64: fix unreachable code issue with cmpxchg
Date: Mon,  9 Sep 2019 22:21:35 +0200
Message-Id: <20190909202153.144970-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:6HbGcOwcgeWZk7saAnF44EQwGRc5qar4XnbwhsGQ9AeeGtgVJQ0
 jJnqy2N1qSE1vkSfHW+ITZ7JxZVOzcynaRgSnRdUR27uZBdiqKyQncb1oAb8ZmA2gUv7jjt
 9E5l4E7yQRz5TcvxGRo3Byc/2TanVmuFGegAxsPoUXDoqNQZvQci40d1brApPysfW7fOesk
 VdklBj8+v4Gsa+toV+uVA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C1d7SlUsv+A=:Lj2/wQb1QrZDoyfBBvZrvm
 370fWlMX2geahYOibVfa+G1FGva5/fqlJYl7pkjy5dnYfjEbNUm/+ebrQMN41Q3qJwKd1dR6z
 T5nAheJ+Bemia9f4GTp5E9bIF9eAa1l/DZ0/hiSWcmpl/qlS8usEHW+fll9VTLZiqHz+K5rsH
 CVzTI1MUnIsseeoRFpmrkVxOY4Dg/I0T4gB2D7T55wdtiAZK5dZiiCFTT617FfryJyGsccUeJ
 galX2PFrtBenOyO9SHS0SFas5EM01nQKILKNxUuN1poDQ1DMjPrFTUZMu8u53UiYfJCDlpbqV
 Lt1K1uItp4HOfBi1N2GQeu0BwevjsxeMdl7/PJvSTy/ScRvhqeZlxl+g+ngoLtv4joHKsprp6
 L4ncVos7HATxanCI4uLoC/0AM0c/TL20KycRzkr+RV5/HJAVk7DIKmEBhsSnSQI07pLbvTm4i
 uxGCxUvLIsC/yU5IoULbklys2QD31uxuYBoehErQlLpIA/bKB49f42U4sTGrdcPUwf51X2VxS
 6Q4aiW2htlXlrNx3mmyQklCtGo1VX7ri28iXwcVmnIha0JUy/8FRU1mUTbLd2TQgmv1nPV5ad
 fqE8m3GuJeVauXjoIGNJ/+L4kMPqgaYvq/TImckjqaEaWkijR2TOPMPMC9rTBjZs3LBtis8TV
 obr9Oy1Ade2++k7MJKQUK3B90LC2/EZaiidkjrsicmaYQBmiCzsLKzJuDqcDONc3xy7+fMe4O
 5oSIifTYUg0VTTDWzObdc/TaeMd91zbiSNRFyfXCnCBXz/vQozBvvaPpcmC82YeojyaSB0AUF
 lGjKB9e0veJsRu1LPHIYcnlGukAoNUw4q5Eo7jmuJQ1f9oU2g0=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
when CONFIG_OPTIMIZE_INLINING is set.
Clang then fails a compile-time assertion, because it cannot tell at
compile time what the size of the argument is:

mm/memcontrol.o: In function `__cmpxchg_mb':
memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'

Mark all of the cmpxchg() style functions as __always_inline to
ensure that the compiler can see the result.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index a1398f2f9994..fd64dc8a235f 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -19,7 +19,7 @@
  * acquire+release for the latter.
  */
 #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)	\
-static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)		\
+static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
 {										\
 	u##sz ret;								\
 	unsigned long tmp;							\
@@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
 #undef __XCHG_CASE
 
 #define __XCHG_GEN(sfx)							\
-static inline unsigned long __xchg##sfx(unsigned long x,		\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
 					volatile void *ptr,		\
 					int size)			\
 {									\
@@ -103,8 +103,9 @@ __XCHG_GEN(_mb)
 #define arch_xchg_release(...)	__xchg_wrapper(_rel, __VA_ARGS__)
 #define arch_xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
 
-#define __CMPXCHG_CASE(name, sz)			\
-static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,	\
+#define __CMPXCHG_CASE(name, sz)					\
+static __always_inline u##sz 						\
+__cmpxchg_case_##name##sz(volatile void *ptr,				\
 					      u##sz old,		\
 					      u##sz new)		\
 {									\
@@ -148,7 +149,7 @@ __CMPXCHG_DBL(_mb)
 #undef __CMPXCHG_DBL
 
 #define __CMPXCHG_GEN(sfx)						\
-static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
+static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
 					   unsigned long old,		\
 					   unsigned long new,		\
 					   int size)			\
@@ -230,7 +231,7 @@ __CMPXCHG_GEN(_mb)
 })
 
 #define __CMPWAIT_CASE(w, sfx, sz)					\
-static inline void __cmpwait_case_##sz(volatile void *ptr,		\
+static __always_inline void __cmpwait_case_##sz(volatile void *ptr,	\
 				       unsigned long val)		\
 {									\
 	unsigned long tmp;						\
@@ -255,7 +256,7 @@ __CMPWAIT_CASE( ,  , 64);
 #undef __CMPWAIT_CASE
 
 #define __CMPWAIT_GEN(sfx)						\
-static inline void __cmpwait##sfx(volatile void *ptr,			\
+static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
 				  unsigned long val,			\
 				  int size)				\
 {									\
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190909202153.144970-1-arnd%40arndb.de.
