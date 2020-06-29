Return-Path: <clang-built-linux+bncBD63HSEZTUIBBXFF5D3QKGQEHDHDKSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F7220D00B
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 18:12:13 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y69sf12228646pfg.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 09:12:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593447132; cv=pass;
        d=google.com; s=arc-20160816;
        b=kocYs1MzGAEOknaqjTUfCyVEDYjEen2YUpsjLx2pM3QBr0qYbCFC5LkSRhPyhHi3/o
         GwUoN82W4MSbSUNcYfF3RrWVeyYobiRUD0DHwXQ0SxoWoNd4lj9gRjO1eTl4HzawAF/X
         Su+PIaituySKneTORHZohmvqGimn3u341bneccezLEbpAIgmyWlmlaoJPNRwGOiug++j
         g5SwCvHxZqNUhPCtEuIH924PGmnjeMrD1/WCLtyhN4MMDZ7aYu+GzyNJGzdth7l+MaZv
         Bbwr9eBuwLT+nyzloogwQIKAxZLqijZsmHSJD/s9B5Td2tWUbjhKE1n5EcVYKXDAVYtq
         ngBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RSZ6fYTmRARs8/Y3UHIq3R5CNwspxNNLTBhiRi/cDmo=;
        b=I8IcROgikpAOqVHqf7KmAjz+uTDduNrEe5QW7lNgeCINA+qTcu0nWeNTA4ep6iEzoq
         So25hzoTmXUOjM1KLBe19/x2lLCBbuJMY5edR2Fu1eVGYrytO2ozWemhWXFTsR9i87Hx
         ebhkVZo4TJrqlVPiWNg375nTTxFPz3sYmjW4WjxFB8EpuXNRZtGP7K0U5mGdKcpxVIyT
         VQcxEPdvZthB5QjsC624EcFhxRh1mqTrh1OIRSnUGmVLZMMFI1JTH7lbaEloAWakjTk/
         fhP3X03WdBM7MNzthx8dSp9IAH4gS7l7W15CYEd8XGU/RYB5pqWfM52/uCNv8IKR0W6S
         s8dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FHH6K2+z;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RSZ6fYTmRARs8/Y3UHIq3R5CNwspxNNLTBhiRi/cDmo=;
        b=F2lXEQ9OsYTVyu2Wmx7/vjDQDwUUMSl7zLRi5eAFEaYyLlKznW5EVP77vNe5CcZw6b
         lCciBav4TLRgMLYHEXBCSPJmFp0iOaHw+VNEUWbklz/tBur7VhRhGlF1VW/0Crlphw6i
         8tiH9CeNgCh66X90SsZ1F52/ZQyee2ewuAr2FLQzLXkIlDAtuOZsClPAWXmHIF266IY7
         gpY+Vqavk55Hloha2LmFBL5L6PJZQdNjevZDTyNqUP4PEilmA4/iDCb6DCVK2OeoIR0o
         nN5XAXIv4iYdbsWreG2j0CqsXyj++rflpWH0Kexw6oUEGCXUEGaUzRjvdrfQJ6iMY57V
         gXSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RSZ6fYTmRARs8/Y3UHIq3R5CNwspxNNLTBhiRi/cDmo=;
        b=N5wTXPc+smMtlCjD+XsYgLGyfeyWmpqkfMgdkNQcud4pW9g0lbpikzfn4PJUadljgE
         hSf8bm20k109KZhNh8cZiaf1RIUm0dpXiVnh4Tt1JSxmQIQ2K70XxSym9LVyFeQEhRYz
         s8CwvHELQLTKLXeBGDHeZ63Q8zYzaXhZ3whE8ykvjARBLruYeDJIdW+9HaEfZCwYqMWL
         0+M2jAlgD9Iq1DC5/JRZAIJgOmFQ2JTSjxG6SStsyrjzFi7k9QTmd6QmE4Bw2ICvEqgF
         NYbUDOnUpeJWQ5iUCT1IZLNuT9us4+id69DFtGvX7HUhdA5YtXtzPP8BxESviW5N0T8/
         /VIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pB3wDTga2edsM34lhN4B7eCZ7uLSXfhepAdFolMyZgSWUbOX2
	xkGxstbpuUYxoJNnOEVLaKs=
X-Google-Smtp-Source: ABdhPJzonU1BItzQIiV45ScyxcGsRPS8V+U74Z3MMAn9NDKzeSyiZ3MtCJXB6viO+yritdw5weCPZw==
X-Received: by 2002:a17:902:8b8a:: with SMTP id ay10mr14595779plb.236.1593447132612;
        Mon, 29 Jun 2020 09:12:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:170b:: with SMTP id 11ls3783186pfx.3.gmail; Mon, 29 Jun
 2020 09:12:12 -0700 (PDT)
X-Received: by 2002:a63:7e55:: with SMTP id o21mr11215348pgn.263.1593447132091;
        Mon, 29 Jun 2020 09:12:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593447132; cv=none;
        d=google.com; s=arc-20160816;
        b=HMONfoxhpqxbCXOOxm9TmVfVoSyHiYieXo08Pq3DX/3frct4Lqegq6H9ks/GOr8/4p
         9gV4VGtXqXP3wnNFbafoQyTO+BDaLfz/ftsC1fupKytqVMDWCiktPiZsSBvd1k/HUwEj
         1aMfFZ7hahW8UGC7E1MzofCxaQMmfc2MlgczOeTYIt8R5oc9fFYAkkhvg4NjzVirXnoG
         F74/k9YalTA3fpn3UcxRewjnzj2YQkxm/ZdLZzxid0Rz75PWISF/h7rgQASO390HYbWV
         FoxL3WbFrc1Hd0G+njqovtlnY5z9MC89gKld2usWbg9slB1tq7q6UI19p8R7r3nt2FF+
         gCAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6Y2BJioDb88hHPlUBHpLj5ggBIGARI1UcCpp4GaSekQ=;
        b=njM5ijNHuGTVuoMRrvL6s9SFIfxbqTcKSSQSi/5daNJWTvNxjzQeFlE6guznKmvoRl
         Ss9KpNdAY+69yS/2r1M8lQx44K2MD1+LZ9q5wg841YGSNfKcx2/if3wSHHi9UpK5oz1l
         +jAGB5H9330MSbWzbWyhAcZaAwjVM4zyTsm8Hq8BzQYarsRgSiB0UH8MfEHQYkKCRW0s
         J6IQCTAXC8akPRLveqqo/Hysy1Wp1zD7phz5v/LbHfoTE7v+DKBQYSLi8h6OaPGL6zMc
         JxgC74562AI0p2kFM/skCIjnOiG6Cvo3j6ovBHWEVqg43TWgidIbnypVN7w0pu3FmDvM
         N3fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FHH6K2+z;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cp21si27805pjb.3.2020.06.29.09.12.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 09:12:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BA11E25589
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 16:12:11 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id t18so3224996otq.5
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 09:12:11 -0700 (PDT)
X-Received: by 2002:a9d:5a12:: with SMTP id v18mr13489971oth.90.1593447131094;
 Mon, 29 Jun 2020 09:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu> <202006290907.E5EF18A@keescook>
In-Reply-To: <202006290907.E5EF18A@keescook>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 29 Jun 2020 18:11:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
Message-ID: <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime relocations
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FHH6K2+z;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
> > Add a linker script check that there are no runtime relocations, and
> > remove the old one that tries to check via looking for specially-named
> > sections in the object files.
> >
> > Drop the tests for -fPIE compiler option and -pie linker option, as they
> > are available in all supported gcc and binutils versions (as well as
> > clang and lld).
> >
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > Reviewed-by: Fangrui Song <maskray@google.com>
> > ---
> >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
> >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
> >  2 files changed, 11 insertions(+), 25 deletions(-)
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> question below ...
>
> > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > index a4a4a59a2628..a78510046eec 100644
> > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > @@ -42,6 +42,12 @@ SECTIONS
> >               *(.rodata.*)
> >               _erodata = . ;
> >       }
> > +     .rel.dyn : {
> > +             *(.rel.*)
> > +     }
> > +     .rela.dyn : {
> > +             *(.rela.*)
> > +     }
> >       .got : {
> >               *(.got)
> >       }
>
> Should these be marked (INFO) as well?
>

Given that sections marked as (INFO) will still be emitted into the
ELF image, it does not really make a difference to do this for zero
sized sections.

> > @@ -85,3 +91,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
> >  #else
> >  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> >  #endif
> > +
> > +ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected runtime relocations detected!")
>
> I think I should be doing this same ASSERT style for other explicit
> DISCARDS in my orphan series so we'll notice if they change, instead
> of being silently dropped if they grow.
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFge5aWL2BY8Y1%3Dm1TonB%2BSrDq6p7TQWuO5JkzcR2dhjQ%40mail.gmail.com.
