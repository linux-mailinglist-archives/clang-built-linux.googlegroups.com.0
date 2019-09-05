Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBKVEYPVQKGQEXBZASEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FCEA9DF8
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 11:15:22 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id z3sf266229wmk.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Sep 2019 02:15:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567674922; cv=pass;
        d=google.com; s=arc-20160816;
        b=hIS+iWLjk3jFsDewvNV96OrIfeBgcLCk0vLtQrMqK7DJK8rC2916WgrkoHHofNeLOz
         bIYFREVHffo14KzGYPnzYkBlBz+X6eAFtpnI8W4wMfDaVsoEoAEDAxgkaxq40MFV5Jq3
         ezDqiLcLKSlH4KK5KxD0ZnAyOqT4whgOqeZ1eF+LLA9eXYsZ8CHuKg88X5RAZ1b/cPHX
         gF13FQnW3P71NdpxDkvQAcwmG2g2xsmeaE8x2dfNBxOnh5QGF95AJLCdUwkhvevHeGz7
         P5hyIT1jrxNtCdd3pibcdz828EbcZ/RfUQcKwOoHwVyMWe+mAUGOe9ffvYLN9XBcZK24
         Hp4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9ye7WkmYyZPWqrky/a+g7ZnhF8AlugAXd2I7jQdN1eA=;
        b=LCoq1T4FLfgPHp848r9hWFaFSMx8HDUoDf0UNWNh9xHHtxKYLLs4FUHv7ADQ6HqPru
         ehyZ6zsFmOrieu1S0LfrlNR4bIsxk1UswGr2RAXAHWl9q182lm+StuKd1tBg43hsZCTC
         j+LmF0/Cqn38ExucYXUzak10v5g+kWaHfEUZThA5CmxhyYHSMzdF3w6dPUcQ98mFv9SL
         /bq3/8UEHjMhl0SqLkXtgYzspbtUEbOCnjJ2Emo7fpidxN9zPgNDA9uW9MgkjWvdXsJK
         n6dqLlBmll5jgxYOCgeM7/uOUNohA0NPe0VSC7eUcgloKBXyM6B1Y6wfYIdStg54haBu
         gIzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=BbVfEcGX;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9ye7WkmYyZPWqrky/a+g7ZnhF8AlugAXd2I7jQdN1eA=;
        b=o9BGosJmp+Mm9WUmI2jK43jV4mmfmiUqLU8IW/xvWlxjh4Be0EI83fxFDkK9GKLwvP
         M/A6/prEZLuMjxstOxSNLJbc6S+auHRymHGduKtpO3Fur8gPoTxebYZuoCPPCdTVIEsj
         EfAfR+VO6u9fqZoMm6jkWpUFkZV6tVtmK7Jw4eEe6m+9OzB1vJX44MFDhd2lKV57ERaj
         b+tZ06gjJRVmEbBsoGmz7LnG4LaERyyBsVSIEXqIUSzOKzZTkXJy9EILdjgbSrcV34vr
         GRIyJi05kRERwSI014ws0L+PZO2SHcp8aHY6Qa9jTvUtlOCiFOtxS7Uw2ymplYe1CpHZ
         XpEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9ye7WkmYyZPWqrky/a+g7ZnhF8AlugAXd2I7jQdN1eA=;
        b=DHyB/uYc6xsK8xF8BcrBuV5dqWWQw2LLds2qGaVZvzd/tLBL2374PLrrUtA72hajmZ
         nebWp2XJfBsEzHzYBlvpkhZpml6U+JxGibOSPts9YP0mGUVWOEWJv3Wb1ZwtXhSiesfL
         VyB3z+QhIig1O8SmWK0gIuSuN3V6qP7yFBQUgHjPcC67UCQVMaLL9nvSCLm64uKAOpuO
         0fOu0h1y9dOmTvL2p8B/bw5CdhnRgLCx17lo4k3SAjI37dXpTRMz5dfQN2jbXvMb0bql
         LsFAqjfwyYwlBLB94roVTBt9yzf67/635R6ygOMLiTKcwCpcU3WthfX9sjtBPDLt3voF
         VDiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWzqxY041C6oNKmy0/NE0uwP+LjloE1km9hNFmq7LinzhNVN4Xt
	bedEurA1kgwrV6cjLjY9Xp8=
X-Google-Smtp-Source: APXvYqwW6XFokFPci/4UPjiLLu8IDupJfkH0GKXWuWzu/OUDWZDNCRK9x1lTN+xUWSfzItntLRFYxg==
X-Received: by 2002:adf:dd02:: with SMTP id a2mr1738218wrm.15.1567674922127;
        Thu, 05 Sep 2019 02:15:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c3da:: with SMTP id t26ls558988wmj.2.gmail; Thu, 05 Sep
 2019 02:15:21 -0700 (PDT)
X-Received: by 2002:a05:600c:34d:: with SMTP id u13mr1997555wmd.97.1567674921729;
        Thu, 05 Sep 2019 02:15:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567674921; cv=none;
        d=google.com; s=arc-20160816;
        b=u8+hb6FhkqtYiF9SYYBl9JA+wxd1IbfgWlh2cx5LzyYDyijP0Yye2uR+5tSzm9mjHH
         v6zPuOuDUpxZdVONsBrXaCN/fdhgaw+z1qhblHwJV4NlVlGkZ8WQ8UPaHyIo7EUKmQlA
         2BZWB2BlkcESNTsTBYNG8JSZxKJE75W+uiB4q/cmwoPCnUaM9pwyKZhxzmFaZJC9zsyP
         KNDFItaNvMAy8d/tbKcAi88voJzCebgl24oX4LOSgcLVDxZDRgkBTSr/VQhsT3X6qC1D
         BKBZ0GIlwF8PNKFh3YJZJBMeaQ6qjdwnKhaQbetF9CSunM3slBHg4B9tz+x7Mn3HzCLJ
         n8bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FQa5pOo72S+jI4zr4GX6frwocxhPc2IhNcrD8ofhhsY=;
        b=Wu7VR2MpXAYIeBMYw/Prjj5d+B7cC/4dhuAAugzoI8oGMtvxHhdk67IAnIhWhHhUlI
         3GAAiOWzK9tPX+9k/D+vWlDrOUN8NGDjGaLAqARnY9yT8F4ZuTbK9nKALULVuhCP+04p
         emHPYYFrhvDLTJhuNnBVa223AxnyMPlPcuo0m5Rw/okCIGczLjawodG/9ODOfIm5hh6X
         dVxqLb9px1LH4WiBfUHKBh4GWfeT/5ZUkt+5poFZjj7NxXdxwatK/YYIqxjMPkg03iHq
         82t+S2k2tNJnQUbz8pzOGf4+1DLVUPp99BnkVWQt8ON7x28Ble6Cs3gGonpW3HmDik2E
         nPYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=BbVfEcGX;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id a198si315354wma.4.2019.09.05.02.15.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 02:15:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F0A5F00AD0514FFC49C0308.dip0.t-ipconnect.de [IPv6:2003:ec:2f0a:5f00:ad05:14ff:c49c:308])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 2096C1EC06F3;
	Thu,  5 Sep 2019 11:15:21 +0200 (CEST)
Date: Thu, 5 Sep 2019 11:15:14 +0200
From: Borislav Petkov <bp@alien8.de>
To: Steve Wahl <steve.wahl@hpe.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, vaibhavrustagi@google.com,
	russ.anderson@hpe.com, dimitri.sivanich@hpe.com,
	mike.travis@hpe.com
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
Message-ID: <20190905091514.GA21479@zn.tnic>
References: <20190904214505.GA15093@swahl-linux>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190904214505.GA15093@swahl-linux>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=BbVfEcGX;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, Sep 04, 2019 at 04:45:05PM -0500, Steve Wahl wrote:
> The last change to this Makefile caused relocation errors when loading
> a kdump kernel.

How do those relocation errors look like?

What exactly caused those errors, the flags removal from
kexec-purgatory.o?

Because this is the difference I can see from

b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS")

Or is it something else?

Can we have the failure properly explained in the commit message pls?

> This change restores the appropriate flags, without

You don't have to say "This change" in the commit message - it is
obvious which change you're talking about. Instead say: "Restore the
appropriate... "

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190905091514.GA21479%40zn.tnic.
