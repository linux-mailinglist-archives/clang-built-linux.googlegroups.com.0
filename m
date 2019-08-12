Return-Path: <clang-built-linux+bncBDYJPJO25UGBB46FY3VAKGQEWTTZRCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 8236C8A4A4
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:33:40 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id p18sf20420765qke.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:33:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565631219; cv=pass;
        d=google.com; s=arc-20160816;
        b=0aA29p8BZGN90XGVhHY/7zUWDOpDGRN/SVJqlGUb4u5L2oCLgTQ+IzUBYQLgKo9BrW
         364ap2wcwppR1NJIB7gWhE0wbnzI7e8Qepx3DFg7bLstTc2B2BI0ldORpiXLyFMnsQ86
         nXUxJWh9g+Klkg3ThMQl6uONAfNIWRblpXjeiXlJyOJlYxBrkTWQ42YPPq3HAunHP4nX
         FYsiSvR3EQr5lxykLI03Bt0pOvdpupGDvhWbd8waILWS9m53Ed4TMmla9onzSxVzfw2Q
         J/h5BeC2K46dX+UyXpnhZEhxUovorIYdWEAYan2GWjhrZWJvYnoQ8WVm+zVO5UWdi5UW
         B4Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FbxUuP/xHdustDTNonmlTEsH1VKur8XAR1bOS5V5twk=;
        b=xj55KA0Itkxjx18j4XWmbruwLiO4kz+LZudcmPPTpjbBofRpruCbQD0K8xYXdlVurb
         qsNAPq/kng9He1aPsn4MyQ8zDDsuKAihEichpyC8aEHKToLYA7mn/yVm5/hLD9jVyHg+
         Lx3exgizyRx9oHr/G8KXNL3zkeL4xfFxq/iEm1TjaMCQnvcCrwN8AieKt5Jk4MGerosy
         XKMLBfWnjazU9Ocfwh2vGk7nPRAl7sZdO+6AkFUcxPYOaCBPD3Q8dJBvooGDnv+RwOJu
         ivdciJNSCr31VaRLCngZXVhmStfYzYMhJAeFClvAfJfFobXp3X53DrVhs/1GOmk8DbWt
         iUFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="px83n/ll";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FbxUuP/xHdustDTNonmlTEsH1VKur8XAR1bOS5V5twk=;
        b=sCC3AJKl6pEntZGaSubQTNboERLuQNa9FbNpp1CHZ604sAGynIlSm5z6Kx5Jha2wwQ
         vSgCk/IHbxPsjZdzLUX81Ce+SjZLMWGvyhkacpnlzdCBZPdbDCPrXpYicKFIWyToZ20Y
         R97YrThs5gir55ERQuEcm7sgYWZOVkC0pYOGGQTn+jJ+wNvIWH+A9th84/RWGlrZZJKL
         N67FbBnpkg0XnTbuyRuCl3TcNUuNwocWHlp5NIr2SwRrhfCdTCeWDr9D6EThisXZz90P
         E8XMk3vuP82IgYmolrG0EBvcA7sRWZplUEc9oZM8ON6cXg8eBQMXfuSfnZGSYizU0Mt6
         gHUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FbxUuP/xHdustDTNonmlTEsH1VKur8XAR1bOS5V5twk=;
        b=LiP/s59cH9iC662qdm+IiJr91LzGRAnXxk/6PyhlkHGYBYS/CL2MAXPMjZ7CFcHhWb
         uZKblEQHkLUuse52dH8kWgxgu8gyGbFAqII1criO+Dwf43LTmqDtiuuJxnZG8TINz1WP
         rjgeHxXkgbmrLb2B+645PSxAgYZnCD+Rae5TMsXhdtt97MRx7RjQYZfQimWw6rfiGQdj
         ytSqC15Kpk/csWPRF2cqNbFaEQPqzjxdTG0w3kzv52KyqsJerzzjMqYIddKWmwnq5H/5
         OfXIOSV3eX42pfh6uFFJznbol3zXkUmTS44o4pXpXM7GPVYz/Kj6OMQEWW2YqYCmyRx4
         7ZeQ==
X-Gm-Message-State: APjAAAUCrh11cN0Hro09b1bqxIPrv72ueMrtbI+LXHXgq1aWz/RV3sTP
	mHaoM3dRnIiwzVKkFvj5a6k=
X-Google-Smtp-Source: APXvYqzaqKo7jzuY8A4vVvJu5z4jNOQnFkRrBJjYcr4d1vK54VPyGsmbDAuM0tbSzr3jHglDKdme1A==
X-Received: by 2002:a37:a389:: with SMTP id m131mr31494723qke.168.1565631219638;
        Mon, 12 Aug 2019 10:33:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls6282527qki.1.gmail; Mon,
 12 Aug 2019 10:33:39 -0700 (PDT)
X-Received: by 2002:a37:8a86:: with SMTP id m128mr6290407qkd.327.1565631219394;
        Mon, 12 Aug 2019 10:33:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565631219; cv=none;
        d=google.com; s=arc-20160816;
        b=MR7G0OeeBoQtP2IDmPMg17xkTEBt9LetxyObDYesqo0nA3mqBLYZWyhg5lTP+8nEjJ
         MBv/oXHoBTDagp72XFNL/Me1Uwt7Lo9RXYWu4+sv07guZsxsSWO9BfOvN75WrOlyR33B
         CBKw5eVbhr+rvx9/gRoZVZkJ+H3s2sjRlCNeoAjHCyAjohjypaR25pMAei1WP9DNQT4R
         Wc2xxuJUi6c72ArOowHhHKH18zpFDv3UuMfYGgzuD37T2eg4l12BXB1cxrDKlzg+i2vc
         EguWJSEq4gaMzTyWHgIZxq2iVvcH0YK25Ym7hxAGtBfk4etn4GXDo3pB6Ei1v5ZvbmC7
         LcUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RWh4tuyPAGsFihNxn0HM6rLNPT2QFeOahruI7q1karY=;
        b=MSZL9Xe4cxc+zWhqz687DD43lACig4hImTqiCEMK/I1p6yUPzus0Ydl1KEiTTeybfc
         /FRsiVvIlHOCuuKFmykhP2sCmQzjcgPCZYErX7/gmf0Q3/08WYUaK9EuujpNvNYkxij3
         6mgyO/ck4dclV56wasAzhmcprlqq5lBem4J+ta0/FlTZ8pHVOuecWELCvltU4uiw480F
         +6fLhH6PZqCZalCf1ezmYGRZRqqhvQbR9gs8Ni980atYZb58xxEZOuN9w8//d8NaSHnc
         Q9G+spN1Jh2nr/15/EJD9/7RRGEQzip3RzTsOPXmjDa9NegLUMiRXA5s/HRf9YHu8gAg
         Lp5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="px83n/ll";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 37si872854qtv.2.2019.08.12.10.33.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id u17so49834034pgi.6
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 10:33:39 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr19508497pff.165.1565631218202;
 Mon, 12 Aug 2019 10:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
 <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
 <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com>
 <20190809051552.GA44466@archlinux-threadripper> <CAK7LNAT6Yp3oemUxSst+htnmM-St8WmSv+UZ2x2XF23cw-kU-Q@mail.gmail.com>
 <20190812171444.GL4592@sirena.co.uk>
In-Reply-To: <20190812171444.GL4592@sirena.co.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 10:33:27 -0700
Message-ID: <CAKwvOdmEe7gE7LUFRtqrUiHr3_Q2Ky4a-obUQWagbgdWZ33_ag@mail.gmail.com>
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the environment
To: Mark Brown <broonie@kernel.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Guillaume Tucker <guillaume.tucker@collabora.com>, Michal Marek <michal.lkml@markovi.net>, 
	Guenter Roeck <linux@roeck-us.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="px83n/ll";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Aug 12, 2019 at 10:14 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Aug 13, 2019 at 01:37:14AM +0900, Masahiro Yamada wrote:
> > Only the problem I see is the situation where
> > a user directly runs scripts/kconfig/merge_config.sh
> > without using make as a start-point.

Further, if it's possible to detect if merge_config.sh was invoked
from Make or not, it might be useful to warn or error when not invoked
via Make.

>
> This is really a very common thing for testing infrastructure to do,
> it'll combine a base defconfig with a fragment enabling extra stuff
> either to directly cover that extra stuff or to ensure that
> configuration options needed for testsuites get turned on.
>
> > A user can wrap merge_config.sh with a simple Makefile
> > if they want to override CC, HOSTCC, etc.
>
> If we want to do that it seems sensible to provide that Makefile
> upstream so there's a standard thing, it might also help people notice
> that they need to do this and avoid getting surprised.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEe7gE7LUFRtqrUiHr3_Q2Ky4a-obUQWagbgdWZ33_ag%40mail.gmail.com.
