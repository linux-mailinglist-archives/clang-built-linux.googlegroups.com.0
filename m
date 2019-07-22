Return-Path: <clang-built-linux+bncBD4LX4523YGBBCVL2XUQKGQELSYAZVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 744706F96C
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 08:19:55 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id s9sf34769350qtn.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 23:19:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563776394; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rk78ITR72UttN+fjLKNq9lQGZsLywHtFBEM30Pg4na3CaKpqd3lqEApz9zDIE9jqw3
         CDoxcKrDQFZOyeybW08CfhN6UQCx25sHT6HFNx1SjntLB+Pn/RMgHAvWM8R4nqXaeRy+
         BdkSwcwHYVcy4Cybh4MUWnnYFGYsqNnQXGk0VQ8XbxSnd1+g2gmnoZmJvCGOj+PdKhh0
         SGB0GRDGq6NsGADtvmJiYOEUTtE6hgyH30w2IDgQJHt29heQpsP0rBroyxr0hCitbPh0
         EdL06UqHhmSB3JnS+DozM8nlNgfgdlyqv9W8fXVXXkcWvNvldlA12Col/hHloJEqo7mL
         cNrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=U+iNiHXjJfnJypj4wdPkAbDILtAjyOOILsaE1MiEuNc=;
        b=ay+JfoZcaNisAnWE475HEoSBTnbtDQ8XnZUJunjIMTN6lhYT8CnYPwL2CGeh01iF9n
         KuEu2sYrLdmZSFT8P00cDfQz2qW14bFL/rNyOf6Fi9E5XFHgSPELMKmgVMTV/jVuObwK
         92TbGxa4RNVwpNVm3AKmwzaauXYvkB3SLZrZl4PPnGBaV0bQ7wOTqkG9Ppou9f/oHvH2
         53EB4KVs1FWbAmZy0dhwcw8rZOZ6RHHhsONqGlmvkj2EbcCKFz+yter7XSmb64iHqkG2
         HEVV8ydVkroprK/AJ+dd0bEwmGaXHWZpc8OcaVKnP+GageJOuX4Kg7FlVTTHPHgG4Kcp
         TY3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U+iNiHXjJfnJypj4wdPkAbDILtAjyOOILsaE1MiEuNc=;
        b=d+WmZ/zTkInbxW9cfxHwrtJqaqfIrG1OfWspZPcLDRMFgFaoztYQSCLMJ7kM1y8sOQ
         i8afNW9/oUfOgjJG02BPVPgOrtlul03ckJlQ64gMIF3riuduAfNLZqJ1SQFjX7ZvjGwo
         tMQtZ2OFLo3XRG3C3YNuHyvYyI73y6GErkiwqxFCMOwitfizFiiqwA+GJCpdhYnjVTaO
         UmdKK7lySLSQXGypcVndIcHZLbMz2vfVPcmulnjmrlr47jAIpUf50BnXxbFG+IUmMe6U
         jHUYKqdOaR+BOhktvIn/YshWBR9LoGnnJQifa5n56hrQocHlK/jMAEnjq3lCXpuBnzv2
         Gjhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U+iNiHXjJfnJypj4wdPkAbDILtAjyOOILsaE1MiEuNc=;
        b=pktgcY+GE7+SjMbL8d83QbadI6y3C6GuVAHvXutfVwMgKb73Y9XxwFrtxy3iv/7Tf2
         3/SP1GLi1E11oFbiJVVrc6S9OFHwKMeKoheYHiT/QX5heK3pb04VMgsEDHcWUFuhGli9
         mnxdx6THGSbtSjaR9MnptKna+0Yob+GjpT/r5i3cbmYlrOnmJZ73gqDIZNgBuYuWwMA2
         p+BDLPWHioMISINndNh+8o1nRW2LcC60x9SJICh861jMs5XJmZTPWpwNTv6lSybMnPpo
         F8nOg7NYUaCzhT3JVBTdf+5rB3b7wLWQ9uvmx2/4oW1hcD0uXllvCsKjo479cem2vbYl
         Zaig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViH+HcqVM83bOEMMCIFifkweTLHNOQqlWKBK9yYoN66WJnCbQi
	fMJU/pvcmNhLW/xxW16ablg=
X-Google-Smtp-Source: APXvYqyY9mNrsY0NLWu/D/LB5UFdkspcb7YHOdtd6bHGydZDH8E8uxfboM2lhdBxsXIPWcXbyQoIIA==
X-Received: by 2002:a0c:9695:: with SMTP id a21mr49952256qvd.24.1563776394567;
        Sun, 21 Jul 2019 23:19:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b35c:: with SMTP id a28ls6349688qvf.9.gmail; Sun, 21 Jul
 2019 23:19:54 -0700 (PDT)
X-Received: by 2002:a0c:fe6b:: with SMTP id b11mr8674557qvv.64.1563776394306;
        Sun, 21 Jul 2019 23:19:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563776394; cv=none;
        d=google.com; s=arc-20160816;
        b=jZ/nGSeG50RiQBP33DdtBPXDAatq2ZV3Vtgv+x2EfnLrDRaG2Kz70ttmhhEiuRbZjm
         rxA6NdDlhHULGkXjKLUPl0yNWgl/Jl3Uun2KwGSa5MbB4UQA+MzTyUxjj12IgOkddbCd
         UHuwf+77HagzzpjbSmt8s+60pusfipyBF2J3ZsBt75T2hMIi+JlTeEdtZksmcJXGBGPg
         D0yEhdlGrfBeWoxYfhfjfEoNuh7fwqijuazUJ7zr9sxvFFeU9Tvchf/Ac1jd+cmr55c+
         O7Htk14Ea8F1A8lfUd3mJ87MAZL3OavN0uw37pNRCpiACGyJTgbVKZvIE+lxRoOaVjH7
         p2Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=lTacnaO3DW+SP814pcMS8tSWWGw33otcfSIPy5zdA4s=;
        b=TPAJzTROrRNa32I2oyZDPxbRPRNgwU11nz8ItyKRgqNLBE7y/vpNNwk+Rv4OP1bvt4
         3Av4H+OKLaaesGHlxPR/oP08aoaIDiXBGD9u4YeTPD25+VBkyZ4BrFnzg3zZYKnKyHuV
         o8iPmEgBxtOG7PX/TI1xDEvx0gvYoww0LszBkVvE5AbHCndyhyFgEXBUiM+bBez9pe60
         OduWD/gXYCala+wPabZQLIHkgwvtxaqwaUwtEoazzLUJjA8LoXzbpUmvk1DCdypFTjLP
         uX1Zq3YSVfhnML3rDLkRpZjUMH45N/QZT84/W+GMReC1cA+J2SGNjFSg1YMCvq6dZKuU
         fmKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id u204si1561922qka.6.2019.07.21.23.19.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 21 Jul 2019 23:19:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6M6JgeY030771;
	Mon, 22 Jul 2019 01:19:42 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6M6JeD4030770;
	Mon, 22 Jul 2019 01:19:40 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 22 Jul 2019 01:19:40 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
Message-ID: <20190722061940.GZ20882@gate.crashing.org>
References: <45hnfp6SlLz9sP0@ozlabs.org> <20190708191416.GA21442@archlinux-threadripper> <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper> <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org> <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper> <20190721180150.GN20882@gate.crashing.org> <20190722024140.GA55142@archlinux-threadripper>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190722024140.GA55142@archlinux-threadripper>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sun, Jul 21, 2019 at 07:41:40PM -0700, Nathan Chancellor wrote:
> Hi Segher,
> 
> On Sun, Jul 21, 2019 at 01:01:50PM -0500, Segher Boessenkool wrote:
> > On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
> > > 0000017c clear_user_page:
> > >      17c: 94 21 ff f0                  	stwu 1, -16(1)
> > >      180: 38 80 00 80                  	li 4, 128
> > >      184: 38 63 ff e0                  	addi 3, 3, -32
> > >      188: 7c 89 03 a6                  	mtctr 4
> > >      18c: 38 81 00 0f                  	addi 4, 1, 15
> > >      190: 8c c3 00 20                  	lbzu 6, 32(3)
> > >      194: 98 c1 00 0f                  	stb 6, 15(1)
> > >      198: 7c 00 27 ec                  	dcbz 0, 4
> > >      19c: 42 00 ff f4                  	bdnz .+65524
> > 
> > Uh, yeah, well, I have no idea what clang tried here, but that won't
> > work.  It's copying a byte from each target cache line to the stack,
> > and then does clears the cache line containing that byte on the stack.
> > 
> > I *guess* this is about "Z" and not about "%y", but you'll have to ask
> > the clang people.
> > 
> > Or it may be that they do not treat inline asm operands as lvalues
> > properly?  That rings some bells.  Yeah that looks like it.

The code is
  __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");

so yeah it looks like clang took that  *(u8 *)addr  as rvalue, and
stored that in stack, and then used *that* as memory.

Maybe clang simply does not not to treat "Z" the same as "m"?  (And "Y"
and "Q" and "es" and a whole bunch of "w*", what about those?)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722061940.GZ20882%40gate.crashing.org.
