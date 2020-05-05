Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBB3OWY32QKGQENIPOUJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3101C5FA1
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 20:07:42 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id g23sf2613201qto.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 11:07:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588702061; cv=pass;
        d=google.com; s=arc-20160816;
        b=u8qP2H2GMftXzUqDvwlpmoYn3i0jtzxKbWPLHIjIC0cpKm7jTjMCpz5IEtN5io5nUP
         e3gmih1YX+iZXR2Ft8s5SDBkUhtaKRVctKILjwuLZQeJi8FtNAS99c9rpAtCXrsrYk97
         AOoUVnzf0QfL7cBkUklt6B2jmNnsPSEJMaHUd7cev4xAsN0OxLdEL+/b2XIr7gJAhSZE
         I0vNKfHHcoymeGumnRFhNcbyJMIntnjyrvZXN1oI07/LbyhdNjC1TWFNCVRZ24x2PjXZ
         otpdFgsApPuIDKr32/l82QOmHFRAIbASvKf+0qYaKLE+wKiod3JIbFy6b8mmFnRZDzcg
         SkVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=b+O2T58kW7AHp1kBJZjux4617cctYx0ikRzs2d39v6U=;
        b=RhYhEycmBPKZxOC3IuIQ/wah7Lx92WQm/cpPodaeCiDqsRPQtngnNevtAUeSLPqYox
         F4pyz1VYUVYkeCUoAQhVN2ECnzNyInuDPj5h3CTCl0IhvePc729+WV50MryjubwPUTsw
         X7dckh9zzKG6mupUAp7L8+asF+NUWoZFj7Sujfh5gqFDFYw3wtySCDd4GopDuS0TrDjo
         poTXayroU40IHxAY4LkUHJ2FfDKtBDjC5+K1og9idds/PmwFwl8lARiKOek2M4OVH2kZ
         34VrkzuFjgAdPDEaNrhXSrybEWyP4UenVtlG86T/zHb3NxgIm1ANFq3/9t+9VTNGX7DJ
         L47w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=Nhf5+JWv;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b+O2T58kW7AHp1kBJZjux4617cctYx0ikRzs2d39v6U=;
        b=qyTMphx1F31Rv+S+XhxL/guc+vUFDTQfsoWGx5HfXCi/Xop4pEpLVudE/2vcaF2not
         JitP0M4N0ojjDkHz7LLAw7pO05JephhGIOv6cehtOjqAIhn7q+GGv/99GmqRNx7ajpkC
         +u7BgbbPYXISsfEQRzkHkuYHCPPNIjdTiJ0U5WYnBbs5arDxeFgT7fXgjxOOmQ87wXNT
         KbzaSgX3wRxehBfEuHeMIfYFZFWQI4x+hPC13HpspsLUXfcZ1b9HFOKc/pWD6ZoZa54M
         VN1leYTVI4d5eEI10uwbg/8NLyiSLvwWCVkRG/LxGIOv4PPBKzDYyC+3mC3JiqmxBRq1
         OzqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b+O2T58kW7AHp1kBJZjux4617cctYx0ikRzs2d39v6U=;
        b=R7b1r/jXAtmEYLHfoc5QcD6txURi76lWszSC4wIEAeu+dfyykb5ktzA2o4E7OVJUGc
         KCr6FGEIIi9V9wLoER9WjXZ9SQnMDmfKeEcC9zSva2Y1rZs21hhC+r5jt963BmD24kuD
         Y7404aLx0F/aZFtLXTTU056HKaHMLA+j7MH9+hBJyePhH6uDnJevifSRrPPxfDaRmnkm
         /yTemqFlg0xSmCy0Ew+ruERBjs0ZiIG/Nj6LKa0ZTseSLY0QnbqSb/alEVVS4tqu4YAY
         5OPmdfDKJAiQnTGPO4Mfpd0BbJpUeWKdHAD0TLxBz0LpFeabTDc28RWcY/2SKFiO5IE1
         iFmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZcYuo9kGCHjyibPO0lk07UUEq3Xpb94a7q5KL9cS6Ig91aONlJ
	GfE5/zifvgFWSCN1eH64h2k=
X-Google-Smtp-Source: APiQypKTkXR2ccbKWGxTqweqXDR6Zkc/x8wWYmfizdUGvIWCHvpQvKXfqdyzOaUWTKp8fNvb34JPaA==
X-Received: by 2002:ae9:ebc8:: with SMTP id b191mr4524021qkg.1.1588702061211;
        Tue, 05 May 2020 11:07:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8a03:: with SMTP id m3ls266795qkd.8.gmail; Tue, 05 May
 2020 11:07:40 -0700 (PDT)
X-Received: by 2002:a05:620a:16b0:: with SMTP id s16mr4897142qkj.204.1588702060833;
        Tue, 05 May 2020 11:07:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588702060; cv=none;
        d=google.com; s=arc-20160816;
        b=GRxh8LqvnkmtMKQMSWt/drVwBl0+eJt6BMQ/SwL1ORXqZ9aZbJGnuywxf/lzYPUNP7
         Y8mkvg8NWwTvQ5vdL3NiRER2IjZ0FWeteYb5YFV/WRWxctm/hNEvWAQZQX4KndAWiLgE
         FJm5Ta0sziP4oWqE/hih6RiR74pG8pFYh5itP5NRlMB+6qr3CsWq3nYJ9znBb6rrMKHt
         bZ5ykPW5bqa0ES4tfcuvqv6YH5KdMLa+7n0JsC+QqYD36YS1vu19Uhu35XfFZy9PLpT7
         rTjdRNV1QtDt+rqOS5fbuVHQe+0m6iM60ap/IRrf7ZfvsCiTNInd88A+xpZ5D3W7wawj
         JpUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=4cVMSAo5+1hI6OdDCminTspOqusfTES7OMmVmqp4XjQ=;
        b=xm5MNeVBfIjO/rRHG22Vt8JHdPGLt4QRSSFf0tk//CBzUUXqkQYvuHQ33BiHcy53Dv
         vtzcD992AY/ctAy6wqeTZy4CRuYwa4S/gQVcRX8lpzfSxerCnBj6Df6X1kk+RK7f8rgc
         Z+a8ylBm5rKdIdaX/UZmeY5YXBekmWRBkMZA++NVbkru4r26W/HQnNOVvx+VvSYHJ9l3
         Qn5lfKxt/q5Ih61ynm4TYs18UF/u+Rkl6b47tE020EPTY5ypVtkWGhhNiBGMlkMvgMCM
         LW3Nsw4S4uH0kspACVsCxrJjBry/kAfV2CRdfMl79g4/DKIPHZtxPl+v9LksWc8kxMlM
         WXzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=Nhf5+JWv;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id m128si130301qke.3.2020.05.05.11.07.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 11:07:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [172.27.9.0] (c-73-231-201-241.hsd1.ca.comcast.net [73.231.201.241])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 045I7QkG2666886
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Tue, 5 May 2020 11:07:27 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 045I7QkG2666886
Date: Tue, 05 May 2020 11:07:24 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <20200505174423.199985-1-ndesaulniers@google.com>
References: <20200505174423.199985-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Nick Desaulniers <ndesaulniers@google.com>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>
CC: Sedat Dilek <sedat.dilek@gmail.com>, stable@vger.kernel.org,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Andy Shevchenko <andriy.shevchenko@intel.com>,
        Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org,
        Marco Elver <elver@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Daniel Axtens <dja@axtens.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
From: hpa@zytor.com
Message-ID: <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020042201 header.b=Nhf5+JWv;       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On May 5, 2020 10:44:22 AM PDT, Nick Desaulniers <ndesaulniers@google.com> wrote:
>From: Sedat Dilek <sedat.dilek@gmail.com>
>
>It turns out that if your config tickles __builtin_constant_p via
>differences in choices to inline or not, this now produces invalid
>assembly:
>
>$ cat foo.c
>long a(long b, long c) {
>  asm("orb\t%1, %0" : "+q"(c): "r"(b));
>  return c;
>}
>$ gcc foo.c
>foo.c: Assembler messages:
>foo.c:2: Error: `%rax' not allowed with `orb'
>
>The "q" constraint only has meanting on -m32 otherwise is treated as
>"r".
>
>This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
>or Clang+allyesconfig.
>
>Keep the masking operation to appease sparse (`make C=1`), add back the
>cast in order to properly select the proper 8b register alias.
>
> [Nick: reworded]
>
>Cc: stable@vger.kernel.org
>Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>Link: https://github.com/ClangBuiltLinux/linux/issues/961
>Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
>Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
>Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
>Reported-by: kernelci.org bot <bot@kernelci.org>
>Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
>Suggested-by: Ilie Halip <ilie.halip@gmail.com>
>Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
> arch/x86/include/asm/bitops.h | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/arch/x86/include/asm/bitops.h
>b/arch/x86/include/asm/bitops.h
>index b392571c1f1d..139122e5b25b 100644
>--- a/arch/x86/include/asm/bitops.h
>+++ b/arch/x86/include/asm/bitops.h
>@@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> 	if (__builtin_constant_p(nr)) {
> 		asm volatile(LOCK_PREFIX "orb %1,%0"
> 			: CONST_MASK_ADDR(nr, addr)
>-			: "iq" (CONST_MASK(nr) & 0xff)
>+			: "iq" ((u8)(CONST_MASK(nr) & 0xff))
> 			: "memory");
> 	} else {
> 		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
>@@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
> 	if (__builtin_constant_p(nr)) {
> 		asm volatile(LOCK_PREFIX "andb %1,%0"
> 			: CONST_MASK_ADDR(nr, addr)
>-			: "iq" (CONST_MASK(nr) ^ 0xff));
>+			: "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
> 	} else {
> 		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
> 			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");

Drop & 0xff and change ^ 0xff to ~.

The redundancy is confusing.
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8A776DBC-03AF-485B-9AA6-5920E3C4ACB2%40zytor.com.
