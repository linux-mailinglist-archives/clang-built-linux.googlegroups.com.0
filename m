Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBGXC6D2AKGQEKVJG2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id A60311AF986
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 13:08:11 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id s11sf3942915wru.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 04:08:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587294491; cv=pass;
        d=google.com; s=arc-20160816;
        b=D712zGLjvbkfJ/8cgJvam1JAYvxTYuUqA5N2PtVN51cqtUP7TEUkDoHJ2mboPE2um1
         MTL/7fIIrZ0NmhRv5MpSg0eDCeRekV+ZXCA92O6pLUMNm+qNxOwck1xHJZs9DSY8QCmY
         sT9S1L9lqcZCkPcPhNlQhGwE+HTGCuLhRC40ivsnddXMIIycp3nZCKkpPnku38C3rA1Z
         siGA4+G2LXx0d3ewRuBVv+YESafCuhLICPv+SpmTuDYy9abrnHtByBmLSeYYg650ehk2
         4crLHufzngFYXdDgUNwosKMgRiHyWv+ScyKywtXH+j3pFfd0twlwNmag4nOLLMCFTIaf
         qFiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=dd0nL0NWyacFoCco6ATex5ONORVvyryoLoSx2zAWqDc=;
        b=NvrrcMpx2+5IvJarH+6AqamRVUgw/mUIn1D30V0zbbdJB3smMo0yOS+09Tfxg8zRl0
         3h1fLRUgG+CxbpKH4Hy+AvDS47GvV804ZvXUF7neWBUYLAqjJQZ20JdkCr7afdgwmqkF
         0+fYw0K4gjz0evLfEV1xV/KK+MLAt2pgu3T1NmACa+OvCQJlZ7MHqnUY9AvehaZI/SOV
         /k7vKAY9ytti6RsssGVLtdChp5epAmCrLW3yZfRuoaES445pDaNcQZOVlTdDUD5EauRP
         UhUUD1aPDHpprvj1VrqO+MY+sBXaZT4O1pjpOFM3uPULiCW52SUjKUlHnXVe/eCyFy2m
         cgwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=WmfvRi3j;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dd0nL0NWyacFoCco6ATex5ONORVvyryoLoSx2zAWqDc=;
        b=ntpl/GjK2FWZFGaiAURUupQXvxAAV+2AJdRa7IfldDNGMg6gbwrvjZiuN4E+4w7C8z
         cy0IJMYz0U/bbUoE3Ociq387nitJPVVDGZV3vJb54CNJ4nrOPhbggQwyCiruE38EbMdY
         CsP9RFsTLR5y/BW+Y+Y0KJUztlvIPKhaw/RcQ0+DsipgaONdDGnpqKqBLvutzMfsaAT1
         fm0wd1J59Ixup9gJ2Z6BM6qleBbwEQSV8UkTTN8oPBWIZX25jEbODWcqOa1DIbkLVFoD
         oZ3wYV5MqSYVLJ47nA5erL3aUHwjObOwlWz1qvSnD/X/CLoYk2L1p3xbfYPxEpKNmPXv
         aGKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dd0nL0NWyacFoCco6ATex5ONORVvyryoLoSx2zAWqDc=;
        b=S9+8pNFM6XeEdHgyveSQWaQJXP93BwMHwJ+xnLY1MSy/CAU8vwmPvVrx1RWogNmDP4
         qxqfwbFIWkbIVKkRtcMNwkAJ9SIyyBOYv9C+QSKfUt0IUHeIp+8utCfW7ZpyDLrj1qyx
         0zDR1TgszJRGOBVVoSMuiWN8s6W2NcMvOIEHRqsz0DyY9Pkbf2Z/qBNWdjjWWLpaKWFU
         G0xVCBpvydan+b5c6lYiOBRD3WIvtoiwI8ROLfXRukYCkierdPnI38s0JWTmvoA3HIE4
         DlnzSvlp3kr3ogad/7xwT4O4IaajDTI7ZodQ7Nhy3ukEujr7ybWxMtnqD2Cl1nF7YDFE
         wB8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaoROl0zPSF84fizl1ibk5AbmUdMHTo/r83t2n0NC0aDtpdTjiD
	kOJCnqi6oRO8jiWWBhHBHsY=
X-Google-Smtp-Source: APiQypJU6X/3F2IFCdlGpzd4AbKoDMaFHNlbR0mXl5SPyT2PhUc2zwId9Gk2BHWrXfN2hphpKzUHbA==
X-Received: by 2002:adf:e54c:: with SMTP id z12mr14569257wrm.276.1587294491371;
        Sun, 19 Apr 2020 04:08:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:668b:: with SMTP id l11ls233082wru.0.gmail; Sun, 19 Apr
 2020 04:08:09 -0700 (PDT)
X-Received: by 2002:a05:6000:1203:: with SMTP id e3mr14402499wrx.229.1587294489880;
        Sun, 19 Apr 2020 04:08:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587294489; cv=none;
        d=google.com; s=arc-20160816;
        b=k/AYClKxB/xHLYQhnOyBVOCC42rD4+KPNuIZyiVf/ltY/cAmI5jVTyY441lG20/8nf
         ebrBLFlUJA3FEaPOu8J8CcpPVECY5AawlZWj6TrICebrMJwsgsD9SqlpcM+kqB7uf/Ha
         vjYn0l+dBonm5CAl8BBbs8Sz+VS961gCJb82Mtw68tp2B7TPtiM//7D1J+Y/Dm1rtp4O
         ptHs54gMaC7p4OC9EBsVtyh9bsdzt6vqvtQgmEAy9GrpcJqkTj9R195jx+L/IBd1+g49
         gtVPlw+JYXEd3iq6x2z6cDQpWOadp9DNHT+JC1/9udbccxIAZPNftFFT8ej24rTD/ds1
         yoSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=a0hpRrCjohxzHvPf38IAgCtaSvu3v8WSSLh0hsDEMqw=;
        b=fzeIQ0+72tAO92aYTOivAvJC8ricDRqkaDS3LZSlO0VzlKJupzP/BQO2XPvFumPT/m
         zfWRMhd8B0fE+sYgXFDqZOqn3mevTVXBWDYpCUGCi/tREsPJh5Xgp+0Ls3t0HNySFioe
         ramElAdMHNW6XfwBO8ANeOx/O6aBgU6Lakp3qfaqu79PD0o+aSB4dmx0lGGt0QapHieH
         ceTOsVRzKWIRl3mAzU9nAR/O+3WrwwUXFab4TmKaaXXLNv9/H+qsTBSvO538BFyV2QAT
         nOZLss5DKQIPtE7L8r5QBPYY2Wb0/wMqrc9cc74S9qxplZNGpfEUzDx8K88MJX12JhqZ
         PKUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=WmfvRi3j;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id u23si683356wmn.0.2020.04.19.04.08.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 04:08:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 079D45C9ADE;
	Sun, 19 Apr 2020 13:08:06 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 19 Apr 2020 13:08:05 +0200
From: Stefan Agner <stefan@agner.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ardb@kernel.org>, Kees
 Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Kristof Beyls <Kristof.Beyls@arm.com>, Stephen Hines <srhines@google.com>,
 Luis Lozano <llozano@google.com>, Jian Cai <caij2003@gmail.com>, Linus
 Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>, David
 Howells <dhowells@redhat.com>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Manoj Gupta <manojgupta@google.com>, Benjamin
 Gaignard <benjamin.gaignard@linaro.org>, "Joel Fernandes (Google)"
 <joel@joelfernandes.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski
 <krzk@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, Sami
 Tolvanen <samitolvanen@google.com>, "Eric W. Biederman"
 <ebiederm@xmission.com>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>, Dan
 Williams <dan.j.williams@intel.com>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org, Patrick Bellasi
 <patrick.bellasi@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo
 <tj@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
In-Reply-To: <20200415144450.GF25745@shell.armlinux.org.uk>
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
 <20200415144450.GF25745@shell.armlinux.org.uk>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <ee12f583d2e2d4b9acdaeb213d3c4e25@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=WmfvRi3j;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2020-04-15 16:44, Russell King - ARM Linux admin wrote:
> On Wed, Apr 15, 2020 at 02:58:05PM +0200, Arnd Bergmann wrote:
>> On Wed, Apr 15, 2020 at 12:32 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>> >
>> > On Tue, 14 Apr 2020 at 22:53, Kees Cook <keescook@chromium.org> wrote:
>> > >
>> > > I don't know if this will help, but I feel like folks might be talking
>> > > past each other a little here. I see two primary issues that are
>> > > colliding, and I just want to call them out specifically...
>> >
>> > To reiterate my point: I strongly prefer minor asm surgery over
>> > elaborate Kconfig plumbing if it means we can retain the functionality
>> > even when using LLVM tools. In particular, the use of macros to
>> > implement missing ISA support should be considered before any other
>> > solution, as these are already being used widely across architectures
>> > to fill in such gaps.
>>
>> +1
>>
>> > > What's a good middle ground here? For VLAs, I ended up getting akpm's
>> > > help by having him add -Wvla to his local builds and send nag emails
>> > > to people when they added VLAs. That's not really a thing here, but it
>> > > seems like there should be a way to avoid losing ground (in this case,
>> > > it's the erosion of attention: repeated known-issue warnings means the
>> > > CI gets ignored for the warnings on newly added issues). It does seem
>> > > to me like adding the negative depends is a reasonable first step: it
>> > > marks what hard things need fixing later without losing coverage for
>> > > things that can be more easily fixed now with available resources.
>> > >
>> > > For the specific iwmmxt.S case, perhaps the solution is the suggested
>> > > changes? I imagine it should be possible to do a binary diff to see zero
>> > > changes before/after.
>> >
>> > This code has been around since 2004. It has never been possible to
>> > assemble it with Clang's assembler. So the only thing this patch gives
>> > you is the ability to switch from a .config where IWMMXT was disabled
>> > by hand to one where it gets disabled automatically by Kconfig.
>> >
>> > So what hard-won ground are we losing here? Did IWMMXT recently get
>> > enabled in a defconfig that you care about?
>>
>> I mainly care about the build testing aspect here, it seems we are getting
>> close to having the clang integrated assembler working with all .S files
>> in the kernel (it used to work for none), and I'd like to do randconfig and
>> allmodconfig tests that include these as well. Disabling the option works
>> for me, but your suggestion with the added macros is clearly better.
> 
> However, to me it seems the approach has been "clang doesn't like X,
> the kernel has to change to suit clang" - sometimes at the expense
> of either functionality or maintainability of the kernel.

There are also quite some quirks which work around gcc/binutils
weirdness in the kernel. E.g. there are macros to make VFP support work
with older binutils versions.

I understand, Clang is the newcomer here. Breaking gcc/binutils is a
nogo, and functionality or maintainability should not suffer.

I think the important thing here is that whatever workarounds are
introduced that they are properly documented: Why is this required, how
does it work, and under what circumstances can it be removed again. This
should be in commit logs as well as inline.

> 
> Some of the changes have been good (provoking modernisation) but that's
> not true of everything - and I see nothing happening subsequently to
> rectify the situation.

And that is true with gcc/binutils work arounds which have been
introduced long time ago.

From my perspective, the kernel always tried to be very user oriented
when it comes to toolchain support: Rather than blacklist a known broken
toolchain version, work arounds have been introduced. And I think we
should treat Clang no different.

That being said, I am not saying we should hack up the kernel to make
Clang work no matter what. There are fixes made in Clang so we can avoid
introducing hacks in the kernel. There needs to be a balance.

Again, I think more important is that when we introduce work arounds in
Linux, that we make sure that such changes are properly document. This
will make cleanup a *lot* easier and therefor more likely down the road.

> 
> Had we gone down the path of disabling the build of iWMMXT, if anyone
> builds a kernel with clang for ARMv5 PXA and relies on iWMMXT, their
> userspace suddenly breaks because they used a different compiler and
> lost the necessary iWMMXT support in the kernel to allow userspace to
> operate, which isn't a nice approach.

That is actually a very good point and hasn't really been taken into
account in this discussion.

Currently the default behavior is that iWMMXT is enabled for all CPUs
supporting it. With the patch as-is, users who might try out Clang (with
integrated assembler) likely will not notice that iWMMXT is not
supported. They will be in for a surprise once they try to use user
space applications making use of iWMMXT instructions.

Avoiding such surprises would mean we either disable all iWMMXT
CPUs/architectures when using Clang's integrated assembler or make sure
they work with the integrated assembler.

Is there a nice way to print a warning at build time in this case?

> 
> Using macros is the best solution to work around clang, but should not
> be done at the expense of GNU AS which has proper support.

I guess making the macros a Clang only thing should be doable.

> 
> I'd say this: if clang wants to support building ARMv5, then it needs
> to support iWMMXT and stop forcing the kernel to adapt to Clang's
> incomplete implementations (which are no direct fault of the clang
> developers.)

So far I at least did not really look into supporting ARMv5
architectures when building with Clang. I would be fine to just disable
ARMv5 architecture when using Clang's integrated assembler, at least for
now.

However, iWMMXT is also supported by Marvell's PJ4 microarchitecture,
which is an ARMv7-A architecture. Hence this file is assembled when
building multi_v7_defconfig (since ARCH_DOVE is enabled there). So if we
consider iWMMXT mandatory to support an architecture, we would have to
disable more than "just" ARMv5.

That said, I still would prefer this patch over disabling all the
architectures. Keep in mind that integrated assembler needs to be
explicitly enabled (using LLVM_IAS=1).

While I fear that the asm macro surgery will not be that clean/trivial,
I still think its the best option. It side steps the problem of
accidentally breaking user space and ultimately allows to build more
configurations with Clang's integrated assembler.

--
Stefan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ee12f583d2e2d4b9acdaeb213d3c4e25%40agner.ch.
