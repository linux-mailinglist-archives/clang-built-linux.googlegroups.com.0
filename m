Return-Path: <clang-built-linux+bncBDTI55WH24IRBS5IQHVAKGQE2IDENLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3E97AAFB
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 16:29:33 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id k20sf40673852pgg.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 07:29:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564496971; cv=pass;
        d=google.com; s=arc-20160816;
        b=gS98pTF+307Pp3xCXqqpFWp01hwAs94HxIxrub3liu7GHdFTkcmyc0Km2Wbs2O7f9u
         bZXyumI8ZBqrabEsyyIGfig4wuHUaFHX/08g2YMic3uRKp20LUPxCjeuiNnPdOI+Cco/
         y7hIv5aas+zcihDeGklFPtIDBqvSpH2/Q2FNSxoeivZRmjapxodN6U7EqgZ2ruKDkePQ
         jTAbXXOL1ORcCZZJKvyqH54pEeeHXmrIDXQT9rY6JFrHnApRZqCjNIkh6nhjWLF5/QWC
         3p3AVYk344Z5E2dWRqoVScYyRM+DlNZZYjorDt79TTpOYJGFDqCNHAb3bvun6ztID5nw
         N2Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=yom93qX73jd3hEqmA9YTjFKLG3cnrXH3kSh0c9lCcC8=;
        b=qdOLVI8YVhI92cXJ2//TT8wjn9QRGACGB7FN5vzj42DnBTovRZhsHIBpRrtqT0aGJK
         +jhLAtvtoi18JN+Xvn4TZPJE850+ycwYSC+9qipugAVG9ImAvgHv5c34BQ4zRETaOfK8
         f0FnbvDeJTI4OCJFe9fMw69k+BI1brXxGWUmmp5fOAPPdIOACarMFtL5isop0yNfZDun
         jPjIKXJwNaD5HLZkZrXjEijA8Af1CdyA864TOhoHV+m8qzIspYXvP9JLbnzO2VbmPDwt
         EerTW4bWmyQWG+La4VVt+fCP2Vwr38REe2TVBDxW/1DgETLHTUjBhCEN8dnlbtx+pnp8
         aGvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RtdPT8lt;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yom93qX73jd3hEqmA9YTjFKLG3cnrXH3kSh0c9lCcC8=;
        b=aUtnF707XQwwIdTUrnCGimFpoCGImEqtc4v5gEKG9sLVvVihMnV4YpvE+55l7K6h3Z
         JtwX8M3xqj+d5UpjU410QFaPz0IbfYx9ZbTcUh2/1R3N304Uq9Y1YMyBkmhAP3VxS1fv
         aeIUFIP8AuAMM0TIZgFzVZpvMRmI+Q/54u6WDZF0VzqG/Zk3HAYUzAYMdOjVxE2JVasW
         Cpt5vgpqcabgxighrvqBMSmkFAnn//RqXk7T528P9ryUu6iae+b3vw1kJU4A+bWdq4rC
         xbJYQO7H/8TxTYSbpKan2tcaa2Gq5Mus3gI1Mj+SRMyIKzpeu6j0hQH4Zfqft+KHBSjL
         MXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yom93qX73jd3hEqmA9YTjFKLG3cnrXH3kSh0c9lCcC8=;
        b=UgOsKCOuSsg4LHdvjim1sQkyB889E3cdOXrLGieKZhdpjBC4FBdefI/GXo4HDRFUAg
         6yo0sFNsml96KZw5pSNW7akgcDOxQRieHfFWALuFQuqhgwgxHNUiEVlqVK0kGUmhK8nO
         Ss4Xh3NISTCzzkeXeFIkwQY+L8b2rojmg+2x6sUzPB09c0Mylm+TwX+8MlQLy7nBw11D
         m7hbgwW4qOjJSwHTPMXCeK1yBNSmpLDCaLByBNC9B1uFh/DaDUcPOk/j8k80uDpidyA4
         TrEJ+hwVERFRYgQ1Ko4LUc1fgKl+D6fMUM23LGt3379sVvc0htqHN4c57zk+IaoG++A6
         iSyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX75GIjrIkhZjz9+jiEKmDInavmHJ3eFkb0fVV3HToeI60miFoQ
	xKUylEnnBvDK7arV+WZH2nw=
X-Google-Smtp-Source: APXvYqxXVvLUVeQMLzD634uG8GDp1m2NcD429Yl4NsyIAIm9P6bsNAWK+EwhkmVg48ByTXHnqC6RcA==
X-Received: by 2002:a63:381d:: with SMTP id f29mr111756400pga.101.1564496971200;
        Tue, 30 Jul 2019 07:29:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:568d:: with SMTP id v13ls12941994pgs.4.gmail; Tue, 30
 Jul 2019 07:29:30 -0700 (PDT)
X-Received: by 2002:a63:3fc9:: with SMTP id m192mr111335822pga.429.1564496970835;
        Tue, 30 Jul 2019 07:29:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564496970; cv=none;
        d=google.com; s=arc-20160816;
        b=EcdZ5gb5ZhZ1B0KaWrHiQWuDOY8qCSn5E+wXwBY4YOlpvZn3cN7/4bD/8jZ209Xqlq
         yU45qHxMpWRpKAp84P5G/sbqCVQtk2rMAWXGbWcXyZ7bFzwo+y+dN49nLJLe84QanhSh
         /zlaNM9BEKdDALRgdT4IShsyXuFyzTxtZjpLVmCE/sHOiMf7M6tPys0iPCVInkvXhRvO
         Q0f4uzB7RzKH5etmCwkjOjjbzj05uN3VCDmge5CF30gjHA4yaC2KiURR7cBjUMSXfmDp
         XJPFcqapMgkm+2vEP/qZgViSpznuFUPecxwk1kOvaAgIjwqQAm9xPnYA1Dhf6xfRHbDV
         Srsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=v84lwITMwCbRgHyGZMYws7mMj8il4DSwjrW7UNUSg5s=;
        b=ekon3fEX34eSYGL8VBsKpqrA6vOiGMmk4EWiqBTQZ6zoen7rFNrvaXdW0k50TvaUH0
         SK9eY45Tx/4fai6q80zS4H/wyTljc7iY63RTWYO/8uRoCwFUoGcdSy3BiG8cWEtP7JB8
         iQxbxaXDvaXU8+JehkcrqDBxZqabgWFVJKgqaHXOQxC2WMoYzKazOb/R8fl/y8G3Zdt5
         wBGzJ2Bmb4kITQYpBFkPcwg/ItYE1jqeQo04b7IpqbitpOy3Ps7SC4QtNJ44KvVU6sY2
         OEwScPf07PysG+OLayEXFS1of7cATwj6RN03Pq7/pO1MtBDM2mXlJs0tAPZNxydKhhXw
         E6tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RtdPT8lt;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id w72si2673586pfd.2.2019.07.30.07.29.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 07:29:30 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id x6UESvPd008791
	for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 23:28:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x6UESvPd008791
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id u124so43621665vsu.2
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 07:28:57 -0700 (PDT)
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr72503702vsl.155.1564496936927;
 Tue, 30 Jul 2019 07:28:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190725154730.80169-1-swboyd@chromium.org> <CAK7LNAQZJgkx-yEwgHcTapKFayExgUCb3=zLBpJmVMJMeEA_WA@mail.gmail.com>
 <5d3f016c.1c69fb81.b4775.c7d0@mx.google.com>
In-Reply-To: <5d3f016c.1c69fb81.b4775.c7d0@mx.google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 30 Jul 2019 23:28:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNASoNRsMHHBW=d_Lkjo7eLpq5=gkU_g+k8NwEB0BwV37ZQ@mail.gmail.com>
Message-ID: <CAK7LNASoNRsMHHBW=d_Lkjo7eLpq5=gkU_g+k8NwEB0BwV37ZQ@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Check for unknown options with cc-option usage
 in Kconfig and clang
To: Stephen Boyd <swboyd@chromium.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Peter Smith <peter.smith@linaro.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=RtdPT8lt;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Mon, Jul 29, 2019 at 11:23 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Masahiro Yamada (2019-07-29 03:02:40)
> >
> > Thanks for catching this.
> >
> > I wonder if we could fix this issue
> > by one-liner, like this:
> >
> >
> > diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> > index 8a5c4d645eb1..4bbf4fc163a2 100644
> > --- a/scripts/Kconfig.include
> > +++ b/scripts/Kconfig.include
> > @@ -25,7 +25,7 @@ failure = $(if-success,$(1),n,y)
> >
> >  # $(cc-option,<flag>)
> >  # Return y if the compiler supports <flag>, n otherwise
> > -cc-option = $(success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null)
> > +cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c
> > /dev/null -o /dev/null)
> >
> >  # $(ld-option,<flag>)
> >  # Return y if the linker supports <flag>, n otherwise
> >
> >
> >
> > This propagates not only -Werror=unknown-warning-option
> > but also other clang flags to Kconfig.
> >
> >
> > Currently, we do not pass the target triplet to Kconfig.
> > This means, cc-option in Kconfig evaluates the given flags
> > against host-arch instead of target-arch.
> > The compiler flags are mostly independent of the architecture,
> > and this is not a big deal, I think.
> > But, maybe, would it make more sense to pass the other
> > basic clang flags as well?
> >
>
> Yes that also works and I had that earlier. I wanted to mirror what was
> done in scripts/Kbuild.include where there's a CC_OPTION_CFLAGS
> variable. I'm happy either way, so it's up to you.
>

Can you post v3 with $(CLANG_FLAGS) ?

Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASoNRsMHHBW%3Dd_Lkjo7eLpq5%3DgkU_g%2Bk8NwEB0BwV37ZQ%40mail.gmail.com.
