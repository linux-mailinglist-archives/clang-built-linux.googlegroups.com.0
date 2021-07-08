Return-Path: <clang-built-linux+bncBCI27E5CQECRBCXITSDQMGQEFYTRBXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F153C17FE
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 19:21:15 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id n1-20020a17090a5a81b02901725317619dsf4242175pji.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 10:21:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625764874; cv=pass;
        d=google.com; s=arc-20160816;
        b=RzSBzN0i77aPPCzKBhiwN7E0AqD2cTiopRuUu4/ytIwvUwn0mAzFoiorol18QuveGv
         WUB7bYKErzgCBdmxvVHsw/hyNc9cr+LPphq6d3tw5kJanWqq1LZ6oP2mP/qNpD9Jq0nN
         XSFCjejpSIMcc+V22QU/ksFUNc7GMIKognvVSot9LUW4vFi19ZDBNBtPkb+4UWYYfrvr
         Vn8WohlUfWWMOyn+7sUVWw/i4NPunAd8mTys5++Zuu51I5BPl2voh6psPKr3NP1er9oU
         R+39r7837VkL/7EYpLx1vPdIcae0N44FPHwNyTt00GR9TnXlP8jS7omoe7sylSq00adY
         6uOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QbdsXjhi5e3OxLR2L9EEqqy9cSRU52IWtAIffj6Hl7c=;
        b=joGS0UNuqXm4ZMMxdAc9358f/YK5QiNlRc/WNdMgCjfTAqsGDgN5aWVyssYc/rvWXw
         KKRo1YuZrvAA5bMqpZ4lrax01vQfs1SYHCgdWiO637Fb1skcVhS2MFyCW+87/M80Tik4
         +6LexLtyU8NOAntfNvyv+kN3FqH/ZKfiBsRhpIyXQjdX9cRp+RaJmeNoI0kOrUgW1p3f
         AiClnii2Z9u1bXH7ZdWm4A2JIO7sU9Iw7INrrIPmGvViQKdFzIxLuUp0vYxpKGbiNBDX
         UhIKWrz08wegsiNeCD3QmWUW6scl+T9V2l2H4RgfbwF9NzPE19HzfjCs5AFez5GTMOnW
         zeIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uKrPkQ7z;
       spf=pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ricarkol@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QbdsXjhi5e3OxLR2L9EEqqy9cSRU52IWtAIffj6Hl7c=;
        b=GDyBokWGLOGRKDhk4Hv47Yzn/85HCZpzm2Q2052IysKo51IAUBwIgIFgb8ngHtylvR
         cbbvkmGy9uyUbSOKyl80ctSHBSD2nu9P3Ma1V6oHs78v7vixFf2b3U8X2eOGl+QAw+TF
         HCQ38jGFcVHv4FO9XyssHK6gKo7GtMqAoL8MJTN5wdsaEbFVw40/AU6LyvlSIuDekYmm
         Uuf3++OpRiImyh2lLkK+l/S5Jy2fftp3s9VBLLwNjPvfQXzwcpWVvuKKeI4DCO3KwYdR
         J1JSdPd6wMlIuivmHm1Li3LM00nutlUoQSQQMuzo78M9dKJAXqZxX6pYroPtVL2Uf095
         XNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QbdsXjhi5e3OxLR2L9EEqqy9cSRU52IWtAIffj6Hl7c=;
        b=gN1RJAMJYgUTIqtURCaztDwgLJZyXBf0/HyOrNbByah41zH6fZJk/SVNpB0Kt0LKde
         eSch61BfpMbr/VPKYzIMUZ5K5JE5CMmU2x+92H2rHo2Ywcabr5aiscWq9T2KP+smuwXF
         J16crpfhRr6MV+M6EisVk7aO0FQ4ztTsfhnffy5hF3whEQK4kP0fAZYTiF3DWtRx9KNk
         Q9kYsGtJp7Kt53f0m/sTPPRu1lRhksqZZcEgiZM/Pys5ug6ZglC0FTamdpbau4xJ6Wyy
         mKvnJVQ8emW+7VYrHZmvZyzgmiktutSccDIsDwCYsqeqzo+bVzrTdPhtlhulXszi4NIV
         NIUQ==
X-Gm-Message-State: AOAM533xtZyH0ZaHWayVMwv905xKaI/Yp/uoOhIxEcGM0OsRunV4p8mW
	etT+/dvhsj94URH7ZpLwVec=
X-Google-Smtp-Source: ABdhPJyVGsU7HgCM5ZFyRqt3pWHNPhND7dGqSUwrTLEanYa0bCx1dk3pU2m+AYHQd9LlwiIfbu2IsQ==
X-Received: by 2002:a17:90a:2e17:: with SMTP id q23mr6008737pjd.18.1625764874321;
        Thu, 08 Jul 2021 10:21:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls1588424plj.2.gmail; Thu, 08
 Jul 2021 10:21:13 -0700 (PDT)
X-Received: by 2002:a17:902:aa0a:b029:128:c224:4f0a with SMTP id be10-20020a170902aa0ab0290128c2244f0amr26806966plb.58.1625764873740;
        Thu, 08 Jul 2021 10:21:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625764873; cv=none;
        d=google.com; s=arc-20160816;
        b=oE+MOFl00POHqX0A1TbwSOe0kcVwWcUFGg3+LdCzVP7QQmpA7oTo55sj0iYWwzdEBi
         qorWj/cC3QpeZgKaXCtmKvfqwmc4Sf+bxQNPo87Z0GHgL7G6NXFv4/MI3IN35zpEziQv
         tJJRGNeec05uAvRmvKZP/EFc2Ldd3GnRzK1sVZ/AQGRMT/DHPscKkY7iDcvYDvZL72UF
         22HweMBtdsnuLlbDyTQgNF/Gy2U6FMI8C1EDwB0hyX4X/wZHqQEzUZoN0CrZ3+L086PR
         sAHEvMCebIcuPKYIi7vWupTxYEI1FFfsIIpDYOGyMeMmKv2lI/5Lwwu7x/CnJX/cIm1K
         Zo5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QCo14xV8rAUzfCQotnJU7VU371YftBdUOIgGhDFsTfQ=;
        b=E+bRA15KJ6vaBG6CLYPB4SrT9YtVBztUiWskDbjIY49ctVM4E3a6s6lSxgyD/yuNAI
         5c0BSwxtoW7coK6TmuYI3VUF1IURXPgZsx4Na8CCluWzvBhrepGCujiEakMr+rAWoeDC
         Gj3lpMKsEYNMnqzUsn1LAoYDFuzZxYy6j2855LbXWZVJuLlerQaYaZRQgnrHhvGVqIg5
         NWmQJcAqSxzOdjBDipQtlhTstk3CdJAeNxeh4SS+xci0d8OgtIp5kbweDKlucoT9fTq0
         JJD4hYzEOKZE1i/6s1P3EUO0eYXJlHSkIgbhXXji+rxYGsMf64h7TTVnl9NbcD/lQ+m5
         q6sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uKrPkQ7z;
       spf=pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ricarkol@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id u25si418943pgk.5.2021.07.08.10.21.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 10:21:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id x3so2476401pfc.11
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 10:21:13 -0700 (PDT)
X-Received: by 2002:a05:6a00:b41:b029:324:2cb7:ed97 with SMTP id p1-20020a056a000b41b02903242cb7ed97mr13631893pfo.53.1625764873255;
        Thu, 08 Jul 2021 10:21:13 -0700 (PDT)
Received: from google.com (150.12.83.34.bc.googleusercontent.com. [34.83.12.150])
        by smtp.gmail.com with ESMTPSA id h14sm3833299pgv.47.2021.07.08.10.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jul 2021 10:21:12 -0700 (PDT)
Date: Thu, 8 Jul 2021 10:21:09 -0700
From: "'Ricardo Koller' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: Jim Mattson <jmattson@google.com>, kvm@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>, Joerg Roedel <joro@8bytes.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/5] KVM: x86: Use kernel x86 cpuid utilities in KVM
 selftests
Message-ID: <YOc0BUrL6VMw78nF@google.com>
References: <20210422005626.564163-1-ricarkol@google.com>
 <c4524e4a-55c7-66f9-25d6-d397f11d25a8@redhat.com>
 <YIm7iWxggvoN9riz@google.com>
 <CALMp9eSfpdWF0OROsOqxohxMoFrrY=Gt7FYfB1_31D7no4JYLw@mail.gmail.com>
 <16823e91-5caf-f52e-e0dc-28ebb9a87b47@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <16823e91-5caf-f52e-e0dc-28ebb9a87b47@redhat.com>
X-Original-Sender: ricarkol@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uKrPkQ7z;       spf=pass
 (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::42d
 as permitted sender) smtp.mailfrom=ricarkol@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ricardo Koller <ricarkol@google.com>
Reply-To: Ricardo Koller <ricarkol@google.com>
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

On Thu, Jul 08, 2021 at 06:50:41PM +0200, Paolo Bonzini wrote:
> On 29/06/21 19:28, Jim Mattson wrote:
> > > Thanks. I was thinking about kvm-unit-tests, but the issue is that it
> > > would also be a copy. And just like with kernel headers, it would be
> > > ideal to keep them in-sync. The advantage of the kernel headers is that
> > > it's much easier to check and fix diffs with them. On the other hand, as
> > > you say, there would not be any #ifdef stuff with kvm=unit-tests. Please
> > > let me know what you think.
> > 
> > I think the kvm-unit-tests implementation is superior to the kernel
> > implementation, but that's probably because I suggested it. Still, I
> > think there's an argument to be made that selftests, unlike
> > kvm-unit-tests, are part of the kernel distribution and should be
> > consistent with the kernel where possible.
> > 
> > Paolo?
> 
> I also prefer the kvm-unit-tests implementation, for what it's worth...
> Let's see what the code looks like?

I'm not sure I understand the question. You mean: let's see how this
looks using kvm-unit-tests headers? If that's the case I can work on a
v3 using kvm-unit-tests.

Thanks,
Ricardo

> 
> Paolo
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOc0BUrL6VMw78nF%40google.com.
