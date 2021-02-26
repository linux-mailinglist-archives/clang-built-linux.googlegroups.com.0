Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBLW34KAQMGQEWXGM3ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A2D325EB1
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 09:13:34 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id f18sf1500608wmq.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 00:13:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614327214; cv=pass;
        d=google.com; s=arc-20160816;
        b=bGU16d4rbWCcSFKhjuJt/DCdsyGqSpULbFl/8y7eePtcdp/MLnbz/KGrcVnblQotdX
         aNJDVtwxgNJSg2scWIL/L2Iy1kPLh36C6rnuS5U+1i+KkOLTBmexjUtZKJY8Myzab4S/
         Xy7/QfumXjQsp4QdDU78hsfrlKewUcD/EJvqzFxkTB8Mt13p1qEbgtyna1kSKlc/X0I5
         /YUvQ4frHrft2PWzVdEEY9ue9kcopaQ30U2YXbCyQ2GHicFEjaoWsBE8H3qwz8LcLOYK
         ovYCaYl1fLhBYD6yQ5oIWZSgv0WnS7i70qaaqo8ZzqAky6QPW3DxdBGbks3w7qXj0djm
         KT1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BgScqk1jF6Xsb4GEo4HaC98weE0teFOgYY6lSKRRJcc=;
        b=PSYlcqgtn+V2rS2GA6P2MxCcNBVCffSboiJzQZuoZMFzi7719AnQf+x8Ey4PB+BcV3
         RhuJ40VCbkHPdedxZrmx8Jv2TQjQF7mrELMnCumlwIDgoJwIs0jqAI2j/gMz84H8iIxq
         cVkz8ptoWiCo2skLw5ZOPFtNz9eR9g9wBdvbm+3J2HV2v7jvgkUAWjzZAt83scWVga4U
         hpyvG11ySXcFVOZkrrOqMnlxskjU6PVnvZss4LT5tMg61IFxsQif7oCUXHvhbWIxKCgl
         9Zn6X7ZgwSQYguBAwogSF9UAs/qZgCR5RQ2a/29J1Ku3olLM4je6pPeXdSyiuCO4drbZ
         Wxhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=TbRfkcyf;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BgScqk1jF6Xsb4GEo4HaC98weE0teFOgYY6lSKRRJcc=;
        b=FJX5MtSAFpOBG0X/kkgx/kiBO54mnp3JLed4CPIP1EtN4v38qzty0QhUi6OKSgQzb0
         +t8B8SasLBtWufd5IIOiA5GW+IXRgjzXqb/iUuOBVkBUmpqd1hfYajsdeG6kLTAlLyBh
         0G+bPh/lbP9MBYpYNN/KdJnbtwa4UnXIBX0iRmzqVsvnOMhcENpQhLXI9o8lFGbdK2Z8
         t94G/kx+iXTmPwkVPkT8H8MKqxeTmu8c8ZGa5O3FdMCbKPi9HjufAPQmD9j/IMQHlGC9
         KZrrEjxYT06GiQoTyjjAjDZ+B0m2vZH4TR33NZn6RmCutN3jWJJSYMVNyxTJBLkaB3vd
         PrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BgScqk1jF6Xsb4GEo4HaC98weE0teFOgYY6lSKRRJcc=;
        b=jt0dv30GKKYd1+4elDYxE23RB4Pokgexx6MBGjJBVCTpp7whHt9meFzDp+3yHaAIeA
         Jv/NW5ThZu520ruKZsKTjGQCpwvTklfGxsDK1w4k5PQ3sf7F3y0vz1lc9MsdpMVWq9oh
         P+/FeJkhj39dVUu8P01/tCl/F6Xi9qMGkllT4MRVyU4BW0xCJtuztblfcyaJy3ZqokxC
         GRGG+dYORC5OlGCFMMVTgkRl0gCK5uqhQjlLdmq+ht9tHAxGmbqyehGU3l+BTXZ7zwVF
         uuvG45M3zNvjMq8Pqv9FOV3Nhu+RPg7MXGojPHfrhgMOYfpkO3P50RIc0qNfpwxV1mr8
         l/tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qXp8GB+UZSpN0eDD+gefo0t0GpwwLB4N+WarMR51dgR1+o40K
	k7Srwp3Nwkl699i5MKnbiWM=
X-Google-Smtp-Source: ABdhPJy52p0pwc6yuq9Gl6IycP1jxyPU1Valqnp2DrplrHPLGJti4p8ma5Iar8D5rZ+5d+1CaoPMYA==
X-Received: by 2002:a1c:7e85:: with SMTP id z127mr1574403wmc.131.1614327214211;
        Fri, 26 Feb 2021 00:13:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls946647wru.2.gmail; Fri, 26 Feb
 2021 00:13:33 -0800 (PST)
X-Received: by 2002:a5d:658d:: with SMTP id q13mr1883868wru.388.1614327213365;
        Fri, 26 Feb 2021 00:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614327213; cv=none;
        d=google.com; s=arc-20160816;
        b=lxw6Som7BjYiu319Q67kzKG5huBw6CkRZhoLkjcgijv/XltPeax7WiIfnyDtT1XJ8R
         +/9pkuoaNB21OIA4LLr+lBjroA5vQdfglXzHMP9IeSdk7y7W51Wr+34avCI/VSylIKXj
         QgriZ6+nITLG7+kY8eozAfi3woPNZupBMjrgh8x9xBAuXid23kIHVmVmieVANceJiP4y
         3TnFGpd9R4XJvpg0iMut8wl2JMGZhR0LH63uVNFbqDXwDbxp9JgH0irvw74gkWvgs33J
         QlBM3abz1Ff4eSl49H0Ki02R63r14rCFvpn/2EpJ4wQPDhvVnMRDA0Gmy/5iNsEeI2+D
         mgIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=l1+9HfOoW+GEk2Nht8GoIcMQYtZGuUP8lH6O60vFDzA=;
        b=WF/SStiefonnnHb+n0qdg4Pa4ToORo8po43PtYUHknrm7IieC8ydZOF/urzgJ/Mcyf
         VBRsQ2tZiBV9ovAO1UcG3Q14q9JwkE+SvwXEaSKYyIcke8liI/FBkNkqWyLTFd/mYc7f
         Fs7stlCekGc/73CYrNDxvwuWvPHGx7fQVtBdkl+hI8/Aw9z5CXBt2EDn5UUCmTPBmidO
         DOB1awvpmOCyDUoAXQ62derSpz6ter8IMRu0kUkKiYD/TIPT/TK1tWXHnnfvudxCb+E9
         ibUAscSwTd6jPPKrLUPb9whs3aDNquhNeWYTo8rzh8tnweQs2gmsyTt+zTvSzSoSkGNm
         cyfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=TbRfkcyf;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id m3si743596wme.0.2021.02.26.00.13.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 00:13:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f08690046fe8a0234e2694f.dip0.t-ipconnect.de [IPv6:2003:ec:2f08:6900:46fe:8a02:34e2:694f])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id BDAA71EC03A0;
	Fri, 26 Feb 2021 09:13:32 +0100 (CET)
Date: Fri, 26 Feb 2021 09:13:27 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
Message-ID: <20210226081327.GB19284@zn.tnic>
References: <20210225112247.2240389-1-arnd@kernel.org>
 <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
 <20210225124218.GC380@zn.tnic>
 <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
 <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
 <20210225213300.GF380@zn.tnic>
 <CAKwvOdkKjOb8fS7NgFxvAwEQTp3fPjenhvehnjh5xRw=HevQ=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkKjOb8fS7NgFxvAwEQTp3fPjenhvehnjh5xRw=HevQ=Q@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=TbRfkcyf;       spf=pass
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

On Thu, Feb 25, 2021 at 01:58:48PM -0800, Nick Desaulniers wrote:
> The config that reproduces it wasn't shared here; I wouldn't be
> surprised if this was found via randconfig that enabled some config
> that led to excessive code bloat somewhere somehow.

I'm sceptical it is the .config. As I said, those single function calls
which I could replace by hand - the wrappers simply make the code
cleaner. They could just as well be macros FWIW and then the inlining
will be practically forced at preprocess time.

> Oh, I don't expect everyone to; just leaving breadcrumbs showing other
> people on thread how to fish. ;)

Yap, that's appreciated.

> Sure, it doesn't really matter to me which way this is fixed.  I
> personally prefer placing functions in the correct sections and
> letting the compiler be flexible, since if all of this is to satisfy
> some randconfig then __always_inline is making a decision for all
> configs, but perhaps it doesn't matter.

I hope.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226081327.GB19284%40zn.tnic.
