Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBW7ER7XAKGQEFGCXL6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D1592F2C25
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 11:30:51 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id x17sf297966ljd.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 02:30:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573122651; cv=pass;
        d=google.com; s=arc-20160816;
        b=arI8pPdd0BclnIWUjF8dq9Y/kANQe7bPx30zuf9d8DjEz7Q5wav8NCT1acRCYLf8I2
         iaEi/5proYfVgnKvv9ggjFfMIbTHliHd/yO0JKk/YFbwQ7yqta3nuqZUM6lUHTJRTizT
         QzWdtbXlTJ8qqzcfhCZD4Pvw7ulH6lEtdsOGNPxRsbRKPWcNz2ENYZTmPN/pYre1LZAd
         6sIZEj9AG2Dq/Bz62SR2YMwTp7Uikcn3WqqBll0C3SdfwBEXJAYEDE3h2pZciGdzg+aV
         YUWDTLm2zo7YjcEgbuLo8VyKVHhAN+22cGMp/QqbTKTeI2eMhuJTNQEDENWIdkUPatFM
         NEbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n7Bu16Ks0bsJwJptwT0gtaEDsfu4imIO8GZIUACrIaY=;
        b=RDVfUxdhmGYzVVnYY2FZpiZiEdWgta0T54MNX7e6b52aMgRqhPhRfsEIyWECo6Sv1u
         f9aYWS8ofupG5Mp9gyWXX0VyFwJjRK5WPeUCRHedwjmk4LSO3SJ50Lh0VXmb9YqqBKuW
         8FOQh3Dn8mbAiuMcua+2vfslN+n13YhaSXjnpNmxYlYtZj3JwqeRFHmisl0C3KffyDHD
         TZ/goPPYu4kSyhyTucsY8T4bp+w/6FFU+pGOop2UjUTXiPlfjYwLsoQlLpvVeu633X/q
         vPVTH1PggOwBPDMTdZeEVgzStRctBYDHPAtOoXgG0WjPX75c6FzhZ/KrnKdY9IqrZPjh
         LzlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W8w6KWUU;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=n7Bu16Ks0bsJwJptwT0gtaEDsfu4imIO8GZIUACrIaY=;
        b=NgYLc88B4qeU1I2JAtIYVbmSr9fNuJjS6uA+SOHbx3FHnYnH6tT6L7K7tgaC2Ha4wj
         kLe7iO189XH3xMNPjTo7j5WUikTCcKTVSX3/vsq7MGy11j1U7gZk41VAzaUqY+Uk2aAv
         v2f3CDBAjer0ERnYS6QVI2nNrc3fLHp3+vcLwlIrVlOYEYLFW0DB5+EIkpSFY0SZZ6/0
         Kabtq+APn8oT4NaJNEPU5Q8fNAdMr4yg966klOQaHy0/WxbpmedazaXDeh+aa0978/vh
         WvyPzpnOkrn6fkbyngOSZGc+OxWKID2a8peqkFMjjC35kXpG6VN3pxU3l0QtVgF38CQT
         wksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n7Bu16Ks0bsJwJptwT0gtaEDsfu4imIO8GZIUACrIaY=;
        b=H9U0gqhZOw1tO5tVzBZZA30peq3F+NSbCpSSgmZsxvuDN1FJLcIAKSjMV/0aSCwq6s
         vXCxQvpvvU2BCHhcSWJ10V2aL5V5pKpbS8lQfWGRzZgT7jzgc8C6xd7y2megut4TCYhy
         ZECUJX1E+8CloYJMdV0OzNH5dKrJTfugixCRGN3ZEqwHzqLUbGHXdt8ZDnHdPc/P/NkY
         yEzL8ttIBIDlQnUjWYGkrWvVBw5flSil7KYVnZlyzpIK1K+KDgMCrIOfgfEvMo8au0Bg
         Ed17T+nSGvZN36Ue5I1dDTB85ywSbBSwTDRMqOiNJ5e+f7NQXQr5tgt/mXSTOZCEEcJG
         9Fpg==
X-Gm-Message-State: APjAAAXFxbeZKTzeA9QQZcoIiGyzjvBMQsbZ12OR38EAFWh7FvdKe3Zd
	i+Y8y5eLZbeWxmsaV9LRejk=
X-Google-Smtp-Source: APXvYqzjdqWdU7inVJdTmXGrGSCCnRlcMbSF8CvtuOC2I0FVcO5Nvwi/UGAZGTkyjgOIMLZYpIvrWw==
X-Received: by 2002:a19:7515:: with SMTP id y21mr1864299lfe.96.1573122651212;
        Thu, 07 Nov 2019 02:30:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:720a:: with SMTP id n10ls1480562ljc.9.gmail; Thu, 07 Nov
 2019 02:30:50 -0800 (PST)
X-Received: by 2002:a2e:8508:: with SMTP id j8mr1826707lji.136.1573122650705;
        Thu, 07 Nov 2019 02:30:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573122650; cv=none;
        d=google.com; s=arc-20160816;
        b=ehss70vFAn23PoU8kJgNymsRbPY1HIFoTylUt9VStPpOw9a78d8VpD39gyIiawus2K
         4DCBy8w4aesnWnBvku+A+pAnojz/JjCEWyr2Sm3BMzRFUT80NKR5XnmTIpv+BKoY/YtX
         noC/scfIDmA8g+cIC88iKep17qP25lTQ8MTxGTW7PyAFzu3JtksqZDm7DCOG2L4Q76gk
         yOXDDtYW2M+dX7iX8GB4Z08Ss+qxjRoaoXa2gwj5JxTyd5is3tJkV9MO1+t7ets7rfXc
         j/VyN2/D2vUVWG7Kev0Tzkotlck6tkW+mJx/JEY9cOv36/ubog2O4AgkuEPV5/eDyOz2
         2wKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gfnRKWxQsfmZZ793n5BwE5j+nRq6Ghk0lwXjK8nGNg4=;
        b=PRodugzHCV3HT2+gRxdkn7yV86MBZVrm5psSY1Ox2Hwwo/0yxqspKS5NwQmE67doth
         UXC32KDhOomdVrZAnYNjo+yrsNzRrrXEQBnUeCy3GpMb1NPzPVxoNG0u24l7xHDsPzsU
         XigfFrrwayx1NYF18jsTo/RpBkjstCL0nVZz8w7Vh3VKB2AS4OV39VEwFtF6tK2sHs9H
         yUSQCM35BXiXl8Ax7YyeqDGjrk2He4PYg2yrBtPqMQkF8/mXyhGyGsqg91ozjKY/pkcy
         S/YAtoMmHrGF+lJ2EvmMlIIrgIwB4H2jUyYb+0jEfPQwlV/AfpnwrzmytR23kOa0bP44
         bixQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W8w6KWUU;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z9si131742ljj.4.2019.11.07.02.30.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 02:30:50 -0800 (PST)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id t1so2407468wrv.4
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 02:30:50 -0800 (PST)
X-Received: by 2002:adf:9ec7:: with SMTP id b7mr2106602wrf.221.1573122649537;
 Thu, 07 Nov 2019 02:30:49 -0800 (PST)
MIME-Version: 1.0
References: <20191030142237.249532-1-glider@google.com> <20191030142237.249532-3-glider@google.com>
 <20191101055033.GA226263@google.com> <CAG_fn=UQFwF3hre0bWDnhHEg+_bgUWNpr01hExi2_NmJi3XHwA@mail.gmail.com>
 <20191107060816.GA93084@google.com> <CAK8P3a1=V=tve1NaS5+O3dM_4pFLWz78+TNiqdtqns0WazMz_w@mail.gmail.com>
 <CAG_fn=Wwds32i3A1EpBAjFF7MHhLJaASjHq=Jwuyg3h6XhLU-Q@mail.gmail.com>
 <47fdac13-fa2c-2acd-2480-5e6d4db208f8@virtuozzo.com> <CAK8P3a0pSy_dwg8h8vTK-yoa1W1OxLiisnBe9E_tDBfJY9E1qQ@mail.gmail.com>
 <6875c6e6-2f1f-f8e6-e5d7-d451c48397ff@virtuozzo.com>
In-Reply-To: <6875c6e6-2f1f-f8e6-e5d7-d451c48397ff@virtuozzo.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 Nov 2019 11:30:38 +0100
Message-ID: <CAG_fn=Uw2b7veVZA+7KC_6bTz+3EnChE8ijDFTOK+0oAM-zEgQ@mail.gmail.com>
Subject: Re: [PATCH RFC v2 02/25] stackdepot: prevent Clang from optimizing
 away stackdepot_memcmp()
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>, 
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
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W8w6KWUU;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::441 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

On Thu, Nov 7, 2019 at 11:19 AM Andrey Ryabinin <aryabinin@virtuozzo.com> w=
rote:
>
>
>
> On 11/7/19 1:00 PM, Arnd Bergmann wrote:
> > On Thu, Nov 7, 2019 at 10:46 AM Andrey Ryabinin <aryabinin@virtuozzo.co=
m> wrote:
> >> On 11/7/19 12:22 PM, Alexander Potapenko wrote:
> >>> On Thu, Nov 7, 2019 at 10:04 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >>>> On Thu, Nov 7, 2019 at 7:08 AM Sergey Senozhatsky
> >>>> <sergey.senozhatsky.work@gmail.com> wrote:
> >>>> The normal way to do a volatile access would be
> >>>> READ_ONCE()/WRITE_ONCE(), but that seems stronger than
> >>>> the barrier() here. I'd just stick to adding a barrier.
> >>> I actually like the READ_ONCE idea more, as READ_ONCE is really a
> >>> documented way to prevent the compiler from merging reads, which is
> >>> what we want here.
> >>
> >> I would rather go with -fno-builtin-bcmp or maybe even -fno-builtin if=
 that works.
> >
> > The commit message for 5f074f3e192f ("lib/string.c: implement a basic b=
cmp")
> > mentions that  -fno-builtin-bcmp did not work for LTO when the global b=
cmp()
> > help was added. I don't know whether the same applies here, but my gues=
s is
> > that it's the same issue.
>
> But we don't do LTO.
I don't think not doing LTO now is a valid argument, as some
distributions may start doing LTO in the future.
(Android already does LTO, by the way)

Regarding this particular case, -fno-builtin-bcmp is insufficient, as
Clang falls back to memcmp() in that case.
Building with -fno-builtin-bcmp -fno-builtin-memcmp does the trick,
but we'd probably better use -fno-builtin just to avoid future
surprises.
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/6875c6e6-2f1f-f8e6-e5d7-d451c48397ff%40virtuozzo.com.



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAG_fn%3DUw2b7veVZA%2B7KC_6bTz%2B3EnChE8ijDFTOK%2B0oAM-zE=
gQ%40mail.gmail.com.
