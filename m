Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBDOAV6EAMGQE7SDCAKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4A53E1529
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 14:56:47 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id ep15-20020a17090ae64fb02901772983d308sf6072929pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 05:56:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628168205; cv=pass;
        d=google.com; s=arc-20160816;
        b=sfiErvlgmKgpSEvcdG5wT2fuSBxs2VnETN83PZfieJI4NAixHPs0T7DkcPyRUGAtIX
         Ansf+2N5dwJ8D66UwUSx4Oj00ULjek7aY3MPg7oAPw9y93ctWwtCoJw8Dlg17FbU0T3o
         DkTvNcIgQL+JBj9cAIxQUCosdBnXJqa7J3ZSuJccy9t82wSFaSfSvCxPjZYGXSPm9oKT
         W6eYSYFwFBp14Ss8AhFioTpd3kXUoB0HtvKqvqkh/EJXC5wEHErToCEGmfXNPh9BOse1
         Yt63I6mkXhy9zCNP1LE14fjh8KBhJe+MSTNoVTwfBAPZowh/xaZAoV86vPBRQyjLNIwB
         ZzIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=QhWzy7IV97uuAtAMg3GAVR4pg89TBEnK3Dee1G9ey9k=;
        b=k1H+PiFjm17GBeD1OwIPk/+3Ahbww8fxAgle1e8vAZN7trNLeQ46AeiJYWv411x+u1
         /ypmgY+7HgGWLPjdXXzZvNyaWtHZovE4lVf/11NYEa1xxr5DsUDWKhoJNR6lG4FGir8e
         Q71qyRSUb1ebMsfDZ4LmiGj+speSH0L0Pg6SinBmdFS76VmwZyD4Y6BTvLQyEvs4heFG
         O/kb0dMPG03+3HGuCMbrx35dO+1LmmqT0AiDoREhCxJfTT34RoHDAAJ7uVFPok97UP2l
         rtuF/H9rpHAppnt/x2CjUqwjTGXeKWFfEpS0ld1RzimgmN/i99fsrqTT7hqS4gm4x1f1
         7I5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=FCGRuPzW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QhWzy7IV97uuAtAMg3GAVR4pg89TBEnK3Dee1G9ey9k=;
        b=N70muThxBuBHBhViPfUwp+42P9TzRJz/CLmn8nVjTATBkpjbZKbZemd913iYpO52e0
         mZh057MCuMtqgHozJPwdPZohaOUNTSmAroOLKlW7mAGNE6SH2FgL00oyjVBE+EePEvJ1
         js36w5NEeGg9FNoMyfSsAtZCZ+KWXnoR0QxLapNLbhlOszu1/6cQDK8ctsFL0qdXMmLz
         T6xJ/KHS7m3oQn7xsz+L9hcTf95gzkQ7h7cDV/+/GE++8JJ7GJ/pdIuEixc8QjcdxYJg
         1kSxnoDxbjdLNQv0/rnoQXJ50LGwhU7+gbfW6eSRKnEuCb6iF+Mfmuo8X3MRN+xMkfmn
         DnpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QhWzy7IV97uuAtAMg3GAVR4pg89TBEnK3Dee1G9ey9k=;
        b=fZdaXwiEuwW0udUl1gDWD92tOR+HPv/Bysj2AC8rgcMjnBhoVPB6DG1CK+V4try9hY
         KfjPnsTlnoInlXWffimm/WlgkeqLga/WswIs+vHem1FF9IECwnhjMzrKwS7TJpg3W102
         rpMBdeysBIZXJKVw4ui6iX6GlMLqIuTT8pD5yjd7byMISBFysLOuPHlwX1q4T37z19IC
         0PsQ30hINVuOK+q0tqKL1SwdY4r46TVzh+7NbWjJrTJ+vLmpOlHry1oHOb2ZJmTHnF0Q
         ykJhAfVlP8r8FP1mrjJrwH+dQjS5L8hGdOuBWjQrSnXmV9J0leluSQ56gx4QoX/pRV41
         UkqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UPkoNO6MyK+q754Mshs4z8sVwgboa/ByWHax8WY3wC5Ac7V4o
	MpxEwu6eqpJh0s7sLdK/sFI=
X-Google-Smtp-Source: ABdhPJzufvOlx19L4nDXs88a8/I1L6NS+q0uJKIsqrpV4UBDhthijj1NlERmu7mXjaFxUEdhfMr3NA==
X-Received: by 2002:a17:902:b095:b029:12c:de88:7d3b with SMTP id p21-20020a170902b095b029012cde887d3bmr3620754plr.15.1628168205636;
        Thu, 05 Aug 2021 05:56:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls2730004plb.10.gmail; Thu,
 05 Aug 2021 05:56:45 -0700 (PDT)
X-Received: by 2002:a17:902:f68f:b029:12c:228a:5226 with SMTP id l15-20020a170902f68fb029012c228a5226mr4163718plg.61.1628168205087;
        Thu, 05 Aug 2021 05:56:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628168205; cv=none;
        d=google.com; s=arc-20160816;
        b=GxfHCLnL2h2ahMGK5e+3HNX42uzd40wTEexHJhQUvIznYnKsLLT9rV0B2ExMbSMFME
         Ln6e2Sd+VMyKRb3dzc8PC8DBFa72Y+5J4di4PRb79p0Yf1b/2eZbJax55Y2zVpqSUMBn
         iZ8ezf3bToR3Xvr08HgmD/nv69vN79i14GUObs3t7n78K5stZiSjhbiIKKkqwGebuOql
         8bNhrgGagpTOVy90qvPK3BtyWxdf3P3Ii1z4j4KaN848XSXsBS8kzAhagF1kZXQ67KDQ
         9UV7dh62a1JkR9Eh0N7NAqNbcHOUCrDl7aYpzQTE6nAa60u3KVEEaAg5EjfPei7X32G3
         qdsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=/8/3wCfLu/4cFvkS/DxXUoTejOJZixLrqpyNHz7+H/k=;
        b=vbxvmL1N/vh7S9Oir5yiM3H69eMSsSe1nMES5h/ra8AQvxao9iXlMUFSow+auMq6zR
         IO3cwhY2yKDXc3MR5DolrqzMiw5f5LP0QuhTmMNFPgIgNC78V8mbnVUjKxAr+ZRoo28H
         dtqx8qQg7dxWfp1hdQqlNuZdU4hGklXctTHp+XzSlRjVgrGZPQzPtBd7nceEUIISKLJH
         I2C6/DRoRathoyHhX8gnO9FRB9MCNSVMk57vpfzOGNVIvNoJipWKmKuHw17jkFuBkFdZ
         nXQ4iuvfzLGrpm3fHNbpwYscibziw4sUqLaRsEVGrJ42tgIb5fncq7hA7Nc83I4t17wU
         2DcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=FCGRuPzW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id t17si3501pfg.3.2021.08.05.05.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 05:56:45 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 175CuNZX008057
	for <clang-built-linux@googlegroups.com>; Thu, 5 Aug 2021 21:56:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 175CuNZX008057
X-Nifty-SrcIP: [209.85.216.46]
Received: by mail-pj1-f46.google.com with SMTP id mt6so8522637pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 05:56:24 -0700 (PDT)
X-Received: by 2002:a17:902:a5c5:b029:12c:a867:a839 with SMTP id
 t5-20020a170902a5c5b029012ca867a839mr1763754plq.71.1628168183373; Thu, 05 Aug
 2021 05:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
 <20210802183910.1802120-2-ndesaulniers@google.com> <CAFP8O3Jc=iwzAQojgBZZzdT8iVBY9TO6GLTq+0vkXoo6L5JJ-A@mail.gmail.com>
In-Reply-To: <CAFP8O3Jc=iwzAQojgBZZzdT8iVBY9TO6GLTq+0vkXoo6L5JJ-A@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 5 Aug 2021 21:55:46 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS4wQNvWd0H1bEG-zbznkm_kfQHEZWKUOPQqReA+Cru3w@mail.gmail.com>
Message-ID: <CAK7LNAS4wQNvWd0H1bEG-zbznkm_kfQHEZWKUOPQqReA+Cru3w@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] Makefile: move initial clang flag handling into scripts/Makefile.clang
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=FCGRuPzW;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 3, 2021 at 6:06 AM 'F=C4=81ng-ru=C3=AC S=C3=B2ng' via Clang Bui=
lt Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Aug 2, 2021 at 11:39 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > With some of the changes we'd like to make to CROSS_COMPILE, the initia=
l
> > block of clang flag handling which controls things like the target trip=
le,
> > whether or not to use the integrated assembler and how to find GAS,
> > and erroring on unknown warnings is becoming unwieldy. Move it into its
> > own file under scripts/.
> >
> > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  MAINTAINERS            |  1 +
> >  Makefile               | 15 +--------------
> >  scripts/Makefile.clang | 14 ++++++++++++++
> >  3 files changed, 16 insertions(+), 14 deletions(-)
> >  create mode 100644 scripts/Makefile.clang
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 19135a9d778e..3af8d39f43ef 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4501,6 +4501,7 @@ B:        https://github.com/ClangBuiltLinux/linu=
x/issues
> >  C:     irc://chat.freenode.net/clangbuiltlinux
> >  F:     Documentation/kbuild/llvm.rst
> >  F:     include/linux/compiler-clang.h
> > +F:     scripts/Makefile.clang
> >  F:     scripts/clang-tools/
> >  K:     \b(?i:clang|llvm)\b
> >
> > diff --git a/Makefile b/Makefile
> > index 6b555f64df06..444558e62cbc 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -586,20 +586,7 @@ endif
> >  CC_VERSION_TEXT =3D $(subst $(pound),,$(shell $(CC) --version 2>/dev/n=
ull | head -n 1))
> >
> >  ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> > -ifneq ($(CROSS_COMPILE),)
> > -CLANG_FLAGS    +=3D --target=3D$(notdir $(CROSS_COMPILE:%-=3D%))
> > -endif
> > -ifeq ($(LLVM_IAS),1)
> > -CLANG_FLAGS    +=3D -integrated-as
> > -else
> > -CLANG_FLAGS    +=3D -no-integrated-as
> > -GCC_TOOLCHAIN_DIR :=3D $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > -CLANG_FLAGS    +=3D --prefix=3D$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_CO=
MPILE))
> > -endif
> > -CLANG_FLAGS    +=3D -Werror=3Dunknown-warning-option
> > -KBUILD_CFLAGS  +=3D $(CLANG_FLAGS)
> > -KBUILD_AFLAGS  +=3D $(CLANG_FLAGS)
> > -export CLANG_FLAGS
> > +include $(srctree)/scripts/Makefile.clang
> >  endif
> >
> >  # Include this also for config targets because some architectures need
> > diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> > new file mode 100644
> > index 000000000000..297932e973d4
> > --- /dev/null
> > +++ b/scripts/Makefile.clang
> > @@ -0,0 +1,14 @@
> > +ifneq ($(CROSS_COMPILE),)
> > +CLANG_FLAGS    +=3D --target=3D$(notdir $(CROSS_COMPILE:%-=3D%))
> > +endif
> > +ifeq ($(LLVM_IAS),1)
> > +CLANG_FLAGS    +=3D -integrated-as
>
> -i* options are for includes. -fintegrated-as is the canonical spelling.


If -fintegrated-as is preferred to -integrated-as,
please send a patch.
(on top of this series)


Thanks.






> Since -fintegrated-as is the default (for most llvm/lib/Target/
> targets and the ones clang builds actually support),
> it can even be deleted.
>
> > +else
> > +CLANG_FLAGS    +=3D -no-integrated-as
> > +GCC_TOOLCHAIN_DIR :=3D $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > +CLANG_FLAGS    +=3D --prefix=3D$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_CO=
MPILE))
> > +endif
> > +CLANG_FLAGS    +=3D -Werror=3Dunknown-warning-option
> > +KBUILD_CFLAGS  +=3D $(CLANG_FLAGS)
> > +KBUILD_AFLAGS  +=3D $(CLANG_FLAGS)
> > +export CLANG_FLAGS
> > --
> > 2.32.0.554.ge1b32706d8-goog
> >
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CAFP8O3Jc%3DiwzAQojgBZZzdT8iVBY9TO6GLTq%2B0vkXoo6L5JJ-A=
%40mail.gmail.com.



--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAS4wQNvWd0H1bEG-zbznkm_kfQHEZWKUOPQqReA%2BCru3w%40m=
ail.gmail.com.
