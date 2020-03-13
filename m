Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBY6UV3ZQKGQESTPNYRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id CD83D184B0E
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:35 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id y35sf8409236ede.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114275; cv=pass;
        d=google.com; s=arc-20160816;
        b=IpJEnEJPor71w+a1N9aaoLM7XoPG5BVUg1pdYumGhzWGHPUe9yTVQuThWmslkT4+p0
         3acYG6Mznhe9BViF2Iavuam0UKfLQcmUrLmLrUvnLKlE1ScN0QJKqNh2HhbnQCgF9KXE
         Bc9ns2GP5du0V5eYzfdUv5XWq3fRhAVBxX2QvheZ4KYzk2dfBwEaSUgY02oyFrlhwb2C
         e4fkz8niari3PPwH2naidYxjrYa84Gu1fERNpeC55mL0JbNmjbnoEnBIOe9dyixg72Z0
         JzcrxQT2U4zOJ3tJ6cqfFXZbxYVxvzgfuErw7qhRB08eBI+/6Js9DopnHIjf1FtFuSJP
         A6mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QaJehOnAlnW31ceIKg0hqb3ez73/BYJfc32FwVuBrzI=;
        b=JyoLBn86/w8lg3y2mnoKtW0x3ZJe7pNmhGR/DvZcGKFcc4Xm9JF6sVpz0b/1DeFxmu
         l9frsCyHn4wO9ypdqwgnPSE2/F27nbiPoiRPtnwMUexCXZ/fuQjYptYhHCRhdol2IH23
         88q8cFV2zBcH5bl144UqBJH7Zf3ptyB/LpYZFV3YePtCk/YiBMnfrYOLJDqUcnF58/sa
         JDeNyDoiw6K0LKu0ELokAbVEUqOg1vxQXeECMgtwJqe83SGTgQlWeejTpnpEXFemtL2o
         UXVvf9B4XL5m1XxJ2EXNGmWIlNR7DZAs8fMcXchqQWXhffMyqgEOPXFI6eouElPafHLl
         vP/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QaJehOnAlnW31ceIKg0hqb3ez73/BYJfc32FwVuBrzI=;
        b=MH8xkG/rMpUYAB1SWYy4m/dTBHpUNGHh4BJYpYTn/HndQBa71CAUF3D9d3lq8q4HeU
         i+tgxDmW0TQu3qnlTOHyjflvDB6kXmEJU+gfGYgE8M1on/9pDtEIHrdY39yBqZaFWwd2
         /vA/alqDDJpF2SR5wT0Yu8wP9nrAZQ0o05s62lAISrhN8oPvwErtyGkYOfrL2WfxFkJU
         vLoU9vJEP4JDmMuoYJ3HUTLzveke8M776M4WUaD52YUmP5MzN9xEJ6ePBYNtDv9OVXgV
         89lrnLZgnDu5HWO8k+yH7wOrn8HDL/MUtlDTfG8kOtYwXOs/kHF9ZWRANyrsS46H/vlt
         HHOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QaJehOnAlnW31ceIKg0hqb3ez73/BYJfc32FwVuBrzI=;
        b=cUnFdwMk1c5kKcwLkowLnItWKMJVAXKTXkRvPWaMyV4fNVgZqLakEZZ74K6E3bxJQj
         eDPtpAFQkt+O4nxuPmGAq4vcTZxWWnFUQexhiyTCmoWnhhOfFvmOvCKA6JN8LsQqOUbU
         SwudWeqx0Rm6iCZpKHTVybxdLvqvOEFzU9SPIGXfiCdD9sz85+X1i4obm0uiHhmvPNDi
         lsb8v5+OfyD+caWZOR/eL4x9dPSN3TvNhBvk02dJMR7MqDH5Lu7Tr3TJVYY4CrjeiDKv
         UnI8ihfyyJ8r2g6Dd1J/6oUHCbi4TlMkMuLR28wzK3ly4Dz8aehFjnSxs0UuoLhrWhQe
         BYCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1bXhy69CHDzYViKYtSURSc2EPxV/ylMdqk00Ie2u16ESkXjNB5
	TlKLvW8/RYb0Of3JLYOckN8=
X-Google-Smtp-Source: ADFU+vvIoF6ff7bKhIiTJ1GXayE15OI59aVmInLBVLl+ScnfziE5RS/HpNJt9bOt/r00ne1gjPNk7Q==
X-Received: by 2002:aa7:c30c:: with SMTP id l12mr14501685edq.65.1584114275598;
        Fri, 13 Mar 2020 08:44:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:358b:: with SMTP id o11ls5799330ejb.3.gmail; Fri, 13
 Mar 2020 08:44:35 -0700 (PDT)
X-Received: by 2002:a17:907:447d:: with SMTP id oo21mr12508898ejb.64.1584114275039;
        Fri, 13 Mar 2020 08:44:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114275; cv=none;
        d=google.com; s=arc-20160816;
        b=CEB3QYsj1WffauJe2XrT4Ui/A4npZxgMjE7pl1C/mQ+nx/cX4GHj3FQEmPSOpsojIG
         AsbNvLzjr/vPeAyYWZfRWPmCPJfyNP9yUc0cQeFSCYxHxdK3KcA/Tiq/AeSPO1CfZi5z
         PsCmr9t2CxxKDjRHbsz8Lj1IsbimtGY8Cmb98NMNf2gQyeTU64HSXeEC4ni8RgcQ5PNG
         dmtnX2NLFRTysu05Th92pQerKXNECqlOADT7JuR7OCaEMW/3RhCdxMq4Frq5oSCjpm+y
         O/OT/7Yda56IcEUia9toZIX5v0AIXQEG/+UWEasgyxZcuf0U/bjgqI5F+6jJtvh0kYyf
         QFaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GGEHKhLb+PBbYXFkR437kpZSwfjgehAHnEZn+yWa+q4=;
        b=RBr/ELjICaCIgHyZkhW5me40YoKE9DV1EhXOvAtYt+eZeo1/ZGBtUoJ9hAMOKwyago
         zRRG/3ujSBtiljNq1EKN5JO3qBTmGCngbaOYu4HRm4SDEesjHNz9Z+noWptjgDAuSMy3
         HbaaDanKbvl2N8C9b04gkPqqZqeLilHwK7zhovtHeAwiDu6OYapK1iMuLDexA45+Clx8
         MMQIDk1CBrJeFLZAtKEWn8FUoFk6l/W/QF3czFWDRCURYvqvmm4l2E7NJoEgvp2ffXZd
         S6uKONUCzTQrn86H6X8qKyhQqBNPVOWQIEwiY62oOMGijHsn/2xHa9mCwPTwZw13dnX6
         AHCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x7si264582ejw.0.2020.03.13.08.44.34
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6982831B;
	Fri, 13 Mar 2020 08:44:34 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71A853F67D;
	Fri, 13 Mar 2020 08:44:31 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
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
Subject: [PATCH v3 09/26] linux/math64.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:28 +0000
Message-Id: <20200313154345.56760-10-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Split math64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/math64.h | 20 +-------------------
 include/vdso/math64.h  | 24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+), 19 deletions(-)
 create mode 100644 include/vdso/math64.h

diff --git a/include/linux/math64.h b/include/linux/math64.h
index 65bef21cdddb..11a267413e8e 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -3,6 +3,7 @@
 #define _LINUX_MATH64_H
 
 #include <linux/types.h>
+#include <vdso/math64.h>
 #include <asm/div64.h>
 
 #if BITS_PER_LONG == 64
@@ -142,25 +143,6 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
 
 u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);
 
-static __always_inline u32
-__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
-{
-	u32 ret = 0;
-
-	while (dividend >= divisor) {
-		/* The following asm() prevents the compiler from
-		   optimising this loop into a modulo operation.  */
-		asm("" : "+rm"(dividend));
-
-		dividend -= divisor;
-		ret++;
-	}
-
-	*remainder = dividend;
-
-	return ret;
-}
-
 #ifndef mul_u32_u32
 /*
  * Many a GCC version messes this up and generates a 64x64 mult :-(
diff --git a/include/vdso/math64.h b/include/vdso/math64.h
new file mode 100644
index 000000000000..7da703ee5561
--- /dev/null
+++ b/include/vdso/math64.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_MATH64_H
+#define __VDSO_MATH64_H
+
+static __always_inline u32
+__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
+{
+	u32 ret = 0;
+
+	while (dividend >= divisor) {
+		/* The following asm() prevents the compiler from
+		   optimising this loop into a modulo operation.  */
+		asm("" : "+rm"(dividend));
+
+		dividend -= divisor;
+		ret++;
+	}
+
+	*remainder = dividend;
+
+	return ret;
+}
+
+#endif /* __VDSO_MATH64_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-10-vincenzo.frascino%40arm.com.
