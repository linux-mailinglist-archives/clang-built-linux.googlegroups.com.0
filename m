Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK4LQGEAMGQETNMKS2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 501D53D7C65
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 19:43:08 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id d6-20020a50f6860000b02903bc068b7717sf1860504edn.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 10:43:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627407788; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3aFwTYFmG114xHUWtHKN9jwEBbziK18ISUj3zfObebDoPQUOnhwL4+9bLMuUXcFpk
         nwAnE+4T1JEPHSW9gugkZbOC45LLbpMClZTDabwPU9crm9s5zz7QdS3peiT0qXAYRaD9
         8LJgwHVAnbhOA2lDHRy/t3D11VU9/RUOxFaG5Io0twNGCvLcOzdkPdMAEjUWaHX25bI1
         1qGL51kBt26H+Ko/Uz1jfEiz0VQDSGW8Mvp9z03AWvFfn51aRa1GYcTDym3rqet0jmgI
         819aQz5wytI6kMyreJkxL9BBcIvZ16C9i05bGzwvWAJGnYFoKFhLee5TDO1upHsmSVZ1
         e3bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yhx8PMxqTo0eDMJfbQNUnAryTO1ABkFgS0Ga3bLnAq0=;
        b=FyWYe/93oRyCCutcpGYYipFwWIuNVNWeeAQPQ+keaTliIaDSfuWytECnXQpYNn3/8Q
         93jpniFsSqVXHJQCB9TKviFHeRpFFcv2FUH9Kf90Pu/utm2DsJRD/28J0t3ecrGs1940
         woGd0M512K/hhwywS9UazsQmTER0+tx1hc0j+Okhdbm4crCp7gIEto2Xp9bIv+0+4QSI
         p9zlcUrZRmBqtN7RX7S/Cb4H4IVD3ETmUW1OzeTJ/hWwTeAibHZJ019Nnm0LVgIvYN0Y
         y/uY0KdLc2MwfcAuiZAlH13XkSKqGQKx0WmyitVITwnJDQY95h3XL5Stx+JtihY5MyzN
         LI0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O6olwX22;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yhx8PMxqTo0eDMJfbQNUnAryTO1ABkFgS0Ga3bLnAq0=;
        b=SuWlaa8uza+R1eb2yzghTZW/8OGEp/a56p60CyUoPge7/two7WDPE9x+Ge3cLpbPS+
         sScxhrZHl+jcMzuGB3IgPrZjFRt1pEshYebE/Triv9EFNoj7V8vbGmAPI1IsFIxHlLlP
         Lyhunw6PPR+lpu8+k7b6y9vJeIRk5AJrPI2FR2jh3aAFRp49Du7iUVXpYHGJ2Di7FfRg
         YHWiNpDhjH4mXZfq5i6PULO79QLNYeUB3zUrO+6PPnNugZ/6u4tJE3FLjJ9m/6pDE+mD
         sXhNcXMlT4fLhDTXsixBcU3WfiFnQLHAWpVEOdWflacFEIaclFksW9tr3Irz9a15Fb8Y
         D3iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yhx8PMxqTo0eDMJfbQNUnAryTO1ABkFgS0Ga3bLnAq0=;
        b=DvwTWurRpY3vQ4lvBVChksEawywIMO3R0Zi/XvEO2F3Wz7hJLPJHNH5U26umwfSYCt
         ZJlZKuQ0EBGG8LqF5sW4k0Z88WvWvwQuLVm7ZcHSBUiUeUY0Cxqvs5jFOhSvENzro9sP
         vjoZRC/Ba/EQ3Mhl6fERlViF01/jiRtqdxz5G3N8QCRLju/+wUR8nKfIojOPUvYcKnZa
         RsR586/WKsupfFah3xzRQ/ibhPzcum9n5bOvNA7WVikaSNbS+j7mJV03sguY1ydxJRYb
         p7U7Ihp9yxzUHAJPZMK7Vkrj8xR9TEdlvL/xOEZ9rnZpRs0TgyI38HVud53uuUmbc+L9
         +zKQ==
X-Gm-Message-State: AOAM5334KlG0+5X8uabGxUpSuT558OBRziSOWURKgUH014n40Uu4m1BJ
	mt+JEyemGfq5YPio342+S54=
X-Google-Smtp-Source: ABdhPJzOJMf4Y0ZqeDMMsE4BpPx0G5IWx1jktx2+gk9f3Mpb0DPwTaN+PtRL7Kq8pPeSs+3JSl/gjw==
X-Received: by 2002:a17:906:8301:: with SMTP id j1mr23280615ejx.0.1627407787980;
        Tue, 27 Jul 2021 10:43:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d1d6:: with SMTP id bs22ls629599ejb.3.gmail; Tue, 27
 Jul 2021 10:43:07 -0700 (PDT)
X-Received: by 2002:a17:906:804b:: with SMTP id x11mr8264880ejw.306.1627407787104;
        Tue, 27 Jul 2021 10:43:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627407787; cv=none;
        d=google.com; s=arc-20160816;
        b=CZQwGzu5c1nF2lbjttIwzU6wkJ6t4hEW/MMQiNPDhONIrlHXh0IKGn4cOhBUah3nL9
         F0+uu+0jSp7FnaXNGPczAM7UKqvAaD9puYHpCB2g1mWy10LQj87y9FA7We180ECz0ZUS
         jC4BE8fxoXoONB/8mG9eO2ZIAmzdcsuUvu6aKO7TO2CAmWROUbgpsJG+zvo/MVensQKp
         4RuMqEoeFYW991A93Pg8UYWxzzZP7lRsJLHrdLsjuGnWydV278txH1nBbihzo+XhHFLT
         ncWhPG38UmyGCW9Ed/+YQPXGNO6OiLnVa+cTIfNha9ioU1oqtdtnjXH7fQIt7OnifJKj
         r4ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nmLHKY9I4CGQfN2ZPpRZEfbaLo1/Jmuu/tBLcFgmWqI=;
        b=oCO6GiIQsDs2OLbPwfcdq2PM1NLfnasrxKw/QKRW2iXM1FQV8Taylf1zuaI8t3zfqA
         pKSPVzFUFFRElQhuYSzWVu1H7FauVPZOd/5CTz1cYEfunG3kgwsXIZ6NaJaJGQ+/z1qT
         nzS3p8M34GPvEFVViz9a9aCsxdRdGxwXPfbJmOwcJ80g/6gtoXwGfQ5gUIDOPs9HBAea
         S29QGESlI6N2ypAhZYBkgGHaliubX2rBlxjbeT6ZzeGTlb3brPfPyTugl5DTN75jcYxY
         EdLYm8qwoEwG6qKxGDMWjmAi0VNnaWtVAWs9SL4lzl+PnhC4SNOaj/nT9uwoYD80vKRw
         QKvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O6olwX22;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id w14si168106edu.1.2021.07.27.10.43.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 10:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id z2so23158295lft.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 10:43:07 -0700 (PDT)
X-Received: by 2002:a05:6512:3e0c:: with SMTP id i12mr17116556lfv.122.1627407786575;
 Tue, 27 Jul 2021 10:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
In-Reply-To: <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 10:42:55 -0700
Message-ID: <CAKwvOd=6fcUhDf5WXXZ8xnM-Nt91OyXafD1=kDCMXt_wwix9OA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Bill Wendling <morbo@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O6olwX22;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jul 27, 2021 at 10:39 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jul 26, 2021 at 11:41 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Jul 26, 2021 at 11:15:52PM -0700, Bill Wendling wrote:
> > > On Mon, Jul 26, 2021 at 10:27 PM Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > > On Mon, Jul 26, 2021 at 01:47:33PM -0700, Nathan Chancellor wrote:
> > > > > + Greg and Rafael as the maintainer and reviewer of drivers/base/module.c
> > > > > respectively, drop everyone else.
> > > >
> > > > Odd no one cc:ed us originally, I guess they didn't want the patch ever
> > > > merged?  :(

Oh, I just noticed this patch was part of a series.  Perhaps you ran
get_maintainer.pl on one patch of the series, and used that list for
all patches in the series?  Since these patches are orthogonal (ie.
they don't depend on any order relative to one another; they can go in
separately via different trees and their maintainers) consider not
using a series.  That should save you from having to write a TPS
Report^W^Wcover letter.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D6fcUhDf5WXXZ8xnM-Nt91OyXafD1%3DkDCMXt_wwix9OA%40mail.gmail.com.
