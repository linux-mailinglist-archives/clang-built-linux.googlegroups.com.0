Return-Path: <clang-built-linux+bncBD63HSEZTUIBBC7AYH2AKGQE3TL46BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DC51A469C
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 15:09:32 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id go23sf1905666pjb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 06:09:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586524171; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cal8cC9SyI+m329xgDe6pGqCqT11bx1u6fdNO9hpESHl8FYo1rQ4wopiCVSV8mTlDU
         qm4c6/oMCnyjPD1FS9KR3iXSD8SFfAnQXiWkTMgEXzo7eCZUChR0avPDPE8pChSogDHp
         ewqUpt9P2TP7v64u24XABxQ2O95F6Iijrie7JxAQFE0Hu9ZzL+OHxb4nb+x286CyVnii
         AgvZFFaZTlzs+//JH2TEYYP7vbDWjRFVQ2fJ27oYXFO7qbAnZS9QjcjAKGoaKmVutYF4
         huWeCH7tlwyAcFpHYIM7PsUTWNLbXHbiH3oFZmSprmfvoJzzSVQq+LLjH1X0/M6EV3G1
         8PTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Vp2yhv6Kb6TSXMWyFe+U1igqFaVX82EI+hRbhDmLhXE=;
        b=AUqkkScKknyelh61DjCWaEt+0uvT+pPaphzkKueyOcOQbsjeZRQvZg2iV6EFRtb2La
         JVc5FQxrtQPs2fHvee+BqL4vjdejuMlepGcVBGebPDppMnPqxKjz6/jlkjcgI8YrXinT
         XVC/rAjiwslkBb5Mcs/CixPwQL/PfPHtveoO2oCOUYAkrERHPAt2wSmA1kMSDSS685b5
         1nnt4auIZkKS9dlFONMHLQCXXEEPnlr/fl5fgStzRk1/jB5smoJ1hNzYfC1SI4rNRW+k
         xoi1+SfkxQdyBJibG6i0dGcOk4W9k3ZDGdvf4Niqrqi05eUe6MvAxpMQC9lpZJbdRyND
         VwOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=caS+XUIl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vp2yhv6Kb6TSXMWyFe+U1igqFaVX82EI+hRbhDmLhXE=;
        b=h8lZRrCSZc/EZiY51PaqSgbxbcoH92olCXbsGG6nQ4bHWdJ09W1xC5yaOgNqH2Wpmx
         3+NtKKbohDGwgpvt6+OPkaLJiZoiJq3HV/WoBaIAuoGgEAt+NrljniwCcGr8PQP9RmQh
         ojIZMQE+BhwcAOBYoOKaoLhg0xj3GRRjaDrk4SczIif/dekIrOdgJQx5T/aqYD8zU8P+
         iNziqrwA3CngQClS+RV27Y1a3wicFqdfy7lMsRFcd1mzvimkikqA2wOcR2T2I6+r/M+4
         95P2sdKum1t9KGStdDkOfYnRCc5kRjF3ybHJf6mq3IB5qIYv4BM98oNJshLvz0JMJdd3
         038Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vp2yhv6Kb6TSXMWyFe+U1igqFaVX82EI+hRbhDmLhXE=;
        b=t5V5uNKBxBmRmZeTrrSgFuYTFhTUABQoDdL/kp9SGUZSxUS7dvAXUMYvEPO8S3WypV
         s+Vw7MjfJDvCkeurx1Pq96CFBNIJ43jF/AcIGCc0N5oP3UdXhspygapHaNFbtpX7v6eQ
         UtXpOy3Y5nN4TwknW/ZP4ubmjU1T22eADAArJA3CaPEytiU8xVOIMCei5tsDRsq3O7cT
         OGXCOOpp2JeolPydwQ48DdZld1+o3T0UhvSh3hyD+ksTzljS3Pb8LAM71itVckARfT+8
         LErxEyqIvaUjUYwAut3nqATpVtDhWM1mdPKP9KOBAhWe9psSFTnrc3ncbDy03OMiSnBi
         swnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubhYqWhMJTI0UFiIFnxmHGamdWjXG4xnLvG2nCptcpFpg7y1diE
	I1xITzx9hIhzKmB6cN6TzPQ=
X-Google-Smtp-Source: APiQypINI724mL5AsIJvOKVbvUv6cq3zXEkk1WXQd28DW6aF4p+l71X7Ws/DXQ/aueXP5ehN8UfdXg==
X-Received: by 2002:a17:902:690b:: with SMTP id j11mr4791839plk.145.1586524171448;
        Fri, 10 Apr 2020 06:09:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:19d5:: with SMTP id 204ls1318680pfz.3.gmail; Fri, 10 Apr
 2020 06:09:31 -0700 (PDT)
X-Received: by 2002:a62:5b02:: with SMTP id p2mr5193320pfb.14.1586524171013;
        Fri, 10 Apr 2020 06:09:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586524171; cv=none;
        d=google.com; s=arc-20160816;
        b=R2hH7HHunmRd6BMQmMSwFf9l5jz1foZb49lNdpcQbY5udLKnduuff3zz8YTVGxqO1U
         XpRd7LI5PWW8fgSTBT53MNeI35Z2HWJ6SWnf85gVTXLDvj1troMEqjXCmtp1AF3PkUUB
         Bz42cD+tmdsm+1B/eh75/hPItjBfp+hMEbomlPR6QYiHVPTzX6vbtGF+e+8S38juoQ9B
         +16842b/zMq6Te6BroLx7d0E0E+QEwCFnvOHP22v2FJo6Phoad1bOkCuLKs8GoeAue8u
         k6chI7oi/yDTCGXkGefJiWRdcpu6UZR/Zvgrwr4hc7avTRWg5W9kVS3BLsvX4zhlTYKE
         PKFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gfTvUBznL2nBvSEB9Nx2EuT7fAHfhjSSd0J67rPeGnc=;
        b=Mu+fa+iVsX4gDUX+f6ujPgYBc2gOj1reuVJ0UnyZv2A+cfVhq7WqjydA6ptIWrGe4e
         xoNHzatL6kzQhRRkk5RwH+rprhCPuGb7EwtoeLydbKqwe2iCdz6+a3ZKvBEk1qWX/Biq
         VIQ2OC/CBUt0X66vMiEQS43ipjIF+1kSNSgrpwzUTYZaS4zsi17fZJXBwJxLmJeBv6X3
         /ON8iOOVWR7T0cHltxVA56mHzjd6yJkKBLvrXvxB6yc4CJRG43Stz+xwBeYzzJeoYN37
         VJ+Z2Br2DD/CNPf9zAKK0TvR/Ee0iHzhrkjpdDJmNuqBYVMIOMJv9eXho1MCApvVoUDf
         KHyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=caS+XUIl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 194si144496pgd.0.2020.04.10.06.09.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Apr 2020 06:09:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 88FF9212CC
	for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 13:09:30 +0000 (UTC)
Received: by mail-io1-f52.google.com with SMTP id w20so1700328iob.2
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 06:09:30 -0700 (PDT)
X-Received: by 2002:a6b:f413:: with SMTP id i19mr4216512iog.203.1586524169887;
 Fri, 10 Apr 2020 06:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com> <20200410123301.GX25745@shell.armlinux.org.uk>
In-Reply-To: <20200410123301.GX25745@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 10 Apr 2020 15:09:18 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
Message-ID: <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>, 
	Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, jiancai@google.com, 
	Doug Anderson <armlinux@m.disordat.com>, Dan Williams <dan.j.williams@intel.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=caS+XUIl;       spf=pass
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

On Fri, 10 Apr 2020 at 14:33, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Apr 10, 2020 at 01:15:08PM +0200, Ard Biesheuvel wrote:
> > On Fri, 10 Apr 2020 at 11:56, Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> > > >
> > > > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > > > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > > > kernel.
> > > >
> > > > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > >
> > > It clearly makes sense to limit the Kconfig option to compilers that
> > > can actually build it.
> > > A few questions though:
> > >
> > > - Given that Armada XP with its PJ4B was still marketed until fairly
> > > recently[1],
> > >   wouldn't it make sense to still add support for it? Is it a lot of work?
> > >
> >
> > The part of that file that the assembler chokes on hasn't been touched
> > by anyone since Nico added it 15+ years ago. It can only be built in
> > ARM mode, and it disassembles to the sequence below (the ld/st fe/fp
> > mnemonics are not document in recent versions of the ARM ARM, and
> > aren't understood by Clang either)
>
> For older CPUs, it doesn't matter what the latest ARM ARM says, the
> appropriate version of the ARM ARM is the one relevant for the CPU
> architecture.  This is a mistake frequently made, and it's been pointed
> out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> keeping older revisions is necessary if you want to be interested in
> the older architectures.
>
> However, there's an additional complication here: DEC's license from
> Arm Ltd back in the days of StrongARM allowed them to make changes to
> the architecture - that was passed over to Intel when they bought that
> part of DEC.  Consequently, these "non-Arm vendor" cores contain
> extensions that are not part of the ARM ARM.  iWMMXT is one such
> example, which first appeared in the Intel PXA270 SoC (an ARMv5
> derived CPU).
>
> In fact, several of the features found in later versions of the ARM
> architecture came from DEC and Intel enhancements.
>
> If your compiler/assembler only implements what is in the latest ARM
> ARM, then it is not going to be suitable for these older CPUs and
> alternate vendor "ARM compatible" CPUs.
>

Indeed, and I'm a bit disappointed at the willingness to leave stuff
by the wayside, especially since Clang's integrated assembler has no
other benefit to it than being built into the compiler.

> > Instead of playing all these tricks with Kconfig, couldn't we simply
> > insert the bare opcodes and be done with it?
>
> That gets close to a GPL violation; the GPL requires that source code
> be in the preferred form for making modifications. Encoding raw opcodes
> can in no way be argued to be the preferred form. Arguing that raw
> opcodes is acceptable sets a precedent that makes it acceptable for
> other "works" to do the same, which makes arguments against firmware
> supplied as a hexdump null and void.
>
> Using macros to emulate the instructions and create the appropriate
> opcodes is an alternative; we already have that for some of the VFP
> code as early toolchains had no support for the VFP instructions.
>
> So no, bare opcodes are unacceptable.
>

Fair enough.

The following set of macros appears to emit the opcodes correctly,
assuming we're willing to tweak the source code somewhat, i.e., drop
square brackets and leading # for immediate offsets. (The tmcr/tmrc
instructions are left as an exercise for the reader)


.irp b, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
.set .LwR\b, \b
.set .Lr\b, \b
.endr

.set .LwCSSF, 0x2
.set .LwCASF, 0x3
.set .LwCGR0, 0x8
.set .LwCGR1, 0x9
.set .LwCGR2, 0xa
.set .LwCGR3, 0xb

.macro wldrd, reg:req, base:req, offset:req
.inst 0xedd00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
.endm

.macro wldrw, reg:req, base:req, offset:req
.inst 0xfd900100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
.endm

.macro wstrd, reg:req, base:req, offset:req
.inst 0xedc00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
.endm

.macro wstrw, reg:req, base:req, offset:req
.inst 0xfd800100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
.endm

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg%40mail.gmail.com.
