Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBQMKTL3AKGQEZ75K7LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 440DD1DCE54
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:42:26 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id j130sf3298635oih.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:42:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590068545; cv=pass;
        d=google.com; s=arc-20160816;
        b=qvTvfnA8fV//cxIpyOv5TwupEgCValSa/NHNpRFP+hEe1M2FcWXYX9SrZXExQ/BRQP
         CT+iIOengQF4XMu5Gj1UExBmrUC351gyxFkoBYiDSN/ddK7hsgSnkRO/BlMjgCOTlNDc
         9TH+BDZ+ObEPkwsoUlGnLEdT/vu8ghnk48fYF36UuexDWUV7DrgVY7vNtLR8Cm1Cc1KU
         F6QlvM4/ZO3uZaVuqsjMprNR/bE4avy4mvYuS2GJAFvY3xbuLzpozlT/ElgbwCriaPvs
         sU0146yHeCB6eP4Hl1h4J2F5s9MnJ/u6bl8JWpu+3ApAyVkE8Twz98iTa9PL6+3ujMaT
         DfSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YRWHjOeU0ldq0cSiI8WxxgaC2k8tjkRBEIgaQrSDrew=;
        b=CNxrmSCSBIA9p9lDYamv4YdYcZYXw10cPeC7IB2Sm0me4AbDDDbPZSQU5ltnc+rxZ9
         OQnekete0pv12zbPZMr2a86RFKJE5t3TIrcjKbLonHAzp00QbcGi5G9MvSId721xlRHK
         5yDuZoZxbDjGMoYJfbycacTeDhe+h/2QQOzRm3Uf+ZZnfqZouJd1H1kZc6EpfODCD4sb
         D15mEtAce3OirYoFBNt1IQen2cVV4j++vAk+y8X/WtFDuVOoWlB8GOhafY2LCdaxcCOp
         OnzgTSG9+lf0RjcZ7VVIhjd53I1wBU3qYlfLBQjDuDgXDHYswFuiILmyF717WHnc9xOc
         H6fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RmJEJ+YJ;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YRWHjOeU0ldq0cSiI8WxxgaC2k8tjkRBEIgaQrSDrew=;
        b=k57dx7c5S/1bnIsLJUDz/phhdEEwK8JOvy1TtyRzB7HvI+QQY5d/4sJZDluNfap3wq
         MiqYYxcb0RFZzWNKAePOPU3Egwh8ebz3Nac2xOKNO1uEXSvHLuvf2jHcKmJO/SpDoKw9
         DOu4vYLmXtVTO1JpoLelwiwyokBetQkHN9Jp3oHwVMRWuxgB53HryawrB9otHAdzWxNi
         fxSjhvCC65Ll5/gGHwbyDbEWPseA3CYlH91urzFoSHYfe10etH8S/BGw9LNw+Ddf6C4d
         kc8TUQb+izB1FLHfokQ5clh0GzAkdaqT5FCZdWpXIaGQMG3HeICZ75gcKFK5AYJqkRsE
         SdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YRWHjOeU0ldq0cSiI8WxxgaC2k8tjkRBEIgaQrSDrew=;
        b=nGnUkiZiqmy81H97iEgUz/2kZyItlo4qPvj55WQk6SAa20tG44Ze+P/RKDMz1b9MX8
         OFJtLHpzQv7OpTY8O7haT9sCSdhJqjlSlIMKmHN22Org76VZsccS/A+0dKnmLDClvx9H
         IXSDh3k8Aa+WXrWnIN3X3d5auSblv+2O6Xw/wc2xNL/H9mIDeRzRO7Rt967F4ZXQLP6b
         OlR34KWbDztR0a/bpM4/uhcpnaeKS2PTloS91NEIzjj7egqgSr7ekaGz8WCEJhkr1M3n
         KfbJWoDc0/Pum+6NNkz9ZIIeTJWtjvaaXqlneOe6YsxZi0PybYO7EgsmCdEL1UmHqv0R
         LDDw==
X-Gm-Message-State: AOAM533/KCMPxNQPoJXToZluCn2veA6fqH0KNPL/pT3fohZ1e9gMsO+U
	Ky2qyFTCSgpkFOZsl6IbT7c=
X-Google-Smtp-Source: ABdhPJy5UXmSfNEPNckEMPKviuPw9GYlRzOXt7soL39/JuJeLM9TDGMc4EmAO1qcI4d9BxydttVQxA==
X-Received: by 2002:a9d:10b:: with SMTP id 11mr6581877otu.95.1590068545216;
        Thu, 21 May 2020 06:42:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:61a:: with SMTP id w26ls461346oti.8.gmail; Thu, 21
 May 2020 06:42:24 -0700 (PDT)
X-Received: by 2002:a05:6830:445:: with SMTP id d5mr6910465otc.72.1590068544909;
        Thu, 21 May 2020 06:42:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590068544; cv=none;
        d=google.com; s=arc-20160816;
        b=V2McvdMFuZnkYHZvCc6Rd8vVCqPQx6uQBMJH5lfmFRZEcH+Zsdo6l4NHCBsprdsxOT
         XYaUPhFfnHieOZ8vJQ/FrxdE8szxBsCq22P6KLTFrl/dmTUtodZJxaOYwsAL+e/G1I4p
         o9RBtHQ9URpUHYEPsL/DOfcnfriInaZoHUodjIGW7FW8YUvZOyhtbvKRo3yO7E413Ygr
         MjzpRA4nms3f8bBc1eCHfX6OU1eVD8EeAIlJCiDD2iKhhsOYHLWAl5j2VTtws5lMMysc
         rItKvSwVmT60nIjZLbWW/FwjPofRyVJ2pqEHkR/u1pO/cF9uHRw3o7pgV54Kzuq6SilX
         ndJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YoQqHLS3kIB+JIi63PFAQDhXvHkeSj8OSM1KtqfRClU=;
        b=s2Kkk+nwiQxgmdNq2mARmMBK1l/TX6EAQY5UiOuS4P5EsvqYDRRd7tOwIHqiVww8Bk
         PI4fctO3LwuaR2Uc0oYb7f/xndUqv6Ir4hpLhTKi4QjN705/bN9sa/kC1zAPqIxDCqE4
         4YLKjsG2i/5oau7yNugS5ZvbzRGOl6iLeki/QCX4TF0h+z1bq7upFt4wJOqX+uBDkfdA
         z3hfq6LH49Rp6VwTTgXTrI0xuS4gkohGn95ARXQkYWlsGShs+kgxQbhYdEbl6VqXy+ss
         dgGTTwmY03XPZ3Sf2g1lwix167rw0tfR2ba6enPczhDiFNw27XOJrQxV8cjVJUxtgJXt
         ARTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RmJEJ+YJ;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q5si692370oic.5.2020.05.21.06.42.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 06:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id d26so5506354otc.7
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 06:42:24 -0700 (PDT)
X-Received: by 2002:a9d:27a3:: with SMTP id c32mr7617241otb.233.1590068544404;
 Thu, 21 May 2020 06:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200521110854.114437-1-elver@google.com> <20200521133626.GD6608@willie-the-truck>
In-Reply-To: <20200521133626.GD6608@willie-the-truck>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 15:42:12 +0200
Message-ID: <CANpmjNMf7JRG4P1Ab2qsCy4Yw6vw2WC7yCgqUSBBOsBQdc_5bQ@mail.gmail.com>
Subject: Re: [PATCH -tip v2 00/11] Fix KCSAN for new ONCE (require Clang 11)
To: Will Deacon <will@kernel.org>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RmJEJ+YJ;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as
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

On Thu, 21 May 2020 at 15:36, Will Deacon <will@kernel.org> wrote:
>
> On Thu, May 21, 2020 at 01:08:43PM +0200, Marco Elver wrote:
> > This patch series is the conclusion to [1], where we determined that due
> > to various interactions with no_sanitize attributes and the new
> > {READ,WRITE}_ONCE(), KCSAN will require Clang 11 or later. Other
> > sanitizers are largely untouched, and only KCSAN now has a hard
> > dependency on Clang 11. To test, a recent Clang development version will
> > suffice [2]. While a little inconvenient for now, it is hoped that in
> > future we may be able to fix GCC and re-enable GCC support.
> >
> > The patch "kcsan: Restrict supported compilers" contains a detailed list
> > of requirements that led to this decision.
> >
> > Most of the patches are related to KCSAN, however, the first patch also
> > includes an UBSAN related fix and is a dependency for the remaining
> > ones. The last 2 patches clean up the attributes by moving them to the
> > right place, and fix KASAN's way of defining __no_kasan_or_inline,
> > making it consistent with KCSAN.
> >
> > The series has been tested by running kcsan-test several times and
> > completed successfully.
>
> I've left a few minor comments, but the only one that probably needs a bit
> of thought is using data_race() with const non-scalar expressions, since I
> think that's now prohibited by these changes. We don't have too many
> data_race() users yet, so probably not a big deal, but worth bearing in
> mind.

If you don't mind, I'll do a v3 with that fixed.

> Other than that,
>
> Acked-by: Will Deacon <will@kernel.org>

Thank you!

-- Marco

> Thanks!
>
> Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMf7JRG4P1Ab2qsCy4Yw6vw2WC7yCgqUSBBOsBQdc_5bQ%40mail.gmail.com.
