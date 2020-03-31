Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFFXR32AKGQEY5IBXIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id C19CD199F34
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 21:35:49 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id s10sf18518003oie.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 12:35:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585683348; cv=pass;
        d=google.com; s=arc-20160816;
        b=W0W3w3nD+3ISTLtANSF9BpUTgSKqNWIgkLacwJ10VHv4WF76K0RCoQys/AvRpNxTTP
         wlCJ76Y64RcAf0XRr+F3ZGhDBNs6JeKijdyJS5k2YiI1Vrlm7Ddbkcz50NSZ+LFVodfv
         R6SrFOkiIPSVWcEQM0sk0OyPi3pNysWbPO1YmH0jekSOjRTZh8ygEO/Eq4/l5rJderRM
         9CqNNxqI0t1lKHo6HijOW1+8d2SsG/g92Me/o7JBmQr/ykax9iWn57bExWhA+KIa4Goo
         WYVu4owQNN5OVXJW3QxYPjK9qoEK6ymqpSJggA7I82fBuc/gevAaM7vBmy8rjSqKtibG
         Co4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=RKGypX44B+cKqshzqEKWqQG6asBQrKSkDXzbm/0hyj0=;
        b=QeaE05SCIeENn8JeXH1oGVjtySJTTR5fvnwTKpqpHF5DlIx0oRggouBUeyzGzXMS0y
         Ruci6Ug9O5jmOk7xYyRTeiFzCPeXMJChmFEtDmGEPgwVEO8iTkJN3pojzt6QT44SdehR
         q4WDv5sWhLBukOUs+2l49nqlkOuJbiIuTJDdIgAYrfx4nksQzrQAZZnFz/xXIyHjOFUH
         s085N7mUna0I8BaLXJa8QP9jpbZLCZq86JbMz5NYWhFAFdab0u14xh6JfzDOEK49Zpap
         NWlR6WyarXvOKPioeew2t4mVdJF/fbyojkGO/CXznhcOf41Ln89DYAHMjihj58udALKb
         vn7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XQqy5z0L;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RKGypX44B+cKqshzqEKWqQG6asBQrKSkDXzbm/0hyj0=;
        b=MbYSY9NOHyd3M2tb8l0ff9ISatpmmvvgPGqvoQlR2OuqWrkWW2f+Zi8pKWmBjUvIbk
         +FM3XOMch7MSMCuuhssh2Eprf7DglXgZta72kYLYvXqZj4rKSrlsEZrvWeY4y6tU5StM
         ubkVH+qOrxXoVDU7rU/I3BtOxTYaZOdntEi2UA03j9oOOGiOBiASWh3a5r2mymKLsXNY
         kOMlXeZpf6Z7Ezmwix3X9BD3H4KA4ViSc8YiTNP8uNhsg/Wd4p8jVd2dmAYHZNLWEo7D
         fo70sqQ1/Iu1bDIc5PERsetgzssAiKmkGs99KyPFaGDHM0Do6NR1yUQxyQulCvRYdi3E
         np6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RKGypX44B+cKqshzqEKWqQG6asBQrKSkDXzbm/0hyj0=;
        b=eEGc5s0LyFdJ/6WedID3RbZvaiJP648AdBD8O7fe7c8yTTGKJzJbiz2oTloukUU+Xb
         X5jJBwbhJRTIHLzlO9/Gv7g76dpqcHO5uqaySgLWZ8o+ZwcH8/FdV99CYLt68v9lwWwC
         agJ7mqg3k2YpnPtPGxitlv2PM9M259BrvQVR+KW+AHz3kTQ/AFWVVRuqfUDaWEDzkhfW
         ZMxoho9pGYN1jio1EGI36gYuOZlxSFrrQMcQDl2eLXHu44nXhmfs6J3l12so/Rw7xiAV
         pmfZ+DcB15AL9gq346nxH0cHP79M4Rp7eUreQUHM9pP5IfLG6QF+7GzzCZmEkBuDatiL
         2UGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RKGypX44B+cKqshzqEKWqQG6asBQrKSkDXzbm/0hyj0=;
        b=tA32+SmsO7FAcak7EC3t+8vNIAW4ytTxtxY4x1UaaGjf0NYkOcev6Tx+6MBs8jcaz8
         WvoRwEgp5qqEoBUZ1PhukFUUi+irlc+ZPu/QSqW9iVjErgpOmMKy1XSZ5kp4cnORmXzo
         JaKuuehEGeKCqhv7tLOJKLESwEPQf5dvDFa3QGqePTp2zu+1OaeYNvC9dn1ktEGeqGDj
         RipYMWtnZw3A7qjZx2P61247e/ZZ8/iebo5mOeckKBp6ztORF5YBshz4lOjQZHk5/ql4
         FuT4+K9TTeuBY19D9SdbQDOTM1JhKuFlW9PeS76sl5+fw2DM062LKNf978Unyt4eiZZA
         fh2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZVv1sCJcR5w3tjcNORBsdDzNgT/BXuiKTAZPf5Ny9daxUb/oIZ
	8Ld2/F0y8+oEMrf+YXm3dNw=
X-Google-Smtp-Source: APiQypItqmGjw1oCAVOiGS61MyIKSgHk4QbbOpzOrJMsjahj8rP7h9kkS+Qc/E2HoOVSV0U/PPAAZA==
X-Received: by 2002:aca:62d5:: with SMTP id w204mr337731oib.119.1585683348495;
        Tue, 31 Mar 2020 12:35:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d1c8:: with SMTP id a8ls2157837oos.11.gmail; Tue, 31 Mar
 2020 12:35:47 -0700 (PDT)
X-Received: by 2002:a4a:e38c:: with SMTP id l12mr14372467oov.7.1585683347827;
        Tue, 31 Mar 2020 12:35:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585683347; cv=none;
        d=google.com; s=arc-20160816;
        b=d35qPZ+UTTxgZvqnGgNot86KgP9PWcmgBkNf19YnqVkBBif3pBKIvUq2BoahahSlrE
         eUvi+DfrKUZ5HXpXLwk7mNGgV8OivAR7meQc0tvkQxJGW5U4B0jjYw6tcVug/WeErLTA
         rxOmglOX3vaXLb6hIb8AwK0IG96S0e1Vijuj5pwLD///uzZcAaR8TWugPYMZGha455L+
         uYcpF4e/uFB55fzFsqfAebK128mf4THSseRTivhbvGkG25IPTBa67j5Vq4z8cv8y2r8G
         Fm2hdY/45YL7UUx0ILvWSzx0Sp7ZiZc6CiHzt/ojcJxs7WnQpK6tZvQisyiI+TK2MyFc
         iUew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uNeFtElerLSFNE4HdYEqRaL24eqg7L/VUfNtHETsjEM=;
        b=dFzK5VeBbHbCTwObwf3/+vls8nM4NaJfG2O0KgCvecOGK7xA+nHcUWkXjL9YezWYzU
         iN7uWJAcW1ikTPuKPLKZP4LfcD4zwy3bcgG5eLjmixM9l3XZNb4aZ+fok4v7Os2O+Iyg
         3T2olhlExUXooI+TZn1vqqutC1wV7Iwb8awoHVKYm4NbplmC/C1RTaAZf3b6sM6nj7vG
         8P6VDGvwgTPKo83Sjo+i+/0uDue25BTQFP7xx677PpVFqZD3iet5P4lXgpQzSNSEEpok
         s74QMMK3CCTtTTW0Zo1r+7YkmMvd5vu6Iecd9tzXL+9sXIzg/LYHFlW8G2CDm3Fcd62P
         3rSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XQqy5z0L;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id d188si1279066oig.0.2020.03.31.12.35.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 12:35:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id d3so15450592oic.1
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 12:35:47 -0700 (PDT)
X-Received: by 2002:aca:da8b:: with SMTP id r133mr366305oig.81.1585683347441;
        Tue, 31 Mar 2020 12:35:47 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d3sm5307075oib.15.2020.03.31.12.35.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 31 Mar 2020 12:35:46 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:35:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
Message-ID: <20200331193544.GA55810@ubuntu-m2-xlarge-x86>
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86>
 <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86>
 <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
 <20200330190312.GA32257@ubuntu-m2-xlarge-x86>
 <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
 <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XQqy5z0L;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Mar 31, 2020 at 11:39:27AM -0700, Nick Desaulniers wrote:
> On Mon, Mar 30, 2020 at 11:25 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Tue, Mar 31, 2020 at 4:03 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Mon, Mar 30, 2020 at 11:58:19AM -0700, Nick Desaulniers wrote:
> > > > On Sat, Mar 28, 2020 at 6:57 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > > >
> > > > > I also had planned to provide a single switch to change
> > > > > all the tool defaults to LLVM.
> > > > >
> > > > > So, supporting 'LLVM' is fine, but I'd rather want this
> > > > > look symmetrical, and easy to understand.
> > > > >
> > > > > CPP        = $(CC) -E
> > > > > ifneq ($(LLVM),)
> > > >
> > > > Yes, a simple if statement is much simpler than the overly complex patch I had.
> > > >
> > > > > CC         = $(LLVM_DIR)clang
> > > >
> > > > Do we need $LLVM_DIR? Shouldn't users just have that in their $PATH?
> > > >
> > > > Also, I think we need to support suffixed binaries, as debian
> > > > distributes these with version suffixes, as Nathan points out.  Or do
> > > > the debian packages install suffixed binaries AND path versioned
> > > > non-suffixed binaries?
> > >
> > > I think the idea here is that ultimately, the suffixed versions of clang
> > > that Debian has in /usr/bin are symlinks to binaries in
> > > /usr/lib/llvm-#/bin; as a result, a user could say
> > > LLVM_DIR=/usr/lib/llvm-#/bin/ and all of those tools would be picked up
> > > automatically. I am not really sure what is better.
> 
> $ sudo apt install clang-8
> $ which clang-8
> /usr/bin/clang-8
> $ ls -l `!!`
> /usr/bin/clang-8 -> ../lib/llvm-8/bin/clang
> $ ls /usr/lib/llvm-8/bin
> <non suffixed versions>
> 
> Ok, so Nathan, it looks like we don't need the version suffixes.
> Instead, we can be more explicit with our $PATH, and only add the
> above (and bintutils).  I was thinking supporting the suffix was
> required for our CI, but it seems like maybe not.

Correct. This should probably be documented though, otherwise people
might use LLVM=y and be surprised when the latest version of their tools
are not being picked up.

> > I periodically build the latest llvm from the trunk,
> > and install it under my home directory.
> > So, I just thought it would be useful to
> > allow a user to specify the llvm directory.
> > Of course, I can do the equivalent by tweaking PATH, but
> > I hesitate to make the non-released version my default.
> 
> Respectfully, I strongly disagree.  This should be handled by
> modifications to $PATH, either by your shell's .rc file when you
> always want it, or exported for a session when you want it, or
> prefixed to an invocation for the duration of that command.  We should
> not have a new variable just for the path of a few tools.
> 
> Rather than `make LLVM_DIR=~/llvm-project LLVM=1`, you can do
> `PATH=$PATH:~/llvm-project make LLVM=1`. (or export it manually or via
> your shell .rc, depending on how comfortable you are with that
> version).

I always do PATH=...:${PATH} make CC=clang...

> > Having both LLVM_DIR and LLVM_SUFFIX seems verbose.
> 
> I agree, so maybe just LLVM=y, and we can support both non-standard
> locations and debian suffixes via modifications to PATH.
> 
> >
> > In fact, the debian provides multiple versions of GCC.
> > For example, my machine has
> >
> > masahiro@pug:~$ ls -1 /usr/bin/gcc-*
> > /usr/bin/gcc-4.8
> > /usr/bin/gcc-5
> > /usr/bin/gcc-7
> > /usr/bin/gcc-ar
> > /usr/bin/gcc-ar-4.8
> > /usr/bin/gcc-ar-5
> > /usr/bin/gcc-ar-7
> > /usr/bin/gcc-nm
> > /usr/bin/gcc-nm-4.8
> > /usr/bin/gcc-nm-5
> > /usr/bin/gcc-nm-7
> > /usr/bin/gcc-ranlib
> > /usr/bin/gcc-ranlib-4.8
> > /usr/bin/gcc-ranlib-5
> > /usr/bin/gcc-ranlib-7
> >
> > But, nobody has suggested GCC_SUFFIX.
> >
> > So, I guess CROSS_COMPILE was enough to
> > choose a specific tool version.
> 
> Or no one was testing specific versions of gcc with more than one
> installed.  I can ask the KernelCI folks next week if this is an issue
> they face or have faced.

Well gcc is just one tool, so specified CC=gcc-5 is not that
complicated; it would get a lot more gnarly if one had different
versions of binutils as well.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200331193544.GA55810%40ubuntu-m2-xlarge-x86.
