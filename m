Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBR6WR7XAKGQE2X7JTGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD68F2BB7
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 11:00:40 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id x5sf276200ljh.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 02:00:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573120839; cv=pass;
        d=google.com; s=arc-20160816;
        b=dG8pfNHac4MuHOeVYD6YL5q/3TuKqpOdyqjfDtxSauBkfCfjwPkVTrnWLNeTBnGP3n
         E4UW6iVNtQ8wGR1+180pr+X5amMr5rSToiyWsXes1FueLvpzBdiBxgAehCqvOFRCr19m
         KQunA/LBOnU4v2cT++WlAtxu6lHWb++rHZznIb1KbI4wizIhhEvCBonpfGdambX45aIw
         IjpL7RxpVmFOqCuRnK7rH7CChLi3aEFMDC+0fr8F1Cw5jIZT3qrY4sk//PBd4+2ntaoB
         bHRCBWq3Qo9IZ5JqMKC+9BKyOeHwGmZXEZF9UlMDdHY8kgRmvbz8j7wRMSdqzZYBJDz9
         597w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Hckm61zVD/UXJPG5pPNtPFOm45//Gcu28On7041NcaU=;
        b=ujCBmlH4HD+Z/svMfMuGDTz/uSE00l9V3sFqXq2UNylFmSAsMRGtigf/M7LlsrtszK
         mdFcx/NnbttvZQ7yxvGEeF5Vi1a0nXpfQba5BrtDvUjTUGvP52Rrhj9JpiyiZ29O2vYo
         uumEsG8gfzqG/ZEUTDEK3XA3G3ErHczFc14cizF/dQyEwauMwC50REtLcjuks+iSmCpo
         6ceb73WEn+2aJByshUB1/SRVcF8JH9Vxue9rK9/xutmr9XaSby+vk08GNDGaemp/c3NK
         CHKIRCxYOrX2cJV+Qk5IIhwEBL+Z/I9A1aP2VbPHQwwuGUdcn+u1enhYiV/SYDTdq7Er
         DaZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hckm61zVD/UXJPG5pPNtPFOm45//Gcu28On7041NcaU=;
        b=sVDO2NDFhHyl0ScSyGDwqo/QYuA87X5EBlqiHtY7AY7ftN6nq36mVAvedoBOLJ5lPk
         nSQGoNPnd4mKRRjcL/azFoCIFrO/b1RF2a8IMIzM0yR7Gqrn19RB+3nYHK/t1NAu+KEk
         Ku2s6nCwILgjH9cMmmRqL/kOv+gfrIgLRSqcP8Kz945Mtb1eZUvG7pedhdnNo4PiYS4q
         h/B94lndMc9NoNX7LnizOU+toAVHYUploOLdmdhZ4usdOJoy/3p8Wj0j8BaKkajx/0x+
         lqNCDfnhQtzXlyYRdnhGpuUme+kpI1I/0ZuI8Jt8EpailvCV8c+nmq8yVvFwkQWsi8k0
         iGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hckm61zVD/UXJPG5pPNtPFOm45//Gcu28On7041NcaU=;
        b=gz354Bm0Lv26dF2PiTzBXXq5tRRsF+v7pObDxQa89DvrtzhkM5F+9YqhoUBcj0ec4p
         ck1a04LA5Ne3sW/caNlBk5DypUqSIUUxqNeKctql5uOjhTk66SEiEOiSeuj5UcfBQqPx
         U94tR/4U7Bk/kBdVZCX2GbZr8BMIOhQ0fhEiUHaCK4sIo+9KkxbtaVjyR3TWfH9kgIrq
         WfXq29FJ5pHSZC5vuAeq25i5FZnE55Ur6x/lJfHkR2XGSmLZtgQLBz0k5Cfi/8p+vqhz
         ObDofPHcZBu9VMv/G3y9F+3o6MGTzjuKNGyd8g4ncw/mKpaof7OU75qyZlThY8XRP/bG
         PD5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJUODzvBYum6TQvHIXjCKfe+6A95hvMoRnyKmsrzktg27Np3sO
	UsMZJEsSqHbimthn5qWfn70=
X-Google-Smtp-Source: APXvYqy3giRyArb/SV+4URqAcYk4DAih1Wt47Ooak34oUvh/2iD6UNoBVeikZYiBW6O6t9xhAo/fFg==
X-Received: by 2002:a2e:3311:: with SMTP id d17mr1720546ljc.237.1573120839826;
        Thu, 07 Nov 2019 02:00:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9c97:: with SMTP id x23ls1465561lji.2.gmail; Thu, 07 Nov
 2019 02:00:39 -0800 (PST)
X-Received: by 2002:a2e:8508:: with SMTP id j8mr1713440lji.136.1573120839177;
        Thu, 07 Nov 2019 02:00:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573120839; cv=none;
        d=google.com; s=arc-20160816;
        b=A7L8a1vNgZOugCyptwnt25AH1p+jhCpGDThd4E/yIY5Z8/m0lxlxgdwS+2NBm1Lb2H
         1skYiqo/MylZ+JNo5TxZfT+raE3/QS5500cNpvx5Tyx29lrA+MyqNQeHckSxVkM5kXGE
         4KzFz9jGDub0+EOVZvRw5ElG3zL3W9xl04iTrHCyV+SvQNjyR4MqWu0qVScE+dCMcxD0
         5SdZta2OLvq/KmPRw+gYWKgkGlIA3SNTnP0COQPbaugGoL0mhiLvSpzMYaPOG+lBYMTE
         vvOdy6Cu4V02YGFEfkFLj9Xw/RgjlLjfOASt0r4vADEYzHsEb4cjX9IPMo9ysVRQp5VR
         d73w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=lr51r/fJ4uuS2JP+/cSRNsNFNPknfAdTHpcAHBkRrGs=;
        b=g/PifNjQVXNVwD7Kqx/xe74ThbSjtq6IFf5R2jehkknVHddGtbANqc772umNLJtAzO
         7SSjJ3i5R+7HOafVTtlp3xp7EiwzHN4gq1tlramnDYGdT5BLMvGhj+HFs3YFqubLxsn8
         M1gcGL5TCqVYujx9x/1bY33RJgp3/n9BeblBiOedjuemgxHkSYWxiqTr+OiIf6czSJQ2
         6ViJHq0Gbf+HBz9SgLvXJuO0dOSiDUAVh7yQZABY2eQU9W4/Lj/hSHJilav9QYeavWVM
         IZRwWFKfduLkVC4y17s4gXn2llDX9yH1hjqzvNT+ak6m0hpI5RHtMSKaXmcrxFzCA+le
         9x1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id z3si125804lfe.4.2019.11.07.02.00.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 02:00:39 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-qt1-f173.google.com ([209.85.160.173]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M3DeV-1iVfnX0jgj-003aGa for <clang-built-linux@googlegroups.com>; Thu, 07
 Nov 2019 11:00:38 +0100
Received: by mail-qt1-f173.google.com with SMTP id o11so1734646qtr.11
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 02:00:38 -0800 (PST)
X-Received: by 2002:a05:620a:a0e:: with SMTP id i14mr1841083qka.3.1573120835982;
 Thu, 07 Nov 2019 02:00:35 -0800 (PST)
MIME-Version: 1.0
References: <20191030142237.249532-1-glider@google.com> <20191030142237.249532-3-glider@google.com>
 <20191101055033.GA226263@google.com> <CAG_fn=UQFwF3hre0bWDnhHEg+_bgUWNpr01hExi2_NmJi3XHwA@mail.gmail.com>
 <20191107060816.GA93084@google.com> <CAK8P3a1=V=tve1NaS5+O3dM_4pFLWz78+TNiqdtqns0WazMz_w@mail.gmail.com>
 <CAG_fn=Wwds32i3A1EpBAjFF7MHhLJaASjHq=Jwuyg3h6XhLU-Q@mail.gmail.com> <47fdac13-fa2c-2acd-2480-5e6d4db208f8@virtuozzo.com>
In-Reply-To: <47fdac13-fa2c-2acd-2480-5e6d4db208f8@virtuozzo.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 7 Nov 2019 11:00:19 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0pSy_dwg8h8vTK-yoa1W1OxLiisnBe9E_tDBfJY9E1qQ@mail.gmail.com>
Message-ID: <CAK8P3a0pSy_dwg8h8vTK-yoa1W1OxLiisnBe9E_tDBfJY9E1qQ@mail.gmail.com>
Subject: Re: [PATCH RFC v2 02/25] stackdepot: prevent Clang from optimizing
 away stackdepot_memcmp()
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>, 
	Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>, 
	Vegard Nossum <vegard.nossum@oracle.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Christoph Hellwig <hch@lst.de>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Eric Dumazet <edumazet@google.com>, 
	Eric Van Hensbergen <ericvh@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Harry Wentland <harry.wentland@amd.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@elte.hu>, Jens Axboe <axboe@kernel.dk>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>, 
	"Michael S. Tsirkin" <mst@redhat.com>, Michal Simek <monstr@monstr.eu>, Petr Mladek <pmladek@suse.com>, 
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Takashi Iwai <tiwai@suse.com>, "Theodore Ts'o" <tytso@mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Wolfram Sang <wsa@the-dreams.de>, Vasily Gorbik <gor@linux.ibm.com>, 
	Ilya Leoshkevich <iii@linux.ibm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Matthew Wilcox <willy@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Andrey Konovalov <andreyknvl@google.com>, Marco Elver <elver@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:tK1h1T+CYTwMViZfrFqH9HjHg7R2hau1YmX9tTPLk68m+D4iCeP
 Re/j8xzBO6ioPM9WUnljoHT3Oto0TiUoPiwyRuVNepN3ilhGISUoaME95PuTGlrX6WWHfcR
 EGVgGgVcRtxMtR5q95QT73sX/dgK5Z7wipopUybdWjz6rS20qVrLQG2D1vmHqVSOehaapL2
 zJQKNlpBwMscBRdWzkLiQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B5/KEPxH+gE=:ZhMQ9ZyF/cMb/PiUKbYyYk
 1oR2fqB2YK6SB5mxUiEPtub9WEC0Pvd21miP4f8MJ4IbWtlfsl+TUBudYYsVwDSP6ToThbrhM
 wAfQVwL6nUd2Z4Jg55Y8G/mnZPnHh0T//f05TqMUtTVXbrtN331VKpwffzIrjI1fM4ki5Owog
 8neAwFz3cY1N0cl8iwNFaL3xMUzss/QEqgOFkSGMhy/0nucqjzZnNZkCdW6oMqG5A9dOFhQnM
 Q9AnxXOpKI+owCHRVkWY59VzwYAe7cd5UnhWYHexNJneGrv7oJBQrmhzy32/JyKDsMwYBTlVR
 eq/m4Uauzxm/+55I9oieRe0n3vCeSNiIG9HvJJLiTcB58+ELt2+fqLRFFAK83S4+TmJa0ayqX
 VIuXUXq7+9164NnJ4lgnWBN0gwqHgy03lHR8IFbutI0OaX4DeFhi2EeQwXFVvem2wO4f0kFP7
 Zh6gciOZT8YNn3xVmbsl4FZEikXVgJ5aNO3u6DdAA7vfpMQIFH1J/jaQRdVOYe190gThr1DDO
 3N3V5zvM22bcpoiR704+vZauIeOdPjA+XqMslfwb7pmp1tdM98cQVDmop70I9FaWbeyTDBk82
 QETk/RP2Htu/+INxVf4FoBINw2KnW/pjPo1+Hn9/17j/lhuY5cyhfDLiCIXgHLvySGzq1gkpt
 wQXNu3XVFDfnSAunooMCs6lppWAmOuJ8LelWk3pk4M5vNalo75mFnBsbonZ9no9eA1M7Ebx4F
 kpo8mZ1O9qrfl6uUO6QB5vmQgwqOGWDoO1ZNaMlRocYBZKxUhbqANp4f4RTFoYeHCdEmtekKm
 6oaUBNb2vpBxa3UsJsgjUTISFBMfyL2a9dvktrGN4HsMfc64Ya48c3mWDMwCLYviwLniLLF5j
 EpyKqWBDlyPkdKPWmsaxULPHKs9A4rLVNRBhYIWz3FBr5f9mX40L9PjsY4inP3uzT8OIfvXRe
 l5DlJgTjCdWx8hBWKX5jwTszgcKODaGvmXekiquRyZR0xkDpJdhtAdmsl2RKmgRsibZ6ZgAB1
 v3VNNAXsDjy/KM938490fxEvoggF3Uq8JeUDR4vFq8h926lfe4OIeS1CVmN6DbG6/Q==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Thu, Nov 7, 2019 at 10:46 AM Andrey Ryabinin <aryabinin@virtuozzo.com> wrote:
> On 11/7/19 12:22 PM, Alexander Potapenko wrote:
> > On Thu, Nov 7, 2019 at 10:04 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >> On Thu, Nov 7, 2019 at 7:08 AM Sergey Senozhatsky
> >> <sergey.senozhatsky.work@gmail.com> wrote:
> >> The normal way to do a volatile access would be
> >> READ_ONCE()/WRITE_ONCE(), but that seems stronger than
> >> the barrier() here. I'd just stick to adding a barrier.
> > I actually like the READ_ONCE idea more, as READ_ONCE is really a
> > documented way to prevent the compiler from merging reads, which is
> > what we want here.
>
> I would rather go with -fno-builtin-bcmp or maybe even -fno-builtin if that works.

The commit message for 5f074f3e192f ("lib/string.c: implement a basic bcmp")
mentions that  -fno-builtin-bcmp did not work for LTO when the global bcmp()
help was added. I don't know whether the same applies here, but my guess is
that it's the same issue.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0pSy_dwg8h8vTK-yoa1W1OxLiisnBe9E_tDBfJY9E1qQ%40mail.gmail.com.
