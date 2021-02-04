Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVM652AAMGQEKNC2FAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CEF30EC4D
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 07:08:23 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id w15sf1446987pgt.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 22:08:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612418901; cv=pass;
        d=google.com; s=arc-20160816;
        b=m21+Bc2I9q/TCymJy1AI0+HLbUTlRdviRiEWfvp9BI8eTfDe21ci+xJtxVUrJ22lIS
         d4sSfnl0QSCSSWC77p2b48p4mG9c8hbUUq3J2fGwgIJzHnjULkdYpF+pgWwEex3Oq9Zn
         i7/28FpnoQqT+AVhLqTyIYCYnV7k7EQBEJR+vfStcrpHecekJS9TJl0QyFQw2ZgAET7V
         prMwxmc8uKwXIWTeFyADiQ28r546Tk7eJExk+KQU7ie3USUnq7X4FyUYgFrDEkHRN7tn
         o/RzAnof3cs9NxloyeiISnxSKZDgX0k7vlhWNSRzmeZPQCUPGBJmfG+1CQhjXvlUrH+W
         k6mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=litR8kwBwLmun7G0prewZQ3MziZcoo4g3EI9hAng+QI=;
        b=C8XtXzAeSGY0/BM7q853ExBdK7t+bSdcvT18repRHPNFOZ1QIRyvRlLQ2nivKKBmvI
         1N45SCogmLTQSXOHeUVDt4bQxouqSnxCfKU/hEZo85HjRgMzoCsv9alh+m0LSi5EN/k3
         k6YVVYVtSgERwxpLJCyL4fT/25SC0N9WvPMlgD7jlIdgq7cKmxoSS3jAxrt284A0DR0g
         C5nA4mq1M+HYim4h2PduT7LTsd9G68G4iQIwnyh3FsHG/lQ9eZ64SU+LuPM1xDJ1b6eo
         5n8luftwPW5wPuyTKUoJeDCDp7e9NRmssSIxCJLxXdgD6mS7xrfc/Vr55JVCJnRjH3mL
         nHhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NY6v3PaH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=litR8kwBwLmun7G0prewZQ3MziZcoo4g3EI9hAng+QI=;
        b=MibUH0juEYTlLr7rC7bGvreCKyxKJtAZ5ZpAKX7/q1t/6eDPN2Qq5URSFSZyJ2tRpv
         1PEu6mXzIvDjtgRXDnKlqzH3vFMWoVl/Mfdwxf6z4REYbJWa87GWlXuqPXlS9T3x1XsC
         beWcPHSLO+6+1nhGWMnmf1woE2k4585pBpxhTmW4KXz3T7RJGE8jdQUBqyV6d49B2OuU
         RAaxIr+jjn5r+aVGFI/BLoqlQ1I3OF6/uFd0guxPc3drpdXbu5OdM4h1G9P0YO5O1hht
         TWzyWYUVddxCitbGpD1eIV11dbbKr8o0DzgR3YUH/q+mjcYAwXGSCThYkpneGiAgztFm
         VUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=litR8kwBwLmun7G0prewZQ3MziZcoo4g3EI9hAng+QI=;
        b=pwv0z8HWJLUuQbSZ+RiBHxFuwwnyuseKEGq8DMU7cNHy48Gy/vfC1R2qbkFTSkcD+3
         5yWw+coOEh5J83PEBl1BPwNyTkBpsty2c56nAWOm05CnzG2AvytRmZbdewSClYWwpoza
         tqnXzQWgpWhZMvu5wn5+h1SbHmaMYVLt6/lEIJzi92mPdxEjDoqajFJ+lcAz3bY6hGp/
         WEjqzej/4FqLTIeOwtpnQHsoYktjzqwpweXP5aCVlQKJUXQKdeJnee/4fTm8UJe6W9RE
         eUgsAnbJxYOYGyWBaPErR4lE66xOwLmJkY7RNNF8WalB9rgPxx4Oz432Wg0SuWHbJNq5
         6tYw==
X-Gm-Message-State: AOAM531OocnjwuE5HSw96YdnAhffuOjvsyczOvL+3e+DmknXxvvaM8wG
	4M34la7dXwxoKw4j1yPxDCY=
X-Google-Smtp-Source: ABdhPJyS14mL0+X9SB/W2yvsjQmF8aC4eTutDV5RzepZ1kCPwFel+nyMFh8GfDhU8ym8ygV7H29l6Q==
X-Received: by 2002:aa7:829a:0:b029:1c1:1a3f:db25 with SMTP id s26-20020aa7829a0000b02901c11a3fdb25mr6475269pfm.60.1612418901655;
        Wed, 03 Feb 2021 22:08:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a707:: with SMTP id w7ls2196327plq.9.gmail; Wed, 03
 Feb 2021 22:08:18 -0800 (PST)
X-Received: by 2002:a17:90b:4a02:: with SMTP id kk2mr6817816pjb.115.1612418898379;
        Wed, 03 Feb 2021 22:08:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612418898; cv=none;
        d=google.com; s=arc-20160816;
        b=GMXFGaktFYkG7catAIwDSz4qGoX49+pOYvdOtJfrUQmuj7v+ZyDH4eeG89XXlVUo3I
         vpzdnHvgUuVVv0Vd8fmWGNUtXjkMRXU/U/uzOqxiv47I4aZ35dtc9XgzTDBzILJ5HmMo
         766UWP+zMalNf6I8DUy4LuzGTOonv68mmkzXCBQmkSZOmAnp9GvXkSC2PrJNlcO+SqvW
         UjVtKvf0HGjt3jNk5uF9ND8q++FTef1FSHWzQlZSgqf09GPLoe/S8gmBP/bTCM8eXTLU
         lhqdRkVO2iC4X+wGCFjjLY57t5uKFk8v+mcvtADbrl5QN7w9g3ieBnJms6uHlRatFWP0
         EqIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EFWVBuY0De+XPIimdUvHgr/6vnHHJFFofML5VvndojY=;
        b=BqAsfe2KuMUxLA2jhCubWfe3ADf/g8rWlXLBvGKZyQbKCFlsZz1ih4/KM8X6fVwnUr
         Rz/TbGL1v+g+6nJeUzufRbJVLFkeyGo8z8v9ce7SMep5njtfXJvRgkFaUsF7p8AFL55T
         mBoTHoJ5LxfCT3N1/4npSzVdPs8NE3vfomw042IIAd7PIG2+BgPcEaVEDTvUEpcLleTf
         Z7WPjArHj54DhkC1IvDLlMBxx5JkUlOBi1o4lnwuuEJmg+hpGidDPJ2nn8P6MfXN0oF/
         TP7TPz+AAGgOr0MLq8bjJwyJZzYVtrC+w4ylova2pEHJ+640ftJcnc5BmAbU/s3jYndc
         ARHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NY6v3PaH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id kk5si95293pjb.1.2021.02.03.22.08.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 22:08:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id d13so1210790plg.0
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 22:08:18 -0800 (PST)
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr6790066plj.56.1612418897835; Wed, 03
 Feb 2021 22:08:17 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210130015222.GC2709570@localhost>
 <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com> <20210204033210.ie2a5zuumtlb4jth@google.com>
In-Reply-To: <20210204033210.ie2a5zuumtlb4jth@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 22:08:05 -0800
Message-ID: <CAKwvOdmCt0ueauZ98VwgY7bx_bY8KOwXz6q-aexVQ6JCPaW7GA@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Fangrui Song <maskray@google.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NY6v3PaH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c
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

On Wed, Feb 3, 2021 at 7:32 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2021-02-04, Masahiro Yamada wrote:
> >On Sat, Jan 30, 2021 at 10:52 AM Nathan Chancellor <nathan@kernel.org> w=
rote:
> >>
> >> On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> >> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which i=
s
> >> > the default. Does so in a way that's forward compatible with existin=
g
> >> > configs, and makes adding future versions more straightforward.
> >> >
> >> > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> >> >
> >> > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> >> > Suggested-by: Fangrui Song <maskray@google.com>
> >> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> >> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> >> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >>
> >> One comment below:
> >>
> >> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> >>
> >> > ---
> >> >  Makefile          |  5 ++---
> >> >  lib/Kconfig.debug | 16 +++++++++++-----
> >> >  2 files changed, 13 insertions(+), 8 deletions(-)
> >> >
> >> > diff --git a/Makefile b/Makefile
> >> > index 95ab9856f357..d2b4980807e0 100644
> >> > --- a/Makefile
> >> > +++ b/Makefile
> >> > @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
> >> >  KBUILD_AFLAGS        +=3D -Wa,-gdwarf-2
> >>
> >> It is probably worth a comment somewhere that assembly files will stil=
l
> >> have DWARF v2.
> >
> >I agree.
> >Please noting the reason will be helpful.
> >
> >Could you summarize Jakub's comment in short?
> >https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.1=
875129-1-ndesaulniers@google.com/#23727667
> >
> >
> >
> >
> >
> >
> >One more question.
> >
> >
> >Can we remove -g option like follows?
> >
> >
> > ifdef CONFIG_DEBUG_INFO_SPLIT
> > DEBUG_CFLAGS   +=3D -gsplit-dwarf
> >-else
> >-DEBUG_CFLAGS   +=3D -g
> > endif
>
> GCC 11/Clang 12 -gsplit-dwarf no longer imply -g2
> (https://reviews.llvm.org/D80391). May be worth checking whether
> -gsplit-dwarf is used without a debug info enabling option.

Indeed, I also remember -g was required for
-fno-eliminate-unused-debug-types, used by libabigail.
https://reviews.llvm.org/D80242
Masahiro, respectfully, I will not touch removing -g in this series.
I suspect it will be its own can of worms.

>
> >
> >
> >
> >
> >In the current mainline code,
> >-g is the only debug option
> >if CONFIG_DEBUG_INFO_DWARF4 is disabled.
> >
> >
> >The GCC manual says:
> >https://gcc.gnu.org/onlinedocs/gcc-10.2.0/gcc/Debugging-Options.html#Deb=
ugging-Options
> >
> >
> >-g
> >
> >    Produce debugging information in the operating system=E2=80=99s
> >    native format (stabs, COFF, XCOFF, or DWARF).
> >    GDB can work with this debugging information.
> >
> >
> >Of course, we expect the -g option will produce
> >the debug info in the DWARF format.
> >
> >
> >
> >
> >
> >With this patch set applied, it is very explicit.
> >
> >Only the format type, but also the version.
> >
> >The compiler will be given either
> >-gdwarf-4 or -gdwarf-5,
> >making the -g option redundant, I think.
>
> -gdwarf-N does imply -g2 but personally I'd not suggest remove it if it
> already exists. The non-orthogonality is the reason Clang has
> -fdebug-default-version (https://reviews.llvm.org/D69822).

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmCt0ueauZ98VwgY7bx_bY8KOwXz6q-aexVQ6JCPaW7GA%40mai=
l.gmail.com.
