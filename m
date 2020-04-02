Return-Path: <clang-built-linux+bncBAABBZHQS72AKGQEUPYMTSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1C319C459
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 16:36:22 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id r42sf3536522pjb.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 07:36:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585838180; cv=pass;
        d=google.com; s=arc-20160816;
        b=bnVXZYR+xD/9ZmORhypReVDJFL5T2EazdXYYG6vxudtBY5di0WgLfI37Svs0qVoov4
         SPMgzKUHCVfnuliT3dyyTa722Sysf4bg226486saQoVcsx5u3oDRL8Akk+sVLtvk13jY
         tMsyAqWQWOOU7rnew5Kjj+DqU5kgBEjPdBfyTCoC0++DCOHmbG8Bl1SMtPivykyu1qAm
         RzPaFZuABYQhryrkWgmTEDx4w/NRXm11xFJoqTkjvy8S6jAW1+nlHrZzlPDNCChPh0fh
         uHOfBqAuh7hEGLrWHhYI/rl3h+YGYNoT0fBBavb6jGePJDOVgVg5Pum3Bwj5ZZ13AUZQ
         1mNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=O9C6labQAFcQQiWKJky1TlsqeX4jqRGT5XKtoK4rZNU=;
        b=fYAkKHTA64uAw1/Q1QtGiwirDRjzqi2v1y/vsXHpTKIjq3tpm1Qm2C7S98AhBBa3Bv
         t3TujeBAff0QKakM7D1H9aKHLx1gDm+jgRHcTgXXz7VmL2+GvilcrPLFK6T9bJMG/2Wf
         Oe4pdbIZNT2zYyQLJkov9/VR9p5+nUEl8Y1b/WXuG33eRd4tSjiq9BfOzGI+ZS0JK1KD
         SIqBhrYWbSlb8nK6TkFvgvLHt0sd/O3jXQcb1gAFHzd4tWbcHkPSn4lE4HXcFFCjzCBD
         bEcQC/45yIbngaB5mu0i/fCHCYvemQBqarK7gAP0+Qmf+sxgUBVZ4pR/ZiVMdNZ4ig9S
         f/AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="FBb/Zb+c";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O9C6labQAFcQQiWKJky1TlsqeX4jqRGT5XKtoK4rZNU=;
        b=nt8h92otzHEKGwjpYrMbZKu9yYtNw175ZZF5RA6WZrFazujfvVMdJ8fTdtBCytJRjF
         lXkD8830t7czmOlNa8AyuEDrVZqkgYRc5j0jbKY+Bbi4qKxmWW340zhVA2mn26aFr6T+
         d7ierABJwvv/sOt8J2MSH1hAiVmxhiN75iD7WRGV7/5bd2mllBr6aH0AURJ7Gptb9Zhm
         PXX3SEuf7JCFZR090LqfqCB1do3/0x9cPwEYget518AsrBq3w3UCTE/r+tJTI6d9VMhb
         Z96PKrdUiQWuBJqyHGLDfgmLR3vN50anAXSyTpCHW9JgvwbeqVeyZG7oEGtjqbMelaJ7
         3nrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O9C6labQAFcQQiWKJky1TlsqeX4jqRGT5XKtoK4rZNU=;
        b=QM+HW24xJDHQbJeToT5SM4JKzrOnAwb5aevRhwg+Hdkpw4SJ4tKCueGGoRT2S9lj00
         SEojIj6lhWk7PSps/mIraFh1xO5IrHFUeRawLpXG3DTLcpFldV0uGfD150C1zKVSbhXv
         vfaZFGzx/1JaiGz34QRgcLPhwwr99sjuPUIEKTcMP96SBFWFaRkibfly39ZpYlwiBYPo
         to7x8uMxFMnL+VzgLLWCQ/mMB+oG5A4PChryU5gjzIquB2SQi/y1WB09/jLM2i/os1j0
         KmuTbtT4FvktumZs9AOmecuQwB/YpEm7WKxU82D8zYUbGHHfjBvDlyC33KASZlrYnLWm
         PlDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuafynConS9mf73o3wbQb8mu9LNIuqVd+vSMc4Yny+/TqOkDO2wK
	tnGCoZZ6kLiIDt7+s914NcQ=
X-Google-Smtp-Source: APiQypJd7iH94v9nwvAJCkpCp3wQmPdQOTqjOK0kSQXU5oi3VYcAjwqXvmIz4s3Qtz26xqZOKicC4w==
X-Received: by 2002:a63:7d43:: with SMTP id m3mr3579140pgn.193.1585838180697;
        Thu, 02 Apr 2020 07:36:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3087:: with SMTP id w129ls2837948pfw.1.gmail; Thu, 02
 Apr 2020 07:36:20 -0700 (PDT)
X-Received: by 2002:a63:6d0b:: with SMTP id i11mr3452958pgc.404.1585838180294;
        Thu, 02 Apr 2020 07:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585838180; cv=none;
        d=google.com; s=arc-20160816;
        b=vVo5S8pNxn5M9ly+uUoYefWE0y9H6jsVvxvJggro290l9iv+LtL9IaAKiPmsyEaCqo
         RofMHYuEPBjV8SvSQym+aL6mtEVGPqpjh8BSSppyg/naeq71Aa+BerQzSrmiOqW1kvns
         LkWhv1kne7wQVb3r97CdBAhG9Pn3a3/JJYGa4sIBxHzrw8rf+6nD0b6vHgCaQbj+t538
         8hUfdLVtH/nqwocKntRXO4J1wTNsEh1BWwTj5bbScVFnRfxAfXoBPLw+oUVvxNlZtaHp
         LYvnYD4oTNbdMt+6dIyeCRC/AiURgqu3v7zQyep5gh1UUMwDB4YC9QRum0A1OLP4pFPH
         8DWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=I/I7piGfqhrk3676A/ywfxIOaNxDIyYCJJvW47ZTy5I=;
        b=PP2JuR9NN8mGC/3GjkpY/7ogCw7d8WlmRVKy/Qnc+ZWq2gkcC1zFrfDPNKyhcciM5m
         /u2u2F05zoT19tss0ZhDV+OtlR5tOp8nAb1jiQrOBx0y1VtvkXpZ7deeN90YUCHtjweT
         9Y1B9YWCC3miVrMMNrnHwPOLMsvs7/X/HI94XE1UqXMBM0EMBRVcBOeDUAKZbgS88y1q
         +KdBY0Z60GGbHCVqGWsu1i15l24meWo1mQwqgefGpUYL7NPF4nBUApUtdzXCmT2ONo7v
         sXLU06SEM+z7HYEg98hhqcqj6b6Qf0OSV8WwurIzzzeG7LsZbqhgzG+0Raejk6fjB/k4
         Crvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="FBb/Zb+c";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r76si299936pfr.2.2020.04.02.07.36.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 07:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DEFEF2078C
	for <clang-built-linux@googlegroups.com>; Thu,  2 Apr 2020 14:36:19 +0000 (UTC)
Received: by mail-il1-f178.google.com with SMTP id i75so3749681ild.13
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 07:36:19 -0700 (PDT)
X-Received: by 2002:a92:dcd1:: with SMTP id b17mr3620113ilr.80.1585838179188;
 Thu, 02 Apr 2020 07:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
 <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com> <e0c125ea492670c7069c407b6b0c5958@agner.ch>
In-Reply-To: <e0c125ea492670c7069c407b6b0c5958@agner.ch>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 2 Apr 2020 16:36:08 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR=J8XmQ@mail.gmail.com>
Message-ID: <CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR=J8XmQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
To: Stefan Agner <stefan@agner.ch>
Cc: linux-omap@vger.kernel.org, Tony Lindgren <tony@atomide.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	nd <nd@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="FBb/Zb+c";       spf=pass
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

On Thu, 2 Apr 2020 at 16:34, Stefan Agner <stefan@agner.ch> wrote:
>
> On 2020-04-02 14:05, Ard Biesheuvel wrote:
> > On Thu, 2 Apr 2020 at 13:50, Peter Smith <Peter.Smith@arm.com> wrote:
> >>
> >> > I take it this implies that the LLVM linker does not support the
> >> > R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
> >> > expanded to a pair of adds with the appropriate relocations, letting
> >> > the linker fix up the immediates (and the ADD vs SUB bits)
> >>
> >> Not at the moment. I have a patch in review to add the G0 variants for=
 these in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC d=
oes not have support for generating the relocations either. This could be a=
dded though. I agree that using the G* relocations with a pair of add/sub i=
nstructions would be the ideal solution. The adrl psuedo is essentially tha=
t but implemented at assembly time. I think it would be possible to impleme=
nt in LLVM but at the time (4+ years ago) I wasn't confident in finding som=
eone that would think that adrl support was worth the disruption, for examp=
le the current Arm assembly backend can only produce 1 instruction as outpu=
t and adrl requires two.
> >>
> >> I'd be happy to look at group relocation support in LLD, I haven't got=
 a lot of spare time so progress is likely to be slow though.
> >>
> >
> > For Linux, I have proposed another approach in the past, which is to
> > define a (Linux-local) adr_l macro with unlimited range [0], which
> > basically comes down to place relative movw/movt pairs for v7+, and
> > something along the lines of
> >
> >         ldr <reg>, 222f
> > 111:    add <reg>, <reg>, pc
> >         .subsection 1
> > 222:    .long <sym> - (111b + 8)
> >         .previous
>
> Just to confirm: The instance at hand today seems to be working fine
> without adrl, so I guess we are fine here, do you agree?
>

I agree. Apologies for hijacking the thread :-)

> There are a couple more instances of adrl in arch/arm/crypto/, maybe
> that is where the adr_l macro could come in.
>

There are various places in the arch code that could be cleaned up
along these lines.

But you're right - this is a separate discussion that deserves a
thread of its own. I was just satisfying my own curiosity.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXEe835GbXU5qgX-QQ5n4SmwQO1nAoAZw5pUVCbR%3DJ8XmQ%40m=
ail.gmail.com.
