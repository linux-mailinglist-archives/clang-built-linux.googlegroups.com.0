Return-Path: <clang-built-linux+bncBDSZXKXZ3MMRBQXZ6CCAMGQEFOALTLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id D145F37D44A
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 22:38:26 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id g70-20020a1c9d490000b0290169ee5690c4sf1307443wme.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 13:38:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620851906; cv=pass;
        d=google.com; s=arc-20160816;
        b=ofhmbXrPkxWHSR5y7UZu/9nitxNXoULbjoN9P5tUOsFV9EQFhJxxSMIa2sCfScxA/Y
         TKoOoMtQKuJeKOfpDPa9Be3VkHGNQGsICZ0SK8dwUI/PAsj/cCEDUYuEXxTVdVg/2zT8
         Eyfh9bD0WAE8TQyzCF+r0xxddGSRbn0JPtxshdlC/gd96Fc1ieLJG7B0rlMCjHgxZTkv
         PDMoSJzAuh5EBcIDT4jYHNgerBmkZUOlkPYneEZ2Sp5crwj8QNVUkFzXS63rDpwuQa9F
         EIPh8VNHLGH+KP31y5B0gcBduVR2vbsaVIUibe2IcJ4LmX+aza1cL8tJc7JIwue7L2WS
         befA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cwc5FFfDb138M/eFluzahr9w91X7zfa7F40SrtE0kPA=;
        b=iaPaedmLDrfVv03gUXBT0cv7samsWcTUMyFEf7DgwcypMXMUbbWnAFGLCToeg2z5zR
         EKiM2vbEJLfhwB1H4h4WnS4T+qhIxEMI6PBhwSr4gN5MXkiNmU5UoXOFLDCfqUtmlzrg
         xJ+Ktj2Fy2jR5QhgeTw2ohQYOV0I8PzWLvt9ajjuhRttrqXJZG+qR67eRamxUVWtKEuH
         U3LlPTxNTSkUeR2ExHoz1OE0hW97qorY6nUv9JaiaanaMNhwS27CUd28Wybn5rZgcBG4
         Mq+++c1txaTtg0CalGudisHJcqRK+bNxgLoi49I6WfcMhtRbIyakdT4GuU2HL6emDUaV
         owdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 78.133.224.34 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cwc5FFfDb138M/eFluzahr9w91X7zfa7F40SrtE0kPA=;
        b=Afo6m+3wWjIuIomqaZY2mOCedxVT6m8NTLhQiWDf0ZZx3tkXwCanna0JZQDlaZn65W
         sFGW4lCIJ2CSFM9e3op+pemncK81Oq7PMIvbvP7xAXn+r4ytnm53AiKK86I5Y+ib6qgC
         WSiNixwpVVYMU8fOeoG3ysNIg6cFpurF0tHrmOWpxWpxjauA0uMbA3ro3+t59xPIK4fM
         ACgo7XveM/yIU4auqBtiTylObbeV4hFGJ9VNviLiVEUi4qP+HOYLO0MBNTZWVh01xPwt
         PN6e4IpUteHww0VtCc54FcUJzsSNfZX3L6sgzKnJ3FJfdnOuFqLD6AfS7dN4Wg96OHPz
         pwtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cwc5FFfDb138M/eFluzahr9w91X7zfa7F40SrtE0kPA=;
        b=Kgz5Dy2yJeSVcmky7N2NySeq2Ape+6rsTgY0SPtvooNJDMb7vENxcC79W64f1bIhqu
         OFMn7nslj4iwbuqfjhrU0qKdqBgnnJ8vMuzS8H3CCL3X+GD8tExzzQIBINtO+bABv35Q
         fyV/MbnOU3RSD2gUk6SQEsXBGp+bvKwgBNYyqMBM3maLDHAUX89Y7+XmCfs2IVfWFHrK
         IjlqvuDKC21dNdYWxFaQlDTdntlVDAXW5zjHXEkcc1nT6LU5B7aRKIfmkFX7H3hg9syf
         ic64v9ZRPlaXQv1xWA3dlLIt+bAV9Rm2z0+cXJT8Q5TNbXQ6jHg6f6tBqrVoBr5FE9h9
         bHaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53205hDWnrXgc0m3iN5ma20+P3acDDe304vS54nc8XVBZNFpre9N
	BJjYVIplpkwLQqLtoI0nFag=
X-Google-Smtp-Source: ABdhPJzezqUG/ykZPswyfYLMWy32Fak9diFLOQdGNMiLAV6V/jH+5ieeaR4xFmIdzOHYTPhVmBrr5w==
X-Received: by 2002:a7b:c346:: with SMTP id l6mr3651696wmj.109.1620851906524;
        Wed, 12 May 2021 13:38:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1909:: with SMTP id j9ls3486979wmq.3.canary-gmail;
 Wed, 12 May 2021 13:38:25 -0700 (PDT)
X-Received: by 2002:a05:600c:4ca1:: with SMTP id g33mr4741026wmp.7.1620851905631;
        Wed, 12 May 2021 13:38:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620851905; cv=none;
        d=google.com; s=arc-20160816;
        b=bhpSCO1GhzjDC+vEskBSpIL+G0o14VHp/iZvtXGJ4NmChUktMqZMu2E3sSSiHFZsTo
         KT8MpUe0VoW0fEqWJykAelHRiwi8psEkEiJFBdaRjjZHwKdPXA3YBJItvs9H9LXU8fvs
         jkg45JLxqeTu6a/9LrfgqmLOPy+F/9oSIFA0rQu8S2s+VW/azrGWD0k+CwDaBNNimY7x
         leemDr3jqTUNC8uf7nOXwkV/Tu5U9Hss9yQfpsa/eLH6nW2ntpHJc/KJ8vpi0b1C7P66
         qxDI7vpcUrca0j+oE2oTk/PKG7K535jMDheZg1Ylj9An1Af5tGx9dTDAkvLjdRK3WNRY
         zqRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cbU3XT8vk6GStUPGtP6SDlmchSWxF5KYZ27GXSfPsN0=;
        b=Lt1QZm+Gi1aeFj8whZ0FLwuXVhcEsuZr6UsUngxJEsR10kKkENaxp63gNylQ1LeUZ+
         THdjypFrlFp/4TY0zDR1BicWIoTxX+m3/d8QQ2PiCkSrb0M9ZW2tU54bA6fna+MYphpQ
         WpvRkVFLfj7ubgTcM56rh3G6NXTo+GvSQEe9sxBHNbHdiGwS+uQ7dEAi+WPVFtfHOZwb
         oi7DmkGmKNJwW9V1uwQqqDnKCrJED2EMsj/Izidn0bKASeyegy8+2T58nbsarIjCACce
         OqeQEKdDiTFb2JkkDLFBP8YP8OtmTcgj/xuzhYntIP95dbQsI7+crCwXpjgYjx0phfbQ
         9CEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 78.133.224.34 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
Received: from angie.orcam.me.uk (angie.orcam.me.uk. [78.133.224.34])
        by gmr-mx.google.com with ESMTP id d194si93524wmd.3.2021.05.12.13.38.25
        for <clang-built-linux@googlegroups.com>;
        Wed, 12 May 2021 13:38:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@orcam.me.uk designates 78.133.224.34 as permitted sender) client-ip=78.133.224.34;
Received: by angie.orcam.me.uk (Postfix, from userid 500)
	id A0F5392009C; Wed, 12 May 2021 22:38:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by angie.orcam.me.uk (Postfix) with ESMTP id 92EAA92009B;
	Wed, 12 May 2021 22:38:24 +0200 (CEST)
Date: Wed, 12 May 2021 22:38:24 +0200 (CEST)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
cc: Naresh Kamboju <naresh.kamboju@linaro.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org, 
    lkft-triage@lists.linaro.org, Jon Hunter <jonathanh@nvidia.com>, 
    linux-stable <stable@vger.kernel.org>, Pavel Machek <pavel@denx.de>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    Guenter Roeck <linux@roeck-us.net>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
    Huacai Chen <chenhuacai@kernel.org>
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
In-Reply-To: <CAHk-=wj8jOJtKpw-Jsd043sjdL=rPnOD8uD8Tf84_Q36iu_ewQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2105122224240.3032@angie.orcam.me.uk>
References: <20210512144837.204217980@linuxfoundation.org> <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com> <YJwW2bNXGZw5kmpo@kroah.com> <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
 <CAHk-=wj8jOJtKpw-Jsd043sjdL=rPnOD8uD8Tf84_Q36iu_ewQ@mail.gmail.com>
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

On Wed, 12 May 2021, Linus Torvalds wrote:

> Note that this might just be a random effect of inlining or other
> register allocation pressure details.
> 
> So it's possible that upstream builds mostly by luck.
> 
> The "couldn't allocate output register" thing really does seem more
> like a compiler issue than a kernel source code issue.

 Nope, `x' is the constraint for the multiply-divide unit/MDU accumulator 
register used for calculation output; there's only one, comprised of the 
HI and LO parts.  This register was removed as from the MIPSr6 ISA, which 
I forgot that we support (unlike the microMIPSr6 ISA), in favour to using 
regular GPRs, in a slightly different manner.

 Rather than cluttering code with #ifdefs for the updated MIPSr6 divide 
and modulo instructions I chose to rewrite this piece in plain C, which 
actually makes pre-MIPSr6 code slightly better owing to better instruction 
scheduling (the pre-MIPSr6 MDU runs asynchronously and its output is only 
interlocked on read access to the accumulator register).

 NB I don't know if Clang actually supports the `x' constraint even with 
pre-MIPSr6 code; as it has turned out it has deficiencies compared to GCC 
with inline asm handling with the MIPS target.  OTOH GCC has supported it 
since ~1991 if memory serves me, when MIPS support was initially added.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2105122224240.3032%40angie.orcam.me.uk.
