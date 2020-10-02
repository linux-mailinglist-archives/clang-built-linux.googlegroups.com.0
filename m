Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBHGQ3T5QKGQEWMSZXIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C57C2813D9
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 15:16:13 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id 23sf409706wmk.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 06:16:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601644572; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmswpqYFf85rV0rVqer/AjnU+XuGm7JxAjpHm56EQER8vPJVJ3VPx6KdJCKbnN2+hm
         PnoB0d+TzK0me1UZbLQioNvRaD2cJ3qalhc6UYdhHAQo+LvvOm+VYggmzVe11YBMduIb
         icLQvZJ1GVopMk4x6iaCHX1FQvkoeL4REs6v+bGxIa9dy2AFiBQLJpsatOx55QY57hQF
         znqghFBDB0a3d2MgWxQZua5pp1xyp9yaATfTXPQQsxMB5aRZQFoyn+7bonsEKjjCJ4il
         7OMYktYnQP6fGzB5prg98ThnhZ79sisEozkJWvj3qrJepd890jZClhNNRsA48yRlBlKa
         G+gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=sO3WSb+vvAjgmJ35wQDKB5mX7DycQSMZ7blUsMQjyX8=;
        b=BpGgkc80kEmrsJgutgz2xX2/8+f9ogOWStNrR97fIgFOeTQHbA7htnXbhLPjhpooab
         F3dbd80ighWCYQZ6oUCd/YpaFRwh6GFZuosmO/pnXIf0OGO8hS3Gm8H9xcWo2YydTtH4
         WiJotgln7GcTyp6wd0HUByVyMwmDoL4/dGytOoMIOfM7WnPbrTZ/rUOsyBVk1lHTOue9
         uig5n5D7NnCHhD40NNOA/gIIO6I+nAkHnOp3H+IPJa8ppz5TdYNwDlvRxfIKCurGvMlX
         PZ/MwBYZiVdin0C1Lpj0lRbnlNM9wQ4+jNRlXjb+uNc4AFlFpMHLi/1MPMFSaXq1Bdy/
         7guw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sO3WSb+vvAjgmJ35wQDKB5mX7DycQSMZ7blUsMQjyX8=;
        b=poCE+EJusnViUOJixqISyVRquX8eVaYADIIHb88HnCdTPHE4sTl8SLKL/thG59X93v
         fGCZ8+Exb3dj4OUymFC6CRg85C0S1zsoYqMfhYTTdTn+G148NGikdoq4NRXNWwoRvUaj
         JBYvTeb/GPG7Mtprstu4OY0uFBAOJYt30sTemLnImAP3dArBTyHHY5LekPXCdXjhHOfY
         jXGu3MvhgucfO1Ec0sjDY4OGRzrfl57UGFhLtBRIX46rvZ4rgMqozyDDsTZ2UTryvJjC
         PQzeEY2ZTrFAIYjN4s9gSvKLarXIW+hS9OQ6P+Sjqppiyn4I+gkg+J3vhRD5eANkq9Kj
         mnLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sO3WSb+vvAjgmJ35wQDKB5mX7DycQSMZ7blUsMQjyX8=;
        b=lrokBOoFN/f29BKG+tv0EjnMfwr9vX/j+GBPIw/fIDfYhKqd8uEYCMyHIdCkt/JW5L
         x2kRcrkarr3Cm5STr2ibu/nB3aFT1+lqqQgOBrmg7ozo7s8rVKlo4MIExLo+4bceBQlh
         Q1kpokKJtR69EeeHzWGbsigNCbU9ucQT5XTlOiP8pBUJg2rq9ZM02th1bxcDW58yzeh7
         fQzKTKNfPxmhTuCHoypTdiM97QRyIKHknOqhlisKS+QzqLt+ZtgmnCybxG4XRqfqUrxN
         do2zoUlz3DtUf35qixG1z7WVo/GyJMw6hz2D3UsO5cQYHCDGI46I3jq6YQuQUmbzaHx4
         LCSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Gfr/szu/vieKc3REKTgNQ6/g7Oj0JfI/ErvFDH7CP5x1n+ncO
	UVxqta9OqHLau3mXZjtoJ0k=
X-Google-Smtp-Source: ABdhPJzIFgwM6MOZqwMX6hebsg0ClznuXgzxEUbiRoguVeukBB7ZKiW3ne0WnfX/JAuhra9DpYbZBQ==
X-Received: by 2002:adf:ec45:: with SMTP id w5mr3202939wrn.357.1601644572684;
        Fri, 02 Oct 2020 06:16:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls962182wrm.1.gmail; Fri, 02 Oct
 2020 06:16:11 -0700 (PDT)
X-Received: by 2002:adf:a18c:: with SMTP id u12mr3189632wru.90.1601644571766;
        Fri, 02 Oct 2020 06:16:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601644571; cv=none;
        d=google.com; s=arc-20160816;
        b=Oh7RlYRmKea3J+IOv/stioWRHnywsq6OVTUAn/qEsCCKoOXsHhOP60Q60klgi78Pzz
         CawJtaQ7YZz4/skEmo6fuHqBYOmPDfUPgTdzZeY8rb6MrYfsE9BP8qCiHvGxL5ZnY2hJ
         zieioLjBUPXiLuPWuNyfgodkuXlkAw5SCm8UbM8knygWaODFVjcIfeOanDeOVmV/lRZp
         lwyIOYLwzIKcCSEcYiygyzafhv3PkVQa2FPF0O6C7DI3piUEvobjpOY/XL+V4QyXRkpv
         iNQu+a0pmq6E9JEBXsgfkFM1A+Fjx9UB6r8zonBkZBWHra8FRU2WFaRQTwBbr897KLd8
         TzeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=5ivtutpdSXCFD8geRGtZWHKUome9NFjMuuBPe68t0VM=;
        b=HutTuq0MJFmFlkDBy/eKy8GQkaqCTRwj1lfljm2vvx1Vj6Ynqo6/XAOkpN0ajOMUkl
         lO98+d8aBaaKV3b/aez+S4a9EjNHEmzPU4XVSnJka5gPttCD/Im+FvmEoXbnIt1Aa3DW
         rxK5PXvWs2YyGLy6OQqW76qIxGF2a2AsawSiPVpH9TQmzP/s+xlsHGo6GD8zxuhMRITx
         JDkgsLrTzeNnOw3t3nBPV87ztXuoAGsbkP4rQvYw7BfaARfqfd5zSdBHcJPi8Xwf3JbO
         x63Ucc8uif4P9WAkWGepHXKju0vWsplfB1zbUGW3ku8TmP6IhYHnjYkGEBR75VBaBmBL
         j1KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id b80si36340wme.1.2020.10.02.06.16.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 06:16:11 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mxm7U-1kcJ7t0bDa-00zIf3 for <clang-built-linux@googlegroups.com>; Fri, 02
 Oct 2020 15:16:11 +0200
Received: by mail-qk1-f176.google.com with SMTP id q63so1244134qkf.3
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 06:16:10 -0700 (PDT)
X-Received: by 2002:a37:5d8:: with SMTP id 207mr2089814qkf.352.1601644569794;
 Fri, 02 Oct 2020 06:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w@mail.gmail.com>
 <20201002125110.GJ4067422@lunn.ch>
In-Reply-To: <20201002125110.GJ4067422@lunn.ch>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 2 Oct 2020 15:15:53 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1Cyxo4mt2Kug92EvBhZJt2X6ct0_8JbZgo0zf0GSuanA@mail.gmail.com>
Message-ID: <CAK8P3a1Cyxo4mt2Kug92EvBhZJt2X6ct0_8JbZgo0zf0GSuanA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: Nick Desaulniers <ndesaulniers@google.com>, netdev <netdev@vger.kernel.org>, 
	David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:8lekIE1JNZfXJ48MLR0QOmW5En+oAou7rJabR/U0NaX7ggOBQhB
 6u6S76Bbyx2sLhKrza6CC21yaC7r25taUOaMfZxxeCj2OVRPWKkt5hq2r9j3h1hVSR/K/eL
 UxZ5tm4SEYNt09r0V7RyWBVu3eYXUjSHa8IEFvhmPVlgNFTKl8YXyvsKb4j0uisV+xIsw4K
 M2b51JbBX2wJAeJZ9Bceg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+xEP3lFGsY0=:4gERcxHT9N/DGVUxBbtTgi
 XyOkjkgvs+dJXyqpVhj8I+b7nhe9/2nCPqqgWMDlh+RsIFaEm76NUo5NGyPE7PwQiFRXCN0qf
 pUIVb5eIoGIzZvgS7ZtOdwDVLCch+6ZGrxiiktgc0MU7h9phxDzuIZnlfXO2WXpwQBR/6TOAM
 e2Kg/LSJlzBpMoLTHbbNJ1/lgoAoMilCzvu4B+ZwkHv/kYyYuQfXHon54ABeneK4tG+k/sCz3
 4ubB7dN3nF1fESRnjja2fIokuMCcGUDqOnOX30iy70AqoLPFqDngwAy4KxqMQJSxeTI3A58lZ
 /BWfDevrRARJVnHLIUq8B0DhjOZ3IZMCJrwK8LBL5L8N4+0nJNJQXWRoGoHQ196fAsJnIxReY
 l/moBrqGr4RvbZ1DCA8WOe0hjb5tfcTCWzysrIzDQUNqFL+KusRSRLaobw/HZh8sY0t+eBytK
 pULd/5pCPJfoPXON6J7iDeNEAsLCsl10LS5R5eLSvLJMToVUzUTONKjHbl+6nEMkKYzAZcnOv
 DIXLQIuKHfA3v60AMZOqUsFN4nresMQ9mqXS0F4Q1uBTgg9lI0UYa1U1gH7XV5wpzrZaewcN0
 BTjrI3NuR9l1JXEHtVFt5D+F68G6rQZ3BgZk3StLbuu5QfaqcPOXO0JHaZ8U2k1bnCYYprvVr
 N13JaDs7WAeGiDmwn1/wlqVBTxkLSBI3jtvIkLcj6M/oQy5Ag8ZBSR0OSCoylI87CvmpLkW4W
 TmdeHfcvb2jDNGcNo3GTAhPExxpPx8PuS+WwWwLHtCuM2n9t5Z5Jrim6/PJOqMMdJcZU+/7xf
 XwSFqiC77wPahbB/6HqkuRNMWhOWnAmotYj0yUoT7fAInVsuHxAcUvYSApEb97qEOWonYd64V
 jGsWv4c+j0lYdh+2oElB4FjF646jDSmIzaxZ1zg46OvrCv9cnqmihiKxAVsDYWvJZAuYIyuFF
 Fzv/+4O1klX/xBn9bzfUx3BE4eXM+t0FeHaQA1wZ8oLTDt7GiFPvM
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
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

On Fri, Oct 2, 2020 at 2:51 PM Andrew Lunn <andrew@lunn.ch> wrote:
> On Fri, Oct 02, 2020 at 02:20:50PM +0200, Arnd Bergmann wrote:
> > On Fri, Oct 2, 2020 at 3:44 AM Andrew Lunn <andrew@lunn.ch> wrote:
> > > On Thu, Oct 01, 2020 at 04:09:43PM -0700, Nick Desaulniers wrote:
> > > >
> > > > I'm not a fan of this approach.  Are DATESTAMP configs just going to
> > > > keep being added? Is it going to complicate isolating the issue from a
> > > > randconfig build?  If we want more things to build warning-free at
> > > > W=1, then why don't we start moving warnings from W=1 into the
> > > > default, until this is no W=1 left?  That way we're cutting down on
> > > > the kernel's configuration combinatorial explosion, rather than adding
> > > > to it?
> >
> > I'm also a little sceptical about the datestamp.
>
> Hi Arnd
>
> Any suggestions for an alternative?

I think we should deal with it the same way we deal with new
compiler versions: before a new compiler starts getting widely
used, someone has to address the new warnings that show up,
or at the minimum they have to get turned off by default until
they are addressed.

Today, moving a warning flag from W=1 to default requires that
there won't be any regressions in the output. The same should
apply to adding W=1 warnings if there is a way for drivers to
default-enable them.

> > It won't change with the configuration, but it will change with the
> > specific compiler version. When you enable a warning in a
> > particular driver or directory, this may have different effects
> > on one compiler compared to another: clang and gcc sometimes
> > differ in their interpretation of which specific forms of an expression
> > to warn about or not, and any multiplexing options like -Wextra
> > or -Wformat may turn on additional warnings in later releases.
>
> How do we deal with this at the moment? Or will -Wextra and -Wformat
> never get moved into the default?

I think for Wextra, that would likely stay with W=1, though individual
warnings in that set should be enabled by default whenever they
make sense. For -Wformat, we probably want the opposite and
enable the global option by default but make individual sub-options
W=1 or W=2 if there is too much undesired output.

> > I think the two approaches are orthogonal, and I would like to
> > see both happening as much as possible:
> >
> > - any warning flag in the W=1 set (including many things implied
> >   by -Wextra that have or should have their own flags) that
> >   only causes a few lines of output should just be enabled by
> >   default after we address the warnings
>
> Is there currently any simple way to get statistics about how many
> actual warnings there are per warnings flag in W=1? W=1 on the tree as
> a whole does not look good, but maybe there is some low hanging fruit
> and we can quickly promote some from W=1 to default?

I have done this a few times in the past, essentially building a
few hundred randconfig kernels across multiple architectures
and then processing the output in a script. I usually treat a
file:line:warning tuple as a single instance and then count
how many there are.

> > - Code with maintainers that care should have a way to enable
> >   the entire W=1 set per directory or per file after addressing all
> >   the warnings they do see, with new flags only getting added to
> >   W=1 when they don't cause regressions.
>
> Yes, this is what i'm trying to push forward here. I don't
> particularly care how it happen, so if somebody comes up with a
> generally acceptable idea, i will go away and implement it.

I actually have a set of patches that I started a while ago to
move the logic from scripts/Makefile.extrawarn into
include/linux/warnings.h, using '_Pragma("GCC diagnostic ...")'
with some infrastructure around it, to also allow drivers to
set the level as well as individual warnings when needed.

I never managed to get that patch series into a state for submission
so far, with a few things that need to be addressed first:

- any Makefile that changes warning options needs to be
  converted to use macro syntax

- I need to check that the patches don't accidentally disable
  warnings that are currently enabled (this is harder than
  checking the reverse)

- some specific warnings have problems with this new method
  for options that control multiple other options.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1Cyxo4mt2Kug92EvBhZJt2X6ct0_8JbZgo0zf0GSuanA%40mail.gmail.com.
