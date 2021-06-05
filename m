Return-Path: <clang-built-linux+bncBCS7XUWOUULBBN4Z6CCQMGQEQGIAW7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD07D39CBBE
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 01:46:00 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id t16-20020a92d1500000b02901c521a389f7sf9064580ilg.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 16:46:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622936759; cv=pass;
        d=google.com; s=arc-20160816;
        b=0B3CxlEdnLAjcQEj4oYnBwLQG8BFAzbtoYMY2AcyKWnlqx6UsnAa9rs/mkLVMoYUUd
         rkQGshay3tX9kn5DmZE0tSeW+j0uqEZhaPe6FcNmBydwEeuww7fWKd69Im4RB8IWSL/h
         BEYBS+SDtd91NaRT6gt9CiBDQ2NxR+XZPenPEYS34VUhUpW5js/ISXsJYZNdXuG9rN8S
         8Qrl+4P/oOR15Q9wyslzDNEijqAo0INvN8eBB31rH3oYuWg/gpoBWFJ6rG5x1ZGR4dJk
         zLVultLV/+ApobyG+9/SBsnLBkeUUrdC6AtEDSM8olgEQlo9dh72j06WrnxjgGO32Y5C
         qUxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=TrYY/vyCYYVT89ClcmejV3dEFUSegJC044mqrluXq8o=;
        b=TimmnomqQVQCBWvy1e4i9Fza2qpmFsNO9hEjrD1VsaspZ+ZwGvb2FcbOHA5DVAWTsn
         CdG2uSWywQ9xPLvKNj6kn7Rfl7s4Ps56xx6T2BQ7X+1M8/POBwf2bN5e9WcZIrKSY2Cd
         tcvy7jYAhb57W9UMfGcqWQNWIX1DNm0EJeqzmcD6msHp+W7PnaN9/9CpXoeMPp3CR3+l
         lw2jEc9prZkgSA3iTa02t14eLsLu+TTEbzy1v01sAWLm8K6DkBYAkGX8cJqYAB816acm
         W6fOu/w74NH2MSrgtyCHJf35iVAqiRkyaujJZWF3q9qT0aeRhXSiGs2aRd92rvJ8oUSh
         X/2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ILxj5VVX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TrYY/vyCYYVT89ClcmejV3dEFUSegJC044mqrluXq8o=;
        b=MPvYwT13hY63QvbyBuGi/dY+m1HIB2YrI9fhrwpkBUbntVT4GH1uggM1T0E/4NPgF0
         O702v/1fUZ0ktovnOgtWq2mmGi+tStpzEiiAkeaTw/nlF2+9sNLiIgcN42fa21q6kyls
         xsEUrP1Ki/KpIvk6k1oAjC/tEWMin5kmHkfNcOlxryYv6mWSZbGxPH/emaLQ65icTVaq
         L4x9L7lNhtZoWbLM4z59rJIjnQbsD1IORvMxiEBVYHeLvHUPev+IdRjhfEYbpCIKBWJw
         /pkVpVDLtMhsyiReliWhKa2HEzqjbayPEzXWgFH8iwHGTPvs8YXHKt0FllJATBC225EY
         ztsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TrYY/vyCYYVT89ClcmejV3dEFUSegJC044mqrluXq8o=;
        b=FVsY/jgP202eU0EQk5oe8rSMqwdm40lDx/DkmrDWEr4BAm6ezZRV3NzSxwkPGmTh0M
         l9VmvKV2tI1Kw6rfxACQh62+wl+RW5Lu/1m93iirbNwy8F9YZCxA4J3IJXdAkiBnIAd+
         Z2mRbzkw6CbZsvDWUVP4XHqeKPcg2Fy8FBUDPECEXdCHO0zCbFqx5wc4Gp4abnV7JPee
         NUzx/25sjrC7bLVlkwAGO/vqTrgtSLHhI5kmo8raw2WC2ncilH1ao6tM7fh6fc4Pw16+
         jTxdzOTkrus+N6tWRLWFW3CEErJQ+qOrxJ/EJaumLzr2GOYiNEkEB108pnDmGaqv+pH1
         BZ6Q==
X-Gm-Message-State: AOAM532fvLLwzB2vAZH2fsyUtT+B1NzE6sijYXzMZ9DlQG923VISIjt1
	c1fOIV/jpAIa2pnKHxP+okY=
X-Google-Smtp-Source: ABdhPJwvU8UkfXtgO8+51ZvDzQgWnishyz73UYVuc1iqi0R1jxjCEyWMnVuGHDvT5XfZvHs/YNRneA==
X-Received: by 2002:a05:6e02:1bc9:: with SMTP id x9mr9583382ilv.118.1622936759724;
        Sat, 05 Jun 2021 16:45:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c806:: with SMTP id p6ls1459077jao.10.gmail; Sat, 05 Jun
 2021 16:45:59 -0700 (PDT)
X-Received: by 2002:a02:b808:: with SMTP id o8mr10101751jam.1.1622936759426;
        Sat, 05 Jun 2021 16:45:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622936759; cv=none;
        d=google.com; s=arc-20160816;
        b=vIb0wTxQEej4Ok6x6ijtD1D785nVIxjDWNwmo/rjA93Q/vTFlr2xBtrT7Ptay5LgdF
         beQ0u3R2hjuubGKSqO9u6YKOPQopIb582zHp+rCfwoujzxibCg8fZjgBIgiJZqD7wufT
         znizyzy9FbGFAS59hD2WrCvjMZEve1O2VOWSDVPkTdbXqpB8nk4pIVmb6cQtO09MOwrc
         ttrwkkt3HiN3L0TpBpCVYEMIpzs0s9Urylt4uGxidXWdWp1dOJ8MxTtXpm3piuyh8KmD
         /4DDgsuInuAa1jszhruvaxkOYzHJU9znQukCen9cdhwnz1y46lA4lO/+fWaBX4CFDFxU
         UJEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=CjTJyoA1J6ESNieCl6xhVrMKsJqhC9RI8AQfmh5v9iM=;
        b=VzR4sHAGUuUTsrI4XTJmWs6lKe7oS/QwiqK431WclGvU8M4XF1c3Lmca33y69KDitd
         0STNDqXX6eJ7hSc8IM7jYOGoVC6aquG4mVkXE2QJoeCgKuExVpGMR39551k7MfeaLa+M
         2V6IwwDkGzM3buPOBYmul8RR4rKQQLFMG4TdQhvqor80lgcUDm8Eh1Mdg1MoVnKIv+nY
         +2j5eTarujooZp8MI94LEKe3rmtY0wZ2GgZoydBmgtnVEwzqu5UAjGnsR1d9ON3YG6Wm
         78er0aVJcFMNIkI7yfFEL5S8D23YmYxGVRo1PvUMBdUH/NSQO72vejgbwgCU5Ag8a2TC
         kdmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ILxj5VVX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id v124si866608iof.2.2021.06.05.16.45.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 16:45:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id l10-20020a17090a150ab0290162974722f2so8103916pja.2
        for <clang-built-linux@googlegroups.com>; Sat, 05 Jun 2021 16:45:59 -0700 (PDT)
X-Received: by 2002:a17:902:8c91:b029:ef:aa9a:af35 with SMTP id t17-20020a1709028c91b02900efaa9aaf35mr11021866plo.24.1622936758729;
        Sat, 05 Jun 2021 16:45:58 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:3047:e4fd:1f31:6f88])
        by smtp.gmail.com with ESMTPSA id o14sm4594723pfu.89.2021.06.05.16.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 16:45:57 -0700 (PDT)
Date: Sat, 5 Jun 2021 16:45:51 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [PATCH v3 1/1] pgo: Fix allocate_node() v2
Message-ID: <20210605234551.k25j232kvsuzodxd@google.com>
References: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
 <202106041104.929FFB3@keescook>
 <2268220.EOMg9uvDZY@hyperiorarchmachine>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2268220.EOMg9uvDZY@hyperiorarchmachine>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ILxj5VVX;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-06-05, Jarmo Tiitto wrote:
>> Kees Cook wrote perjantaina 4. kes=C3=A4kuuta 2021 21.06.37 EEST:
>> >
>> > I grep -R'd where the memory_contains() can be found and it is only
>> > found in #include <asm-generic/sections.h>
>>
>> That's true, but the way to use "asm-generic" is to include the
>> top-level "asm" file, so that architectures can override things as
>> needed.
>>
>Thanks, I didn't know that.
>
>> > I cross my fingers and await if this is my first accepted patch. :-)
>>
>> I tweaked it a bit and applied it (see the separate email).
>>
>> Thank you!
>>
>> -Kees
>>
>> --
>> Kees Cook
>>
>
>Whoa!
>Thanks, I'm glad it worked out. :-)
>
>Btw. I have almost forgotten that I once wrote code
>(that I didn't send) for the GCC gcov subsystem that also enabled
>-fprofile-generate/use for the kernel.
>However the Clang PGO looks much more approachable and
>easier to hack on since the profile data format is simpler.
>
>So starting to work on this felt just natural to me. :-)
>
>-Jarmo

Right, __llvm_prf_vnodes reserves space for static allocation.
There is no relocation referencing __llvm_prf_vnodes so there is
no straightforward way using the space for the kernel.

In userspace shared objects, the scheme works by linking
libclang_rt.profile-*.a into every shared object.  The
__start___llvm_prf_vnodes/__stop___llvm_prf_vnodes symbols are
delieberately hidden in compiler-rt InstrProfilingPlatformLinux.c.

The GCC gcov format is definitely simpler than the LLVM format:)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210605234551.k25j232kvsuzodxd%40google.com.
