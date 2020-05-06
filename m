Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVGNZD2QKGQEYU5AI4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4685D1C6610
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 04:54:13 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 92sf397108oty.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 19:54:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588733652; cv=pass;
        d=google.com; s=arc-20160816;
        b=nEnEpPdbrzjGlcuvPlUfqvqMolQ9SH6A6yYHiNLeOU2KmVURXWwSJXctQZcQNJskHM
         KI+C9EgbN+nr3zbIDel/0dFdSOR61oRSqOgpABqtTdRB+8v64hYnn7L5vfDGLRhlkgek
         o5chgFo7M/HXi1gtZiGLgXruh02qupeCjBsPAFXqHC02trGRksDM2sD7NKhgC81zQs65
         HEGI8/+0OGqwcD0fAK7ihTqzazqF/xp6Id/DVUuSDJsBDNAkh1sZxO6bu/DwBkC+EPTq
         gq6SRTofOLFZI/4mencqzUc9N0SEotF4VIs3GABOBeW/2WRmJV283CAxv154DONoDHsI
         2o+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/S3gKoi69JMfFRVNsJEzcVvZ7otLjIe36NirEz1x7Ko=;
        b=V7ppT5bvfL9Yo0cyz96rbiXWBKJ3G17Ot2T4jbddNMv2y7Z+LntVYFt6ZeLRVs+YIC
         Vjc9ziuxS4yF+eUH9z5KejZUjCKJ/zPfCYUmq42qiBGi/zfMar8SJqGYhkYKmSDVXsq4
         3h+fmcjwdfUwHZq6ZxLPtMFWigtvMvNcN7+sG1x0DjufTGLOA5GJw0+MDLSeMF8GoPH0
         fnGtEu9Jl03lke0LoCgGJrU4VtZgwt81hiZow6PAprerp6jVokjsMO64Q9ONM9q2nMLz
         j/f7SDUnQz2FASmHti5VgE1fQ7aK/z7WC5swKcbcHN9kQAUpzgj9kKpDTLJFmoMSb/MX
         5vCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="CtrPU/ym";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/S3gKoi69JMfFRVNsJEzcVvZ7otLjIe36NirEz1x7Ko=;
        b=A2ZdkKVl/GFaIr3tVV63O2cZi/kBnnZBujcxomvKUu1UlC8LvkcCIKD54roegGKS6k
         QpSvHVLT73JEQvGGBmdc/1cYLs5u29Y/yHbNk8igXXlgpu+ulkXtSzVV54rpJWf0PIwH
         4kl0ykbnp/7K4UlY4M+jxbZLM2EAY/PBWlZXzHx5uSl/U/QT9dJxUA1G2tNHL45iKaiJ
         cmfF/5AA9ImT/f8q2BcKPjvIlWK6GDXSJnvT3kAAnex1PpHlntoHLjZsHHGNz9MiRR2D
         58wF9PJhI4MbrNTuECRYTJnBvl2Qbk7/vkzBMAWFD3KBEAl2P9SCclCn2IWX7IGNuIeZ
         UJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/S3gKoi69JMfFRVNsJEzcVvZ7otLjIe36NirEz1x7Ko=;
        b=Rg0oJPvU1rZs90da2dm/Pscx7C87FjgNcrXKaTOHfJwzNrejDLRmJaLbsNblrgfA5W
         IBji11nWwqDpMsIIK+6FQGovvk3Pn9B+3GaFiAbo08gZ78WxM/4HrvsFT45jLlsKTNmz
         7+Fs83L4YwUZ41pO5AlGA279MfN0GJgrYBNZ8QwA1HFiFVhR1QEA7kmIiUEyflcoua+k
         IO0HG58TRYXvrmgfsjU0z3KAw7A46rPoiG3OczqgosfrvDdRDpotsDWm96daUKKCh2Q9
         W30/bvi/Q3kMMKKED4/rnwtCYVAB36iYPQgYTcBA1ISGsRnTOlTRrULH8PrkhQ4JR8B6
         xUXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua2pT2mL57uykZ5FkH1i/O/IftYr+VB5SGjOzEmGyZPjU6+u2lk
	PnByPImQxT3ohO4sRC7lJic=
X-Google-Smtp-Source: APiQypIlSCDr1yV6lYESeLuh6MDEynV2UMzKFsZVQytgpwTc7K/gEycDkBzYWSrcVP7oFqbbsHs0qw==
X-Received: by 2002:a4a:eb08:: with SMTP id f8mr5603144ooj.1.1588733652104;
        Tue, 05 May 2020 19:54:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5390:: with SMTP id h138ls186832oib.4.gmail; Tue, 05 May
 2020 19:54:11 -0700 (PDT)
X-Received: by 2002:aca:be41:: with SMTP id o62mr1257549oif.133.1588733651752;
        Tue, 05 May 2020 19:54:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588733651; cv=none;
        d=google.com; s=arc-20160816;
        b=09mozADu3+Z8etXEC70Socyl0HI1DufjV917YGCRVFx6FSDM+HxZ/tmjn1Iz/vyjbe
         VzfUkGORKgaXDRIPosCHBszmSq/uts8jYSrDhs613b7KBIC9uiY/PeZeli8w6A+jTNWq
         TBW+FsG5OK4cX5T6bd57Eq2EnP0tZk7pY3jFWgsnShITiYFgJVAiEomKjlZl3IiEeJvC
         OqpdNprdnYXd4yIMJCE2BMsqQ4laUI61qR0ZCEHzDAqIjtbOtwmpO8RImR5YjXB/Yzzy
         Exehn5oQYa5Ryq1JnW+HUh84gIcy1jPYZO3rRPdyxMkp2T/NevJOY6M6vIm8omF3tgjH
         hjDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nFXGw0XLR4Lxj/iYJ9GXVPgkpTjspiHc52ztftl9kYM=;
        b=znSWgbW9kSOSHg39SU/s+v/38WYcdh90y12zuzGv1OXPOsybpZztzNcdWdzssloKg2
         Ybp30PAAynwJlmb4Hv4ApEcWg+X/mGmCmf59YlhzVPiEdQe+Rizer4Jpb+O5gidhpPTh
         v4itJprtKknZSqtZhaXfVdBX7SuCaVo8dzgMls8DKfnky8luinGoOhKab38bsuRAQSq8
         p221AR4NuryVlqqemz1MI+bJ2wIuIuUWQ6Fx17X2yfqrHivfUP1iGnfxP0dZKrw8bcVA
         uOynUeDISAQG0p+sr3EkViAmjV8MBJXTOChsYp/VrpkWPwJKn7A0TmefJ9RiqkVmA4dQ
         o12A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="CtrPU/ym";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w11si68500ooc.0.2020.05.05.19.54.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 19:54:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id k19so29739pll.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 19:54:11 -0700 (PDT)
X-Received: by 2002:a17:90a:1ae9:: with SMTP id p96mr6592771pjp.75.1588733651069;
        Tue, 05 May 2020 19:54:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id cv21sm3319195pjb.23.2020.05.05.19.54.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 19:54:10 -0700 (PDT)
Date: Tue, 5 May 2020 19:54:09 -0700
From: Kees Cook <keescook@chromium.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	arnd@arndb.de, George Burgess <gbiv@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] security: disable FORTIFY_SOURCE on clang
Message-ID: <202005051953.AF54DA4@keescook>
References: <202005051617.F9B32B5526@keescook>
 <20200506001453.764332-1-Jason@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200506001453.764332-1-Jason@zx2c4.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="CtrPU/ym";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, May 05, 2020 at 06:14:53PM -0600, Jason A. Donenfeld wrote:
> clang-10 has a broken optimization stage that doesn't allow the
> compiler to prove at compile time that certain memcpys are within
> bounds, and thus the outline memcpy is always called, resulting in
> horrific performance, and in some cases, excessive stack frame growth.
> Here's a simple reproducer:
> 
>     typedef unsigned long size_t;
>     void *c(void *dest, const void *src, size_t n) __asm__("memcpy");
>     extern inline __attribute__((gnu_inline)) void *memcpy(void *dest, const void *src, size_t n) { return c(dest, src, n); }
>     void blah(char *a)
>     {
>       unsigned long long b[10], c[10];
>       int i;
> 
>       memcpy(b, a, sizeof(b));
>       for (i = 0; i < 10; ++i)
>         c[i] = b[i] ^ b[9 - i];
>       for (i = 0; i < 10; ++i)
>         b[i] = c[i] ^ a[i];
>       memcpy(a, b, sizeof(b));
>     }
> 
> Compile this with clang-9 and clang-10 and observe:
> 
> zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-10 -Wframe-larger-than=0 -O3 -c b.c -o c10.o
> b.c:5:6: warning: stack frame size of 104 bytes in function 'blah' [-Wframe-larger-than=]
> void blah(char *a)
>      ^
> 1 warning generated.
> zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-9 -Wframe-larger-than=0 -O3 -c b.c -o c9.o
> 
> Looking at the disassembly of c10.o and c9.o, one can see that c9.o is
> properly optimized in the obvious way one would expect, while c10.o has
> blown up and includes extern calls to memcpy.
> 
> But actually, for versions of clang earlier than 10, fortify source
> mostly does nothing. So, between being broken and doing nothing, it
> probably doesn't make sense to pretend to offer this option. So, this
> commit just disables it entirely when compiling with clang.
> 
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: LKML <linux-kernel@vger.kernel.org>
> Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: George Burgess <gbiv@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://bugs.llvm.org/show_bug.cgi?id=45802
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>

Grudgingly,

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005051953.AF54DA4%40keescook.
