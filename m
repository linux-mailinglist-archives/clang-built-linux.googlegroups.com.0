Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBEXB4GBQMGQEZJL5HQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1000E361093
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 18:57:55 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id e20-20020ad442b40000b029019aa511c767sf2205780qvr.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 09:57:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618505874; cv=pass;
        d=google.com; s=arc-20160816;
        b=T/vPWM9JtVWzIahX2bUoi3+EYtvICTwMF9Gcmz/L7/TEhd59vPpIpZB4QV5cYffj5i
         WkfdZNGW2bsAWnwIPkQhFAX9cTGfVUhV4QYwV7V//6WlVmdARuUpDWxAsgK0hpwHZ4AB
         V4apN0EmWy3XmvQCVcqEZ+5raj7HgbNWf6njYozrvZ0pwDpmIqT0SZ6Uqizn7O35nd2f
         Pzdg7mxBD4DOdew6wLkWBSBkED/KOVdjE/5ogxe1KfrYmC5VPqRCsj815jOjGL2zjK7Y
         BtEP0KB3+176FjyKt4zzBfDMH1SmgOXhDWrXnWtIi69LzZA0PZXtmE7U46Z64R7ngZeV
         a6zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZZraHzml/zdoEzs6Q5MMy+mcyQIQPZXyNbuTRbtTxbM=;
        b=fywuzBtxHhW1J+tW/Oz0C++4S3H33up3v6BlqnpeUSFk5UEmU2t2rQ1GZ0IFENiNVp
         2bwr6Sr+PodJYrWM/OsbGLzlNyLdWk5VYERko26IgVewVdgCC6cbqWMkGP4kYqJefVVj
         j71jc5yq6SfjREOXwx5zoTITf87zWavrhJOd2BIDYqfEOLxwlTHj4MlgZbeHB/ylYuZ8
         jq0dIKD7/jayZK0DMLYn0arle94U9J8e0ZgMdzhq4e9/8lh91YB+rzKvDOXvhWk1LRVQ
         6xDj/TJLKOn3CCcrtycfB9jJGm9HQ+DSvE58YBsTbGFKEpn7ff/6DiAuhPkPy4+PxYOT
         UG0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZZraHzml/zdoEzs6Q5MMy+mcyQIQPZXyNbuTRbtTxbM=;
        b=r1YO/zYBjiwu1IiTFfo2DacXiB9goh8ZjPDYcn9aUFMTlnyl7JDyxP0zlxRcBZl4mL
         /ZhQVJVE9K5fXXruGw0zOK/kZRt2PdXvxEUTE5oVWlm3N71GhVS/6jbxoA4IwkRv88cH
         FafPEBcVZkYvtn/nRXJPTZzI6XNv9Z4N7kjNytmUwSra8rVKiqPhIUiRzV0+hl3Bs3Ip
         YTpKTm9iRbLjwwWSMM2moRU7iloo0oZsXu4awfl41sWYnZL3H7ohYqhp+zJ6prhxGZ+e
         32w1FJ4NZULrvnkJPOB8lhfVHeGHFAoesaXw4Pp/6SgfDe+sIORS1kHYykDDMGOhUAlu
         7TXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZZraHzml/zdoEzs6Q5MMy+mcyQIQPZXyNbuTRbtTxbM=;
        b=eFiHM2VHPzSNXAieRGoYkHKcc2w2++lV2zO3ncM13lzpxcxtiMkrKQlfClEaeoQGWJ
         UzjYnjn0tf8HEy6EcKcRSqqL81N7QakukruM55DQemoON5d2RAHCZRpArmGN4pzknuL6
         DJ67o7BKdk6cweJMHwLixK1uIVhF94vsaQo1XRSLUsfmm2w/OINEhdQsgtcBKA9H+VuN
         Nj1fyKOuFpvpqb6I3HvnYO7ztwZuBKnUXoN9xajYXJQFmwmGYYoKXWVZoRk1eFZo5wmY
         foUIEWjK14K2Z2dnpuVtep5TZrl12ah4BBTOENvDNcdyl5gBXv1mGEt4o0PDgyscJegh
         FdbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53242nRcTOl/BwVcBuDm4JtZAK8BYW6bsi2PL+fPYgtH+GEOQ6QZ
	7lO13O7mT4PO6VbJCw/GlVo=
X-Google-Smtp-Source: ABdhPJytgshoJ8F7B7kYqJoR1XhCCWd0dmXWEsQkF/ZZLnnK3fy5AKeL3zS8/cRuCMayB1dvEVqRZg==
X-Received: by 2002:a05:622a:c3:: with SMTP id p3mr3832999qtw.43.1618505874167;
        Thu, 15 Apr 2021 09:57:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b990:: with SMTP id v16ls1656986qvf.4.gmail; Thu, 15 Apr
 2021 09:57:53 -0700 (PDT)
X-Received: by 2002:a0c:9bda:: with SMTP id g26mr4004105qvf.44.1618505873637;
        Thu, 15 Apr 2021 09:57:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618505873; cv=none;
        d=google.com; s=arc-20160816;
        b=hd2JaQlG0eDOpG5LQfo70R/+8/YcWa7aryPbbqS3r3j5QNyHSY7ogBZWss7rdeSCkz
         ur+J6EPVsXALBf0VftwTdrsqFmjgnokpqOOP4PTqNST5hXEFMd6EhpWRt9C8NcClgtEk
         dMrYsEJaC6wDC9RLs0AbiLyy3cGjzpTvX0TDg/fLLHpS33keJpm9iLiwtvAOqaHQhJDA
         pJ8zn1qcqaI0mG4yTPquYs+ZHRjppE6zPVwN46eaiz6uU/WdUStrdJ/SzETLJ+0gzk6D
         ls5RwU0IXmYjgek4WfQPBu0IFb9ybMR7Gh1wTL+wBEKZEO02WJA0JT778SoKzb6aK6Bd
         2yMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=EYZ/asRs9kTlHp7uhexKg/hEhi9BOCGqTWBLHm8Av3E=;
        b=VAr+hitg/aSQkvuEFja881xRaQDnxkLyg4/3Ea2N0zSFl+qsAxhMVAKX/iBAMGOZSU
         Q/oZE/23eG3GjfHI5ryFktFej35hgeXb9PlXOT2UovZCW6AXLwFZ2RGD7f9a81QOxZDS
         bmG3W7vs6h/crkrS2pMyKi83brIL7Gq3lvKDwBYakwUprA/5Jylh6vrjf16kTX40EZFB
         BebiQSRjmmjTqwE5ABudhSY6bXslPppx/SQpK/Ku7NZWzIqYefcUXf/vOyKPvUkXb5kX
         W1SY9VKXKUzRCxBl4OSSfL/wdZ0CI875TzsaIzAwDmE2zaia9aXtofuK45iCIJAHN6NC
         12Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r26si281924qtf.3.2021.04.15.09.57.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:57:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2EB1B60231;
	Thu, 15 Apr 2021 16:57:51 +0000 (UTC)
Date: Thu, 15 Apr 2021 17:57:48 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] arm64: alternatives: Move length validation in
 alternative_{insn,endif}
Message-ID: <20210415165748.GG1015@arm.com>
References: <20210414000803.662534-1-nathan@kernel.org>
 <20210415091743.GB1015@arm.com>
 <YHg+5RSG4XPLlZD8@archlinux-ax161>
 <20210415140224.GE1015@arm.com>
 <CABCJKufDUgPSRQi1ZQRk=upNtziKDJ8rTBHgq2oQpPWS=utrvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufDUgPSRQi1ZQRk=upNtziKDJ8rTBHgq2oQpPWS=utrvg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Apr 15, 2021 at 08:50:25AM -0700, Sami Tolvanen wrote:
> On Thu, Apr 15, 2021 at 7:02 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Thu, Apr 15, 2021 at 06:25:57AM -0700, Nathan Chancellor wrote:
> > > On Thu, Apr 15, 2021 at 10:17:43AM +0100, Catalin Marinas wrote:
> > > > On Tue, Apr 13, 2021 at 05:08:04PM -0700, Nathan Chancellor wrote:
> > > > > After commit 2decad92f473 ("arm64: mte: Ensure TIF_MTE_ASYNC_FAULT is
> > > > > set atomically"), LLVM's integrated assembler fails to build entry.S:
> > > > >
> > > > > <instantiation>:5:7: error: expected assembly-time absolute expression
> > > > >  .org . - (664b-663b) + (662b-661b)
> > > > >       ^
> > > > > <instantiation>:6:7: error: expected assembly-time absolute expression
> > > > >  .org . - (662b-661b) + (664b-663b)
> > > > >       ^
> > > >
> > > > I tried the latest Linus' tree and linux-next (defconfig) with this
> > > > commit in and I can't get your build error. I used both clang-10 from
> > > > Debian stable and clang-11 from Debian sid. So, which clang version did
> > > > you use or which kernel config options?
> > >
> > > Interesting, this reproduces for me with LLVM 12 or newer with just
> > > defconfig.
> >
> > It fails for me as well with clang-12. Do you happen to know why it
> > works fine with previous clang versions?
> 
> It looks like CONFIG_ARM64_AS_HAS_MTE is not set when we use the
> integrated assembler with LLVM 11, and the code that breaks later
> versions is gated behind CONFIG_ARM64_MTE.

That explains it, thanks.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415165748.GG1015%40arm.com.
