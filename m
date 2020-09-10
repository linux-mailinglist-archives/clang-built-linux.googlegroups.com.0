Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS5K5H5AKGQETYWLPTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EB32649DC
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 18:33:17 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id c126sf2429276oib.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:33:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599755596; cv=pass;
        d=google.com; s=arc-20160816;
        b=cGWKRpeGP81A6aPA4oTzRoH6FL6/ZoMXVmWKeOqmCSj3kHoZwiJyIrTRtHx/uVO5ZI
         GJA3MwsSix0Av73wHIV6ViTi/rWnepwC798h5wypkXKHu0JE0wSO6pd0JJLvN7ntngQP
         803MzSb+22vTv2Rzqnx9IKr6njAYCfAQRhHyv+DrSXEL6DY/ZBQG6vCS64SDsnmJm8Ew
         V9kGtITXUg1owgLLodPN8UEsv9F1eGMB1LS4lstpdScgqbSAB1RhEICHydv78KM5Ed7o
         CSiKbQVe+xQctb6gGaYgWUQMb+9pj2J6CjcgjY/Fqvj+gy/JhA1XJaDH/yJnpuDR+dFD
         wZbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=dy4oVr6xjibaM7chvU0G1wcxr5hEmvcbL29rc1oZmpE=;
        b=ZZPTYGeSC3YVHK8AvvonDo8NOB8IEyYL77FC0G13BBtUgNrakA111W/ssnECzmJ0WV
         1YrQ3MhrYjvA0rY50rd7jf6T9XBkvDo5jq4DnGyalS2EfUmE6zBS1pQw7bOy4+serAhE
         IiBcI8xt9kGYz4icyevSHWrHI3US2Ax0fyDeS1qUeDqluzGdZBW+wi0Y0OEeOjJip4kS
         rOFVtKbzLqSXtohTIsgmyyRrS4R2vvtqRxp1UaJQSTVJfsdKvfwaQpRqYYnMBQdZZ+8g
         8NDtMQj49iydUC1KW6iq1f5csTqbQ4h/KheHDjTawRa+1B5pvELuy15F9ZlbZnl3uMWa
         vD6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lxUYh5St;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dy4oVr6xjibaM7chvU0G1wcxr5hEmvcbL29rc1oZmpE=;
        b=e2TG+XBXx2ntrRplD+IZSBPYCs/Z9U23brOAZK3KnUKPh94epY27O1gUpQhUEQmwFR
         RI8S3+6oMwLZNnITcbTVQAe/NoFKSt+/7eY4dHL+JBm5fZrPMNjkbKGKTrSQ8evTaz2S
         mr24srCk73hxERaHJU00qDBTz8t07iJFqHxV5JLun/NEWAUFLNzLZlIAPCxbhZF6OSD7
         u9U6TrHfH7yN48f7N56dVfOfv/fI+CSpQU5fKAryWvgQxp5f+unA1/M7+AeBTJ92wgdI
         cKGJpem0jNNT+K8qAbM23G/hWCkIqCqlUfn6eQ9iIDBJmqKLxxmPNnRiuxPu5vkezhw3
         OjAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dy4oVr6xjibaM7chvU0G1wcxr5hEmvcbL29rc1oZmpE=;
        b=TJ1joWGyG+gnexc4CH5zCi7QsfqBoOGK4wF8pg+iS9MUUICBAI+ih1oZ7J1fzG3VRV
         cxv7ZTVhxIjmyo0DCMPGgiJl8Fs8zxG6H7GFalQh86Nku8J2Eq5zng5YR1n0zRpEz3be
         yxHCqXrmM/ilEiLiXuD453KLYGkOKECZE+TZtvPEF725Ozpf7oD8xqVhr1DBCzSFg9iy
         m/5aehias0AY1kR10FZM+/JXWchpPZty7Qt1VFFgpPRfU7MsDBjqfuy73U9Y+P9YKray
         tSBUerBpW9JtVrhlx/9RMaYNVeGrBAHIVIhq04WQtIu+6mFIEZcnS8rpau1vpGW39nf/
         j2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dy4oVr6xjibaM7chvU0G1wcxr5hEmvcbL29rc1oZmpE=;
        b=su2Z8CBuWPby+3FPvn8NEvo137I4+6w4Dviqxed5nTAla5jb0fxii+uT+2mZQnqrND
         4LWuoe57blhPa17s+KVu/8ai1m9IYBVoUUrbJpi2EBzglzZGv9UA75OEadvBEo4Wpzde
         Me74+CRUNAyBvxpcxIttzO1l0w/1NHRHYfMrf3/ZNlHHsTPL/V0G46z26vb+3o/g/fxn
         1VGHn+gschpzbJiSRh8RcqtlwTiRW5IX9pab3jR59NcRUnGN6TaV6NXtYi7BR8lnH8u/
         M35cml8sEfshoQpEZMNsnf2PVZCsdpjGtNDDH582LJIbKD+2TQM8jeGA7ZGYh+q1Iupa
         lP8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531N20Bu6oDUkfKdi+l18fbnKQDi6Y8wRsb5BkGa2spPABLOEe5W
	EtUZk2wIjnf2TMErwu/+o+o=
X-Google-Smtp-Source: ABdhPJwA6iaklfcJ8IPutYhu72/y9Iaj3y5HSDMSU8CbvV6HIiDDuomASWnc5VXfwHuVSvE3aV0ZUw==
X-Received: by 2002:a9d:4704:: with SMTP id a4mr4600345otf.238.1599755596120;
        Thu, 10 Sep 2020 09:33:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c51:: with SMTP id z78ls509558oia.4.gmail; Thu, 10 Sep
 2020 09:33:15 -0700 (PDT)
X-Received: by 2002:aca:538f:: with SMTP id h137mr537630oib.103.1599755595723;
        Thu, 10 Sep 2020 09:33:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599755595; cv=none;
        d=google.com; s=arc-20160816;
        b=tRnSOJS+J1iR2M3e8PeVB/cnlSKabk7FJMXHrAO0SVr1YNghgX5hr0RQzxjEZ0Zbv8
         p69xP1NiTiSB5U71tp1UhWul4iGooC0mHUgFR3NwG01z4cxb55y/9SGrRmCyud31PM/d
         zaqKI9QVye88LIGMT6PDzQUKMPW6om4xl4fKTApJIQurwlq4jIe8Zh/5Khiq82CFX0Tf
         fAS9SJnolLOg8bjbXLsyqf8Ir8yuqekBG10LkZJmaKhiJiycs82dDYgYBr31I3uToaE6
         3i7Q5RFbqEKB3LkutFZI7T+OuGiKn+CBA1rx6GuMLZHWrTSahAWQKc/SomgyayjyH21F
         pMBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5drfFo8OrkBQsxieqqPtS/rD8KeOpzSM9Ivh40hvsKo=;
        b=Uf3r4iDa1L4w2PsyQ6N7bEc+TE3+aP/FGO42qLaxt0WdRSh9uKngEpMPp4i4T3kTf/
         bKDU8wFLw9aeWvR3i8A4U5UcVcGzq2tOSIvf0zwAs3rsTq5+/mfVa1CTH1CVsW5lKDXi
         oQawR2Hx8aZCFWt36iF9hh3aLGtwwZCg24HoabjfEyYHQWM9bBJJbc8qjMipPKuUb0hx
         FsBQx2CdzXCJpenDNoPM++dz4RXHLyklph5hR7OhO5icANeLtVqVeydF5g6FkQcgbYxY
         Jxa4h+h22a40xEWA7NJfUpzLwkJukwae1RMHmMwNZ+5PwHWx3ewjXKeMgzMJ7Cbks4NC
         Odtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lxUYh5St;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id 71si482111oie.0.2020.09.10.09.33.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 09:33:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id db4so3651661qvb.4
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 09:33:15 -0700 (PDT)
X-Received: by 2002:a05:6214:a8c:: with SMTP id ev12mr9114527qvb.95.1599755593799;
        Thu, 10 Sep 2020 09:33:13 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id e90sm7364097qtd.4.2020.09.10.09.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 09:33:13 -0700 (PDT)
Date: Thu, 10 Sep 2020 09:33:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] kbuild: remove cc-option test of
 -fno-merge-all-constants
Message-ID: <20200910163311.GB3119896@ubuntu-n2-xlarge-x86>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
 <20200910135120.3527468-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200910135120.3527468-2-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lxUYh5St;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Sep 10, 2020 at 10:51:18PM +0900, Masahiro Yamada wrote:
> The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.
> 
> Here is the godbolt:
> https://godbolt.org/z/8T4177
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

For what it's worth, the commit that introduced this block is going to
be reverted:

https://lore.kernel.org/mm-commits/20200903201518.JKrRS%25akpm@linux-foundation.org/

Regardless, it was introduced in LLVM 2.7.0 in commit
f9d41df0930986c52e198292cf875eb5d1761ece.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> 
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 059b36f2ea53..1b6abecc5cab 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -927,7 +927,7 @@ KBUILD_CFLAGS	+= -fno-strict-overflow
>  # clang sets -fmerge-all-constants by default as optimization, but this
>  # is non-conforming behavior for C and in fact breaks the kernel, so we
>  # need to disable it here generally.
> -KBUILD_CFLAGS	+= $(call cc-option,-fno-merge-all-constants)
> +KBUILD_CFLAGS	+= -fno-merge-all-constants
>  
>  # for gcc -fno-merge-all-constants disables everything, but it is fine
>  # to have actual conforming behavior enabled.
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910163311.GB3119896%40ubuntu-n2-xlarge-x86.
