Return-Path: <clang-built-linux+bncBAABBOWC4L6AKGQESPMIUJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6719829CC12
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 23:37:48 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id e87sf2229050ill.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 15:37:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603838267; cv=pass;
        d=google.com; s=arc-20160816;
        b=s+jKLVTXbqyCsDj9Al7qg0rzgXfugPusphKiPN5W2VIrGDA8kAMw3b923eilWJrnvd
         AHAF/A7qD0EUqbT6aCu+kWyAB04pa6otNXpvNsXdkh6m8v0fpnb76LbZzwvA5or0a/qm
         Gwx20ra3bYaTCp6YeGAofcaGy1gFpfVDN+wseHqHNtT+y8IlB56M6i27zxPxQGfo2AnM
         se4eWtGI777gbd+mk/S+upJ7NQ7ctZ1yEaH+t8VzW6EVKIz1t1UHvu9Gmt73qLIgART4
         ubsq4+pKv2281TBcmF30UECizrE+0xRv+cBswXSR90b0/Hc/rzXBgSxRYP3PZqnEFt35
         TdjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=yH6v3OxOSkXNeD16wwqqE87v1JtGKrdhUhhJO8EHnoY=;
        b=O6eHe5rLvzHU1GB8UojGZb0m1IwA9AAFeUDDHuiYHMu9EbfJjmWWyMgRAsEgKvzJgu
         A2yxZm6sn1iF5yCiPu+h1LJoAmyo6UiXyhNw0oCcPrxLHTDlcS70lfHP7vMlhIK3li+L
         EpkWOqvcclzxonKf1czaFEn6b6bfeqCwE7ILSDg757e5cMYYKsnniaHcd3MkWM4qbZbP
         8uIb9Fgu4dsfRcyCyxMb/rS+Y2GR5sKq1uL1ZH1MZDT3ZdMtR+f/iI1xbHp8V/3IAYeu
         IfwVh6LB/6tJ1+NlFYr8+51l8epMhaCy26K3p1n4q+bng1STB6inKCQVqAGmTAsyj6Fn
         DiEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hy9Spsx7;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yH6v3OxOSkXNeD16wwqqE87v1JtGKrdhUhhJO8EHnoY=;
        b=H922fxsr1x3y6s+mscCr8IEqHoWIVwxhEm5cmBkbbDyKP4IVoiwADMaco/spugGy6m
         8fjuiNY/7QbnbBS92RecqulE5ekeat3wQJE9ZT7CFShuOFXuvSNL1PVEHGaceRm1vgWs
         ODcpgEahOvVT6jeHtH+5n7KWPpI1wsmOFp/FtIjGvViQfIPMoqHhkyWU77tWUBvDMMG6
         7+GodiLOFjrOZoZyTnxYPi723W5Haa7SEBCrOt1FMMrDoIe0/v0NjzAr3iWyVS0CZMoN
         gPVhKAlVowrXGjC2mdNUx2hmvtOpBYvqdQ35/0cyiX4QLA/MSMfgP7s4Ibx8CgAP8+Pc
         o/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yH6v3OxOSkXNeD16wwqqE87v1JtGKrdhUhhJO8EHnoY=;
        b=Efo4EAm/qh/hC+rqsWjp0q6t6uETMvusBqs7bniKzVtCKclOycvSuUnTlSC1iGq6N7
         0dF2ytKl8NilzWbk/TVlB0MuscglUD35/csDBk3z+Sx41P+CviAGGXRRnuEAVICZzFUZ
         q3MPeUNcny43uI4MsqCnIBL7gIQptbAbeU2ofAbF3uskFp9U2fcJp8M0smcluRJjsBi+
         Pm8w8GfOM5GqEW4eN5FDWj5HygnIilERxJCo1O3+I0kGCfWgigdgJuaypbb6Tq3HGZeH
         tvHHV9QK3mYsJp+8Ff7Ee1lCejOGlrQ9ShL7aVbcdOnCbVXXM/F6kOKK+M5gmxtG/DHH
         8njA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hyF+jKqW84VEAyEzGZIBXk1N5hwMEKHbPBH64wmATJAeeU9XN
	3HxLeD1e6fmv35Thvuzt8g4=
X-Google-Smtp-Source: ABdhPJxZ71paUj4tmCkDLQRL6ByxXMYYfBAun424yXolLPMu0MV2FbF1E6ujzY+3mNBToMEWYnMkBA==
X-Received: by 2002:a05:6638:525:: with SMTP id j5mr4459279jar.14.1603838266978;
        Tue, 27 Oct 2020 15:37:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2605:: with SMTP id m5ls371647jat.0.gmail; Tue, 27
 Oct 2020 15:37:46 -0700 (PDT)
X-Received: by 2002:a02:5a47:: with SMTP id v68mr4428244jaa.80.1603838266657;
        Tue, 27 Oct 2020 15:37:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603838266; cv=none;
        d=google.com; s=arc-20160816;
        b=us3IrG+d6x9VqoEfYD4Nc55eYRA9Xu5Rn18GkBquzt1lubYeiKjN+n+oehRgSvRXja
         H5/BeWTqVVQ07UzXbej3Ge4xXRadNQidIvtM2KRqKoNuNrQpO+JVZFzJ73lte6OTn1LZ
         7JfBNzTr3L1O9I9DVPfmPM7GRuzLzP3R31xdS0fLCubWLRA6dz6DRgFwRICJWgtado5O
         8KDzDMuvE3yzLSMcToR/osL+K1RzBxhq/zR6JlNVFOACfMYLxP9mMD3RbhdL36lVzPzS
         DjIbaQYKKKtc6tc1Df83kl+9y4ivmSNFEnygOIJJk+sdh4RDhe8AGmPqMaYs2p60UeZg
         BxJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y+ydeVellBhMk+kdvMTojFExMkFfK5CN7vI+R6Wej/8=;
        b=pUVJLuLh8sml5Sr3AJPG6APi6ybPmx4tzd4aFwMM335Omy+SZU2uGsoE88Zcvu4gGn
         Dtr765AQ3kZSvjiEV8a8jN0QLO7rY0sy4Du+a7u9gV8+HYKP2+xbCMzXbahmvgZy/iFb
         uKLEIG9WBleRoajSajPhzJqUR6E4sNLWZfq1L14wD41o7ppbYq9N56uVW/K4Y+yVvmcn
         yhWL2e4hyRbMPE5/urDdYHhnm0Vnvb4qUyTdS9YY8TC5QGUcwPZhBlQzilOeL/pL7cfg
         VV+AaXi21jmTyrbN60OKBshGOm9IhtYdo3WfxzqlMWVBHUZGPvotgHSbsPVVbhyzN5Bh
         XhQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hy9Spsx7;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i18si172491ils.5.2020.10.27.15.37.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 15:37:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A5D87206F4
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 22:37:45 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id h19so2288401qtq.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 15:37:45 -0700 (PDT)
X-Received: by 2002:aed:26c2:: with SMTP id q60mr3953199qtd.7.1603838264856;
 Tue, 27 Oct 2020 15:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <20201026192117.3811525-1-arnd@kernel.org> <CANiq72n72FMnNnWveSZOj_3_beXKX03CVL8=cQqqa8QyK-PKig@mail.gmail.com>
In-Reply-To: <CANiq72n72FMnNnWveSZOj_3_beXKX03CVL8=cQqqa8QyK-PKig@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 27 Oct 2020 23:37:28 +0100
X-Gmail-Original-Message-ID: <CAK8P3a269o2Dqm500MAtp5JZD3-Diaa3iaMecONeyLAuE7r7Rw@mail.gmail.com>
Message-ID: <CAK8P3a269o2Dqm500MAtp5JZD3-Diaa3iaMecONeyLAuE7r7Rw@mail.gmail.com>
Subject: Re: [PATCH v2] ctype.h: remove duplicate isdigit() helper
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Hy9Spsx7;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Oct 27, 2020 at 10:47 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Tue, Oct 27, 2020 at 12:57 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > +#ifdef __has_builtin
> > +#define has_builtin(x) __has_builtin(x)
> > +#else
> > +#define has_builtin(x) (0)
> > +#endif
>
> Could this be
>
>     #ifndef __has_builtin
>     # define __has_builtin(x) 0
>     #endif
>
> ? i.e. mimicking what we do for `__has_attribute`.

Ah, I didn't know about that

> It would also be a nice idea to put a reminder comment like:
>
>     /*
>      * __has_builtin is supported on gcc >= 10, clang >= 3 and icc >= 21.
>      * In the meantime, to support gcc < 10, we implement __has_builtin
>      * by hand.
>      */

Sounds good, I'll take that. Are the clang and icc version numbers
the actual ones we should list here, or is this just an example?

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a269o2Dqm500MAtp5JZD3-Diaa3iaMecONeyLAuE7r7Rw%40mail.gmail.com.
