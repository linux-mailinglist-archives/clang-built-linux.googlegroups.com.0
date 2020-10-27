Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK764H6AKGQESLY52SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4545E29C9D1
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:12:28 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id z23sf1794977iog.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:12:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603829547; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ij/yqB0Ybc6OGElCQgkqdsaEtrNjCRHW5lINaUBpcr5AAh2uuH+X5aQVHJyuPsyomK
         PxFQzEpCSqRKC//hjYz/8u/s9NJLTByO6rweSiCHVeRDf1xbqGr5uR4vIjCfZ5nUFiF8
         oe6PqmkumB+99iXqi3bgHrtwfhFyrVQtsxBuI1NbiG0YGeA71TNBe19/gSvILHkNJ1UH
         1VwIFKuLXS3E9ip19zeQwCAnScFPB3UXjNOh/I5S3jcakWujChd00IzPqrYWz72dMX/n
         W6n+rbGLNuxEc9EvU2AWKheI4EYLvaUNyP3fuo4snR41bl31lKlcD1Zn/REeGxoZO2fo
         aucw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PwOfWSi+14PdramX4cDz4mpYu6GuMMS0Xaoxpxi3TQo=;
        b=tuGfG8oq8nd+5tHYWD+PHgluZGC8s3IkxYncehvvBpG1hveudXcU6mMFgUET1Sx62w
         CxPehRhLgUlpG1BSYDMWBHumlFiBPHvFa62p+E4I56n1vH9CqvAbEZe7U8DQexFMD9i0
         Gak1O2eD6bXCUBZumRQPJyrQzt+eoPFe56tNyl1lIa1q4oxlRz2WAUPsU0eMEG/AsViA
         IebWSAxPkytRQDLCmuQGAfbGRzy2iWgxUrTvDq3AYz4EKLoK1VfbmjhABc1SgQ2zWmre
         PfUaWzDSvriDbw+IQc6SOv2luRm4VR2qfJ+jp6+CkxYhchtyBqswrzuK/IlNvxnthzS2
         vf6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ttcVPykR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PwOfWSi+14PdramX4cDz4mpYu6GuMMS0Xaoxpxi3TQo=;
        b=cxG5YaSx8RQ5+n4V9rUWPyayFKMOwQWYBpDf2OFXJBSpPyJvxvklAnl0xA/KZb46QD
         ZcU2syIi/nTrn/hyPEhEokBa/HGPgWNFrq81ZRb40ztxZiJVZ6ZfpjxVPN3lCwHXF7MS
         tSP0uUwdh0HYe7R+HYpbvc3dHVZCf4rT9A5lVhlEmWophfM0/Jhyc75W7d9uj34TWKWh
         1uVZdRve+OCRJPWhOJfTa9NgAWx05ea/D7EiEO/XiJTeUq4Vl+MJAx2vKChZMeZA554p
         nWYSY0MwcHkGdxQdCpOcagv8dPdU129gea1J5iTwN4QjijaQqMWxpGg1Khs4PV185FKM
         KLPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PwOfWSi+14PdramX4cDz4mpYu6GuMMS0Xaoxpxi3TQo=;
        b=QRROOIbcEYt2i1Ny3dZ91aSOOsq8J+f8msXQii7AUGmvw/D1kPoytz8QCf6slKd0wV
         7FuhWHDkrNAOQdqGqBolR638ct67tQl7T2ivx81vB12/iLH6i051/NG5gyRN8kdqmv/s
         ThK3NTKKPXReMoQVNhmw1K2DG2GZ93cuTjSW7XceS7X7j1FELMW4NJw3cz2coHERh3t8
         m8QV93xT1+kExGn/q5PJiaKt6jibnCd2OVno6VqwvakyyuD/LMRPdK7hnwtOgdFvgpXH
         hMqrz39lcJL9wzDJqHDwfK+grXtuZmbENYgbl8Esx/fwJP0RSqFVBZAX4sBT3Yz2hVgt
         Rlhg==
X-Gm-Message-State: AOAM530fFBfOlszcAOroyHwLLC5d4WcrtPFv869NUyNeUuolBrF6BkBj
	W8475EiGPhOwLfMZovZZ930=
X-Google-Smtp-Source: ABdhPJyOwsM5Sg2I73PwcmS8Mux/85o3HSWfInNemg7GY2foVcRu4ob7PZJAQsrqGUP3whxRI/o67w==
X-Received: by 2002:a92:aa01:: with SMTP id j1mr3513900ili.301.1603829547259;
        Tue, 27 Oct 2020 13:12:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f41:: with SMTP id y1ls631129ilj.2.gmail; Tue, 27
 Oct 2020 13:12:26 -0700 (PDT)
X-Received: by 2002:a92:6607:: with SMTP id a7mr3275026ilc.276.1603829546904;
        Tue, 27 Oct 2020 13:12:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603829546; cv=none;
        d=google.com; s=arc-20160816;
        b=jKxSYKQGel2S8SgLkzAeLfDLvrUPJX3Ll9s4oP1WAsVLc8NvAQ8JCk88MABqMu3nL2
         UJ4UxUcGXDg2mXUKSm865csZ9kJJVaoyd3oZKl0iFo+zJp4hSya78EBUKFbUUC6LHSUD
         0GiSPuMWb0sJ/LhJp41pzZ4u1zVj1nPIiNE2qNf0tpUTwm5g+6S4MpQfje4/x5o3tm4K
         S+IjpdatVeXBylsiuytZa7Lck9SmsUCtZDbepXNULSpFAvmehSSPkPvn+vxrEQqmfRX9
         3HFIeKxy2G/lEVmOU+FIJApi/HR2wUPpkBT4PkAdL99HCVVpHdTD7q5+Bqc+zSBM5hfq
         QdNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WQGaMfOKa51GcrilLPDkwx8CUgU5xVnHdlwKgF5WGgo=;
        b=M1mQq0nIRsZc8L0r7IvFpD5WIHuavrzXb+mvH9oo/mUi3/8GsGbIN5m6wALwFwaSUP
         qSWvZUKL1U9coj0hm0zYqriN1UHGAUo00zU8dHIXGqqJlNPIfwD/nQm0RpsxdeIDxrLc
         m46230w8W9LrKqHZNVOzEXxGisdeym3RHAvm+jU0RQ2tBlifl5sHMgzynBcYJfDUSvCC
         t4LCZUu6LA8rLJegkvAyTDk55WJUlF86Ls5Yp0mI0kLcNTTXeZU2OJQnoOzVQT8IHMsP
         TZ3DvzoU5MBVdVaE3IYyok/gkz4Yv++5xPfs5W0/KIQaRu1MiJtW4Uo0a9Bss+aBRXkH
         Rm7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ttcVPykR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d24si162910ioh.1.2020.10.27.13.12.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:12:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id j18so1583492pfa.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:12:26 -0700 (PDT)
X-Received: by 2002:a63:5152:: with SMTP id r18mr3175051pgl.381.1603829546039;
 Tue, 27 Oct 2020 13:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com> <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
In-Reply-To: <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 13:12:14 -0700
Message-ID: <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	kernel-toolchains@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ttcVPykR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Tue, Oct 27, 2020 at 12:25 PM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Nick,
>
> CC Josh
>
> On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> > <geert@linux-m68k.org> wrote:
> > > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > > placement"), which is another red herring.
> > > > > >
> > > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > > causing the warning.
> >
> > When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> > missing from someone's KBUILD_CFLAGS.
> > But I don't see anything curious in kernel/bpf/Makefile, unless
> > cc-disable-warning is somehow broken.
>
> I tracked it down to kernel/bpf/core.c:___bpf_prog_run() being tagged
> with __no_fgcse aka __attribute__((optimize("-fno-gcse"))).
>
> Even if the function is trivially empty ("return 0;"), a ".eh_frame" section
> is generated.  Removing the __no_fgcse tag fixes that.

That's weird.  I feel pretty strongly that unless we're working around
a well understood compiler bug with a comment that links to a
submitted bug report, turning off rando compiler optimizations is a
terrible hack for which one must proceed straight to jail; do not pass
go; do not collect $200.  But maybe I'd feel differently for this case
given the context of the change that added it.  (Ard mentions
retpolines+orc+objtool; can someone share the relevant SHA if you have
it handy so I don't have to go digging?)  (I feel the same about there
being an empty asm(); statement in the definition of asm_volatile_goto
for compiler-gcc.h).  Might be time to "fix the compiler."

(It sounds like Arvind is both in agreement with my sentiment, and has
the root cause).

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkE%3DViGOhvoBRcV%3D9anjowC_vb4Vtefp9010%2BsC4c_%2BSw%40mail.gmail.com.
