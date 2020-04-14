Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBV6F3D2AKGQE34QNTWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 6739E1A8CE4
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 22:53:45 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id c13sf938705plq.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 13:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586897624; cv=pass;
        d=google.com; s=arc-20160816;
        b=SeFWXoIbMzs9VuDwcm/XeF80BxeCKgdYAFmFNl0AB+x6qkpgO6/eJ/0yeTUNybIT/2
         hSrvk0rcwBpl2ETUFNiVvszhO1u/BKuYpPZ978cCDnbJcr88ENLqyFSTFnatrniB8N13
         LsB6uZop1cNDKGK46VyMEyt1BQYurjb7+D340Q/dijjdQiUeOx9phhzJ56RBfHHECvA8
         UUpETX/B+Ek1XyYrrL+oAsQ9kpz0hEKqaHzSmNfG+kku1Ux6RQaVDjrj8uKwQ7HhoM0F
         1to1efUtp2NZRou+rhPiMvnFl5716OISltQLCFirFfVkMniVHFN1McJPS7mnmuPr8gZl
         LUdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OIkKwubR1Fdb/bGBgZVTatLLJtsGwPRTWs0abrwIxNk=;
        b=1JwkgFfT9ICssGpBqD7qb99lwtSwCTbQdyguROwg2ARahHuJBXrgR6ivEFEmEa3AlP
         7qsIa3HgFe84stDxLhSA/0PfcOJwMDH2TmtjQrzsC/Rb/7wlI/t6/nNbZkvmnVfgMxk1
         48j08AiV9OXOfCa7+duryOcthll29MkYqapaNaHFLunX9nOXKWvpFtuIKuGqtia9YeWh
         /nyg3RSJ2tiIgtN2VqY9/+51Atil2bcnSRRzwbJjtGRMnQ0uLYsrWiWDeNoxwDqYvJ5K
         FSjiohSnNtvZj17kKblkSMBLRcwKoeI2s3V65w1I19TWI1KItXPjGxkbg1ws6q+UQ49M
         oXzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CSqlXQVE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OIkKwubR1Fdb/bGBgZVTatLLJtsGwPRTWs0abrwIxNk=;
        b=WYT0mGSm8WJiKmtIK+bmN3JRXm+TikvAWhpHOxFZFbLSuW7ysP+kPB+xqTxa4Tt2xz
         uQbNQOwPb9FsF7gFUZSBVXDBY8tAX5mGkpIug2FpX08i0X9OyjoIYzl5o2d1+2dCMud1
         tav0jzSQWCYzmcf84mFIIpx5k+Iwbvvp7Wv0DGFKc7xxiCoOxdaQDoPTRH401H9WEPTv
         /hOeDnhw8bGRvHMwzOmrNvj99gGqNVkZM8k8qEaBTyk2ly8M++pUNb+WzWykEiT9VWE8
         D5spXsliG0Jb6425G0rUONLWAZj2l2dP8OFdK2wVlqHaBblcGyWxmokMGlzj+7Mm7x4q
         ei5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OIkKwubR1Fdb/bGBgZVTatLLJtsGwPRTWs0abrwIxNk=;
        b=iMIw1I7kaBbO9QBeMzHSY6TBxhCJYDieEcytWXiUQkT8wLG/FOvnMmn3qqp72G07mJ
         33Ny1wDp8AKH50nIwB0qks/h+BWHmlT25Rf3vEY+oU/7gutqwl3lOUaIIUpveMzn5Sz4
         MwoS6tRz7SXFJB6PHxoV+IG6n3Cv8bcs1xjsT+OVDPY3xJ7AHxy4+j5EUOQrHOaUYGcN
         KHGpfkEw7ZhlAwpvP1mXGZQjjbawzeW3SWbywVxUj7QkVXYlLVi/5DWeemdsa3IqTv48
         VrbubgHtZMkkmryez3dox/lXD2LnKwY74rlEwCXWQGbT/Ig2/AuMMNHOleC+iQdur3Iz
         B5XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZLL0MaElHtulxl+2DAsX3lX6DQoKsMkeyp0xo3GAP9v4XnvojX
	6hZ5Nu4LyhC5oBFSsbyEZw0=
X-Google-Smtp-Source: APiQypKDA6xzboXNi/12ivCArCf94kgl57RKv2Loh165znw9rE4zcoYlo2gfMH8enZYAJRTBUoi8aQ==
X-Received: by 2002:a17:90a:9af:: with SMTP id 44mr2228475pjo.128.1586897624009;
        Tue, 14 Apr 2020 13:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c85:: with SMTP id t5ls4579692plo.9.gmail; Tue, 14
 Apr 2020 13:53:43 -0700 (PDT)
X-Received: by 2002:a17:90a:bd96:: with SMTP id z22mr2227066pjr.8.1586897623637;
        Tue, 14 Apr 2020 13:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586897623; cv=none;
        d=google.com; s=arc-20160816;
        b=bPdMhPrkBlsFCGtesmOPyvg2XrOXZFL+XsZl7TVMg115vrNsc9txzvpB0Yh0J7utVm
         MMlY7Gw5LlOaTvqFylk4kKKLti3L5O6tBQm7UYiBYreQieRoNdC6dKZIjBkI7HNnUfWb
         k336gTJya8HNjXqfcpdwTA30s2riZiSXqyf7BaGPMTjka1f23xHKHiB17QMr33drJzZg
         OzcGoJRqRFX6Zr4AziQXtC26HnejcPRnpd1WYFm3AEjw75FWUGa9pd+Urokioadb/qdY
         ja93BKkoC3Dnlnh1sCZzlXhMbfh4ftNO2Lr0O2yM8H8oXqvwPXGdvFaf68ZvbEeUYAHr
         Kdrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=K0jdNDYsyVBKVJ8vrSclC2i6UhecRADdZccibZZW3Fk=;
        b=gvduTeUxzuxwCS7w9/BwCU/bhua74/Mgo/ng6ap3F1qkxD9EN1uZKsM85iea3bT6z8
         5CYITHXaEiRrsPp7zzE93UyoHdzhC+msxt5H/QVeSaWu68lhEyk85LsC7Kh2T9Eh1vWt
         9JQmvnNd9UMiLyjQGpAW35lpY7NcrEDdDY+NHd0+kZtj/feF1h37fULZmTMoJyqNn+Ah
         BKk8cmOBqcajwuE6kr/1hi8qRKdkZPpW+AukJTju1TRRKo0uKx2jAKwP8WAU7t0r9dKr
         bRfApLxEOO0gCpnyE67WxDJ+mhSxrw5yqmvLTgCUBuzw136M1Fk7hCFVseDCJ5R9YRnV
         rjrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CSqlXQVE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w18si352637pfi.4.2020.04.14.13.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 13:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d24so397062pll.8
        for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 13:53:43 -0700 (PDT)
X-Received: by 2002:a17:90a:e2c1:: with SMTP id fr1mr2244175pjb.124.1586897623282;
        Tue, 14 Apr 2020 13:53:43 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a1sm11810795pfl.188.2020.04.14.13.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 13:53:42 -0700 (PDT)
Date: Tue, 14 Apr 2020 13:53:41 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>
Cc: Kristof Beyls <Kristof.Beyls@arm.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Russell King - ARM Linux admin <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>, Jian Cai <caij2003@gmail.com>,
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
Message-ID: <202004141258.6D9CB92507@keescook>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CSqlXQVE;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

I don't know if this will help, but I feel like folks might be talking
past each other a little here. I see two primary issues that are
colliding, and I just want to call them out specifically...

On Tue, Apr 14, 2020 at 1:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> On Mon, 13 Apr 2020 at 22:45, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > 1. continuous integration and randconfigs.  We need CI to help us spot
> > where things are still broken, and help us from regressing the ground
> > we've fought for.  We can't expect kernel developers to test with
> > LLVM.  Currently, we have LLVM builds in numerous kernel continuous

First, is this one. To paraphrase, "we don't want to lose hard-won
ground."

> To be honest with you, I don't actually think iwmmxt is that
> important. But I have already demonstrated how we can use a couple of
> macros to emit the same instructions without resorting to bare
> opcodes, so there is really no need to disable pieces left and right
> because the Clang assembler does not support them outright - it just
> needs someone to care enough about this, rather than rush through the
> list with a tick the box attitude, and rip out the pieces that look a
> bit too complicated.

The second is this one. To paraphrase, "we can just fix things instead
of disabling them."

This feels a lot to me like the pain I (and plenty of others) have felt
when doing treewide changes (adding full compiler support is kind of a
treewide change). The above two points were really strongly felt when we
were trying to remove VLAs. In our case, we didn't even have the option
to disable stuff, so the pain was even worse: VLAs were being added to
the kernel faster than we could remove them.

What's a good middle ground here? For VLAs, I ended up getting akpm's
help by having him add -Wvla to his local builds and send nag emails
to people when they added VLAs. That's not really a thing here, but it
seems like there should be a way to avoid losing ground (in this case,
it's the erosion of attention: repeated known-issue warnings means the
CI gets ignored for the warnings on newly added issues). It does seem
to me like adding the negative depends is a reasonable first step: it
marks what hard things need fixing later without losing coverage for
things that can be more easily fixed now with available resources.

For the specific iwmmxt.S case, perhaps the solution is the suggested
changes? I imagine it should be possible to do a binary diff to see zero
changes before/after.

For others, is a negative depends acceptable? Given how responsive
Nick, Nathan, and others are, I don't think there is any real risk of a
"slippery slope" of things just getting swept under the rug forever.
Everyone here wants to see the kernel be awesome. :)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004141258.6D9CB92507%40keescook.
