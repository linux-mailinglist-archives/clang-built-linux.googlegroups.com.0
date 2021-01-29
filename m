Return-Path: <clang-built-linux+bncBCDITI7XW4DRBZXM2GAAMGQEZGMS3DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE38308EC1
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:56:07 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id p6sf1834631ljg.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:56:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611953767; cv=pass;
        d=google.com; s=arc-20160816;
        b=QXTnvdPh9vp/R4ZzFSLGDq/IPrPbWEAABvr/vz7ze1sIXcss1Xpnp1WLo0p2eve7U3
         kg93mwlHpRETwpRJMZhD2nPHay0JLNC+5ZYgurOjnPtAs6j8HDUNSqZR2enJS6yik5l8
         rWPXuArDv2krMiV6WYh5y1hmBYVo27c5qczW+Ii8HQn/OvGf4x1avnCod/KxMpxplwuQ
         /pQlwGgFGOeRQVTwdbN2MPHV/dH3/2iu/EFzoh5msJwJ2fmb5/0FlEAyjniV/jqc2sPa
         TZi2FY24CRcUTebuV1W/ETrzsRIms6QKeya+/9zbr0MYGFHyzCX7ziwgBn2S0soziIqn
         ijFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=5VFE2Iym5OiTGDsokDwZxFXURtWhqU8G9NlFieA/KJI=;
        b=MWO9qenMbLAUdqakPyMwOYlTh9yjuvkA90byXbcNXhRU+fWLhHoZN8Y9/8e0Esq58f
         O3C+IV3E7bKPna8RF7JjTOpAIyLNEx27WFweDi02EHkkh1AnQZWmVzRC1Kef5deAQbk0
         1L1gxhbLbaqvqHJtPgcc8cXYIxard2eg5dfSQzBYOgCdqWwmu/BgcIXrztJjJmP94ax+
         e5ErghqG/A0D89mrqH/gQQuwy92vSMmBIjZK4YDocWqUGsIuz+i7a3ZENkzlSPpX7ZGq
         aLRqXFnF5VztDGnG8qrXfCNEVQ/yzikUk/5RCnFByXkq9viRy6lYTpbodkGsoKBH/tJB
         Zoaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5VFE2Iym5OiTGDsokDwZxFXURtWhqU8G9NlFieA/KJI=;
        b=LkN/iwBKL3W9EtjLZ1xBdnEyK9Ts84Dzo0lytsDF53dDaACYL0+OxjA01b1QldI67F
         d21YUBgwxGsZVl7MvsHHgcCzidGlaogCOZXC8o5P8DByHPIxEKnhR6VqwxwPBEDaNWVj
         kJPxS/EQq7bFRq/j2NI1IejhRBTqR0dX9SUw1pZNlxroXaZhF5Mjyh3KX0S8tb3npPOs
         A+72EcKGSNWPMvPtv+cgy8E2zF063SU20t+iTx2hx1JCV2BmHIKRY/Aycd4dMgM1/KLr
         cUW/NzZB6WWxsX0mcuUfbQit2RoCEBXDkP8OpfelM+ZWebMWlJtdAJkTGp56A46oLqmd
         IPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5VFE2Iym5OiTGDsokDwZxFXURtWhqU8G9NlFieA/KJI=;
        b=m7pWcDEJ44vc2sTDUjxU8YztSusGOhrEy3Dm+PF6oQokrJwPnnazKnR+WMGmbzk4gj
         Ee2rpDSknjI1HMLTlXvSdAZfPJRfvEogl+CGW7+dyAHBbDZkVMG8lJE4383kvW1gRORh
         1YZZk+p8zK+8S8not7zvSUtcBruVxONZZzX6HHBQYQLIoN++E7xhF5b5XqXyET9h3wCs
         PUHqz+dEBaFTQl0HxnyyrgRePDe9hy7ZdlYywB5KtDBTQwcmJ1sAVzBSEVO68A8o0sEe
         Bt5urH3CNSBtwHscLS5H1uA0+tzdqJsRi8Lpii5fE/6N/d5NRsB0+RMDLmW95GAFdKED
         onLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533avIKq3vZQY0RxgVyvQDN+UdXL7CspyC/bWoJ4vcrjsutk1hgm
	NEfDAIzmZabvn7ih6TebHZs=
X-Google-Smtp-Source: ABdhPJxmXaWI87AejWth7IO8npbT1IdsZmorcSY1MFuVxwWI9I63W0g1QKQw0jxXz0i8r4GUj6T4Hg==
X-Received: by 2002:a2e:9090:: with SMTP id l16mr3523713ljg.122.1611953767107;
        Fri, 29 Jan 2021 12:56:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5519:: with SMTP id j25ls863111lfk.2.gmail; Fri, 29 Jan
 2021 12:56:05 -0800 (PST)
X-Received: by 2002:ac2:5e2a:: with SMTP id o10mr2873277lfg.349.1611953765905;
        Fri, 29 Jan 2021 12:56:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611953765; cv=none;
        d=google.com; s=arc-20160816;
        b=f5ffSGPJE04LH2N//roagdEyk/6dIzlk1O0PaWVVYYNa1OzqXyLU4JSs8s2wV88ZT/
         ZhNG1A9LS+MntRNl/wfPEAt81PKcYTIQ2H1KwtXFEsDdFx3n68MfNGplV8O8NWDpqqD4
         BTyr/rlemnzWrX8KEB9hH5D7wahqP2DvkEqMwd7+J5TJ+34fLav8Q+P6i1liBJ/7ogfE
         raCv8GWn7YecaWoa0RHAmOqLC1fxuDI+yYoXUnNoj0ryRBuO+ksWnsTeOmYZZJpw6wZo
         C7plYJP9CMPfMc8iyEbZcbHs50czgUXAcgmWEzHYJo9fU3I6XM/kEYKp/Ipgl+vGfGan
         gOvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version;
        bh=VBmJqWS4K2XUaQaaJ4eku79fqkYqj5EcqpxrgGjMKjs=;
        b=YwZB1F0/oqSAyd3qUBSqQs2BJaPRjnPgygZPmKj1QMP0rSTYF64j4+ModreVwTW45g
         VCXnX6NViWpKvSyiA5QcyDkkpccW/vqAK673PasJrvmmQ+wblP9/lVR/2eLl9hka8Cs2
         97PdIWCzYx5v0dcWk4tOuRXBUJb2JVb97Q5KoX9yq6E6JAPBP+aU782agwTFcLHo22MG
         xTTbWG5jmVmw14H2YBJw9FoF27pamtPOqwLOLQHv7I7Dn2YW+IgwXemNdiA8Y7F7gJWD
         WzjGi7YDca+RJlpcV/UMcGPWa6soNOS95Xu396Z5BeybIJ+VMAqh/a60faFleEbVB5jw
         sPQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com ([77.68.26.236])
        by gmr-mx.google.com with ESMTPS id c6si364128ljk.2.2021.01.29.12.56.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:56:05 -0800 (PST)
Received-SPF: neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=77.68.26.236;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 23741559-1500050 
	for multiple; Fri, 29 Jan 2021 20:55:55 +0000
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20210129181519.69963-1-viniciustinti@gmail.com>
References: <20210129181519.69963-1-viniciustinti@gmail.com>
Subject: Re: [PATCH] drm/i915: Remove unreachable code
From: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Vinicius Tinti <viniciustinti@gmail.com>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinicius Tinti <viniciustinti@gmail.com>
Date: Fri, 29 Jan 2021 20:55:54 +0000
Message-ID: <161195375417.17568.2762721732398065240@build.alporthouse.com>
User-Agent: alot/0.9
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 77.68.26.236 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
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

Quoting Vinicius Tinti (2021-01-29 18:15:19)
> By enabling -Wunreachable-code-aggressive on Clang the following code
> paths are unreachable.

That code exists as commentary and, especially for sdvo, library
functions that we may need in future.

The ivb-gt1 case => as we now set the gt level for ivb, should we not
enable the optimisation for ivb unaffected by the w/a? Just no one has
taken the time to see if it causes a regression.

For error state, the question remains whether we should revert to
uncompressed data if the compressed stream is larger than the original.
-Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161195375417.17568.2762721732398065240%40build.alporthouse.com.
