Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBDF77WEAMGQEAXVCZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 440203F27ED
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 09:53:49 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id z26-20020a0565120c1a00b003cf39d5ed62sf3036733lfu.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 00:53:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629446028; cv=pass;
        d=google.com; s=arc-20160816;
        b=0fmUDydkuP08UOBLRcZ2SphCdy8YArpq2RDkOR/rqnVpht6oekIm7pHkx9snPXlYFx
         +nvcrvywwlA/jqW4Iy1A6SQgGa0IENE9hfo2S9INf16WlLH5wc9y7RuZq7A+v7YEqH89
         Gx/Dzx8oSVewl1wZLuLlrKGw/NYLPu6frwNvc3qeLv85cfW209vbJCkydZA/rorfL9/M
         /BeB7b0pWXcjbP7DuoeV5VdtaphheLx5cvJUj+kRSQyWwhH79StUNpj0i56Nfs9smaVP
         gVck39K9XL028X688GD/p1oJsVHAtjbCvY0O2g4IhRKxXyGBzByAhA8MFtaIvbGKaUE2
         RKLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=DxJdGXW2uIAtvZUjZzrYGWcLN/07mj+c+tbWmg2EN2Q=;
        b=j0KkLiKJJaJo0VzeCTzijDv/grPMh9xRgpbHZ1erb1CbTsNvUo4xwrXx2YojGfRYnm
         hGkvTgnx/fqTi6eYbnWfGtFtMxB5XZ2EW8ftkZjLwkaB3+VVdH6FyK3C8LyFDEHVhda2
         AqKZikqoyvcaoyvKVHHmx0VdMV2FGf8rxOmUFigvSLxrO+LGBron4x99mEa45uiTCsQX
         j+ntmjWUZhbmfFiavYjd/Uq1ER0qCW9Es6e7PXzBb0jpOW5ED9nnKPhN2N+pFdFt75Gq
         4NIbA0HM7cISvq5XqyA/pMugOgi12+G9yA52iHEmUsexQ1hIwdWFcyDKrGGARhTF9lxH
         gxVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DxJdGXW2uIAtvZUjZzrYGWcLN/07mj+c+tbWmg2EN2Q=;
        b=iepuosIjudlTZhNCJfbUMcX96Q+r3O06OGbvM7iJ5OB85aGyznxVFb/wlxlo6xVYT6
         /LA1/W1kHarXlRJb3ksGpJNLisQLelYR5OKGdJx9QjAPtPTDP23r8J1EyBIl5Yr3oB2s
         5ACEDtRB8Sbm5plEsqJPWYz6YidTRfaR6FLf64oHjh8hRSinrTUe4LX/kin8ADSRDiYv
         jGn/7sTZigmjXD91ywdUwO+/l9uvrq/fXGoiOa4J1vn8zxrxQMO4nMN4LHkOmL1QTi3A
         UY0KyVyyB71p/L+HGxFKX4W7x1shj1Iero5ioSIQqCVrhpC9YN+d5rGzmGzLzfcAn4MI
         /EIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DxJdGXW2uIAtvZUjZzrYGWcLN/07mj+c+tbWmg2EN2Q=;
        b=J+ypgX1U6L38+PHRfYptHIDSlkjakjLaONkZtqaykq68xJeYUR4F8/xCO4vxn6+MgA
         jwQg0bv9Zejxe7RKSdhQXzTEE2ufI5UIpERbFVss02u78FGMPAVptJHz3xH+BTVRZwf3
         MYRWMino33Np+jxNIhUhJVZ+6+AWyNM+iFcoJDTqloApj/1W0y6dwr39d1Zy70gsjYNU
         snXLhZTgqVbhHw/OxDIFtfzRV1usCc486dXRLOjXzQcUKem/fbhwz99F0B+g1br7J5G2
         GCkSUS2gv9uqOIoqisqQWQ6nC0C1oE6vuxVPKmMIW0mQArBS3qHzBSOSq50lOb7tT+7A
         NNNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rPm+piDfgJoMaARZrQfP2pcs14MAhj/7prGesR9906ljLxl3o
	MSwWnVibKpqvi1NpupAwyo4=
X-Google-Smtp-Source: ABdhPJwJtyIr4y3mneKOQ69BdhE3kJIf4fQZwLDdbRtdFmuysI/Qqiszwhje3O9AvZODv1ef+R3YJw==
X-Received: by 2002:a05:6512:b9f:: with SMTP id b31mr5007562lfv.96.1629446028787;
        Fri, 20 Aug 2021 00:53:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls1478361ljf.7.gmail; Fri, 20 Aug
 2021 00:53:47 -0700 (PDT)
X-Received: by 2002:a2e:824e:: with SMTP id j14mr14992018ljh.77.1629446027737;
        Fri, 20 Aug 2021 00:53:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629446027; cv=none;
        d=google.com; s=arc-20160816;
        b=kdxy0rFOXPVMPfW5BTUtIPKthFoscEfrJ8hud01V5VBn4xGgPUTCzl4VtfDP5979rP
         n366629qOqxTD5MYBu7j3K4PjOTvy5zbzSKXO+ig+tzuyqq5H2Jjsw9Ypew2gGCYJav7
         axvHNaYMTaPQi/tIePUP/eSLZJOwb11sb7o0+LxYmqPkG6FQVogOQd76pBmLQLJt/Hpo
         CVMGFXKE6iQpKdxhY4arCxSPYW61XteitUNZWYjAwmmN2TJP9qq4BWEIvkUz9A7e/gCZ
         GF9kEe38pfVSDSMxMtGmnpqyylL9cHPW4j4Sr5dWao8PqSrAbVMdw8Ub7Kr/asy8aYzX
         OD1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=wEiaMyIuXyMq+ujV7n0FcHeqYHrbP/JUgjTH9DT3rRM=;
        b=AZzCoIjTL9Vvj0phXQNKuJ9Ip3uxxY6WkiHqOuKvFvZgd8HXLp6IT8A6ezSGPerQhU
         S7u1/FkdvbdHKawv3epO/t0COnN08uqmBe7w9xIJHOqLF+gt1cOiV/TNC0yyHpd5yzAq
         V/zNC4ac4+Ena7gsAH8Qpkn1BpuSdYS4+4f1xAjl0Mv/Qm7h3TNBmRl3i2Zx1I6DgVHV
         JOznhUhCsAM9ql9dDIFeLpVaCJWiPPyq3bBzBOrZ+iLBZo0exkJ0nSoDZE8hw6dt4Z21
         XPEmBs1S5TMcgmUmcFXn/D9wRe4YGfFX2RwC6za1Thl8HxUqjcsp0hm3MkdMLtFLm7/H
         SgmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id h13si64164lji.2.2021.08.20.00.53.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 00:53:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4GrYmV3rRlz9sTr;
	Fri, 20 Aug 2021 09:53:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E8Ffz9K-cCxD; Fri, 20 Aug 2021 09:53:46 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4GrYmV2jCFz9sTj;
	Fri, 20 Aug 2021 09:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 3A2918B868;
	Fri, 20 Aug 2021 09:53:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id GYJg-josgfgQ; Fri, 20 Aug 2021 09:53:46 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 0AEB28B862;
	Fri, 20 Aug 2021 09:53:45 +0200 (CEST)
Subject: Re: [PATCH v2 57/63] powerpc/signal32: Use struct_group() to zero spe
 regs
To: Michael Ellerman <mpe@ellerman.id.au>, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linuxppc-dev@lists.ozlabs.org, kernel test robot <lkp@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
 linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-58-keescook@chromium.org>
 <877dggeesw.fsf@mpe.ellerman.id.au>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <0f6e508e-62b6-3840-5ff4-eb5a77635bd1@csgroup.eu>
Date: Fri, 20 Aug 2021 09:53:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <877dggeesw.fsf@mpe.ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 20/08/2021 =C3=A0 09:49, Michael Ellerman a =C3=A9crit=C2=A0:
> Kees Cook <keescook@chromium.org> writes:
>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
>> field bounds checking for memset(), avoid intentionally writing across
>> neighboring fields.
>>
>> Add a struct_group() for the spe registers so that memset() can correctl=
y reason
>> about the size:
>>
>>     In function 'fortify_memset_chk',
>>         inlined from 'restore_user_regs.part.0' at arch/powerpc/kernel/s=
ignal_32.c:539:3:
>>>> include/linux/fortify-string.h:195:4: error: call to '__write_overflow=
_field' declared with attribute warning: detected write beyond size of fiel=
d (1st parameter); maybe use struct_group()? [-Werror=3Dattribute-warning]
>>       195 |    __write_overflow_field();
>>           |    ^~~~~~~~~~~~~~~~~~~~~~~~
>>
>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>> Cc: Paul Mackerras <paulus@samba.org>
>> Cc: Christophe Leroy <christophe.leroy@csgroup.eu>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: linuxppc-dev@lists.ozlabs.org
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Kees Cook <keescook@chromium.org>
>> ---
>>   arch/powerpc/include/asm/processor.h | 6 ++++--
>>   arch/powerpc/kernel/signal_32.c      | 6 +++---
>>   2 files changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/powerpc/include/asm/processor.h b/arch/powerpc/include=
/asm/processor.h
>> index f348e564f7dd..05dc567cb9a8 100644
>> --- a/arch/powerpc/include/asm/processor.h
>> +++ b/arch/powerpc/include/asm/processor.h
>> @@ -191,8 +191,10 @@ struct thread_struct {
>>   	int		used_vsr;	/* set if process has used VSX */
>>   #endif /* CONFIG_VSX */
>>   #ifdef CONFIG_SPE
>> -	unsigned long	evr[32];	/* upper 32-bits of SPE regs */
>> -	u64		acc;		/* Accumulator */
>> +	struct_group(spe,
>> +		unsigned long	evr[32];	/* upper 32-bits of SPE regs */
>> +		u64		acc;		/* Accumulator */
>> +	);
>>   	unsigned long	spefscr;	/* SPE & eFP status */
>>   	unsigned long	spefscr_last;	/* SPEFSCR value on last prctl
>>   					   call or trap return */
>> diff --git a/arch/powerpc/kernel/signal_32.c b/arch/powerpc/kernel/signa=
l_32.c
>> index 0608581967f0..77b86caf5c51 100644
>> --- a/arch/powerpc/kernel/signal_32.c
>> +++ b/arch/powerpc/kernel/signal_32.c
>> @@ -532,11 +532,11 @@ static long restore_user_regs(struct pt_regs *regs=
,
>>   	regs_set_return_msr(regs, regs->msr & ~MSR_SPE);
>>   	if (msr & MSR_SPE) {
>>   		/* restore spe registers from the stack */
>> -		unsafe_copy_from_user(current->thread.evr, &sr->mc_vregs,
>> -				      ELF_NEVRREG * sizeof(u32), failed);
>> +		unsafe_copy_from_user(&current->thread.spe, &sr->mc_vregs,
>> +				      sizeof(current->thread.spe), failed);
>=20
> This makes me nervous, because the ABI is that we copy ELF_NEVRREG *
> sizeof(u32) bytes, not whatever sizeof(current->thread.spe) happens to
> be.
>=20
> ie. if we use sizeof an inadvertent change to the fields in
> thread_struct could change how many bytes we copy out to userspace,
> which would be an ABI break.
>=20
> And that's not that hard to do, because it's not at all obvious that the
> size and layout of fields in thread_struct affects the user ABI.
>=20
> At the same time we don't want to copy the right number of bytes but
> the wrong content, so from that point of view using sizeof is good :)
>=20
> The way we handle it in ptrace is to have BUILD_BUG_ON()s to verify that
> things match up, so maybe we should do that here too.
>=20
> ie. add:
>=20
> 	BUILD_BUG_ON(sizeof(current->thread.spe) =3D=3D ELF_NEVRREG * sizeof(u32=
));

You mean !=3D I guess ?


>=20
>=20
> Not sure if you are happy doing that as part of this patch. I can always
> do it later if not.
>=20
> cheers
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0f6e508e-62b6-3840-5ff4-eb5a77635bd1%40csgroup.eu.
