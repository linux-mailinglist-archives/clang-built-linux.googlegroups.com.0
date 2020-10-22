Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBUWXY36AKGQEAL6YIKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D9D2961F4
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 17:57:06 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id r8sf794546wrp.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 08:57:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603382226; cv=pass;
        d=google.com; s=arc-20160816;
        b=U1uJ2kJX8PK/XevVC4skX/LJ4G5B+Cnwh0qoPbxSHnB/I4WXOMj1pUVjLsjnWkewzR
         sbQpbRYZqlf4/A8HQdEZHhLzBdCEZXoSmwrCXv0Y7hqxEA2jNcd3nCqC2BCJ88W4WuUr
         Ke5+XAFexcXUeBDSwHTPBc69r+wrcX9pkmdslMeDMD4fL0czdnm3npFt6VEiLMcg031T
         JqS9atKfwCmO4A1mitWlHPQUNwo0a62pgn5alCNlkSB4C9iLRXo/osmB32Dc60OozC4f
         cYuoJ3elIZx/zLyNctBtP89rkZpPIvD1rJhe0pXa6dtWhfljRphjiGzxQFZgzUNEDz0B
         qT8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=j52rrXlmJJBUWDdSOAyqTWLB3bGKWfEd3uMjM3NXqZI=;
        b=KR28Zq5hwR9WG19NKE/5QB0ww/vk1aWdfw3IqivOzneVyKslcLmTST8D99QJ1/UiPv
         O6NV98ICNyQDCCKT7+/aSiv+Ngey8TFM9H/hf5VbN0SvbZ8qgBiqzSs2MTc9Y5/QIkBD
         OEVRmhh/lQjhjGDmscrhqMXnwGUD3czYUikSFyQS8wg89b9nMJyh0tItKU97ePmWyccE
         O9NrmChHwH+W1c/czVSqgcc7dRc4luy+aRVsn6XZclbam0hngjSzRa4yOnRqaQVbraEs
         Uw2hnBjuIWDv0FPUWFH767n2SLKDfivbszfhZniHh+1H58SlXAiNXb8XJ66bNWYBZq1z
         4JyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pl+Y8YHz;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j52rrXlmJJBUWDdSOAyqTWLB3bGKWfEd3uMjM3NXqZI=;
        b=p8cktmqZ4xMxNkqKqH0ScgBPVikVJHzScMQ/36OjnYThj6S8mF2gb0LK6jcTjNMAie
         lKprsw0AUL51sr+XCZ91ERWzxi4nBwK+zwp7TlYzsA6AVb5cl9/0mHX2n+ZoVuo+W70A
         YCNfjqOol3ZQe0Fz/et3iFmFc71yBBlb55ImdbKy23QeIQ9Dr98WV2Co6yrlH/P5TIF8
         y9juEQmytsCfhV8LsXMAAC3fTdZ5Yu9XypfdlgtPs+D86Eh2jsOSwKt/P/JX4YIhI0XU
         FOSa0XvEy27DIs6bVILjGJEU/Uj8U7nJyfEkfs3X9NwcOCLiBPvQQrBBqLShzW3gi9y7
         I0Rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j52rrXlmJJBUWDdSOAyqTWLB3bGKWfEd3uMjM3NXqZI=;
        b=Lc6IuqrayeK0rVaCfphDZE8Dr6kUx7MFKn2sjrsjzH+dVwHII1LvkizfUkQ9CuTMAA
         eZxuKklX7XYT4jAk5qpO+dlPlMTvAZwobd2yLPhHbQY95lQ6nIwWEYYY1FHfug1XYJnC
         FfcASLBWl2E9oTOe7ihhOXPayrqERrP38hoRhQY9wT5EoarRKcOzQGAiJxXz+g92XAsG
         7hrcAVnw4/XMhVTixd22BeomXbvuJhCKAzIKSMglbMiNRuuJhJjhofmdS7bkmPj0/8mu
         dbuEP3xqcEyVuo84U+G4QSsyoG/cmooPJD5pgFQZWxbvIDGaAV6FIorBhkmkhG98HIc3
         TqCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j52rrXlmJJBUWDdSOAyqTWLB3bGKWfEd3uMjM3NXqZI=;
        b=PDx6fN8oHGE9U35WuxsozCeYbuYHzgsVStL3KFu+nuVFwn/4D6+b6/EyB/vd2Q1iiY
         k9yEO9j8jf5arlqJ9fJXvyvq7JoTK/m+VpgxEwOl7wl+uvfqp/TrGu7D+NtPRFFjfWMC
         g7DMES2V0RpxMSXDSYrSxHgCl4EwU2F24iaYn1teciJMxG2mooZ/+K4++c2Agatbc6em
         s/soj53P1OEpEL/VBlb3KzYXmkUdbQnHZ8c4f2QaJTZynLrooD3jbi603mZmLAv7zajJ
         srHdi/Au/GZbG/NBFqIms664YHVklkrwBc9Ffd+AR6P2hQsF76HHfpRibbtDCci1nvpZ
         5p1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MYV3VakjUpNhh1V/b+12zZvT/goYeZoaIJqCvctFJig8N67Dw
	3L0ZzGnWWC89gL3VHHk/hrg=
X-Google-Smtp-Source: ABdhPJw6KT5BXbYW5ZccH4cpoZJIbE+dFjh74jG6STEO6pmFJxuA8OMexOSSW04bG7/g+cxOfPA5Ig==
X-Received: by 2002:a7b:c305:: with SMTP id k5mr3318208wmj.102.1603382226280;
        Thu, 22 Oct 2020 08:57:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4ac3:: with SMTP id y3ls71195wrs.2.gmail; Thu, 22 Oct
 2020 08:57:05 -0700 (PDT)
X-Received: by 2002:adf:a551:: with SMTP id j17mr3682408wrb.217.1603382225442;
        Thu, 22 Oct 2020 08:57:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603382225; cv=none;
        d=google.com; s=arc-20160816;
        b=aDB8btjy8oVVxSLOWd1C/fLo9hMHi7ug55SFfFRK7Sycs/A7yU3QXLofKgXDr1tsqi
         I0F4XlbbnBD6Dbn+2aPtC380zQ2p6H3269yD0AcLCIUHUl2QRe1tp9p4A2vIhs14Hl6/
         XpgfEBFUvJZakkh4QvVpnEKlLVxXwxfqxwqIm3A1FcgdR0OeUbXNQk1AViRonCkf0+Ji
         fFzVeUe1Q/AJgjbxAClOc/XYB9kSzU6lTjRrGNnKr9jxf+a5b2KzrFtreJOmKZ0T5uQk
         IFlErzgzMIQiOtVB8WUu/09jw9Ge0evq45lPt4H+dIaLF8aV7o6mF5n3o8apahXIW2I3
         /Y3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FUryJEIXnDLKEMSXSydi6jtnD40HcZjEUUUxEwfqCOg=;
        b=p41ZwUvjHeougcXipbbyPOTSHqeWF6NcNSbXLxbwt6wiRW1XvlOMbTXaloTIW/dXPc
         eZXT35m9KoMa4J5q+3wjZBdhwsoHCtJDdTulMn/ArVow/d6S180pmMSZKxhdi9gcgqup
         V1Sd1K397kkJt2kq69mAgl8eS7fl7S3T0Vy9Xism9MvRAV0dwO2SDDjEtypNbGhG9yEu
         BMpdpTzspXOvKPTKHMduvMCkGkzCReo1cg7LAAzz5cKvGtgc9rLQm+2fBr/B4nqZPVTg
         01sJzzK/J4MojFo40fFuxaFllAF7I+DgkiiMf6rs292vEglmcVG+rlHPMXN7KTRHwtu4
         uHAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pl+Y8YHz;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id j5si70148wro.2.2020.10.22.08.57.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 08:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id v6so2873276lfa.13
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 08:57:05 -0700 (PDT)
X-Received: by 2002:a19:2408:: with SMTP id k8mr1162845lfk.80.1603382224861;
        Thu, 22 Oct 2020 08:57:04 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-186.dynamic.spd-mgts.ru. [109.252.193.186])
        by smtp.googlemail.com with ESMTPSA id m26sm319986lfq.296.2020.10.22.08.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 08:57:04 -0700 (PDT)
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20201021225737.739-1-digetx@gmail.com>
 <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
Date: Thu, 22 Oct 2020 18:57:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pl+Y8YHz;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> wrote:
>>
>> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
>>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
>>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
>>>>> The vfp_kmode_exception() function now is unreachable using relative
>>>>> branching in THUMB2 kernel configuration, resulting in a "relocation
>>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_exceptio=
n'"
>>>>> linker error. Let's use long jump in order to fix the issue.
>>>>
>>>> Eek. Is this with gcc or clang?
>>>
>>> GCC 9.3.0
>>>
>>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sectio=
ns")
>>>>
>>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing sections"=
) ?
>>>> That commit may have implicitly moved the location of .vfp11_veneer,
>>>> though I thought I had chosen the correct position.
>>>
>>> I re-checked that the fixes tag is correct.
>>>
>>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
>>>>> ---
>>>>>  arch/arm/vfp/vfphw.S | 3 ++-
>>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
>>>>> index 4fcff9f59947..6e2b29f0c48d 100644
>>>>> --- a/arch/arm/vfp/vfphw.S
>>>>> +++ b/arch/arm/vfp/vfphw.S
>>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
>>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP exce=
ptions
>>>>>    and     r3, r3, #MODE_MASK      @ are supported in kernel mode
>>>>>    teq     r3, #USR_MODE
>>>>> -  bne     vfp_kmode_exception     @ Returns through lr
>>>>> +  ldr     r1, =3Dvfp_kmode_exception
>>>>> +  bxne    r1                      @ Returns through lr
>>>>>
>>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
>>>>>    DBGSTR1 "fpexc %08x", r1
>>>>
>>>> This seems like a workaround though? I suspect the vfp11_veneer needs
>>>> moving?
>>>>
>>>
>>> I don't know where it needs to be moved. Please feel free to make a
>>> patch if you have a better idea, I'll be glad to test it.
>>
>> I might have just been distracted by the common "vfp" prefix. It's
>> possible that the text section shuffling just ended up being very large,
>> so probably this patch is right then!
>>
>=20
> I already sent a fix for this issue:
>=20
> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D9018/1
>=20

The offending commit contains stable tag, so I assume that fixes tag is
mandatory. Yours patch misses the fixes tag.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1d2e2b5d-3035-238c-d2ca-14c0c209a6a1%40gmail.com.
