Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBZW3USFAMGQEBPMNPFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D526412A1D
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Sep 2021 02:57:12 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id 17-20020aca1111000000b0027368cbf687sf3277347oir.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 17:57:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632185831; cv=pass;
        d=google.com; s=arc-20160816;
        b=j69avAnNhQqUKK4J1DQCRW50gvaagr0Ka98YGogI4Y2xYwUNF9zTNLbWh9KApQ4BBI
         Ww3c17PTreziiJh2Ha9WWUxB9rlwoqzt1TM8nRkWshNV4vXEUcmKxZQ9ixdVG+teiWjr
         NyFDw80JlAWNr8ihyUVsX7x6I0dWOHe41ENN7Sx+2KuKwP2n8zCYDwvehBPtWoe0zopE
         fyB0OUv7a3cODpss16gEywbh0uw3BApqP5fwQ+8agIGPYECwmJTsr2kI4E/hIUWdPPUH
         Bc05YgO0B4FnBN83r+Wf4IHwPtg2FFWeI3vuTuWZugB+S/1NaEKzV0gpNoM2/s/3dKGr
         ny1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kjuCmKkwL57v0WnWgz0z99fiMVRYoyhntKukZNPnbeQ=;
        b=yuaRFlVfnHqVX/bVUd34Ml4TLx6Ma1/dUZja+vLvVSQ969tXPfa+51z6XRI+VQ7DFI
         xbToycRxM+SAPpXTiV5EMALjH6n4TnU55moLCKUy1Alf7aUeZcmca6HejTsNPOq0CVH8
         Dw3PCdcU3XxXriQuFxC7e0MZ8ic+Dd6VDO8cBxCih20lzwgDhN5YE4mb9l3MSMMck6uc
         CLgr0DvUMpX33hxYXm452MfFWS1fXNMomrnmiSz0KaHjT4HpzDPo1NaBmdOYmTaLFjTG
         MJTcjbTQW/L4PFNhyCH5a7RLGpHpJ2NlHMv0jdZoQZPYgFYt68laFFkGMxfYYcUWE05B
         TVaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kjuCmKkwL57v0WnWgz0z99fiMVRYoyhntKukZNPnbeQ=;
        b=R9u+8MissjlprZAErnoiL3VfJ8lGS6DH1KRLsc7bbaarMlA5D8rB9IJQw0B46VrbRy
         nniKUrJcRCl5frz2wJ4y3FMzFuqt/2zqkdbABAoMEZKJZhBhvaRYzaMiqOpEn82DWu+l
         uhJsXl2lBJ2LrSLBsHo9beoO24TjzcorSdj/CO1QILx6R5erTx5exROgrd+GahbtGsj4
         /ulyWQNlI/Yu3WF6Fi0iXmB1pbQ163qcy8SN5A6uOrzrx85Ho4HrXNyzgjQvjM5tRG46
         hgEPP1gzAxPjUhbDS3QgasDOwoXuzYqle6GXM7eaWY5IzJArL+oslzD1gw/2g/lfFDv+
         YTOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kjuCmKkwL57v0WnWgz0z99fiMVRYoyhntKukZNPnbeQ=;
        b=RbgM6eNre4WFGsGuXQ77A0fvWpjPt8xVDD8Jjb9SrZGgA9FKgw14ESRPUC2/Lw0A3s
         xeJYm/J5Il54vfBkCvzceg3sic5ljOvodc2M+kpV0NZH6LbWoG6O54dmEpv/NOzwvdiP
         B+Mb2UVPTchBPoXA913SzPjN354clYwUCKBM3ShtV6cSKhaQXUn/3WA3/6K7Sy5w2trc
         fg0YbOCrqw1aO2q2D4GYbjD2A0VxWqLFiPTm0t1/pFf9txoe4ozu72GvXv2puowPviME
         UX2BduaBTyWAvugy9oxN02fFj5UfLjYgYKSqAnKmkG8QFHaWi8duQv87o+VylwSjXnSm
         oL1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xbXLeovfUV8O/bJ1kl6Oc0g4FAFDTJFfjJwLZFNrvg5cqbNx0
	IMPuF1kgkwYwXtAbR0Wkrl8=
X-Google-Smtp-Source: ABdhPJzvR+J1zFmmNVb/+qej+sWXmbSTuDtltn7j5FxpyceZetUY2dZre7QyL6Cd8srv39T6v8W4/w==
X-Received: by 2002:a9d:720d:: with SMTP id u13mr23377551otj.14.1632185831099;
        Mon, 20 Sep 2021 17:57:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14d1:: with SMTP id f17ls5542340oiw.4.gmail; Mon,
 20 Sep 2021 17:57:10 -0700 (PDT)
X-Received: by 2002:aca:6549:: with SMTP id j9mr1586370oiw.126.1632185830493;
        Mon, 20 Sep 2021 17:57:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632185830; cv=none;
        d=google.com; s=arc-20160816;
        b=fWYqunMCbP+oKQUy8b/k0ojaK2pFtorYPOqET6aEHRpn+ldX83I8OgXx/G1VuQj3Na
         iAiVZJQziNf4Rz3vKQLtmWa1vN0X3F1iZ1aRqY7ZHZO9LSCwv0l6mBN2jW2x1PpRyIuf
         WTO1pRD10m40zkaW+tPaAV0IIrLrJcshIRKq6p6grNaSoMOqZJx0BUQIlE2xmx+k/GEd
         TyfxFHCPm2wJnbPQO5elhCOLRx8twnhDaulkmbJEw080UoeS1KahWGWzxFaGSVBH5yoo
         MK0m8n0mOp8iSduX1Ep9ZoyU2CQiRbE8ut+p38BsrV6j/yXcVdWL6VFNYkr3vPpySY61
         xcpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=S0KaIrLNcsXHR1nlYW/iMrOHUoKPxaV3IH+E/Tj2wQM=;
        b=s7Po5ZfHKmFHn7DxZQYJnvDU4Tmt9wk2uPOlMPzZj37DCPJR5SmYeESJ1Pq58vxCn4
         YHdWyszsym/UHnt58dHQmR9QkstevifTmHg/9vwpx/LdlJppS0F2+HfjTEPeb4uwI14X
         t/tEEJ20OiNU3lmG4hi075GQwR1xTkeaGb1EtPUxPocYuADyvabNCAyC7QU09QaU0OYJ
         JpD5pjQoLUfCpPlRIx90sPZ6Jk1j+TadPsU7ycqCWnCqdOGCq6YqAZeQJDc1mt3qrhZG
         huRiEnLxGPBYwuCsqt0ZSn4ylELU+YvcZzBnz0tOPixuCG+d3BuPxCNxyYuyVG7m1Mck
         i/WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from deadmen.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id w16si121365oti.5.2021.09.20.17.57.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 17:57:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtp (Exim 4.92 #5 (Debian))
	id 1mSU5i-0003wa-Vb; Tue, 21 Sep 2021 08:56:59 +0800
Received: from herbert by gondobar with local (Exim 4.92)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1mSU5V-00067s-Fx; Tue, 21 Sep 2021 08:56:45 +0800
Date: Tue, 21 Sep 2021 08:56:45 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Arnd Bergmann <arnd@kernel.org>, kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Subject: Re: [linux-next:master 3857/7963]
 arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool:
 sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with
 modified stack frame
Message-ID: <20210921005645.GA23480@gondor.apana.org.au>
References: <202108160330.T1EbbpCi-lkp@intel.com>
 <CAK8P3a3qhfxUC-7y-_q35-tNrs2L93htjuVzSukqZO0hDhOAuw@mail.gmail.com>
 <20210920175656.cjvrr4wn7a3k6tnx@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210920175656.cjvrr4wn7a3k6tnx@treble>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Mon, Sep 20, 2021 at 10:56:56AM -0700, Josh Poimboeuf wrote:
>
> Indeed!  This looks completely broken with CONFIG_FRAME_POINTER.
> 
> Needs something like:

Please send a copy to linux-crypto.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210921005645.GA23480%40gondor.apana.org.au.
