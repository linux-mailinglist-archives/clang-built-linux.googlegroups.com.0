Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBLNIQGEAMGQEE643MXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E42943D7DE2
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 20:45:02 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id i10-20020a5e850a0000b029053ee90daa50sf11758344ioj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 11:45:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627411501; cv=pass;
        d=google.com; s=arc-20160816;
        b=l96wtzHnvsyxVNoAFhau27XkSE2r3lbtfJuKOi16gEgTaq3LdwE9YAhyAxPIj9jviy
         vW51LzyR5pzkQYF2uHYYvAoEOWSTdpL3j3xgXomxrxeMYIjvixyVyZ18Nkg3x4zmEZa3
         QYeRFW3Bj11oXpVxySx5GsGlaNlPehVOEeeYqLdopYcD4/W6OX+gJDZL/E8QABgM8q2f
         CkJuLG4792fZCV8UF7t1Vh+d4EbKUhll0iLFv4dlp61DJgVnWhIPWpcKyrq+BSe29Vpl
         WeoKa0xHJNfMH2LMAQYjYieSukwdI9I9/X2f9zyEN1/usubYl9Lval6y05Lg3eu9Y5jY
         rIdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oCR9nMJR4zWJGydRWDrJtS/IZ6ea4b+bzJIUfTgOGwU=;
        b=eyEaqD9p/Sfo4YQzAT6Ob9zmJYy4+I56EAQ/P0dCS+KMAXCc0TwaDh6sThoVFaQoov
         nYe7BqfcvXEkHZ5aAOMXI+llNDEK/4I/bdo/EBZSrj3xEPZvu83hGfJ79u/2+38XtAMp
         veYLLgx+jl955w7f5OP0RVPmTNc9XNxBZmtq4PMxyxHlV2iNDtkppvG+EiAs07mx9WKE
         U8tKGm637uimqMnXk9HAWlgmmJe2Cc/UjcXBYLkVPoZDmdWw/KnMZIwWqE9uBLOErntP
         ekqchNbj4Dw3Ud+Wt/gvjeYIOQcqGBRMD6aIVwFrwrqc2bFl9YYZXLk6lx6Y5rOhcmmn
         uqsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=luPjGCY1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oCR9nMJR4zWJGydRWDrJtS/IZ6ea4b+bzJIUfTgOGwU=;
        b=eVlDPI8J53BMrlQV9QrK+T9M7j32I7ItEKlQgpFGcUVNLEQjBISM4sximcUB4hV8lc
         ZdcA+9TXXZmMIYhwT+y8thPVpJGHdeh7WIOU5kGLfBKCPJjhRBLLKfd4ML+l4WKhVTnq
         Q+rZJhjxTSNF4W2g1iu8IAWBHdvDqp6V0YCvPSax3pcxuzlZ3kz0VOV+D0PHA+mMh5ko
         wPiRr8A7Ujw6lpropgstLTV61HYhvGidZIiVGAQb2Aj6Sz4j5ilFz21HJBx+9IA1jOq9
         qWyQ2s26WMkADCWBxrrC/dAaHJRiPZ2+EVvmHuebqBQE2CvfWOwgX7UnBuV1J+liMEw0
         Ej/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oCR9nMJR4zWJGydRWDrJtS/IZ6ea4b+bzJIUfTgOGwU=;
        b=k43K5NOH+aSYOgG6wmpn6zzt4EimL5g/ptkgLQp+sQnZAPCoZKQd1CB34l5KuiSQth
         p6KMWAxR9kpcWlF1pNAnSdkEwFH9ZtVfgPyyFMPFbx7EXRfZPhkSz1PERPM+P4dst4ou
         2I28NlHRRE75eDCBOH0LSKR1sJGdEN5tSCmJfGmY96XyiGv5wi/l75FIfO6D0Tuew6ha
         pm7QC1NiK98Lny7QkrUxhycgtrdr93194edTApzISdB7kfsUpqlYMvoLOyaKT7COyhyq
         SABQ7EiLs5Xwi0gElLpswAcOnKa0Z0C9Err1a0+SQ9PYj8yoaBBEsKCx7v5kVwxyr++D
         2qPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dbzxCU9nelqDgwCfkqkykAu9hSqT3TR82zVk5t+oMmQp1wTxp
	FODLE9UT6Unu63/QhGh2eFw=
X-Google-Smtp-Source: ABdhPJz4GOao1TcZMo0GtwFluddXMSCKYWmfTv50jvR3lbUYC7XjpvmZzYW3qEdba+wE/nEk3fyvcQ==
X-Received: by 2002:a92:c64a:: with SMTP id 10mr17648634ill.159.1627411501642;
        Tue, 27 Jul 2021 11:45:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:178a:: with SMTP id y10ls301849ilu.7.gmail; Tue, 27
 Jul 2021 11:45:01 -0700 (PDT)
X-Received: by 2002:a05:6e02:1be8:: with SMTP id y8mr312394ilv.161.1627411501081;
        Tue, 27 Jul 2021 11:45:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627411501; cv=none;
        d=google.com; s=arc-20160816;
        b=c5DGFJxwB1HnJL6EFv2B1k85ccX5JZjkfJ5lWDqsVzUwJc8oJIQtjQ0/J5eK3ubzSd
         zdv1Vf+VNMl5cjW3LYQRKDM5m7QRa45usJw0oFNZifOr7QGGpvlMoGshbvkApqXiZce/
         n4ZzoZgVVWecA9hLbOVRLZi9VEyrieLYUiagXtR0rWFjmJGzPVHhebSZpCKCNIvvwQbW
         n2ONUkoL7FuQ+TGs/JPYSEuEd3l88yYMAf++Pkfr2QnnPrpaOr8lbqZejwYGrGMYGHyM
         snRBQdDGhpr+2UziYg0kHOz/Fx7gKI2u+C7D70S0QjgXZPh/2V4tt3M/n/3NfQ/6RQ0J
         TDLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=94QBq40SpHOUNaH+/B3/v6p484OyYjSSrQ95EvBqAP8=;
        b=NTZ9ixF6+nO8fze/QO0YlnolvkTOpChxqW/mgE0UE89rlaoue1i4D8bLytMyI6MaGN
         G7TrfIvT2KQ+vCZLFpNh4cKKYC37Kk4KaRCefnm2/mHScBqI6SqhI5dhYmKrl4XaqxeS
         2Hgi7KM/0irX6iFP1ItryRT0Vh1wGoKWl50+Sd/wbesarTcNhMRynPnPhUnmCnoFOhLW
         di10ddvwTo1TNkP/IjZukMG3jcDtdprLKehe8D6yhnIhsKc2x2xmS9c/vi4LWLa9NfzP
         1XV4RN2Wi7n0m7FvPS/JAqsiCggn5CPIW1t9N3nWnbY34/6jP+VUbgiYlI9UZS051jV+
         wMlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=luPjGCY1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e16si245762ilm.3.2021.07.27.11.45.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 11:45:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E2B3B60F9E;
	Tue, 27 Jul 2021 18:44:59 +0000 (UTC)
Date: Tue, 27 Jul 2021 20:44:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Nathan Chancellor <nathan@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
Message-ID: <YQBUKrCWpM3uDp/Q@kroah.com>
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com>
 <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com>
 <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com>
 <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <YQBJfAuMJhvd2TcJ@kroah.com>
 <CAKwvOdkbgr5uPBUC815nrJ_-fHQD2KEYmZ0E8qZRBLL9uQ2WFw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkbgr5uPBUC815nrJ_-fHQD2KEYmZ0E8qZRBLL9uQ2WFw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=luPjGCY1;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 11:31:38AM -0700, Nick Desaulniers wrote:
> On Tue, Jul 27, 2021 at 10:59 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Jul 27, 2021 at 10:39:49AM -0700, Nick Desaulniers wrote:
> > > If there are
> > > cases where it's ok to not check the return value, consider not using
> > > warn_unused_result on function declarations.
> >
> > Ok, so what do you do when you have a function like this where 99.9% of
> > the users need to check this?  Do I really need to write a wrapper
> > function just for it so that I can use it "safely" in the core code
> > instead?
> >
> > Something like:
> >
> > void do_safe_thing_and_ignore_the_world(...)
> > {
> >         __unused int error;
> >
> >         error = do_thing(...);
> > }
> >
> > Or something else to get the compiler to be quiet about error being set
> > and never used?  There HAS to be that option somewhere anyway as we need
> > it for other parts of the kernel where we do:
> >         write_bus(device, &value);
> >         value = read_bus(device);
> > and then we ignore value as it is not needed, but yet we still HAVE to
> > call read_bus() here, yet read_bus() is set as warn_unused_result()
> > because, well, it is a read function :)
> 
> Such wrappers are trivial with __attribute__((alias(""))):
> https://godbolt.org/z/j5afPbGcM
> 
> At least then it's very obvious if someone adds more call sites to
> such an alias. Then that calls for closer inspection in code review
> that yes, this is one of those 0.01% of cases.  Since they occur 0.01%
> of the time, I don't expect such aliases to occur too frequently.

That is just, well, horrible.  Seriously horrible.  Wow.

And that is the "documented" way to do this?  That feels like an abuse
of the already-horrible-why-do-they-do-that-for-variables use of the
alias attribute.

How badly are compiler people going to complain to me about this if
it's in this file?

I can take a patch for that, but I feel the comments involved will make
people, including myself when I have to look a the code again in 5
years, even more confused...

ick, I feel dirty...

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQBUKrCWpM3uDp/Q%40kroah.com.
