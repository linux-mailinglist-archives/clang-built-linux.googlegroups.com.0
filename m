Return-Path: <clang-built-linux+bncBD66FMGZA4IJ3V4BRADBUBH3AHX7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id F21763D7F31
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:25:01 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id o25-20020a17090637d9b0290512261c5475sf123518ejc.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:25:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627417501; cv=pass;
        d=google.com; s=arc-20160816;
        b=qqYmuI0mNEKCLT+XT0eq/FW2y81omcglH2XeB8sPLNqzDO+bGFYugeJSxzdBp9eJ2e
         ulP2p3X9Jsx54E7Gi2oPNiFw/V+72E7/uZBIEtrKziVC52zXr1qEd0clyl41Xubr5q+S
         OQ4J85vryAY1mPdt2JkTU4CryJ+2x991dkwVlKexo+7KPLw3sUXN6kff+NOkKH3RRxrm
         T9OnEU5gF5plcww20113zBRGsa26sVGY07knbObMln8ss7yQS9x3SiFSV06mCyZdtEev
         eEXRyK560Kbeji9ib/BXR1Q+xEvtopnB08fMJVDf7wxJep7vXzRAAjD9nABy6k417Xxc
         HCaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TFoSUfKgW563cSaitC8DbVLVMq8+qQ9kX1mWyYQQQ4g=;
        b=na0nyypNM5A3yEN7Y94CkF9SDy1fK38E/nglQ6H8w2+mEgZVXYlMa++r9ELPT8dquE
         +dvY1jioRo/qeynWv3/pNmcH+Ma4zMQNqweGreyXVacBDGnehBmhmUZdETwdTlfOo1Cp
         oMiOXgIOIzma8ddVGBdh4e4E8jmv6wZ74c7AvpJC5AegbFyrY70m1Q2Q5puZxEuXuyvh
         CCYSTA6pGw9P6YA77ssxg+qFnRnECQJj5eLx9UJ5EPVQaLliBBex9XVVzQKwnj9D2NHb
         Xa+1n1eJ0YLv7edCGx7+TjGUfhZpM3tIL4jlvrQUnkv9qUOIlL3DMZnoN3nWNeIMCc/R
         X6oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tMYiXAyZ;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TFoSUfKgW563cSaitC8DbVLVMq8+qQ9kX1mWyYQQQ4g=;
        b=q9alZZ6yJURA6WNvv8d1ogDKaSJgUoEUfH8aJn6BE9qhO/wvZ5I+KyLAGkYoqsWQGk
         exaQ3zQbWSSfCvrx3mSmzGokjguh91FLEt2PMdYB1QlT1rPeur5cB6bOCcQFPBkfnyhU
         rHDTyW2RFVHgCcufM0d6OHmNRLwYjFRBISaJDOBbagUefTMzzk6cjcuClf/wp6NMiqZ+
         N4WwZecaXfL7FohFr9JOtcn9yeV00/Jr0g4b9S2zUcOC951nURS5UCc7B2REj1Tz5Xjc
         hHk76D+KQZzXu0xaKWOFODYKXSDNT16EWK5ZlXoCEmyp/CceX62xBhX54CuAps+MZlV7
         3Cdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TFoSUfKgW563cSaitC8DbVLVMq8+qQ9kX1mWyYQQQ4g=;
        b=ECe84T97wSvLS2goTet+o4G2bYwH0aZrsG19hTL8TMFWINpmEX7U1oagCcDSeQmYK4
         Pz9BXARRuj+NNjLjIPZUs7pkgT34OhgkhOc5AdcLfA4FmtwaXF9MHzY38nSzOOJ5XIkK
         Czi5ga/nS8ZeBzS/o7Z9ixl68d1QUzAxvTYbj0aE60zWYVuguCPSC7Ah7c/6X/3DHtdr
         6Kb/wUTitpyfrkyNjJloO3xGum4agDbpoAdnduvbsXLfIW5X4ujiohs47gF21RS0qvGo
         NLaX1HO68bkY8O/IRzI5nGLbdIyT7nZm6V4fUz9Ji6FWGyTJW/Cq/dEhPTSjjUTAiJTw
         abNw==
X-Gm-Message-State: AOAM533AT1bea/K/JwLAk7aBaMHbn6nm4r/OrLBu8e3d0ITJHvSHON6Q
	H1G5fX64ESCNw/RVtQDk0ro=
X-Google-Smtp-Source: ABdhPJzAAGlN2WQXfCPOauZifVM/vibyIbJGWo/hY5FkCjyvd66xDQwkUaWb/B8/6YX+i2QwYkhMGw==
X-Received: by 2002:a05:6402:896:: with SMTP id e22mr14059932edy.246.1627417501700;
        Tue, 27 Jul 2021 13:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bc52:: with SMTP id s18ls121966ejv.10.gmail; Tue, 27
 Jul 2021 13:25:00 -0700 (PDT)
X-Received: by 2002:a17:906:c08e:: with SMTP id f14mr23283691ejz.380.1627417500777;
        Tue, 27 Jul 2021 13:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627417500; cv=none;
        d=google.com; s=arc-20160816;
        b=BfQjX0JGbqoDsM/NfhQhqpy4o+luuqdgXvNIAoteTsQ9q1l6aPUM/te8zOsNOViTio
         1S6KhPn94ao6u0NTPv5jIqb5ozK+j06JWNrXGAZH7XC8eD2Kw+aBKp23y4usFa4Y5LqQ
         0cX+jU+2sjFUKH00aUql+fFqh2x29aqn2CDV0rfgsQr/u9I+0a/vd6UyYOjouLiV5S00
         5A97Z4Pj1nV/MFRQxiUBJK5+GxyU7bvxvYswqYgbs7TRaJJJ8rgqWkbnvKY5Oo/7zC8P
         IDHTELJU0VgXMOZf9FzerAMNEAh22955vqx4Po21yaReN/eI18XfH8IwQyvrDWN0aF6m
         GLSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AI4/qExA29kX+ZlXltNVAZTRQGQesnOkv1LSMsqDoFE=;
        b=acc5xn6jXjy18oK4Z/d69bD3ow0CRMnhXCSnY4Em9GNSqSmzrkl70hLNzhqFvlo79s
         zESWgDansUmpPjjDat6cHyl7NJsrB7JeUaGdb7bOZSW25HdIBmU5zJdtypevdtEsyMDH
         b6jpkcOXw02ArmQSskr2AnBmqG9omyWGWo1dBIkbhhCvf/hJWbEDC0pLrxxBw+guVTL/
         ZRrevqYJNEqNdT45TzUe26Ck/VH4N4Rq1B9+rW/8jSFr6GXf3jDqr5iZH5H4VS0xOQbq
         K0Ktg0j4Jxk3jfwVSnROO+b2lW/TMURcrEYOiiWa9K9EY2X6ZF9nLW7i5AEPQd58Pfqp
         spiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tMYiXAyZ;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id h22si163791edr.2.2021.07.27.13.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:25:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Received: by mail-ej1-x634.google.com with SMTP id ga41so730298ejc.10
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:25:00 -0700 (PDT)
X-Received: by 2002:a17:906:468d:: with SMTP id a13mr24138094ejr.419.1627417500385;
 Tue, 27 Jul 2021 13:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <YQBJfAuMJhvd2TcJ@kroah.com> <20210727201328.GY1583@gate.crashing.org> <CAGG=3QVWxdYnjZshsYVwf+jVj8Mb9=44SZA64cL0g414JncWGw@mail.gmail.com>
In-Reply-To: <CAGG=3QVWxdYnjZshsYVwf+jVj8Mb9=44SZA64cL0g414JncWGw@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 13:24:49 -0700
Message-ID: <CAGG=3QUgnahba_-6hk6VoZW4T3a_Qa2KTBx4+DswNf_KBEWOmw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tMYiXAyZ;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::634 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Tue, Jul 27, 2021 at 1:22 PM Bill Wendling <morbo@google.com> wrote:
>
> On Tue, Jul 27, 2021 at 1:17 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > On Tue, Jul 27, 2021 at 07:59:24PM +0200, Greg Kroah-Hartman wrote:
> > > On Tue, Jul 27, 2021 at 10:39:49AM -0700, Nick Desaulniers wrote:
> > > > I think warn_unused_result should only really be used for functions
> > > > where the return value should be used 100% of the time.
> > >
> > > I too want a shiny new pony.
> > >
> > > But here in the real world, sometimes you have functions that for 99% of
> > > the users, you do want them to check the return value, but when you use
> > > them in core code or startup code, you "know" you are safe to ignore the
> > > return value.
> > >
> > > That is the case here.  We have other fun examples of where people have
> > > tried to add error handling to code that runs at boot that have actually
> > > introduced security errors and they justify it with "but you have to
> > > check error values!"
> > >
> > > > If there are
> > > > cases where it's ok to not check the return value, consider not using
> > > > warn_unused_result on function declarations.
> > >
> > > Ok, so what do you do when you have a function like this where 99.9% of
> > > the users need to check this?  Do I really need to write a wrapper
> > > function just for it so that I can use it "safely" in the core code
> > > instead?
> > >
> > > Something like:
> > >
> > > void do_safe_thing_and_ignore_the_world(...)
> > > {
> > >       __unused int error;
> > >
> > >       error = do_thing(...);
> > > }
> > >
> > > Or something else to get the compiler to be quiet about error being set
> > > and never used?
> >
> > The simplest is to write
> >         if (do_thing()) {
> >                 /* Nothing here, we can safely ignore the return value
> >                  * here, because of X and Y and I don't know, I have no
> >                  * idea actually why we can in this example.  Hopefully
> >                  * in real code people do have a good reason :-)
> >                  */
> >         }
> >
> > which should work in *any* compiler, doesn't need any extension, is
> > quite elegant, and encourages documenting why we ignore the return
> > value here.
> >
> Or better still, use sysfs_create_link_nowarn() instead of
> sysfs_create_link(). We'll just have to take the "__must_check"
> attribute off the sysfs_create_link_nowarn() declaration.
>
Strike that. I mistook the nowarn.
-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUgnahba_-6hk6VoZW4T3a_Qa2KTBx4%2BDswNf_KBEWOmw%40mail.gmail.com.
