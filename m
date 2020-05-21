Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBK45TL3AKGQEZUCMT6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E421DCF81
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:36 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id y15sf843012pgj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070955; cv=pass;
        d=google.com; s=arc-20160816;
        b=YCxEqOvR2oAVhgkiSUPzcJxw8FTHBZF9z4FAjDRCPYyyZPdSWoo1FwyloFzirARrKe
         X9KJCAA2h5BYtZsulyzubH5V/13Roin911l7ZfYCabkANtSUQvx86agBIZfCLRelgOjA
         qfGnXK2ACodi28qZRa0GH++Wrpw5hIBBdTRmGfuFf8ErqIRQlnmZpWu7rqs/s2SGu/OH
         xWwurJtLADE9fCY36f1Y3Qhx4W4s1ei4SET2Jt2PtBft0FU2QtMhKU3NHiFMCPSjmfkB
         h28Kem5FBj7pETf+vRF23hkiXCJ95DzvA2/ugGKFjUiNuXoCwQjZrI0oVXEa/4b1kQss
         8Mqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=oI4s98ANGpxrOu5J5QxNicSMExGqVGcPsBrTAXPJWLw=;
        b=ojeEgDWSHKQx/VZU0ML8xvofZm0NEiBHMoIkWZ+yF97mGm0/D8jhMz74Duvv3Oylp7
         xi2vVHqy5DQLWgnZTX1O6P1xoupJ+qxxPTjRvFI+WdyG01sth5ULsincsg7uGrC2S8AM
         5l9VoHX/OrbJr/c/O6Kst5+agG+VzleXRafajnd28EniuI5Z5hd2T4Sa5RhHUSAwXqbG
         xt4a0WGMHKvaSeMMnDJIogFf9R9JGwGjJkOoRFfyum+YGCwuxhM8+SptGAYvnIp9v84R
         4yHb5PhDJe55zgC2RCllJw6WrYjN0zSDQw9WL2g1fZJYvWkMhSPEQorFSKJB/lWxPFNO
         3VhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u3EpQ4+D;
       spf=pass (google.com: domain of 3qo7gxguked0dkudqfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3qo7GXgUKEd0DKUDQFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oI4s98ANGpxrOu5J5QxNicSMExGqVGcPsBrTAXPJWLw=;
        b=eCOqRHq8l4A2jJ3sL3Tj6uI+gQCBZggpyvzCOHqmNZ8PIg8seyqbtR81XAxgflJ14h
         YzVvbaxnMv3FctNsYQd3wPhcH1v2xyVs+ZFaGpK1JMR5rZQHlSMTvzQg7HhoLjfIAAF9
         32BERAbBQUey7RZSCipI8BieYqsEqnJkAH9I9UOXKHe8mcZpCbF2qzNi45Pybky8d/3J
         rcy/b6qzqjN+mPq9d/Jnn3iRTsvD4xaIEiwB5T1sfLrlMDmJY2c0EN1EX/bQuD0+qJrg
         uBy9EA+anVmwtlax2kLpz00wiHqfz0onZH539nT+6phEy6msbZsGxcoMCsQOZaXw5dov
         hjxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oI4s98ANGpxrOu5J5QxNicSMExGqVGcPsBrTAXPJWLw=;
        b=Sbi1nBNuVQvsIefrhrsIFOUveu/VfTUfqPTEYQbPo31maIfZxYOFYUeNcXbqb395AW
         yMCYb0j/hV9zNgzFAOOMShC4bUHcIOMJ8hxL/aWeIBkB+A801hqKqD5ICxu5QFk2ZYb0
         6HMWLbij0NMdoBV2SbBstkhkkwT/5sLIS8puC5zmraNy4F4yEnfI524nLvnhWe2KmBTG
         culapLXvI7SfgsdS+DNSeI86+e4jHBZ+3DKgOxCfpfY9g7/ToW6Dmoszxwd9j1zLVY5S
         LEzZZ0/CSGaEXgihMO4ZgK3aFcut9/zmJV1XY9cxZy4TwcZ/F7B699yGlZGWPLikPoi3
         FTgA==
X-Gm-Message-State: AOAM532PJMyoxxkr0+dazQem94Mr0HswhOHt9Oui55XB3ioSfwiYmEQR
	iG5+c963QJE8FrHI2G57ulE=
X-Google-Smtp-Source: ABdhPJyPV0HHA2d5iDW19ti/IuVfQAHj8DU0umNChA4k4uVWcfJq3savuKHFyr75AflEUXrfYUj6bA==
X-Received: by 2002:a17:90a:6b08:: with SMTP id v8mr8746391pjj.151.1590070955506;
        Thu, 21 May 2020 07:22:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:920e:: with SMTP id o14ls703897pfd.4.gmail; Thu, 21 May
 2020 07:22:35 -0700 (PDT)
X-Received: by 2002:a62:1957:: with SMTP id 84mr9486006pfz.54.1590070955057;
        Thu, 21 May 2020 07:22:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070955; cv=none;
        d=google.com; s=arc-20160816;
        b=DkTE+eIpS63aGg3eaZJ/l1rUn35HR9coCdi9Hr1GtYAGzqpX/V+Vh58p/5XTbdYLif
         BcV9X4Xz5MIJTcfXqKfyNHoTPvK18c93aZt8NDFxeo8Z7VZ9/nGiR4q/f7gqIA6yKr25
         7Blykx4c9n8PFUusZbi+9UuXHDWgtTE1TRAP38m3v9owLA7hvlYqjXo8UORT/KRUSnE2
         80/AUCJ1SHIC5Sz+FGd+x/qHhsMrpoNt3UIDoy3DPbPnrnvAOVOeFk8Ho2wL/iSl+L9h
         Ebbwp86netXeGSD9Fglmo/72hPRSH35Cw7s26jz3cLQ6DMGze1BC65y+Rw6/ft7jXZlV
         0jwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=rIPGL9CFOAkyWr2JAZKyWj8DzpuO2OFpo2ndoPyjdsU=;
        b=Zo6NdC8IdkiZ2WaMsVwvLrYjgpWYyAhjVACbmO+IO21j/cp7QoGVcUAGLk6Dylyw0M
         GffQxlCYyC98n/Mz0VjBsCDTqR92auRZiAtDMnNG197PSIUlV2YXp0Al1jkPR9KOlQSj
         zj60dKTnhg3c3DM/L2P4W8cIcn0YrbtNk4luvZ0kaGYiF6lZ0E5R49GfoQztAYd3gXpt
         6GZ1I8rsdvq0vC2RoBjNn8EHLlfpTwuSNaawnC66sWRpY9litY7hdWqBHsJCZEMWvZT5
         z8IPUkGY/aVg0GJfE/bM9R8NYMKePZaltyRtAquXL+DiCQhsqKkTDdBwDXMdDex5CSI7
         RPTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u3EpQ4+D;
       spf=pass (google.com: domain of 3qo7gxguked0dkudqfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3qo7GXgUKEd0DKUDQFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id a1si377851plp.2.2020.05.21.07.22.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qo7gxguked0dkudqfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id a14so7834778qto.6
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:35 -0700 (PDT)
X-Received: by 2002:a0c:a184:: with SMTP id e4mr9612716qva.153.1590070954160;
 Thu, 21 May 2020 07:22:34 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:42 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-7-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 06/11] kcsan: Restrict supported compilers
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u3EpQ4+D;       spf=pass
 (google.com: domain of 3qo7gxguked0dkudqfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3qo7GXgUKEd0DKUDQFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

The first version of Clang that supports -tsan-distinguish-volatile will
be able to support KCSAN. The first Clang release to do so, will be
Clang 11. This is due to satisfying all the following requirements:

1. Never emit calls to __tsan_func_{entry,exit}.

2. __no_kcsan functions should not call anything, not even
   kcsan_{enable,disable}_current(), when using __{READ,WRITE}_ONCE => Requires
   leaving them plain!

3. Support atomic_{read,set}*() with KCSAN, which rely on
   arch_atomic_{read,set}*() using __{READ,WRITE}_ONCE() => Because of
   #2, rely on Clang 11's -tsan-distinguish-volatile support. We will
   double-instrument atomic_{read,set}*(), but that's reasonable given
   it's still lower cost than the data_race() variant due to avoiding 2
   extra calls (kcsan_{en,dis}able_current() calls).

4. __always_inline functions inlined into __no_kcsan functions are never
   instrumented.

5. __always_inline functions inlined into instrumented functions are
   instrumented.

6. __no_kcsan_or_inline functions may be inlined into __no_kcsan functions =>
   Implies leaving 'noinline' off of __no_kcsan_or_inline.

7. Because of #6, __no_kcsan and __no_kcsan_or_inline functions should never be
   spuriously inlined into instrumented functions, causing the accesses of the
   __no_kcsan function to be instrumented.

Older versions of Clang do not satisfy #3. The latest GCC currently doesn't
support at least #1, #3, and #7.

Link: https://lkml.kernel.org/r/CANpmjNMTsY_8241bS7=XAfqvZHFLrVEkv_uM4aDUWE_kh3Rvbw@mail.gmail.com
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
 lib/Kconfig.kcsan | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
index a7276035ca0d..3f3b5bca7a8f 100644
--- a/lib/Kconfig.kcsan
+++ b/lib/Kconfig.kcsan
@@ -3,6 +3,12 @@
 config HAVE_ARCH_KCSAN
 	bool
 
+config HAVE_KCSAN_COMPILER
+	def_bool CC_IS_CLANG && $(cc-option,-fsanitize=thread -mllvm -tsan-distinguish-volatile=1)
+	help
+	  For the list of compilers that support KCSAN, please see
+	  <file:Documentation/dev-tools/kcsan.rst>.
+
 config KCSAN_KCOV_BROKEN
 	def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
 	depends on CC_IS_CLANG
@@ -15,7 +21,8 @@ config KCSAN_KCOV_BROKEN
 
 menuconfig KCSAN
 	bool "KCSAN: dynamic data race detector"
-	depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
+	depends on HAVE_ARCH_KCSAN && HAVE_KCSAN_COMPILER
+	depends on DEBUG_KERNEL && !KASAN
 	depends on !KCSAN_KCOV_BROKEN
 	select STACKTRACE
 	help
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-7-elver%40google.com.
