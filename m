Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBTEFTL3AKGQED4PJHSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAF01DCE09
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:31:58 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id y64sf7355759qkc.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:31:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590067917; cv=pass;
        d=google.com; s=arc-20160816;
        b=U++/435QY6j0cQzTrAcoLRRl6WhjAUh+GZi3F4RwM1OlvVlGoaPmEjXxFmpbw4XDsA
         YhA4dX1uiw1o/c6BWDApGH7S59xa0gAVVubJlzEdAg85/pOdF5NCcpouVEIN5xM/1GLX
         T3yPdv9hZgv/f7yx1VSRfi+64AJm9JBXSVhOpPdHI1XKElDFgYFTKWTjdcVVbjmRL6g/
         yPjO0UKvSHhGlS5kgSfLl2xh012r/mD1dE9oegHNyevfi/DXLAppg+F1qXEJvzz4aqQ5
         bUK/uV+3e+ZlS69xFGkO9SCo+UuT/AZJQbmAdaEiRs4lRtBaSus33ml+GFg2iS74Eoec
         vNtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Y3LBQvQAGhqDgCB2tdnczwr25jd54/VZz0rVavwstv0=;
        b=Y34QYFCRotL1+nBd20F+iKYzgGZb5j7TjMRDG7QlclWpZm2xqdh20cbAbEqKq87JrE
         ODrCmZjzDnNTXASPIoOECXkGLtwbfS0Lxu47gbE8IUgHnBlkiFSff9UImRRnH8ncVdkd
         ssoW4NJIRmLRjbVXzeRLja6nqVlxfabgNSkTqHFwlhGR9EXmrHXdpf6Zi1OFLcSWTLiY
         kCttkkqL0NHaDUqvU6pkOUhH7rIXK+SkRKTmYy0/EB9E++eKFoCyT0PoN3Pa6CMP5gdu
         OGr7FnwKGlJA5QfBZQWBl/z51B3W8+Tgb+1X0FGdZbYMrKjdg9G0exvhslHRxizvWP64
         3xog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GtKd6Mpi;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y3LBQvQAGhqDgCB2tdnczwr25jd54/VZz0rVavwstv0=;
        b=qU5s32O9NzV5UeucV2I61Up1Ff15U/LgRT8NBacbSQNUvYf+EjM7Oo5bkp83Zxc4uh
         vXQe8hgH4j6KbXG9aow2/mziHHIz2joSWMwKEPx466B+qEsVpDaZ/y/m1fVQozJMcZ87
         waLbgUm9rAtHr1/zP+/N5dU8listn2zUaPC6smIdFuEyTh4u9Cek9ao5b05m+QmG1FXx
         9tO+X2A8iIMbYxsONsj0YqVAPxs5SlEfEsH0tXmOhyuKqcUXoniwi/NALatWRLG5Pdel
         4bDibEhjolGPREO+4+WS6MeUdNSp8hmEE4YcW+X2K/UvB73kcM1duTIrrzLyav9ppJL/
         v1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y3LBQvQAGhqDgCB2tdnczwr25jd54/VZz0rVavwstv0=;
        b=R6mZvpGSuoJUBL7V8Xpwq2oKOZhROh1RjU1ZVKt1I2xh0FZ3dIOAH6ffLP3gJQXoIN
         GxJgEZOGP/FKmw4ff1eEFmMBImI6cjACLbaWUGLqbVBsrcNsBCp2g8HqC60Znn/hgJ/d
         j520F0DBKMAQMPpr6V75A438jIBdEpyelKLLI47JsRCiKLRMw+DZaJLrwcZXW90VevPl
         r7gwm/R1PATVZUAXQdVhhq6Zul88t79E6QDu5VRCvmUsGYRQuXItq9tWfscyljXVLJQT
         ybtinc/tD8DDG27gmcXx8NmHfjWFiRK33PWn39QU3HK1/aneJn2VG0mdOfCpgerIyJJK
         JUMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327zi4WAD8Nz426BQrTwCheQIdL+7Wh/BO3I0CidJZDl91u6mz6
	DiI9LyL9Wzuc7zZvLPUaMZY=
X-Google-Smtp-Source: ABdhPJx98icfrOXi/tKtbAXVnZh7ZxExS1ZFzx3c+d82Az6yF/jIf3YbHT6Msi3zpMFxJZ8OUPf/hw==
X-Received: by 2002:a0c:b44c:: with SMTP id e12mr9746291qvf.30.1590067917029;
        Thu, 21 May 2020 06:31:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9b12:: with SMTP id d18ls1034556qke.5.gmail; Thu, 21 May
 2020 06:31:56 -0700 (PDT)
X-Received: by 2002:ae9:f214:: with SMTP id m20mr9885144qkg.232.1590067916671;
        Thu, 21 May 2020 06:31:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590067916; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+45QNi65ufGdXYmZWRRiFqKeZff8DLI75aaAWSBTaQL1KSuL49WsABZsNed2UYRl/
         JV7s8bKe27SajjJEvyOsedtaPHeGU8VV5JRcJztIiPagxgefSa7obYI29kfNGceKaxeV
         UVF0x1mI1WqHYryw/hksvW2r/kI7Y9/kU1E88kpIbVMsNXtrVu00tjSphxxRcyqO6GJr
         6roBUo10lvkIzCCod51UY2Y0KBGOe7n9N6xV70jJbf5CpsZRJPUfKLXq3OHqdT2dBIvX
         JlErO91gCdO+Vm3HlFQenC0HexlfoZRbU5f1vQ27T6l4rwr/PFT4MVZ3/nlev4xNRUsw
         aBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Y9oT5LJ56sVLWLUeDHVQXC+f3+Bd0ET3FwdKC0MDxtc=;
        b=ehMbGA8ZnaF8FCJdtfFhhwhhiNY8Byxc/e60qtElg2edkPXO9EVD4v3PVSaV4IPcPE
         HSP/bYNF5iqTfqe0Rvu3Q3fkT9msvjuvnX+TK7VxNRWZXLFzuYgci8NaiwCnrxu7MNjK
         GQJ928PpibrBFBa/8z9vXs+4UUjvU9WXE3d7Y9YsZUcGKaa7adyxO4gGcXfZNKkhqZmv
         ovFWsL8y/kfrgd131HNdPk65rxGxcOHgovuU3bHzCJdgEgRWy9rR+7tOGoECrI3TGMEn
         WpWOtuUHILSYHtCxVGs2I1tTOaocWkMFOhRUYbR0j7wcWmdTnZ8HzLVKcmqAQB28v//z
         wlcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GtKd6Mpi;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w66si406176qka.6.2020.05.21.06.31.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 06:31:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8EBBB206BE;
	Thu, 21 May 2020 13:31:53 +0000 (UTC)
Date: Thu, 21 May 2020 14:31:50 +0100
From: Will Deacon <will@kernel.org>
To: Marco Elver <elver@google.com>
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com,
	andreyknvl@google.com, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	bp@alien8.de
Subject: Re: [PATCH -tip v2 09/11] data_race: Avoid nested statement
 expression
Message-ID: <20200521133150.GB6608@willie-the-truck>
References: <20200521110854.114437-1-elver@google.com>
 <20200521110854.114437-10-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200521110854.114437-10-elver@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GtKd6Mpi;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, May 21, 2020 at 01:08:52PM +0200, Marco Elver wrote:
> It appears that compilers have trouble with nested statements
> expressions, as such make the data_race() macro be only a single
> statement expression. This will help us avoid potential problems in
> future as its usage increases.
> 
> Link: https://lkml.kernel.org/r/20200520221712.GA21166@zn.tnic
> Signed-off-by: Marco Elver <elver@google.com>
> ---
> v2:
> * Add patch to series in response to above linked discussion.
> ---
>  include/linux/compiler.h | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 7444f026eead..1f9bd9f35368 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -211,12 +211,11 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>   */
>  #define data_race(expr)							\
>  ({									\
> +	__unqual_scalar_typeof(({ expr; })) __v;			\
>  	__kcsan_disable_current();					\
> -	({								\
> -		__unqual_scalar_typeof(({ expr; })) __v = ({ expr; });	\
> -		__kcsan_enable_current();				\
> -		__v;							\
> -	});								\
> +	__v = ({ expr; });						\
> +	__kcsan_enable_current();					\
> +	__v;								\

Hopefully it doesn't matter, but this will run into issues with 'const'
non-scalar expressions.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521133150.GB6608%40willie-the-truck.
