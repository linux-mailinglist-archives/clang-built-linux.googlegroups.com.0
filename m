Return-Path: <clang-built-linux+bncBDRZHGH43YJRBBEJY6CAMGQE57RILKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C02637322C
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 00:02:46 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id q79-20020a4a33520000b02901faafd3c603sf78416ooq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 15:02:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620165765; cv=pass;
        d=google.com; s=arc-20160816;
        b=SaGxZ2Zhtmx1yELyYfeURVsOgZHrWcnuKuNEMiPdcNH0MWQ+IBqwoJLYVOAAEQWUWf
         qIPMm2PwAozg7NocBKVOcq+ep+ylDWGR8bsw1ag+noFM2KUtwXjyEApO3vRsLKCakMt4
         qXsUJIgbGU7NBM4YCo8VpBpnOKsgZiO7+afMc8+wJ0Qqi4/BPFhoPMkFDkJyK5mUWWzt
         rSLkChJQURJHQEDzh8JdmxDjqZIuK9xe+PUYIWhvPEM0izP2ZuVTqlrIhYDlRuW2UwLk
         Mw3KeNzll7MgHIIzZHR+mSc3THPZYXTsXK9/UvyPo5H36t8DmxIs/1/7buXeFUnf6jDB
         2nVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DncKHH/3TLzYuECuen1ISFxh2b+av6pICb8mKQ9wlbc=;
        b=jtr5P+9hQBo0Ni0fSRNr+852mYUx7ii3wkk98BCir7bHqav8wtr9Rzv5Qhu2UAwLE5
         +dEfjcist4i7RPAzBVkRhnhcakY/jqhPgzFtrkb+RFTv+CrMJ43oUHqsNPd6rH8E8lgQ
         GqBPgMJikU26GSJJjQkeLb5u9ompAgINQ0CWJqsANg/WSr0zl4nXC82ZGGTrB/oIk+mT
         Sx3IGx5AjZ21xOooXBAg245IabCueqPMEnaipEAdS+NnHIsaFdny64sS2zKtYfPUfGJe
         80x76y8PJ9/8S5kIXRu0Ge2SeJmRii6fpMr/vBnROVMiBBub5iu5hGq7hIM8PTfqrJrO
         Wm1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J9eoEftl;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DncKHH/3TLzYuECuen1ISFxh2b+av6pICb8mKQ9wlbc=;
        b=RdYS71+hjvztDk4aRHCioiEE4TnElmrfoMxuL+8hPPO1D8nn7rM8xqKOrQn1h32/ac
         RKu+C3Xyl86e3N2FiFtMTk77P84Zq9Jz+rMx2OzSK5UdeVB5/hXPaOJLKu2o4pfWu5fo
         rkclXJYFKf0wynOhJZhLeGjPY4QlJF9z+Zs+nEz0O9e2SYyUV3yHjY5TuPa+gBcNKsXr
         dzci4peP2r/VwxaPm9NmFr11Q8tZNMCnWWI9zErao7OpncpyDFgzBYHfb07p4j93tFsQ
         UQnju0XFEs4rKReWb48mekBGEbjg6WssgJyUi5aVnf6PGzep53pypq2i5mCHdZJPoRox
         b+kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DncKHH/3TLzYuECuen1ISFxh2b+av6pICb8mKQ9wlbc=;
        b=OHuhFMgZ4Gpu+V5/QMCUQX4dSTv5mXDgwM349VyK9O/DpTeBwNOQldfJWLu7YQK5/9
         btYmiJ0fPwBilxBB3Sv3CMiq4SwVQ+2rA6Uhjaul2vHPEY+Dl47olc78Tctl3In2fYZF
         1FIDCN1D/G5yXfAKQzvRkZUSnlc9HabWrQyTE8laIGMrQxdMrDRT0CUO+r6AQ7Uk0E8c
         j/wB51ZUjTythvR5EHfiAgn/vfMCo6mH3FqJgzPu53+Lc0QWOZkDgDxNkFVTHsOIdV68
         +QpgU5LaurP5WUlLjzYAprGRtxSbk3uHg8ES6harR0FT8j9NKGJdiw1O7jIqmBeyVpmo
         swMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DncKHH/3TLzYuECuen1ISFxh2b+av6pICb8mKQ9wlbc=;
        b=WmTXV0rVEU+nubVIp/BnMm2/GP/FCQCS5X8h1xTI5KHS3WWY5irsBalT0neBTwFCmJ
         MyhB0gLmcE8OxX3kIn/KSwa7Ni90Pge7uO7Cq7uo3+eEQtzHIrvejVKYiHCDL7/Gm/Tj
         gXjGLCHhsc2fuGrmhFtu0tNaawRjOCiERSEmnJD8OcLjPzOjC2c5sCHaVEQP7VmnyMQL
         nbbRL/v1qWgr38KOWZ7d6otCZyTB7aVYxRSzaPC89ACJ0nB9x91c8KKMF1jTzHKDDpkU
         OjJ70urRu1BcdVvJkZ3TpUUwra1y4j4mv4NmLCsmf1lWZzh1Ha7JCSBJRC0/XaVjrwHl
         OECg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KsC6YZNQXddCkAZPvwfto5yoiNz0B7FzO5/0BPY4HOV0nZ2Pl
	PGiml4VqHES/eLYW+juC9yI=
X-Google-Smtp-Source: ABdhPJxFczdnJbls50CN1c6uH3gI0NeZVVUfbK2SJkB+7PKlw8pG9LdR2n4WUI1bavhGdix792hSBA==
X-Received: by 2002:a05:6830:813:: with SMTP id r19mr12832043ots.224.1620165765055;
        Tue, 04 May 2021 15:02:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1711:: with SMTP id i17ls205449ota.11.gmail; Tue, 04 May
 2021 15:02:44 -0700 (PDT)
X-Received: by 2002:a05:6830:30af:: with SMTP id g15mr15400721ots.202.1620165764719;
        Tue, 04 May 2021 15:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620165764; cv=none;
        d=google.com; s=arc-20160816;
        b=St6pnbIwCFN1A6Bx/tTLr0pgfc+iUYgsTzDG+XSSLobrGctvQ7J6N87Z3NWhqRhtre
         cxXvBflSbgOjDJzf8/A5Lh7/AloMLD5lRHofztgeMMGx/ob0Y922AUWE8UNEK/G8evRM
         tmvbbmb+30/xSemjo7j5/l5OSow7RM0FxpCs/fI13roMDFw1ZIJMz+yeANAcIn+A4y7m
         KndnGeVqH4/myLdJrsyyiuM7CTgY+MQPwrpKfFKwQrICViL+RQF6EANlMHQhHwkGS2pk
         WKdfPOGNQJLC8iCoSPfEBsp94VdyVNjjJFh1nYdI4aBDRIsmoV89u9+Ex/uiVT4Iub0T
         J+og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Rvtc4dyMiADMF+m7+qY/GWjUxbRAuv1Uh1ldPKNJtaY=;
        b=mDZi4tzCj/Y3YV7iaduEaDh0H+Zkop+21zkb7qwbBoA9T8A1LbFyKNLuIPTzewTpiC
         p+VK2Y07q8l1sfhxiKpunMp9RNUfZE93RWpMTC5TjuBH931sdCFkDrG23nfPgwgqj3sp
         9GjxESYREllsxOeSv6GvH8ucFIFMevQ6K8NBJ/5TcCh8Ym1d39PEgwOtZmpMfob9dIal
         hmQvRW6CGrhHF9taWpXY4A7VkWw5a21kFp1HtYQ6UUay2fSZNJUYtr6kW2DIgihSizvg
         fbguUfHFCrk5IuUcuT8qjYk74TIHspDxw2tzcc1MOAoi7HTcdn6XUU3sI3ASWIwmb4lh
         Xj0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J9eoEftl;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id l24si473478otd.5.2021.05.04.15.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 15:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id m9so70298ybm.3
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 15:02:44 -0700 (PDT)
X-Received: by 2002:a25:d45:: with SMTP id 66mr14776555ybn.93.1620165764361;
 Tue, 04 May 2021 15:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost> <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
 <20210502164542.GA4522@localhost> <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
 <20210502175510.GB4522@localhost> <CAHk-=whTjJwCt2E0_JM2dDq=+UybvJN7QK+6K6e80A9Zd8duYg@mail.gmail.com>
 <20210502214803.GA7951@localhost>
In-Reply-To: <20210502214803.GA7951@localhost>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 May 2021 00:02:33 +0200
Message-ID: <CANiq72=5766fGQjNoMoOxrywoJHQ+-i4U+Nb62MeEaRok4LCFg@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Adrian Bunk <bunk@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Tom Stellard <tstellar@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J9eoEftl;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, May 2, 2021 at 11:48 PM Adrian Bunk <bunk@kernel.org> wrote:
>
> Library packages in ecosystems like Go or Rust are copies of the source
> code, and when an application package is built with these "libraries"
> (might even be using LTO) this is expected to be faster than using
> shared libraries.

Rust libraries only need to include "copies" for generics; and only
enough information to use them. Keeping the raw source code would be
one way of doing that (like C++ header-only libraries), but it is not
required.

However, it is true that Rust does not have a stable ABI, that the
vast majority of Rust open source applications get built from source
via Cargo and that Cargo does not share artifacts in its cache.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3D5766fGQjNoMoOxrywoJHQ%2B-i4U%2BNb62MeEaRok4LCFg%40mail.gmail.com.
