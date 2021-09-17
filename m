Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBQPXSOFAMGQEKQ7MYQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B31410051
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Sep 2021 22:34:09 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id m2-20020ac24ac2000000b003f524eae63esf7742995lfp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Sep 2021 13:34:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631910849; cv=pass;
        d=google.com; s=arc-20160816;
        b=wtYHLvUPPLCYMV2P97EtJjyU1I8MV4XtzQ2gmC/8f3AHv8/BF0rOGTWzzhDMDp/Ru9
         0/afEjeq+wAUvzIRSV6a/sLOK1NPoR8qGPA3hiPlmcvMzf0kfj8AnAAVeRgX2elJ2jyG
         32iSEBYIqJzzfKXCXLxNXcgtqqKXo3VCx+nEbHIZc3XGrRb5QmCByWd4l8GqrJXiXqU2
         3ekGsEnWcJXKOVyU/64TSW7McJ+0GdwAGhcZbmkyCCoLm7Cl+RNiaVqOPa7ycydVhbel
         qBWP8itokt95eQznEFU2vT64OIrygRGEveSO+m3lCV3HPYbN0g2R+GOmycKP1jRbqXVW
         pOLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=MxHlxOvpbXMDsK52QljBM640rjvzyZz5Fw305AGdrzs=;
        b=QD1yQjMRXO2No1h1Odo4CnKjMjEtOlM4o4Rp1KeAIZq+jaECj2HeDwKr/2MRHsORt6
         sOGfS9y3tRuYX8ekLZm/RvzYlPzb/qD/QXGx2aI/BPjuuJ+wZoZCvYUR4ucDojfNf5F2
         IkZn0EQOYgOn2HxCQ0nspv35axjrpmUtou8TTkezmnS1wxpcMWdtMq4aM8yfriZx8PrQ
         fs7W/GDcdeMk6WdgHYF4t6dwcmCqkarVgP1Jkrx18ajnrno9JLvpv+dFib1b76RXokPf
         jHQlXQxYAsngPsLB4dsMqllgRC6TgovZFNZi5Er2r4MHZAamR+RR7dVSuv9ZP5eecMi2
         kMbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MxHlxOvpbXMDsK52QljBM640rjvzyZz5Fw305AGdrzs=;
        b=PWPOm6ueB3MPkbhhDkEH5n/qIASZ8F/4PVOsTCKU6OiTXfI9Zq+mqcevv+C2GQ6MxY
         +UbUFgnLW6ABGIBx0BXy5I7FGE55J/ay1qsiAHQ+2akuQE6J53LBRVTGKipjxVGLgm+j
         SkEf4saSTK3c8HvNxkIuB1SCKVLZQtPemFMhPyY9h6EoMiLW4LfmNK+wNAI9iLQW5GwI
         xBRDqbtkf3MeH8GbsrDUBSyRA6fQLqaMXJTEbK4gaiykAsHBqMHwWkG+Na8C7QuHf1Ya
         DEYf7EL2zC1PtYr9l+nC0wONorFiUiT+A0fC7ucP2LB5n8I93cFqngR7FsLbZrVQ4a4Q
         zosg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MxHlxOvpbXMDsK52QljBM640rjvzyZz5Fw305AGdrzs=;
        b=2SI58i7BkitveQk8CLxbaakzEpw4tjK1dBT2fzZjL7htR4+0cYrFYaKT/opOlyRMWJ
         2qHxSNa/UfFnC47k1eghZoDZPS4bLb6+ehoiFj/v6LHLaE6ze3P+RH2pEdadlgMX9xUS
         /a+30M9+94CfF3jD303C2Q4Yfxz21gxSJM9W00X36dvVyY+kYAhLlF2TJ0odj3WMI0yW
         tDwKKdfRIbuGQBM8Fs8EjweCIswsWXy4fOwtM+q8ph8Hv/lGOi94cZ9CaFRP2mqUmIu2
         iD8BDA2/hU08RJkeDCER2rkvOPBkb4elUrIergFingkTzw0mqFO3edTeFbcLYAr60avV
         mLqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FA7MnbnNKXbUIlmVrMISEHxIN6+R6erJUmXKTFfBDoTiq9U0W
	Svjq+jz14apUTsn3aDi6WAE=
X-Google-Smtp-Source: ABdhPJxb6LoovLy4XHgKAfzuxP0rquZxEPuY0CXMfaaepZTk07rhNG7maYvft5RoZALr3PVO3DIVkA==
X-Received: by 2002:a2e:4b09:: with SMTP id y9mr5529364lja.201.1631910849364;
        Fri, 17 Sep 2021 13:34:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9517:: with SMTP id f23ls1445812ljh.4.gmail; Fri, 17 Sep
 2021 13:34:08 -0700 (PDT)
X-Received: by 2002:a2e:8e39:: with SMTP id r25mr11177665ljk.272.1631910848292;
        Fri, 17 Sep 2021 13:34:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631910848; cv=none;
        d=google.com; s=arc-20160816;
        b=KCEOYm+cxybTbch5korze6rZv4lGVmt2lbQYgc4c12d2FjwaFykcBt1trcPqK6X841
         6zDzA4fZYq3ZgXPhRTTcUwHlLicdoqplAmb10aKm1zEpuCjEjCdCM2fArPuLywGh5ceh
         +X82ABttnsRy9L2I3Z1vYrdKztrIjD+NdrbSY/awwQW4j+EMlZ/AUwSwA4MWYRDT5JHO
         pOlIVW+wipDyEjOZrmvFJLUmbG4j5IQNdmrMJMral+BLesxpeDyyS+4Eu4it/9WIjbFP
         guLGNndMA8E3uUW2RiEhEUdNlB4oLNDC2jJbt8pQl/2e44TPTHIkdzRaB+xzm0Hc5KPK
         /VZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=393JVJlCqFySUMa+0fSehEJ8pA5wT3P0VqLUNJPoQQc=;
        b=uMqMdxToFyl/oWqATdEqWEiHh41bTUIWD80dDGVawsHycctdD1PSw33oFajWVYli/n
         6qolqQ1MsTF0/7p90I60wMAVb0/13KtIvpt4ULFQxmiEepQjTod41L92YweUqrcfsPx1
         ywxyjZRwyH8GSFVOnEiAGs8VIfPh0oyPIRjzFVoGY5pwISFe8FvsQKCWIUA0i1IvG5cN
         N/cRr+9gU9jAOt36eqhNJAfKlSJQwPwXhokW1ghtR3a3CX42/2D9eg2P4CKn5MBoJm/S
         /rNj5nS9WorBTrJZpAY+6iu1btVY6ljD7o681ZpkfVvfJYJ5CqUYaL+O7qgz8631NiSk
         W3cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id v25si696165lfr.1.2021.09.17.13.34.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Sep 2021 13:34:08 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from mail-wm1-f53.google.com ([209.85.128.53]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MUXlG-1mIQbn1z1s-00QQg7 for <clang-built-linux@googlegroups.com>; Fri, 17
 Sep 2021 22:34:07 +0200
Received: by mail-wm1-f53.google.com with SMTP id i3so8247685wmq.3
        for <clang-built-linux@googlegroups.com>; Fri, 17 Sep 2021 13:34:07 -0700 (PDT)
X-Received: by 2002:a05:600c:190e:: with SMTP id j14mr9029138wmq.35.1631910847126;
 Fri, 17 Sep 2021 13:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210830213846.2609349-1-ndesaulniers@google.com> <CAK8P3a2JJ=5t16enn2LaZE_zT1ZqNVyi9FQpTUrgVsQWiMtDkw@mail.gmail.com>
In-Reply-To: <CAK8P3a2JJ=5t16enn2LaZE_zT1ZqNVyi9FQpTUrgVsQWiMtDkw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 17 Sep 2021 22:33:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a04ZGgxNf6mmufwOmCY37JJkN9CHDJGQe2wY4CabwafuQ@mail.gmail.com>
Message-ID: <CAK8P3a04ZGgxNf6mmufwOmCY37JJkN9CHDJGQe2wY4CabwafuQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: select HAVE_FUTEX_CMPXCHG
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, llvm@lists.linux.dev, 
	Nathan Chancellor <nathan@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linus Walleij <linus.walleij@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, Ard Biesheuvel <ardb@kernel.org>, 
	YiFei Zhu <yifeifz2@illinois.edu>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Mike Rapoport <rppt@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:KS67Obhb76jnIu06C2TWI5EuIgJHyg+XR9EoXa6JvA8IAIQ99i8
 xaCOuQ9fygphVKxXDmHohlvtR9dCkMm/stjRzzTuK68ob31C+1hnxLZgx+rrmi8ssukIJce
 nq58kwBiXmGCOXAYft3ae6CkhEG6/4X32R7dot5UIxWe+CJ+CqCusUtlqFxjGc8dyQGV4Ol
 KfHWOsGXoJHfCzdi04tOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eR3b+Me0lLs=:BVQUazBzO9VK1bTGICYRYg
 IGm4+nfC462bSVK+vRW1QtqAiefDF9Gqj7azAwM+Mo6Tgpts7vPYz3oIUwLxxZygBqIO2H2/6
 Zo7pho6R59ChCqwfhqsGHwyU1ppVnXdAsHsYVri6nF7iPvxHF0JtJ3wmQrOkQ8FA8ZBTcmTXt
 XJHKuQfGg+c4XAlPyPu0ntcG7lW9/99o/NbBeUESXfUDcriNsTEHw8sp5tsTFBg/E5H2FydYH
 megqSMVfHPILaUl6kN6BFr6ERJG0tYcBr+7q1L2NVx3xaho8AjYsQuqu1viINlYY77OMXSHO1
 UfkkDQIzqmXfWCsGpyOtmJiGW6e7YMmiQoiT9SZqIIGrkeTwbJlo6AtgoHVPe3los/PQlAPfV
 Q4uweo8C4sTDXT9+sl7i31CH7m5oEhXkmHtkyO3/nWFpEYOVDFus/DFA+TIX6amO9QPC5lu1N
 Spk817fiKCxNs/f7Wib02y+z2Equmzw9EKXdk7rSRj5iYkkLhl3iF9Vgb11P7UL26bnPWIuEY
 AAA40XRKaUwy7yUDEriFvYRhVwKY1Dqj306rDdQ7TmM1AqyMfHcvI+0n6OEw1xX1/tgAe+VD8
 ja7TEp7dXmZ1faRqS0v/V3wtnzd2Q4THrCbmtN/67BQdvMDtxfJfHBSzmhOr5po9Ebuqqu/xE
 jOPYnnNZ4AGs2ukvhJ6FN89TT9F+jn+o+OD58auQvoQoVUN81heYytqTkI6HX+i8ZCaSnbagx
 ypaVZ/MzDzH2RRB4poNRTy4Wd/BTXrynxHH/Z5Jc+KkqoE+cA/hTSS4FsU0wMgrTCGY/XUul8
 tNL4PaORIUdrRoajGhONDXnmHBDnFQJx6El0LSQIQDAewMaRB+VcToIUwVqwfculRNR3Lj/5s
 iCqmXzX8VqWXybacBMnw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
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

On Fri, Sep 17, 2021 at 9:11 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Nice! I did remember that we had come up with a number of solutions
> for the build error and that at least one of them was an obvious and
> nice fix, but I could never figure out what it was. This is clearly better
> than any of the other ones I had found when I last looked.

Actually it turns out that I had come up with another approach, removing
the need for HAVE_FUTEX_CMPXCHG and the boot time check altogether:

https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/commit/?h=randconfig-5.13&id=7bbd7403526a2a9f398f360fcb97f256052ca6bf

Guo Ren fixed the missing csky bit in there, but since the sparc32 support
is still missing, I never sent this before forgetting about it.
I think the only users of sparc32 these days are LEON CPUs, which have
usable atomics and could implement this properly but support for that was
not upstreamed.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a04ZGgxNf6mmufwOmCY37JJkN9CHDJGQe2wY4CabwafuQ%40mail.gmail.com.
