Return-Path: <clang-built-linux+bncBCS7XUWOUULBBKEPWGEAMGQEEDDE55I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A3F3E1D3B
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 22:18:49 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id 21-20020ac857150000b029024e8c2383c1sf3315472qtw.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 13:18:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628194728; cv=pass;
        d=google.com; s=arc-20160816;
        b=htimIs2rAXwtOk9mPcJ0CeOmgDBGhReaGnyKehrLIefqxqibepNFBVGda9uYNf97kB
         T0lWhivCnL8mD7Tbdz7chysDJeMJ4i+lWHwzs05b0MGKkclNZx2HiIM7TEX9h0KfIIe2
         0+eEerSpY6OekGa5FroK3+GsjybeqqT3BXuIyFVUU5CFZYLHJgp6t/oQZ64hkrepdsMQ
         F4bt59QwYScgtlugMVQmTq8ZaxHQIvGh/za2Bsl83ElOd1TjzeyenHWKMyGWAL609UHp
         9r6vwchPqWW/kh6XfR0uaGuihenqTWLdM7rfTdQazbPlimPbqCAUjr/IAblcg3bpLrSX
         ie+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4bAqPMkqdk7WQIS8NBsAuGGRl7v8v+2QYm0BnB9Nm5E=;
        b=X2nLB1mX0bFzWyF2h/5vwPraj2mN/ciYohjyPaGqipxWQuutBtxVHirAzGzyHTGYZN
         G7aqzUG81IZ2zSzxr62FsyGUQVc9AUhGfqnXUkDWgqI9NC1FO4TpE8A3tjkMEgyLCeT0
         /lrGQzrUnqT2LDvWDWTsEtQgdmraMuk/eGyhUe9AYAlPxKjmMCghTPnd+nbC/Gew7Xgs
         1O5VgnW3+dHqbJfXZOLbIJku8i3ngh8RFwE9/4Jr6nXUvb13Ji8dPMf6AZv+Jp+VIEyz
         6rVXbzSWycNr9/rnhWI24qMREt9fXz+GgQgFH9AmSNAeXvBVXt7iyLL4V2/1icfzF1Rp
         b+PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fTzB+Gj2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4bAqPMkqdk7WQIS8NBsAuGGRl7v8v+2QYm0BnB9Nm5E=;
        b=eOg6OFrwt+4QTjCgMdQfDEnZWmnf+WxhbmsmCsRW3yvdbFqDfRMsoJVXGnXtblqLNf
         jPyY7LsryF+EdkZNub8e4h9JYt8KL6LMvgPeVE1VrwhZVRMxXe7Unh8hQx1C9C/ul4rY
         NdXtfUbcX4VLW5PWoOaHCCpx6fejpaVJW564mjPly1hlaf6CiDBfQVwvt5ko0+yQW+Iw
         1nHREMUjdaG6CgO1ujTZieCvcwXtTray7USyzGwov2VZZcMq+pBymYDvnBDET6Zl26bk
         uvizlBnOMnTcTjxr6k5VrnJuS1pCsvmuvu4ATbNtIN+kWSg1DLV3loEX0+YEVL74v56W
         wX3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4bAqPMkqdk7WQIS8NBsAuGGRl7v8v+2QYm0BnB9Nm5E=;
        b=sR5v0hbXaCOcVNKwaYLYQ38Rlmmojfj2TVtYIPK3RyJ2Brm0ufQPY122EA4kXA3R7q
         GeMLAmc1MUfZJymgVUX5aWhLgvBXv7PJPLcb1uxmO1j8fe3QqG2M6FKEYHMEXISw3Wf1
         U92WM1jngEOC+Bpp/9H8lVySgA5DzQfMaD1R5nfPLwmceJQ344uoT7vVl32iYHh9dbMp
         xrHcMneVhY/ru4YE5xdNS1mckxslALzgCGTDh6NPJ1JfhthC0liZrNDZfLzhTAJZEK9F
         vC28OGhijAPnZwUdHCzkmmSthTzBPkzl/17UGGA3CbglC2SkfILLlfLT4FEJT4aDNjWN
         v2aA==
X-Gm-Message-State: AOAM531GpQkalIb+nDIDR5od/LRO3meTa9sFfH8RcxRXJ5hSvsYXZVyx
	rvmsSEtVpBWXZ/wNNAG8iwE=
X-Google-Smtp-Source: ABdhPJxZAvQXK6J3WHuK8r18GgP1FdpH6o9fFE9l7VrPF7yID8vy3/cZyRpINHPdAGAYRfoYGVfE7A==
X-Received: by 2002:a05:6214:1c47:: with SMTP id if7mr7364868qvb.6.1628194728812;
        Thu, 05 Aug 2021 13:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2:: with SMTP id j2ls4006155qki.8.gmail; Thu, 05
 Aug 2021 13:18:48 -0700 (PDT)
X-Received: by 2002:a37:8d86:: with SMTP id p128mr6830246qkd.31.1628194728342;
        Thu, 05 Aug 2021 13:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628194728; cv=none;
        d=google.com; s=arc-20160816;
        b=l/a94TUFxRZpwuAbWM++aAhCa6bbhEXc7jfp2Pv3mDzLOYZwlg82aqWDVsUzc4rk+j
         5V00IjuvU6lyiRNsdoTUWGMDsp3oIh3ONxPlWTKUkrUTngveIBhkduyQXGgeyy77QlYA
         Om8T0WD5cDDaXwF/MkeZta4Srm3RqdyCd6fwjS+1cpHywbbazM6lzmiEA2vdRZMvc0LB
         dW4hU7IZNtR+5NJZcHaXyXVY9S0POrtnFR3PLqqi1qkeMbQhCnKU7J6wDYbXk4hbP8O8
         3umNd/fukTyqc+5VSCqnwOcYdRUaJCH9yTHXSuPq13MHDDzMxZ7m2imTWu2NA2w55J8o
         bU4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fH0vxxQHAvzuSfmPIutM3W177fww1jHGdQnX9bRhvaI=;
        b=k/6QgVFmWgb+0bUDR014eAlCJ/xfVCZCvTaDgCpoyo3PLrMWIayQqq3dY9Z6za/jH8
         BEeftmNkp8Nqk96FOlrIg92y+OCxxJ4RBFlzCRzonL8Vd3+JUc1A1vRqwQ1WJHkmI2am
         0I8yDhDfine9RNQLavICjcfn8uzvMy3Z/7wlqGppxUCHxh67hm0y0rZynHahQTSH9lhD
         t/xWODDoON3ZYoNCxAEARIx3zFg4jXE+j9BOxKs1kBZodz8lxUkShpzYYKrz+TGkjEue
         /oZhJn1lCAgudaqVHUObholU2mmXis6p9RlpsTPIhUF6dVSxzGQx7LxZ3NSbweyEUOGE
         hoxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fTzB+Gj2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id s29si212741qtc.5.2021.08.05.13.18.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 13:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id b133so11085683ybg.4
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 13:18:48 -0700 (PDT)
X-Received: by 2002:a25:c9c6:: with SMTP id z189mr8306492ybf.322.1628194727948;
 Thu, 05 Aug 2021 13:18:47 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-4af8be52-7620-478b-bf69-73306a2ffc3b@palmerdabbelt-glaptop> <a6615b69-d99f-220b-d980-1f5f40ee2999@gmail.com>
In-Reply-To: <a6615b69-d99f-220b-d980-1f5f40ee2999@gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Thu, 5 Aug 2021 13:18:36 -0700
Message-ID: <CAFP8O3JKw5CHiYwM3Pqj5w3vnib0UW2PEs8HRBORci9dSAXwwg@mail.gmail.com>
Subject: Re: [PATCH 1/3] RISC-V: build: Pass `-mattr` to `lld`
To: twd2 <twd2.me@gmail.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, 
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com, 
	masahiroy@kernel.org, keescook@chromium.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fTzB+Gj2;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2b
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

On Thu, Aug 5, 2021 at 1:12 PM twd2 <twd2.me@gmail.com> wrote:
>
> Sure. I'll send a v2 after the LLVM issue is resolved.
>
> Thanks!
> Wende
>
>
> On 2021/8/5 4:59, Palmer Dabbelt wrote:
> > On Mon, 19 Jul 2021 14:14:59 PDT (-0700), ndesaulniers@google.com wrote=
:
> >> On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
> >>>
> >>> Pass `-mattr` to `lld` so that it can generate proper machine code.
> >>> By the way, it seems that `-march` does not work well now.
> >>>
> >>> Signed-off-by: Wende Tan <twd2.me@gmail.com>
> >>> ---
> >>>  arch/riscv/Makefile | 7 +++++++
> >>>  1 file changed, 7 insertions(+)
> >>>
> >>> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> >>> index bc74afdbf31e..bbc186a3ab45 100644
> >>> --- a/arch/riscv/Makefile
> >>> +++ b/arch/riscv/Makefile
> >>> @@ -52,9 +52,16 @@ riscv-march-$(CONFIG_ARCH_RV32I)     :=3D rv32ima
> >>>  riscv-march-$(CONFIG_ARCH_RV64I)       :=3D rv64ima
> >>>  riscv-march-$(CONFIG_FPU)              :=3D $(riscv-march-y)fd
> >>>  riscv-march-$(CONFIG_RISCV_ISA_C)      :=3D $(riscv-march-y)c
> >>> +riscv-mattr-y                          :=3D +m,+a
> >>> +riscv-mattr-$(CONFIG_FPU)              :=3D $(riscv-mattr-y),+f,+d
> >>> +riscv-mattr-$(CONFIG_RISCV_ISA_C)      :=3D $(riscv-mattr-y),+c
> >>>  KBUILD_CFLAGS +=3D -march=3D$(subst fd,,$(riscv-march-y))
> >>>  KBUILD_AFLAGS +=3D -march=3D$(riscv-march-y)
> >>>
> >>> +ifeq ($(CONFIG_LD_IS_LLD),y)
> >>> +       KBUILD_LDFLAGS +=3D -mllvm -mattr=3D$(riscv-mattr-y)
> >>
> >> We should prevent the proliferation of the compiler internal `-mllvm`
> >> flags from Kbuild Makefiles; these are indicative of LLVM IR specific
> >> issues with regards to LTO.  Can you please file a bug against LLVM
> >> that `-mattr` should be encoded in the IR for LTO's sake?
> >
> > Works for me.  I'll hold off on taking this until the LLVM bug gets sor=
ted out and expect a v2 (ideally with the other textual changes Nick sugges=
ted).
> >
> > Thanks!

For GNU ld compatibility: -mllvm -mattr=3Dxxx =3D> -plugin-opt=3D-mattr=3Dx=
xx

Which can allow us to drop the CONFIG_LD_IS_LLD condition.
(gold doesn't support RISC-V yet.)

Note: LLVM LTO + GNU ld support is experimental and has very little testing=
.
To actually make GNU ld work, we probably also need to teach GNU nm
and ar to specify --plugin LLVMgold.so
https://llvm.org/docs/GoldPlugin.html


> >>
> >> See also:
> >> commit 0236526d76b8 ("Makefile: lto: Pass -warn-stack-size only on LLD
> >> < 13.0.0")
> >> commit 2398ce80152a ("x86, lto: Pass -stack-alignment only on LLD < 13=
.0.0")
> >>
> >>> +endif
> >>> +
> >>>  KBUILD_CFLAGS +=3D -mno-save-restore
> >>>  KBUILD_CFLAGS +=3D -DCONFIG_PAGE_OFFSET=3D$(CONFIG_PAGE_OFFSET)
> >>>
> >>> --
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/a6615b69-d99f-220b-d980-1f5f40ee2999%40gmail.com.



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3JKw5CHiYwM3Pqj5w3vnib0UW2PEs8HRBORci9dSAXwwg%40mai=
l.gmail.com.
