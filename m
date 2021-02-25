Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB74L4CAQMGQEUUUX44Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 63069325774
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 21:18:09 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id v131sf2276302oia.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:18:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614284287; cv=pass;
        d=google.com; s=arc-20160816;
        b=ylFqjZpdHLrCq5KIh3RD+IZpfBhj3KEHkUUvWtKBcLR6F/WLurzbvoKubrotAQjXd8
         uWBe+mGdJhlPYx4pfWT44BJT1FOXeDMylKrWpiz/NnFQ29Ayzu99q+FzgYjlxdf7Q3hM
         Noa0lJPWSjd6Mr2M/hK3GyUS4OwDWorM7d3hxV6w9Dzn9Ze7nADzOJceZzg0mo8rKTB1
         IzQ3tB5TzlZ1rAozl6eSLgSthD6XlNL0DPPGYQvtEA9JEBDjiVEUgPo0bk3Gs2iQdPxz
         fH5psnKgHlaZI3jsEhCg5W3BQdXwkU1EOjht9DL8ZtwV0qk5Gbopa+fsAsRZX3KiCFm0
         F8mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AkjxGBQjxTylsQSO/ShqZmuk/fuibxQgtXYNE1MBYOc=;
        b=c4H00l1En5dN1P2VZWRcC5i8/0Zdm48nncLlSoy9IfY6uPHjuzJc3FJXUDmMX2UnTR
         oBX+JI15105yYN6BL6V/3WGpapG/HeVF7xFOM8x5eZLE0zphw6DH75rey5tFV348aIIv
         MAruJ+1OR0jwoMzgQXQXzWkzWIhkZga/spUiFpAp5gjsyTECtM4FGjFurs+The9BdHlz
         WzkN+yLOx25k+Vg8r2gJCwqze2osifsNU7on4XHbjPBqC1fR0OzqfD2M9HOdC9Z+4qel
         fTMu9uOAA1iI4ONitjH6v+aWrAcbFtxl3j/Rie9V9maxzdlthYGaqHmnpx6OXIiYVnba
         gsuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HK0vtCW3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AkjxGBQjxTylsQSO/ShqZmuk/fuibxQgtXYNE1MBYOc=;
        b=m3y0EoPqOODyw54rdiG09f0wuFvceJSoOOKoU1VJE59yalSmh2hsJKXjVBFz9pN7vn
         16ln6GBaxiRe3WbI7douu5QlUqw3ZYp9Z13VkJ2ungOB388pVWxTqvx67Gu/qVzsQg7E
         3G7Ls6ZVZ8srA22c0/2yWUV7asgG898ryaTXTLEoQF9Hmv3AxGk3kcPRpXfEYATZt1NX
         BR1ojROT4rbqX2fhy5Jjuo77FeNqNazAmXPe8Dnj7+qi8b/GVGN4HRrEynBJZZlRJEeZ
         a9PZO6+Xt6xc9Dp2/xGGnx8/RnvrwyhSSL44pDSMKbotJTnoSLt7N4tPlkGLTWgVFOIT
         Wf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AkjxGBQjxTylsQSO/ShqZmuk/fuibxQgtXYNE1MBYOc=;
        b=aqz+jnNEJdBSwIOo8MLEeQCxuABF0oWDewvwOZv7d2S0qBlnh0OZA8SKZdUly3TdXi
         JZhNhhWYeYv9Jmiynr+TeSt7QooahHJMF8khc/VPQ+nArsYZHVp4OP6nkjWEUTGUsHAJ
         OO9+fvlXyuwN5acyP83S+h5cq40DI9on1RYPk1X+sBhQxyTjy6GVx8w2nlT+EB86Cfgn
         BkjDHeDdyrup6b0JUr4mx3OtVLxGjdrCGUM/Xvx7HOhbGUD5AmG5ck3wyXnTkJXtFRAb
         KarHhBQSnzCM7S33Zdde2d3vD9F5IxS2ZJka0hoospRSP64ro0V69/2LyJYizqSfbv95
         oL+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y7+fvk7JtFvFouX+uGUkyiP2z0OjO/O8I53ewC5XxFjWRU8Uq
	JlRApQ09iHbdvtIKoHv8540=
X-Google-Smtp-Source: ABdhPJyNuYfmLVmIlpC25nUcZjlqy89fOUCU8VWrlb2C4VevbBy1YLcIVg2xjDwwp9jIiRom+Uivqw==
X-Received: by 2002:a05:6830:30bb:: with SMTP id g27mr3755441ots.278.1614284287648;
        Thu, 25 Feb 2021 12:18:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf52:: with SMTP id f79ls1759714oig.1.gmail; Thu, 25 Feb
 2021 12:18:07 -0800 (PST)
X-Received: by 2002:aca:b286:: with SMTP id b128mr85878oif.126.1614284287303;
        Thu, 25 Feb 2021 12:18:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614284287; cv=none;
        d=google.com; s=arc-20160816;
        b=0dtKr71yJ50t/2AjBr7k9pyUNGMsesOVkAB9pivr0Fwv2u1GFDQXYpKQz55viWNNAF
         TdEaMgV5eKEhf55O20seH/gUiIb7ApreP854GWrXLkYLpGeHjcHg+ZCWnWit3YalZ1zt
         usaMgIb/JRtdtDbli0UaswXwDstaprtVWu4Io7rJYNQYnQE07MZ7dWW4jO0uJjROAb10
         u6K32mzImWy7EfLS2bdcbN2kjM/0Eij+fFOQ5J1ugEIk4egCbnM4tc6rMGnydcAiRNaM
         h/EPndovYmXUF3HIft8GWEZNPatVdkjjQdKWtDHzMrg75WtkWT7hdAds1KoDnZqsPJYt
         7GAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uf3l7sHJ32C/y/UQZcRKDhDpFFbTipg0C2dcA7hiMTs=;
        b=tsA3xHbUh1ZgQ40/HKRIifo+9/zbJXjytZQRhe+6ITdO0FtLtoWeKMiwXDK8n4YTvS
         j29H0qDaBR58h6qfHMugRLMgzRuIfFeIPn7rZbh38WO2NJvn8uEHGsbVqFDBnTeiWe57
         3KSXxzUeptkU95bswDdOy5rCUBaPbsBP5sFPWIgVGMofq/gUlfAdk96e9w0nOSxmPo+1
         44nyqZZRSwvZwunjYPcdjgWeWhpIcGCzETLF7/lj4pHyfV3RAnbpVTc1h6Wmxcvl6LdC
         QxoLFbQQYDUtZh4tndyPM0owwpg0CoZbZRIlA6jrOYVQYEOCQEErTR7wq7MLtoa50VMS
         zcNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HK0vtCW3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x196si374640oix.3.2021.02.25.12.18.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 12:18:07 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E0B5D60235;
	Thu, 25 Feb 2021 20:18:04 +0000 (UTC)
Date: Thu, 25 Feb 2021 13:18:01 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Miguel Ojeda <ojeda@kernel.org>,
	Marco Elver <elver@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Message-ID: <20210225201801.GA3119@MSI.localdomain>
References: <20210225164513.3667778-1-arnd@kernel.org>
 <202102251203.03762F77@keescook>
 <20210225120637.8e2a234f192952829fc5f471@linux-foundation.org>
 <202102251213.5815C9B33@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102251213.5815C9B33@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HK0vtCW3;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 25, 2021 at 12:14:17PM -0800, Kees Cook wrote:
> On Thu, Feb 25, 2021 at 12:06:37PM -0800, Andrew Morton wrote:
> > On Thu, 25 Feb 2021 12:03:48 -0800 Kees Cook <keescook@chromium.org> wrote:
> > 
> > > On Thu, Feb 25, 2021 at 05:45:09PM +0100, Arnd Bergmann wrote:
> > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > 
> > > > Separating compiler-clang.h from compiler-gcc.h inadventently dropped the
> > > > definitions of the three HAVE_BUILTIN_BSWAP macros, which requires falling
> > > > back to the open-coded version and hoping that the compiler detects it.
> > > > 
> > > > Since all versions of clang support the __builtin_bswap interfaces,
> > > > add back the flags and have the headers pick these up automatically.
> > > > 
> > > > This results in a 4% improvement of compilation speed for arm defconfig.
> > > > 
> > > > Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > 
> > > Cc: stable@vger.kernel.org
> > 
> > I figured 4% better compile time isn't significant enough to justify a
> > backport.  Thoughts?
> 
> It's a trivial change, so I think it's worth it?

Indeed. Any wins that we can get with compile time, we should take.
Clang is being widely used in production systems now so I feel like with
a trivial change plus user visible impact, it should be backported.

Not to mention that the generated code in theory should be better
because it is the compiler's builtin, rather than a hand rolled one, AND
this is technically a regression, given that it worked before compiler.h
was split.

Cheers,
Nathan

> > 
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > 
> 
> -- 
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225201801.GA3119%40MSI.localdomain.
