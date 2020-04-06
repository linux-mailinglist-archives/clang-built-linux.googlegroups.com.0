Return-Path: <clang-built-linux+bncBCXKBPVPXAFRB2FQVT2AKGQEFIIAN2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f55.google.com (mail-wm1-f55.google.com [209.85.128.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BD219F536
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 13:54:17 +0200 (CEST)
Received: by mail-wm1-f55.google.com with SMTP id v8sf4809242wml.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 04:54:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586174057; cv=pass;
        d=google.com; s=arc-20160816;
        b=LTEnnbF2pxwtVbns+2Y2Z4Jb3B8qWvQrI2Fgaukr+m4nWZjtRyXAXKBGpeeznjJ36F
         94PEN4zOHlR6c9l98NcX1rdWqlPlUFQoWUN4Fbo671UifKyQLWCypYA+6NhM1/MBzz+f
         a43+IIEIrAAAwa3raRmXkLFmTchSNlJ2jB0O1ltvv/llajKzM7dZUHidJwh5bxlK8phP
         dR9FJkGAs3CmjVWKlGmd0YygZci2HYDDuv26/75K3ZXoyeK4KqqNdF1JBbuRb1pZHwAz
         S7ZgszYa67hroWdz9RJMGTZ2IPMLy5noQ/NB+gZ1OMb/j411MdnYFFhVSYjeTnpzjtwq
         NJzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=tjmnZEkGeEzw+dkDGEjy52TbdB0z/ZtampJCF+tVNeE=;
        b=ZfouG1RVBUry81eZMBfLc+r2jN5VhO+vtFUE6EU/sEm9fZB0GLaFIy2gB+6rBm73p/
         wGYi724xxFKrDppDZvCYgIWe8ayKfWZwjvzmtPZljPhjO8H4nOH/ZX3X//IA8XTwlo74
         kP710AF8SDJDQgChDsQw5DxWGiHnap1qyXG1lyE3TfPZPT6I2Qv5cnxT466sTrS4ijCK
         f+hCmQdYPRUPLCAvVXa8Amdie5HJ5sfY77oXJ1dhKmpQbUHEMyl7BqHaNuPwdCzplc7e
         3V5Rd3aqjkB4G8zbads79oOBoKSiWAYf5Fe+YwJPxPj/dAY3ilD0uGlMNFHUe/en8gNV
         Ai7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tjmnZEkGeEzw+dkDGEjy52TbdB0z/ZtampJCF+tVNeE=;
        b=LeW+StdcL+35S9cXqH3FdY48CmzHg2kqh8Cn99Fj+yfhNHzHL9jRc0XUytqpW3+NZJ
         QLUvDM99D+bUYhh8AoTEfBOVLJphzHDRzJgXmFQN5Gu1zXc/dbRmIyrKPNszvTwxz+EM
         cCgIN5vpBACaix/HtPBElT68psjq7FTLg+zd6VxwdpnLljpYQIwkfgP6HmpbxrFo67BK
         fzsv8wg6TqbkFU/oBWA/xA0iTmNTY36q7QX/d/9vE4OagTZyAuEYFRT4JYH2L2bpg+CG
         RFhhsI9drulBo2P7kv7yjwZQD6vZkJZGTwekEjoWpz5tWQW9U8DllOFUWlK6cqTCrIw1
         7XSw==
X-Gm-Message-State: AGi0PuYeLUUHrZfBKYGHm0763wDmVRVt24PIMpUR42rKRrVaayst7Slz
	Pgg6+cEzs1MoZ14SBuC71yw=
X-Google-Smtp-Source: APiQypLsFeC1g3Eh4IzmfH4n3DMqvE9/vu9gyZZwiouwqyfqzUa17ycsQ6ne7g++jkyz+wMD4/QNMw==
X-Received: by 2002:a1c:7d04:: with SMTP id y4mr7761385wmc.10.1586174056993;
        Mon, 06 Apr 2020 04:54:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls6359732wrq.11.gmail; Mon, 06
 Apr 2020 04:54:16 -0700 (PDT)
X-Received: by 2002:a5d:4d09:: with SMTP id z9mr45736wrt.292.1586174056531;
        Mon, 06 Apr 2020 04:54:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586174056; cv=none;
        d=google.com; s=arc-20160816;
        b=ZEfMALQ1efg7Xe1vpEta0jJZMQkZPnpxYsC8PB+eR3p8ATE7OkfZ6PkuVstaInbLIM
         3EgYCoX4J/abKsnQv4/T5J/YsxKgzrLzklR6zwyuGMXu7ZZcoWfqJSzKEiOoLZ1YIKW0
         QfPK50Ew0h6E9DyN0U7LhQSO9XlqnwLieeGm9GzqMs3IeWznTbCj0fNfe1bamm6aJaCG
         DXvaYup08U0PQkJMvTtWahCm1XUdjUxhxdmj42Tz152aNTH9SgoxbdUQw7R8pH58+WCy
         zW8DGtUR2HyLuEax7I25Wz8pXKUFcXzFyim2WcUx1kkRFpXdMDlzweNzl5bKD1FcYuQW
         DT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=90zdxiGkkjEo6hzoYlc+N5NSRTOvQBmG1caBQp/eR3o=;
        b=E31wPY8Wj18IKe+MSmRg+zXHKO3ypTqXVjTld8TMKij2lhEim5FGikto93AC3HKiZh
         Y4NfiYs40wdiLp9ITKm2VjuXqYvIPevsI8QOm/kx9CUQVr8fBm7nyYxSritvFmR29an4
         SZN6xzhD6Sk9mLP1S7ff5Ng+5xXgbz8dpimghMl3dUd41JAZ93nFgalDd6AXzT8uWj31
         VWk13XN9aJMAn235ihs4ZF7hqsrXCyljFA/Nresjnr98s1W0v9I0m2nzP+bgScjVoAjX
         0stjDsO0g1U+U2T/Xq1CFAcZO9Kl9HPW94JsrMQS7v/N9Bz5uk/cOFC42Mk5b9NSKDxt
         Lz9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id l16si1127445wmg.1.2020.04.06.04.54.16
        for <clang-built-linux@googlegroups.com>;
        Mon, 06 Apr 2020 04:54:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23992976AbgDFLyOZ7Nfb (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Mon, 6 Apr 2020 13:54:14 +0200
Date: Mon, 6 Apr 2020 12:54:14 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Masahiro Yamada <masahiroy@kernel.org>
cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux-MIPS <linux-mips@linux-mips.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org,
        =?UTF-8?Q?F=C4=81ng-ru=C3=AC_S=C3=B2ng?= <maskray@google.com>
Subject: Re: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and
 prom_free_prom_memory
In-Reply-To: <CAK7LNATKLcCPYxQZNbrS-jMPg+_BETU0dGv0qYvLqUkJ2fMt5w@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2004061240060.4156324@eddie.linux-mips.org>
References: <20200405163052.18942-1-masahiroy@kernel.org> <alpine.LFD.2.21.2004051813150.4156324@eddie.linux-mips.org> <CAK7LNATKLcCPYxQZNbrS-jMPg+_BETU0dGv0qYvLqUkJ2fMt5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Mon, 6 Apr 2020, Masahiro Yamada wrote:

> > > As far as I understood, prom_meminit() in arch/mips/fw/arc/memory.c
> > > is overridden by the one in arch/mips/sgi-ip32/ip32-memory.c if
> > > CONFIG_SGI_IP32 is enabled.
> > >
> > > The use of EXPORT_SYMBOL in static libraries potentially causes a
> > > problem for the llvm linker [1]. So, I want to forcibly link lib-y
> > > objects to vmlinux when CONFIG_MODULES=y.
> >
> >  It looks to me like a bug in the linker in the handling of the EXTERN
> > command.  Why not fix the linker instead?
[...]
> I am not sure if this is a bug.
> Anyway, they decided to not change ld.lld

 Well, maybe that was a conscious decision, however it's a linker feature 
that has been there since forever and projects like Linux can legitimately 
rely on it.  In this case perhaps sticking to other linkers, which have 
the right features, is the right solution rather than trying to turn a 
complex and mature project like Linux upside down (and quite possibly 
introducing bugs and pessimisations on the way) just to match an inferior 
tool.  Adapt your tool to the task, not the task to your tool.

> MIPS code is so confusing.
> There are multiple definitions,
> and lib.a is (ab)used to hide them.

 It's a standard feature of libraries that a symbol reference is satisfied 
by the first symbol definition encountered.  Any extra ones provided later 
in the link order are ignored.  And we have control over the link order.

> I fixed another one for MIPS before, and
> 0-day bot reported this recently.
> 
> 
> There are lots of prom_meminit() definitions
> in arch/mips/.

 Naturally, many platforms will have its own, in addition to some generic 
(possibly dummy) one.

> Making the intention clearer is a good thing, IMHO.

 Hmm, what intention?  Can you please be more specific?

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004061240060.4156324%40eddie.linux-mips.org.
