Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKOG5SAAMGQEQZI2UKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C2730E604
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 23:26:50 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id m21sf1070859qtp.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 14:26:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612391210; cv=pass;
        d=google.com; s=arc-20160816;
        b=IyOKzj8Fa11Lj6sj15/S9DIUl4mGzqDt4jbWj1cqw156MmQfGoOzrt4Kp3khfYnhUO
         TNdw78BETAelTL/w4gVqH8z1Cku2UxFL73HEV+QsNwlTIULNhuBKp+Ppo6m6z8nMciHo
         4QRkc5pxS5IDjOa4xzhfOKhOKdbc2dzASUoDjhN+uGPhs//Pl47lfhrf2e7xnfe0V+K0
         R6XRQ4KhWAxOyMMsOSkefanVzQvzi55kuSNgODlygWEyAEs0Z1uZujapQ8uZh1h4q7wj
         pmmIZwxfTW8HHOamsqeGS5mYgurKCLJwOvFjlHDMJqRKOm3vnaNsfJl4nmvvUkrUP/+x
         zf2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=sjRqQwEs81qyEDxX+bp7twnVTQEn+ODuTPQbPO52LjY=;
        b=O7jnhPwzONrnGD+TgKEuvSkYZZ793IG8lMud2b+kpld4evgDPwxuKI8aKB3a7f7wNC
         VxzgrEiJWFGKsTCj99v0kdg5LFllvc8OjtMYj2Za0b0Tj+m/Hhthsj2uoBaRobrHQ5by
         Mz5JbP41uaultCqulmx6s226iGaTaJJQQkp/HhLf8w0euL9zQLaYX51rNx+xk2YhUbvF
         Yt41frl9XWtN5ur5n+z53Or7VZAcfHWGOHgzSBPMhX+K28S3St/6RLbqZcRnV0MsqQvU
         MHdJ4N+hSxh7qtkQaISqKRshQQvu/fjPo3Zvp4Fjf7LdC12ECozviliS+fFFHuTWKuqJ
         cUDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=zNjACUlI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sjRqQwEs81qyEDxX+bp7twnVTQEn+ODuTPQbPO52LjY=;
        b=Tgk2T/dWqycwLmgZColD2RlhQS+b7PBnhvGCm5GlGF+4vswLOYVa16wgHyHrG6A/DB
         scIAdUS36DVR4JZRKh9czisHcLg9CnJgW7NcMA2PPLulHtRnur9kMszBfNgkLm5UPWfF
         W+eu6XV7Y2WyUbBag9HiIgPCRVU3sZtQr50MFJeL7yilbiwGHykN+4AT8ihMOJ07sVXt
         oUzoMxUxnGxrZIeDrc0ob/MzsdySeIJwm7vESPL7Rxh/MNy3h9QLmb0X6bnNJS8LFxLL
         OMMd87LRcOhEUHdvjTQmDOF55QsoEBX/MwoUEWSSvin4eOTl8xpetapzIUo7idx3pWLr
         OUJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sjRqQwEs81qyEDxX+bp7twnVTQEn+ODuTPQbPO52LjY=;
        b=eZsqQtBgEj4WlwhV33gMXXHMe6YGZq7nGp6j6IVc+S0OnZBIvkSan09/3VyFYxdAbm
         FGz8O2qwfRU7pTnrbqtZEJsH5q117sRag2EIoPR/V18Y0LKVQQbeTA6V3lXnY7hlyxdJ
         5MDqYjdAnA8ZxOzcQ4wEI63gQXhR6AUaoXc0K0ax4/eX5LZk2xfk+AUtcosWjWYT1nuL
         FvEHdoCeO2GEZu+hOxNyNxmsd3O9zvvtbRAOFl0Oh3v2KjOGnfVq2UN2lUj/7ttNths4
         /nGJCojEHOC4BbZ1+MPW8I+ur326R3Hl500xejZtbI4xsJ7JZcRSUnEAyP94moHkLkU0
         2Dnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AwdQAc1UV3keesWDOqMOfG8LSZF2qVhfbyUJZWDgLdY9FOusX
	WzefEDOeTOe8Ipkg88CWNUs=
X-Google-Smtp-Source: ABdhPJxiQUWDJ+HX37K4S9tj1HGJ6CI1UkLXNpMbYqWOynlBSCRSYO1Ci0HZeZSbG0h6Zk+w/P17kA==
X-Received: by 2002:ad4:48c8:: with SMTP id v8mr5058494qvx.38.1612391209881;
        Wed, 03 Feb 2021 14:26:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bec6:: with SMTP id o189ls1998147qkf.4.gmail; Wed, 03
 Feb 2021 14:26:49 -0800 (PST)
X-Received: by 2002:a37:4905:: with SMTP id w5mr4855112qka.332.1612391209541;
        Wed, 03 Feb 2021 14:26:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612391209; cv=none;
        d=google.com; s=arc-20160816;
        b=ZuFePY+hEuCPoWjGikSuN3j0IVtNh9wvD5wStkn9JGrvMynAA3AkqhTYaZQ9wULCME
         Z14B8iplsgiyiMurTgvbTyclfCkJ089fZ/Y5S1dMPIT53/x4pC0jE8whyo6BzpKN9zB8
         5mos62W9xYNvqo16z6XhigJMYhu5BETrD+FWonu2P8t08UlD3jnxssN/1rSjmrxh8kBN
         +e0Ll0QimYv9WJCZlUdBx5iRq1t2pyRcGjzHsUut+1zoxxTUqemKNKwJ9kFuol79ajhH
         nJaeaFa0brJmvIe4bSfgGui1tQIzwWotyFCis7Hx1nm5NZjbB02qzPwar/OLy6mlIbuo
         2s/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=KNoRa1M7aXZ9EARkAVysyDE3B2jC5KmUmnY6dfCesYk=;
        b=C9ERnora4bKAOXZWdqdOt64tOXmesh+YOn0t/XeUexNY+BD3E+dZEbZCiH379zRs2j
         NHYGCT9dUqUq/qJ+Xei2S8JV8vOtsU3gsrKvJcQqhkuKli2nT0uZqmoMv3DhQFeplJNV
         19nEr1LwNuJqsmdPEfsOcbqKkcU36riFA5V0kOMtgZZI8a1MTdDXz/NudVvH6UJewou+
         Yp0BzZOaahlYwuEvVvgOeL97ur0BTZwtQGZ5NBE1nozqOIi2QKr8DCqstAOJ3pzSODr+
         aCgYBE5go7A2O9lX6O52ICQrfuv93zLYUkeQ3U28FUyQWYcFRzH4Jna1HL/aFukghh57
         1OqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=zNjACUlI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id m10si93428qkn.7.2021.02.03.14.26.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 14:26:49 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 113MQSGS028500
	for <clang-built-linux@googlegroups.com>; Thu, 4 Feb 2021 07:26:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 113MQSGS028500
X-Nifty-SrcIP: [209.85.210.172]
Received: by mail-pf1-f172.google.com with SMTP id b145so764411pfb.4
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 14:26:29 -0800 (PST)
X-Received: by 2002:aa7:8f13:0:b029:1bd:f965:66d8 with SMTP id
 x19-20020aa78f130000b02901bdf96566d8mr4811312pfr.80.1612391188381; Wed, 03
 Feb 2021 14:26:28 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210130015222.GC2709570@localhost>
 <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
In-Reply-To: <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 4 Feb 2021 07:25:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT1xrU3t6xV2qHEO=J4Q3NV=ap4b=c129JD3MWsptEy9g@mail.gmail.com>
Message-ID: <CAK7LNAT1xrU3t6xV2qHEO=J4Q3NV=ap4b=c129JD3MWsptEy9g@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=zNjACUlI;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Feb 4, 2021 at 7:23 AM Masahiro Yamada <masahiroy@kernel.org> wrote=
:
>
> On Sat, Jan 30, 2021 at 10:52 AM Nathan Chancellor <nathan@kernel.org> wr=
ote:
> >
> > On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > > the default. Does so in a way that's forward compatible with existing
> > > configs, and makes adding future versions more straightforward.
> > >
> > > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> > >
> > > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > Suggested-by: Fangrui Song <maskray@google.com>
> > > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > One comment below:
> >
> > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> >
> > > ---
> > >  Makefile          |  5 ++---
> > >  lib/Kconfig.debug | 16 +++++++++++-----
> > >  2 files changed, 13 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 95ab9856f357..d2b4980807e0 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
> > >  KBUILD_AFLAGS        +=3D -Wa,-gdwarf-2
> >
> > It is probably worth a comment somewhere that assembly files will still
> > have DWARF v2.
>
> I agree.
> Please noting the reason will be helpful.
>
> Could you summarize Jakub's comment in short?
> https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.18=
75129-1-ndesaulniers@google.com/#23727667
>
>
>
>
>
>
> One more question.
>
>
> Can we remove -g option like follows?
>
>
>  ifdef CONFIG_DEBUG_INFO_SPLIT
>  DEBUG_CFLAGS   +=3D -gsplit-dwarf
> -else
> -DEBUG_CFLAGS   +=3D -g
>  endif
>
>
>
>
>
> In the current mainline code,
> -g is the only debug option
> if CONFIG_DEBUG_INFO_DWARF4 is disabled.
>
>
> The GCC manual says:
> https://gcc.gnu.org/onlinedocs/gcc-10.2.0/gcc/Debugging-Options.html#Debu=
gging-Options
>
>
> -g
>
>     Produce debugging information in the operating system=E2=80=99s
>     native format (stabs, COFF, XCOFF, or DWARF).
>     GDB can work with this debugging information.
>
>
> Of course, we expect the -g option will produce
> the debug info in the DWARF format.
>
>
>
>
>
> With this patch set applied, it is very explicit.
>
> Only the format type, but also the version.


I mean:

Not only the format type, but also the version
is explicit.




> The compiler will be given either
> -gdwarf-4 or -gdwarf-5,
> making the -g option redundant, I think.
>
>
>
>
>
>
--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAT1xrU3t6xV2qHEO%3DJ4Q3NV%3Dap4b%3Dc129JD3MWsptEy9g=
%40mail.gmail.com.
