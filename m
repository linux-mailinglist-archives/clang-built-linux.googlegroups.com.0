Return-Path: <clang-built-linux+bncBCIO53XE7YHBBJV25D3QKGQE6WRXHAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD2E20D047
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 18:56:08 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id r13sf11608232oic.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 09:56:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593449767; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJVVQTZ4vI0JfAXJkths4uNbgk5YmTriyQS1/tc70ixpZEq0nO2mnCL+QlUkrPHqjQ
         KfyPvdAN5hWum/Q/EflR0wfhFWwO9AIOrjaaSnxjjHnp6Yq9w/hfU0iOxULY9lhy9unK
         HVDLqAgsBmAtUv4bC6IGwMlO94+RR4OEfRuA76nnAWMk+pEbE1YnTZ3f1FEgEQPAywdt
         Fh54E7/m7j5eFYoFZVrDBlepitDYUtA/s8QtuOB0/ptuGJbWNrjOpSANgM5subYpPQcO
         jtWl/t/PjMdu4SOLXsZviNiBnOkCDydgC0f6fdT7AQr8mdvngjHqQlsZ9JJlxYlcsyo4
         rxUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=h+XNQu/F6W9yObjUsrqum7m8CdB94gxBJCAWBwyYYho=;
        b=YYEAOmAe/Yd4EmKHvzfbFmN4DEEbFMkOnwTY9uRdljC+g4nlkAgSlY2qD2H+BdzQ3m
         5kQQxvoeQ7W3cMkvkRbg0x/ekkA/PTxbQ1e4NZ4yvnhicBT9U7DLp4OKedQHmEoU/zqA
         edA8+0hX0nTwP9u7YYlj1Z03ly6IwzsZbzlbTjzVGu1tbDxL4lT+egibl7PTcyWBPZzs
         5IC/pY+U0VewhNLqTx0EXOwDIpe9ACSrx4q+MzshRdxzWItRuY3hvGic5mQx7i+mNA2A
         MC4doDw/cw7H5z1aayC0ZAxi5TEki73XtnrcrvS/nKYmYyjcQp0e23fts/0hwQJazICr
         r9Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lR1BCUsf;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h+XNQu/F6W9yObjUsrqum7m8CdB94gxBJCAWBwyYYho=;
        b=iaXaDcoLSIlFqVIGzJkngPhDNA0T4S/2pVlRX01evJcFmlFLyXsZu2gZEZH5vVIcOA
         4FG2bcVg/ZZV1qXywKVHXg3Fikz6/n+xBLSjQlVEj9TvH3kUrS6prXu99TL50t70LCZq
         LnAMvda0WfMZVUSLhRt/2JSsGd49SyC87IEb42t1j3J6eHgzNv/BvvGiGsACvweyr4fZ
         PLXlXMtHAhITyDMtrEF5pliE2d54l4uCBGa21rqnWj7fM3LkdkYxoJkCgsIHzDeQDkQy
         RGCAVEQTFWnLSKMLFMreScF4LH7JzoDjCHBFt+Dl7uXJ/6hkRYpkL/Hn86InY4tL8Pmx
         GRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h+XNQu/F6W9yObjUsrqum7m8CdB94gxBJCAWBwyYYho=;
        b=KtDiZw0MzOFGcbs8xZVjP5Btr4fMhVh03lZ5A2di6+feuDwwcxz7pRjJmUdp3XL9HR
         ApuroVoaQcu1O2kr/trmLq1V2I5WoJ6oDPNWKzzxb0i99bDwVUn/Bn5dZEAH/mwtl3hZ
         Wv05BquyQjjLUaz38RPMxlbVgHwedNSQ9vU7Qk5bk70LX3YTB0SMjoOciKKnW0a0tFLj
         FrXYccjuL34uJzMCZSrW4lemaKlCqa13mYrVZBGlrp9WLBaC/f1jOr0eP9tAxS2pugnn
         3ah9abU3XGw4+Mbg9plY2yhf1MvVToIKZdDTUpCriHMhJQz2AXFD3h4vDzZMHBGdg3C+
         yEig==
X-Gm-Message-State: AOAM530Cp71cv+HycZB0QfjmA2dHU2ph8AA1BgAfNVBf0HqfRA0BjbCQ
	klDsISOo41rRANMpScgqYR4=
X-Google-Smtp-Source: ABdhPJyCixMu8qzYdnSeAP6zMbWyT1IOCOJfNNa6Yy+pZ38M4nJQt+P/nyWRQDu1hliDv/dAlqYd/Q==
X-Received: by 2002:aca:2811:: with SMTP id 17mr4549807oix.166.1593449767003;
        Mon, 29 Jun 2020 09:56:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:11ce:: with SMTP id v14ls3664087otq.0.gmail; Mon,
 29 Jun 2020 09:56:06 -0700 (PDT)
X-Received: by 2002:a9d:2031:: with SMTP id n46mr14477799ota.16.1593449766693;
        Mon, 29 Jun 2020 09:56:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593449766; cv=none;
        d=google.com; s=arc-20160816;
        b=Xba2yclDay9lRY1MXSAIzEffGrukHRQPBon8oMkr5yATqS/c7NVdq27xGyLU0Ty8J1
         D7R5mfaC9xD8ABKBt4d/Xuhgy88AKbqu3f2o87XMyUhhVlL3kA6bv2sdnRhbSvx7jsNR
         l+OkJM6zNDyYJTN46chwTCxYAWKMQYkl3fmFV6c4+ClHTbMiGcI3XOTXCXgFa/4eaD26
         5FaUJut2XD5cuZI67FednEkiZJ3Vr2fZCF4ueQ2nNiSsdCIebEc2IO87gxe5ijTzwNGX
         zNHRW5Yhd1i/j2z2sQbGI/mIt2RwMM0J65fGDGZOwpc4l+JeqGyKbRE0g9zBkBMv6CeY
         C/wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=jVlqHQzn01y7nrvyopD8q2AIuA6aQSm3TomDB97NTFc=;
        b=uug2n12722Sz0/YPcuplgN2BPVXJLR12cFIdKSZGW/GqG5ZYhNmJni1hqoHQWVxw8W
         1tmrtcRazOOBXAI5TecmamdcD0Irl+ZAZpQVILO4U3iuHN/BSIML4llkoYGVMpLgEDnz
         Xpj6TrpSieecfruWhWCUmNzd7e/+Q2iBhsDH0ew/SJzWzuIlcL6MsA+iqZBOh3DlSIC9
         AbE7vEFKIPyJZk/tAgxEbIFM6pKpI8iUBjAJzHNzDIuVqme4ckh2XAfzvqVHZnQ3PzIj
         Vsp9GhdeJvSzY1cncS163B44lacUiHvDEco6gnTRNbb5hAWkPsaRt+sHlaDzIVHcRy6k
         ExzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lR1BCUsf;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id m23si34766ooe.0.2020.06.29.09.56.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 09:56:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id i3so13329202qtq.13
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 09:56:06 -0700 (PDT)
X-Received: by 2002:aed:2359:: with SMTP id i25mr16769164qtc.194.1593449766079;
        Mon, 29 Jun 2020 09:56:06 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p25sm361142qki.107.2020.06.29.09.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 09:56:05 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 12:56:03 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200629165603.GD900899@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu>
 <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006290919.93C759C62@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lR1BCUsf;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Jun 29, 2020 at 09:20:31AM -0700, Kees Cook wrote:
> On Mon, Jun 29, 2020 at 06:11:59PM +0200, Ard Biesheuvel wrote:
> > On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
> > > > Add a linker script check that there are no runtime relocations, and
> > > > remove the old one that tries to check via looking for specially-named
> > > > sections in the object files.
> > > >
> > > > Drop the tests for -fPIE compiler option and -pie linker option, as they
> > > > are available in all supported gcc and binutils versions (as well as
> > > > clang and lld).
> > > >
> > > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > > > Reviewed-by: Fangrui Song <maskray@google.com>
> > > > ---
> > > >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
> > > >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
> > > >  2 files changed, 11 insertions(+), 25 deletions(-)
> > >
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > >
> > > question below ...
> > >
> > > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > > > index a4a4a59a2628..a78510046eec 100644
> > > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > > > @@ -42,6 +42,12 @@ SECTIONS
> > > >               *(.rodata.*)
> > > >               _erodata = . ;
> > > >       }
> > > > +     .rel.dyn : {
> > > > +             *(.rel.*)
> > > > +     }
> > > > +     .rela.dyn : {
> > > > +             *(.rela.*)
> > > > +     }
> > > >       .got : {
> > > >               *(.got)
> > > >       }
> > >
> > > Should these be marked (INFO) as well?
> > >
> > 
> > Given that sections marked as (INFO) will still be emitted into the
> > ELF image, it does not really make a difference to do this for zero
> > sized sections.
> 
> Oh, I misunderstood -- I though they were _not_ emitted; I see now what
> you said was not allocated. So, disk space used for the .got.plt case,
> but not memory space used. Sorry for the confusion!
> 
> -Kees

In the case of the REL[A] and .got sections, they are actually already
not emitted at all into the ELF file now that they are zero size.

For .got.plt, it is only emitted for 32-bit (with the 3 reserved
entries), the 64-bit linker seems to get rid of it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629165603.GD900899%40rani.riverdale.lan.
