Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU72VOCAMGQEYSR5ZTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B43E36EF8D
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 20:39:15 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id b16-20020a7bc2500000b029014587f5376dsf1190425wmj.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 11:39:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619721555; cv=pass;
        d=google.com; s=arc-20160816;
        b=FbkQ5Uq7fzYKvE4/8GjSMtQtdJPlRioQQcdFF8IlXXyZt09JDoXRpM/nZFRs15Sq2z
         u1TNzKwp8J+gExJ1R4CeCVSQa5IVdDgQBNDbGmpHgfC56ErNbd3juPtG2dLymuB/eJ4K
         uMRoPUlHdP/j1mLLATjY5cnrcITNHg0ySHjhmCzf/Unz2LaYLlZb+wyE6R4sSkTdY+3+
         +Q4H50B6gDwsqGvF75WOeVXYvEuBamc8fENWXXyymd2AuEWSiogTnPvahUydgWd3Fazi
         L7XDtXetbBJLnEvO2cWWTKKcP+wvlyzRN6r3K9hgG3FuDdf6jgW7Bqa3Yo9lBd5Eqokc
         lsPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=f03ABDc1HIgEdwUdGIJySN/MyvLgOcQiiLBl/8GsiSw=;
        b=bi/xJIw19yUalnxRAmwk19V6PcYVFP5QeG7p+tyDANykc6MjOaZSDv35CCbXfbemdy
         +MEN9Buxb2TGiUsOXcp4DFHz/MgBBsyVCYzcbPv0koDF1xKx1Awr1JYzhBoH6ptNzMNb
         kE0dkrvr495/tyMnyWFNFaJ7uJ/SF79yHtv6tFtOwMjfwol8eyrNi0UmIlgU5/5XZcoT
         Z6YdKwkgyX2Bvphto7rYxnIbiGR4JOwyd1ATDXFc0BV60JVllC6pdFRIyoBMfcgLsbXG
         uPVpTBarOoim89IA0BjvfWcgUfMxnFDdRv1J8mXnZyt4NQeUXD29fIhrsGVdad5Pps1v
         pOkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u9We45Pn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f03ABDc1HIgEdwUdGIJySN/MyvLgOcQiiLBl/8GsiSw=;
        b=LGE5/WTDxLt8+42zLU5RNEZ/lQdEbYIdpJZQnKbeJ80k3okYMFOGMs8gHRvFpMBzG0
         YF7FpQz3/KnmcBf3JAJNT6h9XZz8UpNj1d0lfnCrjcQ1KZMDA+oWVxb5YyyHBbc4xu93
         8Mz/sdVOKil4IW4JxKrBTtKQ+0gIkf6pCgMfDLlqSMd2YwHN//gZhi8Qj7gOYJNk30rt
         gohHmAoVTIAWl38k/fM95jLPSa3ukU8TJHWfoaQJTdyN0AQinDfK/eN5FBvVcyqTPCss
         zMokq7dsscR+NULTER2Kvd0ZPK8K6FihKT32asTxWWyz74LaTIK/ZYfl+6X0AwtGKIjP
         oapw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f03ABDc1HIgEdwUdGIJySN/MyvLgOcQiiLBl/8GsiSw=;
        b=LNiHlUIf6HSA3L2z+DMaDvamNG/mdaJiFKd2lFRBJdJXcfd5vpnN6At8YJ7exIbwUH
         AXdZff4V5xjkq7S4/Afs9M6HcQIVH31uOLMurh820h381si8XqhPt2o9Tmz7hJQKXGBV
         Pj6l4nq0aCy8mEzrP8Pna00/eGz5qGgTcoxZRRubRGkGwSxlnxzfhYaz2b2AbHaY4Bf9
         YjwBYV0vtjeDsvPFUegs8ok9O/Xyjc4MAEXJKVyFLxAU9B0jBN1jd9U01nMrPpjj0gvH
         E0eCHf5+NoO+kA7DSmHo2toyzir5a55ttn4owUZj+VDKbtxSvySULjmbp70bZ1JQ3Kmf
         fuoQ==
X-Gm-Message-State: AOAM530S9SnmK6DDQ04XEddIrrDpu+YvM9tOLQvEIBMmu2QPxUgL/J9Z
	3aOl1BtiVlIv4SB2z1+dYSk=
X-Google-Smtp-Source: ABdhPJzB1TOVbAaWMiGQGr2v21wfpfps2aUiywC4B4ehsNg3ZkucnDl3ON1vh98r9rPwRQA+mMoSlQ==
X-Received: by 2002:a7b:c091:: with SMTP id r17mr11963415wmh.28.1619721555433;
        Thu, 29 Apr 2021 11:39:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:e341:: with SMTP id a62ls1871222wmh.2.gmail; Thu, 29 Apr
 2021 11:39:14 -0700 (PDT)
X-Received: by 2002:a1c:7919:: with SMTP id l25mr1693359wme.130.1619721554641;
        Thu, 29 Apr 2021 11:39:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619721554; cv=none;
        d=google.com; s=arc-20160816;
        b=ZJXZxsxGok3PwOb/pcH6RtSh7GhF7nGviIBbzHLEQB+MpNdo/bFA7SWR1g21/h/mdF
         TgoGvC/z3pFNMmjatIJ2TZvuLDPhaMxwh+gQCEcrUBtGErc1u5twNnhEy2H2Wa45sTzh
         XK73m2s8mZxLjgtoIr/VC4ZL9qvMt4CdvJJ0GgK0cC239Bz9aTVy2JN2LMpCHIOLgdac
         zbelKZM7+nWoealtFOFF3htu39Y9M7hJp5XKffR+6oeJicEKyiY0tFcfSRlDKNY8c3nz
         4gg+15w2j89z+3YhUR/L/aA0CwayPbWf5jCvk8gBgJA59jWtA4/JpmRxWL0sE6/mw2Nu
         mOLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FcFyf0v1qT/C1YQXGjM2gAonNFAnMg7U0aOFeLZ7M+0=;
        b=QWS4+aMe2orBf1vaZhnCQDNzausMWxHxS9UVXPeOE18kCTIp7S6xMYNUDOEPbd6VMi
         BHVz5EMmTYQVU3LKoA5vEO8b2Z0JjFWGxUAWkMJipbewDRCZDKoiqVH+8uE4H8vxrfzI
         jf83ycUw6XeopF+khsncoTOtHsYukPxy+cWknwq0nUaP9PRO7r9Uc5DcrRtAr3VpCHfV
         tnDEm7smDIGKnrtkMXf6uLYW6RdtWdhRe9i4pm2gb8jEDTOxTa0j/yqqKXC6cyAK1+GW
         dxaCuBjdB5oYqtCWDrx9/HH359BlM1ptbY62WWg7kvmwtLvpLKoTqXcJXQqX8EmK7yGV
         DEpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u9We45Pn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id s9si771233wmh.2.2021.04.29.11.39.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 11:39:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id m7so66823173ljp.10
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 11:39:14 -0700 (PDT)
X-Received: by 2002:a2e:b5cd:: with SMTP id g13mr832554ljn.0.1619721554177;
 Thu, 29 Apr 2021 11:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210429150940.3256656-1-arnd@kernel.org> <20210429181716.2409874-1-ndesaulniers@google.com>
 <CAKwvOd=5sLHssCf0Umfh+E__TjSwpxtO9K2MYVcXEhxvVp8okw@mail.gmail.com> <CAK8P3a1S0ct832wN0aM8ZAKbbQ3=w2_vSprhzQ4rLN=Ue=L0JQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1S0ct832wN0aM8ZAKbbQ3=w2_vSprhzQ4rLN=Ue=L0JQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 11:39:03 -0700
Message-ID: <CAKwvOdmEybM=Vij+DP0O8waL4Awi1pip2VzHhcczgNQsryqBoA@mail.gmail.com>
Subject: Re: [PATCH] smp: fix smp_call_function_single_async prototype
To: Arnd Bergmann <arnd@kernel.org>
Cc: Jens Axboe <axboe@kernel.dk>, Borislav Petkov <bp@suse.de>, Eric Dumazet <eric.dumazet@gmail.com>, 
	Juergen Gross <jgross@suse.com>, Jian Cai <jiancai@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Michael Ellerman <mpe@ellerman.id.au>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Huang Ying <ying.huang@intel.com>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u9We45Pn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Apr 29, 2021 at 11:27 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> Either way, I'll give it some more time on the randconfig build machine
> before I send out v2.

SGTM and thanks for the fix.  Perhaps worth a note that this isn't
just "a violation of the calling conventions" but straight up
undefined behavior, full stop.

UBSAN folks are working on adding a catch for this as well:
https://reviews.llvm.org/D100037, see the relevant citations from the
standard.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEybM%3DVij%2BDP0O8waL4Awi1pip2VzHhcczgNQsryqBoA%40mail.gmail.com.
