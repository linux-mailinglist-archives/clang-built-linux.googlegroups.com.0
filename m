Return-Path: <clang-built-linux+bncBD63HSEZTUIBBPWF3P2AKGQE7HNDASQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF8F1A9A8B
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 12:32:31 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id m2sf3436268ilb.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 03:32:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586946750; cv=pass;
        d=google.com; s=arc-20160816;
        b=A6ynBX+gh1GElrj6eDqvJTcqpcOYWdIRe+wFZcjjPSY/M/BtMw1CJY2vaUicAhu1UB
         ytmMuUZamy2ejiTrC+BuJ17c2l/2+WEDM3kKd6UIPViEfSg3hgb285iFcxpg0P8yTru6
         6eGXEDDMYsEkeTgcQomilfEcDbjQePhx5URbsochPt4xxqHRMV5Sfa2zjFCCHm1KmhRX
         ykzW91Dj8SDlIev1txC+Bm4hDLn4s6UO0gineDtmyV1k+3HbZaa+6z/i7aLVO99CMW5J
         KPPcN31JR6IyRVI+6LHYVqRbfKBnx8D9W2XCet3htzWwn1k9B6Dj3PTYMmUxRt8gJFfd
         kqXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eDJK5l/YuQKDkA5dAxUVWw/72iukUc+fmRgSm6LJgpM=;
        b=zZrg6fB4TPWneFQhoFZZayGX+Fupu4SfTmZdn+KTkRrJ1Sq4PkyKbwhvOb5YP1BwbG
         wuJYsS9LOf+j4rPMTn3cJlQVEY3/x0ENZeMdqUabLWy7TWMla6ZYdfwQkG+w26AwSV4e
         lfN9VU8ljZTZY01xejOnmM+TJa+v52Emed/FJ4QE/I1haM/7yL2n4lw+swFZTqZhKbUa
         we+g4BsYq7sCMOV4tlkSW++LjgU/7JPQfF4HvORvftFsEfCSFRrppVmRP8mmfU1bRESl
         62VPDFkauOnOOr/AMLk9NTgbooukumtIHshIdDJGyoW8h0GYyRO43wwlIvZud0CdbdNh
         f+0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IDz65g7U;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eDJK5l/YuQKDkA5dAxUVWw/72iukUc+fmRgSm6LJgpM=;
        b=AVQjKQqXRSikwdUyVqdW+5uA9NGg/ArTPw3QmTmbQDFhmmI4QjxvN0YOqyzsqiN8S2
         vPvd3gK7cCfjDLVjJ6mZVFXLb0wh2+Ax8ZpF2Se+aImQQGZ9yLbbi36o3bCgPiA1ePBs
         fUWkY4V6S6kfUl+bLYvEIyfXCYELwTZz54Y0WnLv4yqIBAB6yz5Eniz4/qjJhelZr5LD
         JgfjzWAutfDUhxu8wpwArs/p5GmDPXll9ubwDGCX2Rr2h/TmXgX5NuAFDnbUuyCkU3lc
         lnCGELtREiBENci1mDZDT8NsHZ49zXMayw7UMgt7rUDbjfZw3BL7vr19yvmj0KvV5ZyU
         fqqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eDJK5l/YuQKDkA5dAxUVWw/72iukUc+fmRgSm6LJgpM=;
        b=VJvx8GsN/DR64qu/I0uGEV6jfKkIAjHKVDzWCSSJlGdtiK5o37VlaJBge5sG2Inv7T
         YbTCJiT0PTddRg60lYBqzfAowRy8ZtYtLvl2IIe0tV1LnT4ay+nOhjhV24UQEO4dr2Ar
         E+DbwQ9DrJPIUf6njdXfpWOm2ar4hDmvjPMV2VnowZi3+1vxjDjDX+YqTRgeYPgGgkRh
         cezgaCH92AanCxO60GOIj9I/XYNKNoMo6GnTZ1aYVrcNDda2Ka/6eHx2lhTXP2ZEczSH
         boAIFH5ZclJdMDU5JZ7sLrgsMhmJs5ATkyCyM73O2OLXZYPdRAqQggiVWW9L34Qtlayd
         vhHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZkFDvEZkiOqTbqhc+lLTKTJ9rMBIzAh9K/88HB+wR29GWTS7dR
	rELHowCwBXyIBf5glc9FJOM=
X-Google-Smtp-Source: APiQypJDxXhErxIvfCTJ5zPKfcd1pg4Z70YGEmpLZqplg/0OYZ+Oyr5ViwwIbJETFBRd+vxW8YVCMg==
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr4679869ili.211.1586946750451;
        Wed, 15 Apr 2020 03:32:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c381:: with SMTP id t123ls1909281iof.2.gmail; Wed, 15
 Apr 2020 03:32:30 -0700 (PDT)
X-Received: by 2002:a5e:d50b:: with SMTP id e11mr17190741iom.169.1586946750008;
        Wed, 15 Apr 2020 03:32:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586946750; cv=none;
        d=google.com; s=arc-20160816;
        b=L6RNnUdtl7C8jo3wHT81L0B44MmLNVkVJp5krHCagPjPGAmAzfAteYSm/iwKw6oj6V
         igSxHRNq2hLWJz7D5W9dzpO8aGgq6iwQUl7KXEK85fZVOs+KUzzle+/kKyaeULJKIM7s
         NXszmOy82MZgltTXo9SmUTi4OcL/SkKLhIeViqmHDL7QhtnhG3GiJ5jn0bP4aoelEFMr
         W8XPFBMQIEMmOvdeccU0+kXi8L6blSw/zWrUE5DcTOnwZiGNs2rQPGZ4e72LZYz2SHQB
         i8DVmjTj5Tk45zm70eG645L4MFRxNqXH4BFx14p6JoMlukqRNVSbz6nXxefirTCv70UM
         ltLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1QEnH+xp2l8BKjhMd6pNhXxzfc2f51HEgatkC1XSQGg=;
        b=MgwAT5ZfdevFtqvS2dre0VLwSH3Uxc3vvLtGiSz+mhWiHFu29sEBkZV6YfinIy4aR7
         505+eHAYg0jDc7HUma3ICXRikPSyyyBClHHVr1e1TiAybAV9i8i/R5rYZIper/8DKdfj
         AV2MjTwaXBOfiK+8hJRCQIn2c1qPIXXaOwFMKIyOkVBJPRV/bd6vR7y4nSDpHVh8EI/j
         UybcQVVANBKVuQAbWtDBlW9uJozzDJhgKVROvM0TAccDIRfaOsnyGZrPb4W34FDw6wp2
         blDKZHJPpmLnBQb2kmdskne3dku/5qNoGJQKc20Voz8dHXsYmmuuU2Zu1185lfGPmpsM
         DSyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IDz65g7U;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g17si682687ioe.0.2020.04.15.03.32.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 03:32:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 27494215A4
	for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 10:32:29 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id i19so16524023ioh.12
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 03:32:29 -0700 (PDT)
X-Received: by 2002:a05:6602:1550:: with SMTP id h16mr25731080iow.171.1586946748454;
 Wed, 15 Apr 2020 03:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk> <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com> <202004141258.6D9CB92507@keescook>
In-Reply-To: <202004141258.6D9CB92507@keescook>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 15 Apr 2020 12:32:17 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
Message-ID: <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kristof Beyls <Kristof.Beyls@arm.com>, 
	Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>, 
	Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>, 
	Dan Williams <dan.j.williams@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IDz65g7U;       spf=pass
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

On Tue, 14 Apr 2020 at 22:53, Kees Cook <keescook@chromium.org> wrote:
>
> I don't know if this will help, but I feel like folks might be talking
> past each other a little here. I see two primary issues that are
> colliding, and I just want to call them out specifically...
>

Thanks Kees.

I don't think there is a huge difference of opinion here, and I hope I
managed to strike the right tone, which was not meant to be a grumpy
one.

To reiterate my point: I strongly prefer minor asm surgery over
elaborate Kconfig plumbing if it means we can retain the functionality
even when using LLVM tools. In particular, the use of macros to
implement missing ISA support should be considered before any other
solution, as these are already being used widely across architectures
to fill in such gaps.


> On Tue, Apr 14, 2020 at 1:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > On Mon, 13 Apr 2020 at 22:45, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > 1. continuous integration and randconfigs.  We need CI to help us spot
> > > where things are still broken, and help us from regressing the ground
> > > we've fought for.  We can't expect kernel developers to test with
> > > LLVM.  Currently, we have LLVM builds in numerous kernel continuous
>
> First, is this one. To paraphrase, "we don't want to lose hard-won
> ground."
>
> > To be honest with you, I don't actually think iwmmxt is that
> > important. But I have already demonstrated how we can use a couple of
> > macros to emit the same instructions without resorting to bare
> > opcodes, so there is really no need to disable pieces left and right
> > because the Clang assembler does not support them outright - it just
> > needs someone to care enough about this, rather than rush through the
> > list with a tick the box attitude, and rip out the pieces that look a
> > bit too complicated.
>
> The second is this one. To paraphrase, "we can just fix things instead
> of disabling them."
>
> This feels a lot to me like the pain I (and plenty of others) have felt
> when doing treewide changes (adding full compiler support is kind of a
> treewide change). The above two points were really strongly felt when we
> were trying to remove VLAs. In our case, we didn't even have the option
> to disable stuff, so the pain was even worse: VLAs were being added to
> the kernel faster than we could remove them.
>
> What's a good middle ground here? For VLAs, I ended up getting akpm's
> help by having him add -Wvla to his local builds and send nag emails
> to people when they added VLAs. That's not really a thing here, but it
> seems like there should be a way to avoid losing ground (in this case,
> it's the erosion of attention: repeated known-issue warnings means the
> CI gets ignored for the warnings on newly added issues). It does seem
> to me like adding the negative depends is a reasonable first step: it
> marks what hard things need fixing later without losing coverage for
> things that can be more easily fixed now with available resources.
>
> For the specific iwmmxt.S case, perhaps the solution is the suggested
> changes? I imagine it should be possible to do a binary diff to see zero
> changes before/after.
>

This code has been around since 2004. It has never been possible to
assemble it with Clang's assembler. So the only thing this patch gives
you is the ability to switch from a .config where IWMMXT was disabled
by hand to one where it gets disabled automatically by Kconfig.

So what hard-won ground are we losing here? Did IWMMXT recently get
enabled in a defconfig that you care about?

> For others, is a negative depends acceptable? Given how responsive
> Nick, Nathan, and others are, I don't think there is any real risk of a
> "slippery slope" of things just getting swept under the rug forever.
> Everyone here wants to see the kernel be awesome. :)
>

I am not disagreeing with you here, and I have worked with Nick,
Nathan and Stefan on numerous occasions to get Clang related build
issues solved.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXG6_CO6pzeJCSeWiCDyLfWw%2BZMuvkv_DLxe-si00fLd1Q%40mail.gmail.com.
