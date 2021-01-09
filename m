Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBAOF477QKGQEGQUDTKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFEC2F0201
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 18:06:10 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id k66sf8925248oia.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 09:06:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610211969; cv=pass;
        d=google.com; s=arc-20160816;
        b=IbOQ2PkD2GJOGBA/TKfRbust7W725zHzGofcceM9PUY6Raq3ZeNnu0HB6UawgDCdzv
         QdPBslwshdJEHotvxbjcGk3ISLHmn+P99UxQsYq+Nb1Mcknv3mj82KWSJuTPHd4JQKk9
         YV54G8Vu/Xkkaf+q9/9rq6X8dODDGv3BmNiFZyr8/Ub2nxerCu/Otd3mVM9Hs0Zkn+67
         1I9mYH3HiXRWOOxBBqeNT70BWKObLrkHuMYlfFPJOvgUgiLHutottG5QPG+EjgkQJ0f/
         etvDH9R3D03IB6bZ9wkR0M8RmE149jPCWD8mqO6jfmWj17swHdhFBNxcC7YLNQR9ZUS/
         RJcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=j3hvoygK8btwXaEYcAGnhcte4ND14jVzsk34Jupq5+U=;
        b=Fkb23EKrca9Fxg30qJ+tjXhdfNBSd4kV7+OTEHLs8+A2gDytTpTVQLOIIHl3+scvv0
         ytDS0BnolHaxYHApJnGXgNhgfobIFqtE1pWncNoiWPUI5pt8Ci58C9ctpl8g3CAkWQad
         ZzQr8cPkaaRLqIlctTCju1Zr+fxSBbuJYnwgsMRAfXKloNgh0QnOiMh3WGy5yZmhykaN
         Wxncaf96sOYzmYmQ8pxHEue95vD/PZLhO5Y0d/MfQkWCNogt7OPYgwHt5r1EgyzqOyrB
         nY3wWhgM1zYK9LcOqQbc8qIsFmf9wM5arJD6IdkPUn4bojd+3RP//nW0PMyublt2FzTy
         BpKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="S4/Yeg+x";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j3hvoygK8btwXaEYcAGnhcte4ND14jVzsk34Jupq5+U=;
        b=NT2T3UrPK8NjFDltz0NOIJhIEKu8O12xmLFo4Tl02rW/scp5WMffXw3nqKKro7jOD3
         84mM2G1FojoC7RmzKAMfrtMLUF1XPl8S/miEXER+DXa2Q7SFHA+h1U+Uh+dkC2wluMUW
         HJA6CrukadQGJeCdDJefP1GBy9tcHQymlnoYloGOEAYWImClDK4zeGk3Wc9193VW4eH+
         MXCfnhLnlr39Br386KbBtxpJAAXA4L2I7OHEDgX6wGGmYAd+FIS/IrN4ShbNU+eBakTa
         x3EJSbUq6SJUkKqN7uehSJL17cObbOqDRZb3qyJgax5K4/Xo52YeARZZEfu2b7Ob8WxX
         +Z9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j3hvoygK8btwXaEYcAGnhcte4ND14jVzsk34Jupq5+U=;
        b=sSXcdRcTeB1PGvhx4ocr0TkEYCpQY+rq7hm+wzHRQa/7XhWfZTPcpNEP7jnP2iDhBh
         TBT6Nn4MY9CACMclyKgy3Mw5CQ0jsr7qkipwuGQP4AIPfr1XTD6u3AI2DS61L88CFLTD
         f3Kb9iCfNb7Ygs2W9wLHQJHQlNniLA8zajlflC7TcmnO3R5MvYzCbW4AvpGxY959E6uV
         vmsVlig+v+8LaTM616DjRNjClxOc1myWggz5K2Pcqh8f1EsvlMI5wAo005HmPsUryhNq
         Mj+BfRYxPwP4iJaySGCa5lc3BaEw30cUxmqJbKmBJLoogZ/pDHSwUTBAv1k0HSKyBvPG
         fQlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Go2TONASMacSQk8bBGnJ3zdzExCM6CXIe7bz2llIexSSe5YN7
	A5M1C/9gXp2RIQsbOmJdfWY=
X-Google-Smtp-Source: ABdhPJyqXRV7O9eeLE7MGuOfgQ/9ibQSj5g5JTMNEtj1tZLogPI0HG3MlcWihn4yUf9HJqnIXC4hHA==
X-Received: by 2002:a9d:4715:: with SMTP id a21mr6462784otf.220.1610211969507;
        Sat, 09 Jan 2021 09:06:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls3746590oie.2.gmail; Sat, 09 Jan
 2021 09:06:09 -0800 (PST)
X-Received: by 2002:aca:aac7:: with SMTP id t190mr5621073oie.104.1610211969160;
        Sat, 09 Jan 2021 09:06:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610211969; cv=none;
        d=google.com; s=arc-20160816;
        b=jqHXSP+beu/vi9J2ls8rpMemtCO6w4ZOVzgpkcGT8vVjaJArTxLq78NYnELHcqtM5B
         ahoElLtTRfQOBJrLk4pHdh8k6sJeKZSFgZSP+Ptw989tTyLVxMrO3g/IA2wfYeRSJRpA
         MQ1z3Ones7eoDmI/wm3UQiCAZ8g14WUVRxNgaM3BC6L7TZcWtTQxSLf17j9chShGTTmg
         0IdDmeYWSTsQCQoWufWuLLXNbARU3/rCRAHMY+evZS5g8+cep1RVWV6bwRkUf7ICdH0w
         rckL/MEInRJo+AZtOSkWp7J+Z7bm5xCuVR9/nR12L2C9xlVnLe+nCTVWWozSv2WznSTb
         h47w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=joUlfz99h/FvbQhyQ1sXKa4tTuoivxwQKiFtAkkLoGE=;
        b=x9Ewsl7T9gOVEYj2ylnfG2U7xS90IrWgWydNHKcFMd3OS+rkIeMK8Zun1oFtHDswUa
         SkuPmMHSNoSqxHmTbf6gPsEt1j9GBDJvXD0zx6PCpdW2euTyDQ38ieo9S3vbuiIeVnJX
         xdz2y3YpvppevnA6LuST/ZIv/A98FiuvYTO40+dLxmvm91R6mkvCGV3mH+Y5jtOYeGxS
         jZYG6s5Av/ORaDXUOEjIA/WkE+Q4I/goxNKERST6zKldJCgLynYjLQzjAnouBKeXF1cy
         x+sZ5wNa0/4JCmK9E2Ow8fq9koD1L5WAby61sHlKqL8LLCbHCB8dC0wqNf+LfxPv+A3I
         vX6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="S4/Yeg+x";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id f7si1063033otf.3.2021.01.09.09.06.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Jan 2021 09:06:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-s4qYlsTrNKOXjyTgnesYQQ-1; Sat, 09 Jan 2021 12:06:04 -0500
X-MC-Unique: s4qYlsTrNKOXjyTgnesYQQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56322180A093;
	Sat,  9 Jan 2021 17:06:02 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96EEA19C45;
	Sat,  9 Jan 2021 17:06:00 +0000 (UTC)
Date: Sat, 9 Jan 2021 11:05:58 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
Message-ID: <20210109170558.meufvgwrjtqo5v3i@treble>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
 <20210109153646.zrmglpvr27f5zd7m@treble>
 <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
 <20210109160709.kqqpf64klflajarl@treble>
 <CA+icZUU=sS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg@mail.gmail.com>
 <20210109163256.3sv3wbgrshbj72ik@treble>
 <CA+icZUUszOHkJ8Acx2mDowg3StZw9EureDQ7YYkJkcAnpLBA+g@mail.gmail.com>
 <20210109170353.litivfvc4zotnimv@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210109170353.litivfvc4zotnimv@treble>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="S4/Yeg+x";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Sat, Jan 09, 2021 at 11:03:57AM -0600, Josh Poimboeuf wrote:
> On Sat, Jan 09, 2021 at 05:45:47PM +0100, Sedat Dilek wrote:
> > I tried merging with clang-cfi Git which is based on Linux v5.11-rc2+
> > with a lot of merge conflicts.
> > 
> > Did you try on top of cfi-10 Git tag which is based on Linux v5.10?
> > 
> > Whatever you successfully did... Can you give me a step-by-step instruction?
> 
> Oops, my bad.  My last three commits (which I just added) do conflict.
> Sorry for the confusion.
> 
> Just drop my last three commits:
> 
> git fetch https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> git checkout -B tmp FETCH_HEAD
> git reset --hard HEAD~~~
> git fetch https://github.com/samitolvanen/linux clang-lto
> git rebase --onto FETCH_HEAD 79881bfc57be

Last one should be:

git rebase --onto FETCH_HEAD 2c85ebc57b3e

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210109170558.meufvgwrjtqo5v3i%40treble.
