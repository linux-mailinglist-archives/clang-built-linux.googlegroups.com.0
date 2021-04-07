Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBSXPW2BQMGQEFBW2HPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 23355356DB7
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 15:46:52 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id b13sf9215764plh.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 06:46:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617803210; cv=pass;
        d=google.com; s=arc-20160816;
        b=NKEI/RLVWb4xYuCJ0iQbdSCHCahwHhsyt0KpwMFQ/QuYgPJrcG1fCfMsKwqD+CyqX1
         xXKP5CjGHZ9BTIz3pG20UFSuVuMsIU//rJ3GkRyV2/gvDoKEhe4Vd4V6F9se0XFQ2pyK
         2F3p9Qe3ogzZ9OUMwqqZXC9STvAIxaWqmAPByjD/LOCNfgLH4/t2Ar6Yu3qWqFCSMZKP
         qtg1p5yu5zG+MpPb7bjmfaUO2OOoxGC53cRoQWzksNfzP2sBsZ0qhKjF/mo5mrS6/PYb
         sjr5WrR8n5U0fIL7jgI2LuNZkzuxfZc6nqKjAIL87izCjcKUuk+kFZQoRcqJJ/lCJxyW
         LW8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aC7bJfqUTWVg5swT3+sIa93ebB5VWeGAGc8q3rVFbjY=;
        b=g7y5nhdJRFiLaW2bD8PBtkp/dieWN8srAMG1ahHO8nCnOoprapBKilTCwYt4OS1aW/
         Bp3YeX6lqtxmDtENb8x8KjfWB2NYf1Fu1qNLIqidMCrfUBip/0pYpoMdUGwMTq43dd3W
         7QzbXNDqgT7PJVBelaN6/GVivWZ/NalRG/PQFYNyGDEbonLH+2+9M5X6ijDDiLpCqdgI
         /YpImCySGcgFljC+itMBt6WtnOrUMXiczu3xtzdTNLfScQAW25Ky26iQrWNN/Vh3WhEJ
         ZxNRgxKqcAnYNg12LJo2Ltkza/OXpUsI8cE7DUFzhTZbEpzE3uz2aOI+EC8vPFGITasg
         gBhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HA571evb;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aC7bJfqUTWVg5swT3+sIa93ebB5VWeGAGc8q3rVFbjY=;
        b=CMX38tA9KS8UlvqWB54o4R8SwLFEaHAt0o70OnMFjm2BBQeimk/FrwZykQI1/rJLmw
         bznR/55uflgIB9g8BsXKy0Z+/j6kWsCPyoLvZRDpp+3QsKt1KnyG64NKNwVwzZRXfCHH
         6mJkN341LpiyB1mXzUWq5Ke3kRD8BA4Z5VfJuemiCy/c6Mz4HXiFCMj6JAN0JwrfTmez
         T05f368dVYv8Jliq1Z5hJqu86wg8RoerBZLb0v5OB6+Hlcry6blQno+vNJYWDWI5xBVV
         gnBaoT1waz0Tsei9y8FA4466JsUdgtdMYnSgH+drHdN605IIuhu5j4tmQcdNWlj1xsGj
         kGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aC7bJfqUTWVg5swT3+sIa93ebB5VWeGAGc8q3rVFbjY=;
        b=YinzU/1ztLKeb8+ba1st+pP8L3wifJ6k4wzFaG+KiLFRiSwfHhvHlfPw2TN5peq1X7
         VRqUu89ZODMo1Sjh1lmh1GMIvT979MyuMHLCOFmNHpqxUrWKVnywYdJrGEMZbmGe8sXz
         Qr3SMvtqPtwRwHrCQeXN5jBjiVdxC2Bd5a1vvNKlBN1s3kQnaFIT0dv2pp/jPXrqqf/J
         8K5VdcdOjFtqqjTvB5ROsznCWZfwidWU+QujAxeqgT61skGmG6xxsX/+FZSv089BkiyU
         p/bi/yS4jor5mpImCPmcoRE8Ev5R0TfuAFC3KsQihLUmDpMBcBuoYrmebWuFconBLFdP
         6EKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/RIa2U+JFALbDBUrJJolvoIGEcFuWEd6EiYspvvumyVf8gRw6
	uBL7NcybYJNjiE/QrqbJk3w=
X-Google-Smtp-Source: ABdhPJwMUL4H4dAfyhlU4PIU4uxdE1EOZ87X1abasb34hTw6u27cECrOKoJtC6FXN4N1D2uRhOmfLg==
X-Received: by 2002:aa7:86d9:0:b029:1ef:4f40:4bba with SMTP id h25-20020aa786d90000b02901ef4f404bbamr2918493pfo.54.1617803210709;
        Wed, 07 Apr 2021 06:46:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3fc1:: with SMTP id m184ls1085476pga.5.gmail; Wed, 07
 Apr 2021 06:46:50 -0700 (PDT)
X-Received: by 2002:a63:e242:: with SMTP id y2mr3523649pgj.298.1617803210159;
        Wed, 07 Apr 2021 06:46:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617803210; cv=none;
        d=google.com; s=arc-20160816;
        b=pKDquhlKuai8P5oZ9j1K4hFYU98st7RTmaHcMvSi6Z99WzJDs7wqr3R2i+dZmfTTZ7
         ENh3qipiEr2vMDkALlyniIEGtn2jcZSPo5cqihK++tMBsL/2HGtBciMmj9NQ7Tj9+Q0l
         ni4Qej24f7J63SStwWLvWf2h3HNxdA8Rpg63AhTG6uqD1xV/8op8tG+Lz4Cb2F3q8qp9
         /2Yx28xqRu+EoNWyhglVSJ6jngzrzFbjQA+F1aFqFVBbxa+t6xo16hJvih4qj8c9h90u
         1ZEzc6Et0pW4HZ3pyIr+sOskzCP0XMcSeAoyyx3wxGO9C4VyphmXKXDRG5+0J6C0Wc6E
         IAOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SVGr8k3YZqx9t/gUrn5PttvbgiOd+TX9Eg19c9jrICc=;
        b=jE6w2eGKG32uEXdoOGzigyCfOuBYJjwYvgQrDfgGHkHbTVsww9jlooC9bYSLjCba0X
         La26Z83mRQuc2cOM/9i37LL/sFoogh+o5JgAxBbDPuOkLkoRBkdqIh3zbIHZli+qZ/wz
         hyVzcZIx7u83iG0t3WWnR+KN0++4jBT9mLG0WRKG0nTuyVWoaXXqevgtvISzSens+fEc
         fU9Y8nc8xDHy3axGJv8qnjYlwg2DBFkoMZuW2MGlf90kpzqLnGE+5H/qjzQm7zKQwoLK
         HTNDwc1yTXIIHsGN6qNUy54JJ3RTwN8laldL7+t4a4RGRjTX6gHAJrMXG+YWASd0iGT6
         Q+dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HA571evb;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ft8si534831pjb.0.2021.04.07.06.46.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 06:46:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 852FF61382;
	Wed,  7 Apr 2021 13:46:49 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id A02C040647; Wed,  7 Apr 2021 10:46:46 -0300 (-03)
Date: Wed, 7 Apr 2021 10:46:46 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Yonghong Song <yhs@fb.com>, Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: sedat.dilek@gmail.com,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
	bpf <bpf@vger.kernel.org>, kernel-team@fb.com,
	Bill Wendling <morbo@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is
 built with lto
Message-ID: <YG23xiRqJLYRtZgQ@kernel.org>
References: <20210401232723.3571287-1-yhs@fb.com>
 <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
 <CA+icZUVKCY4UJfSG_sXjZHwfOQZfBZQu0pj1VZ9cXX4e7w0n6g@mail.gmail.com>
 <c6daf068-ead0-810b-2afa-c4d1c8305893@fb.com>
 <CA+icZUWYQ8wjOYHYrTX52AbEa3nbXco6ZKdqeMwJaZfHuJ5BhA@mail.gmail.com>
 <128db515-14dc-4ff1-eacb-8e48fc1f6ff6@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <128db515-14dc-4ff1-eacb-8e48fc1f6ff6@fb.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HA571evb;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Em Tue, Apr 06, 2021 at 11:23:27PM -0700, Yonghong Song escreveu:
> On 4/6/21 8:01 PM, Sedat Dilek wrote:
> > On Tue, Apr 6, 2021 at 6:13 PM Yonghong Song <yhs@fb.com> wrote:
> > > Masahiro and Michal,

> > > Friendly ping. Any comments on this patch?

> > > The addition LTO .notes information emitted by kernel is used by pahole
> > > in the following patch:
> > >      https://lore.kernel.org/bpf/20210401025825.2254746-1-yhs@fb.com/
> > >      (dwarf_loader: check .notes section for lto build info)

> > the above pahole patch has this define and comment:

> > -static bool cus__merging_cu(Dwarf *dw)
> > +/* Match the define in linux:include/linux/elfnote.h */
> > +#define LINUX_ELFNOTE_BUILD_LTO 0x101

> > ...and does not fit with the define and comment in this kernel patch:

> > +#include <linux/elfnote.h>
> > +
> > +#define LINUX_ELFNOTE_LTO_INFO 0x101

> Thanks, Sedat. I am aware of this. I think we can wait in pahole
> to make a change until the kernel patch is finalized and merged.
> The kernel patch may still change as we haven't get
> maintainer's comment. This will avoid unnecessary churn's
> in pahole side.

So, I tested with clang 12 on fedora rawhide as well on fedora 33, and
I'm satisfied with the current state to release v1.21, Masahiro, have
you had the time to look at this?

Yonghong, as we have a fallback in case the ELF note isn't available, I
think we're safe even if the notes patch merge gets delayed, right?

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YG23xiRqJLYRtZgQ%40kernel.org.
