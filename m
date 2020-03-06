Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBLVCRHZQKGQEKBUKUFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 5708517BEAF
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:34 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id a32sf1483996edf.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501614; cv=pass;
        d=google.com; s=arc-20160816;
        b=qB0AQP3zWep34Qcz2qhWieJdeFc5Hf4acf3CkvTkSZ8ImrNYLsPUJQsamTDoeJwT24
         Dl4KNwOuaq333y55F5gBCnTylhNqDaRpF0WNpeoi7kjUdPYPPCqdF+TAFW/w4rhCdisH
         p7KIQhBhDhq5L/5vlDQuCVX/1rXFn9OnqqahFLqayLF2b/kkfpSLCJxiW8Qs4HTWGcCs
         MzZ5Je4WFMQQ3QlEUyR1tagVpBsw7dT8vvtU4zXj3eiDquMq+pp3d80MHG8Kdc/NPCtP
         PvYKm+PkZAXRYacUkMKx841O6vLg4XTE7L89f3BUzq8QekDdce7yc+wWIWgJjNviDDkC
         0vNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8ui+ad+f3fPbynRbZeeCgH5BwLmccrcEk9swMplok3M=;
        b=ZtmezU+JWZtXI9Q3kVKymFNoM4BlQgueripWOREoiNgQ78BcjHx3nL1bHIwIzCuiuZ
         oTsBJwMX1HtpliDGDDi5L/z+6MDdkWCFw/NBvRV4Xt7GNwNfxVpX1QFyljEA9vFdM/vP
         7Qy9FHDGcOjWVZ/XXp6ai4GlnlEP7N/FPb54c88uwPHFgYMIRsPO4dGC6Dye9whnoYSW
         I1N9xzz4p6We9KZx149GN+kqD7v7R8I5APPGYjtLZmWZdQRhpQffyjxVp/uYh3jAWydb
         ewGLfi3XMK0/x8oyABXDPfJ8JWGdXrA0SNXB3QQwCzgpcKdwhacivZxVKjJDWacrbrkr
         3gLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8ui+ad+f3fPbynRbZeeCgH5BwLmccrcEk9swMplok3M=;
        b=eT0fKTJj2D4znvMVWhgKvNnOVIww7qWHFGqkNWx3UX8Ob2nvqy5VYXpog/GHrwtH7I
         8NT+TJ0GcIC5tL40SBOjdHBWjq7W5pUqFESillzOvNhjldhmmn3X1DwB1Dlnc3xeobGE
         vhqj9RfuLEAqZG2HdpDvXw9LzOWv4HaJMcrygqnpWMrM6lfSusDJx2rzXoQ9sMVJuw/X
         QZuFLkxOzzVFYYp4MfI10Td41TawtCKn6CD7ewdekOjdXIRi7GogX5R6kBif51ipvzj7
         J1OMrWsQTIV+dv8UemqVSw/ZDU/xH5DZouLf0pqPSVqDvZTSvFEUGNI74bb1RZhKMw9j
         r8BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8ui+ad+f3fPbynRbZeeCgH5BwLmccrcEk9swMplok3M=;
        b=OPB/9dlKafY62aoa/enExHW0Hif3wx3JMnsVl9c6zQCZQGt7ZZ/m2Qp2P6OikSGbBR
         c22mFsDrXzr5nGJGyAIBh8SJk+kvXCD1ycdB3fnmAdda62ElMneAO/Wy+MH29fN+umIJ
         2bJBW3cSeDxpRfCjkt0guJGMl40unUgajHtwaEBQ3WqEOjsbNrLuaXX/vXvRpgyisNi1
         YIXw7YqhPFecWr2YCgE+of/5kQLKfK3JTor4qRDLLi79JuAHnGrDzL741dZ62ylHSoxG
         o8jYpPYzwMUJH3Z468vdxJjxOdOB1FjKsqaUY0JmDHHTcN2MStmsLfYAPY8/YSH/gPx4
         /0aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1HueDfBzVssUAuXTopcCyQ0qgCzPMOy0bu06Vy8HSIiw/0oMMt
	On0nCq7mNy5aErgTypko1ec=
X-Google-Smtp-Source: ADFU+vtTaHLxhbXpNrheZIz1oreOiXXu/Ha6q6f9TfJfI9mE7p8eB1/RyucuYbcS1Y/ujHqCojOTyA==
X-Received: by 2002:a17:906:948e:: with SMTP id t14mr2839915ejx.162.1583501614068;
        Fri, 06 Mar 2020 05:33:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:a40f:: with SMTP id u15ls1151110edb.5.gmail; Fri, 06 Mar
 2020 05:33:33 -0800 (PST)
X-Received: by 2002:a05:6402:206e:: with SMTP id bd14mr3147137edb.4.1583501613441;
        Fri, 06 Mar 2020 05:33:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501613; cv=none;
        d=google.com; s=arc-20160816;
        b=zIwrooj5+iMJqKysK0l44tkjNBpjGAnDVmLkruMhmL6NgCcfsq0w9zc7DVD5vzPnZw
         wJ/vVWfWYbuB7fsbb5mBUWPW0k+k8uQ0sAXoMhB1OW7xWXr6/Cudt3ELWkxpTf7gZBOg
         ufmF/MgJH8NYkJGag+kImIPBUON2pJxzHBZUDxh/oeZag0WbMX+kM/HxxZk4x+72QIP9
         dzx6y7Vj+jMF9Vm145sCLJiqeRXPRjDxBDwX/Z4SfFosgxTQ5r3D4Yj1RxqXP5OfMMhj
         i9VwW2PdNw/6Lk2UTQ8HnrtpUB1wOCWiC0iBT46F6GFh1Ua3sgdUrueH4yUWTeAY39zC
         wfKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=VR1kgr7ahGBWDY38WjixegQ7cQTzu+Z8n7DISE5R41A=;
        b=cKmCUBiViIkfn0l7WY3iWcxphcyykfz60UpMGdGK1p+MoOFE61vZSmc689bhyyFnkR
         3ItE/oE/Nt4IikNxOMixHlHiQOxzbQwKKkagW2zDuI72U8WFyLdeykeUY0danh3s5t0o
         8OUDAHB7kf1L0P2O9avjV0MSZeI+TKzwQ7aHwF31w1e+nKjwlIYKTVwbycLPLbBZDX+C
         XPb1Jsg/D3LJ5zxbNv3Xv4P8bp7XfId7dhTGMXwRhkAiHrxmRi91ac0SeHMZTodZ077V
         uzJb48jzdUGUmkRbO4iAV5LNBKSPBt8JRIIy6VLzaymg9vI3kCf6rD+ln02pHXgau2Cn
         CSSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l21si37300edq.4.2020.03.06.05.33.33
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDA7231B;
	Fri,  6 Mar 2020 05:33:32 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF1373F6CF;
	Fri,  6 Mar 2020 05:33:29 -0800 (PST)
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
	Will Deacon <will@kernel.org>
Subject: [PATCH v2 13/20] arm64: vdso: Include common headers in the vdso library
Date: Fri,  6 Mar 2020 13:32:35 +0000
Message-Id: <20200306133242.26279-14-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
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

Refactor the vdso implementation to include common headers.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/gettimeofday.h | 1 -
 arch/arm64/kernel/vdso/vgettimeofday.c     | 2 --
 2 files changed, 3 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index b08f476b72b4..cc3456416096 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,7 +8,6 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
 
 #define __VDSO_USE_SYSCALL		ULLONG_MAX
 
diff --git a/arch/arm64/kernel/vdso/vgettimeofday.c b/arch/arm64/kernel/vdso/vgettimeofday.c
index 747635501a14..4236cf34d7d9 100644
--- a/arch/arm64/kernel/vdso/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso/vgettimeofday.c
@@ -5,8 +5,6 @@
  * Copyright (C) 2018 ARM Limited
  *
  */
-#include <linux/time.h>
-#include <linux/types.h>
 
 int __kernel_clock_gettime(clockid_t clock,
 			   struct __kernel_timespec *ts)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-14-vincenzo.frascino%40arm.com.
