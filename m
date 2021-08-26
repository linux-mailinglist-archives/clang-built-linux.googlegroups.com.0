Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBGHNTSEQMGQEXYMRA4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC9E3F8288
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 08:37:12 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id d12-20020a056000186cb02901548bff164dsf484618wri.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:37:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629959832; cv=pass;
        d=google.com; s=arc-20160816;
        b=ngo5FVqb3GZGuYetQCt38caLIsumkxeGkvfb9mCDYp0CpVgtlWIFsyiI5I6v/YX5vU
         9H/haVKfA/nub1dV8N2nChoRjd+dnX84NXC1YWNGaUZDcd8ocSSCQ5jUbOcs7hqf23iZ
         ZABnSJl7juoFWnCRXDU2VEXjt8cnsiZgpLEUf6jdVfldzyOSQwTG4/26nrk7G5R799rD
         5Q9YKds8uSjGwmoCDimT4O9zbiizXjO3JjYcumEXiXkn/UEV2XiL08ImpGkHSEoc10Tr
         XCHPczRa2ExlA940Di9TkYvdqhEOAztKDDzsSnY46Q9R6minhrsvnXMQQILXK9SlGffo
         r9pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=j+voteZoFMvQkP2vBg8IRZavNgh56DTOW7IjlI27/uc=;
        b=nA6eKFNh4eqrjG48aF0+gJDE9XGUu2LfezU7JLnjvDP2mN1vUr1x3cilTwGa6J3Fvc
         ywZADGbUH621foTsU9/8LiqmVi7gT5Iu9B2crZHltXIF3heFQzXgRoZmR08a3efG1376
         g4lxGSiYCIz/nYY9duWrSL4VEk6VUBTB2xxM2U8tTGHJKJsq59YWpo0JttXxYW7FnOid
         9wS+8kwKqeBgxDck/RQqKzakRXk7nEOqtkUwnMGBh2KUdXHRH7e3lKJ8ECFKXHx81pZr
         5AUvfJ+PeS4owi4XbPSxfzvHiFHhDCbkHrcYQup/anwCJe79pX5H5Hw4dGu1w/9JaMjo
         mBPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+voteZoFMvQkP2vBg8IRZavNgh56DTOW7IjlI27/uc=;
        b=FYDGWOfgK+qhEsbrFqt0+GzjZKQk6RIJIjjpZb8qA7h8mVddtVvqu8hYT8w4qrZLOu
         nIPhTxEoa3/uMc7OIeD3W/9dJJueswOj1Ect+emwoIsSC9qfljcTduvCnAQ8jktX6xsI
         bS0/uTKMMDwZ7zPy8emocg1KFkWLegvX5qW6ddIN4/YNesUm8lHu4bmYcezihYUjPsnI
         wBE3xg9qjEu8zB4tLKoKwQdxZBaryVnkwhj185houxHfG+A4xTyNkIj+cId71otiPZjO
         yKKJQL20VZb9qsTkzIgQ782QsO2HPVvHYMQU11h0nXFkvVaku/KgbYJF3NHTIEHqXHJR
         LXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+voteZoFMvQkP2vBg8IRZavNgh56DTOW7IjlI27/uc=;
        b=iMh2oczh+7zPwfxRVus4Ef1M+kofMQbQfIfoHEi4OwOHzcXNdyTFnY7+SV32SHOgdD
         x/bUonIk6OldMn/N2a8HQK6fOSq/v8kMV7R6CLwZfeVdLx/e3BqdvFbSoLk6zLYHxaIY
         2uiMSz3EG5ZxheYemuCca8tH7odFadG8/Z7aroNbknj0vFrrFCzg2jD1QW3zEm0iBQei
         x1lCOr5f1Qpbwemm+qjvMJCNfJkPX8WnJLxVu33I9zVjmsQ1vMo4et9fOxxyoiNpjoGs
         FWonD7OzyDtd4+RXbdiVYl/rpThKB6UWrPqPhJgizwrtP1u/jYib2su+ToO2YIdQ2gOU
         0aww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SbQDRSs5cKmWaM4LDNkeULj2ZGr+exbRqrJLRdPixtpOT5q79
	JsLTLHnKxqmFrvZ3z4rzaec=
X-Google-Smtp-Source: ABdhPJxQGgKiGCZ2vzenFDqRUx/6pZHIZ8M2QPLJwSuhOKWD77ms5S/QkBOKpHK73nSUEs88jch95A==
X-Received: by 2002:a1c:7702:: with SMTP id t2mr6401677wmi.121.1629959832267;
        Wed, 25 Aug 2021 23:37:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a50c:: with SMTP id i12ls477887wrb.0.gmail; Wed, 25 Aug
 2021 23:37:11 -0700 (PDT)
X-Received: by 2002:adf:d081:: with SMTP id y1mr1974050wrh.148.1629959831387;
        Wed, 25 Aug 2021 23:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629959831; cv=none;
        d=google.com; s=arc-20160816;
        b=y7ku5yaxSgvLfOao7NUs5up7uhXbQFfQ2/0UkzKGWZ/AWm3WwXKrFT/QMzxTQC7nLG
         mQ+/SIkIGAwFntnwEANAvFzD+dbiujxAV23b8AWKxNUkoH8pAuZ0dWQuyT7HJ5L4fMVt
         PQvt6dmC4OsO4urp/vXybSWXxAjltsRwBSPpfXplt6GImk4t4iJwJ1LY0Xs0DAOEXk6h
         kOjBN5eNsI91a2ulbSL8RzA9E2UhSmA85ilBBPGIHvPT1yQqNuvqmHQoS3Tnz3ATLAkz
         cFoiOQNc05q1aLBrOhnDqbigSam1xP+MELUYxKtpfLkfda7SfnpLMyZLJKVtpPo15E9V
         QhCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=6rNCGQqrnXTehv4h0hux8CJxlcrKhTN3DSfTUQqRF6g=;
        b=WJ8rMRCe8hMDrw+jKqX+CGjrD5+lVQRpDmk7Gq+stup4D1OSnhwSpn5PmGDntoHobq
         DcA6ALuqhYut/1p/S3XEV6aeTksBO0QijKsMagOGmSJHCX1J+khiA3fL0iFnwkigqgCC
         5OwnlLsu2Y9QzISo2TheZqJU09dmap/L5SBOi1LGob1DrOnlKhyGNBdaL1HaFKeJ4wtO
         i27YzANlSDp5wRvbE0SKWsvTQ5NRv6PGYoW3K21c+sJNriC21xvMty/L4TjdcdIjuVDx
         4q9fowdh2datklIa8ULbOPLvC+pmkHqbABmybYoIVygAc3hUXT8j6vHP6g5OyN/9FlDN
         /3IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id i4si125342wrc.3.2021.08.25.23.37.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 23:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4GwCnM01ljz9sVt;
	Thu, 26 Aug 2021 08:37:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QY9Ef38fe3qr; Thu, 26 Aug 2021 08:37:10 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4GwCnL67z6z9sVc;
	Thu, 26 Aug 2021 08:37:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id B3E068B881;
	Thu, 26 Aug 2021 08:37:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 574dur1TrPVG; Thu, 26 Aug 2021 08:37:10 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 43D718B877;
	Thu, 26 Aug 2021 08:37:10 +0200 (CEST)
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
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <3fad8702-278a-d9f9-1882-6958ce570bcc@csgroup.eu>
Date: Thu, 26 Aug 2021 08:37:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <87h7fcc2m4.fsf@mpe.ellerman.id.au>
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



Le 26/08/2021 =C3=A0 05:21, Michael Ellerman a =C3=A9crit=C2=A0:
> Nathan Chancellor <nathan@kernel.org> writes:
>> On Tue, Apr 13, 2021 at 04:38:10PM +0000, Christophe Leroy wrote:
>>> Using asm goto in __WARN_FLAGS() and WARN_ON() allows more
>>> flexibility to GCC.
> ...
>>
>> This patch as commit 1e688dd2a3d6 ("powerpc/bug: Provide better
>> flexibility to WARN_ON/__WARN_FLAGS() with asm goto") cause a WARN_ON in
>> klist_add_tail to trigger over and over on boot when compiling with
>> clang:

...

>=20
> This patch seems to fix it. Not sure if that's just papering over it thou=
gh.
>=20
> diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/bu=
g.h
> index 1ee0f22313ee..75fcb4370d96 100644
> --- a/arch/powerpc/include/asm/bug.h
> +++ b/arch/powerpc/include/asm/bug.h
> @@ -119,7 +119,7 @@ __label_warn_on:						\
>   								\
>   			WARN_ENTRY(PPC_TLNEI " %4, 0",		\
>   				   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),	\
> -				   __label_warn_on, "r" (x));	\
> +				   __label_warn_on, "r" (!!(x))); \
>   			break;					\
>   __label_warn_on:						\
>   			__ret_warn_on =3D true;			\
>=20
>=20

But for a simple WARN_ON() call:

void test(unsigned long b)
{
	WARN_ON(b);
}

Without your change with GCC you get:

00000000000012d0 <.test>:
     12d0:	0b 03 00 00 	tdnei   r3,0
     12d4:	4e 80 00 20 	blr


With the !! change you get:

00000000000012d0 <.test>:
     12d0:	31 23 ff ff 	addic   r9,r3,-1
     12d4:	7d 29 19 10 	subfe   r9,r9,r3
     12d8:	0b 09 00 00 	tdnei   r9,0
     12dc:	4e 80 00 20 	blr

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3fad8702-278a-d9f9-1882-6958ce570bcc%40csgroup.eu.
