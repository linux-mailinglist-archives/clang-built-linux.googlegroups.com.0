Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBR6P3L3AKGQER2KNJPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id C24911EC2AF
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:26:00 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id l19sf2012168qtp.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591125960; cv=pass;
        d=google.com; s=arc-20160816;
        b=V3Dnc0IbZ91xu7lCV8ppz1hpG69VAffen1DkLGIeDldXn10HALBWHXZiAE/1qeOTGU
         2fa4nrMaQMZXMWfeE5XzwouvxpzD/QRORTUObAfmuqXE3M/lYcBCCOB+pNyBkBvN4loV
         SDSnUFBpJP/W3t/TVX4p4cRrvTLAskWHjoIkU8eRS/y70+kW8BUYnoAU4wHCj5sroMnP
         SlcaxF7ZTmVZaXRnOCeS9by+mxTbaR7anmIV6+7JKkEv6wyDhq3bUd3dnVNKJh7xPFUf
         nMFmq2R+VTvj791Se74G4m+GqTjcCtPMjKAb9SOI2DKf86k6Zj9Up3k1Z2OCaeEwNGE+
         2OFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2QCP6rG4lbLMSnWZwzi8g/z7UQxShwDunY8vBAsFG5E=;
        b=WwYWedkivRCSxIIW9vRIxeeq8/8JKIwhA7kxNnqlZI0RVdhx4dTiaxd8PizR1iRNW4
         dUSffL+RlTcgSHeZYsGqyLNkK16g7OrZoVp3rYCsVLG6x/TqvvtM6dm2svKk3XVgRIt3
         eXRA0XQbcK/nzC/ms62c6l/dKvyToQ5uhCYTGBnOgIu869InkOc+gIeqTA1bwLDD6Gdx
         vKnYNDaJmAnd3gAlI8eT1RH3lfYZbubwInj/Aj5qZ/qALl3oeovGI5Bj5OqmYKp65Nyp
         EutNaS+OK0z1DTL2qg1UmBkXfYOz4Kv/Ay54rmXpyv9lAzfLvRNIZXy85Xpj75bS8fJX
         vI5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fi2nlPxf;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2QCP6rG4lbLMSnWZwzi8g/z7UQxShwDunY8vBAsFG5E=;
        b=jRNhRir7IzKF+HKDOsmakkmZYla7yePOpFFSEMeLwIZaHyJdSh2lG3N98BzK5E2EAB
         uiFI9SgJXaR1AdbhHGFtWgTJMtKjeMA0a6TuboruBm/3sZcrxIFd4dFxZOF+Hl88RQVK
         tp1s9TvzF38yof/8Qf4d0nj6kif9OE8LRnlz0n7GLxMtTR/t5XC/4wBAa6Ac5FOGd7md
         3TMrqObpxIKNvPo7WG5pqgNAIt+PZwmXJJpdXj9qCC0Le9hfSN+5KG3SHuKDp/saehPt
         uZtMz52EBe4Uj/lSUDX2S4kBupmgyfR/GYdcdONu2y/2F6MPpX5UiYsKJQqXmUUj490Y
         7kAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2QCP6rG4lbLMSnWZwzi8g/z7UQxShwDunY8vBAsFG5E=;
        b=dxSQLrTV3HGEBp1BT6LnliiuyR6Y6pQLvvI2jWJTdZAZvV+FUbEKEOr6hgVajprCAq
         rVJipY7TKpTvUTurS/6Qq7HIGPODt1ofrUW+/9vresNfJzH/b8+qppwKWbQCU982E2Xg
         AOvg0sVxMTS2rlC84knnRd26/igI8gDPVyrjEyvtHtEKZUl0FpxsUbwVIFr3eQ/7D2fW
         wLHh/Gfc4UlyoLAJ4vGJcamSjeIIYvDM340O77cT6fe9bQogt+H2RbYARk/ujh3dshSo
         0mE9mT2/ffqvLy69Gmw0UuPupCZ+hVsJra/zK9TT/PRB6oK0r36RLV+ORYHZ2n/uPaHd
         91Sg==
X-Gm-Message-State: AOAM531ya4QHuADCTICbV5WAyDLWaevmdyC1WyTsty0F7V/nx2oSjSyx
	dz1+D4KPgN/kuDkEVnhVAN0=
X-Google-Smtp-Source: ABdhPJwwHYUw9c+rItMRp/8jTZKiu8t1GgtYIDqGgRB/VRnJU9u0pxHMea+k4WcZJYCT/gM1GF7jSg==
X-Received: by 2002:a05:620a:142a:: with SMTP id k10mr25793549qkj.182.1591125959848;
        Tue, 02 Jun 2020 12:25:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:cd07:: with SMTP id b7ls2502535qvm.10.gmail; Tue, 02 Jun
 2020 12:25:59 -0700 (PDT)
X-Received: by 2002:a0c:b516:: with SMTP id d22mr27720535qve.88.1591125959517;
        Tue, 02 Jun 2020 12:25:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591125959; cv=none;
        d=google.com; s=arc-20160816;
        b=AgS4YvMafPiaCqgYimajwSR0nrIjXfrn14+4poYoMbX1k23IzWZ7CtIf/JVXzR/dFc
         XPb+CqbhP+ouAuvuSNba7lIpZC66z+btVjdjnr1mvJFwZ6JH4XuHz3YAM3tQtx9Hhldf
         NJNW1AWQaODzLc+L/a7RPRMQ1iGv/H1A+hEWWdhZHux8pwV3GcMu070LLG7raWqHs8lz
         aj1Cu21K4ymYFt84TN8FW4pu9NiaEHK0uChZArXwzpbpgaNzh6ymYngkWyqQ+6FAZaXp
         Stb5ASPxKLur4v7n2f8hvYmfbGa5c077uda9mqaiJqyq0PXdp3rb6QkSerbLhAoa/qjn
         xDKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zgQoiQ3jaz0VjmfJxEyv0Pkaee0Wtz3ujBDf41O3EoY=;
        b=YcABAQPi22HDQ4/nENn2DVqZbSSTllsUUjcekhYJKW5qMU1+TUZCTkwJVZW6FXyEN4
         TZFD0VhMdeUnBjsLD2ZjfPFGYhcWlorX0K//PNrO6rEFBH31nD3cnIxKGZOAY4eec5EU
         5buuUdXrxJt2Te37tRAM9w1fLdWB7kEwjD7w0qOUGmSsycIEW4A2V28fKuZf8XQMGeCs
         kNv71OvPnm6HDdE8ryZp6bsaq3Vh7QbmyfLTpEb1RW9e+ekrzv7xAYmo58PQGclaYLcn
         aQmS4hQ6+9BRVryRSk9ZI0KvRA252KzJ9k+P+SdHx5xhBcyzCN3Hex/qSqc3nTOCtC4R
         51xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fi2nlPxf;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id b1si216556qte.1.2020.06.02.12.25.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id z9so13059806oid.2
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:25:59 -0700 (PDT)
X-Received: by 2002:a05:6808:3ac:: with SMTP id n12mr2388414oie.172.1591125958861;
 Tue, 02 Jun 2020 12:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
 <20200602191936.GE2604@hirez.programming.kicks-ass.net>
In-Reply-To: <20200602191936.GE2604@hirez.programming.kicks-ass.net>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 21:25:47 +0200
Message-ID: <CANpmjNP3kAZt3kXuABVqJLAJAW0u9-=kzr-QKDLmO6V_S7qXvQ@mail.gmail.com>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN
 and UBSAN
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fi2nlPxf;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 2 Jun 2020 at 21:19, Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Tue, Jun 02, 2020 at 11:57:15AM -0700, Nick Desaulniers wrote:
> > On Tue, Jun 2, 2020 at 11:44 AM 'Marco Elver' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
> > > have a compiler that does not fail builds due to no_sanitize functions.
> > > This does not yet mean they work as intended, but for automated
> > > build-tests, this is the minimum requirement.
> > >
> > > For example, we require that __always_inline functions used from
> > > no_sanitize functions do not generate instrumentation. On GCC <= 7 this
> > > fails to build entirely, therefore we make the minimum version GCC 8.
> > >
> > > For KCSAN this is a non-functional change, however, we should add it in
> > > case this variable changes in future.
> > >
> > > Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
> > > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > > Signed-off-by: Marco Elver <elver@google.com>
> >
> > Is this a problem only for x86?  If so, that's quite a jump in minimal
> > compiler versions for a feature that I don't think is currently
> > problematic for other architectures?  (Based on
> > https://lore.kernel.org/lkml/20200529171104.GD706518@hirez.programming.kicks-ass.net/
> > )
>
> Currently x86 only, but I know other arch maintainers are planning to
> have a hard look at their code based on our findings.

I've already spotted a bunch of 'noinstr' outside arch/x86 e.g. in
kernel/{locking,rcu}, and a bunch of these functions use atomic_*, all
of which are __always_inline. The noinstr uses outside arch/x86 would
break builds on all architecture with GCC <= 7 when using sanitizers.
At least that's what led me to conclude we need this for all
architectures.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNP3kAZt3kXuABVqJLAJAW0u9-%3Dkzr-QKDLmO6V_S7qXvQ%40mail.gmail.com.
