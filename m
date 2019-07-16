Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBW4IW7UQKGQE7U47FDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9996A8CE
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 14:34:37 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id m25sf17800954qtn.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 05:34:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563280476; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCbIqOw7f0pQxAcFXROKCpm0sVhG1aCNv7tgamBsuNkmUkR/CXLRWP3EkeoxKIjQMW
         NFLlC2632pATzjC/NUiTxxz7CkLALbLCUkZrFQBoDC9/EzUARD/E5q9rDZu/JKJCIep/
         aLmzMlc48ESaCv6kUgf1nCI0oH7XCf3gfTtWtyHjqtjKirjnvv2iyt0x1HSE1nACMc8K
         1VBHo360Xr8DIqEft9rlrYC/ooNnve6QJPoZ302vxg3bsEz8d0mXOShAo83TbNa07yRp
         Wk5pmV1nChMZU0LWZhCXxXgSVxEzwN+x89byiv+FCQop6tJqZhsfrfF//8lMIdEcB6bS
         NCrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=XBo57jnVdyB5EvehWb7x2PmN31iyql/AKgPEtrSXwHg=;
        b=yP9ijmtC+76GFtKkry6SQNNwi8F6pMa1yuI2F4NNFXpMdvoGHVKU3kCbBylnU1ovCy
         irtL1edRfvZ4ayrKnBfCbek7GuwMpSuRVP2bzUQhfSMPi6nc3VLWwi1ZVpWXbvnCMJRk
         q6nTZLTdYr6MlhV35ePvndqbrdAGrsYooHJ0b44a5nON5Y8yApqXOwI7DDNd5knMbZYu
         jgCcKmTzWgKh44Id79oK5hMSvZnH3ddhrmJA6ElTHLY+ves3E/NBhbfCZSqlJjuUz7Gg
         7VduA34KyeVt/yvBW4QM8C35KmOmaUVpszYmonFvE/pZmq+eHOlbvErx14CfmLkUQGmP
         ZslA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBo57jnVdyB5EvehWb7x2PmN31iyql/AKgPEtrSXwHg=;
        b=fEIgoPO+xwfeN7M3RDi2m+IxDzek2GyLq7m+tLjze2zUHB67KPGWWUxc08EknBwXVo
         qEUsQ/iLWuG0CPXdXwHUA6xPCYFufNTwJpwnySFyrViMB4PE74ujPT9gC9okJo42mYnl
         wqSMWh0m4DDqD4ZaWp92UqEF/ba8KYst1981eC7PchL4CBYtcpLycJhsQpmleknmTLzZ
         D/L4ua2JZSlzwOgDniC2KpLI48jld5Qabz5TVVHSZuZv6tXC6yRyTEwUZKGjC4XDqyT8
         N7F4KxDv/xXx5jkKjK3e9Wa5kXx8+XA94UOVqEdDb1AGm5yoKEQB+Hn4lEXdMTuSHtn0
         mmyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBo57jnVdyB5EvehWb7x2PmN31iyql/AKgPEtrSXwHg=;
        b=oFYiMLnYBkQLVw04Z1zRJ13Asc6baCtSUMp5JH2Ig3hKmmM7apMdi66KGr0X2tLcI3
         autb8SQq/JhRyiCPhH1Uz8kmM453/SFgwE9EwgUhRfs5bgpDPUlOTP7FAYNf3Z4KqoQC
         qCJp9hx+gK7uIxRutI72z3SPAHjGtwFyP+RqxmjVGov4AYK9IJT8gZOGHlu84fB3GdNz
         bkZ8sXJAuq8EReefQvhbNeegEVxoLwjn8F3srGtWtiyQYR+KG1dXfNSNOvBLsLlFtC4H
         1YvyTYeG5Bh3rFFIWukkV1LTA5E/1R7KctCUayoC0ZPfGrtt5GGE32S2j4tzjKzLAU/B
         ysmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXh8y18hr3DcJZxDk+64XFwhRMCDJ4U6CHpB0DImT/CoyhwtAOy
	t7BrNYX6XwaXH9z+Bzj6xP8=
X-Google-Smtp-Source: APXvYqyQeqwH8uvPki0OU427K6yaqbX9ztdZ5QXYzi3yaeVdwJGHkc/cbvEZDLNa1szvngltljNU1A==
X-Received: by 2002:a37:95c5:: with SMTP id x188mr21487628qkd.149.1563280475905;
        Tue, 16 Jul 2019 05:34:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b5aa:: with SMTP id g42ls3482533qve.1.gmail; Tue, 16 Jul
 2019 05:34:35 -0700 (PDT)
X-Received: by 2002:a0c:baa8:: with SMTP id x40mr24235169qvf.168.1563280475646;
        Tue, 16 Jul 2019 05:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563280475; cv=none;
        d=google.com; s=arc-20160816;
        b=Nc+fb3w3XDUeKfZszijFUXDM8YI8zFbgO/wMlNkithUdnB5kWmi6jnKVRIH6RPEcrv
         qb0J5cor4miWBfEXUhMJxIQp6sRju0ayuAtBIgXKj8E5kb48lqSwndRJkeqT69U5+qa9
         Ium7b4N+BZbqv6xIZFeZkszQtJv8P1rkn6fmxhU/4r6dFtCR+gavH0SwocB4sQusVozC
         fszjhrMDFuCK302HYr/FocR7ULsHwnotLX9oD6ewSZFBNvyxY287ZwZ4csJJVT9aUoDp
         Pv9oOqYx4+dWsw2LddovEg8WDCXPilL/S7RPSiojuutxFbMDWQuPxwcGMhtU0jHS7pmG
         b47w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date;
        bh=gCdRK4yX9645QoQVRDbcnthpc9eENho9apiY6Xq27ng=;
        b=OixxUf5NeO5r0xMMKBn0Y+1nh7GlXrA8E14HbPJaSRkCYv52DCgzuBjciMY/EVBzU8
         RSLKxPJjNIEz0MkO5UrtguWBALQV0GuBPirGhHhSNV3MI7OTS3E7gZWrZohfOzSZwm6w
         FB8Bl97mHgKFF/Zk40o/yUxu2pJ/N4wTNuWEO02vWa5VGYGKkMNG+m3QTqMVgyeJCo5x
         UF1nPVVQVG5+8+yoar7wAw+mNofcb4MU1OtdyDj7QsWZRKBa5nts71BZ8d/bYxYso8TQ
         O6rIhpLdlyoWPW3F23se3Bq2/A0f3TcS7LQTgv0w53QIqWjVKSVEXXzLCiih2wTTRf24
         M7VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id l17si869825qkg.0.2019.07.16.05.34.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 05:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from callcc.thunk.org (guestnat-104-133-0-99.corp.google.com [104.133.0.99] (may be forged))
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6GCYWYd026006
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Jul 2019 08:34:33 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id EBB74420054; Tue, 16 Jul 2019 08:34:31 -0400 (EDT)
Date: Tue, 16 Jul 2019 08:34:31 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: "Enrico Weigelt, metux IT consult" <lkml@metux.net>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
        Joe Perches <joe@perches.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-riscv@lists.infradead.org,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 4/4] debian: add generic rule file
Message-ID: <20190716123431.GB2999@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	"Enrico Weigelt, metux IT consult" <lkml@metux.net>,
	"Enrico Weigelt, metux IT consult" <info@metux.net>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Robo Bot <apw@canonical.com>, Joe Perches <joe@perches.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
 <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
 <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
 <20190715191245.GD3068@mit.edu>
 <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Tue, Jul 16, 2019 at 05:58:49PM +0900, Masahiro Yamada wrote:
> I want debian/ to be kept as a drop-in directory
> for packagers, without replacing the upstream debian/rules.
> 
> If a check-in source file is modified in anyway,
> scripts/setlocalversion would set -dirty flag,
> which I want to avoid.

In practice, that's not going to be a problem for most distributions.
The traditional way Debian-derived systems have done builds is
completely outside of git.  So there will be a linux_5.2.orig.tar.gz
and a linux_5.2-1.debian.tar.xz.  dpkg_source -x will first unpackage
the orig.tar.gz, and then the debian.tar.xz, and if the second
overwrites the first, it's no big deal.

More modern Debian package maintainer workflows may be using git, but
in that case, all of the "Debianizations" are reflected in a separate
branch.  So it's not going to set the -dirty flag.

There will be potential merge conflicts between Enrico's proposed
"upstream default debian/rules" file and the Debian/Ubuntu
debian/rules file on their distro branch.  However, I don't think
that's a big issue, for two reasons.

First, once it's checked in, I expect changes to the default
debian/rules file will be relatively rare.  Secondly, it's easy enough
to use gitattributes and defining a custom merge driver so that a
distribution can configure things so that they always use the version
of debian/rules from their branch, so the merge conflict resolution
can be set up to always do the right thing.

There are certainly other upstreams which ship their own debian/
directories.  E2fsprogs is one such example, but in that case I'm
cheating because I'm both the Debian package maintainer as well as the
upstream maintainer.  :-)   However, it's never been an issue for Ubuntu
when they choose to ship their own customized debian/rules file.

> debian/rules is a hook for packagers to do their jobs in downstream.
> "We kindly committed a generic one for you" sounds weird to me.

It is weird, and it's not common for upstream packages (which are not
native Debian packages) to ship their own debian directory.  But it
certainly does happen, and it won't cause any problems in actual
practice.

Regards,

					- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190716123431.GB2999%40mit.edu.
