Return-Path: <clang-built-linux+bncBCSPV64IYUKBBIOPYH2AKGQEURETN3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f63.google.com (mail-ed1-f63.google.com [209.85.208.63])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB0B1A4654
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 14:33:38 +0200 (CEST)
Received: by mail-ed1-f63.google.com with SMTP id f11sf1998199edc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 05:33:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586522018; cv=pass;
        d=google.com; s=arc-20160816;
        b=MWTcJDvrVrn+WhzVlXZF8pm07LnaR2WpgItZibSBXxXlW0B1OAzQPjHOgrLeYXvCba
         sdUVWgagJ67bgdKWeLCeK8r03gbqTZpbuNwEHxqNnSUkMRw+iWazQfWZzhzAvhKpxCMv
         7oZHD19RXr14L+eHDLzSR1ekwfZqLLD/AkP7vzgrsSAsUvVeP/EAfy6Bkodl6+HJnzv0
         QjjgHUm1F/gTu6oopgZ1vUOJneTpakEccA/j0J/m2pxFInEFKhjZPU3vjVRXIenDsKdc
         vVKZsBJnqD1RLFa1Y6BVE+bua9tPph6EqywVVMf29f6wGcrOJuFXqpuNflCW8kIM61R1
         WoxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=MM5Ggvadli/BX3bt9Ky3sc/0UiM+TDODG4HE4SpZW9I=;
        b=ztyBNvSvsChZtX9r1tFqxN5UsJfczx89vrw9hCnZFFK34RZbuuKUCfrAHZe+7IktAN
         abxYc/lwBTgRKUn4q53ENa6hDm6Cgy3GJZaVJxI8R7LEH0ym6Kpldnxvwz5VRGuo2lbe
         tl3tcO9hLOrKBa/9O3tsk2l+4VYdxoUG5P8eIUInR+e6fOUC1i17l5+vsWb1LTrZeYCS
         vvQv1qbUzaFaERyHKZMyvx8nIXbFLn6iBgYTqOiyUPsINhlxWxdNkQBwYbuwL2+PJE97
         DYfXPUIWFLSjEaDbzQz8ZyRVhMlOc3ZCeogI18sMutwND3FruIacYhFZ/FCcg5xx7+vL
         IUaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=l4BUxrAo;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MM5Ggvadli/BX3bt9Ky3sc/0UiM+TDODG4HE4SpZW9I=;
        b=B6rgBJad23PCXXI8Y2baQQ4fjLxw7RG/HjA8Njjm/7niL8lBN0N+13V1vL/oAWqfJk
         gtNI4r+RwjFDIAC6Jn9FdX18sgHFbSBavBEXry4rv4HepmCYOdlTta264GL/5qwVBr6A
         IjlHclC5vPtWALMSpO8FBEJtcGYf9sDy24STArYdu7XLsZw7RWi5UMR+Lat44IOLxIo1
         IkUgpNVqWpPYKRc6dd3Dp53FF5uL1ZSR48J95Zk9HJ5wcZLSSGMpvf6QzEMCR0WU7yla
         xQ6BZjSy7GfhHzHF0kXx8PWgzEkksffFIK8xX1mO5IVOZTuxC4l1jAs7iWBD4d+L4rCr
         Hkgg==
X-Gm-Message-State: AGi0Pua637c9Nq4MRYI+orpcjVt/Vq9VcYKlQff8DWdkb8WTwoCJbwJK
	ZpvVKI93VN4uRxF8hqmozu8=
X-Google-Smtp-Source: APiQypKR5S5GM0b9o3KrAPEu5uPy+lv1fUGNv1J69vWtxP0iF32MbEvEdB9o/7phnbIcjM/gSqifWw==
X-Received: by 2002:aa7:d40c:: with SMTP id z12mr1931898edq.212.1586522018023;
        Fri, 10 Apr 2020 05:33:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3da:: with SMTP id c26ls5380256eja.7.gmail; Fri, 10
 Apr 2020 05:33:37 -0700 (PDT)
X-Received: by 2002:a17:906:76ca:: with SMTP id q10mr3802227ejn.340.1586522017468;
        Fri, 10 Apr 2020 05:33:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586522017; cv=none;
        d=google.com; s=arc-20160816;
        b=X0MEGY+rnBeMX2BD2LBQeTOJKgiltsQZtt739RUA4/Md2inJxzpfgAWyXuUNvVQNEV
         vmRNSdrMOTCgiplbjoYl8mDpGR6ak8AeH/RObSTpkz52l5p1xxX6ZyLlJMTAMhluU7Ck
         53awVw9xpIiA3VConFrhr70+csE6TlAckmPANUbcB7uKC7V/IcVB9QgfYkCfL+ybGlvD
         uSZJRY+zECvRhTUtEj1sjQbNQVGjIAYN6GZwDpkrQH/BnZMP8yQiuih7GUkdXc2jH4x5
         9glU2X1hx6kidimGo8kOdxhLpfmxeQnltKAuz1Vnizus6GKw7ghSov3B8We8sjR7yoy/
         wiRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=E1lO6MOH92TXjApRphPPU5REy5FFZ6ZxwRqdljo4K0I=;
        b=ZjnMRLrp8DnO0PS4pfYWIBn0aM4FcMhn/aEu37ySFBmRA62UEg06KInFhGnQJLqZCB
         z8hVAzfjxXANMDthAUuWLd0FtldAeiaZr3Oed8UAM5l0o1tbWqltseZue7p680Glk/Fw
         nnG/F0s/3ZyAOVzbFusOvz7wqmwzcIG8tjaEmcYVEmATveN0zx/BQhG4WE2PxTBM6yks
         PrtyCGS378p1PotvmpB3XflRpJzzIWcUFmhDePVSAYjHxVMhw10kNlHijScfYjl5a+m0
         RMmeBH2SFWU8tFI0n6bIFJoa2DKaGo8D5sSGl4kI43MsFg1BPu9WJohJLn+QgUpMKbGE
         M6pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=l4BUxrAo;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id w13si104297edv.2.2020.04.10.05.33.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Apr 2020 05:33:37 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:36520)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jMsqM-0001Tt-Nz; Fri, 10 Apr 2020 13:33:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jMsqD-0003m7-Pl; Fri, 10 Apr 2020 13:33:01 +0100
Date: Fri, 10 Apr 2020 13:33:01 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>,
	David Howells <dhowells@redhat.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Manoj Gupta <manojgupta@google.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, jiancai@google.com,
	Doug Anderson <armlinux@m.disordat.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410123301.GX25745@shell.armlinux.org.uk>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=l4BUxrAo;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Fri, Apr 10, 2020 at 01:15:08PM +0200, Ard Biesheuvel wrote:
> On Fri, 10 Apr 2020 at 11:56, Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> > >
> > > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > > kernel.
> > >
> > > Signed-off-by: Jian Cai <caij2003@gmail.com>
> >
> > It clearly makes sense to limit the Kconfig option to compilers that
> > can actually build it.
> > A few questions though:
> >
> > - Given that Armada XP with its PJ4B was still marketed until fairly
> > recently[1],
> >   wouldn't it make sense to still add support for it? Is it a lot of work?
> >
> 
> The part of that file that the assembler chokes on hasn't been touched
> by anyone since Nico added it 15+ years ago. It can only be built in
> ARM mode, and it disassembles to the sequence below (the ld/st fe/fp
> mnemonics are not document in recent versions of the ARM ARM, and
> aren't understood by Clang either)

For older CPUs, it doesn't matter what the latest ARM ARM says, the
appropriate version of the ARM ARM is the one relevant for the CPU
architecture.  This is a mistake frequently made, and it's been pointed
out by Arm Ltd in the past (before ARMv6 even came on the scene) that
keeping older revisions is necessary if you want to be interested in
the older architectures.

However, there's an additional complication here: DEC's license from
Arm Ltd back in the days of StrongARM allowed them to make changes to
the architecture - that was passed over to Intel when they bought that
part of DEC.  Consequently, these "non-Arm vendor" cores contain
extensions that are not part of the ARM ARM.  iWMMXT is one such
example, which first appeared in the Intel PXA270 SoC (an ARMv5
derived CPU).

In fact, several of the features found in later versions of the ARM
architecture came from DEC and Intel enhancements.

If your compiler/assembler only implements what is in the latest ARM
ARM, then it is not going to be suitable for these older CPUs and
alternate vendor "ARM compatible" CPUs.

> Instead of playing all these tricks with Kconfig, couldn't we simply
> insert the bare opcodes and be done with it?

That gets close to a GPL violation; the GPL requires that source code
be in the preferred form for making modifications. Encoding raw opcodes
can in no way be argued to be the preferred form. Arguing that raw
opcodes is acceptable sets a precedent that makes it acceptable for
other "works" to do the same, which makes arguments against firmware
supplied as a hexdump null and void.

Using macros to emulate the instructions and create the appropriate
opcodes is an alternative; we already have that for some of the VFP
code as early toolchains had no support for the VFP instructions.

So no, bare opcodes are unacceptable.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200410123301.GX25745%40shell.armlinux.org.uk.
