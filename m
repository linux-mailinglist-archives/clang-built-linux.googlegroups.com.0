Return-Path: <clang-built-linux+bncBDLKPY4HVQKBB4MCRSCAMGQE7JDTZ4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F83369828
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 19:18:42 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id n8-20020a196f480000b02901ae3a7df1aesf10742947lfk.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 10:18:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619198321; cv=pass;
        d=google.com; s=arc-20160816;
        b=UhTsAqPuOPoN65oW4TdYPnfWicWwC8krCTeMk+EeMUKpZncdnIQ3rfo1sk7fvpICfV
         Q5O/Lr8lftpD7L3cdEYqxcIpDJzu4BzwscOhKPhSi/wuPWXxUVAm/t5BHP8yq39nZ4l5
         35hYukd8ThLTtNhV7sA7n3rzjJF+dcozQ9DJUVg9VY2oefdNWqYbtCef2Kf0/AGAurtR
         kdQflhTthPrp1TX3CpPRcWkLGry4K9s8srLsnyNnZMhA909WlbN27fs3oO3zAJ73sNv5
         xbGRZIAajwYCFvpCFn1NmQcy9wMMyOLx2ow5iOBR983khkrMFiYvrTgmCxuSIMK61x6H
         F0WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=uud2GcM1cZ3ALb9uJnGJ8ckku1QOKp7N4L0nSAfD5qU=;
        b=rSSy5pDyDZ5uOCJR5/DKoXOlVlFLNv8TTxp+XpohzzGC94kFMdqP8jZnmHvDxg7jZd
         q9t+KAzJarfP559KrYHRR5hW+BxwJI15ik0sTA0Sjn4r+O8ptCJuQzNmU9g5HTqQnjKp
         r+F2BONmnqOJVSmQZUhUgUl64y+Y12u7lRZfAbsseYw1XjaoSGwM8pJH0hPEc07oD9ys
         ZBNvAjL8AI1n5qiXJfZPVWoMYG5yfKOOXeGExedMyPUgFOE63I5tu55bmzBv1YjgZ3xN
         +4PKIux+lJhOb8s9HE9z+eIOXY6K7FpstOhsrCXDEfgFK29JdtFBam6w/L5+jgD7xgq6
         M4vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uud2GcM1cZ3ALb9uJnGJ8ckku1QOKp7N4L0nSAfD5qU=;
        b=BN5AR8r2AlrjJ4lv4h3oUDzHUw4CsN0Vn8uBFDCVnV3f70fDcKfU1ZZ4/9TulXaS7G
         FJTH1uuRojQ+RfpmeA4BZnASdpTfFwLWiK6X1VLlFvREJpQKtD6aQYgiwzfZL9PNKHWM
         80fY2PbuNnyWR78pYueaytpU+xtFtLd7udnGNchxpbguQLMxmj8c7X5o2rYouh68Hosi
         iKtl/kmdF5NQY4v1ogNeH2h+VFvulHo9J6KR+64ODM7nsrfV+wIf9wboen9NVz8QjU83
         2efXMpG59Ze5XkvNfTAjJnhZaXv0DrqLppvQ7J9Ia8+DbAF3XPA9Sl5B1dRFqesvhcT9
         rE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uud2GcM1cZ3ALb9uJnGJ8ckku1QOKp7N4L0nSAfD5qU=;
        b=H8VKlWBfIzMJp2HIcY2a6TO4fnEmoVjgzSKQch+4auctAvvIYdbAxhXWJ2gNyWJUS7
         pI1conw0aKmNoh5W0nQSQ/RbkOa3VYlNjpZcH8ocVv1sNJTXF2X2UZKBqWD8oAepRkdy
         wUs31I5czzYLKqmDoYzluQxU4rkMiirhhNz18EOzMEEYmImbPqyerkN5JBEw5k8cOp2N
         QgCcgvEOSkxLnRNSLqItyr/WrpU/uDcby26ETDGOE5YQBB+GRbDJJ/VHIb18t1GLVBwL
         Q+lRF7jCh160Y8faInknsqyOMZmVgG5aziCOMUADvi4YK/7aT4ze1R5HG0AJYF4WsliD
         HIZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vIjjQD28gD7HrlvMmMuRF3OeaCeLKwLd0OvAow0ULXJdXl2/5
	YbvG7XqxdgNjURTU09CyUuk=
X-Google-Smtp-Source: ABdhPJzIWI+jNIRTwTeQ4+Po/yD29HYpPaLzGVnKFPFVIPgXqBkKCcPmTQFm6iVhjRuYz+V1c/fTjg==
X-Received: by 2002:ac2:4ecc:: with SMTP id p12mr3383424lfr.531.1619198321617;
        Fri, 23 Apr 2021 10:18:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:890b:: with SMTP id d11ls3236456lji.9.gmail; Fri, 23 Apr
 2021 10:18:40 -0700 (PDT)
X-Received: by 2002:a2e:8552:: with SMTP id u18mr3328714ljj.374.1619198320466;
        Fri, 23 Apr 2021 10:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619198320; cv=none;
        d=google.com; s=arc-20160816;
        b=CJlXrHm4t2rgCoUpxahxb3srvzE+NSkairWpDOwOb3Fc0trcVxPZER+TIVT3grZBAS
         hGmUO/KXtOPzI6Jrz++HRg3Li0pmIjIFTdFvjeYRc/vw0Fr/+RY1kCOLFVOycVxmzuOj
         NRHnkZafAvtFObIFk9Vy7TDoU+OVFdSx0xIEbRu89r8yzg9gM0IVdCvgBUum6rJBIk5N
         jQPPEk1jgLxnlM8nzPYHPh5d3+vyry8H3gtJoOMYgPlvlzLadSjJDe7Jggy0vnnyGPqZ
         4ydw7JwLS82CV1CDxZlatQ87ZwvdcN+5jwXKjLpNwr6E0JLNVzPX8eysjtdtPJCUmwYi
         PCsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=b4xS4WezkkhmUJCHZBDGl9byI4RSyOt9oDHFZ2DBx+E=;
        b=Z8o/TzHsyMJ/tO2xTj3EUtr58xqkR9zS3SaU1X7o6n83qvm8IySWD5+58Gr+jidAmV
         Ec+MRCrYr0fF7jtyV/Z5OYclAVU9X1/598Fm2jY0FNPS/6GaFyXbZlQXXS7VlHpArJ8Q
         GyPNVFqcQfz3VYYTdfEU78d7Au9g3yDFDlW0nmQUFuATXOxMC5FbkwHP4ad/ixY6qvDj
         MNuOWsaHXcXFLHb72g5i271Gr0XEwK3pK5yslupplkLKxsBmFZ6grYrr8zEztAM6JqbB
         jPTSaJSBA5wEkVXqCg4N907OQGpJ2uUIbWgfY0yCA/mH20NASrYMN8Y6HMe0om4KEqiI
         5ecw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id r2si595131lji.7.2021.04.23.10.18.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 10:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4FRgx91x1wz9ttRv;
	Fri, 23 Apr 2021 19:18:37 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id ALw1zRGnK-kI; Fri, 23 Apr 2021 19:18:37 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4FRgx916p8z9ttRt;
	Fri, 23 Apr 2021 19:18:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 7D15C8B886;
	Fri, 23 Apr 2021 19:18:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id HOCbVO0OVlWb; Fri, 23 Apr 2021 19:18:39 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id CB56D8B765;
	Fri, 23 Apr 2021 19:18:38 +0200 (CEST)
Subject: Re: [PATCH 1/2] powerpc/vdso64: link vdso64 with linker
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Joe Lawrence <joe.lawrence@redhat.com>, Kees Cook <keescook@chromium.org>,
 Fangrui Song <maskray@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Nicholas Piggin <npiggin@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Paul Mackerras <paulus@samba.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-2-ndesaulniers@google.com>
 <87blio1ilu.fsf@mpe.ellerman.id.au>
 <CAKwvOd=ZeJU+vLUk2P7FpX35haj7AC50B9Yps4pyoGCpd7ueTw@mail.gmail.com>
 <3d837a36-a186-6789-7924-eaa97f056b68@csgroup.eu>
 <CAKwvOd=KP5CZ5wOrczC6qPAzN7DdFCJ_XvU6e=zvB3XpQrp_-g@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <bfa4fa45-9887-d7d4-21a7-ac48835b10c1@csgroup.eu>
Date: Fri, 23 Apr 2021 19:18:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=KP5CZ5wOrczC6qPAzN7DdFCJ_XvU6e=zvB3XpQrp_-g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
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



Le 23/04/2021 =C3=A0 00:44, Nick Desaulniers a =C3=A9crit=C2=A0:
> On Wed, Sep 2, 2020 at 11:02 AM Christophe Leroy
> <christophe.leroy@csgroup.eu> wrote:
>>
>>
>>
>> Le 02/09/2020 =C3=A0 19:41, Nick Desaulniers a =C3=A9crit :
>>> On Wed, Sep 2, 2020 at 5:14 AM Michael Ellerman <mpe@ellerman.id.au> wr=
ote:
>>>>
>>>> Nick Desaulniers <ndesaulniers@google.com> writes:
>>>>> Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for o=
rphan sections")
>>>>
>>>> I think I'll just revert that for v5.9 ?
>>>
>>> SGTM; you'll probably still want these changes with some modifications
>>> at some point; vdso32 did have at least one orphaned section, and will
>>> be important for hermetic builds.  Seeing crashes in supported
>>> versions of the tools ties our hands at the moment.
>>>
>>
>> Keeping the tool problem aside with binutils 2.26, do you have a way to
>> really link an elf32ppc object when  building vdso32 for PPC64 ?
>=20
> Sorry, I'm doing a bug scrub and found
> https://github.com/ClangBuiltLinux/linux/issues/774 still open (and my
> reply to this thread still in Drafts; never sent). With my patches
> rebased:
> $ file arch/powerpc/kernel/vdso32/vdso32.so
> arch/powerpc/kernel/vdso32/vdso32.so: ELF 32-bit MSB shared object,
> PowerPC or cisco 4500, version 1 (SYSV), dynamically linked, stripped
>=20
> Are you still using 2.26?
>=20
> I'm not able to repro Nathan's reported issue from
> https://lore.kernel.org/lkml/20200902052123.GA2687902@ubuntu-n2-xlarge-x8=
6/,
> so I'm curious if I should resend the rebased patches as v2?

One comment on your rebased patch:

 > diff --git a/arch/powerpc/include/asm/vdso.h b/arch/powerpc/include/asm/=
vdso.h
 > index 8542e9bbeead..0bd06ec06aaa 100644
 > --- a/arch/powerpc/include/asm/vdso.h
 > +++ b/arch/powerpc/include/asm/vdso.h
 > @@ -25,19 +25,7 @@ int vdso_getcpu_init(void);
 >
 >   #else /* __ASSEMBLY__ */
 >
 > -#ifdef __VDSO64__
 > -#define V_FUNCTION_BEGIN(name)		\
 > -	.globl name;			\
 > -	name:				\
 > -
 > -#define V_FUNCTION_END(name)		\
 > -	.size name,.-name;
 > -
 > -#define V_LOCAL_FUNC(name) (name)
 > -#endif /* __VDSO64__ */
 > -
 > -#ifdef __VDSO32__
 > -
 > +#if defined(__VDSO32__) || defined (__VDSO64__)

You always have either __VDSO32__ or __VDSO64__ so this #if is pointless

 >   #define V_FUNCTION_BEGIN(name)		\
 >   	.globl name;			\
 >   	.type name,@function; 		\
 > @@ -47,8 +35,7 @@ int vdso_getcpu_init(void);
 >   	.size name,.-name;
 >
 >   #define V_LOCAL_FUNC(name) (name)
 > -
 > -#endif /* __VDSO32__ */
 > +#endif /* __VDSO{32|64}__ */
 >
 >   #endif /* __ASSEMBLY__ */
 >


Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/bfa4fa45-9887-d7d4-21a7-ac48835b10c1%40csgroup.eu.
