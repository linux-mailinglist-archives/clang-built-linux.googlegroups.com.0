Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUNJ5D3QKGQEB7IWTPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D00C20D017
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 18:20:35 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id t12sf12334257pju.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 09:20:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593447634; cv=pass;
        d=google.com; s=arc-20160816;
        b=ajA00lhtao3TqohaXITJIEhPQ/okV+H+Oxsov5X6iFdxfX2waQek9VAvanpGDo895h
         ASsvYzfQn2TXGBExhJHWo+hrzdHC458wl3zxlXAULuy/ZHR8qr8SeiyQus+e62+3WIFp
         3O65A6jpBDkw4bWNUVo7gSHWW4OsdxalwpBC3+K2WHTMSwFndXY7r1295a+DnxpyDHPj
         al2cI/q4O8RKolRGiDN2AvoYah98eKBx7yk2ylkfT5O8ihaynOw1Uw+y4NigkYXQfheZ
         61BlzOiulFrAcCFIE2CXtRj2AKrTp3NNfIaVMzgnXdgZijaZiBox3EyYTPaCizr7ybNr
         a4HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RTbUyDbaDhoowfAteCN8jeerP82VVfd/eWHNOAhBRLw=;
        b=gKptKq9klN9wjP/u6uxCgFsOmVQ1a1ZmX2E3HPVQsgPjrMGwnvaZSpc2r+k10ONvlD
         XZbVTS3pV0YAkY6gT38VaPFYGBF4r4pBijcmX8VOqW92EH02jemh8cQhKilOptQDRq+j
         FPzgsIVA61bJvgvc4HdHmucaNaVYLjY5eoqGsx9X2m/eY/gbAtfFH/sQQPC/FhbFQfJv
         nAubrXpM5aaOs/2rR1A2yQrjS7+ru8dN3OR2bhPAdgP9M1MjRopeCcN1CUG282+2TNai
         XOgMQR2w0sBJ1z68PzWoqFfx5wlMJqJHfnJsFJXW6/203dYBeQhfUXlFppfd4lbbOnef
         szew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hSk0c1AM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RTbUyDbaDhoowfAteCN8jeerP82VVfd/eWHNOAhBRLw=;
        b=rrCRO4xYxusiY/xJrGkSu0fQt7PbJvWyAHLSxlNB1tVL/4tlXXfLcBssaLb3vMi+zg
         2L90Df2ika79mS4cyLH6FWq2VSeTengk2lQOT7FY+1e4syRa+2y9w5MBZKopf45dGjr3
         D6lJ6px7Jd9I9vwZueRef/1A4c+rzEqZ8Ft6KcSY68euI2f8JhzCgW/Nc3twyMzLVGIE
         a9oCSJDlI8KUkVRdsreMwE1IpVPQPyvic3oQSGgrEjbEBgOQMJcz5X3FKWrrhTUj1BgD
         lj6Jivuw9ryoC0L6gReLe6Uh2PMC1NEv0s0ANyenb4eTy+KNOV2rMq0RYeDSC672R62o
         IEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RTbUyDbaDhoowfAteCN8jeerP82VVfd/eWHNOAhBRLw=;
        b=Yx5rIGChSqFq+YhPpJSJV6sAl27HeSxpbcm7/hr+CX29R/b8ehvVUo/sbJd69lXTwm
         0hwRQikdhifemlTqY9sWyQdOBtCLBA02RR0K7/LolQbHXxpsRKhfGtHJVWDzdANjORdl
         kokNKtMb1zsPYVuSBmeQvAtjNi9ytn/vMH+53Q/dlE2KO1hQiTuNGHJrw4fA3BcDySUG
         /3SGGVmTATNQOKP8lC0799De8DJRxAKMea7VxSFlG4aXnfUwtvX2AS/rzvktjYEEhK15
         aLEdjDzPipHu5HThJ+c8xgvjN0y5eIMhIcQQFw0spZVFmHgb6K/J4S1usaW7HGJZlfBA
         vYNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z7c8K8e2SGXuWiTyLAi3hL52/NBE7TNNSJ/JA+k2MGF/nEe+6
	HsrQRbk4vDB3d6Am4tFvOuw=
X-Google-Smtp-Source: ABdhPJxHHevRXozkTf6fI+k7X/hrqcBNpCKi4iqjcFW1rOkCe3ABof81uNvXf12pzjKuJ8lIXpk/jw==
X-Received: by 2002:aa7:97b6:: with SMTP id d22mr15582491pfq.202.1593447634147;
        Mon, 29 Jun 2020 09:20:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:501:: with SMTP id h1ls10331pjh.1.experimental-gmail;
 Mon, 29 Jun 2020 09:20:33 -0700 (PDT)
X-Received: by 2002:a17:90b:3684:: with SMTP id mj4mr682365pjb.66.1593447633370;
        Mon, 29 Jun 2020 09:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593447633; cv=none;
        d=google.com; s=arc-20160816;
        b=oeXI6+wqgaW0x9xj7H/8guey3fpYt5x8L4IWkJlh6u2BTDpcWBveCTSNd0K4Gq4LhX
         Tx9NSsAyNQlqFK7EfMaaND1Fwt0lOcJxLO85H1R5bvxknQ8TmLEX189ya/k+6ELuA1XH
         uZrlzRNf+hx460XOT2KTayC08VHkUPj00gLBOCOk/Uru3tLpmTeMb9iNRVWgp94nccjR
         DdBk5EDg7+A4d6KAwY/YsrRWfwX6MhbjWY8ThLvq/WXH8lVy8TwenPncUsuj7EwAspe4
         ALxUB7jCN05HcxfFlLvtdM6ToaMj/R7nSn3uniVaEYEkfE8qTirLs/WMFOPUyMf+NGrD
         GcKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bmVfJADPu1Rf4BNpweJIobmBh11XdYvG31saYbh8f2A=;
        b=apgAgToa1d0Pmu0StmZHfr44kH60lZr4W6X41TapxtA3w3wzu3bzSWjddw8V5T26YC
         C7OspdFJU+XE7n+bb/DwkYr90Ih7ECto19LoycCvLGFxDqBMwLqW75g7gyUAAarLoaPi
         fTOkf+K6CVUnN0zjxXQx1HB7b/hOb9vDozz8q+B4ZWNPlg/w08AQpUwLI9G8dnL+l6RK
         c591G3jXBhbHPKuMgMWSYBunoXjVnj0npxzzL5BvVHiY/00xMVwIm0HMAoDhwY4+Oh2N
         a86VUZ4w78GveSUftqInaYoEYukx3Mrm9H8+HN3xOgng/GlCJU6JMjYR3PQjJKDgYY1F
         ip8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hSk0c1AM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id s21si19952pfh.2.2020.06.29.09.20.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 09:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id u9so3677691pls.13
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 09:20:33 -0700 (PDT)
X-Received: by 2002:a17:90a:9292:: with SMTP id n18mr17806395pjo.112.1593447632977;
        Mon, 29 Jun 2020 09:20:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m2sm183486pfb.164.2020.06.29.09.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 09:20:32 -0700 (PDT)
Date: Mon, 29 Jun 2020 09:20:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
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
Message-ID: <202006290919.93C759C62@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu>
 <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hSk0c1AM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 29, 2020 at 06:11:59PM +0200, Ard Biesheuvel wrote:
> On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
> > > Add a linker script check that there are no runtime relocations, and
> > > remove the old one that tries to check via looking for specially-named
> > > sections in the object files.
> > >
> > > Drop the tests for -fPIE compiler option and -pie linker option, as they
> > > are available in all supported gcc and binutils versions (as well as
> > > clang and lld).
> > >
> > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > > Reviewed-by: Fangrui Song <maskray@google.com>
> > > ---
> > >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
> > >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
> > >  2 files changed, 11 insertions(+), 25 deletions(-)
> >
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> >
> > question below ...
> >
> > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > > index a4a4a59a2628..a78510046eec 100644
> > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > > @@ -42,6 +42,12 @@ SECTIONS
> > >               *(.rodata.*)
> > >               _erodata = . ;
> > >       }
> > > +     .rel.dyn : {
> > > +             *(.rel.*)
> > > +     }
> > > +     .rela.dyn : {
> > > +             *(.rela.*)
> > > +     }
> > >       .got : {
> > >               *(.got)
> > >       }
> >
> > Should these be marked (INFO) as well?
> >
> 
> Given that sections marked as (INFO) will still be emitted into the
> ELF image, it does not really make a difference to do this for zero
> sized sections.

Oh, I misunderstood -- I though they were _not_ emitted; I see now what
you said was not allocated. So, disk space used for the .got.plt case,
but not memory space used. Sorry for the confusion!

-Kees

> 
> > > @@ -85,3 +91,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
> > >  #else
> > >  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> > >  #endif
> > > +
> > > +ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected runtime relocations detected!")
> >
> > I think I should be doing this same ASSERT style for other explicit
> > DISCARDS in my orphan series so we'll notice if they change, instead
> > of being silently dropped if they grow.
> >

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290919.93C759C62%40keescook.
