Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBBGVV3ZQKGQESM6W4CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8A8184B32
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:08 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id z8sf1504923lji.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114308; cv=pass;
        d=google.com; s=arc-20160816;
        b=sSVXmMmFP8wCLwLpKKU8uRhQr/UxUWxYRcLEJd9sQs8E2D63HdeHAG9pg/O0DqV445
         Dt9pGDVfptBk9JRtqXBmDac2orUZJ0PG+kJMH0zyyCkKNsnEXHfktIclAyh1GEKPOIZl
         ctkd1tT/GFRriVhexUAhGI+3nYqrpYpyWGvL10vITwOTr4SbCN3+xjq2CRgt+99jfwH4
         TVbfzAr542MXJtEeLdbrrXJEAI0A3jlR/y61C5W35zfIwf4qY62tFM/dN9wmApPBCLYU
         dHgnTzC8SgmR/wwcE8fLz+Jol1xiGw6rI/uabjhs4e/rzylvUFN7xzNxYIINYUyy+R8y
         KuiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DtEBg7ae2hwjLMjyCH2QlygY90gyoro3qcgLxaNgTZ8=;
        b=W61aRB5/mO+PVuSbZTnYq7LsJAAuLm5mf+PslUodNxdhtlBpXIUBJccdxjCf9pz0Ju
         APDWGpf9DtC96gUrI0abD+a457o7WFmQKrRfygcqwnli7b6WDN6KI5uo5Fxs8bFQTLqH
         RiG3F7I+B9dnpqgZwLHCSWq2MelNo7l0seePeYsQX/h2tZWA7pxKFNx8BzLFLRwiYb9r
         774ppVylR02G/XwHR3/d9HcTgkFVWLGpiC+r+X/+r/v4pzAO7AkT3ABYeOBd62wqk17Z
         ScaJQoZbo56Ky4BvpiLRy09u1VM/3CCD/lNjtpVjEfgxTxmaW2IVw5YtiUVIT9h3qGA1
         Nxrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DtEBg7ae2hwjLMjyCH2QlygY90gyoro3qcgLxaNgTZ8=;
        b=GCZv7BJhj3sa99SohTPA5d8vEmE1YP+lIQ8swV/7mRYAtxGVgY7aD4p8WwgZKKKXIA
         o3buSVzObt3tYt+zvpWCodqI09uj4b1f95eMHxBd52VKeHinLMuaDcU+u3e96Mg4ocsA
         g28NHomk8tvzBXsqfmEDXn7Z2xSzCRF42GKxiiVze2I+eDAsA6HoF5nqNKwBgMymzyAv
         W/K+d3eudGsiRL7Sgxrm6rYt26ClLBctg17Tz8QuVR/IT/zsGHlpOgigo3giicBj0uCR
         IIz1961hT1pmxYS+dni7KrcXZCDEK3EgHZPTOgS5vrOZs/2wS/7EiyXrx2hTvZgg9FnX
         We/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DtEBg7ae2hwjLMjyCH2QlygY90gyoro3qcgLxaNgTZ8=;
        b=eyTY9S6wnOt+O4KsjnDBE+d9D5OqoxA4RxMnDLoEJvY/5bMMOKrFFsLzReBC9DkXXT
         w5qcpmep2pfYPH2X4RXHtrtUbtpB4C2ASGcLiFZ5/8J+ca7K7nlFr3/F6iaGm4I1wdPV
         1NlxN4C/XmBVtg+fhoKS8JsDcXP4LH+bbalJVaaomtszk64QriRfoEttCqKlZgc40Rvl
         YbovjkBkxjziYhtA1w5diDOw7f3Xonuvr++el3zw2LKVhWFXLII3iNJM6HB8UqQw8jxR
         PoH25ToA1JodSB1+H091cUh9RmJroHbJ2CJzxTqwAcGmQYmM/Apeila9YD89AFcoESon
         2WPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3jYYNfamQ7GSPiM6c/E1UsmRPue2c+84ViarsRlnyyO477+Vos
	uIZFcspoX1ug76MJpuGUUM0=
X-Google-Smtp-Source: ADFU+vvoMyvLXp7y09NmbiG6E4aWNUj3n983uIUHAAt+33OZlToZBEgPuFdrWT57XQcwt+9NmO4nuQ==
X-Received: by 2002:a2e:87c5:: with SMTP id v5mr2009405ljj.166.1584114308247;
        Fri, 13 Mar 2020 08:45:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5208:: with SMTP id m8ls1511424lfb.0.gmail; Fri, 13 Mar
 2020 08:45:07 -0700 (PDT)
X-Received: by 2002:a19:ae03:: with SMTP id f3mr9084891lfc.28.1584114307572;
        Fri, 13 Mar 2020 08:45:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114307; cv=none;
        d=google.com; s=arc-20160816;
        b=HMo6dqtxEuVnCx1U2JfR1OT1GsZ6Q3KSzg7Px23ceCuq4XviKL2rKSplz9GreX1NhM
         GMIb3ezzuk7jy1b9ViixLfYeRjbXWXkugfVlbraPZt8+7I4UFD7GASAiAGj/9cpOKUk+
         1ZaoOi8noLYy3qRc37oItmfYPlfsY2B6vZzWHOyxhyto04+DbMz7BJPmBJ0hIiIRRei7
         l6ibfvyQwI8FDyajWQlb4TWLyw+aHIiNsCBm5CKwKgVg7/8+FhfKbTfkguREGXKvbBIn
         /Lg7vE5/YogYanPJ9ssGpSJEnkIRZ5ffkMCOUdc2l9An+IYp72z3lK3tvElWRrbzibls
         h+7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=AIH/HFUAbembO/c4QtW5CKiObObCuSEEJA+96BcMELs=;
        b=dlB8+nU5p3rkgQkZeD7K2l+P2zKxGr5ygXBOz2M5gsIcrY/4tXh3P+sbyIJiYF3lK/
         amLE1C7CR3OELGRDjxYABwVc+EWlTFQ+X+XfxV36aCiUf2JPlBy8n5kox+aURBP+nHK/
         xaAm2N+l8UL1sgrzNQ+SPFWRbconS2fYJCSYL1ST+SHpH7Nkop18x99fbpOCFzCQLwdI
         R2SwAvXKFj49y6cRwQPvfPM+DSYydXbqwx+pnmnjyeI6nva9Q8u4XJaOrvgfsu8kaosw
         M2inryfpBMiWdx8KbT3zARsNTdrhNRwLDv+IQqiyF6R+o70BV7fc0gjX8kjzgN6ARASV
         UzUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t3si496547lfq.5.2020.03.13.08.45.07
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF7571063;
	Fri, 13 Mar 2020 08:45:06 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE3123F67D;
	Fri, 13 Mar 2020 08:45:03 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 19/26] arm64: vdso: Include common headers in the vdso library
Date: Fri, 13 Mar 2020 15:43:38 +0000
Message-Id: <20200313154345.56760-20-vincenzo.frascino@arm.com>
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

Refactor the vdso implementation to include common headers.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/gettimeofday.h | 1 -
 arch/arm64/kernel/vdso/vgettimeofday.c     | 2 --
 2 files changed, 3 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index 5a534432aa5d..afba6ba332f8 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,7 +8,6 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-20-vincenzo.frascino%40arm.com.
