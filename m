Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWMU22EAMGQE7B43AYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F1C3EAC21
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:53:46 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id e4-20020a05651c0904b029018bc821fd31sf2423590ljq.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:53:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628801626; cv=pass;
        d=google.com; s=arc-20160816;
        b=I2LAf2CgrqOd0/OlVefzVuTeSAv9Vf0ZNVW7mx13cLGPGyrw8f9S+DW1Pf8ycH2K84
         ozGMqoaV5tigWpZSZVgk+CfBzgliskwQuRC0YA32tbYdxZ09uPWr9RnQHx/TXDej+dJS
         bD00N8NuSdBa7+s4bEy6rKUYpq14zWE6M3icxb6V5joxmQX2uqrwxRq+pkLtrIoQ0sWO
         TOiStxtPsyFMXePHpJQxByuJmoYzNlOR7PddCCgVfkCXiyrVIUBEOHWeawN1e6rHI+Sa
         GxAHByjxfRzH68loMmESFyoluOXdA0+6FnU6dRoCuRzT96QmYVLt4QiPfSHpK1D4IzS6
         HtdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Mb44J78lm+XNYHdhr+ILTCWfTv01HJgxrCCUX9qv8bs=;
        b=I1S9gtUqBdMOoqi4aUw38KZ8lwqjp3WwaZp0fcmOudxDLQT+e8szEUuOgJUKcNhbia
         bJPibMc0ZkcVxDuZIjE0xkKwj6JD0CC4wzJ56izxTcvoi5FZoHCFoqNB+2Ly0Wsipwtz
         lwM4TKW4tN19NRUR+k1whIcIZLoDTqu0DL7/tyrDNqZL+XZQdveK4/v1zV0EczJV7W+D
         jSzug4ryAif3U+z7+0pyx4umoIPCSg4qaWanaCoyvT0t+7dNgCIzizJQF8uDuw1zhu0Q
         BvXGuUPaqb4gMY3lSZW437cdv8U1YD2vCrzgcwr2/59h1krrFfEPHMkW2VBetwnRztN9
         6DDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=na6Fi0rS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mb44J78lm+XNYHdhr+ILTCWfTv01HJgxrCCUX9qv8bs=;
        b=JBOGu+7Q87SdzKC0Jv/2H+iN185CyKl1zDqtyMC91V2CPF2e2Z8CrNRVU47pI/DESY
         WVDlAsSiZH83MKF+G5AM3PDzMu8AfUbY8WQ5vZx8jWShDdI2pZiz4i1uMCr+yXXfNglm
         bwWtbZKV5gNcMbkaKjPHDurpj0litWp3d5LXkd/j+k6F0YFvTmbDHos/QvwkFLCP9SxZ
         iwiUfqz9X3FttIjNt0bCC8MMqYqM0fKxXMYoI8cf4ne9HOa6a6dCFez7STZqSHpO66vA
         8elJLRYPGGy2rUBoK8OGwFcjcX0OTdSGakyfmocsEQnIktwWIwPwSQEyagFngfNe3TRj
         13PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mb44J78lm+XNYHdhr+ILTCWfTv01HJgxrCCUX9qv8bs=;
        b=KnZ67lBwY9fLrOQkYVjy03uJR2Nf2pilwvYaAcgXddbkj3a2ztnid6ZAeuv/Mk0Asu
         uHcFCuDC26j8zAKFFl1VXwXNZRQYQVHIs0ACKAibkMneCQfGblLxeM7byXy+BFTLTwRT
         35nd6fHio8d227kweXDf59eQ3UouDEIXx1B7W3HNu9/vcnkYXijDCgHW0MJmWgy/SzC6
         VdHYHSVSg2Hi+5pOpyHvFmiz7UNMDXjNct8jrW22Ad4D/2zdFerlfAOxjzFJa4ul6WLl
         ziwQUt6iienQNBdUXmNey+xJnnxIcVuPz/v52gMSXenXQvKSNxAIIxcAqFMgBt8JHNu9
         CaxA==
X-Gm-Message-State: AOAM532g08cAMyEbsX1I1vk9cpAq1ZRWMvSZ8AbbPwTlsng7yUiHva7z
	Ff2suBtHbay7vNyaJTwdbi4=
X-Google-Smtp-Source: ABdhPJz9f7OdsevQwGgaG+ezvd6X8GnSRHSp46EuOzgocGhRslNA/Y8LW5+0nn3CIz2SffH8+G1+eQ==
X-Received: by 2002:a19:d609:: with SMTP id n9mr3859521lfg.198.1628801625975;
        Thu, 12 Aug 2021 13:53:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d43:: with SMTP id y3ls1211777ljj.4.gmail; Thu, 12 Aug
 2021 13:53:44 -0700 (PDT)
X-Received: by 2002:a2e:824e:: with SMTP id j14mr113349ljh.77.1628801624872;
        Thu, 12 Aug 2021 13:53:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628801624; cv=none;
        d=google.com; s=arc-20160816;
        b=UroRbdIbF9a2uYOzNG9Lzt45tRSywJPmfDuoPCzdL35/ph0ja9nFfX6KTkqaZ4eP0o
         si3k2MeuvpOSBbGKi5e46wRynu8XChZ5IKQHI3kGAxjOL3qbhUksJIMKrwOt6kp+8guq
         jWsnMvxWOxC5yaNSIqsjwgM9HH3LXELIERU58+SNaCnYZXUpIxM+SghoZzyQdaBSPwEd
         pLlGGVXFg7G0BUCmsCse2V8/u2b5n5dhDO0QvHJUcFLdHSmjpWsTfF9SuWLjZ9rR5OdX
         Rmtw41f17EsVyUr9fyABMaT44cYCnMD7YlPN3j1KTwzKVBUwwPQe65GdaaY7iRXNf7VY
         ZDJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9RfJTrGHwJUwvzLhHrIbGQA08huI6dzioQ3vdmozHz8=;
        b=qjve+CSjBlleFpwviA36DXVjXEOFRRG6KdP6tAAsFyQbkHW43UFVngDjDO+bGa+jmQ
         YLfJLZ19uilwrZuXB643HJ48Hx7tqfFElPDoExrZYTHDxbywneKuvzOJ9cuiASzmD0d3
         Q8P+n4MAjv5NybyoqKvFjxeLASdpXB3Iqoluczvznw2zpAz91Zf5Z31yvK//9TOv/uuG
         P9bx0m8+oOHJw7O6NuYU6zmj6dZ6UR/SI9AMfGTNNDgV7O0QmAOnKx25c3Pv/Liv6HdI
         IzwfZZ4Gxo5ZnFYFONIDbTjQM73OIRopTHGxurjZt7m2mz5rbLF7Hqs4k5zAiWM993Xj
         ABEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=na6Fi0rS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id p17si230205lfs.8.2021.08.12.13.53.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 13:53:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id d4so15782185lfk.9
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 13:53:44 -0700 (PDT)
X-Received: by 2002:a05:6512:3989:: with SMTP id j9mr3957811lfu.73.1628801624318;
 Thu, 12 Aug 2021 13:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210812204951.1551782-1-morbo@google.com>
In-Reply-To: <20210812204951.1551782-1-morbo@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Aug 2021 13:53:32 -0700
Message-ID: <CAKwvOdm8R1zh-NPCRZX=_BZhUEey5v=0jjz=ca82tzMn2kFqYg@mail.gmail.com>
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
To: Bill Wendling <morbo@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Nathan Chancellor <nathan@kernel.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	itaru.kitayama@riken.jp
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=na6Fi0rS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Aug 12, 2021 at 1:49 PM Bill Wendling <morbo@google.com> wrote:
>
> The "-z notext" flag disables reporting an error if DT_TEXTREL is set on
> PPC with CONFIG=kdump:
>
>   ld.lld: error: can't create dynamic relocation R_PPC64_ADDR64 against
>     local symbol in readonly segment; recompile object files with -fPIC
>     or pass '-Wl,-z,notext' to allow text relocations in the output
>   >>> defined in built-in.a(arch/powerpc/kernel/misc.o)
>   >>> referenced by arch/powerpc/kernel/misc.o:(.text+0x20) in archive
>       built-in.a
>
> The BFD linker disables this by default (though it's configurable in
> current versions). LLD enables this by default. So we add the flag to
> keep LLD from emitting the error.
>
> Signed-off-by: Bill Wendling <morbo@google.com>

Link: https://github.com/ClangBuiltLinux/linux/issues/811
Reported-by: Itaru Kitayama <itaru.kitayama@riken.jp>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> ---
> The output of the "get_maintainer.pl" run just in case no one believes me. :-)

LOL!

>
> $ ./scripts/get_maintainer.pl arch/powerpc/Makefile
> Michael Ellerman <mpe@ellerman.id.au> (supporter:LINUX FOR POWERPC (32-BIT AND 64-BIT))
> Benjamin Herrenschmidt <benh@kernel.crashing.org> (reviewer:LINUX FOR POWERPC (32-BIT AND 64-BIT))
> Paul Mackerras <paulus@samba.org> (reviewer:LINUX FOR POWERPC (32-BIT AND 64-BIT))
> Nathan Chancellor <nathan@kernel.org> (supporter:CLANG/LLVM BUILD SUPPORT)
> Nick Desaulniers <ndesaulniers@google.com> (supporter:CLANG/LLVM BUILD SUPPORT)
> linuxppc-dev@lists.ozlabs.org (open list:LINUX FOR POWERPC (32-BIT AND 64-BIT))
> linux-kernel@vger.kernel.org (open list)
> clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)
> ---
>  arch/powerpc/Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> index 6505d66f1193..17a9fbf9b789 100644
> --- a/arch/powerpc/Makefile
> +++ b/arch/powerpc/Makefile
> @@ -122,6 +122,7 @@ endif
>
>  LDFLAGS_vmlinux-y := -Bstatic
>  LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
> +LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) += -z notext
>  LDFLAGS_vmlinux        := $(LDFLAGS_vmlinux-y)
>
>  ifdef CONFIG_PPC64
> --
> 2.33.0.rc1.237.g0d66db33f3-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm8R1zh-NPCRZX%3D_BZhUEey5v%3D0jjz%3Dca82tzMn2kFqYg%40mail.gmail.com.
