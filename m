Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBNFAWPUQKGQEY7DB4MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D4B69B39
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 21:12:53 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id i73sf14317780ywa.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 12:12:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563217972; cv=pass;
        d=google.com; s=arc-20160816;
        b=SPnT0tF3fR7Eawst45j9NyuDL9Gbie/MM6o5YZhTnoSayYG7qIQ+p2/Gxwk+HMtp2p
         D5A05IS8yLXac/6BD9c/zkZ2AtEqX5BqDzqWDg6lPyaaQ9hxIGlnBsMQ6fdc2KuAFPN8
         WueiWxjRHfRy6Tc/h3wXewCMj4e995caHtoyWjFNBqsG+EIh7UNY+QdghuUpfNr1HkCj
         bRLum0VmBcVYOR/LqrRE8jwlxvua7DXOjWbCMHGnJS0K/SD9gvN4+fJN7z4YeVVvSKf3
         lq8FPt9Kqda1huSrL30xPqhYouWDob8VLFD76YBKmPsuvV8lfwkFWiomdFIeaUZcu+7j
         WtsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=DEItwckFJww9BZAIoqqCW69MVWILvg5XF0BaqRPkfEI=;
        b=f8+NbLhsU0ZuNzR3HMqXix7dJz0tzVfsjSJo4uKIdHrOIPhyIW6I4dn+PtU2kVUcCN
         b2ghXU9AL+RaOStWuaG9HIfZE6pD0cp0uYRTl5C82j+wP+gAViKzVhtGY5NRZehbmjek
         uV6ChA4D6g35nb5ixsxth2lrk6oaZpwvEwU+EyHht4ucYfUnBrEmLp+w9DbBxnWQH6zo
         6eYM62ebH3pvzS+IHdOudLb2AffzjGJbvmgJbZ4Um7BxoeDAVSEFCyWtFPDdtOf/HDtz
         k0v+kZx3r6N1kt8gAO1QQn0AWVJzqQrTQF2Wrv585gG/AOZNu9tp2bws55VvALzyJsTw
         /2JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DEItwckFJww9BZAIoqqCW69MVWILvg5XF0BaqRPkfEI=;
        b=R36aZ8bllWm7P6ZqUomS9pxX94Fior2CRVqGolbNUkYnEwugn11s0Wr+EXcfwEsteK
         6w9TSyKjkSAZCq5TopWuRG2M28Zd0Cq/1AZewqT+T9+vOJld0QAa9MK7ROMPWsNa3njA
         jj8YNvEYhV04rhxn66D/20VsVw8Fy+svc5NurndvIT/cD20VZ+Ib25kmxSbniwZ4SkDd
         +OonPLRKd3nfWP8huK57Pod6U/+81BES46h6CAuFu16f9uFvGzlZjw/TiE6E9zQf8tWg
         4SFUqJ0Gt88fMWFbhIamw5pJxUPhXWENrGJGBR/mWNAgC2xf+dvHz2f1Gp58tIblS/PI
         zPUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DEItwckFJww9BZAIoqqCW69MVWILvg5XF0BaqRPkfEI=;
        b=etp9l+pGB4/vA8CUMN1dv22546knMhOUpGRHY2UXYBtfFkfU7cbFcEB5UJTGaHANbW
         Ae5aBGT9dCUJIM4z+M143nKDbvNddMYBRfsoLeReoJTlaKvrBa1/fpan6IxFgodfcZ3q
         4e5YiLmqpeNwh9FWPKxEPMnFeeZNugxGeLT+9eDThVx4FbJ/npyi2hTcMGZetYTUXY3k
         XOlGBBltWzLI+73mmEAY6NWBMioGNNHsELI5R3ft/pbXZYiCwB4SL2U2VuxQVVTs+L1/
         0aeREXukOzQR4ddrfkDuV1F9Fo4eq2whGJjie7XM4qryUhqYvMHJnZUkiXORjC3AAIbq
         TM3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQN+QPbLqoT30WL/oocU9mqO9B6DEqUw8RhN/iPxPOJGJY8bxl
	pGF7Qf/vqT6h7yrTMXDdxS4=
X-Google-Smtp-Source: APXvYqzTE1Z1IVP+qCil08buJku4Slr04jiO65isxujRIpJRegum0s29EKc1St54UJMX635nLrwjEA==
X-Received: by 2002:a25:678b:: with SMTP id b133mr16776917ybc.157.1563217972285;
        Mon, 15 Jul 2019 12:12:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9d12:: with SMTP id i18ls2413938ybp.8.gmail; Mon, 15 Jul
 2019 12:12:52 -0700 (PDT)
X-Received: by 2002:a25:392:: with SMTP id 140mr18095218ybd.34.1563217972045;
        Mon, 15 Jul 2019 12:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563217972; cv=none;
        d=google.com; s=arc-20160816;
        b=USj1ljf2kPrXeAUQq4UkL9B/icwyWbNH6Ifh8Ab8KfpCXQxHOmi1xgsxqLp4EIZx5w
         deikIAf/Zv6+TFbYASGEC8+EdPp18hV2PNcSgpByUBsV071mqiIItnLo4mCMl7zqNAhI
         s78IEKG9/ur2bmHT8iLgU45sRNWx7biIJA7T/lxoJ11ILopoMAuKuGlGxsCG4hjcbWoc
         ADF1GTc++oQuXbGAYboH4nLax9feZLzdBvurAEb4qzvuVJkRB1nync8PvJGJRzST7WH3
         R8JVFZP8uvbmwfVKZ/4U68pfrj66S8zNzg0ynq8kFlHMKc3KmAXqEqza6t8V7+v870ed
         IN1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date;
        bh=ptZsPpH++FhR9bPE6+AeIn2VOiv+mVOzuwgqVT6j7Xk=;
        b=eIC2vTwtR58OnX/ZyUPVCfH+XfoH57JVjjGQH+mEqOedAWflgFq0myvB4UeV4/KE21
         5Ur66Tj5qtZ45c2asR0+AKru/0Dnfj9C/r/8h61LgQ+4Q3Tqs4Fat56TBgA6OgrMpux0
         weqhTP144ze6qiU3kjkMdBT8y+35wxle/jHBKp/CHY3LaHO3xFOXrPh0MUIqJtnw1fq7
         om9JXAJ/dcvcZOLPT/+H1S8Ofp3UAqO18ok8tWjYm7AGqxu3jwBP55puVguyfiPbvS3p
         +siVD/KRTF4Z5bX1j3NJpdYixL34DTHFAs688LDeWQUwFmYIQdT52PMZt5ydbhoX2IQS
         yDNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id b74si625490yba.4.2019.07.15.12.12.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 12:12:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from callcc.thunk.org (guestnat-104-133-0-99.corp.google.com [104.133.0.99] (may be forged))
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6FJCkVS024453
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Jul 2019 15:12:47 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id DFA1E420054; Mon, 15 Jul 2019 15:12:45 -0400 (EDT)
Date: Mon, 15 Jul 2019 15:12:45 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
        Joe Perches <joe@perches.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-riscv@lists.infradead.org,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 4/4] debian: add generic rule file
Message-ID: <20190715191245.GD3068@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	"Enrico Weigelt, metux IT consult" <lkml@metux.net>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
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
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
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

On Mon, Jul 15, 2019 at 08:56:25PM +0200, Enrico Weigelt, metux IT consult wrote:
> On 15.07.19 14:28, Masahiro Yamada wrote:
> 
> >> The rule file contains a rule for creating debian/control and
> >> other metadata - this is done similar to the 'deb-pkg' make rule,
> >> scripts/packaging/mkdebian.
> > 
> > I saw a similar patch submission before, and negative feedback about it.
> 
> Do you recall what negative feedback exactly ?

It's possible I'm not remembering some of the feedback, but the only
thing I recall was the comment I made that I'd really like this use
case:

make O=/build/linux-build bindeb-pkg

to not break.  And as far as I can tell from the proposed patch series
(I haven't had a chance to experimentally verify it yet), I don't
think it should break anything --- I'm assuming that we will still
have a way of creating the debian/rules file in
/build/linux-build/debian/rules when doing a O= build, and that the
intdeb-pkg rule remains the same.  At least, it appears to be the case
from my doing a quick look at the patches.

> > Debian maintains its own debian/rules, and it is fine.
> 
> Not for me, I don't use it - given up trying to make anything useful
> out of it. It's extremly complex, practically undebuggable and doesn't
> even work w/o lots of external preparations.

Yeah, the official Debian debian/rules is optimized for doing a
distribution release, and in addition to the issues Enrico has raised,
last time I tried it, it was S-L-O-W since it was building a fully
generic kernel.  It's not at all useable for general developer use.

It sounds like what Enrico is trying to do is to enable running
"dpkg-buildpackage -us -uc -b" from the the top-level kernel package
as being easier than running "make bindeb-pkg".  I suspect this might
be because his goal is to integrate individual kernel builds from
using Debian's hermetic build / chroot systems (e.g., sbuild, pbuilder)?

     	       		      	       	       	      - Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715191245.GD3068%40mit.edu.
