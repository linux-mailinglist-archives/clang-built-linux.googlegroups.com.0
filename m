Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBUGVT2EQMGQEDBAYJWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F4F3F8A78
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 16:53:10 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id d21-20020a05651233d500b003cd423f70efsf101442lfg.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:53:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629989585; cv=pass;
        d=google.com; s=arc-20160816;
        b=hUpDwRROtooSnALKLeo8pOgav6tE7mxwugxDWcV6DXRPAWwlhVMjJQljFeJcX6EGI+
         xL5tP3qORswbQUPTqLT41UwEOiYLPGUNIWK+1ssfCsxS65Kld2UQSs3ysnrc0f5gEKZw
         xEyyN5gn8guwvOPC0egi9JGHG2QhxGpQBBm5ENOaioYWdBZ3wr5Oq7EErwNHXwdLjm1E
         H44mVluyS3inEzpyg10zcAJdX1n0yyiD+FeIPCdw4NF/4w3iyd2xl5wftWKI/xOq8XKN
         zYkxwtzDr8UYK2ouy/rEtTk7NuCu9zmHTgL07ftQdAnwUMRGyZ0BRY+5V6aRLz6YBmWh
         mFAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=RJYEb/s3tUfbtxYLpM4kbYTiVyJ6gnlzzQyD8WBvO7Q=;
        b=AJU95PfrVD3niNipyjIRkKsQlWfamQ/1qAmlCUpAIZecj0X/2sruBudW1m0sUdqg4O
         Wjt3smhIzQM3tygHTtPYQ36r2i3l3+HSyDgqKFyrVAJnVwJsmEVvMvHkf8M3THSoCQVO
         qZRWv3PzQK7zH8jTzeCHdPWDVmZyqw+WAX4Nf8t4mcjP9kNGG8rHfYLVpCsNGyBuVt1X
         Uqslr3vxJNoT6Q9zhJjAyKpuWET8Ojz9GEFIRdYZk3bZauK526th4VEJd3c/vjr37cf7
         kIZc6uNlAEifhAoyEu1Dp/G5oxjVt05QB0TeMxTS40kSY0LnxdmtpHHmWV5lakG+kK1G
         BSFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RJYEb/s3tUfbtxYLpM4kbYTiVyJ6gnlzzQyD8WBvO7Q=;
        b=BIpE+mfMlS2PaZxwgJkUN45iYiNhYh9iV6F00sNafHE26D3Oq4VIKJQ6k8xuz8p/tm
         OBqZ2U6YR78Q3Ov17A4rVZzLvXq6zk15ke/b9k/w0X6VI4P78OMvqyXePN2murXmilMC
         9EBwTQbPT+JPVrGr9wvdAF5I1EzEnV2Wx5O5vN4pjmObWCfEG/wYwcl9D68p5dszuDQ0
         6PvLO/xDVZgGLYLadRA3B6yOq6kx+ZJMWQgiuQbCmYggaQ3SSi6HRZS6/ar3L4YpNlIJ
         u3ecQ3DmpN1qFyh2fHiXyfJe4yJy7hrQqvUQMVjsrU/0UUgxx91u/UFzwxCYKj+fU4JQ
         24/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RJYEb/s3tUfbtxYLpM4kbYTiVyJ6gnlzzQyD8WBvO7Q=;
        b=kes6k00Nme5B6hH8Bvr3AKykwk007Ner2BpgKpRBXxPvb2rgPjh8XSLILfVm7OK+kb
         nnc0flXGD7zzMVMmIDFuSVeU7rekJ4X2PlHYlMWgVVsI+585R1H4LM619qlYRaccWySW
         4A0sjLsXVt1duGunvYdoNMlaDnJeuuanTNB2EaGL8CB/7/NRiNGKf205IHnOWn7zettk
         5oHcivt5lE1E0nudC5IhKkcvofTt2nXOZ6oJ0d2T7gIWeMNjyhKyvO035xsdJzfVdf5w
         QlO+aP6PS28DT2F3lW+kiQecllwpUDFXOUf1Jy9ukOY5SLsTz0ggiQIt9+VKcHjPKtwg
         pkYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JU43ozXk+tQdCdrVASNSBMzATiNdAERfkZDD7g73CykXD0cQJ
	/wXhK4k7rmpdkMXBHNG9FME=
X-Google-Smtp-Source: ABdhPJwmV7EnuLsnWTydNJ+axweDB+3cNPmWEpPa/j+Jlizswgqlh1Od5Bh2fVXQJDFFK0e8vLAshA==
X-Received: by 2002:a05:6512:22cd:: with SMTP id g13mr3129932lfu.440.1629989584999;
        Thu, 26 Aug 2021 07:53:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf26:: with SMTP id c38ls1205012ljr.5.gmail; Thu, 26 Aug
 2021 07:53:03 -0700 (PDT)
X-Received: by 2002:a05:651c:1144:: with SMTP id h4mr3412245ljo.48.1629989583915;
        Thu, 26 Aug 2021 07:53:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629989583; cv=none;
        d=google.com; s=arc-20160816;
        b=Ugatdk0STozsw+uwaZnWU8DiBDV1ysR5z/3Cb+Sq14QT+s/jZYwAsPBTjb5snjIb+v
         rCGYFps03xkK2G+wVbk6IX/Of6Xf6QOrrbkIII0wgTws1qjZgsr5h5+cS9grmseFYzXq
         LKjwjB6SKv2ZltUAYbuqC/pGkAVob74MilO4I7xYv9eSSQ/hLWRdD7qBagpSpHCut/F2
         KyX+j6K0zuAFvOtqiyVlqsqdDwD8mHizreezbTMc4kQ/eRnbVLkEbNNBWT7yXwMhKv/t
         rIBDCGp0P3ms1Q6CNcQZp/QNI/jFI75ds6igA2PONZ25ZTDsxxjTCEP1oKKVqosnCgus
         BRWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=AMrUKFCnExVd1G06hcQAQBapnZ/imxmCvRckDvqpaDE=;
        b=RYuC+CONh1NBaNYxZiRYFtAzrRxCccA/+3Hi6ffC36i2zqEb52uQpfOji/fKZBk1Aj
         rNU1vwRD+/vF5UnJ3EatO0hTlySgzs6roFNZAW+QJYANcP+UA4MOehXSj4A39zf/qkZR
         Mj1I/Nm9tDM8MMpZESU/awWj3QRr9RjvNQk1anut4ioY/jwdyNpkMr3lFGz1HP4DLtYD
         jmS5wXFZlasCNCsQYHJX43yjgQGWPyaSbeIp+Q2P/1QyZ2nhVj5BOUPn1qUnebNETTyP
         BvCWPjwXcIAOcnX7fnSRRqNRZoi+3Xwm8+vesDCMyl2b2x2PzUYWZzoJroGncmQEbkob
         8+xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id p19si55170ljg.1.2021.08.26.07.53.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 07:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4GwQnW0gGZz9sTr;
	Thu, 26 Aug 2021 16:53:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9XwOq-zzMJJ3; Thu, 26 Aug 2021 16:53:03 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4GwQnV6NFyz9sTj;
	Thu, 26 Aug 2021 16:53:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 723E78B8D1;
	Thu, 26 Aug 2021 16:53:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id cWljRHwm5qtx; Thu, 26 Aug 2021 16:53:02 +0200 (CEST)
Received: from [172.25.230.102] (po15451.idsi0.si.c-s.fr [172.25.230.102])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 3A3948B8B4;
	Thu, 26 Aug 2021 16:53:02 +0200 (CEST)
Subject: Re: [PATCH v2 2/2] powerpc/bug: Provide better flexibility to
 WARN_ON/__WARN_FLAGS() with asm goto
To: Michael Ellerman <mpe@ellerman.id.au>,
 Nathan Chancellor <nathan@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com,
 llvm@lists.linux.dev
References: <b286e07fb771a664b631cd07a40b09c06f26e64b.1618331881.git.christophe.leroy@csgroup.eu>
 <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu>
 <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain>
 <87h7fcc2m4.fsf@mpe.ellerman.id.au>
 <3fad8702-278a-d9f9-1882-6958ce570bcc@csgroup.eu>
 <87sfyw9sel.fsf@mpe.ellerman.id.au>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <5b0984eb-b933-7ea5-462d-283d0fe09424@csgroup.eu>
Date: Thu, 26 Aug 2021 16:53:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <87sfyw9sel.fsf@mpe.ellerman.id.au>
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



Le 26/08/2021 =C3=A0 16:45, Michael Ellerman a =C3=A9crit=C2=A0:
> Christophe Leroy <christophe.leroy@csgroup.eu> writes:
>> Le 26/08/2021 =C3=A0 05:21, Michael Ellerman a =C3=A9crit=C2=A0:
>>> Nathan Chancellor <nathan@kernel.org> writes:
>>>> On Tue, Apr 13, 2021 at 04:38:10PM +0000, Christophe Leroy wrote:
>>>>> Using asm goto in __WARN_FLAGS() and WARN_ON() allows more
>>>>> flexibility to GCC.
>>> ...
>>>>
>>>> This patch as commit 1e688dd2a3d6 ("powerpc/bug: Provide better
>>>> flexibility to WARN_ON/__WARN_FLAGS() with asm goto") cause a WARN_ON =
in
>>>> klist_add_tail to trigger over and over on boot when compiling with
>>>> clang:
>>
>> ...
>>
>>>
>>> This patch seems to fix it. Not sure if that's just papering over it th=
ough.
>>>
>>> diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/=
bug.h
>>> index 1ee0f22313ee..75fcb4370d96 100644
>>> --- a/arch/powerpc/include/asm/bug.h
>>> +++ b/arch/powerpc/include/asm/bug.h
>>> @@ -119,7 +119,7 @@ __label_warn_on:						\
>>>    								\
>>>    			WARN_ENTRY(PPC_TLNEI " %4, 0",		\
>>>    				   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),	\
>>> -				   __label_warn_on, "r" (x));	\
>>> +				   __label_warn_on, "r" (!!(x))); \
>>>    			break;					\
>>>    __label_warn_on:						\
>>>    			__ret_warn_on =3D true;			\
>>
>> But for a simple WARN_ON() call:
>>
>> void test(unsigned long b)
>> {
>> 	WARN_ON(b);
>> }
>>
>> Without your change with GCC you get:
>>
>> 00000000000012d0 <.test>:
>>       12d0:	0b 03 00 00 	tdnei   r3,0
>>       12d4:	4e 80 00 20 	blr
>>
>>
>> With the !! change you get:
>>
>> 00000000000012d0 <.test>:
>>       12d0:	31 23 ff ff 	addic   r9,r3,-1
>>       12d4:	7d 29 19 10 	subfe   r9,r9,r3
>>       12d8:	0b 09 00 00 	tdnei   r9,0
>>       12dc:	4e 80 00 20 	blr
>=20
> Yeah that's a pity.
>=20
> We could do something like below, which is ugly, but would be better
> than having to revert the whole thing.

Yes looks nice, we already had that kind of stuff in the past, even more ug=
ly.

>=20
> Although this doesn't fix the strange warning in drivers/net/ethernet/sfc=
.

What's the warning ?


>=20
> So possibly we need a CLANG ifdef around the whole thing, and use the
> old style warn for clang.
>=20

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5b0984eb-b933-7ea5-462d-283d0fe09424%40csgroup.eu.
