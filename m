Return-Path: <clang-built-linux+bncBCQJP74GSUDRBUGXQSCAMGQEOKD6WIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E664367B87
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 09:54:57 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id v1-20020a92d2410000b02901533f3ed5dbsf17829812ilg.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 00:54:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619078096; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/wdqRPBPhNFZx0bRWdKX8Yzlill3b9aRhsxXmmBe7t1+FFJUykjXwwGNr35n2iYss
         6f+1Ogbbp0LVnuNZD12LYcK/gnGYE3IDnGwRxnqKcivHndgcHDYP7V0Hgy1mxdIzqFRL
         TJ+cHlE5QKbGsr7eOqYLx4fey2uO/xFaOhwKnVn6xZjISgcnzftlzR3MTC8AQhdrLPbY
         4hdbUMoxoAhTvQLU2LnHQEUha7ij/1Xj6avMNEXyl/qFSnFAKkAtrxm7OisGmP7bRMMT
         ABSdw8+eHo2kKiN4M60ik751jDCgn8pVzRSMC0iKXl4F0REHs3y/zvEBpXg3wARcMaZU
         dlPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=FKOldIAmysCN8TuoNnnoQWC/8PUwbZvmdHvwceBf2MY=;
        b=NR8lmZARI7Nagc365VbPxvyMWxUKscJv/jdmSe7UngLWjCBdV6WEERJYyay8Y1GGJE
         6Qdj/573dXqOErpRhmglniBnn8eZiIoslTUfQk/EyBltMpqIwPZEs2QhnABfmrl1x/bv
         PcrZ9lS+FM9SNVwz5rtqz7Ok//AciBZbe02GhbL5ghM04Rb4re7ajWJC0hq5yWgQVL43
         7qVZXvt/DX3O66CwCgZRLO7CWoG60ym00jVZOTllzaoFwI3LR9kiA6tI5NWm9Z0WPa27
         P/Ov9Pn1Xw0CS1ANLV3gIZifMaWaR+5T/FKtrXdgdXLERGPBgz/tzTr25QhLqn6lL3bC
         9idQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.50 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKOldIAmysCN8TuoNnnoQWC/8PUwbZvmdHvwceBf2MY=;
        b=pIxU9KIf7l062WIsBcLUpJTrnly68cGCUTQXno6l6wmOwabPzUsiP9056xcTN722ti
         qm5zKpwgu+5GJlfyvUAoAE5ohXJLxvC4kNbx0pvEt6knMIsvzwTOcahGF3KnGoHkjVio
         iDUedBM94efPQU7Z5iDsUarfiIGNHDNCAb8r/KN6LksQ05iSycm46pg7uzCFEUJPklsT
         xzCnpT8nfnm3Dvb+wk86XjO0VaMjCC6teRplJRsD4tJzzLYCXoppb5qUEgjBgoDfvenO
         vkj5fWT+Cpz13gefntEwBkDLFssaeBsKEW+Ht4mtzP10zvZqC1bYVVK7So6gfGlezWgo
         PKTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKOldIAmysCN8TuoNnnoQWC/8PUwbZvmdHvwceBf2MY=;
        b=oi3JaPhHhzMe8WkhTs6698GVduCOnbKneqEnEuxj471y9NQx/sbTTVspe7g+0w212Y
         gaHLNWTdrrfckLHnv7vnX4s6Dx056WneNfEpsnrhmZB1t8xVA6kMELNFzF9UyjLlw5vA
         9lQyTlE+i3ZlPMPWyhInhbG1aOpMousLkvk9iz8fGGlNTIbcwwISfaeXHcpHyw9TxSoI
         klKPZAZ2SHDAu4kqc3FvW0oSHc00bROQcZzwbuzuZpQt8lmUAVCXQUfvhcKb0zAMZ8XQ
         gInwj3MklEohHzDVFluD8EBj6T068dhwkDW2t3kS6is4RpRSYTygvw4LYaY27c9Wx6lR
         MDpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nD27c2ebvmgdlo5kiYFHZAkSaQ3QqqcSPPt1sUwTtu22RVWI8
	8EgyRlzZH8gWJtS/Z69o7vc=
X-Google-Smtp-Source: ABdhPJz1dvR2qo4w9szhKPD5AWrR8+QCu5Tv4I2u3E2XuYrGt5NbJ5U/UQ2tRvD9nN52KwU0S/ivMg==
X-Received: by 2002:a92:c9ca:: with SMTP id k10mr1653649ilq.42.1619078096368;
        Thu, 22 Apr 2021 00:54:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1845:: with SMTP id b5ls1180436ilv.0.gmail; Thu, 22
 Apr 2021 00:54:56 -0700 (PDT)
X-Received: by 2002:a05:6e02:13d3:: with SMTP id v19mr1618957ilj.56.1619078096036;
        Thu, 22 Apr 2021 00:54:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619078096; cv=none;
        d=google.com; s=arc-20160816;
        b=mzbE6T4fWkpYkF8DaPYhFVJm1A/K5ZQM9lSNMdo2WYjeU9FgDINDZyASOZBaNOAwmR
         xFSrAYhcWRoUteeQ0CgXHnraTvRVZG7Cv0TeA7xZI8AiATGmxV+uo8gF4TXzcna3KJv0
         Izip4iQvG9TJ2DVBB9WrxbMEKHUKcD2GdABoIaVfKLuyiOv+OISglxvLv5xf9MbaeUmO
         3VAcVGEYc0oDuMHOmJKaaPbu8/8NmDyy9PASIXRZPJ8TN/5jvQ+LQsgmRq0ziRJ2OpzG
         C0+J6fMK6NksPILT4PVmDTjog8hp+Z0lb+4APAzrN/Poh5DUDvzy0+UZlZM93Go0IVT0
         cdhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=qpkaQhzeov50oc6KPA23GaI7TsaxSxtBoceUfcE/9Sk=;
        b=1J9umAoIKJsrVz/Jwvpv6DAKxDhtZjtaOMcebQUv5R5i/Wa0BQlUDM/ts+y7duiXQQ
         Wa+H0muOLeIXCp8aACD7aQMR9493HqF5G2qkiMMp24UcnX4RYbe0XzX5i8rL7W30IeAn
         YLyYdIvX1Gy5s1pYZ0/18feOVb3MsjwYOiP7TKpW/5C7DLJg11+22Ydbcjfep3AlpKqW
         Oamv0PTc0smj6kH9Vb9aTdPOO5qcT9I7hX04otXXP9qK73xA+o14CyDFH/3snnc+v57H
         /1cS7262vbpZZ99EFA3c4Ah1MBgCoCvIUGtcDiMYfJtvCgu5grKQ2rmzrBAQprzcP/yn
         ccXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.50 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by gmr-mx.google.com with ESMTPS id j1si330743ilq.0.2021.04.22.00.54.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 00:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.50 as permitted sender) client-ip=209.85.217.50;
Received: by mail-vs1-f50.google.com with SMTP id 2so22451734vsh.4
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 00:54:56 -0700 (PDT)
X-Received: by 2002:a67:7c8c:: with SMTP id x134mr1512113vsc.40.1619078095714;
 Thu, 22 Apr 2021 00:54:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210421143115.22797-1-johan@kernel.org> <202104220355.v8nwWx2T-lkp@intel.com>
 <CAMuHMdXKWDB89Hm-LQcpfTq=0yjm_xvQsQiD4QuEtW=yVymuRw@mail.gmail.com>
 <YIEnr9g8AmYFuLPh@hovoldconsulting.com> <CAMuHMdV94SLyuyHUbrMue-0f_mTNn87WbWJu6an=aPFAjyHY8w@mail.gmail.com>
 <YIErSfPrBbUtJ5bf@hovoldconsulting.com>
In-Reply-To: <YIErSfPrBbUtJ5bf@hovoldconsulting.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 22 Apr 2021 09:54:44 +0200
Message-ID: <CAMuHMdViQbA9yr=V81AxD7yij44Ks3Z1q-j2E6kPQBFOXWK5iQ@mail.gmail.com>
Subject: Re: [PATCH] serial: extend compile-test coverage
To: Johan Hovold <johan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jiri Slaby <jirislaby@kernel.org>, 
	"open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.50
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Johan,

On Thu, Apr 22, 2021 at 9:52 AM Johan Hovold <johan@kernel.org> wrote:
> On Thu, Apr 22, 2021 at 09:40:38AM +0200, Geert Uytterhoeven wrote:
> > On Thu, Apr 22, 2021 at 9:37 AM Johan Hovold <johan@kernel.org> wrote:
> > > On Thu, Apr 22, 2021 at 09:11:50AM +0200, Geert Uytterhoeven wrote:
> > > > On Thu, Apr 22, 2021 at 3:20 AM kernel test robot <lkp@intel.com> wrote:
> > > > > >> drivers/tty/serial/serial_txx9.c:987:12: warning: no previous prototype for function 'early_serial_txx9_setup' [-Wmissing-prototypes]
> > > > >    int __init early_serial_txx9_setup(struct uart_port *port)
> > > > >               ^
> > > > >    drivers/tty/serial/serial_txx9.c:987:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > > > >    int __init early_serial_txx9_setup(struct uart_port *port)
> > > > >    ^
> > > > >    static
> > > > >    1 warning generated.
> > > >
> > > > This function is called from arch/mips/txx9/generic/setup.c, and does
> > > > have a forward declaration in arch/mips/include/asm/txx9/generic.h.
> > > > Unfortunately the latter cannot be included from the driver, unless
> > > > the || COMPILE_TEST is dropped again.
> > >
> > > Thanks, Geert. I was just about to send a v2 without the txx9 hunk.
> >
> > well, I guess apart from this (W=1!) warning, this driver still
> > compile-tests fine.
> > Do we consider hard-to-fix W=1 warnings to be legitimate blockers
> > for enabling compile-testing?
>
> Since the build bots have enabled them (and people have turned it into a
> crusade to suppress every W=1 warning by any means) I think it's
> reasonable to not introduce new ones knowingly.
>
> And I'm not too motivated right now to try to work around this one
> myself. The idea here was just to enable COMPILE_TEST for drivers that
> did not have any build-time dependencies.

OK.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdViQbA9yr%3DV81AxD7yij44Ks3Z1q-j2E6kPQBFOXWK5iQ%40mail.gmail.com.
