Return-Path: <clang-built-linux+bncBD66FMGZA4IKR44UQYDBUBFFDZBS2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3AD3A5125
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 00:48:09 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id s3-20020ac246430000b02902f4a79c5c14sf3267536lfo.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 15:48:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623538089; cv=pass;
        d=google.com; s=arc-20160816;
        b=qP259SCnCDQpDg7e/NF7dKlVRaIw6uqJcuvg6yMrGNuYQDaNMTb20uesnUzrJul2hN
         eHK+V0aBzcaBetqVvDB7fqbT7cCq0lrMWC8YGwE5kKCAHt8CWmZ7EuIamL3hWpDbnYPz
         I0IG0eJHYUhwbrQdikXvyRc8CuWDcpAbcbqA0FbbOWrzmLAVnGqPj2aCuTByT9rqx00C
         +mAkyPqvglr9GQrDmG22U0f53DmEHhZMnmfWsd0tLkJCHUhgnft06aMiHeITEqUVpxoT
         FbkWptr1ZlfvdO5fEnGDoNTHbDb0ErdS9VIZj/KLtCTw2Kei0GVM5bZU0AnrvuKP88+m
         tM4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MY8s8ZKd6A4vozvFXZgvpWojogR6yJiJzrGZQd2TfYk=;
        b=bTNKcoF5ae4/jg6WsAixJJvyjKrr9bQ3dh6c3y+u63N4lZmQ/uuUXUw531Kby6EFyj
         rZZSn8c6fM0t/Kx+/eLfgBVmJBU9IQqpkvBzuMRhcD6BYuj+p1hrO1ijQyY86QBWso/P
         tjTRAkPOeVeeuQkAxXx07xLvtGlesP7nwgovXaBfWq/C7B7OW7vd2Z+lGvXabEtGSOZK
         wBkeugqpHUnCPfj2bqcYa4Npv2NHOtRkkrnJuRargDvGZY5pVNxIzHenFojSqlzxXnC2
         ZMC/7s5VfkCR6XLfZcJ3T2N6/ouOiE+lsvYcBMCDABplEVqrMWlwNZ5uV05vZrLG/foA
         emwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lC+cdrow;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MY8s8ZKd6A4vozvFXZgvpWojogR6yJiJzrGZQd2TfYk=;
        b=etSG2SGc8L19DznuCK9F+lW0ZSYFqn851EjqhiRhTm6UXzXPP6ApqeriusH2dGDtvU
         GoPyIipTfUhRbCb2HXG11xeW6Dddlp56fMS8E31kvwhnzIveLJKKIzHsL07YTM2VKXFs
         P7xddrrEz6OPz7iR1rKsbz8dOMpQTpguFfn93XRBqkhqy6l6qRFm6VuRv5XbNWaQd12b
         8dALFguqP7FFOYNGdags1Rt2p0D0PaYz84NgUPgy4qUmSktjbO3V3t5l/AF1mDraGxl4
         Q/kkMDMC5fJcke3zcXJpUX6zU9Gyr/OyPMP+RcdPfs4JiGFjlK0C2Kpjq/ZpDHBDLVpz
         Damw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MY8s8ZKd6A4vozvFXZgvpWojogR6yJiJzrGZQd2TfYk=;
        b=mxjnW+V9PC3olQDOppkFbSlfBOehWKIr0uJY8X5mFc1Mlc0lBVzS1QatuLNyfnb0hp
         fPcf5Q0BmYBTATy1YoxC52RX+N3f91lmDoyNj/MfqVQede8ibF/5LdJXdhayBtR/IDT6
         zvUXKuzB5mlfPyw2akTJc6P/V4be8RM5ZMXm5xw/WxhdEJwmLclwUtic5oMYkOyI2JwE
         4TY2FC/Uns31jyzuW6cntrea/1v9aMUkAaBLzyRZzVYe6QQtqTa567q2R9gaNU7fcpNk
         Enl7skFmxXEKqV7i/lF4+c9kns6xuspE060FOKE8YaA3802YOT7owDS4o/SbOyxe2h1/
         FEyQ==
X-Gm-Message-State: AOAM531kJxMjCiJeKjqNwcGqQFPLIKC9WMZ/G8Rs2p3MNxEsajnO4pW6
	xmXM5xirWRgKhkyq6pQfxu8=
X-Google-Smtp-Source: ABdhPJxZvkufz0B7uO1Sm8ChXLjrKgrHGi8kpf94uYqU3eRY7qmFUi+mtXOv52LYqEZhtc/AUaDH9g==
X-Received: by 2002:a2e:a7ca:: with SMTP id x10mr7998695ljp.218.1623538089066;
        Sat, 12 Jun 2021 15:48:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls182985lfv.2.gmail; Sat, 12
 Jun 2021 15:48:08 -0700 (PDT)
X-Received: by 2002:a19:dc5e:: with SMTP id f30mr7176963lfj.318.1623538088182;
        Sat, 12 Jun 2021 15:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623538088; cv=none;
        d=google.com; s=arc-20160816;
        b=K53zUTaimMTXZu1cUKP2Vvonqk/su7t8/r+athwhZkF0msPbHu0Ms0NJoE5+qaQ/rN
         as5lE9xSaEdVVN7idZnTdSJk9BTrbn/EiVwYrA+vcBPDaEvgXh8fcYPTbF9Jir5vBAe8
         hYejapSvTL7V0ENYaKt7ubH0U4XB1tVzIIoEhAh5AAL9BUtd0tWlgnRIbiZXlJsKmsYe
         WTnt4DmGnjN21N6nuZ03MEVwxizVFdGd2Q7z7/bN5ovSnhun13ZhPWn9tvkiEUGA87vz
         sRGFjXoRJU/DlSrSiqU83vs/LiwGMYBb0oIwg9rYAYaw3AepF+qhCIPhzPLMXf1QHilC
         MW2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nGHIR4/0sog9+QR1vgYyGt5rSfZQ7hXnNFmBCZsNQSk=;
        b=pBTRGiKXh9EED0X4lsSAmNixPg99AmkdgEpJghYzFfCGLTHSIA2vZLVH4w6Hn6vU9b
         WETPaItYOdxpyN5YjY0DmCc4c4PgyuhPcURbPzX2dDoScqa8cakqDdp7PJI5slAYHG1r
         7kHVMa+FjwHWFKs31Crfq4Nf6IAEzycdq6l4b3cdadKHIxJ3zQQKGUXr+EC8854nPUUz
         oIMPPDMwpAiegZUKd+ds6IC7lON4YU5PHeeeQRfA92W2CCQrTa2E1KmCFviAyJ+gKgtv
         1uzLNh+Eb5mWYyWxNzdRiEROi0DKIkeZfFBpkPafz2UGtcbdc/vFZdxoMcP8BhRcYlYT
         Df3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lC+cdrow;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id r78si516603lff.6.2021.06.12.15.48.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 15:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id og14so10052172ejc.5
        for <clang-built-linux@googlegroups.com>; Sat, 12 Jun 2021 15:48:08 -0700 (PDT)
X-Received: by 2002:a17:906:7052:: with SMTP id r18mr9007489ejj.449.1623538087519;
 Sat, 12 Jun 2021 15:48:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net> <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
In-Reply-To: <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 12 Jun 2021 15:47:56 -0700
Message-ID: <CAGG=3QUFRM85bpyjdokO93=Nem_w7-784-_qihP1P_CJMOsdqg@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lC+cdrow;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62d as
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

On Sat, Jun 12, 2021 at 1:56 PM Bill Wendling <morbo@google.com> wrote:
> On Sat, Jun 12, 2021 at 1:25 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > On Sat, Jun 12, 2021 at 12:10:03PM -0700, Bill Wendling wrote:
> > Yes it is, but is that sufficient in this case? It very much isn't for
> > KASAN, UBSAN, and a whole host of other instrumentation crud. They all
> > needed their own 'bugger-off' attributes.
> >
> Now, for the "nointr" issue. I'll see if we need an additional change for that.
>
The GCOV implementation disables profiling in those directories where
instrumentation would fail. We do the same. Both clang and gcc seem to
treat the no_instrument_function attribute similarly.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUFRM85bpyjdokO93%3DNem_w7-784-_qihP1P_CJMOsdqg%40mail.gmail.com.
