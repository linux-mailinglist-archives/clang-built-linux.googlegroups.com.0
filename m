Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB3VS2PZQKGQES2RGZAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BCA18D1C8
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:42 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id o9sf2753781wrw.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716142; cv=pass;
        d=google.com; s=arc-20160816;
        b=QAasnQ1l8FwwJtKwgphSGizbUlWR+9ifqyD3fu7hwuoYvX+x+w0DbCUJjxsAqmFFO4
         6VkozrT04Svt0UB+lcsnefGejQf7z1AJVE2LB64gl6+NIPrk4Jj6VBSFRI49Tfeimnw+
         q8IFtgP5ZzZg583M0ixaM0312OOPLmRVGoXRuZaXwzIMoFBRsrTf4sn1MWBKDJr20xLK
         NAEo4BBoWlSDVjEqZ1NJQqykx6+pqYLuETOJhPR/UqFh0K+tZzF46H3YmaGFMpfJhTD9
         OcyGxPB1wih7cXv0i6zJoP2ZRjfTUJfhLHaA7uIq86H+m20M2Fst8oZBmETko5HR8mpl
         lDKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vruCBc6vWj3YhLBKXOXrLhZxCr1PVuV+uWSZb7Umy0E=;
        b=00ZOBTg6INa5NO+OJiGDqFMCiFpYIdGnizBLs21Vuxjmin4ses37lVttbbcNrvCCXy
         IbI5EiFYN7IvQWXpQ2SowYK09h6jjpVc9n+ZG3DSpGORz109bnV2rh5uxSjQmQ04ictZ
         +h0MPyw8Uhja7Bwto6FVDdpxVIXvj4kL5GEZZNKRupci1CAziWWeOLU8eAvPkdpAB9I5
         39gNl1RLHh1dbAhuhSIhHSCg7BHAl4LN8DqL1l9bsJYPWCtI4TqgRoD7C49KbYXto1jd
         0/M9KRWlUjT40bXdKvAiYWgWsq6ToIbn9qtayFHs1TseXusghDlPzylfoX0FOBTM81Wf
         t4GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vruCBc6vWj3YhLBKXOXrLhZxCr1PVuV+uWSZb7Umy0E=;
        b=SM7WTs94DlXoTJVoGW+Z/G0Sc8nzd22I11ZEiatmA6Och86jB01N1eIwuYGOUIYDyv
         smBgEHDYm032mHzZMXYyT0+PiL5X9X3QdXccXdTLACWumCcEdNHhj/3Z5fr3UFtRm0zd
         FoJMW5YjRFuflslMmTLZ7MotXPoChuoX7GbiX/UIUHzDxHLYBDDkQiYH45nSqYye+1t4
         pJ+NxwWw+QLFXU8CYHww6TJL+5lhI4ryuhlvqQJ/5Pa/jbvU8DiAW34OPXotK8r8Vt3f
         JV3GfouR17BZIVquts6KfL358Nf6zobHKfoSh3Yd58dhpOPACHRs+AtMX9aRO0FGlaD2
         1nSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vruCBc6vWj3YhLBKXOXrLhZxCr1PVuV+uWSZb7Umy0E=;
        b=Q8ASwBGEJ9SpS9CcKwoVFkgM4qMGNwQiRh6+bvX+nicHC9R3q76Z1aJeM/QULjHlW5
         b0t4Y72FJnWedI+BtWeFzxw+kR06ZAAmIIo8Mw9Ea2VBg4s7nzMVgGdEZNSIImF3M4lX
         1b6dWwVz67Sf6nvZ8TNTZBt3iq7Lqk4TCZPhcRgk3bpeb7uc6aleyNH0QCx7gwQl3vgH
         zH/9d3kY/gjjZ2tnIpFEEVZLcUn/ZR1E5tJjxhIt0OjCz5Ht9qDsawaFn/e7UB+GEQVl
         l9HNi6eQ0baImRRCfK1WTUT6F9Bwqe+Na4o7nw8Bosap5kv5SfF47Vo9Unm54CNO2242
         xKWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ31C4Vo7bKvuzx1cr5G1Z4hmPAMxTT91lJkdFYbRXn5ZmaV7BVA
	E/fTME/bYfGf/L3C8/JDOmU=
X-Google-Smtp-Source: ADFU+vv8R1V8R4sLXFsaOaw3/2vPwtA/cWZaKb8R23s4KgAYE4Ca2w16ovk0r4gEs/QkERSw486+xw==
X-Received: by 2002:adf:ea8e:: with SMTP id s14mr11729294wrm.206.1584716142554;
        Fri, 20 Mar 2020 07:55:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls2628067wrp.11.gmail; Fri, 20
 Mar 2020 07:55:42 -0700 (PDT)
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr11909258wrb.90.1584716142192;
        Fri, 20 Mar 2020 07:55:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716142; cv=none;
        d=google.com; s=arc-20160816;
        b=drwo/QiBm5XhfjhCHWtD/AM+zkplTK7LBt+Tpw4N91a6Ksz8y4xjKB2Am2fIogv6lQ
         ZRz61O3tS3vIAACR6ZZq8JvGvcqZ+sB9h6TpY8r7YG9gpKTvO5Ch9HLLk+CvMF1E1rhZ
         UqML5u3224sQgylkMCWy3eE/suehO7rxhHxY/DPBicyoQtQwjGmZbeetUJ5SrZ6PCvpC
         B5j6cYGXdl3XqOqylIiVNHRSZZpF3lUAmdq8yVS3gagE57ICtCm35i0ekm7hgPeyi1JE
         7XXpbq+aeIm9YMPFbzHGUF4hjA58hItDrWznd8R6fz45wFd/Tw9LgkDM7uX1LVdLa8s6
         RndA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=WqkAlJsjESSjOpJeJdsZmLgpo6WLmDuebCHS0Xisq1s=;
        b=Lz0+w2ywmPT22hW3GX9iSYtxdxXM/8hRzNsxxn4hbwS8QIPWk+D3Kmo2ElwstoBjPI
         Gk+mypXa3ll+R7OKOJkufpLY4cr0wj8IaiinSEA7NofH4VCBIAmH52S26BMrdGztV4KW
         G7jbt5C2x3ujBG9JCiVR4F+RSucy/xc5QKqnraKNs3Qy6wIKI2VkmBDMke89cdcJkxBY
         nlWeOrmP2DMOuAPQb+fBtLpfTCZ7qcKmU+Bh3dC//6kVD/urfG8RTfwD9hU8GqHWKq70
         qxJ4bx9SyUg+1DxN+VYEC3ffdNpkTmhW0UP0hExyXl3W1GiLf0OcneykpJhZS6do1Ivc
         xIcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e12si232175wru.1.2020.03.20.07.55.41
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63F2DFEC;
	Fri, 20 Mar 2020 07:55:41 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F3C83F792;
	Fri, 20 Mar 2020 07:55:38 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v5 18/26] arm64: vdso32: Code clean up
Date: Fri, 20 Mar 2020 14:53:43 +0000
Message-Id: <20200320145351.32292-19-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The compat vdso library had some checks that are not anymore relevant.

Remove the unused code from the compat vDSO library.

Note: This patch is preparatory for a future one that will introduce
asm/vdso/processor.h on arm64.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Link: https://lore.kernel.org/lkml/20200317122220.30393-19-vincenzo.frascino@arm.com
---
 arch/arm64/include/asm/vdso/compat_gettimeofday.h |  8 --------
 arch/arm64/kernel/vdso32/vgettimeofday.c          | 12 ------------
 2 files changed, 20 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index 81b0c394f1d8..401df2bcd741 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -76,10 +76,6 @@ int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
 	register long ret asm ("r0");
 	register long nr asm("r7") = __NR_compat_clock_getres_time64;
 
-	/* The checks below are required for ABI consistency with arm */
-	if ((_clkid >= MAX_CLOCKS) && (_ts == NULL))
-		return -EINVAL;
-
 	asm volatile(
 	"       swi #0\n"
 	: "=r" (ret)
@@ -97,10 +93,6 @@ int clock_getres32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
 	register long ret asm ("r0");
 	register long nr asm("r7") = __NR_compat_clock_getres;
 
-	/* The checks below are required for ABI consistency with arm */
-	if ((_clkid >= MAX_CLOCKS) && (_ts == NULL))
-		return -EINVAL;
-
 	asm volatile(
 	"       swi #0\n"
 	: "=r" (ret)
diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 54fc1c2ce93f..ddbad47efaa4 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -11,20 +11,12 @@
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
-	/* The checks below are required for ABI consistency with arm */
-	if ((u32)ts >= TASK_SIZE_32)
-		return -EFAULT;
-
 	return __cvdso_clock_gettime32(clock, ts);
 }
 
 int __vdso_clock_gettime64(clockid_t clock,
 			   struct __kernel_timespec *ts)
 {
-	/* The checks below are required for ABI consistency with arm */
-	if ((u32)ts >= TASK_SIZE_32)
-		return -EFAULT;
-
 	return __cvdso_clock_gettime(clock, ts);
 }
 
@@ -37,10 +29,6 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
-	/* The checks below are required for ABI consistency with arm */
-	if ((u32)res >= TASK_SIZE_32)
-		return -EFAULT;
-
 	return __cvdso_clock_getres_time32(clock_id, res);
 }
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-19-vincenzo.frascino%40arm.com.
