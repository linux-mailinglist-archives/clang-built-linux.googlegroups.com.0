Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM7GUX7AKGQEW2I63DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CB12CE293
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 00:22:28 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id t12sf1029219ual.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 15:22:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607037747; cv=pass;
        d=google.com; s=arc-20160816;
        b=KFClnBEUkOZhNwmeeYx3YYzT4A8EyCzq3pmwf2CbXapS0pTp5WLCxn/QU3x9TIQ5DE
         bFUZPk2VmyE95IN8I7VyyTGyMYt6sIxDK753QI8gJr7RaHnlrUsUJd9lcN3jKY4Njvtk
         ggeZ5Oq2GRIl8z7U70m/4TJztu1V+ebMnA7qXuf4bdOKk3mcPIIzeRqInhGq96+xAAsq
         5GUkPOr46SzZ+el6uqVlZGZ0at2Y4Gy15NEkNbzhvtTZIEYzJJHzWrf5StU7N8ke9kQk
         p5eDA0HJDacMIFn+drXu3PZdsj40zUvTsHk+RPNclBxnZMOPlUMaeGY0UzYC2ZIoAFNl
         a9fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/FcPd1Xpb3iw52aUBJ57Uof+UhkfPNy1xF6VEQOVRRA=;
        b=qliXQUgpCVfqt2tbX5iskE46khPyiKK9QqmO2Kx5q3Fzz+QW8rgR4dPz9CAJi2lel0
         PpMmIbLGYP0SrqlyDNqjEe8/a/HX/0iLUYE6KN16n9J9SRxu9q1oJgqt/xYMFGtfGA6u
         U+uR0fXGxgwC6gCY+7Xlhdn2z8hBr3sW0cgj2EBJNleIest1hmVpdH5ydk5E9SX9FQr8
         bNLNuiw/YBBRahot0mwkf8geY0K+u614SHPXLnALG1G2ru8aViG6XgTjMCIcN86e18Uv
         TyBRRs+7mUaWUDcwvVYcoLSkgMS0xIMulFthitwqmohqVOdhLHNUeC/qT10347NT3n1F
         xQaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WXnuoy84;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/FcPd1Xpb3iw52aUBJ57Uof+UhkfPNy1xF6VEQOVRRA=;
        b=XmsGDM9fY0b+tIbN6y4h5G3pVtcnx4Ia4qP6eQv7B1PFP304WESby8gP7F9smzpYvd
         2Aam7U0i7zyd2SL6yT+FnGHJTS7VgAkJnE1DpL6u/MxKFshesYLbuljDjt9sp0frSz+C
         diVNmIyVpIXkH8sfkASeoiCpI9uGrf/8j//ZTpC5F1jAvSexsS5qu/ORXAQ8HpZ2c2R6
         jkhxsyHf6KcgCVsVJ1rS5vRQLYpAhiaKUDc2N8wND4WR0rIFXDGDf+ntA+0O1RHNQc55
         PDzo6RhGRNPhfiadVARn+/qg4YQSKD2V4BKxkTOQS+yMDSFHDo0sGRJ/qYZc1Vhdzyns
         ljZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/FcPd1Xpb3iw52aUBJ57Uof+UhkfPNy1xF6VEQOVRRA=;
        b=FYrQU8KLaMV2Vj2+jBifdOLdzq/iy7I3iDEEM4rNro79wi71ssuyvGBXfoNoGrIgIm
         Xtjua4+jRjTdHbCHK7QUYIiVz/s+lh/uUqBZl195Vo1TED5WOrTMLo/uCPj/RL0tllG5
         +pYb/Kk/x8I3UaMhBRhL7tBzdU5y1i0yl5LetyHQBh8jQ2eX1GePj1T3hAdEUKuSkuq6
         nAIsDDRwEgYjERCfs+rS4CD8flMMGiAbsFh+egpYgjNb5fVcg6iTkFerj4BcOxwqmOus
         Z9eHU23EdvPdNKeApOPct4QAfxS8czwL4TYO0/qQVXSbLJlQE3JYjUpQhYnjE/BmoKlL
         0pxA==
X-Gm-Message-State: AOAM533C4gPvbw17rTl45tWx0xSbUFHcUMKNEcEHTSHvJjrc//pQYTcQ
	R0s/8k8D5PEuKJ/owwKcVWU=
X-Google-Smtp-Source: ABdhPJw0tg/eqJQG/VBypOrPJ84eG+1qw6IgQsqZNRJPHZ2KZbspfk+W7yiCKDanESLzIY6VJeYctQ==
X-Received: by 2002:ab0:240b:: with SMTP id f11mr1260832uan.111.1607037747603;
        Thu, 03 Dec 2020 15:22:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls1040164vso.9.gmail; Thu, 03 Dec
 2020 15:22:27 -0800 (PST)
X-Received: by 2002:a67:de13:: with SMTP id q19mr1727800vsk.40.1607037747205;
        Thu, 03 Dec 2020 15:22:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607037747; cv=none;
        d=google.com; s=arc-20160816;
        b=XB/ZsT7S7VZK5lTP6020gxz09+iXaP1IUhkwFrRF8OhkZ6LNxUf1wCkzkWa3Ig3Pup
         Rn5VTauTAmP3TWCBbg+Jyy/WOQqQSuxumq/B3DwGFioz2tCtIsa5iOIWvtC4e2ayBeQo
         x2WfJ13M2xgqMadxUp2tn1zDCXgRgIl3nXu5gmWrKgEVrAKJKW7z1CNimm5g8byNsDmR
         AuWy835wPwZawrJYmnBiTTtbplPRi2lzL//3jCyC7MtPxCZs/a9y27VGNcf1EQ+o7p2V
         P6XER63jqTxj6GyD5MNLmxpZcV+fVuyE0C8nMGxSK7vMNpKeWEsEKaKU4hoXTX8In0pN
         7BFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S2evVpZUx4sUY7dWUP7rv8pY8q8EVmsWGDPP1XnlIFk=;
        b=px62ZprfWs6GnOc82dP/Gkx/WJHiFNOGNcCeRtdF1BqG9bPJc4NPlyiZS6S9VA/vwU
         KrAM/giUuOJrx7IG0WF59j8MoDZUNBw1Xhw3UmTR6kKxMkPjTnDUuqVUXLsTrrUlbKxU
         TCWHm7UDznjV5Q2zTi6yrxuKWm9mMHlzDNIGQqyX4BpWgpUipoQx0lBrEJ3Vatdynd5o
         WjpmZi4LngsNfbOYU1lr2752xkUa3QL1WpZzh/+xdVwHVWuRE9Zfr2UX/umBCIZGSpTl
         1LDKeS3dwqnqPsNIxWrXHhkarhnQca+R1D1p4N5G+Mv92VKF7mMLCSS6D+7TaT65hbmN
         V0ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WXnuoy84;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id f26si52935uao.0.2020.12.03.15.22.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 15:22:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id q3so2372860pgr.3
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 15:22:27 -0800 (PST)
X-Received: by 2002:a63:8f4f:: with SMTP id r15mr5060126pgn.381.1607037746077;
 Thu, 03 Dec 2020 15:22:26 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-5-ndesaulniers@google.com>
 <20201124172836.GA346213@rani.riverdale.lan>
In-Reply-To: <20201124172836.GA346213@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 15:22:14 -0800
Message-ID: <CAKwvOdkGvLrPr4pHi4LKCF5t74+wencdy7r38d3k_4pC9pQYwQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] Kbuild: implement support for DWARF v5
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WXnuoy84;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Nov 24, 2020 at 9:28 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Nov 03, 2020 at 04:53:43PM -0800, Nick Desaulniers wrote:
> > DWARF v5 is the latest standard of the DWARF debug info format.
> >
> > Feature detection of DWARF5 is onerous, especially given that we've
> > removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> > support.  GNU `as` only recently gained support for specifying
> > -gdwarf-5.
>
> With gcc, using -gdwarf-5 even without -Wa,--gdwarf-5 results in
> considerably smaller debug info. gcc does not seem to generate the .file 0
> directive that causes older GNU as to barf.
>
> Should the assembler support check be restricted to CC_IS_CLANG?

No, because if LLVM_IAS=1 then the assembler support need not be checked.

>
> >  /* Stabs debugging sections. */
> >  #define STABS_DEBUG                                                  \
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index 03c494eefabd..c5b54ba51060 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -274,6 +274,14 @@ config DEBUG_INFO_DWARF4
> >         It makes the debug information larger, but it significantly
> >         improves the success of resolving variables in gdb on optimized code.
> >
> > +config DEBUG_INFO_DWARF5
> > +     bool "Generate DWARF5 debuginfo"
> > +     depends on $(cc-option,-gdwarf-5)
> > +     depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> > +     help
> > +       Genereate dwarf5 debug info. Requires binutils 2.35+, gcc 5.1+, and
> > +       gdb 8.0+.
> > +
> >  endchoice # "DWARF version"
>
> Perhaps this can be expanded with some description of the advantages of
> dwarf5 over dwarf4?

Will do.

>
> >
> >  config DEBUG_INFO_BTF
> > diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> > new file mode 100755
> > index 000000000000..156ad5ec4274
> > --- /dev/null
> > +++ b/scripts/test_dwarf5_support.sh
> > @@ -0,0 +1,9 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
> > +# in binutils < 2.35.
> > +# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> > +# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
> > +set -e
> > +echo '.file 0 "filename"' | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
>
> This also actually needs --gdwarf-5 to really check the support for the
> option, but older versions should error on the .file 0 in any case.

Based on Jakub's feedback on the earlier thread
https://lore.kernel.org/lkml/20201104121934.GT3788@tucnak/
it sounds like the dwarf version also needs to be dumped since GCC 5 <
x < 7 accepts --gdwarf-5, but did not produce DWARF Version 5 debug
info.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkGvLrPr4pHi4LKCF5t74%2Bwencdy7r38d3k_4pC9pQYwQ%40mail.gmail.com.
