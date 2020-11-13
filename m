Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBLFCW76QKGQEUZ6UIUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FF12B1325
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 01:19:57 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id 194sf2577926lfm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 16:19:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605226796; cv=pass;
        d=google.com; s=arc-20160816;
        b=sPZpyyCOVNVxzq7Znz6lTpvBwwhQgc+Fw013UGcwBsh4rUihukPTSadKinWzEtxyAo
         ySpNCan7UhM8B4bR3CQuWB03duCmQd2MYaSRZ8io8w9RvOY6Z90gcmdUHbSd+voOC26F
         eoIKj0k3CYMvXqydbakPy6xF5LC4dYcAepvAK83q+VyDb0onHCoR8jp+lJb3C0kloeng
         Z7QyRCD5BbgAERZswQo1hq6TS8Yrbz1LRinLF8l1tV0QdQyDYfk8rF+jImPxnUj3WEkR
         bi9K+BhhZf+u6E6jprGWOYl3Sb0Jcsf8bjKxkQR/n9GWVQIyqz//+GGqu1BOF/q64BoD
         2wOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=gQP1BFgIhBeFdBa14LdhONGtJzgPcto6upzlYDsJq54=;
        b=0lT935Po3Vx20JlaXz2B/bppCjnFi+q9s/29JRlwYU/GtUKFugXUknDEgL09TtV/Wz
         wqqIoY3OTqHk9lxMiMfvAAqLfmAsL7CazE6PJHh3n+LhP9LGPBCeVHMUperFYuLqvcZh
         AUXxgWBH6u4+Iq3Bv0njgioy+5KKole86HmCqPt5gqdF5Q7LcD7qfewvNDmAZZWKf81a
         3VaZgARwnUhz5wIfr6H1MWpYOkZHsLe1YNKsfnoaBVtvvprOidffdGK86nYJoPJ2S/Is
         3LsRF4zEShlEFQPZanbpI+481+UGD0xTv9Ln4H1zhvNjevQrl90xWbPW1oeWLCNXpKye
         Qj2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 157.25.102.26 is neither permitted nor denied by best guess record for domain of macro@linux-mips.org) smtp.mailfrom=macro@linux-mips.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gQP1BFgIhBeFdBa14LdhONGtJzgPcto6upzlYDsJq54=;
        b=kVtBphB3vMxxr/XW5QQRjy25PSUREDPsTUQY5g9py95hxYvUFp1t9vXHXGYvPMtvl5
         cyRDWaf1MNMpqnyiaIDiI9f1ru/x3PpXobqZpc/IXzsKL6v4OquXiKgDAJNhVj9+UZqD
         bGvqjEHiWU+tGM0N7pCwfuhRx4pR1OgyXNG7D8tVSS7/UNNWwrkBgs6aL7LMOQQ/CEU/
         7UuShawCU76XQ/U/Pxo2ocLWAPYKb2VR8avnz5QSSMMyEJYzALnChOZznz4KNPiM1usg
         ff24ozsfLfbeQIxm22jbDrmcmDA4LnL7faiObEhe02CEn7OiOmltsbm3HjZ2UIgMx7nK
         Umqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gQP1BFgIhBeFdBa14LdhONGtJzgPcto6upzlYDsJq54=;
        b=DGu+ALAy2EIQCP/RwNAmFFq1XktzmMGpp1Foh9IIT0v+uUyV7MdLS4Gyb2/g9cDbIi
         ykMUcklYo1Tc8He285cR+AMCqj8UQNN6ccXIo3jvxyezJKemzVc2oNA9n2FsLQl5wd7l
         4yy2dQwmhIR0/RYzFRZGqNL2+y93cd5kVqLX7tfrN9/0ZSTMKRPdtSD1YzoyNoSDTsmy
         Kqd+7HE1NgwAAJgtsy7YNx03KwoOcA2EycvpBFR+raNxkPEyTQG8zp6v73Hus28hTX8X
         peRU5Nk7wmJHAdrOM2OBEA9XH7oj8/u1pO7tEzHZMsTbZl1QSHjYn1uKvcexuh1WzaiZ
         Sg5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329icsMynxtiyfl4C1J5vym5GDnWxIwMkeirDVN2+GYe4/pDtDl
	zGh82INpjGje3Nc54uHYR2M=
X-Google-Smtp-Source: ABdhPJwCpHcbm/exYyCvem5VSX+brR9G0+bJYdvovpUJpyCeZHlWiDlHWrx4BJXXD8uozJ6ZFV1dFQ==
X-Received: by 2002:a05:6512:1049:: with SMTP id c9mr784593lfb.165.1605226796676;
        Thu, 12 Nov 2020 16:19:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:90b:: with SMTP id 11ls913186ljj.0.gmail; Thu, 12 Nov
 2020 16:19:55 -0800 (PST)
X-Received: by 2002:a2e:b6c6:: with SMTP id m6mr925605ljo.83.1605226795607;
        Thu, 12 Nov 2020 16:19:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605226795; cv=none;
        d=google.com; s=arc-20160816;
        b=IzHrCyqSmNXGbdNdkJOnDnr6oWTDoX6knPdITKdDBr1W0+Rv0bts+jQp/A7+DVz8Fd
         +tC0wJEKIzEXJjPHzkg91fgZPyzHHHBWCG7ygTvCoDJLsM1/04iFIRs+4/fCnG0D+Qey
         MgAk0YMaid4nz1NfS4nGhSBemz1gFbNi+hBvv4MpIavVc2MYd7NrZlZHVBLB/XcvjnQv
         fKou7XYZ1290oRV3o8mWOE7YokdwprBVuj4Z/zbN+07lIDOA2RHeHfPMHl6ssc9xW5Mc
         cP8UmCAjr7gROTcQsUJGLv4MIAj/ykvuXQ8pb0Xx7kuuVbHoV7Yd+hMmenbqyRyvA6QC
         5NGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=9plQZ710NjV5Tx6frywrtJal+w7nMbLPx6G46Tynygw=;
        b=Uf380ZLyTdw3imVhCuslBeeKKO2zWiHLdlP0tTHYV67smdqWI6M5fmjaR05c/TRSh3
         csAZ7Oc6dSI5AFx/8/ZLRJGvwfvpdCj0jgn7yL/thHykJ5ebo8erSzefVOMi6h5SCopP
         zAjqqN3eFPetELZDccnyx+G0MXQOW2a9NkhTZ8tzVRIFwZn0RzqTh27gydo7w5TIPNDA
         TyqoSOCNxt6PS+QV4AV9mcThnOCD4nUmOSW+QAIiSoReG8ACDRd8IkH4GPAjqvtHcR88
         GwGOK3HWy3Px8cExeHOdn6/7icJS6UvtjAINL7aKhBdlyjJNW+ug6QYcl3d9NRfGaWOW
         80+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 157.25.102.26 is neither permitted nor denied by best guess record for domain of macro@linux-mips.org) smtp.mailfrom=macro@linux-mips.org
Received: from orcam.me.uk ([157.25.102.26])
        by gmr-mx.google.com with ESMTP id o13si109210lfo.5.2020.11.12.16.19.55
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 16:19:55 -0800 (PST)
Received-SPF: neutral (google.com: 157.25.102.26 is neither permitted nor denied by best guess record for domain of macro@linux-mips.org) client-ip=157.25.102.26;
Received: from bugs.linux-mips.org (eddie.linux-mips.org [IPv6:2a01:4f8:201:92aa::3])
	by orcam.me.uk (Postfix) with ESMTPS id ED9F02BE0EC;
	Fri, 13 Nov 2020 00:19:53 +0000 (GMT)
Date: Fri, 13 Nov 2020 00:19:50 +0000 (GMT)
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
cc: Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com, 
    Serge Semin <Sergey.Semin@baikalelectronics.ru>, 
    Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>, 
    linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MIPS: remove GCC < 4.9 support
In-Reply-To: <20201111230314.GB19275@alpha.franken.de>
Message-ID: <alpine.LFD.2.21.2011130017330.4064799@eddie.linux-mips.org>
References: <20201111032105.2346303-1-ndesaulniers@google.com> <20201111230314.GB19275@alpha.franken.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 157.25.102.26 is neither permitted nor denied by best guess
 record for domain of macro@linux-mips.org) smtp.mailfrom=macro@linux-mips.org
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

On Thu, 12 Nov 2020, Thomas Bogendoerfer wrote:

> > Remove a tautology; since
> > commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
> > which raised the minimally supported version of GCC to 4.9, this case is
> > always true.
> > 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/427
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/mips/include/asm/compiler.h | 9 +--------
> >  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> applied to mips-next.

 It probably makes sense to get rid of GCC_OFF_SMALL_ASM altogether, as 
this syntactical indirection brings us nothing at this point and only 
obfuscates sources.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2011130017330.4064799%40eddie.linux-mips.org.
