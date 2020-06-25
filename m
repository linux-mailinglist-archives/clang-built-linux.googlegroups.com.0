Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEVB2P3QKGQEL5FJ2DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1999E20A2E2
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 18:28:04 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id 40sf3942721otc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 09:28:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593102482; cv=pass;
        d=google.com; s=arc-20160816;
        b=AyLbQgEmPjziyLjI+6/1GvQDEnV8RgrJgds7WGvq9JAlNoofbRdTUSiXht7Fs89aZ9
         1tuJnAaMkRL2PWt30gJM+kn159sPFPsRxTl4Tz1E/NjtM14359T+3Lw0lVH3ZhUIG5cG
         n5AMayr+Jc2OpA0yElH6iALLyaDGWTLXI+ZiDGdDtY7DiJ2zshCJNubetBwrdKZPvKcR
         YdcTvUlRRf3RjsWda/V9hIk9WJdTvRtmY7IB8J67Yp8iZ/MiX23D3FNFcNf0QCyaZy/N
         xJ7vzWdil5LzjvGpGDhy90HieGgqCvcSc4H/ktsJSmouuA8PlP/NdTotYy1qw0QuShov
         hiPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SESR40xM9O+AqwuLmVQ+hjMuF9hApvSWvCGDU0jPrjI=;
        b=AAEpcR69hCUsQ1P63cZMJCMEXk4lGo8PRz9meLTxRs29yLZ5W5olRpqKvyix3B6hbM
         ydQW1xrkNkNTVkewtR7kVZ8oBGOsi0wTyM9A9XF+zLsUnj7Hc/To3Ijzd3Yl53mso/gj
         u/eCZN4fq14VBAAUBwypyqA6WVtXiDOmZ6DCxGhfrqVi5qnYWF2VRr1tpZ0DFT7P70U/
         csfBVMV5PyaSWHZ0luLzqvHN5tdm5IelsP63tYng2a/ju1cmUFfkv3iMP9n3i5NFL0ev
         zEl7BYjPb7JQs6uInSnLOMYU32505ZcuZqXE4FDgytBcYvKk2UNrSSrFwBRh72r/yZfh
         pYfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kLi0A2tU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SESR40xM9O+AqwuLmVQ+hjMuF9hApvSWvCGDU0jPrjI=;
        b=rzRSLwk9vMGBpRAyumYGzUuy7iuOmI61Joa841SO8rnM5bkVBEZYO7GV9dhKUbqM6G
         kHp7d4VA9raud8ZsXX9WKWHIuALsgrPq1OzUM1ZiA9jOQ2bCKSxCJ00RiBCbPD4ZDpB8
         7o69U8AhXmKxW1WLsdEGOjrRyEYt3c6HT5WSzryHBom8/Qfpza4+rhXgiP8KW4uwsi0u
         +NBijiarFtHMaUB+DqGUuli1ns+RIQ7siHZK0BUXU98dWgmkej3ryzwSL0g42Ko6M3E+
         qfohgEwa3GT5isZcSl2CUlPkkWYNBalp6N3CaTWzKe+fMGuWrJs6jVUZ/j0mopm5boCO
         oqgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SESR40xM9O+AqwuLmVQ+hjMuF9hApvSWvCGDU0jPrjI=;
        b=GfgfrUL9N0fVSsF1IFEERMHi77yxIuEnmxCU/WFwdnrmy3dt92W9Z/MJzLe9JV/YO4
         IGh6LfnifO7YU+FqDEzKhjM1MRXRvqDmiB4rwzrwRfa6CltPv/xQP2cAjfnUeM70fSeH
         GkBmQl9/UAnHs5+/KuOBHSo5N54JPNmZD/zKhOkqx8CXy7uWF9PM++23fCiAgaB/WXbk
         qs0AevM4zaY+hi+M0HtQWIWdgZvvvVqPo/qBU2qJ0x8NHDjKz66d1IXfZyi1R9PGCpwK
         72jztj+NGcY/zDqQwTtPbOOF0ODpUyc2rjCpFkCsQ/Usazn2iLDP9d3MJJ1wgGXfuSoB
         TIyw==
X-Gm-Message-State: AOAM530wOqZlWJfaAd0nn1Bv1JlMlgEjNNF0Sh7QlYM7fSTLg7P0oRG9
	ZnpDxbfxFBIMzimnHOApXW8=
X-Google-Smtp-Source: ABdhPJwvXzJO9/Ypropzn8wZoLW6t5VVTshkFR+YGUVLY4ybdHYBvW19oaSXq1BCfA61unM7HHrQvQ==
X-Received: by 2002:a54:4504:: with SMTP id l4mr2856739oil.22.1593102482627;
        Thu, 25 Jun 2020 09:28:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1446:: with SMTP id w6ls1325707otp.8.gmail; Thu, 25
 Jun 2020 09:28:02 -0700 (PDT)
X-Received: by 2002:a05:6830:1d63:: with SMTP id l3mr21452647oti.261.1593102482234;
        Thu, 25 Jun 2020 09:28:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593102482; cv=none;
        d=google.com; s=arc-20160816;
        b=NO3MEhbHTRLBmVF6LW8LtXgB7xLFtK/y3VroEWDZB5MmYLoSuQFjeH5xdhsJIo1bq2
         Js8+eRA1b/ADK7XW541TbFOcQnjyLB8GUKZ7vPofm5zpvZcI+w9QKMMxO4psIFKdTWRw
         Pp+kjWaz0zgjgT4TBOIV1UH4YIpHp2oqtJ1SDjjSekdi5h8+izgjCnb35enr0Ylbiuga
         zI0ppymaf8PqkCkdb0hjGUZRH5CsvsNcRwENE0tvvcYQTaEklYUX5wO2RSp/SybXD71W
         70ugGGLjhhi07tSi9kH8wjzhx47g3Wxd0uDdl6lGsv+wv4KTTd6WeTFur8XZNbpCYXv4
         WFiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=uxfJT0CjFgH0A0a9j0jUPRybS7oSpepD2PFJvp/RCMA=;
        b=Zludkd66rPGWRuCZjgbMpynn9W5n7VGIuXEQY1TZF/4RaXCXH/VGrVHVgs+1tPy/n6
         YJnnQC31O/a2oitjZ9DAdyRT6QZwkCWIn7THyUMoqDsEn/YFgibmd6GKiAEl/muyyaXl
         PzpTAoYeJk8L0U/dLw1yYrLwYtcdfGvIbrXBXgdKLQgFJGdxv7afb1+RvoXTUE5JqKt6
         R0LDmFhaaK5G6WtEATVJ2zWw/Pob8YDqV6oos6uVQ7YLOU1m8p+M7OVQnLen336WH/1v
         kfQc8p9FnX57d8Ww8sdBoqDcdrwTp9RQorwWZzEzpQ++8DI8AsoEkI/ykPxUYLlv+9yC
         /Juw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kLi0A2tU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id l18si1644582oil.2.2020.06.25.09.28.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 09:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id r18so3508531pgk.11
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 09:28:02 -0700 (PDT)
X-Received: by 2002:aa7:9abc:: with SMTP id x28mr34654467pfi.39.1593102481248;
 Thu, 25 Jun 2020 09:28:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnaoaZPLqcn6yiFEpEVx=HmpRe1ExhLZfzLhHs7e7Atww@mail.gmail.com>
 <31688.1592897284383266895@groups.io> <CAKwvOd=3qs9TLkzNE+uPH-fY=+u=P2Abz0sZxroauEDdr=jLJw@mail.gmail.com>
 <546249396.1205166.1593091500255.JavaMail.zimbra@irisa.fr>
In-Reply-To: <546249396.1205166.1593091500255.JavaMail.zimbra@irisa.fr>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Jun 2020 09:27:48 -0700
Message-ID: <CAKwvOdkgjZ4mmjspLF-7D2hUX4NXbRc8gio=+Lhk1WxuNTmN4w@mail.gmail.com>
Subject: Re: kci_build proposal
To: Mathieu Acher <mathieu.acher@irisa.fr>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kLi0A2tU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534
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

On Thu, Jun 25, 2020 at 6:25 AM Mathieu Acher <mathieu.acher@irisa.fr> wrot=
e:
>
> Hi Nick,
>
> Sure I can attend the meeting and present our work. 10 minutes is OK!
> And then discussions ;)
>
> 1st july is the next meeting but when exactly? it seems 12PM in France (I=
 guess 6PM somewhere in USA), why not I just wanted to be sure.

Ah, looks like I did not have a timezone set on the invite.  I've
pinned it to 12PM GMT-7 (Los Angeles).  That's probably fairly late
for you, but worked best for some of our attendees (at least one in
Germany).

>
> Thanks,
>
> Mathieu
>
> --
> Dr. Mathieu ACHER, Associate Professor
> Univ Rennes, Inria, CNRS, IRISA, France (DiverSE team)
> http://www.mathieuacher.com/
>
> ----- Mail original -----
> > De: "Nick Desaulniers" <ndesaulniers@google.com>
> > =C3=80: "Mathieu Acher" <mathieu.acher@irisa.fr>
> > Cc: "clang-built-linux" <clang-built-linux@googlegroups.com>
> > Envoy=C3=A9: Mercredi 24 Juin 2020 01:48:04
> > Objet: Re: kci_build proposal
>
> > bcc: kernelci
> > cc: clangbuiltlinux
> >
> > On Tue, Jun 23, 2020 at 12:28 AM Mathieu Acher <mathieu.acher@irisa.fr>=
 wrote:
> >>
> >> Hi Nick,
> >>
> >> Thanks for your interest.
> >> We didn't target and gather data about Clang, but it was only a techni=
cal
> >> limitation at that time.
> >> Right now, it seems possible to build kernel configurations with Clang=
 (thanks
> >> to kernelci tool chain) and we are very interested to invest some
> >> resources/time here.
> >>
> >> Indeed, we could differentiate GCC and Clang build and see what's goin=
g on.
> >> We can also pinpoint combinations of options that lead to failures: it=
 can be
> >> useful to indicate the root cause of the issues and investigate whethe=
r it's
> >> specific to Clang.
> >>
> >> I'm available to have a chat
> >>
> >
> > Cool, we have a bi-weekly (every other week) public meeting:
> > https://calendar.google.com/calendar/embed?src=3Dgoogle.com_bbf8m6m4n8n=
q5p2bfjpele0n5s%40group.calendar.google.com
> > IDK if that works for you, but I think if you gave a 10 minute demo
> > that would be neat, then we could discuss more?  Otherwise happy to
> > stick to email, too?
> > --
> > Thanks,
> > ~Nick Desaulniers



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkgjZ4mmjspLF-7D2hUX4NXbRc8gio%3D%2BLhk1WxuNTmN4w%4=
0mail.gmail.com.
