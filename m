Return-Path: <clang-built-linux+bncBAABBMV4X75AKGQEMS3AFQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BD325B349
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 20:02:27 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id y22sf144923ljn.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 11:02:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599069747; cv=pass;
        d=google.com; s=arc-20160816;
        b=G8pLua+q5l6nBDqy1ivBw1fYnJnSarMSQWjYDRXT/nzQQ78ECrClqC+lTq8Inj9Okp
         X39txVVUlkknNZbs64/04RuuBXdRwNJTrvig3LutSZU4ACxOp8K/eSTLS1X/dkDiOuvL
         tLbuHhysaV70tLhr0pDMpMsSOOGOJvZk3Rcsu89orvJStLr/YJwWfgalsPTucudi6Tk5
         +OHkKibAeEY2V+b6tYnBTWmNbypALfTYky/wgDbOCuLOxDOstH4h9O4s9+/rpoCT5Kcn
         2JpZQKJFpjsQQpxnntq670fCk7Q5HiQ0SYslV6w7YsFy7iiw4bfcBS0JMTpTsC4pxfEA
         iUag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=ZgmUrMGHO+3ur0W7FdkngvdzuOfZnwRZJUhON/BFlvI=;
        b=IY0AzThON7kzQPFIvrxQJ5UPUb4dFBlvKspHGw9wpgzFqEMcqS7WaMUQ25RUoEkVmT
         KFOzUK/KgWRqrCl+xfK7xybed4RBuQW5GYcPlZ9LTkjYv1zXl99PCcnLl+loj46AlBZC
         RdQ4HHjzWD6yAPCW6YoC5JumHIyPYTQcjouTIWOF+ASTRgGFnoDzIawBvoTOmexMrH1a
         WD3Fq37UkVzUJSyHHlaWdErW1UlfYr7Ccq8RsAR04XKw+DasJ8RoR2PMyeGvOraAYDJp
         bdGoU920XAy54tts2ZGINRlG4DlECkLJ1n93yK6/scyF5As66wiTqCNDD4M+HRko1Ka8
         UBfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZgmUrMGHO+3ur0W7FdkngvdzuOfZnwRZJUhON/BFlvI=;
        b=AwsPYm6vreVwiJJq5NsgrtMWxLJ1OfKydFss7b+qZNzVRhKvyyoOsHGn4vhI3MtwGK
         7mtiMZRDsm9OUWNvqR1t+N08VJ/wx6bdqcT2xik65GuUKFhz9iNGzyyV0nc0+xByASER
         Aq/MZOjUK6A2USGUn00AmhfBUyMQI4UqQ9Twj8ih6lwAucGDE5adUNxR6QrQwPOjRZrz
         O9mtkTCZXJlbQKKVEhVbFFWvgvGh8dWAeDybk2nJqV+c4IvRj0SZpYAPj9bj4j/D/qaK
         UpzNSPxnlmmi2MVE/1lUIDzEbHjV/pxO2hUDhem92p4WBee4YEgiIPhVN9T4y5MSpDBs
         8lZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZgmUrMGHO+3ur0W7FdkngvdzuOfZnwRZJUhON/BFlvI=;
        b=AkXVag3RZgrUGyXWywo1RQJZW3pMhUd7E+kOspLjfzBnL4+AVkJsLaFhWdNmfvjjHP
         90GqQ1UkquUi3mn123SULzOpCfz87RY5Zt+SisrOgp2l9bFEh+uHMRDfz/BXsAlplWiy
         f/i2tcevSqkJmDvs3NWrZsDVkwzheL/rQjheQga5a/TdWPI/7KR/Gf1P9F3DFJHqh+fo
         S7XkJuSevpPS4f63RRg0d3RnzfEdjHPRkFU2Ea2EirsQirx1lZeO3/hiZbHYh5TbIdrL
         mxdNVWBJONLTo844cDq3ZPq+Kq8mKJ91LeSy6g8z7/Y5xLg43vWk93Ss3hnf2kbnxuTL
         GQkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Rq6bwv9cJQ+BA7ijRTP2KcdHulaIS86efnUWY2yIBqYh0MdyO
	NmoIQCSKPa9uoQCMNG3K4xQ=
X-Google-Smtp-Source: ABdhPJz7jl8Mz4M3MG5jol5oaLUwbWiK71RLWMkMZAEgsPHXwATe0Z+AVOQEsJ4nobpGEQgL8bZLwA==
X-Received: by 2002:a19:8011:: with SMTP id b17mr3922025lfd.212.1599069746963;
        Wed, 02 Sep 2020 11:02:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls324550lff.0.gmail; Wed, 02 Sep
 2020 11:02:26 -0700 (PDT)
X-Received: by 2002:ac2:4c9c:: with SMTP id d28mr3908604lfl.93.1599069746505;
        Wed, 02 Sep 2020 11:02:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599069746; cv=none;
        d=google.com; s=arc-20160816;
        b=kOLwqbmYa8AUEjOmNM6OFicflgqyBDQy4xzorXy1DbfJU+csLygMSSFlufgd4M+Bwl
         MvLKb4F33TurbrPB4PPiitK2sShTh+3Pfd7xaDMigea+Bb3QzP3QCa65B7nNAD2Yu24D
         y/rMVWcjyAbiW+Dew9ST4qqCujtfGCzjQW/pJCY46O0ftCxKtDbWWPkDrPr9CACmbEWI
         w01YOo/XpdFBi1sXlHfdExlpUwzlH6bjR0WmZsS05JgT+vLEVKbIoVso3G8/goKkcg/M
         7s6UVoIApsgSx2kX5DAajwH2mnrzVQeLOAi02JVTISWi/Sd8F7Kv6BZWB+KdllLrxZ0z
         f3RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=QJhp++bwaeQM0S7vcXrya3pYzVlUjECJTlO5FycpbhU=;
        b=A6p0fml+sCcJM+NuRMTfxIbn5EpH9s0t3wZnx/NFVsTpSBIg/9xcOj5xVzbEi8Ybv4
         yZvXYKzw91Ga+u5YbWoaEvsbRSr0EBu52V12tk4Iji/wntfe4LQnmcVadLGPEcPZxgw8
         m9GfO/FGQBQA3aB6IP2HTicgT7dnFYe1BRt+1NBO5yH9lK7XDALo2PZ4ZXXEQvtJT9i7
         ArDmFrpv7uyTTkpgSFpldtWFlREWq+E1ZZC/GYjILV7dHdIJPSGhJLXG+xFOL9J+Zbng
         GNYsqmtF45y5nwtO47eIzLYuKTfA2D1/sEk3yt3vJOel4hFzg/mPtre64jNngMzsbRMc
         0qUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id k10si9476ljj.0.2020.09.02.11.02.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 11:02:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4BhWxC1zCZzB09b7;
	Wed,  2 Sep 2020 20:02:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id Y2_RjFip5Jy2; Wed,  2 Sep 2020 20:02:23 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4BhWxC0S8FzB09b6;
	Wed,  2 Sep 2020 20:02:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id E95C88B7F9;
	Wed,  2 Sep 2020 20:02:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id N2vQUO36_13H; Wed,  2 Sep 2020 20:02:24 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 4CA458B7EA;
	Wed,  2 Sep 2020 20:02:24 +0200 (CEST)
Subject: Re: [PATCH 1/2] powerpc/vdso64: link vdso64 with linker
To: Nick Desaulniers <ndesaulniers@google.com>,
 Michael Ellerman <mpe@ellerman.id.au>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
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
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <3d837a36-a186-6789-7924-eaa97f056b68@csgroup.eu>
Date: Wed, 2 Sep 2020 20:02:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=ZeJU+vLUk2P7FpX35haj7AC50B9Yps4pyoGCpd7ueTw@mail.gmail.com>
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



Le 02/09/2020 =C3=A0 19:41, Nick Desaulniers a =C3=A9crit=C2=A0:
> On Wed, Sep 2, 2020 at 5:14 AM Michael Ellerman <mpe@ellerman.id.au> wrot=
e:
>>
>> Nick Desaulniers <ndesaulniers@google.com> writes:
>>> Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for orp=
han sections")
>>
>> I think I'll just revert that for v5.9 ?
>=20
> SGTM; you'll probably still want these changes with some modifications
> at some point; vdso32 did have at least one orphaned section, and will
> be important for hermetic builds.  Seeing crashes in supported
> versions of the tools ties our hands at the moment.
>=20

Keeping the tool problem aside with binutils 2.26, do you have a way to=20
really link an elf32ppc object when  building vdso32 for PPC64 ?

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3d837a36-a186-6789-7924-eaa97f056b68%40csgroup.eu.
