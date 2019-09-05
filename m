Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB5XXYTVQKGQEHDTRSLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E74EAA94D
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 18:46:46 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id t16sf1265465wro.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Sep 2019 09:46:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567702006; cv=pass;
        d=google.com; s=arc-20160816;
        b=i7dKQp6Z4In4d4adz2B3Y5MaUlxl00VdichXxavw2N4iy+kqzCZpljenixvxhOQ7vm
         30QpumDSYbcl7IEit8KW3qFU6duJEW+1uwXMLOssyOgOK2vvzt0pnO7I7MiRAChWB+TE
         BI1ZT5D8dFPHEPSUuIePBCYaDbsdq5TC1NTf5P4sLRsLg7MXCaO4yxcG4M3fVOwBbV1m
         JrtOe8TahhVy1ma3H5SAFt8SbQtei2Sa3PSutmvT+bFLSL+pFPPhGybYbjuhAdCEyDx2
         +gl3t++KTFgyMuvb2h7zMFOwBfwNtvGXZYT2ZK1tbpe7tJw5v5R4MhC9c1ytL7mAFAUf
         0c8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hrstwZOQr78ZmqxRm5jjYUG3cXQjFAWTFCgL1qe/gNE=;
        b=aC/EbREVL1up7JbYDjHZZ9j4i0N51AspB7RK6jMnYN2loCd38bjcRAXn4Hb/1T66nZ
         rOk6At7u6Kw/Mcwa69lnjymAVsZ2f/0RmF2DCPfC+YR4vlv3YdxbtG355DEKa9OTTZ6i
         mwM7LzvK+H4ZLov2fWdAi6N+4jGhvc9CZ+Wh4aTWznbdH3FfHx/NKGBk7GTvNezSmXIS
         vXPBpErCo0qrGzdSe/FkUPuPtFqBdafTHSqynAIzr4e5Wopz8ihIP0dGMaSCi/P2ca4k
         ASwmMJRT1cxSTfJDW7c1da6cqkkOYWGXVd9ADzoT2nXNYnm7tjgUfHz30T7Dm8kHsWCl
         s1Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ak74pS4L;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hrstwZOQr78ZmqxRm5jjYUG3cXQjFAWTFCgL1qe/gNE=;
        b=RmU5vQ/Zw46XBPE3j2bgqnqg3B7cuw4x0ytl9vJbiP29972QT4RaqXNRiuTPWQTRt7
         bkFBPtAGEey4prS9oHbagpyqzWYLINPAd1O2RyEIJ4Yra8EfBwpOxiR8ROcuq2Lw5gXA
         vfaa7J1YP8lR3I/GFjUw+3H5mFe0XhND+PnX2nEqkgiKUn8ocbovjqg7pa3JH5IthoIa
         2226ZGy/dS4NwQSH3ltEsVGbd1KQaL7Q9t4UEB8nDz+oRJUfzuDtqG2ezNOoievw05RZ
         n6jL8oyBY/NBn12gWB0qtMPBFWoYUAoLP0Cl6ar39v6f6y6+2qAsm+svDiUNdXRU0TNz
         zmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hrstwZOQr78ZmqxRm5jjYUG3cXQjFAWTFCgL1qe/gNE=;
        b=RshNtzHaR8mk7ZiFcccLHKXH/ebbLF8nWHtifvWa4XcZm6buLNrE6H6lPPmuRvZ5tS
         DScHgo77aeudCwsk8OuSsjiUGSxMjnjhUTX8C5FSoFimkgHXNXEamQhwQjeP8gOGzl7I
         Zvxem/PbohxQJA0lNioH/JIufWRNNxMPZmQfO3F+TBSIVoDLmbZErx4hrgU/IAxUNDTl
         SXj467eM04VioiLScEwbj29Ggz1lxgHQPvP7Q12hRr+2gSiZc/JN354afW/Puqt4OElh
         GUv+8Egqx89oxY5RA4Oe1eymhQ+pTXHHLHQmCpBEZiHVYQqfYuRpL7WusyhYQZyBXsNE
         0/YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmHhBZXEP+wvH23Ru1IiBo/vrG1+P66IVEHsblfNN3hSpW5TAs
	TqSpKSMJv5PAOPjg3uxhvE0=
X-Google-Smtp-Source: APXvYqzt12PMH6GZm7w/tft2hIoCuz1X8xabEKp3sHap0kFC3eaVa0z3JawAtJ1cyhRzH2K1WS70Ag==
X-Received: by 2002:a1c:f408:: with SMTP id z8mr4023336wma.150.1567702006253;
        Thu, 05 Sep 2019 09:46:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:660f:: with SMTP id n15ls804513wru.11.gmail; Thu, 05 Sep
 2019 09:46:45 -0700 (PDT)
X-Received: by 2002:adf:8b13:: with SMTP id n19mr229695wra.203.1567702005838;
        Thu, 05 Sep 2019 09:46:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567702005; cv=none;
        d=google.com; s=arc-20160816;
        b=c2TxgymyKP7xtRcjVUk8aSBGWxMTKGQiUyzzXee6GcY7w3MypmtzBLG06Y9N6MwNGV
         hrlwD1+Wl3/i+ZPkbTHWzX5qzFm7HGN3AZnzY/uAfkiRxPbu9sfDSu0XRdDN+Mnr6AJh
         YHH4vUprQJHEupfTCx9o+I4ybAwifCmK1SwLOyWdpqjejLuBFks7cRXNGVwgo+grqPOT
         h5H5LvRTRdFccAJKr9xRVFqlyBEfkXgx5vpXZINPL338JyrOorscINFuHvfAp1a5UxBo
         RSq9nGW9jh94Nk5eU2/7Sq3zJq3LzJAxNDCLQGHumJ9XlkvQ9nEhALMtkYXuR2wcBbYj
         3snQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cHu6QE74CNs1FkmhZ8Lols7/VAMPd2toM7CcVZKn6Vg=;
        b=lyZ09twOCP2h1Fi7It8q51EhKtvyd7DB6OH1MW1btV1pdQyy7YGzNNxPqwHO1lwxO8
         vOC9jjK5j+2ON44Bqj0ectlIZ0EuxcFNDEeoEKY3sk/01Qd8Jwj64KxZQgkKu1XyEnMy
         NLtadU73cEEfI3gGLu2o+E5YvzmuS0+ACiXi7yZRPZCPqQ1M1OMWGdFLjQDMelQ/3tBh
         51xu/JS9U5NPrjOf4syuZRl1BiwhryxZ0/EhWD01bg+VUvE8x4dSBBMb/l1uHoi6LZVM
         58cj67gdxbSkiCe0aU3P+j6oQ9ech8denmMnmnZMMt15DfWTVfDay+Gdaz7UPJkW98sc
         IxTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ak74pS4L;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id j4si96577wro.5.2019.09.05.09.46.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 09:46:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F0A5F00ED1F85EF3FFCFB3D.dip0.t-ipconnect.de [IPv6:2003:ec:2f0a:5f00:ed1f:85ef:3ffc:fb3d])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 3B2811EC026F;
	Thu,  5 Sep 2019 18:46:45 +0200 (CEST)
Date: Thu, 5 Sep 2019 18:46:39 +0200
From: Borislav Petkov <bp@alien8.de>
To: Steve Wahl <steve.wahl@hpe.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, vaibhavrustagi@google.com,
	russ.anderson@hpe.com, dimitri.sivanich@hpe.com,
	mike.travis@hpe.com
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
Message-ID: <20190905164639.GG19246@zn.tnic>
References: <20190904214505.GA15093@swahl-linux>
 <20190905091514.GA21479@zn.tnic>
 <20190905150738.GD14263@swahl-linux>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190905150738.GD14263@swahl-linux>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=ak74pS4L;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Thu, Sep 05, 2019 at 10:07:38AM -0500, Steve Wahl wrote:
> kexec: Overflow in relocation type 11 value 0x11fffd000

That looks like R_X86_64_32S which is:

"The linker must verify that the generated value for the R_X86_64_32
(R_X86_64_32S) relocation zero-extends (sign-extends) to the original
64-bit value."

Please add that to the commit message.

> ... when loading the crash kernel.
> 
> > What exactly caused those errors, the flags removal from
> > kexec-purgatory.o?
> 
> No, it's the flags for compiling the other objects (purgatory.o,
> sha256.o, and string.o) that cause the problem.  You may have missed
> the added initial values for PURGATORY_CFLAGS_REMOVE and
> PURGATORY_CFLAGS.  This changes -mcmodel=kernel back to
> -mcmodel=large,

That I missed...

> and adds back -ffreestanding and
> -fno-zero-initialized-in-bss, to match the previous flags.

... and that I saw. :)

> -mcmodel=kernel is the major cause of the relocation errors, as the
> code generated contained only 32 bit references to things that can be
> anywhere in 64 bit address space.

Needs to go into the commit message.

> The remaining flag changes are appropriate for compiling a standalone
> module, which applies to 3 of the objects compiled from C files in
> this directory -- they contribute to a standalone piece of code that
> is not (technically) linked with the rest of the kernel.
> 
> (Fine line here: the standalone binary does not get any symbols
> resolved against the rest of the kernel; which is why I say it's not
> *linked* with it.  The binary image of this standalone binary does get
> put into a character array that is pulled into the kernel object code,
> so it does become part of the kernel, but just as an array of bytes
> that kexec copies somewhere and eventually jumps to as a standalone
> program.)

Yes, a shorter version of that should be part of the commit message too.

> kexec-purgatory.o, on the other hand, does get linked with the rest of
> the kernel and should be compiled with the usual flags, not standalone
> flags. That is why changes for it are a bit different, which you
> noticed.

Ok, thanks for explaining.

Now please add that more detailed explanation to your commit message so
that people doing git archeology in the future can gather from it what
the problem was and what the solution became and why.

Also, add the reviewed- and tested-by flags you got from people.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190905164639.GG19246%40zn.tnic.
