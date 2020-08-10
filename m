Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZFFY34QKGQE4EEGL5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B391240D08
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 20:33:09 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id r9sf6018433oie.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 11:33:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597084388; cv=pass;
        d=google.com; s=arc-20160816;
        b=wcxChpzLFyezyMsuUiO3ewvp9f5Tn6njMt2bYTy0Gln6WBIyN710KC4vG/TLxCbt+F
         bTVXh1ptEtIePPhwqucDptEDCg8EUTqWTlJdcmdZvc7kYv9iRvLN8+qB1k3V4pYlTgGF
         FnznLhZtEwvu3QlXEP2A7DIE7MSJPq+87/gpqPx5K9R8gzhJozodb9k9rleszxQYZpgk
         CvARIJhU9oIHSWEUmwCRocP6QekI04+FY1dnOtbcYD7zYajO0Bbyrx6MHTaIZVyc7PsF
         U4pRGB2AzrxopnaxjVN3Zc29mVAY+vfe47AYxqZhXiH7fCdBqcmWKxXVEp6qMEaI3g+p
         pSNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SqL1KrkxUPWmg16jri1G7xjVf6aNHgg/ExW2CgiqKJE=;
        b=HJRR8t+qEKxxSayyZR+wdcxi5Aum3gK142CiTx5Iu0rhnX+2Btj4hf+9UmvLYLvi7r
         cj6iOJVy51Fv97G4O9iKwx50LaXQJOQMBHAtFo8yOOfd512mHZBYmp0uwJyQauk/+vFC
         PM2YKmc9YoX5QqClNrmw68qmRy4azFXzfCyWjQHq8r3//afudrBP5ls6VfbloEXp2u9E
         HIgatX4QM5qSTRi2u98Eca65k+35iIixE/gt6qIBDRNiGL9FKN5M6CchvfzqvIzr8IkC
         o5eF4XnTuQjXKm4jONkt1jc8akFEAkdkTbYUhJbfo/ja/x6lTKVvfbDr5KrukwwL1Sdg
         0lng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nUJZ+7e+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SqL1KrkxUPWmg16jri1G7xjVf6aNHgg/ExW2CgiqKJE=;
        b=qCxht3WwLFGgFhE9UBQJPfR5P9XjEjkbh7dMmRrfWeQJIoHMvvzx9roSCUP+bF+waw
         8bxy32AcM9LjE3/VP5hVJnXiTA16gXG87aJppCILeQ9iEe5Xqe//FWOtDtNR9o890JVc
         dIyqpxer1JkEK89a+4I47jbLhC3oB/Dc+17DbZstTiQPhl1jVzNT/JjYSUEf3LQilFU3
         xmSK8pdsGvKTUMMESoRRDNI/egAXDJVM5CObj2JsQzarPvSULl876h94/QzYnhyA7NGu
         gNfiK1YhtysZI1WIhjTCyHLuWsmLuHsL/FFdXoQTLyQZvzuB/i9ZDv7M+kIFsDXrPQCk
         TyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SqL1KrkxUPWmg16jri1G7xjVf6aNHgg/ExW2CgiqKJE=;
        b=NmmiK+0+eHYFmnXoPklE/sCsQvEbbFjdbqlK/mcD5I0Nurvq6WvnTg6R0OLUp96jjA
         /JGaJciyk70oy8YD+9qW2Jtzp8THdriDBw0i3vwUCrDK7CwTiWj8LJ2ziIbuKN0CnkQi
         XMMxDU7ZbtDaXdod20djv5vUMIUjOnqbKReZkWY1JL4Vjp6nYnEo5GyWuXo8TrFWlrJr
         URnp3UngGA1rd7pyt7lGCQ75ReTrt/BOZI6SH9KGpEpc5mQDMGHKMW/O114/v9KGPEP0
         pFG0v6tpoWvtfYUkYtFxhOauSI/JkUE0Ux/+BTAzeXsj8vz/C54j9AVVluq1cv5M9PVC
         R0Ww==
X-Gm-Message-State: AOAM531zNQsQyB9VnQPKs3IxVx4ihzx9NcT4iHWWX/+NCcFJFHS9iT4b
	9q1/lj3D8gc7VzOFFFT4i9s=
X-Google-Smtp-Source: ABdhPJyjQaRcl2mnrNCR9JhHukKRt2tdOSpQM2mrut/aqRrCD8TjIN3ktjsVbXJnQkzU95niVMfZ/A==
X-Received: by 2002:a05:6830:231c:: with SMTP id u28mr1800000ote.8.1597084388145;
        Mon, 10 Aug 2020 11:33:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d09:: with SMTP id 9ls3801007oin.6.gmail; Mon, 10 Aug
 2020 11:33:07 -0700 (PDT)
X-Received: by 2002:aca:190c:: with SMTP id l12mr458267oii.147.1597084387837;
        Mon, 10 Aug 2020 11:33:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597084387; cv=none;
        d=google.com; s=arc-20160816;
        b=HXsqsZF+u0dmJtnQI1RBdzctPosT2uAB/NNobkyAAm6KnNdCk1/LP+BnJF2KDjwr7X
         mIihvVI4u6++k+JAMz5fBelMGOClwvgtWEpPt5x9W+spTAzcoUgkjpeKSxMY+jiXEFtf
         6OXrgzMnGBJuWQ2QQ/WX06d12lGeSb6BrBV08JSiBHlBN4VVKJzs+TD/vh/dAJH9JZA9
         bpeVyQURx89DXb7mHc7B7anhPfy3L42cIQbwzbmrWYBcLw/cXcty2X5utQxfai7aAlYo
         D1ZikOytzrujIP7IdIdhTYKQVKSjurCvtodKuEp1qj0YoCGjWkndqrRC/n8TcM4q7Gh/
         cGOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ut33wnU3evyQXWlinpE8dvgKmV5UI4ScBRUoelbVE5c=;
        b=LBt4n4AGyN/4Zxyb9TzEcXyhzbfW4RKV3skuDGornEsoB195tfubAh4EwN4DQGYgfT
         M9ajRPQ22GnbBmieOmzsGPIVFrWicN23FYgx4WSvoC1T73ZxHzh2nOkmuvqInhOqmg+j
         HlOvh0B79i4mC1+FBR0gMFB/0Rpdo2WxlPT8jpXMKKPqIZbAzABrxjiucohI9MXnUKX+
         1e/9zTpYIz9vXydysuvLqm90ZoI6WVwNkrrtqAP8VRQxzZCYSJOpax8/zh7r3Dt2p7DV
         ZMMrHNA3jOoFKkPYV7p2L49CTunlUJCd/7+9hEk2bS1AmXzewgPdxn5G4hdaBYzRIhc5
         7oOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nUJZ+7e+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id c199si958733oob.1.2020.08.10.11.33.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2020 11:33:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g19so5487941plq.0
        for <clang-built-linux@googlegroups.com>; Mon, 10 Aug 2020 11:33:07 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr639051pjb.101.1597084386868;
 Mon, 10 Aug 2020 11:33:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200807194100.3570838-1-ndesaulniers@google.com>
 <20200807212914.GB1454138@rani.riverdale.lan> <CAKwvOdmD1OMnYE55O+YUkAh+C4Der+2CqKd7JVzfr0+6hYx6jw@mail.gmail.com>
 <20200808014327.GA1925552@rani.riverdale.lan>
In-Reply-To: <20200808014327.GA1925552@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 10 Aug 2020 11:32:55 -0700
Message-ID: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: avoid relaxable symbols with Clang
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Fangrui Song <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	e5ten.arch@gmail.com, "# 3.4.x" <stable@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Dmitry Golovin <dima@golovin.in>, Marco Elver <elver@google.com>, Nick Terrell <terrelln@fb.com>, 
	Daniel Kiper <daniel.kiper@oracle.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nUJZ+7e+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Fri, Aug 7, 2020 at 6:43 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Fri, Aug 07, 2020 at 02:54:39PM -0700, Nick Desaulniers wrote:
> > On Fri, Aug 7, 2020 at 2:29 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Fri, Aug 07, 2020 at 12:41:00PM -0700, Nick Desaulniers wrote:
> > > > A recent change to a default value of configuration variable
> > > > (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
> > > > integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
> > > > relocations. LLD will relax instructions with these relocations based on
> > > > whether the image is being linked as position independent or not.  When
> > > > not, then LLD will relax these instructions to use absolute addressing
> > > > mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with Clang
> > > > and linked with LLD to fail to boot.
> > >
> > > It could also cause kernels compiled with gcc and linked with LLD to
> > > fail in the same way, no? The gcc/gas combination will generate the
> > > relaxed relocations from I think gas-2.26 onward. Although the only
> > > troublesome symbol in the case of gcc/gas is trampoline_32bit_src,
> > > referenced from pgtable_64.c (gcc doesn't use a GOTPC reloc for _pgtable
> > > etc).
> >
> > Thanks for taking a look, and the feedback. I appreciate it!
> >
> > $ gcc --version | head -n 1
> > gcc (Debian 9.3.0-11) 9.3.0
> > $ make -j71 clean defconfig bzImage
> > $ llvm-readelf -r arch/x86/boot/compressed/*.o | grep -e
> > R_X86_64_GOTPCRELX -e R_X86_64_REX_GOTPCRELX
> > 0000000000000114  000000120000002a R_X86_64_REX_GOTPCRELX
> > 0000000000000000 trampoline_32bit_src - 4
> > $ llvm-readelf -r arch/x86/boot/compressed/vmlinux | grep -e
> > R_X86_64_GOTPCRELX -e R_X86_64_REX_GOTPCRELX
> > $
> >
> > So it looks like yes.  I guess then we'd need to add a check for
> > CONFIG_LD_IS_LLD and CONFIG_CC_IS_GCC and binutils version is 2.26+?
> > I don't mind adding support for that combination, but I'd like to skip
> > it in this patch for the sake of backporting something small to stable
> > to get our CI green ASAP, since CONFIG_LD_IS_LLD probably doesn't
> > exist for those stable branches, which will complicate the backport of
> > such a patch.  So I'd do it in a follow up patch if we're cool with
> > that?
> >
>
> What if we did it only if we couldn't enable -pie, like the below patch?
> I think this should cover all the cases without needing LD_IS_LLD
> checks.
>
> For BFD, the only case that should change is binutils-2.26, which
> supports relaxations but not -z noreloc-overflow, and will now have
> relax-relocations disabled. It currently works (with gcc) only because
> the relaxation of
>         movq foo@GOTPCREL(%rip), %reg
> to
>         movq $foo, %reg
> in the non-pie case was only added in 2.27, which is also when -z
> noreloc-overflow was added, allowing -pie to be enabled. With 2.26, it
> only gets relaxed to
>         leaq foo(%rip), %reg
> which is all LLD currently does as well.

Sure, that will work, too.  If you'd like to send it along, please add my:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 8abc30b27ba3..d25bb71f195a 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -60,6 +60,13 @@ else
>  KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
>         && echo "-z noreloc-overflow -pie --no-dynamic-linker")
>  endif
> +
> +# Disable relocation relaxation if not building as PIE
> +ifeq ($(filter -pie,$(KBUILD_LDFLAGS)),)
> +KBUILD_CFLAGS += $(call as-option, -Wa$(comma)-mrelax-relocations=no)
> +KBUILD_AFLAGS += $(call as-option, -Wa$(comma)-mrelax-relocations=no)
> +endif
> +
>  LDFLAGS_vmlinux := -T
>
>  hostprogs      := mkpiggy



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dypa8xE-kaDa7XtzPsBH8%3DXu_pZj2rnWaeawNs%3D3dDkw%40mail.gmail.com.
