Return-Path: <clang-built-linux+bncBAABBI73X35AKGQEQ7F2YPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A83225AFAB
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 17:43:31 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id b73sf1869927wmb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 08:43:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599061411; cv=pass;
        d=google.com; s=arc-20160816;
        b=w5o+qmcM3J9S/1l87nTsB1sq12ITucnkqj3joWYv8P2dpqVckhg+SUrPGU12xArdIY
         T5gvar0NVNcPv0bDR+UrYSuAe3qpLJRiXMOAVDDhm5SjHhsUMPtcDM3Mp9KtuI7OIiSs
         vOy++C5vJh4qGsZVxYHjs1j5Um6vDxzDSrtwST16xP9sO7LclfcQPwftqMbME6Iy4k42
         Cj1q1MZdq3H4MrvLPXwRGYU1R8w3K5QxI5fsn68umptua5ZRwY0Sg9zIXdscx6OOxCG/
         qkQmRZW1rAUKPz2Xf4SV13vCb/2c6TzO4rD9OWMLinB3hRLAd5CpanG0G3SsbT+mgHW3
         gBNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=HglgrchplNEKv67vOc0HJy5FiWwUgK6Y7QfeuvlQwMo=;
        b=A86I0ff5lUcuyKFBCRl6LjcmG5NiN/Xun5bjD7S281+Ke3ExaNRbBniucHvn4jD/EM
         ebOjIExXP3gQkUFs4LdSeMYQekvAiu2X8nmXMGhS0b1yJRLXgxm+/QqfUtS24pnRQznO
         XEs4/8HhCLAQPAUtg4PMjglnfS/Iv5kqrHBT/uP9ouAN44CNeSltR76kX36yZOTxedq7
         mmyQKpocRK3EtHFP9zGzGUj68+m/f+mr7cfKS871NPwOId7mKLi7mmoBpC/YOL38g/6n
         8mpvla3lu+eTsdU6amCbJAbEf23uwXGmmzo6/0UPpQsRzX/tYGoyZinRTk5bMCtH12Hj
         SqwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HglgrchplNEKv67vOc0HJy5FiWwUgK6Y7QfeuvlQwMo=;
        b=SX+XZDOX5IgrDoCJY4EbQ2jp2QhGM3+M9wRXvHNUm4frG/fAXssYyWFlZ4zpl8Q0JK
         JHJUXU1RzQqpjGFagEi/72028Oy0amIqiymWk3n4HGDzjtaNYtQEPnFd6Gv/+FAJJJiU
         t0C2RhPLL/UJyY/aUcN0Yk3STGaNjFDRkIQ/XZ/XjfWE7mzSdEsQvtYITAmXHvPYxtDd
         zGstB7b4TUI22+8xXPRq7wkTZW62d75dv8BnabiZCLiQq2bN/wK0tHoi7iuhpmdguwEF
         yetizFGsJy/oIiUZ/Rp8yOfrFic7bIlDkcj6LiqE7kEof7n1IHsY7p6AnIw7qbfXwbQ2
         pcJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HglgrchplNEKv67vOc0HJy5FiWwUgK6Y7QfeuvlQwMo=;
        b=l4h0GIIMc1oebYGxsNjVG19eAcWXbKhOkewe5kpCwY+JgOWkL88ZlvP68Gqhy22Z81
         4faHTh7XKs5fdytyj/l+Fh6S8HyMqTzAfPTULh09swv5k8mpAtGpj33LP/DNn+Lnxm3S
         iizpDVdHRC8bBZHM5MLuP9YWYkwgPDWJDcSqmBwUzKlc/qKmAASMdkoq5EHT0n2g+93Q
         OX51B0voBMgnJkWEBJBX7kZmGLfAe5PmGKxfwY+G4n4ot+F4Cq6v/Ar9cNVTC1rCLvHQ
         h3yoEF8tJ7aMILpZvJ/gv+NpjsDeRcXGLZ4Z5nmctKs+m4dvJy6f6o7XHZUes0jd2agd
         ryfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530N6POqLFlxVWDo5fN4y5HcBkqFrEc6JiXbqAStslbldUiAhgWI
	0VkZGoY3X9445Js5mM8dsMs=
X-Google-Smtp-Source: ABdhPJw30JfCNRS5qma9zlzxVCUQ5gNxXWlYI06QkXQ/C8/fo2ObepgoCNAh57YoFOuhH2HzryOWLg==
X-Received: by 2002:adf:c789:: with SMTP id l9mr8300028wrg.41.1599061411287;
        Wed, 02 Sep 2020 08:43:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c2c1:: with SMTP id s184ls1343534wmf.2.canary-gmail;
 Wed, 02 Sep 2020 08:43:30 -0700 (PDT)
X-Received: by 2002:a7b:cb47:: with SMTP id v7mr1337329wmj.129.1599061410803;
        Wed, 02 Sep 2020 08:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599061410; cv=none;
        d=google.com; s=arc-20160816;
        b=ZO6C/T6q1sIFlj56AYHnh0h0VShfHkH7OhYZfeVWEbgf01U7I1D8b6FPw9fN0pdV0z
         eoXTzO5C7lan3f+GDnRJCyXoV6S90zRT834UonNVhwqHnSUIAyE7oGKnThv6sKpDUVVI
         CFYr88YbsS6tCPmOLkc9IJaNLf2jWVJaix92WxvAd4eF0FBOqGR7eWl8VZXn1kUuGKJu
         B3oX+jxP6pDMoGAJPYsy62cyS6DcSZUPDzzle57CcUCnh02BKPsfGOqdEGGWJ6pxjOnC
         ffNqrH2mbhQI3Rw/YPSozhvzlSGcOvBBvZU1kPy2ux/rUKnyfV/8EHAFs1UeJt7CvVx5
         Doag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=X44KaKoZ6yYWt+Ff/z6estOxiSzfVsQDY6XtUZN4g44=;
        b=iAbStbToPZyEI7l1sijK2yEaGDvCoJquRC+XJ2rzPXPUoQ6nDtXRZZ6vpPccUxmvME
         tqjGIfyXQ/k9DtP9mF1ySPaNfIAmqxmxDODcG7vTh3+wlwx0cPc5qaUuTP/Jbl40NNzH
         afhAeLTKkV3VUd7NN4qb6Ca8Q5MybPjbgIhPxFxAted49fs4hjhdFsbUMaNOfH7KwXiS
         B0fzqzCpYD7jt+GxWh0nc874wWtO+HbCMyYC9G1f8wBU9mvcY9nfoA8Y5xx0ZBT97GAd
         5ezixgGSReosAVnqZJTJtGAvxnOg45refKOyZq71U7Ucjhx8rZ8us3AikbIqdh2ohxay
         k/xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id y64si113644wmc.0.2020.09.02.08.43.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 08:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4BhSrw4krPz9txTB;
	Wed,  2 Sep 2020 17:43:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id nFwfpdFhuBJU; Wed,  2 Sep 2020 17:43:28 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4BhSrw21Q6z9txS3;
	Wed,  2 Sep 2020 17:43:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id BEA7E8B7EF;
	Wed,  2 Sep 2020 17:43:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id tsIuuS3JiTII; Wed,  2 Sep 2020 17:43:29 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 3A79A8B7EA;
	Wed,  2 Sep 2020 17:43:28 +0200 (CEST)
Subject: Re: [PATCH 2/2] powerpc/vdso32: link vdso64 with linker
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Joe Lawrence <joe.lawrence@redhat.com>, Kees Cook <keescook@chromium.org>,
 Fangrui Song <maskray@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-3-ndesaulniers@google.com>
 <b2066ccd-2b81-6032-08e3-41105b400f75@csgroup.eu>
 <20200902141431.GV28786@gate.crashing.org>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <0c895acf-b6d7-baaf-d613-236f8be8e1fe@csgroup.eu>
Date: Wed, 2 Sep 2020 17:43:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200902141431.GV28786@gate.crashing.org>
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

Hi,

Le 02/09/2020 =C3=A0 16:14, Segher Boessenkool a =C3=A9crit=C2=A0:
> Hi!
>=20
> On Wed, Sep 02, 2020 at 06:46:45AM +0000, Christophe Leroy wrote:
>> ld crashes:
>>
>>    LD      arch/powerpc/kernel/vdso32/vdso32.so.dbg
>> /bin/sh: line 1: 23780 Segmentation fault      (core dumped)
>> ppc-linux-ld -EB -m elf32ppc -shared -soname linux-vdso32.so.1
>> --eh-frame-hdr --orphan-handling=3Dwarn -T
>> arch/powerpc/kernel/vdso32/vdso32.lds
>> arch/powerpc/kernel/vdso32/sigtramp.o
>> arch/powerpc/kernel/vdso32/gettimeofday.o
>> arch/powerpc/kernel/vdso32/datapage.o
>> arch/powerpc/kernel/vdso32/cacheflush.o
>> arch/powerpc/kernel/vdso32/note.o arch/powerpc/kernel/vdso32/getcpu.o -o
>> arch/powerpc/kernel/vdso32/vdso32.so.dbg
>> make[4]: *** [arch/powerpc/kernel/vdso32/vdso32.so.dbg] Error 139
>>
>>
>> [root@localhost linux-powerpc]# ppc-linux-ld --version
>> GNU ld (GNU Binutils) 2.26.20160125
>=20
> [ Don't build as root :-P ]
>=20
> Try with a newer ld?  If it still happens with current versions, please
> open a bug report?  https://sourceware.org/bugzilla

Yes it works with 2.30 and 2.34
But minimum for building kernel is supposed to be 2.23

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0c895acf-b6d7-baaf-d613-236f8be8e1fe%40csgroup.eu.
