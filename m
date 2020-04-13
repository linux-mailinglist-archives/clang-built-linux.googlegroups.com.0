Return-Path: <clang-built-linux+bncBCSPV64IYUKBB4V62P2AKGQE57E5X6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f62.google.com (mail-wr1-f62.google.com [209.85.221.62])
	by mail.lfdr.de (Postfix) with ESMTPS id 088891A6EBD
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 23:53:55 +0200 (CEST)
Received: by mail-wr1-f62.google.com with SMTP id v14sf7483246wrq.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 14:53:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586814834; cv=pass;
        d=google.com; s=arc-20160816;
        b=itriGeawe8k1Zr7M0SLu3CVCaJfeDyBnsSYb4jFy5ERv0p9tYk3puInx7El3HRQGGL
         XoEBndcJDGJXGtwHQE9dBiI6QseJPlAzTe3ADXvdgxM9rJId7dYNfgODDr3OlsirTwIp
         iEbv2G+abjZVh6TIPACDjKnVZ+A/s9Kj4K9T80167M/hChq9MOjEDW7SUfaDFp18dR2A
         LZ3Os+ktPtDZTtR30EefSrEfpmQppQkT91hwFPJs8b7GGgPtY+hQ49jxxitdQv3AiRqY
         t08CYSjqv6FUxJg9viklDqQLf9VA1igpnYiNpoG0EurAUZdPltyNGxeRVpbj/JnxfLfk
         j+QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=J6ZrqV4TWHGbvP9bZE+nasbUhDllVl8c8eYQ5ECngGM=;
        b=yzKOodX47pvOnyL8hK2TPhptAUGWMO22RzcP/FYacryjmAJYden/ZOr77izbotA2OG
         RNMlIU0ozXgvFRNtWTA5N+tsHPJV1VBFNEhKjzN25OSCQk23xPaSkhFBwWb/dweMQOzB
         7TDb7mps7ZRb8mE56jgp9sMwOcF5hJKym76Gbxjuc6kSf5R3Yi8b9F/oNxVv6UicnFmf
         7yPDdoTcOxtCDwEouyx2mF7UesfJz8UX6ibqQjPaEGgochsJ2Gy0kCttxVu8MZCb7JTV
         3eG1pUit8+SatJlXPR1Bhygp8bLP7g92iWmbCF1AXGwQL1zy1wAreps0eX8akDNJqu46
         C7dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=LMtehSwH;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J6ZrqV4TWHGbvP9bZE+nasbUhDllVl8c8eYQ5ECngGM=;
        b=hWpoCBlrRVvIanPLSud9M+rJ1lf4KhEYfk5zUVWaK4ikyQkR+M3dyjP7VWWoNdH55w
         LY1qgLt2Ia8jgZaRiAitiMXRU+kYZK4T18c59/hkiiiF3zDkMOpfgnWfRcZ3Ru4Y+I6N
         yJ55anlFjklVHMqFUgf8b+ERIIwC7+ia/heRxSOko2UpfDpmmDo97T1u6ynufPAUufsP
         aEbQQ41r7tWgV22RQDPYpkKGwLXF2gPxx3jyCNnwL+HiESV6K4pY53elskIMJLIOc3KH
         /kwvwcM4fLVNFsNwPK3kQOMTvnktNzNIAU6is7wgpSRBdAnqn4OYQc6FiBrDifwvixW2
         IUOw==
X-Gm-Message-State: AGi0PuZnFElRfyWVahVFPO2pk9/JGz/49GxaoqcpZncv0Ng0wxDxn4eF
	J0vm8dbUMjj/q1NyK9vLQDw=
X-Google-Smtp-Source: APiQypJ6s9Vfzr72wFAw2eoDfIytYAuANTmdshsS0r6MbijGRzj2ZNcruG+hyh89FPQ2mh0Q2lmTUQ==
X-Received: by 2002:a1c:a550:: with SMTP id o77mr13956298wme.45.1586814834670;
        Mon, 13 Apr 2020 14:53:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:120d:: with SMTP id e13ls1500454wrx.0.gmail; Mon,
 13 Apr 2020 14:53:54 -0700 (PDT)
X-Received: by 2002:a05:6000:12c7:: with SMTP id l7mr6154649wrx.239.1586814834188;
        Mon, 13 Apr 2020 14:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586814834; cv=none;
        d=google.com; s=arc-20160816;
        b=txmig1gJHb5JZm0ItPY4vVTuigToo3aUJCJwFTJR2tl6lIbeKz2MgYa9vaLIpL8TFY
         OngIDYNfh0Qw6F67TNDLoXbNbR5Bcam3FZa893u/Ey94r6JXaViAoX5WIwq6foZvpC8H
         l21A0ivgPFkEvfcyA7nSWn9MEW24diQLZ0Wu195lmK4bVALzti1mrI8yE95Te2HdLseJ
         HNMGt9dwdBBBMG5w6T+iHjUXqVtlZVTPvqx8Ar6rBlf/VfKRJs2m3fw1BHOuLWWrAXDQ
         xCMaxIyWlfCFoAiOUlh/ZCjJagAA/rPD2ZKqHWXbRalAKLz4cFOf+2J7HbxF7ETkSkjM
         3mJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Nz5k7MFsacjtp7/YPK//L5CSH/mmmC8q8PXpApOKsrA=;
        b=Vxqm/FWIJ2nzTWyb3nKgi5Cc/6f2QxlNG8PVuiwJA4xL1Wdifb9kRUVWMmqaGDJs+I
         XNAbgGYdPDsIb3iqnjaw0DKD4ywJB3Xfcwsh2YWeGnJCzcQmXZFikgEUgHpDZxhJDV7m
         tbO2wuUGcYbEb7WN0WH6fcDI+dOcAyvbCMg2Qb1Cu2Ypk18F9eJCklh9ln4fw/pmp9PB
         mQTWLmUaKw3Nk7drNPJtVhmBwQl/Hg82MeDU/egIO40XKMwf9uCRv7c0zPLaMiA7eoyS
         54fso5d6WCNqWmE5dqcdg915wvwkRGv2woMnZYbeViXGyL2kIEVZlaixepZbigJyxKSN
         UE3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=LMtehSwH;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id d6si463592wrq.3.2020.04.13.14.53.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Apr 2020 14:53:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49662)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jO71G-0004BL-T8; Mon, 13 Apr 2020 22:53:31 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jO719-0007Ju-Tj; Mon, 13 Apr 2020 22:53:23 +0100
Date: Mon, 13 Apr 2020 22:53:23 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Linus Walleij <linus.walleij@linaro.org>,
	Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>,
	David Howells <dhowells@redhat.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Manoj Gupta <manojgupta@google.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Jian Cai <caij2003@gmail.com>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Jian Cai <jiancai@google.com>,
	Doug Anderson <armlinux@m.disordat.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	Tejun Heo <tj@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200413215323.GR25745@shell.armlinux.org.uk>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <20200410165948.GD448831@lunn.ch>
 <20200410183420.GE25745@shell.armlinux.org.uk>
 <CAKwvOd=SusRJxzKqq=tBGgjq0tdcgeA1ukK79PyMjadWB8w=Qw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=SusRJxzKqq=tBGgjq0tdcgeA1ukK79PyMjadWB8w=Qw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=LMtehSwH;
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

On Mon, Apr 13, 2020 at 12:26:16PM -0700, Nick Desaulniers wrote:
> On Fri, Apr 10, 2020 at 11:34 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Fri, Apr 10, 2020 at 06:59:48PM +0200, Andrew Lunn wrote:
> > > On Thu, Apr 09, 2020 at 04:27:26PM -0700, Jian Cai wrote:
> > > > iwmmxt.S contains XScale instructions
> > >
> > > Dumb question....
> > >
> > > Are these Xscale instructions? My understanding is that they are an
> > > instruction set of their own, implementing something similar to IA-32
> > > MMX.
> > >
> > > Would it be more accurate to say CLANG does not support the iwmmxt
> > > instruction set?
> >
> > Yes, because the XScale core on its own (otherwise known as 80200)
> > doesn't support iWMMXT.
> >
> > It's worth pointing out that the iWMMXT instruction set uses the
> > co-processor #1 instruction space as defined by the ARMv5 ARM ARM,
> > which is also the FPA (floating point accelerator) instruction
> > space - which is the FP instruction set prior to VFP.
> 
> Reusing instruction encoding space? :-X  I'll have to look and see how
> we define cases like this in LLVM.

Unfortunately yes.

The ARM CPU was originally an integer-only CPU, and the design was
to allow up to 16 "co-processors" to be added for bolt-on facilities.
The ARM architecture reserves various instructions in its instruction
space for the co-processors, with instructions to load/store from the
co-processor to memory (the ARM works in unison with the co-processor
to provide the address for the memory access), transfer data between
the ARM integer register set and co-processor, and instruct the co-
processor to perform various data operations.

Back in the days of the ARM2 CPU, the ARM2 on its own had no co-
processors, but had external pins to external co-processors to be added
to the system, such as the FPA (floating point accelerator) hardware.
Early Acorn ARM-based computers had a separate socket to allow the FPA
chip to be plugged in.  The FPA used the co-processor 0/1 instruction
space.

The ARM3 CPU added a cache, and with it the need to control that
cache, which is where the origins of the CP15 control co-processor
comes from (although ARM3 has a totally different CP15 layout.)

When a co-processor is addressed by an instruction, if it doesn't
respond, the ARM takes an undefined instruction exception, which allows
software to emulate the co-processor - and this is how software FP
emulation had been done - userspace continues to use the FPA ISA,
with the instructions trapping to an emulator.

Eventually, VFP came along, which uses the co-processor 10/11 space,
superseding FPA.  However, the principle is still there - it is
entirely _possible_ if one had enough motivation to implement a VFP
software emulator on ARM2 and "execute" VFP instructions.

By the time that Intel decided to add iWMMXT, the ARM CPUs no longer
had support for external co-processors, so FPA had likely been long
forgotten (despite lots of Linux systems using it for their FP), and
they picked the same co-processor instruction space, which means FPA
and iWMMXT are mutually exclusive: you can't have a kernel supporting
both.

In all cases, the co-processor instructions have always had two
definitions: there's the ARM integer CPU naming of the instructions
which uses things like "CDP", "LDC", "STC", "MRC", "MCR" and so forth,
and the co-processor specific naming.  In fact, the early VFP
documentation referred to the ARM integer CPU naming of the
instructions, talking about the FMRX being a MRC instruction etc.

So, for example, with VFP:

	fmrx	r0, fpsid

and:

	mrc	p10, 7, r0, c0, c0, 0

are exactly the same opcode.  The former is defined in what used to be
the separate VFP architecture document (such as DDI0238A), the latter
in the ARM reference manual.

It's just the same with stuff like CP15 - ARM tried in ARMv7 to rename
various CP15 instructions such as "MCR p15, 0, c7, c5, 0" (which I can
tell you off the top of my head invalidates the instruction cache to
the point of unification) to be "ICIALLU" - a neumonic I still have to
look up.  These are just different names for the same opcode.

I'm sure there's a document somewhere that defines the iWMMXT
instruction set (I don't seem to have it), but ultimately it can be
described in terms of the ARM co-processor instruction set, just like
any of the other ARM co-processors.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413215323.GR25745%40shell.armlinux.org.uk.
