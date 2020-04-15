Return-Path: <clang-built-linux+bncBCSPV64IYUKBBDN43T2AKGQETYKYKUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f56.google.com (mail-lf1-f56.google.com [209.85.167.56])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B341AAA68
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 16:45:34 +0200 (CEST)
Received: by mail-lf1-f56.google.com with SMTP id 66sf1377358lfa.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 07:45:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586961934; cv=pass;
        d=google.com; s=arc-20160816;
        b=TS0xkUAjaF0Esu16Nmh1r5M68iHQuYeNJ5o5qPxsgpNHdOerxs/OG50jLW73Z/d2ib
         k9kL4DA4HqjRPtpPK7Hs1KPDVxuyWkC/viX1LESRpk9/raLgMB+iae60vAPLXDwp3KK2
         lw37Z3Y7hlNqA/fHa5zJxgcO+e3Aw/pmQAJqXgGnnewxSvIqqYamNld+qeVcM19DAjkA
         P6/EBxupcu4ekeaBIg5mDtvCnrq5dTuwHNzZ4AJs5nuQRJ7kfZT+vm0iJKeGclW8pG3o
         wNC4po1UGNQ+8wyEb1BT64Heiz06kQoHgNhq23zTibqki+bRtUv59NNv7A5Sxt2A4lH0
         fqfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=dOokOePjMtOx6HIRMCSg96+wvFqdjcLBgUDbMJzGbmc=;
        b=KkUkrJJJ3DrLSZ+8ouubfOcvOl9rAPB5md+IKuHWhyAkYZzuxtBRPWDkxTmGJQa6Sz
         MA255HX9eja5WqwNKDEehyyPoFo/tKIVrm9AiGUvTgk/6PoTOhhMCELnYut3KjSBFf0d
         To5ER6SRrmk+8fg7zOyv18p5/8Pzm4J2BY75U8dTfdIqleCULpYM53FktBLYFk+nyu1W
         i8kHlG5nmnS0jR23aP28vA7YluvLn8pw04RHyTtWKbuMUebPXcs9N9EluDshWuIhl1G6
         jYqb2WtYt1hIW716rgFI+3MuCDcDkEm4HrwlemsTutXNj7vzoHVoGP4eF54UfIaV0ul2
         wFEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ZeyHf1lp;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dOokOePjMtOx6HIRMCSg96+wvFqdjcLBgUDbMJzGbmc=;
        b=KhMhXbIvEND7qO9YxR7v4TzOGQicECX58JJKAeUp5/nDssW2C2PBFSGzbemAJ/ObHB
         wV/j+qgUU1w0DbCOSZaOFa4Y/kEDkJuTCkPRffo9ZWgxiUNxjshosEd0s7Od52OL7/Ev
         eT7xcRqHwNaOlk8x58u1/ja/C9FJomGh9MKtnRoQOsmHXFl+c1V+3YshM0CbJ0yTHNBw
         gKEo24LDpwHp5QlgvpwqqWTP6WlEhaRgNV0QNBXnUh6cSjwEjZVBWUJetosan3QDMkja
         QTZ/kSsD+ycGO9JyaZhBfyRdn6bLCzeSHJ7NrGqV8QlOF4GKD3Pir52HKSfrYiOvHGkf
         gi2A==
X-Gm-Message-State: AGi0PubKKXxdpNhwNgIkEImPdrlEzEip2qRlq1oMyiY+zBXCch6LqkXS
	5CqMBtNmcgeIbhfKsfHKs80=
X-Google-Smtp-Source: APiQypLpeeT1ZnjkTQ/4KqZL3Gt3TZu8Y9e6qt81fB+o40t+Zvx6UAVToftYMbKvkNiZnTRuyMCfCg==
X-Received: by 2002:ac2:5e86:: with SMTP id b6mr3222712lfq.65.1586961934013;
        Wed, 15 Apr 2020 07:45:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:551d:: with SMTP id j29ls1020590lfk.1.gmail; Wed, 15 Apr
 2020 07:45:33 -0700 (PDT)
X-Received: by 2002:a19:1c3:: with SMTP id 186mr3247363lfb.191.1586961933449;
        Wed, 15 Apr 2020 07:45:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586961933; cv=none;
        d=google.com; s=arc-20160816;
        b=BHZKXrBKm9Yu0EbdREEWRtJdIfov49FpIqTw3AbnGzqQq6K2p6y8tq1ARE04vWt3c2
         4vAUsy2nsS//obn3C+VSydR7U2j3F7BniPOSft9j11ztDBo0K5zieegww0m7pYckiy9U
         CzR6OnTzvw67nvCiNDTuT5YTRR8xd36EhXsGquWYWMS2lR8xMEwWbIuQOkru2BRNn98Q
         +fm1Vof2tU27OHeGVivoZ7mTQZpargareVwm1iAlBC6T6wMS1byvQgPhaGQJaCtF/bJk
         foOVd82WrdjqYYepsNpNWG5Gve1FuyMIBYHbGcuNXlfp1eshhsXHOIm5cWUXVdSUuTkO
         p/gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Q6y0RY1r/bsSQu1Pjhp5jZO0J0vCNZAdOGGiFado0tg=;
        b=kb7GrO8xYcqx28n7BD/YH53Bs8tXhRsq8a0MUbw8R8gXXa6vR1HIa5NGu1uPR7xPkq
         S1NJAS83Odq/Xwc12hIfSKNOdC+acrm15tOUrgyK6Jo3G3xEkyEUmR7eLZJLNkNc9a2Q
         NLtWS/pcvWzbCZmOcHUUyCFd2y5BYWyUOOsiMX93r08+zBpim2OQpQd7BofAIeZQXMY+
         mhSAuomfTfKh39hxqE8CHRcc8WVDGvu00anSUizj3TkaFRqSty1U3YPV949o6zFV/8lm
         S8kYyZdvZ2SEfklITFX9TLeCjQn4169KZxhPUVtuH5mXkyqg8f6X3KArKE2TMHFKasv/
         lGLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ZeyHf1lp;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id e4si264136ljn.1.2020.04.15.07.45.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 07:45:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46312)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1jOjHj-00071l-VP; Wed, 15 Apr 2020 15:45:04 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1jOjHW-00010F-Ku; Wed, 15 Apr 2020 15:44:50 +0100
Date: Wed, 15 Apr 2020 15:44:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kristof Beyls <Kristof.Beyls@arm.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>, Jian Cai <caij2003@gmail.com>,
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
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Jian Cai <jiancai@google.com>,
	Doug Anderson <armlinux@m.disordat.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200415144450.GF25745@shell.armlinux.org.uk>
References: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
 <202004141258.6D9CB92507@keescook>
 <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
 <CAK8P3a3Ko0XTLUGwBxVM=nNebGr6ww66+cCKbYBrd9A4ME0__w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3Ko0XTLUGwBxVM=nNebGr6ww66+cCKbYBrd9A4ME0__w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=ZeyHf1lp;
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

On Wed, Apr 15, 2020 at 02:58:05PM +0200, Arnd Bergmann wrote:
> On Wed, Apr 15, 2020 at 12:32 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Tue, 14 Apr 2020 at 22:53, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > I don't know if this will help, but I feel like folks might be talking
> > > past each other a little here. I see two primary issues that are
> > > colliding, and I just want to call them out specifically...
> >
> > To reiterate my point: I strongly prefer minor asm surgery over
> > elaborate Kconfig plumbing if it means we can retain the functionality
> > even when using LLVM tools. In particular, the use of macros to
> > implement missing ISA support should be considered before any other
> > solution, as these are already being used widely across architectures
> > to fill in such gaps.
> 
> +1
> 
> > > What's a good middle ground here? For VLAs, I ended up getting akpm's
> > > help by having him add -Wvla to his local builds and send nag emails
> > > to people when they added VLAs. That's not really a thing here, but it
> > > seems like there should be a way to avoid losing ground (in this case,
> > > it's the erosion of attention: repeated known-issue warnings means the
> > > CI gets ignored for the warnings on newly added issues). It does seem
> > > to me like adding the negative depends is a reasonable first step: it
> > > marks what hard things need fixing later without losing coverage for
> > > things that can be more easily fixed now with available resources.
> > >
> > > For the specific iwmmxt.S case, perhaps the solution is the suggested
> > > changes? I imagine it should be possible to do a binary diff to see zero
> > > changes before/after.
> >
> > This code has been around since 2004. It has never been possible to
> > assemble it with Clang's assembler. So the only thing this patch gives
> > you is the ability to switch from a .config where IWMMXT was disabled
> > by hand to one where it gets disabled automatically by Kconfig.
> >
> > So what hard-won ground are we losing here? Did IWMMXT recently get
> > enabled in a defconfig that you care about?
> 
> I mainly care about the build testing aspect here, it seems we are getting
> close to having the clang integrated assembler working with all .S files
> in the kernel (it used to work for none), and I'd like to do randconfig and
> allmodconfig tests that include these as well. Disabling the option works
> for me, but your suggestion with the added macros is clearly better.

However, to me it seems the approach has been "clang doesn't like X,
the kernel has to change to suit clang" - sometimes at the expense
of either functionality or maintainability of the kernel.

Some of the changes have been good (provoking modernisation) but that's
not true of everything - and I see nothing happening subsequently to
rectify the situation.

Had we gone down the path of disabling the build of iWMMXT, if anyone
builds a kernel with clang for ARMv5 PXA and relies on iWMMXT, their
userspace suddenly breaks because they used a different compiler and
lost the necessary iWMMXT support in the kernel to allow userspace to
operate, which isn't a nice approach.

Using macros is the best solution to work around clang, but should not
be done at the expense of GNU AS which has proper support.

I'd say this: if clang wants to support building ARMv5, then it needs
to support iWMMXT and stop forcing the kernel to adapt to Clang's
incomplete implementations (which are no direct fault of the clang
developers.)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415144450.GF25745%40shell.armlinux.org.uk.
