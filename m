Return-Path: <clang-built-linux+bncBCSPV64IYUKBBJ5G2P2AKGQEYABIA6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f63.google.com (mail-lf1-f63.google.com [209.85.167.63])
	by mail.lfdr.de (Postfix) with ESMTPS id 6695B1A6DB3
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 23:01:28 +0200 (CEST)
Received: by mail-lf1-f63.google.com with SMTP id v6sf4043198lfi.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 14:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586811687; cv=pass;
        d=google.com; s=arc-20160816;
        b=RATD29ULon5JsyyZCjH/3d9V0111O+5TlckN5M/J/c8pxKEfWDgu6QkU5qgPacOe5X
         vjo4kTYhtpI6JpMMzKd4LFv+kao4gIb+9LzNC4rl/aZA2qsfYnFN7hUK81jlwee1LFiL
         G+ZnDsiU6C1TD4lhHRAtCC4Iw8TBEgtZfQumUHxO5/4LLg49NhA5E19jkffkolJLF/Ef
         OBp/9wdpEiLcNvVEx6SwlBnmBqNP5k8onnczLSbYKKUIATYKtJcvAL+hmIxQTwbaZzwM
         6BNlu2F/pOgX2EiNPnIh5p4sGxSDVPDopk0UFhYRV8ZmLKNQ4fRKQcCWsJpTJSSUAE39
         r68Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=bEAorZZ/ylxnooUAzOAxUZxxpofFVQoC2laAsgLPKkI=;
        b=uES3svl+g0LfqT2t7EOQpmOkGrqkPgneIUQLMtn0t8m8qJiHNXlQIH2MJayOgNb/tF
         K70jhe5V3b2mBYRGrYwIxE20/dIUV28XzaOHHEU1ib18SPMDzBu66/LeBI3IfdHZ0Xg8
         hJMV0gdGbsau7wzQz43JdhCsQQgor9djbiLylTd7weCaoIe342zQYxwws2jNBgchNaJ0
         Z4Eh4AClQqCqln3D+ssfIT5VRqDiGHrEidAsXOBT8xx5WNWTcK0cpnquhEkDV4k99gBQ
         rO54TTa73HAFPYr0BqxSx2mW0ciOU89txw2Frg4aTT55PSvqbusMXmjaRp+IC1ZdGjmg
         9IjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Dzxd7eN4;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bEAorZZ/ylxnooUAzOAxUZxxpofFVQoC2laAsgLPKkI=;
        b=F+kP0wsIEkjLIwG1ch/Ks2vaJN3elQEciUx0Lrcm6GmlKtYmIJCFJdhPnDoz53n4V4
         pFv5fepWEtzQ8vzuSRCEvUz6MVSXprNlPfCZBmAzgmSlQgmO+fcJg+nb/AqIyr4Q1Kmt
         24q4up18oEYXNsN+4yYqdfy5Xnzp4iI8WsQO+BE58D4EbfFn9QDCIFhXEgYu/YqsrQwj
         BfsRCHxVGZ4PUQ/+dIsFa2AQcGvmcX9rLmyfZjX/I1fVsVvg8qmJgpco+gQl2Ti2lrF6
         kb9b2fJwLdlihiU97rrNm9IEXYSs22itdBPadIl7qDh4Hm7VRt64f6dw5RYBz/rZu5+0
         dLMw==
X-Gm-Message-State: AGi0PuYhgxR/7kbqyE/+jxU50S+f2CPYSYL+I19Hy6pO05ncAuz8U1m9
	cjKnASntwNNRkQQYwSpvRiw=
X-Google-Smtp-Source: APiQypJ8E4kgIc7GZBMXHlYynyjO8l+/hQ052ayVntC1HeOCJSbg98tyQF94FWW5WbnQQ4nIjMlKwQ==
X-Received: by 2002:a2e:b177:: with SMTP id a23mr11626190ljm.174.1586811687755;
        Mon, 13 Apr 2020 14:01:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a49b:: with SMTP id h27ls258769lji.5.gmail; Mon, 13 Apr
 2020 14:01:27 -0700 (PDT)
X-Received: by 2002:a2e:a58e:: with SMTP id m14mr11249629ljp.204.1586811687114;
        Mon, 13 Apr 2020 14:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586811687; cv=none;
        d=google.com; s=arc-20160816;
        b=UyW1IJ7UBB+AxpqdfcQ1yPKDygw4jQSfp2iQMDPldNRie4zaC/QhxHl3rF5VapYIKq
         lgNNN6MrAJqQv6vq4c2tEFxx/qBmXOgJPY+vwftBlJAscYq4mJwuLXJYbeYcmG12pZAu
         ZrJoXY3+f0IdFpXC3lOAq49FheMilWfZrTTqb2B2bxPOR60N4KL53Cip2h6oiFHfrz+k
         c/sBnkUPaTlhDGcGO18zQAYcPfWoDrN+0Sui1wVdgskzUdoIcrkNrwi+qgbl0ipbPAIU
         rv7BbK2M9WkTtMWNTWQlEEYI2HpvOn4/25WECM+74N9IMv6PENBxEn+CiHDgx1HpcTlZ
         rViA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ws2nR0EpxKl2RJkJk3e0Vaf6eTLG8ASGEhenXWS4AfY=;
        b=Z0psAxD594HlOydUcuY1A4+jQnPN3gWnlhzQbhWDpHqpN2485Muhp+mkkigGjMa4ja
         +ZCLlnaI3YiEe85PX0KbwL0yUNgtkLtIjSwHoBWn+XHk1MuM1z+tacLYPBQHzM0InyTi
         A9nOvtvBjzYWtYBxCyRDl7iwgf2WO7f07TRTnyaCCGN2nMGUiQ+uw2r+eV29vTwhf7Am
         A+Dn5FWRiYn3ujv7T7FjT7Etdmcfmf3MfZMi17RPOLguN4IsGRLAeggxuCdMDoT5r5MX
         9lkAP1ilUG1sIr605WjB8V0VhvabEoMdXdK/6aYq7slmcV4fnBKfEy/dbg3xwkAaQZ9V
         E+/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Dzxd7eN4;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id i24si483865ljn.4.2020.04.13.14.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Apr 2020 14:01:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49652)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jO6CQ-0003wo-Gw; Mon, 13 Apr 2020 22:00:58 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jO6CH-0007Ht-8g; Mon, 13 Apr 2020 22:00:49 +0100
Date: Mon, 13 Apr 2020 22:00:49 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
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
	Ard Biesheuvel <ardb@kernel.org>,
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
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	Tejun Heo <tj@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200413210049.GQ25745@shell.armlinux.org.uk>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAKwvOd=-u3grX3O4CtBayJYhv=mmsxMrRTF=AMcKMbphN5Xkgg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=-u3grX3O4CtBayJYhv=mmsxMrRTF=AMcKMbphN5Xkgg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Dzxd7eN4;
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

On Mon, Apr 13, 2020 at 12:23:38PM -0700, Nick Desaulniers wrote:
> On Fri, Apr 10, 2020 at 5:33 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > For older CPUs, it doesn't matter what the latest ARM ARM says, the
> > appropriate version of the ARM ARM is the one relevant for the CPU
> > architecture.  This is a mistake frequently made, and it's been pointed
> > out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> > keeping older revisions is necessary if you want to be interested in
> > the older architectures.
> 
> As if it never existed *waves hands*.  Interesting.  Does ARM still
> distribute these older reference manuals? Do you keep copies of the
> older revisions?

I keep copies of every document I've needed that I'm allowed to keep
as a general rule, including the early paper copies of the ARM
architecture reference manual. I even have the original VLSI ARM2
databook.

For the ARMv5TE architecture, you're looking for DDI0100E which can be
found via google.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413210049.GQ25745%40shell.armlinux.org.uk.
