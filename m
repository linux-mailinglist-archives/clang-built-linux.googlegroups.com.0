Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBQMGUD5AKGQE3ZDIAHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id E4136254DE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:02:25 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id z25sf2432148wmk.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:02:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554945; cv=pass;
        d=google.com; s=arc-20160816;
        b=xZdDP4QQQkScQ+YBxWpehC4f9Nj4V4uBSsBvYQPmY2dZ4YhAeiJjC0UCrjLSU3Jy0A
         pmO9cXoRpSCs8uRfxB9roh9QAXKOd0GkO9esz0PiBqIQffusJB0FkP3g5RYlE9ycYQJH
         wGh8CHWQFSPsGwVfhC/4aUrvlFLCWQmIC+1rvL16Ja1DsD7gCxuPxd+Rlzq3dSaampB1
         YfsfhXuSko4ZE//mpfhquOvq3Pncw4/ZZB/xqKcn1FrViEIabTmnDy/UHBeqtkoCDNnk
         Xp/jbbuhStK3sbUkMHHSKQV8A/D2nhg9OzosauyUPE9HRTMSrU5aS3xthh3H/J6/yVPD
         Kycg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Gkq5NiWG2MGq8cGfOlwFnkN9NrSAVY1LvqfHLcCdXJQ=;
        b=V/L2lVDOdcLHUXsugbjnLVABKFNfhhJceaEjhWZPEFWd4gHCxpfb7bGJmvzu9dqj0X
         9/d32TeHvqPZjq2smBws34mQ9KB/AtjblB7GVrd0xI2xyxo3cFJ7KdcyDWKmznAkNzq2
         orln//KY1NlidMk+Z1sf6PoA+X1SjcoU4XxPzsmE0OEm8m40ZnEKo/lMWss1RFaGO8IL
         z231YduseSM4old1z3svIy/Lw5d631cV6/BMUojZwvss7rOlUPDAdEQINNF6XsuG1pSc
         B4rOcmUgKAupKTh7cZRoT8J6estR+dkUXRAKBxqRcE3fhPhlb6d9WE6nJCeD0715khE+
         JBlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="XyJ/7/Bo";
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Gkq5NiWG2MGq8cGfOlwFnkN9NrSAVY1LvqfHLcCdXJQ=;
        b=cEQcH3ZGiK3DqWTwuOzzfY6CRXBYz2L1St0dh7xAd61ytRs2XN8K9h/bCGRMaLl9k3
         3thWgAjkLPfkNHqLjP7wSehEfccbFbUCsJR6cBpwlrsn0bZBKQK1eHy0NsIrJdX3HRq9
         K7Ab6tZWGIWtDYCOYrXCOVMRo/M/qd1MIdLZV/ssMq8hHkLVB2nkoSKQbIwdFwJYolZy
         z+CTq8EiUiwjwt5ayQYuEOKn9Ysvubbni7ZDrNnmatc8GfClTTwfjL8Tn+q1P32fAKYg
         n8oe4VzsgETjrnkVXCcWOExPq9fr+gPM7x77Shm+ExD/u0G27cOimJDy7jTMa2dc2Gon
         WXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gkq5NiWG2MGq8cGfOlwFnkN9NrSAVY1LvqfHLcCdXJQ=;
        b=LzJDi+ZbXecG3XQjLdNLWys9GxT5cm0MRnFNMoFfyVJZefnIojoXYAPjVdFt0EoTH6
         C25qPFbCynOz/uNBNvgVxbMSUoqrkSd3kzwSbWO8frPTlwxBUw7qm/rD+unDFvDtcZDe
         QNfaXaqYLruqEG1pdYvGMCBb7dog7AJR5Mkxuf+KrQ77p7pKdrx2KJGk3feuouyhQmnV
         BQ9khxD9TuSgvg9HdXbnMVGxScayf404JKJQdYvMGxjV+p2bmcY8vSsuPHD1mI3k+WL8
         N17jZnSmJ8nPIuq3dCXHnggc7o26w3cEF7jIFOTuFieRIXsuyG6b6UJ49BfcupMiZgBi
         niNw==
X-Gm-Message-State: AOAM533rHW4V/uKn3ZhO1JH2LM0xJtWyHDzdmmqnp4ZPGp9vt0n6rRqQ
	J8Q85uLG/u1dQaHbus5pcCM=
X-Google-Smtp-Source: ABdhPJyP3+7NVzLMilSuNwqTR+OtPM6GEdEKJo/o9K6UC75Sic+Dxaea1WKZOGVpq7zomsZ0fOOhiQ==
X-Received: by 2002:a1c:43c3:: with SMTP id q186mr310063wma.144.1598554945595;
        Thu, 27 Aug 2020 12:02:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c304:: with SMTP id k4ls1523332wmj.1.gmail; Thu, 27 Aug
 2020 12:02:24 -0700 (PDT)
X-Received: by 2002:a1c:dd85:: with SMTP id u127mr286533wmg.65.1598554944880;
        Thu, 27 Aug 2020 12:02:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554944; cv=none;
        d=google.com; s=arc-20160816;
        b=KeEaqYhIV3mGEVylJ26fZwJEEiYjOc0lCP1mgQ9UwgatwP27cbWL0WNsfcRr8XuRpW
         zIegvHEmEncwNjf4FkEeImfonUe0lkCdztsqngvhO1IyhGj3ZmsCwp/H/xK+6vFNlIVi
         kn2+lT5ZzvGOQnk+vDXabPpdHte9Ihnpug2Zgq7nJOwsMWLULahVwrXh1Uo3imXt6/+v
         bQ6FGpfr6FvTZH2oiE4kOmIRha5g7Cpla98byD97s+1mqa7UKoTzNh/3o5t3cWwU1Hfn
         LBLBtKB3o5Kg9JAvn72LYAOx7BAZURgAqh3P6Aw5ZToaMKEms0KqFRukG/D9VaW95zA8
         lPQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=MgXI5yT9M2YWoB1R2sbphZ1sVTEoxpYWlpWN7CbOJSk=;
        b=leLldo4uAqoMX8LauNQ69pFahbjqXf/yU8KJaTG0AVbqzgrnI5Ez/dKJ4Qso2SyZsp
         PFSq7fTbOJIX1RPiEeX2wD9Ai1crh6FFs3TlE6WsEc7aW8+uid0kLXLQKYtHNotKJRQz
         6iDfNEeePC7LvsPzfileC6wR5wQYESvTSE4xZMkmEQpz0QE0t0fTe/VW29EyFHHuiDBc
         4sUgISvrgZ8rpOrHos9meVGkTB8oVtMd5JIPsl51MbNSlizgiJzuK0Sf9MS1aeb1rgz1
         PR7eGpoCD1v664H4DfoqtfYbG6KDgZiQ2WhAbnX2s1hzB4YHM03whx68nM1fwHawKeCw
         kHIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="XyJ/7/Bo";
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 64si100301wmb.1.2020.08.27.12.02.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:02:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id h15so6351886wrt.12
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:02:24 -0700 (PDT)
X-Received: by 2002:a5d:43c7:: with SMTP id v7mr5200602wrr.27.1598554944300;
        Thu, 27 Aug 2020 12:02:24 -0700 (PDT)
Received: from elver.google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id c6sm7187094wrr.15.2020.08.27.12.02.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 12:02:23 -0700 (PDT)
Date: Thu, 27 Aug 2020 21:02:17 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Ingo Molnar <mingo@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev@googlegroups.com
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
Message-ID: <20200827190217.GA3610840@elver.google.com>
References: <20200826201420.3414123-1-ndesaulniers@google.com>
 <20200826214228.GB1005132@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200826214228.GB1005132@ubuntu-n2-xlarge-x86>
User-Agent: Mutt/1.14.4 (2020-06-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="XyJ/7/Bo";       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::442 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
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

On Wed, Aug 26, 2020 at 02:42PM -0700, Nathan Chancellor wrote:
> On Wed, Aug 26, 2020 at 01:14:19PM -0700, Nick Desaulniers wrote:
> > During Plumbers 2020, we voted to just support the latest release of
> > Clang for now.  Add a compile time check for this.
> > 
> > Older clang's may work, but we will likely drop workarounds for older
> > versions.
> 
> I think this part of the commit message is a little wishy-washy. If we
> are breaking the build for clang < 10.0.1, we are not saying "may work",
> we are saying "won't work". Because of this, we should take the
> opportunity to clean up behind us and revert/remove parts of:
> 
> 87e0d4f0f37f ("kbuild: disable clang's default use of -fmerge-all-constants")
> b0fe66cf0950 ("ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer")
> b9249cba25a5 ("arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support")
> 3acf4be23528 ("arm64: vdso: Fix compilation with clang older than 8")
> 
> This could be a series or a part of this commit, I do not have a
> strong preference. If we are not going to clean up behind us, this
> should be a warning and not an error.

There are also some other documentation that would go stale. We probably
have to change KASAN docs to look something like the below.

I wish we could also remove the "but detection of out-of-bounds accesses
for global variables is only supported since Clang 11", but Clang 10 is
a vast improvement so I'm not complaining. :-)

Acked-by: Marco Elver <elver@google.com>

Thanks,
-- Marco

------ >8 ------

From 13d03b55c69dec813d94c1481dcb294971f164ef Mon Sep 17 00:00:00 2001
From: Marco Elver <elver@google.com>
Date: Thu, 27 Aug 2020 20:56:34 +0200
Subject: [PATCH] kasan: Remove mentions of unsupported Clang versions

Since the kernel now requires at least Clang 10.0.1, remove any mention
of old Clang versions and simplify the documentation.

Signed-off-by: Marco Elver <elver@google.com>
---
 Documentation/dev-tools/kasan.rst | 4 ++--
 lib/Kconfig.kasan                 | 9 ++++-----
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index 38fd5681fade..4abc84b1798c 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -13,10 +13,10 @@ KASAN uses compile-time instrumentation to insert validity checks before every
 memory access, and therefore requires a compiler version that supports that.
 
 Generic KASAN is supported in both GCC and Clang. With GCC it requires version
-8.3.0 or later. With Clang it requires version 7.0.0 or later, but detection of
+8.3.0 or later. Any supported Clang version is compatible, but detection of
 out-of-bounds accesses for global variables is only supported since Clang 11.
 
-Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
+Tag-based KASAN is only supported in Clang.
 
 Currently generic KASAN is supported for the x86_64, arm64, xtensa, s390 and
 riscv architectures, and tag-based KASAN is supported only for arm64.
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 047b53dbfd58..033a5bc67ac4 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -54,9 +54,9 @@ config KASAN_GENERIC
 	  Enables generic KASAN mode.
 
 	  This mode is supported in both GCC and Clang. With GCC it requires
-	  version 8.3.0 or later. With Clang it requires version 7.0.0 or
-	  later, but detection of out-of-bounds accesses for global variables
-	  is supported only since Clang 11.
+	  version 8.3.0 or later. Any supported Clang version is compatible,
+	  but detection of out-of-bounds accesses for global variables is
+	  supported only since Clang 11.
 
 	  This mode consumes about 1/8th of available memory at kernel start
 	  and introduces an overhead of ~x1.5 for the rest of the allocations.
@@ -78,8 +78,7 @@ config KASAN_SW_TAGS
 	  Enables software tag-based KASAN mode.
 
 	  This mode requires Top Byte Ignore support by the CPU and therefore
-	  is only supported for arm64. This mode requires Clang version 7.0.0
-	  or later.
+	  is only supported for arm64. This mode requires Clang.
 
 	  This mode consumes about 1/16th of available memory at kernel start
 	  and introduces an overhead of ~20% for the rest of the allocations.
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827190217.GA3610840%40elver.google.com.
