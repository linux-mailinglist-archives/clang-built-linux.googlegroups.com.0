Return-Path: <clang-built-linux+bncBD4LX4523YGBBIP532EAMGQESX46KOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADF73EC2C1
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 15:01:25 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id f9-20020a1709028609b0290128bcba6be7sf7900536plo.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 06:01:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628946084; cv=pass;
        d=google.com; s=arc-20160816;
        b=gBQcNmCaHBoLrlTQhR3nxeE09N2EFxKO0FBQME+2buJOl1yX4oM0nAUNX0SiDtYpe1
         D2fueEMGRyjSeE+6nW421py0d8UPNk8VgH/s4N6YNrul9EhWMpI2Aa29mA15eryDxsiu
         7r3gbBNOnz14v52VyRKXJbcsxMvKag1n752o2Z8JgmXr+SOM5F3+QWHdCP3L8lWtoFqz
         5qBOljuZ+PU7W816arZT08ph98lxFkCmuRmXdG56ZXf2yTpS2NM2THWjJ4BIf2ymTZzx
         s2go8k3V5tFCcJu+R5y7sL82idr6gVHkGlm/VK4lAzA8NiASIpoYzHFws2GDYM0L7Aq7
         egTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uwKv7UCXU0mLuIHNgDHoS3R53UpIYAxibWyh7WZHafY=;
        b=MhNrVNtI1F2kVr6ODSJOA5IFiL69QpeLyVA8lNnCPfaGXCncRxdv73JjhFRttMkph4
         IlqhcZBZjcPn5FlQYPWzbFMM0pB/wpTHPTCEZhVE7/MwX8Kxv7y4kWtm3p8yJGxoKQNk
         9xcrmMC6h/qWgWos+fmfJdNCD/4GY7n+Bw3DdD1m9h/LEEzbbVLpX49GR2e/JrXMLPJI
         bu3IQCGuensev+sZglzdawJncKpDwcHHH+BIE4Wi0XlEu0W38BnytsEyHcns4IC1d5c4
         Ho0HKXrYF86cO1H2cdWYrMCCFYCLHsQXJABctTRHT5aznEawYc0KxdZ5yuFoM6WBIeh1
         cGBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uwKv7UCXU0mLuIHNgDHoS3R53UpIYAxibWyh7WZHafY=;
        b=lsTh3kARJKc8yAHJf8viHdPZryyoOAjjHpPseo5FjvauLQ+ZsSAFPlVOP6MQkOCSqw
         pK6YZt3GqfwEo1yezd7z5e5718R4TSPhG44IaVnmghok49YSe1Y+O/RzJ5z6AxbsvyVv
         vu9833jK/Fe0CgmS4rMKul0xckLHYhzT38g1653WIwEFGyiYt1z1IHLUD0/hQj7P50RX
         Rp5FQ1zeQziULPDRMXNhQkAWAPs7+E2YjloarAdnIcepPkfGSIwPxngFMeMRXLxQyzWq
         FpwI7IE28c7GNp+7vHlYCJQ7HSA404Iru1KCQsRqvGuiAyckrhCAbP2qnqQAT971SqL2
         8ECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uwKv7UCXU0mLuIHNgDHoS3R53UpIYAxibWyh7WZHafY=;
        b=Vawqnuo2a2fh5WT8/kNqkHkC1jtn9v7z0ONYm43teyjbGL5AbJf8EcsOtLwEs1FW7d
         D1zUDKbYVs01yihY7BGL5aSgVIaxhIy91Ouv4v18zallutMN8IaQFv3DEq4pIj06bmMf
         vp2UIM1o9sF/BhSUyhWbwWeMZVCJrrSvJ2OeBiRBD4fkwbNqEUPiRQcrndPzTN7b6/Ge
         aMdgWZMVaxoR3CgS3F2wPw3dXRxUM1nOHcWMc5com1MeM9qyDquRjZrT81YsyKHiX447
         bJyYoan2NpPNQzav424aSr7HcbaHMj+V1FvIYlAlvb81TyakmmYOFlyHoSU/mcQH+nmJ
         qiPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RrW1JEKW9eDN62J3w+bTRMFDbAN8pNpBVaMh3k/yiws0BZJTT
	f2hycYJ+ATNwgmKAFhVWHlM=
X-Google-Smtp-Source: ABdhPJxJ5rfBIHy5JwTErX9MDKIz46rv3dLs+W902oqXlG3n6bulN5rPzxhJOJm73sR3n4/oIzSYRA==
X-Received: by 2002:a17:90a:a016:: with SMTP id q22mr7590114pjp.34.1628946083997;
        Sat, 14 Aug 2021 06:01:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ff04:: with SMTP id k4ls1626412pgi.11.gmail; Sat, 14 Aug
 2021 06:01:21 -0700 (PDT)
X-Received: by 2002:a63:306:: with SMTP id 6mr6754376pgd.237.1628946080821;
        Sat, 14 Aug 2021 06:01:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628946080; cv=none;
        d=google.com; s=arc-20160816;
        b=KrNb1fnlhtsDqLtGxC9asYH0sDu77A2TRZWibWxgpJKtZn2Wel9IiVmNV7lTj7w7ty
         lUnLn9mnfQbvVcjgJJYKTyElAi3tWtoJB4fsI8Ml1dOeXgVW2oQCu8ZlJXgDrFpTUr7e
         quQgbp3vnbIbodCdZhafpdi652FXeZDswIT/uR5qRqs/GgSRfVj+Y9VANZlu7ZS/a/x0
         xE9l0ZnwQ3QupNyIxUJ3cVjtV9WvjAAorXYKoeR/j9WuXIIkInJGo+wrAxFTA6kY60SI
         1PtWXDdi8ljzFCYeFW3rqsFTqIfITqbFR2darSysBY/8GVcrS9FXPuLwYGqWIAcsdDUc
         ZwBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7tQI21wdj3hN7JVSuOBcCg+iTSIKYftGfQyWD7iLrLE=;
        b=PWu9iGdoMRgjEz/Prru6DD6LLBBaD+6E3/anFAkrkkHYZb1rS81dplmiXoob9WtxxV
         b6F2ydjvkctXGi4YcXKzrHzyLiMK/MpM4KL+8ibJpMKuYXJvXPYMdeL0ZtZp3M+WXPbt
         FBGst5e/oW/23oTlgi9SKhZ32C4c9+mIQ0aBcRokWZ74ZlZeraLAdW+wJ6lPj+LxnAU7
         gt9DeF3BDjYyQCVJLr3224zlKcR06GXe2i1gXwhIkmh/if6H1O2JWxChoqV2JHOaHQ+k
         KEyMumLbeCqyTRCNaVano2IaUdltVzOgP0KM+BZ2irdcFrZf7h/Gg9fcT4HInbvaK5D6
         ZOuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id bb19si246597pjb.2.2021.08.14.06.01.20
        for <clang-built-linux@googlegroups.com>;
        Sat, 14 Aug 2021 06:01:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 17ECwEDi013900;
	Sat, 14 Aug 2021 07:58:14 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 17ECwCY0013899;
	Sat, 14 Aug 2021 07:58:12 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 14 Aug 2021 07:58:12 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Fangrui Song <maskray@google.com>
Cc: Daniel Axtens <dja@axtens.net>, Nick Desaulniers <ndesaulniers@google.com>,
        linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>,
        Bill Wendling <morbo@google.com>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
Message-ID: <20210814125812.GC1583@gate.crashing.org>
References: <20210812204951.1551782-1-morbo@google.com> <87sfzde8lk.fsf@linkitivity.dja.id.au> <20210813200508.7bqehxgd6ruerds5@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210813200508.7bqehxgd6ruerds5@google.com>
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

On Fri, Aug 13, 2021 at 01:05:08PM -0700, Fangrui Song wrote:
> Text relocations are considered very awful by linker developers.

By very few linker developers.

> binutils 2.35 added --enable-textrel-check={no,warn,error}
> https://sourceware.org/bugzilla/show_bug.cgi?id=20824

Yes, some people wanted the default to be configurable.  So now we have
a default default that is sane, so most people get to reap the benefits
of having defaults at all, but we also allow other people to shoot
themselves (and people who have to deal with them) in the foot.
"Progress".  Changing the defaults should be a one-time event, only done
when the benefits strongly outweigh the costs.  Defaults should never be
configurable (by the user).

> I can imagine that in the future some Linux distributions (especially those
> focusing on security) will default their binutils to use
> --enable-textrel-check={no,warn,error}.

How would this be a benefit to security?

> In -no-pie links, R_PPC64_ADDR64 relocations are link-time constants.

Where "link" includes dynamic links as well.  There are no constants.

> There are no text relocations, therefore no need for -z notext.

This is a choice by the compiler, nothing more.  It saves some process
startup time, and allows slightly more maps to be shared by processes
that run the same images.  But it is a tradeoff, so it might change; and
of course it is not an ABI requirement.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210814125812.GC1583%40gate.crashing.org.
