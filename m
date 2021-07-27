Return-Path: <clang-built-linux+bncBD66FMGZA4IKVZP6Q4DBUBBFDELMW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBC43D7020
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 09:15:55 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 7-20020a05651c12c7b029019545e8e9c2sf1608153lje.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 00:15:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627370155; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vjhxjq6WtzBzU7pXq9Hf6QP0HEoSxLwT6hl0J/B/7cxsw1hsx4kFAvryMzHAPZX4nw
         YKsAyh0a+ExrJvzW0waOB7PLduWzqVyfQOY01ru2rhMYVR8Gk6sz0Pq1u7PbWfjmbxq+
         s+V/wN0yp3rjgnackNvXDpds7EZZDsbdZSqp5BBKqalbIGD8DDYnr50yve+4bQfT0Rzd
         /lPaaK73qsuWkiyihEtdpA1qzPSTIxR+WjOXqB2m/2jLWq97i9ICqHpJQjSUTeXMlG4k
         KOm7Yh3eJ4Oq1aiQWztgvzpTAF4zupzdb6W+Fodj4Klrk2UbQCvgOvH35VN7DY3m57U3
         NNMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9OrWFfFOdhs9uzRbjm0DIaNJCcRigwe2BbF+81eCe3Q=;
        b=yJygwI8GGMPICBo7lQOVEDcEkrN93lSvHuhxWSHs760xEdfI8tWvkl3X6f0Txk5cip
         nD+xvdRuOPR5moz3qezI8M+SpwO93EpQbGPhGr4ZHqqJ9CPjkmt1k/n4GoFIJwwDTTgr
         ojBxbAHW3F9xMyb+JXIXhKSyzR7zZMnRB0a6WWV6gIWue1w94nngZE2THvaTLs8z31wu
         kzA0qxP+mtBcrmVZU98N+6RPQ+uQq/51HRy7MEm1lLVng34VELYh/bgDH5EUYKo6vh7t
         dye6nhgRyjkOgGXeLOaEcn70fV+CSNEmOC6mmtdWktzPzJB/8dWP6XjG8Ezusl7GUv0u
         8zqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQLfG0PM;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9OrWFfFOdhs9uzRbjm0DIaNJCcRigwe2BbF+81eCe3Q=;
        b=sH72PCBLOyh4n8psQEGakY4DSFADggnq71krDmIN3iSU6qHEoY3mdSeDCDKERwP44x
         Qr7OHUlEXBrRbHfumkfC7Df3OMrWpKwIS9JLfmpHZi4OXxdjdlVHno0UeaT/Obu6H5cc
         ZLCbSj6m3Ys4Vj5Tl+CsDla65ZieDy+nyPeQ2QwuAxGh2Eu/GT7AIAcvQAKMSE4hNEHJ
         Zcl3GoIfbF8qGMka0l1nmInTRLLt/r41gsVwf+aTdm8hnPKKuJgCCU4OfBUMxJRwErGY
         gsj80KMJjQRpNcKcNjOJ4qBRqtW2bS6nkjhWDpy6zyv8YypN39PiXwpGdaT3sIhJU1xs
         vUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9OrWFfFOdhs9uzRbjm0DIaNJCcRigwe2BbF+81eCe3Q=;
        b=KyRSuIgivGnH5zf8NhAHIBNPbHJKtTGw2ImLwEbLIe6ByW6FFx8+IZHGoZbmOOdFxG
         w6yNCtjUXDc6J2erJJj3stcFjXmbU9tWUs5KkNg0C5Wut4rJLq7eC9Zgj/8bL5CzS0Ts
         INL1Orbn1yUCNGyjD/jXeN1L+A3PTooa380FJXPRVS9tpC7MJf7dT/f5gOO+W/Xx4BP4
         kPpFPzYyEnxECH5RJrGxorn2n24m0rOmtiORoyIGXZxk3Sj8GZb1E0+hdw8ronS8wDqD
         /sq7YBMPjuW8c3dlp7UNJ1H+DMpLNr05NBLW6RM8Jp8OoXFMGxFgVjpOZxK6+3+ATJHx
         wo8Q==
X-Gm-Message-State: AOAM531iyqxs2NxJ80KaibjFgshvXRVXIrr68G1sTFbda2A9Mk00WB2W
	8lZhHfzqP3wHsaa2NyIny6Y=
X-Google-Smtp-Source: ABdhPJz+Kg7pWUWoqIzGSC1wWkzmzAxCymwaAwsUIFyBpgOGgs0PNlGI2T/LUHlLFiPninSiJsTOYQ==
X-Received: by 2002:a05:6512:138a:: with SMTP id p10mr16030217lfa.505.1627370155051;
        Tue, 27 Jul 2021 00:15:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls470776lfv.0.gmail; Tue, 27
 Jul 2021 00:15:54 -0700 (PDT)
X-Received: by 2002:a19:7101:: with SMTP id m1mr16195440lfc.233.1627370154027;
        Tue, 27 Jul 2021 00:15:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627370154; cv=none;
        d=google.com; s=arc-20160816;
        b=FE5YXWRsAVtOleZYGqTIEk4I16ZB7LC6/gDanK+jncDvTUIEKQOV/PkuJ6moydMzTV
         XAlgLHtZ21YJUd33ijoKjuhUx+gGtoVRWX2mdrjLUFw8Yx3aDQPf2J+4/AKzTNyOrjUg
         Y1I6K3xYGoTwPkV6litvV76Dx36EGgdcNBnAIOzPt3Oa2Xp1AaY622ljzd07t4lTMZnl
         xTX+vNcQ/7hekOk4KU/TXB112Fc4TRF7oT9a0XpTJPC+HcxE/klp+bxhUshbLfWCCLbF
         WNAQwwnfM2Wb4A83caCOoBwEOS5BJ9ZDIdENb24Pu6SQJ1ZGTxoKepENt+1iMGPkhVJJ
         Es7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ywU7xJjCDbVGINDQQEbkRxSRar0OtZ578Jl7x/Efm9s=;
        b=OWIp84CayHqH+AZHVKrpbjgTkWc7+S7n5hnrpI39fkDZD4K/zNPFnm4Wjwit+l7d+c
         ObqW9LV8bqRFZ+2UMO3CyBKOZpI+O4BVLgogXnJ+a3hy26ol3K7R+zMs0zqOYkXVrbVq
         nKxR85XzKJySeGy/azBZmQ+tNhtdQPcXBZAqZXla/tyfu+qs0UcBf58TyOHb7EugWzIE
         aQxo/51TONd5D2qYGkB8amGgWQ+CenleMjUfb75V5XzjyQObN0DPuVhtMKWU6kntvt6R
         gPGJK+c2zxt/ZEcYl7LLuMvYwOWwEeesSIdsZYt/NDj2pRNwQl8C+SdUP/HALKeHyvq8
         FMSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQLfG0PM;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id w10si81299ljw.8.2021.07.27.00.15.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 00:15:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id oz16so11992565ejc.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 00:15:53 -0700 (PDT)
X-Received: by 2002:a17:906:56ca:: with SMTP id an10mr15800499ejc.90.1627370153372;
 Tue, 27 Jul 2021 00:15:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAGG=3QVc_OZoKi2J8tqRoBKcPekgAMMi=6Uphg1hNGNDK1qJUA@mail.gmail.com>
 <YP+x8y6MoPNHh58q@kroah.com>
In-Reply-To: <YP+x8y6MoPNHh58q@kroah.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 00:15:42 -0700
Message-ID: <CAGG=3QW0=gec-s=HvWfAk68943HpzoXd4yc2jDAH5Hrudziefw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LQLfG0PM;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62b as
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

On Tue, Jul 27, 2021 at 12:12 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jul 27, 2021 at 12:08:37AM -0700, Bill Wendling wrote:
> > On Mon, Jul 26, 2021 at 11:41 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > > On Mon, Jul 26, 2021 at 11:15:52PM -0700, Bill Wendling wrote:
> > > > On Mon, Jul 26, 2021 at 10:27 PM Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:
> > > > > On Mon, Jul 26, 2021 at 01:47:33PM -0700, Nathan Chancellor wrote:
> > > > > > + Greg and Rafael as the maintainer and reviewer of drivers/base/module.c
> > > > > > respectively, drop everyone else.
> > > > >
> > > > > Odd no one cc:ed us originally, I guess they didn't want the patch ever
> > > > > merged?  :(
> > > > >
> > I don't believe I saw you or Rafael listed in the
> > "script/get_maintainers" output. I tried to copy everyone who showed
> > up.
>
> $ ./scripts/get_maintainer.pl --file drivers/base/module.c
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:DRIVER CORE, KOBJECTS, DEBUGFS AND SYSFS)
> "Rafael J. Wysocki" <rafael@kernel.org> (reviewer:DRIVER CORE, KOBJECTS, DEBUGFS AND SYSFS)
> linux-kernel@vger.kernel.org (open list)
>
I did it on the patches themselves, not the individual files. I
thought I got everyone, but apparently didn't. :-(

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QW0%3Dgec-s%3DHvWfAk68943HpzoXd4yc2jDAH5Hrudziefw%40mail.gmail.com.
