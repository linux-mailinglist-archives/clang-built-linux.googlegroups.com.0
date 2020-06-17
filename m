Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDF2VH3QKGQE7HYZSGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id C49681FD426
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 20:12:29 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id v26sf1402557oot.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 11:12:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592417548; cv=pass;
        d=google.com; s=arc-20160816;
        b=Elb92qm88IE+hJ11pQkrktRaLYR4SiKnPTBE9BqL1K3XT7Pa8LpYZqAcjR0qrNGb5M
         3jnWssW4rhnUR8ogE6xVJqiRRmpOdlpn9eKoO90jlADZ7KQW3pH1E57tLbQ+/2H7GoVX
         Zvm5wlZ7fKw0ll9ftXLTqcudTpVX+GWgFJYm3m7RUn0FH64WxNmupYRAsfYJorG+3RIb
         9pxOOUKNdS1SHwiHRvhXpvRDXdnyWw4cOAPsb7idKOoURJmTEGlg/ieU6Jr6I+C/aFOH
         uEM0S0ysyHLNC8Vtu6AdOIrV8E4Mkn1eteYGKX1vvwwPZmWB2cz9ULsVihSIFdqKkNCa
         Zdmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uPoAXE1eUCTWcwQIZ9RnpmvK3TobzQgNgpT9JQI+7oU=;
        b=jdjVDFrx0Kg6tctqT/MvUu3PVvdtiUyrlJRBnK6TtJ5SpHKZWa/h18ie2qNOES3L16
         A1fNCqp26DYIRLsApWt4VBh1tBoXixf7QY47+hmtWvdC0mVBXJnbqEcGDlLFdZrXaNft
         OM0iexLs+nng2h/ctek2DDGsYP/Ldl/B7u7FWPCKEN8AtPXIIm7APlcitBRIhuaqHxkx
         sJo/HnkInqc1uG9TnUIBkwb8j8PvaHG+ewL1WF9uR+HLszHkezn/LdRMqfzIW1Ijo2dd
         BZbf75Gjk1B/UUdlnorW2o402rFFI5UIGV1+hXXLKrhcjYZdpRDvd8S0Z8aErOd09YPk
         fglw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YH8szS4h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPoAXE1eUCTWcwQIZ9RnpmvK3TobzQgNgpT9JQI+7oU=;
        b=jMwq6FiGNboPHJHrQgVRqZOFJyRVIz8BawNrcirDrISq3OZBUksT7t1FcsPFkN2Vim
         iqLcOXkQMyl1k78evtrz8JObXp688ILMUnnhF+1QQIziJOy43CGJjxaH9nM4ZdQPRWr7
         6CQveMnVjt0g7ezKnQM/G3P67RGBM+wc+95VyncVwLaOw8WpaeRQeHzkUvuuaRB570J3
         eHZP17JeMTPkx0Xy3thOwmkrYHbNVl0BB5RtuGzDv1XYClXtOElv9M73Gp+TZbSyIwcS
         3IahFtI9ZMOyqkEmhlg1tYvlBrzfMdaiAaVSitK2eHla1W2S9HoFA5yuHODHzi4OmEoK
         002g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPoAXE1eUCTWcwQIZ9RnpmvK3TobzQgNgpT9JQI+7oU=;
        b=g9QLem/IlnzaUA1rPWopsYt0GG8+SX1hltOh2flhK/Y4hjjEiX2ZNoWRGe6qiGAULs
         0+vvM0yb7Osd8OCE6mw8nCadNbhrc+zY4Vx+z5H0o+En/io9uSmhMs6pFtQrfIZ+amhP
         GVDdYhpcUpE1B+wwf3No8IKqGfY0c5CrpPwmDpd1dQimf/whjqlAkUPzzohPn9lgJLc0
         8nUdZgKAuak8hKyy5Zcn4jge/aZuaBlYZjSyfi81RTtLfuwp9QIYoxpJA46JzaKK9oE0
         wzsTcjpAqXZGeB9SQe+ufzIZ5SjWzYv+nwwposbLgyDR2/s8U0ynVSFf4imtsVPxR73o
         hHtQ==
X-Gm-Message-State: AOAM533VhOj42H7Au27u5jR9GBJyic2t4zj+R/aEG7H+ts83pjvsp/1G
	xqAWeY+u7SQO27SyC2+TIFk=
X-Google-Smtp-Source: ABdhPJwccZGcZhxG2wBz7LykdWdBsEl9evOqtJZNvVnUzwcI4sYkSx0C2OGDVPzOOljAmTdydHKyng==
X-Received: by 2002:a4a:3516:: with SMTP id l22mr631316ooa.5.1592417548737;
        Wed, 17 Jun 2020 11:12:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19a8:: with SMTP id k37ls703142otk.10.gmail; Wed, 17 Jun
 2020 11:12:28 -0700 (PDT)
X-Received: by 2002:a05:6830:1059:: with SMTP id b25mr239117otp.128.1592417548412;
        Wed, 17 Jun 2020 11:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592417548; cv=none;
        d=google.com; s=arc-20160816;
        b=Ke41O1fYfj2vemSZSjbtp9p947Ug4zV/uUnVV0tkCvtkPQ85wRZvga5mOqRUxXUb8j
         DxpFwQu63iggsrXM/kJ6JxBBH9gQkByHpMVypzROYf1RSyuY/jmV5bAoF+EtfUn9VL0N
         shffSz8dt6bE9DFIiWHOhtucXZeeHV3czSc/YvqAv37gOyo7Epe6sGJEtGW0+tmBHXIn
         ZaiIAM/jj/onzgoIhv25WvU44NpwkLILboQ0zwFg4aNc5aV08QWwMiUIFHwAkthN5b99
         YytV2BvN1WXeWfw1tuHvSlttTeasVET5msElHnif872J7q0RvnLelFHJaODSgpd2y/LB
         8tmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GAvURh14awh87KZ3Zvo6NLSkXwbOC1J1c3WAlfWvfWo=;
        b=RFKkki3G2qLDNpVZOKJtD4figN3NYYTzdqK1cI3rBFVSKW+VyH2YfCdkC4VKQiQ6CX
         mQvMoa+9OsDHuH1gEEo7xYw8r/zOyaxa6Tdd2ZjxcibNHHtjAKL8iPxxONFd70WdYJQR
         y1WdrQl/4q9/XJdz9bAVCAGhc0WpIwVleFvS+2cdRaqefM3rkvCw+574yTmwTwSSi6Jb
         9mRQNcdkTM5AqcNYyqlY/J28oZ/TSWW8FmYKK+GwIqNp6q/lS3j0O6OxMg2qaYYV7HdK
         E2udbSCrsQJZFm7uyKZ1qxEp2eFUB764x5969f1LsdUM/t0YR9jOAR5E5SuV/Jv1x/Sl
         +VGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YH8szS4h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id c22si63730oto.3.2020.06.17.11.12.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 11:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id h22so1460402pjf.1
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 11:12:28 -0700 (PDT)
X-Received: by 2002:a17:902:b698:: with SMTP id c24mr255095pls.223.1592417547764;
 Wed, 17 Jun 2020 11:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
 <20200617062109.woy2uyefdplw3pst@google.com> <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
 <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com>
 <CA+icZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ+bB4RzCHoA@mail.gmail.com>
 <CA+icZUXacdF8Fvd=8mz9wS3C_Am5n_yoE42DKc0X3L3ywfKRQw@mail.gmail.com> <20200617130547.GA2489039@rani.riverdale.lan>
In-Reply-To: <20200617130547.GA2489039@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 17 Jun 2020 11:12:16 -0700
Message-ID: <CAKwvOd=Akqc8txfD+i2jS_a1VNEeFptE3v8f2WHZubJ5wyyg1Q@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Arvind Sankar <nivedita@alum.mit.edu>, Sedat Dilek <sedat.dilek@gmail.com>
Cc: Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YH8szS4h;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102f
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

On Wed, Jun 17, 2020 at 6:05 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Wed, Jun 17, 2020 at 02:58:44PM +0200, Sedat Dilek wrote:
> >
> > Interesting:
> >
> > File "aesni-intel_asm.o" was built with IAS and I see DWARF version 4:
> >
> > $ llvm-dwarfdump arch/x86/crypto/aesni-intel_asm.o | head -5
> > arch/x86/crypto/aesni-intel_asm.o:      file format elf64-x86-64
> >
> > .debug_info contents:
> > 0x00000000: Compile Unit: length = 0x00002ad3 version = 0x0004
> > abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x00002ad7)
> >
> > Building with "-no-integrated-as" and GNU/as as AS cannot benefit of
> > DWARF version 4.
> > I guess my GNU/as has no support for it.
> >
> > - Sedat -
>
> GNU as has only recently gotten support for --gdwarf-{3,4,5} options.

Yes, Nick Clifton from Red Hat fixed that based on my bug report, as
part of my work getting -gdwarf-5 to work.  Please sit tight for my
patch.

> Not sure if that's in any release yet. gcc drives it with --gdwarf2 for
> assembler input, and no debug options for C files -- I guess cc1
> generates all the debugging information in that case and doesn't depend
> on any assembler support.
>
> How are you getting some files with -no-integrated-as and some files
> with integrated as?



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DAkqc8txfD%2Bi2jS_a1VNEeFptE3v8f2WHZubJ5wyyg1Q%40mail.gmail.com.
