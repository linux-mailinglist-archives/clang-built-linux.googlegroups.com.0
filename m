Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJEBQKAAMGQEDL3W24Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id C12E32F67B8
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 18:34:29 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id e4sf2686218oii.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:34:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610645668; cv=pass;
        d=google.com; s=arc-20160816;
        b=jT9943GS1oJ+IRFixoy2cCtLUpA96lK5FoCFf6s/Sl7ko/KnLjsWpU3qQGFcN5XDit
         yCBvvVtwGi8cmA4ZYfh3LEzaObdUIDHiVLD8+k3ix+DPsukicedRmZsjxiQqWhyjuz/u
         2cjC2oY1FmaUbYsvruj0CL2XXIz24+I1fa6i+HCQ8Sz5q9ZZV7gUHDWyUJtJ6ESdhD+w
         Muk0RgPjRQyUG/Hve4mNGOt2pKroP2Ptl1hhFSMO5sA3tAwcQ3inmp53asbcLG1lYbtt
         dAjS+OKndpCa4dZre1yLY9TFDtC9YmzAGmn++EdYNIlzwnSbInCAIVQeg8ZD3xtcaI4M
         Wp0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=EkM7+IzMFM4UkjZe3fpp4hFZP0azusS03O6Wpu5TaGw=;
        b=uXof4gns2Ug6xQKKY/YXHoKW0YU++QkfrqQYoW8AOYId7skAv1BgblL5UG/D6z5wHl
         CY4FY+8Ukm23Z625OY0pmLWzsdmY+4K6UwrPzR3OKEt5QftTF/AwSlg56YvWfej/sNHP
         z8mtdwetwzPSQzrQbj1XyNASpYubIRsNX/qG5ECXkpRWINRk6vH+ikWSy9F+w33AX76v
         Mjh6JQfo3sa3jLUcOy+LW/LtHh2P5qmI/EGUGyEyJ35k/aPeSexQlniwLlIg+BOJvqVo
         14URc2z7XirUrz+WIHX4G7S0MQBcLSwZcQGqD7KnH0UIzcsm3NfMjbo8bmKmHnoMil6T
         BcFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmjRDHiv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EkM7+IzMFM4UkjZe3fpp4hFZP0azusS03O6Wpu5TaGw=;
        b=azTKp2s0p1sHTOXZEcxFGL6MrAz32UvQr1rtoeFY8RIoVuv/AOjL+VZ/R28rAsPFO5
         sSrhNLBN0VivDgM8A3SJgvnaFgQ2SFJchztx2iXmtsmHltr/C5icevNaPA9ykgjwnfRA
         NT7iJNpWYUQEOuJfnlkXa1HkWgyMo9kdDeQ5fpCKR+ukCzSiUEWgbKAS5iO/HL30FCLw
         OwgiDjqtDz6gx2wgtYRVTZ5Mtmje107lgYltKbwuMYaqVuPKd4ZFif/5/4OqESg+W/lm
         A0gC7d+cpQX60NftaeM8zz1jLtcFdBC8qOIeNzA3fTTkh+y+R2OzBXmhlYiOdYZYebx9
         /rGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EkM7+IzMFM4UkjZe3fpp4hFZP0azusS03O6Wpu5TaGw=;
        b=L8u3DlMsGhenm5K+9hjJ84r0HTBfA0F2lMSPYjQfrcc0PvosnbOtaySbuQFz8uaDfh
         FXJMGn5d0IdhazZdWGWTMjcHqffgqz+u8juvJY361OODjzO+qOz9IY2ZtuSg8Vikon1J
         jEM34cJSXaWKzfzwy1h/ABrygz8+OYmyTKfxA5jTCwWDIVf7IO24gBD9nY6cAfugM1is
         SudsfiiCXzY0CKKSRJLzdrNdbGBWtZE8eQFM3nTNGM+BDoc9Jaln17YPDYggUKpSAiC/
         nAAY14rTS7p2c5VFE4P7ai8nCm/jpjrMyDFnns0kjDxTmvOo3cfKtVVUqHbD9OjsY/1K
         x+rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EkM7+IzMFM4UkjZe3fpp4hFZP0azusS03O6Wpu5TaGw=;
        b=icgIiiQBzf9XnMuLNMO5DBcYq9KiINgDLW/yy/odWgPvEuHxr9KGc7EmrTp2e1PnH4
         LlueItOlG0C2E9U4PERwx2mrwhHK/gsjFw4PoZRE+dMuaCOruMClAJEEkQGN0gAC8aVg
         WcQIiqTg9p//sP61Z6/kP9cc9ntrL2/gATtHdqs10iY9gZGN0XgdQjG3FGBAD5b6ZfYL
         oeb+eBqRhHBbEvIZuPj89P83ILnJQF5IzXC/WoJ1wWfP+wwg8wx1h2A1ZPWRrW5bgoL/
         +9DCQO9sZJZJCatJWqrVxQ/V7U7AoObRsMXtVEQiXveGKPtJ9MGhqOuHlnl379adT+JD
         4QNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Tb9oP8dEG9+si94AX/9JmgsiY/Q8Y9OyI7NBT3QhpMPTLufr4
	vwAs6Ziyd6gNX6FvDPOqpeI=
X-Google-Smtp-Source: ABdhPJyMZig07ognBIDzO9lUfBzmogf5E6qqUCbkb1fUvb3P6x0p+/iiVPSNkfgq+DiX75mB9sSBvg==
X-Received: by 2002:aca:af8f:: with SMTP id y137mr3250831oie.135.1610645668538;
        Thu, 14 Jan 2021 09:34:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:7ce:: with SMTP id f14ls1543838oij.5.gmail; Thu, 14
 Jan 2021 09:34:28 -0800 (PST)
X-Received: by 2002:aca:1917:: with SMTP id l23mr3199116oii.64.1610645668033;
        Thu, 14 Jan 2021 09:34:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610645668; cv=none;
        d=google.com; s=arc-20160816;
        b=08mlqJrYowdFDEbbVIXlbwA4STJwr/WXTQ6xR4thvgQIawrpujH2aBBMf5k6E6v9H6
         YnSF63kZcOhivh0vgvRMDfdM8WvemmymWlFcCNxioiabcVed8OBGn/DEr33PZILZ/jaP
         MaBOYdk7boK7bQB34fDaFM42QJ5hFy/xflYKvvF1LLaUtWxoM1plbfbUB1SyLq5fumYy
         4QKTpioMCZ0TSi7Iq8TMidKfEgEovJ1ya0SU709hvD4H79tVw8CYvnWtNVIuGaBCHIFL
         m+I9sQF6TcKyq0F7nwcMlAeCifNt6VbA7PkTYoYRJiv2Hz9IkYwSKnwEdmull6O6yYG+
         kL/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kCQuRKJV8MS0m+eS6ZaaNMBFzL9uXXb/X61hiZ7gM1w=;
        b=yo0BqnaNyJQLvcdaWOlClJHZykiSJ7ibnQBbf9Pc6qU3TWoQn6slta9HxB4oLIFHUB
         PT69Dv9/VtRNAj+xfoIB68hppTspPpdc3FbZzpYtztYZZQG5GmrDM+ShNjTYDM26mPMn
         YOf5s430AACjkUNZUJsCXD/D+lAPns5esnep6iKL9tSG+4QYW2ZtROsR9roYdLrlvXta
         cIHXsAfonUny2rszZ9YyKGfcQcHCIUM5N1iFx0E9pzVCmwN1cM6roBedKIMnSCu1i1AF
         0k9oxJDFm1Wq1xbLOMRtojuTdPkBGs51j7GN6jMjPHgBZsw1FdEnYJanV5Li8dpuXzNI
         qlbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmjRDHiv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com. [2607:f8b0:4864:20::f2f])
        by gmr-mx.google.com with ESMTPS id x20si625057oot.1.2021.01.14.09.34.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 09:34:28 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) client-ip=2607:f8b0:4864:20::f2f;
Received: by mail-qv1-xf2f.google.com with SMTP id s6so2660248qvn.6
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 09:34:28 -0800 (PST)
X-Received: by 2002:ad4:4a72:: with SMTP id cn18mr8231457qvb.50.1610645667500;
        Thu, 14 Jan 2021 09:34:27 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id y10sm3384190qkb.115.2021.01.14.09.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 09:34:26 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] MIPS: Compare __SYNC_loongson3_war against 0
Date: Thu, 14 Jan 2021 10:34:16 -0700
Message-Id: <20210114173416.738455-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nmjRDHiv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with clang when CONFIG_CPU_LOONGSON3_WORKAROUNDS is
enabled:

 In file included from lib/errseq.c:4:
 In file included from ./include/linux/atomic.h:7:
 ./arch/mips/include/asm/atomic.h:52:1: warning: converting the result of
 '<<' to a boolean always evaluates to true
 [-Wtautological-constant-compare]
 ATOMIC_OPS(atomic64, s64)
 ^
 ./arch/mips/include/asm/atomic.h:40:9: note: expanded from macro
 'ATOMIC_OPS'
         return cmpxchg(&v->counter, o, n);
                ^
 ./arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro
 'cmpxchg'
         if (!__SYNC_loongson3_war)
              ^
 ./arch/mips/include/asm/sync.h:147:34: note: expanded from macro
 '__SYNC_loongson3_war'
 # define __SYNC_loongson3_war   (1 << 31)
                                    ^

While it is not wrong that the result of this shift is always true in a
boolean context, it is not a problem here. Regardless, the warning is
really noisy so rather than making the shift a boolean implicitly, use
it in an equality comparison so the shift is used as an integer value.

Fixes: 4d1dbfe6cbec ("MIPS: atomic: Emit Loongson3 sync workarounds within asm")
Fixes: a91f2a1dba44 ("MIPS: cmpxchg: Omit redundant barriers for Loongson3")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/include/asm/atomic.h  | 2 +-
 arch/mips/include/asm/cmpxchg.h | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/include/asm/atomic.h b/arch/mips/include/asm/atomic.h
index f904084fcb1f..27ad76791539 100644
--- a/arch/mips/include/asm/atomic.h
+++ b/arch/mips/include/asm/atomic.h
@@ -248,7 +248,7 @@ static __inline__ int pfx##_sub_if_positive(type i, pfx##_t * v)	\
 	 * bltz that can branch	to code outside of the LL/SC loop. As	\
 	 * such, we don't need to emit another barrier here.		\
 	 */								\
-	if (!__SYNC_loongson3_war)					\
+	if (__SYNC_loongson3_war == 0)					\
 		smp_mb__after_atomic();					\
 									\
 	return result;							\
diff --git a/arch/mips/include/asm/cmpxchg.h b/arch/mips/include/asm/cmpxchg.h
index 5b0b3a6777ea..ed8f3f3c4304 100644
--- a/arch/mips/include/asm/cmpxchg.h
+++ b/arch/mips/include/asm/cmpxchg.h
@@ -99,7 +99,7 @@ unsigned long __xchg(volatile void *ptr, unsigned long x, int size)
 	 * contains a completion barrier prior to the LL, so we don't	\
 	 * need to emit an extra one here.				\
 	 */								\
-	if (!__SYNC_loongson3_war)					\
+	if (__SYNC_loongson3_war == 0)					\
 		smp_mb__before_llsc();					\
 									\
 	__res = (__typeof__(*(ptr)))					\
@@ -191,7 +191,7 @@ unsigned long __cmpxchg(volatile void *ptr, unsigned long old,
 	 * contains a completion barrier prior to the LL, so we don't	\
 	 * need to emit an extra one here.				\
 	 */								\
-	if (!__SYNC_loongson3_war)					\
+	if (__SYNC_loongson3_war == 0)					\
 		smp_mb__before_llsc();					\
 									\
 	__res = cmpxchg_local((ptr), (old), (new));			\
@@ -201,7 +201,7 @@ unsigned long __cmpxchg(volatile void *ptr, unsigned long old,
 	 * contains a completion barrier after the SC, so we don't	\
 	 * need to emit an extra one here.				\
 	 */								\
-	if (!__SYNC_loongson3_war)					\
+	if (__SYNC_loongson3_war == 0)					\
 		smp_llsc_mb();						\
 									\
 	__res;								\

base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114173416.738455-1-natechancellor%40gmail.com.
