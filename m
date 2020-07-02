Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBB4L7D3QKGQEM4P664A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EEC2128E6
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 18:04:25 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id g17sf17875267iob.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 09:04:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593705864; cv=pass;
        d=google.com; s=arc-20160816;
        b=rkE/80LkvTfLpJpT473jfn6O5uObtYkBrNCg229EJuf3e7jYIXfrypkHirE+anX51m
         4n0iGgMspgDsI/X5NPENYGP0n3d3ruDPvuFQ8GPABUc1LuolZzI0hPj1PD+z+7G+J+lz
         z2J/Rqs9IFsnZoo5vegUonB1T9849VvJriCtsDiNz4fLqpmmOCDmTi2vIAnRm32alA0B
         oobgShngLjcX/eEweWLv7vkbza6rBmZLnZUcy089W05GOPosGQc+wO7sblt/teqpDh8V
         r9psLg31oKZngq7AJ3pbkN+hLrbtwnrdm394b+49HLl7123x9kdFoEqJgE9qJ1GBGlAe
         laFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ZTZjKIy0K8/a7vPiI/seeY2cmOa3vY1XJK0peK2WB5U=;
        b=MtEDKUF7i/wD+aWWO6CgBaLLttUdGnqAS2ytbvgqVmJEHmTIt11m19x9Bq6KUbz2S6
         crd4J53+a3tu5Ex+Arawz2lCORrGiIGl/aN28Yj6gaJROR4kU9PjtO53hOvdrw6EWRKr
         xPg56a8zrfCJ3WrWhr8i7bjbEanT3d+PUT6l5/v75T0qXU9pXK5e5oUe7PtAxNWToUsc
         IAMhl9fy50P/BZMfzrIrQZQEofW/Hs80LS3QQ+/3IIhoKugYOc/VeqI3HoPXBM4qhw84
         AqTF7tK10ogIe+xMjxOWRxrQ3TUDJbEt0er6h5CYv9qUpwKJgbOLjfy5IDfW80cIl0iJ
         /Jpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vQyntSia;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZTZjKIy0K8/a7vPiI/seeY2cmOa3vY1XJK0peK2WB5U=;
        b=Gf5AcyZ381SGmikjaSPhzs5/7yrMwDs5lz/oQLaKwkADSUm4S01ua4DUFTVsvwWT0L
         8dkFYgkoSwVtCzFzM2PSs9lsWgDbhIAlBSEfHXoHCSjnj/fccJQ9RHHxn0W7OCt9UWJt
         azT80FplpAj3sfeOMDdoAurdMpXEjWdp0sfraYLhMszZPYFB6mA7dtFK4dMW45JLmwaT
         AT83R1cl3utGpPhdX50JYDdr24gizebNkimFHYM4BO3EGYv+Perrn0r3kgFfM4J+Cn2S
         aXtRVbzsfvf7OHGo6eFVDvlAvKutp0Qcblo657wKzyzKGqWHQPr4sWFHHFm449gNE6/Z
         wmfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZTZjKIy0K8/a7vPiI/seeY2cmOa3vY1XJK0peK2WB5U=;
        b=IdojxpQ4TJAQeLiwB1uwHvmW+po00Og5KIegd+eBMd6FHRC8+UDliKhXj+0P2azSHw
         BIusD8fuNxDw+xdsEj/GCJsImp6+rF4zv+GU/PFC7cz1pk1Q/RrMXj+n20TSDRNJFfYI
         rsgJGgYMfWBY2P/6KA8jF9/sU+m+Gs7UP5omKXwr1Cl7hFlBXUlL3zMSsn8UYqbREzZA
         z1Idl+IxHnRDBTUkPzqS0Mu1J+/Zg/vQEYBACxcf5U7KEEKw4P0fNrcwIwpKEqxI0mge
         mBFu1w6eqyAMZHZZhWqDR49XgFkKuo4cco5pSSnTcDiq6NxkeqfYOPmvcYtTkh0didXj
         s5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZTZjKIy0K8/a7vPiI/seeY2cmOa3vY1XJK0peK2WB5U=;
        b=POKXrXoafA5S7tdQrTmIdKp4jPsXYKxYUVz8J11mdFqyGkVRGD0Whq4sbhQA4hObHr
         Cq4dyqzdnccMjHQ77kIsksP5QsyvCDhqxUK7kNOAKSln1Vov4PwT0AidQFpmZMvk0yFe
         zqeJax2O7FuWTbKSiRVgzIxD30VYNddegJUtoqyUE7t0/CjQQIf7fLuEd8A+aaw7lA+g
         qrC/7SIbnhx8fd+cTRJr3VI0UjsE+DeWJiPkxikzE38bNQxePEuq7udEdx+/x55tGCFF
         fHmlBJrUlK9fFnaOAEXYkoq+lNa7NPF8DzP5haZKO0VEsBwfGGak0m3aaeryReSmhauz
         7m3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301TGk2zFOFDjukrMpRyzrdq7loinqea7rULgP0Opuqq7+4GuSd
	qwacN0PmZy5BnKv93K+Iqss=
X-Google-Smtp-Source: ABdhPJyk6QZgVBSxqQz5p/o9DuI1tItDc+1ihp/CCWw3REmFo5YWsC879IJRqsnc/dZnECCcVM4stA==
X-Received: by 2002:a5d:9819:: with SMTP id a25mr7794786iol.85.1593705864000;
        Thu, 02 Jul 2020 09:04:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d0a:: with SMTP id q10ls947906jaj.5.gmail; Thu, 02
 Jul 2020 09:04:23 -0700 (PDT)
X-Received: by 2002:a02:a78f:: with SMTP id e15mr13909034jaj.36.1593705863619;
        Thu, 02 Jul 2020 09:04:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593705863; cv=none;
        d=google.com; s=arc-20160816;
        b=z6xPN1TpRPrNafWAmSJtts+BGrA5ym6R13TNS2rOGrCfcJ7fuQ/iu2581c0OYLG7Fv
         ZbanO4xtLebzbXooYOu7VdMrHZOSW/60TeZUJ0PheE3gfb2JzEbhcD/NXUEQogaS5iJo
         GpKc4BBNSjiOvqf5kZILFXPfMH5L8hVs2F95XHP1vtPLpBU1oMS7xisZ2ZYxa1GlwPps
         XMFX3/P1oK0TGc1DcZNPlNkh4vf5+eqNR5w3UTXe8etcxmRJplD2HGL2hWiAMR/W0JZ5
         YqJxsYLP3kHOYATm0YHrPHT16U8m7gvRlZIztsoCpO2z/eYyS9RpPj+rBNKi+cLnvkbQ
         MBaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tB1I6hCmjUM6u8j9mi/+rkvT9TH6Tm0pVRYPr44Mqew=;
        b=e/YjW8fjfsVuMlDFTzgmcnx2vjnuUgEFYEO2DzIA7EkJ8Rc+b5PxfEelwgn8Re89m5
         YIn9z+P7xk7xWn5Px/6nx8OC3Vj8gTIbgqmvj6TpMbOEa3kXy0R5d2KQ93CzClvwF//J
         efdJ6qlktPxyPJ/Yb3sHcdAPTo06xbS5YnwcvZahS28CArRNKDX+QXOmKjQ0KynUzXnz
         GCRtRXROytNErgDi89D/HjJm6TUm8BgQ0BSKJ3EGyPa7RS8caMuIg23dWMmrLaRko4pF
         J9SO4ykvsGwTYsxuAXiwZHOkzOGprWLP4SLKw+CEGGSK+IKCa80NoV1hXVQgF60UdEZp
         Tg9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vQyntSia;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d3si9314iow.4.2020.07.02.09.04.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 09:04:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id q17so12720762pfu.8
        for <clang-built-linux@googlegroups.com>; Thu, 02 Jul 2020 09:04:23 -0700 (PDT)
X-Received: by 2002:a05:6a00:2294:: with SMTP id f20mr29643338pfe.126.1593705862827;
        Thu, 02 Jul 2020 09:04:22 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id j16sm9183608pgb.33.2020.07.02.09.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 09:04:22 -0700 (PDT)
Date: Thu, 2 Jul 2020 09:04:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Danny Lin <danny@kdrag0n.dev>, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Subject: Re: [PATCH] vmlinux.lds.h: Coalesce transient LLVM dead code
 elimination sections
Message-ID: <20200702160420.GA3512364@ubuntu-s3-xlarge-x86>
References: <20200702085400.2643527-1-danny@kdrag0n.dev>
 <202007020853.5F15B5DDD@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007020853.5F15B5DDD@keescook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vQyntSia;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jul 02, 2020 at 08:54:53AM -0700, Kees Cook wrote:
> On Thu, Jul 02, 2020 at 01:54:00AM -0700, Danny Lin wrote:
> > A recent LLVM 11 commit [1] made LLD stop implicitly coalescing some
> > temporary LLVM sections, namely .{data,bss}..compoundliteral.XXX:
> > 
> >   [30] .data..compoundli PROGBITS         ffffffff9ac9a000  19e9a000
> >        000000000000cea0  0000000000000000  WA       0     0     32
> >   [31] .rela.data..compo RELA             0000000000000000  40965440
> >        0000000000001d88  0000000000000018   I      2238    30     8
> >   [32] .data..compoundli PROGBITS         ffffffff9aca6ea0  19ea6ea0
> >        00000000000033c0  0000000000000000  WA       0     0     32
> >   [33] .rela.data..compo RELA             0000000000000000  409671c8
> >        0000000000000948  0000000000000018   I      2238    32     8
> >   [...]
> >   [2213] .bss..compoundlit NOBITS           ffffffffa3000000  1d85c000
> >        00000000000000a0  0000000000000000  WA       0     0     32
> >   [2214] .bss..compoundlit NOBITS           ffffffffa30000a0  1d85c000
> >        0000000000000040  0000000000000000  WA       0     0     32
> >   [...]
> > 
> > While these extra sections don't typically cause any breakage, they do
> > inflate the vmlinux size due to the overhead of storing metadata for
> > thousands of extra sections.
> > 
> > It's also worth noting that for some reason, some downstream Android
> > kernels can't boot at all if these sections aren't coalesced.
> > 
> > This issue isn't limited to any specific architecture; it affects arm64
> > and x86 if CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is forced on.

It might be worth noting that this happens explicitly because of
-fdata-sections, which is currently only used with
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION but there are other features such
as LTO that will enable this and make this relevant in the future.

https://android-review.googlesource.com/c/kernel/common/+/1329278/6#message-81b191e92ef4e98e017fa9ded5ef63ef6e60db3a

It is also worth noting that those commits add .bss..L* and .data..L*
and rodata variants. Do you know if those are relevant here?

> > Example on x86 allyesconfig:
> >     Before: 2241 sections, 1170972 KiB
> >     After:    56 sections, 1171169 KiB

Am I reading this right that coalescing those sections increases the
image size? Kind of interesting.

> > [1] https://github.com/llvm/llvm-project/commit/9e33c096476ab5e02ab1c8442cc3cb4e32e29f17
> > 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/958
> > Cc: stable@vger.kernel.org # v4.4+
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Signed-off-by: Danny Lin <danny@kdrag0n.dev>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> > ---
> >  include/asm-generic/vmlinux.lds.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index db600ef218d7..18968cba87c7 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -94,10 +94,10 @@
> >   */
> >  #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> >  #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> > -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
> > +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX* .data..compoundliteral*

I am fairly certain this will fix a PowerPC warning that we had
recently so good!

https://lore.kernel.org/lkml/202006180904.TVUXCf6H%25lkp@intel.com/

Unfortunately, I forgot to reply to that thread...

> >  #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
> >  #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
> > -#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
> > +#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
> 
> Are there .data.. and .bss.. sections we do NOT want to collect? i.e.
> why not include .data..* and .bss..* ?

At one point Android was doing that for modules but stopped:

https://android-review.googlesource.com/c/kernel/common/+/1266787

I wonder if that is a problem for the main kernel image.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702160420.GA3512364%40ubuntu-s3-xlarge-x86.
