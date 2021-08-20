Return-Path: <clang-built-linux+bncBCR5PSMFZYORBCNZ72EAMGQE73X3CQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE193F2BC8
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 14:14:03 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id k18-20020a9d7dd2000000b0051aec75d1absf1554311otn.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 05:14:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629461642; cv=pass;
        d=google.com; s=arc-20160816;
        b=yZRIOmFT2Rx6mep9DLe1MJjP/Fm28sx1UJGhVwQAYasx/u2xwlGlBJC4v+vVYjfKOh
         q3fVclRRwu44CyXK5guX2ud3b0cd0hrwX0SViBqNKgfHMZn1PkyMy86dwGow2ZCBO/TT
         dSHWqaeoW/rdZE14yRUrcSybSc56oWbgWaF0g6AGKQxyoB3Sn05RUx0pYXaEXqJyZxYo
         +h1UnQKewRW5wcAQozEJUFN50xC3ecodS1rKAUxaFhQu5pjYIl/DH2TiDtUlu33pdIPO
         GXrruEhpkyPjDy/19hRkBp46FUEfNyNEMiYUWHwL7Q9l9mX1EuK/K2qwP87LMgiSi+JL
         O3Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=M/NGDG7caafZxB35WLN0IcVVppng/sB9rYjSsexH1rs=;
        b=wNgKx2RKL44/+dvnL0Q2DSjCWCg1VLpjuZ2RS1+SNmmKxssz+J3TNltZtrY1eYTAvF
         rR01mfHD26UpJjJCToAMt9vIi+gPshjfhItO75hMaSjM7oHP4/vHs1LMRYXmJRvMevW4
         +YLggj5+gEVZD5Cv6wWNXGzG8FSMMNu3JityUO3//A2wEw1QMGrCAGnoaGhGTSCxeFYd
         Eob2SRXX8qPAM0UPDdLJB0EzRaFUOtCN30OYeNYfkWRSbYi5ww0SYZVOz4yaxBWmjwlk
         V2jjYbrYWTsLsTi3HfFvhpKhohmdY4pkgHr2KUFvotGnkIzqLH8VNGAkwTSYX5rHv74/
         Ur1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=Cg5iz+Fr;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M/NGDG7caafZxB35WLN0IcVVppng/sB9rYjSsexH1rs=;
        b=YBG8QfBAIM6em1Lb13J8jf02uX+NB+bSkPY2AVG7JgtNzapvRxs4HtHGqf6QVt9Ize
         UGEuaJSn9a+bnLmlz1reiE96/Bl4QsUJeqInSCLjBwymN48NrtS1BsG2Mz3oPh2tbkj5
         6CAHU49G0fTdqfx/t7maj1EvpaMPfYgtmva3JlBUL7aX+QijwrJsGvHe/Zg+TxXPlbNM
         aVjJjL3HIGeZkjLurBGcaYkvUNj93NphSsnEgfug00aJ7wpfEkKN7mQuSi+EqVVnaB9u
         V/Y2KjXQYdr6Ccde3qkqLxfiBOyDxHQ4UgtYomM2pS52Nfg1C33ZjzhdNOZFvyBeSEtS
         CiuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M/NGDG7caafZxB35WLN0IcVVppng/sB9rYjSsexH1rs=;
        b=Q00zPO/NKnrNzB20S4Ev7ArRTQz1mjqGekCXquhPFFpsWRzI1Bbk7YC74711RHI6mJ
         Pt0xFbQXRpd2kDQCE1xcSHl8hE7CRYGR9QtlRDRvJLgE/Izx3U020oVr3wpDFK2K6L4g
         RDb2m1F0hIHU42EP1X4BmF4GVv8vobbpYwUvX/cfhSEY9Kckia0wAkrkGU6q9thH8JvS
         mB71aUbNyBswO9wCtIeUkkeCeayF8IfSjdaA4WeEjDBT3+HZbaYJVVgXpZtROgcBOsdw
         AdASIZv7BQapQxJIlcXgz5d2/tjc25kBHJytLn3/rgwdvS17d+t+/J2wEDrdSSQMrXVo
         DaNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WL3WUKVTkYBrSTKzN4JW5dnIosWrpd6UJFekZvzFgTNNRpR7t
	OnAQ8U33TGZIUgD0t5aq9gU=
X-Google-Smtp-Source: ABdhPJzlioxVOomFtyI+3bLiSgoPZCXAkdbh+JyAUJdJqIyy+3IcQKV+yI3Lkq1D791tmHsyxJTGUw==
X-Received: by 2002:aca:1109:: with SMTP id 9mr2798542oir.109.1629461641851;
        Fri, 20 Aug 2021 05:14:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d1c1:: with SMTP id a1ls419946oos.4.gmail; Fri, 20 Aug
 2021 05:14:01 -0700 (PDT)
X-Received: by 2002:a4a:b601:: with SMTP id z1mr15481834oon.7.1629461641460;
        Fri, 20 Aug 2021 05:14:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629461641; cv=none;
        d=google.com; s=arc-20160816;
        b=c7h1YQt4N200tJaj4wA78sbn7dzkIkyMOH6qoWgmubI+UmlU9cQ8N+rNWCWxNwy8X8
         4q9eE61uF3OHmyPqviYRoRl+uctPgOxfP6dM9RxC2VdyT+OBXTF2hTinw049Ql47am8m
         CBVtc80rvOINFA2TqTCh9WydhbOkc1USwezZzROFXpm9k5kVLIMqeq7EGHuwKdnMyKcn
         YaiLv+DhufBj8WmAYHPznB549EoGcKI94Mhn42NWlPPDmbUQnUjiZsAE26SkWlx7XpAf
         JWiZrQ+/fzWgMHYaCZm14XVfETdCN/fWtQu1v2nZl+ygU5mFbKlhchPvNOAwKOhh1PZb
         +/HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=GaPKIeDl8hhkmPkLrvrJ9stzgKavrRQRLEdG6v/pbF8=;
        b=pFisBKYwxkdGKhEi0BPxNDFMh3ceXtEAtQAkJDx2yIRtiI5vnJBeRhrjYiAgRuUOCU
         uTAElevmyQ1dE2hCabkmrvAuf4GOQXcy0VZxMlX1htt6F1taExhfS6Y5LDVaCoNQCTQp
         NDZFQ9oCz2LVdAOpQ9DoYlLtbt5cuEs+u53b54fLkczuGpaPuMXYuJDKPJQ4WVPtEuQl
         jNRKztOLxUMlOQ4hLsc5jRh6Ec9+J5rA65RvFTvyIIQT8awnp+V/k/y96JuwGBmW22iA
         Ks8UxQ3k9p/XXAamUGyDp/0T0ZUWGK/0LZqIRQPa4haHRcPVedRa18cn7qXXFiODDc2m
         JB5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=Cg5iz+Fr;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id p6si21933oto.0.2021.08.20.05.14.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 05:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GrgXg1cMHz9sSs;
	Fri, 20 Aug 2021 22:13:54 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christophe Leroy <christophe.leroy@csgroup.eu>, Kees Cook
 <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linuxppc-dev@lists.ozlabs.org, kernel test robot <lkp@intel.com>, "Gustavo
 A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 57/63] powerpc/signal32: Use struct_group() to zero
 spe regs
In-Reply-To: <0f6e508e-62b6-3840-5ff4-eb5a77635bd1@csgroup.eu>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-58-keescook@chromium.org>
 <877dggeesw.fsf@mpe.ellerman.id.au>
 <0f6e508e-62b6-3840-5ff4-eb5a77635bd1@csgroup.eu>
Date: Fri, 20 Aug 2021 22:13:53 +1000
Message-ID: <874kbke2ke.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=Cg5iz+Fr;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Christophe Leroy <christophe.leroy@csgroup.eu> writes:
> Le 20/08/2021 =C3=A0 09:49, Michael Ellerman a =C3=A9crit=C2=A0:
>> Kees Cook <keescook@chromium.org> writes:
>>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
>>> field bounds checking for memset(), avoid intentionally writing across
>>> neighboring fields.
>>>
>>> Add a struct_group() for the spe registers so that memset() can correct=
ly reason
>>> about the size:
>>>
>>>     In function 'fortify_memset_chk',
>>>         inlined from 'restore_user_regs.part.0' at arch/powerpc/kernel/=
signal_32.c:539:3:
>>>>> include/linux/fortify-string.h:195:4: error: call to '__write_overflo=
w_field' declared with attribute warning: detected write beyond size of fie=
ld (1st parameter); maybe use struct_group()? [-Werror=3Dattribute-warning]
>>>       195 |    __write_overflow_field();
>>>           |    ^~~~~~~~~~~~~~~~~~~~~~~~
>>>
>>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>>> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>>> Cc: Paul Mackerras <paulus@samba.org>
>>> Cc: Christophe Leroy <christophe.leroy@csgroup.eu>
>>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>>> Cc: linuxppc-dev@lists.ozlabs.org
>>> Reported-by: kernel test robot <lkp@intel.com>
>>> Signed-off-by: Kees Cook <keescook@chromium.org>
>>> ---
>>>   arch/powerpc/include/asm/processor.h | 6 ++++--
>>>   arch/powerpc/kernel/signal_32.c      | 6 +++---
>>>   2 files changed, 7 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/arch/powerpc/include/asm/processor.h b/arch/powerpc/includ=
e/asm/processor.h
>>> index f348e564f7dd..05dc567cb9a8 100644
>>> --- a/arch/powerpc/include/asm/processor.h
>>> +++ b/arch/powerpc/include/asm/processor.h
>>> @@ -191,8 +191,10 @@ struct thread_struct {
>>>   	int		used_vsr;	/* set if process has used VSX */
>>>   #endif /* CONFIG_VSX */
>>>   #ifdef CONFIG_SPE
>>> -	unsigned long	evr[32];	/* upper 32-bits of SPE regs */
>>> -	u64		acc;		/* Accumulator */
>>> +	struct_group(spe,
>>> +		unsigned long	evr[32];	/* upper 32-bits of SPE regs */
>>> +		u64		acc;		/* Accumulator */
>>> +	);
>>>   	unsigned long	spefscr;	/* SPE & eFP status */
>>>   	unsigned long	spefscr_last;	/* SPEFSCR value on last prctl
>>>   					   call or trap return */
>>> diff --git a/arch/powerpc/kernel/signal_32.c b/arch/powerpc/kernel/sign=
al_32.c
>>> index 0608581967f0..77b86caf5c51 100644
>>> --- a/arch/powerpc/kernel/signal_32.c
>>> +++ b/arch/powerpc/kernel/signal_32.c
>>> @@ -532,11 +532,11 @@ static long restore_user_regs(struct pt_regs *reg=
s,
>>>   	regs_set_return_msr(regs, regs->msr & ~MSR_SPE);
>>>   	if (msr & MSR_SPE) {
>>>   		/* restore spe registers from the stack */
>>> -		unsafe_copy_from_user(current->thread.evr, &sr->mc_vregs,
>>> -				      ELF_NEVRREG * sizeof(u32), failed);
>>> +		unsafe_copy_from_user(&current->thread.spe, &sr->mc_vregs,
>>> +				      sizeof(current->thread.spe), failed);
>>=20
>> This makes me nervous, because the ABI is that we copy ELF_NEVRREG *
>> sizeof(u32) bytes, not whatever sizeof(current->thread.spe) happens to
>> be.
>>=20
>> ie. if we use sizeof an inadvertent change to the fields in
>> thread_struct could change how many bytes we copy out to userspace,
>> which would be an ABI break.
>>=20
>> And that's not that hard to do, because it's not at all obvious that the
>> size and layout of fields in thread_struct affects the user ABI.
>>=20
>> At the same time we don't want to copy the right number of bytes but
>> the wrong content, so from that point of view using sizeof is good :)
>>=20
>> The way we handle it in ptrace is to have BUILD_BUG_ON()s to verify that
>> things match up, so maybe we should do that here too.
>>=20
>> ie. add:
>>=20
>> 	BUILD_BUG_ON(sizeof(current->thread.spe) =3D=3D ELF_NEVRREG * sizeof(u3=
2));
>
> You mean !=3D I guess ?

Gah. Yes I do :)

cheers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/874kbke2ke.fsf%40mpe.ellerman.id.au.
