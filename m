Return-Path: <clang-built-linux+bncBCIO53XE7YHBBWH6UOAAMGQEGHV5HBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id B68B22FE06E
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 05:13:13 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id i82sf1038619yba.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 20:13:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611202392; cv=pass;
        d=google.com; s=arc-20160816;
        b=MlFph2wLYiaIlXWU1q3Vs0kcm1p6PY6h63i+E8ArGiSOjj022Nxu44Vcctq6Olb2B1
         88lmuyTVtyC5CZELJDF8VkGlelUs4zb3dZ+Y+v055YunDUiINbO6lmLpy2i9CwwK4EKV
         FIVRA1rMnzdxpSLvW3cStZlOaLkRX9HqvN4muGdrcpacQxdpEgdcB78s5Bnm+EwtJoIF
         4YGhzvBGqHjn/3reWXCFC5+QNWO9EaNVUdKDNdcc/Q1OusFm4CPMTozQCSpYSuCeNxbq
         TpqIqXuSp539uvrWdS7ko19unwIV6vxidlah5DPbAd37jAOK0RRSZ/HrZKEB9DVBng/H
         T4Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=By2RjaoqWMzPIWRe26s4DHUFyuBWsgpb/Gm+M15RBKA=;
        b=x+LVdoPRDxPy7e8bEqa2/ykkdb4LOLF35ARS/vE9Nhmqw/vEFdWKAXWfVhfw9iMX+v
         7ZHoI30nLjLjpgoNPnn71a6C/62I+hzdzfeyGumychUMDIRoJ/4rkATA1MH1Q+xg0Or7
         Kl/S5trURv0HlCrM+XmyW/oaWAJ3iXRH/sgegu9TOK9+KVGt94owttfJGx5JklrO9m6j
         sSWQBr3i8HTSV7aB9CRVkiFBu9Y43tLgaaleYPfiOZNhuFOtCa/RlsOzDyI28WppWrRu
         leL/gIUeoUHdSPWwgr77994Wga7IHK/grl4/s9J9WsvgY4jHzDZBwPcj/rrO3rS0YF29
         +UVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.45 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=By2RjaoqWMzPIWRe26s4DHUFyuBWsgpb/Gm+M15RBKA=;
        b=rXBtW//uE+P2mjVZ487pvw5O5Jz4j9K8sWZGxGRltMIA8htXoH0l04hCjuttZ/j+Vh
         NInfXqIsnEYYp127s7J5XyylrzJ++nVo2hXyUzcZnm9J78XD3/T3c/RtQIF7vd/SAZPg
         nfToW09fHNH8G3dYcYBjRJG7N8uJYxwq7e+SAayv/QgL6/AMpxq+WYLig25EG9gDg4n3
         nbGLxCtuk+OFCJ6/Xd50zNL7QRe8V4wo++cS3PKti/Eemq4ePyiacIZRRA7OcJjz87+n
         kJ+PSAHEXYiysXEH2wnAIgcPRPQbcLiC55ird2mc5MTe+sa4IrOxGZcJfQ4Y+yQgg439
         2csQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=By2RjaoqWMzPIWRe26s4DHUFyuBWsgpb/Gm+M15RBKA=;
        b=qeIbxywGRaEMZA+QgI5jzhsBN2aSXDtb34LqD3MM+U4PnSDkmUtJUV0FVUnvkFc4Wu
         22tn+Dqj/P8iydv/45Km5FKOvpm8js08ERcttz95MJ/+LhS57m84G9O4e8wIQkkpEGcQ
         BZWjeAHEA0VA6yMwvVGMCB3ptTf2m3ci4sEbUzX1qWCz22MSkd6aepucbW1z91Iiq/xq
         Kv0+II+z9b4ulEZxb84lmCaItzRX3QbBEb0MzCUCSuuBzPbMR3C/QJAdaEE8uU8I9khU
         gdYM/6/YfRWKmVgyPzde3Pivt7Tj/KoJ+uc0byNAzBHCrFBEujsp4hNLr96xgY+2Ntzb
         yXdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BTzAnr0gjNHDF3Cx0wVKxwMcjYg/CZbHrMsqSArdz8aWVi5G/
	fXYCbOf4PYXSo1VSgNfplm4=
X-Google-Smtp-Source: ABdhPJwtLt9J0SkIv/48XirzG5+g5e9KlBiDyiJ+8JZBEM1Uuawy3NqJIDaMpG5rous4p3BCU9rVRA==
X-Received: by 2002:a25:a86:: with SMTP id 128mr16976384ybk.370.1611202392777;
        Wed, 20 Jan 2021 20:13:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:af4a:: with SMTP id c10ls585069ybj.1.gmail; Wed, 20 Jan
 2021 20:13:12 -0800 (PST)
X-Received: by 2002:a25:c142:: with SMTP id r63mr14610374ybf.468.1611202392207;
        Wed, 20 Jan 2021 20:13:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611202392; cv=none;
        d=google.com; s=arc-20160816;
        b=DJ2pYxdrM8zhxU6QSOsss6H9JiSUcWqblFuRNNnmK8wVs4UPw3JX/CEKRQ6jjyH5n1
         JHgEj00bvddPghfCSK7/o1wWkLWJdG3K2nl4EWSBxtC2Vm2r0scvvRN3GQHY2sP11nGr
         wIVvND5BjbIl4xdj2q2IBY/TWzutS6Z/NJ1Wvm8UjgZVColK6cJjBE/Pt+1WYRSoUGB5
         uLDX9tuR1qIkdGj2Dt5v8t4gMb8Je+ESsDZkL7o0oJqZA/hrh/r2MRez7tIy0jNxQOQs
         cUPs+JV4ucMuxtDzCOm5SpHqajFJEexUxNTqVs3JYWNzUQ52dDQ29i8SG7rVEIZgdjbL
         EFLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=/GxYCwQekjVANlz32F4JHqDbGSsg+kfB2KriX7RGiqU=;
        b=L7n0WsT/9Pz8UelKuJ9xh8J02ANqpaygVbp8lZNAxJGJqQzcXsBm/6daZmREobqOvV
         VXDuaJGYtjcH+w5PdEJZNjHpu2MK37lkBJ9i3ydMSThg1wuSVl82M162DxVY9WyPYF50
         h0iWgpR9ERJJky6kicMk1qhd1g4L5r/VMhQ6Q6yE4Et7G435asX0mqYD+SKsxiHkN2VA
         OvxkKj/KKyTvNm65WYANy7MIVF79ZPU2h+Sbdu16+QyxXxPi5hG23L0ahQacuhpGcUcL
         iwZ2OfWjFWpRiaWJpqxgsM+HAiRjKg63Sdj7qorlde2Vf/Xta2adkM8XPSbN+pkmvgqF
         RFlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.45 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com. [209.85.219.45])
        by gmr-mx.google.com with ESMTPS id k19si349615ybj.5.2021.01.20.20.13.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 20:13:12 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.45 as permitted sender) client-ip=209.85.219.45;
Received: by mail-qv1-f45.google.com with SMTP id a1so326627qvd.13
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 20:13:12 -0800 (PST)
X-Received: by 2002:ad4:43ca:: with SMTP id o10mr13067342qvs.25.1611202391578;
        Wed, 20 Jan 2021 20:13:11 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a206sm2895021qkc.30.2021.01.20.20.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 20:13:10 -0800 (PST)
Date: Wed, 20 Jan 2021 23:13:08 -0500
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Adrian Ratiu <adrian.ratiu@collabora.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Collabora Kernel ML <kernel@collabora.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
Message-ID: <YAj/VBzbRaBy7zLv@rani.riverdale.lan>
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com>
 <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
 <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
 <CAKwvOdnVwkxQTQ-LkdZi4pFWTMg6d0Lddddp=j4pCEh-JT-34Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnVwkxQTQ-LkdZi4pFWTMg6d0Lddddp=j4pCEh-JT-34Q@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.45 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, Jan 20, 2021 at 03:09:53PM -0800, Nick Desaulniers wrote:
> On Tue, Jan 19, 2021 at 1:35 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Tue, Jan 19, 2021 at 10:18 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > > > index b99dd8e1c93f..f9f3601cc2d1 100644
> > > > --- a/arch/arm/lib/xor-neon.c
> > > > +++ b/arch/arm/lib/xor-neon.c
> > > > @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
> > > >  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
> > > >  #endif
> > > >
> > > > +/*
> > > > + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> > > > + * compiler does not produce vectorized code due to its cost model.
> > > > + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> > > > + */
> > > > +#ifdef CONFIG_CC_IS_CLANG
> > > > +#warning Clang does not vectorize code in this file.
> > > > +#endif
> > >
> > > Arnd, remind me again why it's a bug that the compiler's cost model
> > > says it's faster to not produce a vectorized version of these loops?
> > > I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8
> >
> > The point is that without vectorizing the code, there is no point in building
> > both the default xor code and a "neon" version that has to save/restore
> > the neon registers but doesn't actually use them.
> 
> Doesn't that already happen today with GCC when the pointer arguments
> are overlapping?  The loop is "versioned" and may not actually use the
> NEON registers at all at runtime for such arguments.
> https://godbolt.org/z/q48q8v  See also:
> https://bugs.llvm.org/show_bug.cgi?id=40976#c11.  Or am I missing
> something?

The gcc version is at least useful when the arguments _don't_ overlap,
which is presumably most/all the time.

There's no point to building this file if it's not going to produce a
vectorized version at all. The warning seems unnecessary, and it's not
really a compiler bug either -- until we agree on a way to get clang to
produce a vectorized version, the best thing would be for the neon
version to not be built at all with clang. Is that too messy to achieve?

> 
> So I'm thinking if we extend out this pattern to the rest of the
> functions, we can actually avoid calls to
> kernel_neon_begin()/kernel_neon_end() for cases in which pointers
> would be too close to use the vectorized loop version; meaning for GCC
> this would be an optimization (don't save neon registers when you're
> not going to use them).  I would probably consider moving
> include/asm-generic/xor.h somewhere under arch/arm/
> perhaps...err...something for the other users of <asm-generic/xor.h>.

We can't directly do the patch below since there are other users of the
asm-generic/xor.h implementations than just the neon file.  If it's too
much work to check and add __restrict everywhere, I think we'd either
need to copy the code into the xor-neon file, or maybe do some ifdeffery
so __restrict is only used for the neon version.

> 
> diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
> index aefddec79286..abd748d317e8 100644
> --- a/arch/arm/include/asm/xor.h
> +++ b/arch/arm/include/asm/xor.h
> @@ -148,12 +148,12 @@ extern struct xor_block_template const
> xor_block_neon_inner;
>  static void
>  xor_neon_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
>  {
> -       if (in_interrupt()) {
> -               xor_arm4regs_2(bytes, p1, p2);
> -       } else {
> +       if (!in_interrupt() && abs((uintptr_t)p1, (uintptr_t)p2) >= 8) {
>                 kernel_neon_begin();
>                 xor_block_neon_inner.do_2(bytes, p1, p2);
>                 kernel_neon_end();
> +       } else {
> +               xor_arm4regs_2(bytes, p1, p2);
>         }
>  }
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index b99dd8e1c93f..0e8e474c0523 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -14,22 +14,6 @@ MODULE_LICENSE("GPL");
>  #error You should compile this file with '-march=armv7-a
> -mfloat-abi=softfp -mfpu=neon'
>  #endif
> 
> -/*
> - * Pull in the reference implementations while instructing GCC (through
> - * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> - * NEON instructions.
> - */
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> -#pragma GCC optimize "tree-vectorize"
> -#else
> -/*
> - * While older versions of GCC do not generate incorrect code, they fail to
> - * recognize the parallel nature of these functions, and emit plain ARM code,
> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> - */
> -#warning This code requires at least version 4.6 of GCC
> -#endif
> -
>  #pragma GCC diagnostic ignored "-Wunused-variable"
>  #include <asm-generic/xor.h>
> diff --git a/include/asm-generic/xor.h b/include/asm-generic/xor.h
> index b62a2a56a4d4..69df62095c33 100644
> --- a/include/asm-generic/xor.h
> +++ b/include/asm-generic/xor.h
> @@ -8,7 +8,7 @@
>  #include <linux/prefetch.h>
> 
>  static void
> -xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
> +xor_8regs_2(unsigned long bytes, unsigned long * __restrict p1,
> unsigned long * __restrict p2)
>  {
>         long lines = bytes / (sizeof (long)) / 8;
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAj/VBzbRaBy7zLv%40rani.riverdale.lan.
