Return-Path: <clang-built-linux+bncBCXLBLOA7IGBBYFCW7VAKGQETU3UYGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D5D883A2
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 22:02:40 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id f19sf60898924edv.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 13:02:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565380960; cv=pass;
        d=google.com; s=arc-20160816;
        b=qR0HWT/l/5Zlwyp4CQYHRsWiZjHqKmqBkz13ttvIcOt1bIbt4/m0gfb/vdD9TXxG0C
         9lnDNpl7ySCgwB8yXqLCXnRX5s6+TcR/k0lapX9Y0j88JXRej1WphxFJCo3muSGgXgoW
         XHKKRHWL9LsuLU6T0qn659QHBtA5t/72c9bU3txJiRmi/0C5eRXSws9Pkbv1IJ7VfM/6
         uudpmFYnIYQf3v2ahynP/cVBX2dyP8XIyTLJ3bMaGvvkpCjyqn9p2tgbIXH9lSclPtkx
         isTBM0pxRj+EwiHbS9CXjHRvAY94MTYZb48kEaa9wFlYzr5D6jsm4Wsxm50UUHtY/rmB
         f+rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-disposition:mime-version:user-agent:in-reply-to:references
         :subject:cc:to:from:message-id:date:sender:dkim-signature;
        bh=vCXa3p9q9S52B2L3Tiohs6iEGdtUGoP10GFSqvEZzHw=;
        b=SnGSDf8tTBkM8Xu2hQctV426xg3XjNNTPFBL423UNpQyDsq/UA6no8mH7hqmkD+AHT
         brLRrASRo85IO7u3MPukckFR9Rg9xZIo4nq3azFX2QjYehAktkVvvTmhZTWFTyKizj5S
         ESFhhdrdKgqAQLvlw2P2t5PC+4ZnWbP/w2xiDdGeosFcjVxnOfXA2ZfPBWQkn95fnak8
         F2l05e+S7W1pgkKJWYW2dVX/TqG6ewdnrgOWfJBYJbC3Th1jtcZcp00ptj9YU6hhKPJo
         /qKhph6PVK/Cqo8ae03kWTtLf7skHMWHcw4Bqb3Pk9gbiC+vb/KGDjZqDzYmcMACWkc3
         fNSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:references:in-reply-to
         :user-agent:mime-version:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vCXa3p9q9S52B2L3Tiohs6iEGdtUGoP10GFSqvEZzHw=;
        b=iE+P+YyunvFZB704gv7WxU9/FdrskUwKqJpYEFGcL795pzYqpNq7IZ6AaNGT3QiqbY
         Wz0wc+eApOhrAEFTWXeeSXbW7qhGVmsU1dPh9MkOHdGEuZ1LTyy03wA1ne/VodEZHE5P
         XgB6MPdZ/xNxDnPfzAG8iu3CmgmryD5mbJGbzranv8eXrLS26qDRpx00wLIb0HKPaEl0
         Pg+t3sZ2Pkld3y22CHeqifvH5ADrd6UAzIlknT1PJa89DmODCTJAaE2P72tJxCLLAxLr
         29qouLdLPBEnngr8AXQ3oppKy0EC6DTy92UKbuv6bmw/p16GrU2HtLobM0aPUSKju67k
         OOIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :references:in-reply-to:user-agent:mime-version:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vCXa3p9q9S52B2L3Tiohs6iEGdtUGoP10GFSqvEZzHw=;
        b=fNLhhmB1dgdguOWbzTxMVm5M+PU5AjQN9uRy3XxKtJRcTFbFG3DH1ygb+5fg/wnk3E
         9/YczwroNH+zLAWyraXeNsGZsjnbAEbD31x2nNjBQSh2EpzAPCTafOttYM5eE8UZvL1J
         T3hHErDR7ghaqnx5JeZygfoN3Ose4N4Bn3wpCPAs4UP0fzzwkeym+onuOTSDCSaBqm6S
         x7MjvFaho5zxev8gfEmA9+9JHDewhvBBbP62umPI2FQR1ic7OcSNIBRSsIj6z+YrQv5G
         SXt8MeS+AuiqROaJ95WePHbMF7KxGlrPjLswwXrXCZ6Z6a6R2+hdjhuegI6GkaQyxb/r
         Hnuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEzklFjprZDuPcplcshv3fjmFiOwGitZaLYNvResN195avqs2U
	qZdY2Md5g6sKWtI3046OVtQ=
X-Google-Smtp-Source: APXvYqzXJRjBek7mKbW2ZqLUSkoQGVZMJw7ZktbIjGGGe18QEKHy78Bch/vL+QkA9NYhPrTuoodI6A==
X-Received: by 2002:aa7:d617:: with SMTP id c23mr24308701edr.54.1565380960599;
        Fri, 09 Aug 2019 13:02:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:90d5:: with SMTP id d21ls1075511eda.11.gmail; Fri, 09
 Aug 2019 13:02:40 -0700 (PDT)
X-Received: by 2002:a50:9646:: with SMTP id y64mr23895934eda.111.1565380960225;
        Fri, 09 Aug 2019 13:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565380960; cv=none;
        d=google.com; s=arc-20160816;
        b=r4q04Ti6qvEACvWDjHRj3rd1njS2dAw9x3hq/2SJ5N4Sjs2/nQrcLj7SfiZLpMydgL
         SBxA87NcBvp2ODp3As56rAkyGTu5YeTKW9Wj0+lJLbauE8hE46SYw5UeXiqjbQOLtiZ2
         Hc1U9QOwyP2BfmFS6rcWzzDN3Pu6cqrCeQH/aSaY1k+J7dyI14KqdEEQIvs/c24Pgibm
         pvkHBYYP2URol4b1Q4Wo/4ZJGu9j0CwmQa5SZKkmrTm+D8GI0cYGZs5JY7DkwTVfzuWt
         p7EHlx+95oRfMikjB411ytOtKF0qMjwYVH0KuUP/5l4T+++Fu3Ud/SIVq0hnqeuSjeLV
         VpRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :user-agent:in-reply-to:references:subject:cc:to:from:message-id
         :date;
        bh=JRYLp1nQPOUqXyWRtFarNPHLMtNT9JUkyIQBKZKHgJk=;
        b=v8tWusDbwJUgYeAc2ajYnqyS9Iy3i0dlDAkhY4ROPeKD0K9axUMQwbKBVixwPt9D5a
         Lbbci/ewc9O/DooOfXLDI5KemvZGhrDW1rBOpF0sWpHUC4EkGAQ281mphP85aWZrIF8y
         UTjOoYVfUBquqo4xckAE5hUDLBgIPb2PcY9/+/5K85tYgCIT70GYIheltLHAIfydJwBn
         VHNG4prZoJTX96qJAl+r/l0m0AhLWZMYzG/qnP7AxMphW03DdAQs2yAZ8Ue5f3KeS740
         nZcdpgEmTJiVhkZIgr7+8TxyQHfs2a3oNGyjjd8jG9Ay4+JOaxOSsVB3pyTN7sfCwA7h
         +Tig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id h23si2070163edb.2.2019.08.09.13.02.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 13:02:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 464x3z4F4Tz9vBnX;
	Fri,  9 Aug 2019 22:02:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id YXoWW-H0Xvcu; Fri,  9 Aug 2019 22:02:39 +0200 (CEST)
Received: from vm-hermes.si.c-s.fr (vm-hermes.si.c-s.fr [192.168.25.253])
	by pegase1.c-s.fr (Postfix) with ESMTP id 464x3z37Mgz9vBnS;
	Fri,  9 Aug 2019 22:02:39 +0200 (CEST)
Received: by vm-hermes.si.c-s.fr (Postfix, from userid 33)
	id 855AB98C; Fri,  9 Aug 2019 22:03:01 +0200 (CEST)
Received: from mry91-4-88-160-8-182.fbx.proxad.net
 (mry91-4-88-160-8-182.fbx.proxad.net [88.160.8.182]) by messagerie.si.c-s.fr
 (Horde Framework) with HTTP; Fri, 09 Aug 2019 22:03:01 +0200
Date: Fri, 09 Aug 2019 22:03:01 +0200
Message-ID: <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
To: Arnd Bergmann <arnd@arndb.de>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, linuxppc-dev
 <linuxppc-dev@lists.ozlabs.org>, Paul Mackerras <paulus@samba.org>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>, kbuild test robot <lkp@intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Segher Boessenkool
 <segher@kernel.crashing.org>, Michael Ellerman <mpe@ellerman.id.au>, Nick
 Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] powerpc: fix inline asm constraints for dcbz
References: <87h873zs88.fsf@concordia.ellerman.id.au>
 <20190809182106.62130-1-ndesaulniers@google.com>
 <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com>
In-Reply-To: <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com>
User-Agent: Internet Messaging Program (IMP) H5 (6.2.3)
Content-Type: text/plain; charset="UTF-8"; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
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

Arnd Bergmann <arnd@arndb.de> a =C3=A9crit=C2=A0:

> On Fri, Aug 9, 2019 at 8:21 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
>
>>  static inline void dcbz(void *addr)
>>  {
>> -       __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory"=
);
>> +       __asm__ __volatile__ ("dcbz %y0" : "=3DZ"(*(u8 *)addr) :: "memor=
y");
>>  }
>>
>>  static inline void dcbi(void *addr)
>>  {
>> -       __asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memory"=
);
>> +       __asm__ __volatile__ ("dcbi %y0" : "=3DZ"(*(u8 *)addr) :: "memor=
y");
>>  }
>
> I think the result of the discussion was that an output argument only kin=
d-of
> makes sense for dcbz, but for the others it's really an input, and clang =
is
> wrong in the way it handles the "Z" constraint by making a copy, which it
> doesn't do for "m".
>
> I'm not sure whether it's correct to use "m" instead of "Z" here, which
> would be a better workaround if that works. More importantly though,
> clang really needs to be fixed to handle "Z" correctly.

As the benefit is null, I think the best is probably to reverse my =20
original commit until at least CLang is fixed, as initialy suggested =20
by mpe

Christophe



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4%40messagerie=
.si.c-s.fr.
