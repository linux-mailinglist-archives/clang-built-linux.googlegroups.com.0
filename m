Return-Path: <clang-built-linux+bncBCS7XUWOUULBB3P7VH5QKGQE7QPVL3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E440274C77
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 00:51:26 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id d21sf3227109pjw.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 15:51:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600815085; cv=pass;
        d=google.com; s=arc-20160816;
        b=nlBmJUVJU+eYz1BKedP3maD2ciA4vgEqhW2Bm14uWa3GqjFUR70sX9zTvKMCYXSTSr
         qqeLV8gMNFxhXfcq5DWeVR3xINJpFZXhjhLKO0FS+Vhd3fzqd66x/eVSSHCEE5zg8bRE
         oC9UxNVBAgtfuKmb2q0ktlGIlRnvwUJv1Kevl9XSEEGGtTkp1qt9qIuWH7kWTs4JN35f
         0IcWY0/LaDKTsfJ0rM3XEvsIc59P5WJtkFGxeNgL2bdWX36BJ4T2QdZocVJRHLBj5oDi
         0ECkl2G0i2XWz0/iq6K3OlmJZKW3SV4YQF0xVJam1Ici9Z2iH1LZ/68Zj+W8Z12RZ8sH
         LxcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zZJiabPNJocleC9CeL/FnDCef0xIdbk1ZdAsfdYqUk4=;
        b=i0ClFj8JxyxlF5qO2qYYYV8dwG1w2gAX69ufYcbyc6Iyk/8Vyyt2XYaIO/pbOEVxpo
         PfHu6q52GQfbo2I8Fv0oeTGfuv3S14SspkHSIbNDFfbqHNhYSBvYRrtfxk3ihpEtSj/d
         +KmffWCFCrbnLKP37r62AHPhLvJes47dVWmZgwo9B8gqvXq3jcY7IDqFTGmMfXsCX45i
         aQFykqG1EnSkvsfFy6bTDw5tiq9qjrEOUmW0+LrDxS3nVoUXsgB3RiFuLyK0KST5AXln
         i6lp+o+pFRyQTJlR4Fd3SgVQFTOHRkdIcf6ln2gk+P6r+Ncu3d2UYrrrFIfaw91oN+mP
         IRAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qh5IURQu;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zZJiabPNJocleC9CeL/FnDCef0xIdbk1ZdAsfdYqUk4=;
        b=Svxkc5FQ9ARGRflJSwal8WBQZLz36QgknRX52eBMiuX2CJP1RJ0t5VTmOnxvZfMW6A
         4fSyZfIBy9fDPTgJP+NMlH5l87cAOGvp6PNcK8+BX555moBix28ZgNV/ZDgV8/+OBERV
         KFK8D0/JZ90XtZs9bCkkLgFh+jTQ1i8xWLLE4PeRI7AlHEs83N10kb5tU2lQh0Q2Rt3h
         j8lU50BZLAB2uPmpH222NG+b3+xj7XeWBZigtZvRddTW4HrB0dT3oJo96grQdC6sZO1W
         z3SQeBkccCxdvK/b6zKy670WcMCgDCt5BDfSzsEsQg8Zd1GplMP670hS60yuXATIcuaL
         9cyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zZJiabPNJocleC9CeL/FnDCef0xIdbk1ZdAsfdYqUk4=;
        b=jt1D+4BkFz8ZtUhV7LAI87arg9dLBWBdgiICdB/j29uVlBeVQraa4yXZCotR0z/g9E
         JQ1t/geb1fOibHw5oxAidUK3VnNVnWzPUlVeuUEYEup2iPLTjTtVc1J/LuW8NIyUw3F9
         n42Legrh6rTYzxv7wRRLba8smKqSJTgl5Gnvae/aZ7HrNKhc5lCWbJIldvLiLumIwctY
         q2fMGXJ+VnI+1C+nbYxHhdMfAiX1llnKmm2cpfpsOk2Ifm0jRGcOBXDdmsP0j8L1FOW3
         6Hp1qF/fFcdm1QXGKcvyOS/MVxFFiHmM7xnZ17wq6ZA1q6rTJ4uaOKmdoe2kdTO2czld
         w5Rg==
X-Gm-Message-State: AOAM532m9MywQ4dJ0YsECaF+Uv2D3HyhYvT6DU/TV5+uSvUaNLEGXL4M
	w2o5VtC/GVoh4r+LR1gQftw=
X-Google-Smtp-Source: ABdhPJyoLLIBIr1TAiqGUacTKxMT8RCqasRbUic36ueqhrtXqy0OGbcG9Jo67fMqwA6vP8CkYthRfg==
X-Received: by 2002:a63:595a:: with SMTP id j26mr5460767pgm.406.1600815085214;
        Tue, 22 Sep 2020 15:51:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls1783029pjr.1.canary-gmail;
 Tue, 22 Sep 2020 15:51:24 -0700 (PDT)
X-Received: by 2002:a17:90a:15d6:: with SMTP id w22mr5733655pjd.148.1600815084384;
        Tue, 22 Sep 2020 15:51:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600815084; cv=none;
        d=google.com; s=arc-20160816;
        b=xZ1hICusi3a7olWrczHi8oPp6ecYWIC+JhyadvjYx4wR+UWbTeaJsYpQIL3v0Yfgh9
         L+fgaKoI58uk4kQxaQSgmXnBoe3tqv27A7OgT1roB5/+IqTVKxHUXJBipNz0nBivXdO9
         akYtLDjjKNUNeJw4I0hFaC5zjNq2iGtcZbeAmbioZKai/Sm5IsGtaQO9XwWh4gkj1/gq
         0DQXsp5kQ0lRigzT+Zbq7hjjvQADidwQU6u2ltigGo7kc+h3XJF+LNdRc7Mot1Wpdqho
         3rTnKeoF5riEklrgKCCxYeU+Y1NnPg9mG6aQAsjvNLpC67yoteE6UziZtlsBtGcJN2K+
         pClg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IKdaDEcsVIu3oT1wCkWL730UzSdl7C5IXKXoqL7V//s=;
        b=IG9BSt6bM1cWy+l8AELwueHijhxWdDcjWNoacXRBpOFmQB0Q3Aeg0iHCYdjeJXzzPn
         Xfm5cy++403dMsKFp2fKoy76p0N5pK+gtVokeGNnXyKH/0CUWyU6oC9Fxl1zC/6ZqtI/
         ZygYgm3jDjDaWbJGcCM2d1Xae/5nqZ5mTIEzmX8GqCR+xz7tLcVRn3I5vG2BGTkXkntJ
         6iV6Tm1bV3HKauJ07jCiBn/aTvGTF3AIsDUQatdYHmlHWO8+wJwnto/+4T1ZjW7jGKIB
         ruRNDerAxPRKr65RP/xkKLfKjnfYDy24XO3wf6Oy/+QkyfhGZ4vnGfdF9ifSHBDz9oLl
         J61g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qh5IURQu;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q125si1218936pfc.2.2020.09.22.15.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 15:51:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id m15so5791063pls.8
        for <clang-built-linux@googlegroups.com>; Tue, 22 Sep 2020 15:51:24 -0700 (PDT)
X-Received: by 2002:a17:90b:1256:: with SMTP id gx22mr5833869pjb.47.1600815083828;
 Tue, 22 Sep 2020 15:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
 <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com>
 <20200922215325.GM28786@gate.crashing.org>
In-Reply-To: <20200922215325.GM28786@gate.crashing.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Tue, 22 Sep 2020 15:51:12 -0700
Message-ID: <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40:
 Error: syntax error; found `@', expected `,'
To: Segher Boessenkool <segher@kernel.crashing.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, kernel test robot <lkp@intel.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qh5IURQu;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Tue, Sep 22, 2020 at 2:55 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Tue, Sep 22, 2020 at 11:24:28AM -0700, Nick Desaulniers wrote:
> > On Tue, Sep 22, 2020 at 9:37 AM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > Yes, and @local isn't new either.
> >
> > The first issue is that arch/powerpc/kernel/vdso32/Makefile resets the
> > cflags that we very carefully constructed in the top level Makefile.
>
> Or, it could be said you are relying on no one else daring to touch a
> generic variable ;-)
>
> > > > A new clang issue ? This code has been there for years and been building
> > > > with success with GNU tools.
> > >
> > > Does the clang integrated assembler handle embedded relocations at all?
> >
> > I believe so, but each ISA may have different levels of support for
> > all of the different possible relocation types.  TBH, I have not yet
> > tested Clang's integrated assembler with PPC.  These are to avoid GOT
> > indirection?
>
> This is the 32-bit @local relocation; its history predates binutils CVS
> (so older than 1999).  It is the same as @local24pc (which is documented
> in even the oldest ABI documents).  It *uses* the GOT (or PLT).
>
> If you do have @local24pc, just add an alias @local for it?
>
>
> Segher

R_PPC_LOCAL24PC is a legacy thing. GCC appears to emit it when
referencing hidden/internal/local symbols. It was invented probably
because a couple of decades ago people think having relocation types
to encode symbol properties was a good idea. This is not useful
because symbol information can change when merging information from
other translation units (a default visibility can become hidden). Such
properties are really the symbols', and not the relocation types'.
ppc64 has unified R_PPC_LOCAL24PC/R_PPC_REL24/R_PPC_PLTREL24.

When I implemented R_PPC_LOCAL24PC for LLD
(https://reviews.llvm.org/D62464 ) I simply treated it as an alias for
R_PPC_REL24.

It is clear that LLVM integrated assembler needs to support @local24pc
.... There isn't even a test case in binutils-gdb.

If there is a @local24pc use case, just change it to @local. The
suffix can probably be deleted as well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3LaxHqpeUu-iifJMC%3DYkYmNXSUyxCbRnSdsMRD-pKwMGQ%40mail.gmail.com.
