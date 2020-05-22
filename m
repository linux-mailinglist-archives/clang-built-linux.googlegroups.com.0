Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBJOVT33AKGQEFNQBF6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F90B1DE485
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 12:34:14 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id v23sf6943845ioj.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 03:34:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590143653; cv=pass;
        d=google.com; s=arc-20160816;
        b=H7oyt7saqjeb5HS8DlHQop+q+kyP5wK+N5dhIHfC5t3qT9dD5rTpIlqv2tvIFeSWdT
         AcYzhmRRMU2TfQI4Wk4Jr1mQnr5ZCtQCY1uXjezPI2das+8lQMRJnPki7AqYfn28DOBH
         cGL+SkFVXu6/t8fx8dsIZMCXfpYWquJyJhTv9OsqG6MAsRleAZuVtnj4bkpPX9ZebGfO
         P2KoE5RoZ2EGhMt9qaMabVpUrNw2S/lgBtU2V4mxdjj78b+Al6SlMei0lXvR9b3F09wU
         uCnEo4jZZR0aQ1DHiK/1MAnGjCv3vuaB/x5cAESZY8K76rUutLsx6J4qdmVHxBXUE0m/
         Kp/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q68aZPBrfA65MvaO1ffbLR9EF+cUXwYDgMYOnRoCA1U=;
        b=YS1JjFtIGxGBwdEYkVEj9Rv1G1YS2oN1h697KiXl3nnbvEQTsLliw/xsELTsz4R/OT
         N7a40KDDTyWcd5Jigi2dGpRUrOwTbymfGtXqR9bWqnQ2AGd8tuU1r91DOi7sV8dHMTAI
         JQs6SIH3FYvnPl7zifSuW5CH9eLZgXY5Hvnx7p+zBHtuXt9s8rSOygEckdPdMBMFKgXU
         5FwfM35GpYjgjzFBEsTShExaFay5mg8vSzcksbqoID6DMlhE4FtlDDEms8C15J1kuSs/
         8Gy6b/fTxzKEMu91Lp0AQyGrjCJggMOR91ESHTFTLYz7ZgQ9d4azqDDj6E6mooFxre5d
         frtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r+p4rL6d;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=q68aZPBrfA65MvaO1ffbLR9EF+cUXwYDgMYOnRoCA1U=;
        b=DjaJBXD2ZGvXsHzDHMG8iydfQGyT0rmJWnyvY2yitPqb6l7xwXhgBBUKj7lAUlYvTd
         sap1lq5XPcwxNe5O9xoqku55CnjjbnywCnQwd5hgL9+4GMnvvROidLGfyRVs6vu+Qm4N
         vM9bOtf5vs8xmxS6D8htiAAQKdaJY5xoh1kF7TQeKQQkfwHoPvXDx3os2477Mghwtqs+
         Sh/HGsTNtjMXP3FZbCOerXnKx1nYytn4b5JXgJtVxGFtisGM+0SaKrAzUxW7g0iiBubI
         c24ukMjo7E7NJ6HxestIUDpodzAYLGVeXBdNeeBOhQeaCb2NOT6L58eytz0RSdfSBajy
         EUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q68aZPBrfA65MvaO1ffbLR9EF+cUXwYDgMYOnRoCA1U=;
        b=Kcj/IVzY1rLLir2c23lPuwWpeQq1YDi1gw7BNR07jT3c2OiBDm94BoeOuMcrGrBZPV
         Y5cRzjFTq/Fw9+GWSD3uHA5yu9n7dGWZ048Re+dDIYlrABPsqknMxdWxx/tuV8+gLBLg
         +6Kp3LA/oNUwK2U0fch28doYDRMLB2PDDOcPcNjLAaxMjkGdF15+jkvtZznfATObUxq3
         /O2ENGDj2Aw9yzPla1NsYv2uy4Ru9dawFNwEd+gZcueBNDwnuoK0ablKlrhBKQIcVYWe
         8qvleUyuFCpP4KYk+id/I0oNo53peTcc9u0xBwJaVidin9yVG+15gthVgurrYDhVGG4G
         JNBQ==
X-Gm-Message-State: AOAM5325ej2cErKgEV+TS5PBRwkQJlrXBP7OvyZVyspekAv71m7r9VnL
	xsw27GZ2MRZKr+t+vTQDbAg=
X-Google-Smtp-Source: ABdhPJwt66d0ZEO1g8F783jL2tZuz8J2tPKVA+L9v4iHDKQ0M20lSXxqSh82pe59Jou9c0RJaTt4wQ==
X-Received: by 2002:a92:d151:: with SMTP id t17mr12939332ilg.101.1590143653216;
        Fri, 22 May 2020 03:34:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:10ce:: with SMTP id s14ls302670ilj.6.gmail; Fri, 22
 May 2020 03:34:12 -0700 (PDT)
X-Received: by 2002:a92:a199:: with SMTP id b25mr13215024ill.77.1590143652799;
        Fri, 22 May 2020 03:34:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590143652; cv=none;
        d=google.com; s=arc-20160816;
        b=vbMXSscei9J66DJAXheNKpQl2H8ZxEclTP/3n45hUnZyzOy0KNUS64asl5xG79gnNI
         60eGXRjo2aIg4dsmjRZdYyp583f2UTn5NkQUZgrIu9WSMQ3yg9wPdhw357xoB6/GIzAr
         OJXP3LoCRot+OwhnMBJN44pvdt0GoxjcvdSDC1A0NEacbIt12oZ6h3xgQrX4APx3d6ru
         YBmcsK29exojCw7GuKEP9EjU+r/7q0OFNOBN1iKF65KOtTbUHufEB1qSIz63XvWRUU4F
         3JgIToLLwtKiNTgY0msVLdsarwt8sOvvzfMkYfh3YEojSPjdMbxRUN4CHrNPtY594CHu
         ZFmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5ktmTy4SBF1rMKSXisJeFl7NM4HKoH9GRsdYqKi4Yhk=;
        b=kcUhBrDJiFyUYJCspZV5Q7rZ8auk6oAfm/dDmowQ9Qz8gCbZoUEJ1kQEz9s46pMiu9
         QBTKzTUGViQsv3plX6jXG9bsOQqiiORlEBg9DEOBwWzaw+qCGl2s5x1Am3CbN5dLomMF
         ovKRx7WF0KoLmfUQ6pY134XU0FZW7Hk5KGXLEGAFy587WaKvwko2WrKiNqmP5IWOZs5f
         gRZq6sODJUfcqnUrgTqOTl2LuiKHRxvNt+LoQJj1w/T7cniCRirVdTaoguvwe20Y+/NQ
         /WSXA3MgszQFHwyzAVoWtGc0dj+vg6Yjl1wQZk14QWP1PJIBEVlvNnJfm7PCljnU7bgd
         epKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r+p4rL6d;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id d3si600410ilg.0.2020.05.22.03.34.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2020 03:34:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Received: by mail-oo1-xc44.google.com with SMTP id s139so2075367oos.1
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 03:34:12 -0700 (PDT)
X-Received: by 2002:a4a:e836:: with SMTP id d22mr2501899ood.54.1590143652013;
 Fri, 22 May 2020 03:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-4-elver@google.com>
 <20200522102630.GC28750@zn.tnic>
In-Reply-To: <20200522102630.GC28750@zn.tnic>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 22 May 2020 12:34:00 +0200
Message-ID: <CANpmjNM=aHuTWFk45j8BwRFoTQxc-ovghjfwQr5m4K3kVP8r0w@mail.gmail.com>
Subject: Re: [PATCH -tip v3 03/11] kcsan: Support distinguishing volatile accesses
To: Borislav Petkov <bp@alien8.de>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=r+p4rL6d;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Fri, 22 May 2020 at 12:26, Borislav Petkov <bp@alien8.de> wrote:
>
> On Thu, May 21, 2020 at 04:20:39PM +0200, Marco Elver wrote:
> > diff --git a/scripts/Makefile.kcsan b/scripts/Makefile.kcsan
> > index 20337a7ecf54..75d2942b9437 100644
> > --- a/scripts/Makefile.kcsan
> > +++ b/scripts/Makefile.kcsan
> > @@ -9,7 +9,10 @@ else
> >  cc-param =3D --param -$(1)
> >  endif
> >
> > +# Keep most options here optional, to allow enabling more compilers if=
 absence
> > +# of some options does not break KCSAN nor causes false positive repor=
ts.
> >  CFLAGS_KCSAN :=3D -fsanitize=3Dthread \
> > -     $(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=
=3D0) -fno-optimize-sibling-calls)
> > +     $(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=
=3D0) -fno-optimize-sibling-calls) \
> > +     $(call cc-param,tsan-distinguish-volatile=3D1)
>
> gcc 9 doesn't like this:
>
> cc1: error: invalid --param name =E2=80=98-tsan-distinguish-volatile=E2=
=80=99
> make[1]: *** [scripts/Makefile.build:100: scripts/mod/devicetable-offsets=
.s] Error 1
> make[1]: *** Waiting for unfinished jobs....
> cc1: error: invalid --param name =E2=80=98-tsan-distinguish-volatile=E2=
=80=99
> make[1]: *** [scripts/Makefile.build:267: scripts/mod/empty.o] Error 1
> make: *** [Makefile:1141: prepare0] Error 2
> make: *** Waiting for unfinished jobs....
>
> git grep "tsan-distinguish-volatile" in gcc's git doesn't give anything.
>
> Hmm.

Yeah, my patch for GCC is still pending. But we probably need more
fixes for GCC, before we can re-enable it.

We restrict supported compilers later in the series:
https://lore.kernel.org/lkml/20200521142047.169334-7-elver@google.com/

More background is also in the cover letter:
https://lore.kernel.org/lkml/20200521142047.169334-1-elver@google.com/

Thanks,
-- Marco

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CANpmjNM%3DaHuTWFk45j8BwRFoTQxc-ovghjfwQr5m4K3kVP8r0w%40m=
ail.gmail.com.
