Return-Path: <clang-built-linux+bncBCDJ7PUVRQGRBL452L4AKGQEKLVBJHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D74225378
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jul 2020 20:19:27 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id n24sf4327712lji.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jul 2020 11:19:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595182767; cv=pass;
        d=google.com; s=arc-20160816;
        b=CdmwGVogDvibg3I2uNIn/vnc6v2paTYNmwr03UpdSsX9HEPegpuowIXIZi7BKjYsYe
         o41FG2A3/ZZ0euu9xbAfuS9foXXe0ak6N2mHioiWPBB1D1/SYk//o0e600UKrOg+due2
         mOh/azN+XMeJpKBPpf8PSEoUXE0HB98hHDapTG8Zqaq0VFqkNfpqr9+x2tLa3F1EYKsQ
         c23Z1LcU7XNjibB0puqJQtp1UpkoUYq2xZ4YKWWkuJMmOvfRJ1f9ow0tGrQuR+Uh/Svh
         KbTpMCWc7rfnaZNXej7e7AjDc7KVfWXwpMoXExrecuTw4YhiINcz44m2nH7D00Htu+e4
         Rt4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oci4HObIYA/DBsq3vOia+N1y6UDsjkVF/tk9iO2jS8w=;
        b=XnvwRpZ6dVNWRmRbX7J1HBUqL0gA0s3iQPguU20kNOcW/BLvry5U0/TB1LlMgjPslO
         tmqZLp8n2a26LOeQtdgkNizAPzpNWpwBlzqsdD6eyVTTxcTM025jsobd39ZegLgZXPBH
         TwzVhi5jjm+Hprs3mp8kmk8cTDE5ociKjyyPXx0ucItYvjRGvAtBIrBXsUEVBE0Aa3Xw
         mlwDWyyElcvAU6er0V7mT3dp4ZH43G0El7mRAqGzM04+fC0mcHEttRRCCe1g3YRusyKA
         T55iJoU8ebgJeyana640fzqnX/NthqhlyCGnJXN+lKwGEXTj0NWIJpefR+OELFTXqzdL
         QWqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=vwyo=a6=stusta.de=bunk@stusta.mhn.de designates 141.84.69.5 as permitted sender) smtp.mailfrom="SRS0=VwYo=A6=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oci4HObIYA/DBsq3vOia+N1y6UDsjkVF/tk9iO2jS8w=;
        b=r6IT8HDmNxzk2kMPG9I91IX4vVZxPzxuvG+toImiVdT2Vz5hyYdEQqz3Zl32ltrpqW
         Cqqyl/Gj9AjlTfyvLbMd9R8tgrEhf3XXA4WmMhFs0RPMHws4zUZ+OskvGB8F0U85ovc9
         myL9qG0Z3bfkE7H0sxtlaIbRGeU6hHnOyV+j0zB6CZ6FJl5X0ca4SzGFw1Y6iW+jRxd2
         o1KjR4MOFQG6v+WkA/CeRQPRXxcpyDB5Iro1qeGClrOu/yGHPSKDsDXgXZAoMiCxATbZ
         NCz2IDrYfZ8Mtq1Rm/+ZjepSd8z5j3YPmpYTiRL+CdnOQqO7TF1M/1d2sBanzy81Ul5I
         qUcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oci4HObIYA/DBsq3vOia+N1y6UDsjkVF/tk9iO2jS8w=;
        b=TgEYP2yVpWT727K/W0zMvEq035tduQf90Y+nzDBzRSA8MON0Wl/O4KSn/KQNuE6ZUl
         b3C57fWSGIiICgr9LeoYrHEpW3wQ0xzyepnd1UnEZaMH4rooEU6Iv8TmeUFjIDOGc3bS
         My1ABYlVuGjg7PuSHJz/FeLyZJUjOpmHYjj/bFeWJS6zxLrr37V1xYr/6iBCb5VN6U0D
         chC+Ib11tW1Cx2SGcgtTIWBtbzUSt1QW0mcql+f2xl0aJjvQptSH1pByYe61+3LCpb+u
         zU8eaGwfzSvSxeIDSVgXdZqDQruvNkYhWe1qRuykQ5WQA4Ym31QamaaXVSoI9ObS3hV9
         V/kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530skMZ+D4Dkj8gjj/H7nEMjhqG7Jx1PDRnmoN/IbSuUnURjRctW
	luakfkpMfh32UwO+eZbeolE=
X-Google-Smtp-Source: ABdhPJxZBdWQdnyuOi3mr9XSS2Re1cWEs3S5BmtNaoFNq2323LnJraIhtdI6GVvXe9DoizikDSb3Xg==
X-Received: by 2002:a2e:991:: with SMTP id 139mr8362001ljj.314.1595182767071;
        Sun, 19 Jul 2020 11:19:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8610:: with SMTP id a16ls2166520lji.8.gmail; Sun, 19 Jul
 2020 11:19:26 -0700 (PDT)
X-Received: by 2002:a2e:81d5:: with SMTP id s21mr9216483ljg.362.1595182766549;
        Sun, 19 Jul 2020 11:19:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595182766; cv=none;
        d=google.com; s=arc-20160816;
        b=XQHQ/M3BSU2rU3u5T0LrpClhDtRMUVvJCXNTAOjcnJhLXB8E1cDN1NxpXNHWQ2z964
         ZJzXhg1yO3yNhH9RGbb3mrhkVii9JqFJLVpupX6vhpMKZLMjgj25jHh2p8+UM+mrTvw6
         ihoOblpxGJBGnyf6xVBHyRJmtLW8BLNO8fc54l2SRvXMCB9LTAXZHsILrJBqK2iER/uW
         47GjFVcYNy4PTim1H/yl3elK7BOcMhTP1NxAM1V4wT9wo9NoiRv8SosU8UzYG5iQ0EOI
         oY7xp4nP9CzOdgonrkck7h4SkuRpkJ/Rh7LUxMvBkqK7mJLxqqTsx4uHMNvNK4kcWC4w
         6AKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=9zf/JTEFb4MmsfNgvPGgzAwyWiU9bGoQC8P9fPV+n6I=;
        b=WPLRUZMZu+OAcKZ1dPQ419HYp7oYxeOTC4g75miDAunZW/bcKm+gfkm0TwaN3A+QUS
         pHNYlRM//6CIj5g9o5TW5hSbh6z4mPMLozMVN5JzAtd924QyFQESq8/5MFUWASKNDZgp
         IKb5x8NU7tEPMehw7zQI4rV3fhflNzZ4rgXqNh1cdhQDmov+hpwa/2l3kweTuBxV7Qpc
         V5DmxZYSkwhLSuB72oK1vAlUW2E/hg5B8q/TdwJ82nGEbPNuwF4jKdxdqHO+SSN0ZvYH
         pP2Y1sZBmGjNhlfplhHwsXa1PzKVt6ercld/2DS2uzvU77DIE8s4OPLtptYz5MQsT5K0
         GeNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=vwyo=a6=stusta.de=bunk@stusta.mhn.de designates 141.84.69.5 as permitted sender) smtp.mailfrom="SRS0=VwYo=A6=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de. [141.84.69.5])
        by gmr-mx.google.com with ESMTPS id p10si531026ljj.7.2020.07.19.11.19.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2020 11:19:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=vwyo=a6=stusta.de=bunk@stusta.mhn.de designates 141.84.69.5 as permitted sender) client-ip=141.84.69.5;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4B8tRZ0r2bz3H;
	Sun, 19 Jul 2020 20:19:21 +0200 (CEST)
Date: Sun, 19 Jul 2020 21:19:19 +0300
From: Adrian Bunk <bunk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Josh Triplett <josh@joshtriplett.org>,
	Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200719181919.GA4179@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost>
 <20200712193944.GA81641@localhost>
 <CAK8P3a20UQvQO0U=p1kBEUvRdwm8VFBa31aCe7C70hwTzcu_yw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a20UQvQO0U=p1kBEUvRdwm8VFBa31aCe7C70hwTzcu_yw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bunk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=vwyo=a6=stusta.de=bunk@stusta.mhn.de designates
 141.84.69.5 as permitted sender) smtp.mailfrom="SRS0=VwYo=A6=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jul 16, 2020 at 03:06:01PM +0200, Arnd Bergmann wrote:
> 
> I would expect we'd want a fairly tight coupling between kernel
> releases and minimum rust releases at first. Whatever is the latest
> stable rust version during the kernel's merge window might be
> assumed to be the minimum version for the life of that kernel, but
> an LTS release would not suddenly start relying on features
> from a newer compiler (thought it might warn about known bugs).
> 
> This might mean that linux-next requires a beta version of rust, if
> the release is expected before the merge window and it contains
> an important change.

I would expect this is absolutely not wanted,
it would make testing recent kernels very hard.

If you want to keep a tool that tightly to the kernel,
please bundle it with the kernel and build it as part
of the kernel build.

I would suggest to start with a proper design/specification what the 
kernel wants to use, so that you are confident that a compiler 
implementing this will be sufficient for the next 5 years.

As a secondary benefit, starting with a proper design often brings
a better result than adding permanent features piece by piece.

As a tertiary benefit, it would avoid tying the kernel to one specific 
compiler implementation. A compiler like mrustc or a hypothetical Rust 
frontend for gcc could then implement a superset of what the kernel 
needs.

> Staying with fairly recent versions of clang
> certainly helped in getting clang and the kernel to co-evolve and
> get to the point we are now in using it as an alternative to gcc.

The main difference is between an alternative to an existing tool,
and a mandatory new tool.

> While Linux used to build with 12 year old compilers (4.1 until
> 2018), we now require a 6 year old gcc (4.9) or 1 year old
> clang/llvm. I don't know whether these will fully converge over
> time but it seems sensible that the minimum rust frontend version
> we require for a new kernel release would eventually also fall
> in that range, requiring a compiler that is no more than a few
> years old, but not requiring the latest stable release.

The correct range for a mandatory tool are the 6 to 12 years for gcc.

Debian stable and Ubuntu LTS are providing (different) mechanisms
for installing the kernel from the next stable/LTS release 2 years
later[1] for supporting new hardware.
If kernel 5.12 LTS cannot be compiled on Ubuntu 20.04 LTS with
the 2019 gcc 9 there would be pain downstream.

In the embedded world spreads far wider than these 3 years are common.
I would currently have a real-life usecase for compiling a recent
kernel with a gcc 4.0 (sic) toolchain.
Properly supporting 15 year old toolchains would be painful upstream,
supporting 6 year old toolchains is a reasonable compromise between
not being too painful upstream while rarely causing pain downstream.

What applies to gcc does also apply to other external tools used
during the kernel build.

>       Arnd

cu
Adrian

[1] following a new upstream kernel stable branch every 6 months (Ubuntu)
    or the latest upstream stable kernels (Debian) until this is reached

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200719181919.GA4179%40localhost.
