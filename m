Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCXP7KAQMGQE6ZYFWPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD8232AC75
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 23:09:15 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id f28sf3822387ljo.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 14:09:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614722955; cv=pass;
        d=google.com; s=arc-20160816;
        b=sayn6Tvuar0SybM9WVVvL3/OU+emn1jrAOL5UtQlL6PK4CmnDdIMc0FluahwQ6g676
         ooud6BWj3d+9/X3/L7D/5LAMQFx3zZ8UxEhfVqaVgqU2wNYonrFjb5D5ogSNkDIxGsX9
         SpV/RGsfA2x6+SV4KPvwciOFeDyHyiLje+46IOQ5oNqM0TBpeO5+i4fBp1wRLwiwkaS1
         cnXqa/pgBbdUABEYvPgGZM+O4sEjk2gy7kTcsBVSXoRRSuleIflUt/uQYuQCX8ma9Iba
         gmdn+NAiYNwGZoH7oIFudrahUSOaE4cB+2bwuvbgMzkFQpBajQUNI5CB7REc5Th1iBMs
         5dQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+G+HYvvl1rTlWf4t8Jwty/fOyhiPRFybYr6HU6Zm/os=;
        b=jEpxHRynIe/gtrWgpQlYO30Yun/R9thaMzB+9cO9SS1EyLeP4+Fa3ECRoovMhXlMzx
         cMzoACu/y8LIsYAbFEnz8pEOxU9ADEdtQupJh+ONbtnkBrNvAKsoR3gIKKFLjEVazPTD
         RpIIKYXwEXulKUG1Hrw894aQWMIqH7c+eIA3sIgeZ5lPCxKxjts3yypm0/ILeVEj2OX4
         CxroIcD1IpEnJ2U1yP+52sQukgolYc++qFzbOgEV0o1T1obYCtywiAHN7TFQV9NiGqNU
         4O0qXscKOkWR3BRiwK5WxYE1uXwICwNNTtHF6nMqqj4hSV4rzM5Noh2wmXRN0T3j4uLx
         lp6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WsYz8n3p;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+G+HYvvl1rTlWf4t8Jwty/fOyhiPRFybYr6HU6Zm/os=;
        b=a8Y8288OgvC79WlrYtAxfMUgb/EonPS60fqEPWbhyn1g9mrognhjpTeAfj9cuxuXbD
         oDOEtPeun5AzWiuDrkpCluC0WpuS/V36Cy57GvlKRXYQ7y1qVVmyIb0U01QijlI5UoGn
         jEtetS2TOnePRYMNXP4OrMqp7eiaqc4WYrCVRbNTMH6H2H37YpyHhxY7pHvrSAmEaCtV
         0tIxhU1yce6YMd7qCG9QN0SZ21b8xSqe3sX8vvA+zqrVhjken4AZ6CqGZ9pixcqfqTfz
         Jq26dK/8T+YzSp31eG3kSjD/RtwAPluoUwHbh9ySXmzivBeyas34ZE/Am6bg8fzZvesn
         Hhvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+G+HYvvl1rTlWf4t8Jwty/fOyhiPRFybYr6HU6Zm/os=;
        b=PtUbfB5DgZS07f6tcoBVyJYHKqsNF0azn21NyizIJmivSKW+DDbd9iisXR+ROnnZJJ
         vWYQYj0QH1J1hnp3Amdg6QYCf1NQUuv7QvDhiTy6kvTwt90I9cMq3af7b0kfgW4dSz5R
         OGDp9FoH0zWmk2Pl6WOh26j8DErs7b7Odzh+P6C7NaQXCMU/PCDBIVGGtChqoAKxhhdC
         SPX6fzGb8mI4WFh+KIYtZabNufag0PTDZSckSVhZRJ0ONxyC8pZSVRprH0EYwY/80FfI
         DM+OwzN4Yi7R9zRUOLEvgfrax8dyAUyOBd8IZoTwqB79d8b+2VVC9BAVGE6y5I4pSwyy
         XraQ==
X-Gm-Message-State: AOAM5302A9RUsJhR3rzqaAftSsDMhmPGaol7w4CnnIqvKeV5pDGl9fRp
	rLfutyvlYCZawaWrFjrRuis=
X-Google-Smtp-Source: ABdhPJzmi+wPvNvmAMBqLspK2MS0f/LeVQwBsaxwoQGWkQYbndCTOlukfNoKdHXdhT72LAN0z+wk0Q==
X-Received: by 2002:a2e:9196:: with SMTP id f22mr13188039ljg.419.1614722954903;
        Tue, 02 Mar 2021 14:09:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9191:: with SMTP id f17ls38664ljg.11.gmail; Tue, 02 Mar
 2021 14:09:14 -0800 (PST)
X-Received: by 2002:a2e:a367:: with SMTP id i7mr524997ljn.189.1614722953937;
        Tue, 02 Mar 2021 14:09:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614722953; cv=none;
        d=google.com; s=arc-20160816;
        b=s8fiHsomVXRgZY6x+AQuqDeoU7HUadwetXSrOIXbW030kYN+jq+02srgoYsJ1sKwJx
         hinJKmq8kRSLgMJ56u3yF9nkks1DC93GtYnA00h+7T7Ub/4yTuVCrdN9RIzXm4ty/NMN
         XOihCKVWL/6UZcavSmF2o4FY4ahhGSHXZXON3UYDWs6u9ogqorE2HXb6kaQ2ZSgUrMhc
         KJixIzZI0dZXbLiwgrCcX1qfbdGV/s8/Q0ab+l0lOwQtBeerSxHDSYpWOpmCcUUvkE6l
         dGdz876y9KCQ+BssZuvdbJN+aU0halMfEe8mbEXcxrPhP4JPFMmADQrxHvsOV+c+xOgP
         Fphw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2BdA81m+7VN+qviulnFkbFU7BcgALjMUUHbqorkGRo8=;
        b=Z7a9O0L3KfLU0UFAYEcKU5uHwK+QDBQGPubJwn+EdoCynzOwyzv5584C3sCSHfliPS
         IniespJlnmChRe7JsjJpByvaERoZRhpzsp7aX8oXxw8BXCYreScRU0dQkchlT6nCNMxh
         8QE7yoFg1vOHetSZv0jJD93FfI967zeaHyy8Ysjq0hWDwByIcY4zQomj36S7ysY6AkLf
         zDxFKUSsSAqtaQFymiXVVp9wmqUj0TyLWzGdk/X2Qysc7kQVZGOV7KRZL9w24roknX0A
         BfHdeCqgRWB9wVlWarm8kWcqaSaFKhW6PhXHI4TDceYXsq0mJ5sV8DFZeRqb8plA2SG9
         6IEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WsYz8n3p;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id k18si398718lfu.2.2021.03.02.14.09.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Mar 2021 14:09:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id u18so12383696ljd.3
        for <clang-built-linux@googlegroups.com>; Tue, 02 Mar 2021 14:09:13 -0800 (PST)
X-Received: by 2002:a2e:92d6:: with SMTP id k22mr984745ljh.244.1614722953496;
 Tue, 02 Mar 2021 14:09:13 -0800 (PST)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <20210302210646.3044738-2-nathan@kernel.org>
 <20210302220252.ulvlsfyp4ordwrky@google.com>
In-Reply-To: <20210302220252.ulvlsfyp4ordwrky@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Mar 2021 14:09:01 -0800
Message-ID: <CAKwvOdmR_p-zbrTUmbObmCVKBcuNLpg_V3NqLeYsEK4xNHfYOA@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: Only specify '--prefix=' when building with
 clang + GNU as
To: Fangrui Song <maskray@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WsYz8n3p;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236
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

On Tue, Mar 2, 2021 at 2:02 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2021-03-02, Nathan Chancellor wrote:
> >When building with LLVM_IAS=1, there is no point to specifying
> >'--prefix=' because that flag is only used to find the cross assembler,
> >which is clang itself when building with LLVM_IAS=1. All of the other
> >tools are invoked directly from PATH or a full path specified via the
> >command line, which does not depend on the value of '--prefix='.
> >
> >Sharing commands to reproduce issues becomes a little bit easier without
> >a '--prefix=' value because that '--prefix=' value is specific to a
> >user's machine due to it being an absolute path.
> >
> >Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
> Reviewed-by: Fangrui Song <maskray@google.com>
>
> clang can spawn GNU as (if -f?no-integrated-as is specified) and GNU
> objcopy (-f?no-integrated-as and -gsplit-dwarf and -g[123]).

But -g get's set via CONFIG_DEBUG_INFO and -gsplit-dwarf by
DEBUG_INFO_SPLIT.  So if we say:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LLVM_IAS=1

So cross compile, use clang, use the integrated assembler (ie. with
this change, don't set --prefix), with either of the two above
configs, which objcopy get's exec'd?

>
> With LLVM_IAS=1, these cases are ruled out.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmR_p-zbrTUmbObmCVKBcuNLpg_V3NqLeYsEK4xNHfYOA%40mail.gmail.com.
