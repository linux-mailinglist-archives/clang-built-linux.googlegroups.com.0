Return-Path: <clang-built-linux+bncBDUNBGN3R4KRB47LS2DQMGQE4OFFSUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1312A3BE972
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 16:11:00 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id e20-20020a1967540000b029035492aaea8dsf1088481lfj.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 07:11:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625667059; cv=pass;
        d=google.com; s=arc-20160816;
        b=NF2byONjhtBsk4jnqWEJM58cUHollaFd3pwfi4VXSgIjapjMwvpys6dVsqz449pFou
         lckW/vRsUV5Af6U2cnYQtaGNTlppwfIg3OyAe9dgwkfGSTWwfyRnUZoGDuJZF6T8NccO
         XJDqOWQKUR8naaUx7tyOXkhq24CswygbkMOKrIpDiH4Efhjq8F4gNgMVhL75IJwwIhbn
         ZmtEQiUWJ7x8qy3V2Cw2phR6VRBLqCpd2uNoU3a1abrJ/aQmAm8HzYo46ZThWduQ9yTn
         5+8n2zQaR80bVtFS/+cBTmcynQp+v2915r1UtrOvRo1hqOOX26EXSz64cMhLlHTzeF86
         XkBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DdNR4417ll44+n4Z/7ZpCsOLC8XtMA0wCIpra4tKcsg=;
        b=rS46atUjkyebz5jddPnqyprUm047w37i1iWIsZNLe/zFOsX+yBV1mYULFN0F3AsCEz
         SvP+0Q0ErUkSYUDlPSGdqshUyAVpoFpsimh68hLBYwHaCxAxqkHqIPDQzMdFJ4wzqFyX
         r6xPL2c79c7nBar972YhUOrcq1ffjunaOp/VlMFIPuaSpnK/M4upPt5cBnRBnn9aCwSl
         INFis6mmSM4yCLUoFgwUfBei1PxrVQwifosSoQdBSvco4P9J/KRKFKdtWAplpDsVQWWt
         jBa6AXFxR4yJJQccc9PycvICRUMUMUXkoqwQYWIpvqYL/QQrBCB+PEjv6zgGwPB9HZdk
         jw9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DdNR4417ll44+n4Z/7ZpCsOLC8XtMA0wCIpra4tKcsg=;
        b=oP+iTqyT0CyWrVfZUqA3cIbJMAZHEIGC6ucH2AO+bzEojsK1A8BFmW64V+pQ6y1clz
         JFLtg/Sydu8LWrz9xB30c5RrmaaoMp0OTcPEYYKqgJBVLpgc4StOybekSJEWcs6xXUnq
         wetLy7xZ1EwHb8gq4nuXhj2j32XkPD+3UBVDaheGjAq3zk/TU0WnxRB3gAcPVtQYQDvW
         TZ4VZnpx+JihkOtnQy0nDkqxu7glFyu3Bn/wOEYH1k8OiX5q5/npNLZdOsPe7jAEVyMf
         Lg7O8c3w+q2a1HrooZEJCjDjVGCKuNtquQMgYl1r6TT7cHCmPIsR8VBlr/6C6kWYV73T
         hTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DdNR4417ll44+n4Z/7ZpCsOLC8XtMA0wCIpra4tKcsg=;
        b=uG65mOvAfBDgUsbyoeo7togqjODMxJc1t3H+g0L0Zp6PDyAGMHaM0gTejjYbPCfoHd
         6CbAc81SyJkWCAX1vFTVtgZlhhw3aRJVvywLQF9XnukHVG1T+2/YHMSy2vH1gaGifiy7
         VBvnsK/hm76WjePBtMPsFVD+Ww2Zc5fHv9mg8tKdWhb2sZcgJJAFeUyq9sr+nc+2lseG
         LEi/MsM3zgAdjsH8ag9R6+TCKdj0jGz6+z5v2qlGksZmbGsC9QjQ6Nn4k3kWuYvpUNWD
         HusIB4dRANU+TmNjjZ+cE5dbDv8VSRp+BRuIyYxIqL8qGJKPxGLUfEghp3/W6S1sjfYA
         z4qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jZqVc5BeLHcex5u9hsBUdbJ8edVMtzbu7RPxY2zLKi0JFqZbu
	Z/xPQol2z9f8dWNuz6Q40rA=
X-Google-Smtp-Source: ABdhPJynXycafOh2WyccWC6yPBqJjWSVXIhdDU/pP8I9XhXYjkVtlA7K9jLjOp+oACJkZC2oc3349w==
X-Received: by 2002:ac2:5a4c:: with SMTP id r12mr17832995lfn.498.1625667059531;
        Wed, 07 Jul 2021 07:10:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:805a:: with SMTP id p26ls414682ljg.9.gmail; Wed, 07 Jul
 2021 07:10:58 -0700 (PDT)
X-Received: by 2002:a2e:3513:: with SMTP id z19mr10368707ljz.256.1625667058340;
        Wed, 07 Jul 2021 07:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625667058; cv=none;
        d=google.com; s=arc-20160816;
        b=iwPMs4gR8g1TTdLV/Y+3FSyhZI3PN2LSq+kVL6+gsg6OIapfrb8165ur+Vf1JxBG6V
         h7ZD0YktLhfsK3zlAUuxisr3dCLuxbAZHj9M2d+3fxTxTjHJGk9Wf/tlnNbQAe/DARt2
         8WNSh7YWukhkUhqgmfmE6Iw4cb0F/vjO4aFuwJWPcsb07q8MIRpuCxVG3an7N2Z20d52
         CzreVFCyKTDAZMeKpJq52szDsIHYXH0W727Nq6PY9m9+f64I37lyCkIyVQcsSqdJTwsi
         2BkDp36zBnyXPXAPEbpj3pof4Lj0XEN9CZYQq2XUYGUyk5uNpNYgQAN8Rh/2miulsET9
         TUYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LRb02DqEVN6yT+o1oBVSNSz/zMNK3NkvYrnj76C/B94=;
        b=UwyaV/f2jccvkx0wAlepshipanQ/7TQux9BODGsoEuhmgxqqizOWL3yxlXPb+wqKvz
         Fekt1ax3YlLMp33PDKUC/XjcoSf6bR47E5RH1Y21oUIH3Agm89BABJUrXuALoPsqJshK
         OA2HL6N3EKiRihvhvZJecpTLoAqP0P8qUPV+eJZwpjcBVKZbSOmF6bOEKQEqJz+0TBlp
         LS6kj8XnQEazjaEypuA6TBM8P9ptE4B++rwhYQIUmkZ3oglEbi2HXEPLObualoppzEm9
         ElZTcqVBMrt2mGwy7nhhvllsLJkxXCbEWNG5UwjZrTHyNYDeP8QS1QpK4Ei72bt6vDo4
         QOIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id q8si972479ljg.4.2021.07.07.07.10.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 07:10:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 9B32B68BFE; Wed,  7 Jul 2021 16:10:54 +0200 (CEST)
Date: Wed, 7 Jul 2021 16:10:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Christoph Hellwig <hch@lst.de>,
	Brian Cain <bcain@codeaurora.org>,
	Sid Manning <sidneym@codeaurora.org>, linux-hexagon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: how can we test the hexagon port in mainline
Message-ID: <20210707141054.GA24828@lst.de>
References: <20210623141854.GA32155@lst.de> <08df01d7683d$8f5b7b70$ae127250$@codeaurora.org> <CAK8P3a28_0KJpcLRQrDhFk8-ndxmfk7-Q2_qcRRiYkyh-NNZUQ@mail.gmail.com> <08e101d76842$94f78a60$bee69f20$@codeaurora.org> <20210623151746.GA4247@lst.de> <CAK8P3a2bG64ARjpwQ0ZhQ9P0g8B-=AwcHHAbYBXBS4B6Fy9pQw@mail.gmail.com> <YNQE0YJzC2xmWg+2@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YNQE0YJzC2xmWg+2@Ryzen-9-3900X.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Wed, Jun 23, 2021 at 09:06:41PM -0700, Nathan Chancellor wrote:
> On Wed, Jun 23, 2021 at 05:35:38PM +0200, Arnd Bergmann wrote:
> > On Wed, Jun 23, 2021 at 5:17 PM Christoph Hellwig <hch@lst.de> wrote:
> > >
> > > It seem like it still isn't complete enought for a kernel build, though:
> > >
> > > $ export CROSS_COMPILE=/opt/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/hexagon-unknown-linux-musl-
> > > $ make ARCH=hexagon LLVM=1 oldconfig
> > > ...
> > > scripts/Kconfig.include:40: linker 'ld.lld' not found
> > 
> > I tried this using the prebuilt binaries from apt.llvm.org:
> > 
> > $ make ARCH=hexagon LLVM=1 O=obj-hexagon CROSS_COMPILE=hexagon-linux-
> > LLVM_IAS=1 CC=llvm-12 defconfig modules vmlinux
> > <stdin>:1515:2: warning: syscall clone3 not implemented [-W#warnings]
> > #warning syscall clone3 not implemented
> >  ^
> > 1 warning generated.
> > 
> > Doing the same thing with allmodconfig results in an internal error
> > with clang-12
> > while compiling kernel/locking/lockdep.c. Same thing with clang-13.
> > After turning
> > off lock debugging, it seems fine.
> 
> I've reported this upstream with you on CC:
> 
> https://bugs.llvm.org/show_bug.cgi?id=50838

I've not actually got any mail from that Cc..

> Christoph, that toolchain should work (I had to install libtinfo5 and
> libc++1-7 on Debian Buster):
> 
> $ export PATH=$HOME/tmp/clang+llvm-12.0.0-cross-hexagon-unknown-linux-musl/x86_64-linux-gnu/bin:$PATH
> 
> $ make -skj"$(nproc)" ARCH=hexagon CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all

hch@brick:~/work/linux$ make -j4 ARCH=hexagon
CROSS_COMPILE=hexagon-unknown-linux-musl LLVM=1 LLVM_IAS=1 defconfig all
HOSTCC  scripts/basic/fixdep
clang: error while loading shared libraries: libtinfo.so.5: cannot open shared object file: No such file or directory

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210707141054.GA24828%40lst.de.
