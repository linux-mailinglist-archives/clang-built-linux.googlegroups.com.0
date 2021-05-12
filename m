Return-Path: <clang-built-linux+bncBDSZXKXZ3MMRB77R6CCAMGQELABDSBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9D037D42F
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 22:22:24 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id a14-20020a2e7f0e0000b02900b9011db00csf13184408ljd.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 13:22:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620850944; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFAi3EAaUgdLnLPRissKF8+ce20dWXq1aMicZHBmHh9XOw/Q7xsHTuXAQftGrmRu4d
         o7/UljNJbN4fu5ejpluZbMcz1sj5ju7Wz0hRTDuvqbQR401I02ROkOFoi6veq8PvrO7Q
         YmY9RcflPSE8zL+jWbbhGJ+6pmfwkaldgPNKja/Po3D2jZ6310bsTNG92AWk4SYOFiKm
         W4fpa7Cq3l1iru8nj05tlLVp2AwE/1xrd1gzdQU0ZLWaTJob2w2cp2oEM5Wf1hKZZMz1
         tvvxEydaZu1NzVsNHTYfQhIla0P3yV7ooeLNMjnOcHgHxbUhROEOikRGOJWG8oH7eEVS
         9xTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XasYS3MqZKmkPtXqDWrHLK9dJr8m+LQGw66I8l+B4mc=;
        b=VdtB/cB7kuhsOuWgLsepKAjvKG0bf3nzu5MLOKAVW5r2cnN2aeSXcLf5VcZQI4vUxr
         +ATQeKGU/wffkTxv/0j25jXIOsWHj/uspxrX+ihNQTvQ63z4+B3XqGQBOrjhwPRgKvQq
         bSv6muajESSpQfUaH8uw6Oi9XGUvb/4GiUSlo0Omx0/6q3KuNuWH9UjT4gzBo/JiXyr7
         FqmzVvomLSV/z+YNDWZrD0ucLIIR+GxV1qAFTRWrieFwEQx5VJS7812vnyqSEA6uznTK
         gookOF8SawRHsDwCRMxAN3B3XuZESw0K1bFOvDcGwtmz4XHL7A/nYBvSa/bAa6nDiEli
         ID/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 78.133.224.34 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XasYS3MqZKmkPtXqDWrHLK9dJr8m+LQGw66I8l+B4mc=;
        b=hRXXX8Q9iEx53ORPQvnPXq3TQiHt3k4koal4Cve/7mTtCbrv4XUaG0rY6RnUC5eC0X
         trR6aG1ecByeyBVAb+QjQePja04CFiG+HvssqjCZprC5PDbmyBWztd6q5VS0BaFc7QzR
         jEwk5N5kC3TKkv24SPODEFtsOupvtHytHIRl7OImZtQtmmQLBwFSBUzLdxGkNv+yRXqo
         jhwIco4NmE7OpIdBF+uTl+DU3TbhNjvGl99KVaX532HufSICPwww5QkSLdzerHK1T6ju
         sP+PXhf+s4bcgsKm11aPk4WM5tFv5N7VoCCQd9y9SO/cbDO3j42Nj19qKjLr6wT3+c01
         aing==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XasYS3MqZKmkPtXqDWrHLK9dJr8m+LQGw66I8l+B4mc=;
        b=QZ2j4AfBUuCGKhgKCXGWBgAaLMSVNPw5R6yrC19VQP8hfErMcwOidn3ozCnwnbUCq3
         A2loIdvnPUmOku6IZAoMJTveITQ53orF9AS8CmMtdd4tM2Al2lIe4OSqYnX4EtbHWhly
         KOM2hXvUcp7UG6Bku8ZC7eGdICshT7v4B4Q1dRxlmzrnu4IQKwDjgvD7lGXJIJKHz3Xi
         8Sv03Kd3D+zObLmd3QSanFMl+zIYvIaltsNr3eVXIf9BcsGfMqIpk7syQoTRg1dixcKp
         DFoiS6QBUPb0eerT2roMqFiCTQEIPoBKP4/w6KE79lJZQAigC3XfSwkAm+V/H/Q3CHHS
         6SzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KtEM9Mncq5vmY4KSbZuSoIquDJz+uOMipBLiSN0x4td/HkfFZ
	ermp+yuyqAxxUbFbFClHUrY=
X-Google-Smtp-Source: ABdhPJxL2AVYPXtR3YEK2Z53B1iZ6ZQF4X/FjjjtleLLoDmBDksIL+r+fzDYJK0wLqzkSHXlKbnfiA==
X-Received: by 2002:a2e:8746:: with SMTP id q6mr30057545ljj.416.1620850944247;
        Wed, 12 May 2021 13:22:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls2327054lfu.1.gmail; Wed,
 12 May 2021 13:22:23 -0700 (PDT)
X-Received: by 2002:ac2:555e:: with SMTP id l30mr25358686lfk.199.1620850943143;
        Wed, 12 May 2021 13:22:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620850943; cv=none;
        d=google.com; s=arc-20160816;
        b=irvBHtPglgpN8L+a++WrBcrF40eMXFXtuImtR91LRSu4QFHtrFhHtjI+J1pIJOsQQ4
         oSLlqNVLHMkFT2h+lKm585kp96bupb9tjCgKpSY8r3hSsMHTNN2HijwX7fyKnoftc3JG
         OlFiHkTc1eFAeEeN60+AQQFhAa1g6Q+nZRTjcoxZbp7GRMoFipBLl5Frov/jzaz/h6y4
         e6Q7ahKLOF08AexQw5RHU3YX//MuPYCIg40l8IkwLCl3/vXM7Qgvz0sEJ2Zg2pUVGLPN
         bZqeCOWrVswzcDBJ0yAjoa3BoAmeRyVndEewO7sHVOJQH9d8Y5+opP+7VRDfphxjVdOw
         RGdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PnZCmbDb0NNgk8hMLcIoIm7j8Q5j6bGpUEhwT6cN7SY=;
        b=gea11qiSbsSRF+tsiWwkPg7OxNy1IOVawmqnHo53E3Bah5YM/JJ7BkP5f9HILsechA
         FCT2WH/PcFgawHLZTnqJhShTQ8agkPcwbu1vSftgY9QzLmDjCKWO4AKGqHe2FaszY+vT
         BUTxe/Di5kECQDm2EBFPIJtUpaAzpJPCKaNPR4+rMvvERBaiayGRcHoDz/nWKQytRO4J
         6rBvmXRQcNdpMTFLjU3NgUNigO72eh04J0uf6KIVeyF/kKjtxVMj8Bt40PvpJOdFYw/y
         /Vq9NxiQtDH5dZ3Bke/sFqGSSGMDeoP2RCP7s8C1PprPXPluQYz1175Zw2CxP6OP6kaU
         0DVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 78.133.224.34 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
Received: from angie.orcam.me.uk (angie.orcam.me.uk. [78.133.224.34])
        by gmr-mx.google.com with ESMTP id b7si44139ljj.1.2021.05.12.13.22.22
        for <clang-built-linux@googlegroups.com>;
        Wed, 12 May 2021 13:22:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@orcam.me.uk designates 78.133.224.34 as permitted sender) client-ip=78.133.224.34;
Received: by angie.orcam.me.uk (Postfix, from userid 500)
	id BA9D992009C; Wed, 12 May 2021 22:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by angie.orcam.me.uk (Postfix) with ESMTP id AD48792009B;
	Wed, 12 May 2021 22:22:21 +0200 (CEST)
Date: Wed, 12 May 2021 22:22:21 +0200 (CEST)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
cc: Nathan Chancellor <nathan@kernel.org>, 
    Naresh Kamboju <naresh.kamboju@linaro.org>, 
    open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org, 
    lkft-triage@lists.linaro.org, Jon Hunter <jonathanh@nvidia.com>, 
    linux-stable <stable@vger.kernel.org>, Pavel Machek <pavel@denx.de>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    Linus Torvalds <torvalds@linux-foundation.org>, 
    Guenter Roeck <linux@roeck-us.net>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Huacai Chen <chenhuacai@kernel.org>
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
In-Reply-To: <YJwnb4BwQEr7xFsV@kroah.com>
Message-ID: <alpine.DEB.2.21.2105122213440.3032@angie.orcam.me.uk>
References: <20210512144837.204217980@linuxfoundation.org> <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com> <YJwW2bNXGZw5kmpo@kroah.com> <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com> <YJwjuJrYiyS/eeR8@kroah.com>
 <8615959b-9054-5c9f-0afa-f15672274d12@kernel.org> <YJwnb4BwQEr7xFsV@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@orcam.me.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@orcam.me.uk designates
 78.133.224.34 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
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

On Wed, 12 May 2021, Greg Kroah-Hartman wrote:

> > > > > > mips clang build breaks on stable rc 5.4 .. 5.12 due to below warnings / errors
> > > > > >   - mips (defconfig) with clang-12
> > > > > >   - mips (tinyconfig) with clang-12
> > > > > >   - mips (allnoconfig) with clang-12
> > > > > > 
> > > > > > make --silent --keep-going --jobs=8
> > > > > > O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=mips
> > > > > > CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > > > > > clang'
> > > > > > kernel/time/hrtimer.c:318:2: error: couldn't allocate output register
> > > > > > for constraint 'x'
> > > > > >          do_div(tmp, (u32) div);
> > > > > >          ^
> > > > > > include/asm-generic/div64.h:243:11: note: expanded from macro 'do_div'
> > > > > >                  __rem = __div64_32(&(n), __base);       \
> > > > > >                          ^
> > > > > > arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
> > > > > >                  __asm__("divu   $0, %z1, %z2"                           \
> > > > > >                          ^
> > > > > > 1 error generated.
> > > > > 
> > > > > Does this also show up in Linus's tree?  The same MIPS patch is there as
> > > > > well from what I can tell.
> > > > 
> > > > No.
> > > > Linus's tree builds MIPS clang successfully.
> > > 
> > > Ick, ok, I'll go drop this and let a MIPS developer send us the correct
> > > thing.
> > > 
> > > thanks!
> > > 
> > > greg k-h
> > > 
> > 
> > I think you just need to grab commits c1d337d45ec0 ("MIPS: Avoid DIVU in
> > `__div64_32' is result would be zero") and 25ab14cbe9d1 ("MIPS: Avoid
> > handcoded DIVU in `__div64_32' altogether") to fix this up.
> 
> It was easier for me to drop it, let's see if any MIPS developers (are
> there any anymore?) care enough to send the proper series.

 Thomas, I told you it would work better if the original fix was replaced 
ahead of a pull request to Linus rather than updated with the follow-ups.  

 Will you be able to fix up the mess in this case?  I can offer no more 
than just the commits quoted above, there's no better fix.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2105122213440.3032%40angie.orcam.me.uk.
