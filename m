Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBTHJYH3QKGQEP3FYUKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 9333C2032DF
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 11:07:26 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id d14sf12858509pjw.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 02:07:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592816845; cv=pass;
        d=google.com; s=arc-20160816;
        b=OAVugxK3EGrBooHdnX9YhjKOvcb++6qkLCV5rcb0Ob26U3Ylz5H+7/b1pa3F9zRuS3
         fIa3QJotv+J4pW5IctdEKUkcOeAl4R/mUpScrPf0mfzdhFnw8NpJfAEX95NH4wSkf18t
         EZPolQRoGeyetAMl+mzmi0LhJL0y///qkWUw6OAFrYkc8ynCnbd9jQUSM8LK7tagv/eO
         YisurKpuIWVLE0ylYhWC8sW6n9YMR4OzogIltgZInaXM69YEkWzgT26mIHo9xd5cYZPg
         Zz2xN2Io+0oBNOBoepaBQYLFzz+0eUkjrXpiZoxtVlpuRbsTdj3OHTEOZnnuc+aP84nz
         k5jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=63xSFXY3DbiHUeqq1SGksHvxMxu2oO4MbEz6QPynIrY=;
        b=szO3UTaeKrcz94t/DnUmf1JYxi12xofXMKoDdPKbL26skYb4/0lnlGOx2xopp/lD/p
         VIGwCdBGzMbUod1+mX6RWYrAFjjOiqpD3x5S02XbNIA889fiAO+0XpR3fFBVceHzvZva
         PzEnubl4daJ7PxGzfHI+L1zAhaYAhV8FfxTw0bP+HH9UVcCXzDXfbvHJEydYqnaYLv1U
         wuErHoFud2vEA4bxg0iqkcTcuJgi9NajMc4tx7LZSU9fcC0UOjfYxcL1hR+b7+o8/xUF
         uWuJXxtJzXYMD+Zk9YWYhBhemR0BKaeTrZaSaxdw4znjn+fen7W0JX2y0vz4HxhRj2Fr
         6Saw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=byUv3cY+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=63xSFXY3DbiHUeqq1SGksHvxMxu2oO4MbEz6QPynIrY=;
        b=WbyoQfA8a4wni6O4DP2MKTtyV/i9+aBidGFwVi/Z4f7b+zZR3g74Ge3s2f1izf15RO
         ytJR4q/fDFcIDv6+nPuB0+Jnrf1Nt6fA3RbVfmfiBhsegYcIQ231yL93B5kUVqOqZ4J1
         UhQt+068lpn0wplgRYmTb6GVHgh80DM/UtJV8sdkBBbQuCz14dhZYqKuGomBCZu8JIYu
         beFjc6yZb/k0lAzVFD/QyPI7jwu186NnvSYHLSdwRkOyJeXAxjkAVTjKnfBS8YDrrRgC
         Ds9vSaLBRnK3EgMj8Ols7BNmDytQP6GAoLM0N/PDMWn8sEm51HdrFakOej/Wc2JunKX2
         20IQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=63xSFXY3DbiHUeqq1SGksHvxMxu2oO4MbEz6QPynIrY=;
        b=Q2d06hFIGGr4PCG6gVPvr50ppOYuBeAJD03Q3jNO2erE49sEGn73C+8qxadYJ+jsXB
         pqskG6zbheQtTdQ0PkdPV99aFnhdMQ5sC+jDTqj9dArkQIutJWpiwXAk+/uNylpM+EMR
         Iu42D0+PH43uxS2EjZyM/4LIGEr5175hI3RSEV4ElHf8jitCh5MgPaj0NEtLbEE4oA6I
         1wf2hcdam1xLKMlWhjpyd/pvL4xIs0euus+RFRVensmdJW6hkJXXZ3n2yeNAoJFpTdI0
         wTBGne4P4Jp/5PZk2wB0o8FR44RGybCkUkdKEwJo6nDtXLnhvCpq4K0ry4hdy8wjvNCT
         jK3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=63xSFXY3DbiHUeqq1SGksHvxMxu2oO4MbEz6QPynIrY=;
        b=Q8T1KYO/1jx9hjz09cT/ViHb3F904wAmPrWsE1uM2irG7UgjXkAxPMDAejpSUzRyOq
         OyaP7fPM0iHDp5JXnvBdUBhUyyrc1uGQG9gN61CgZ5xQIoAAEB5mg1yKFGyiKZYV5zI8
         yINOr2aNASrn+6Xf8RwuAomNhfciwUxsFHyf+Z8/yc1kdA3iWdiBO52WXUhBwf/z7A/t
         Y73zkEF20D1QqGrvh6EjNEBnpSjtsvq9VvH9Yltf1oPYXCOGzyN2F2VuAmsj0ZICUrke
         CDRk3hSjJmrDSmkpv2/toRjCmKbjFjWrOhDNyHIhoJ78YH4P4ugpDcdQXAoeQiCYsO6q
         uDhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jFnOokQVUlouYGhhlOJzSnGuQzf4WfXrz9DwO07JF7AAvTTsc
	6y+fl1sI46KXJJomQdO8rs0=
X-Google-Smtp-Source: ABdhPJxMohDF4JZiJExPJR1lOKDlwtzn7TAWiKYOd6YyoaAkwXBNsp54U7Gr2kEHt/ca3+bGG26F3Q==
X-Received: by 2002:a05:6a00:15c8:: with SMTP id o8mr18653633pfu.286.1592816845001;
        Mon, 22 Jun 2020 02:07:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls7048728pjb.2.canary-gmail;
 Mon, 22 Jun 2020 02:07:24 -0700 (PDT)
X-Received: by 2002:a17:902:8346:: with SMTP id z6mr19122348pln.27.1592816844514;
        Mon, 22 Jun 2020 02:07:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592816844; cv=none;
        d=google.com; s=arc-20160816;
        b=qAMec8Ah5/yjh5tHDF9DrNwdf5TnA75zRr36HjoThs/HbCtemAWk8upqPlWvTkAAS8
         fPwiiMuy48XqDLeN6zQMhMT4mA4VEw6Sr185LSrqHT4Ta5HNEpz/K2DjktSSWpfwhMug
         SHNOqPTXJDaK1bf+tq8h3XdyKIUvA6CL7AUQXYQby7j8Qvam0jNait+z4zMkKdM7uTCW
         eTAPGO3evVCJbimyEL+dJ6ae96P0M5a4mFbRREnseIZb128r17mqkslAIhMq3t5bIP+l
         ekfA0U0CpLbRL5DXP8JWaa9jbb02DGFe+J/pL71eLyQMNfpkWio2JrkO1Yha7r09df8G
         WRmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q5S8rsZFww2RQBPdBUO2Ls9OyyX7I+zxItrTRXSG0Dc=;
        b=v3gtW8ZXwyXV54fHoiWNSi5kM0l+U1gsDtllkiciG54OH+PEGnG7kzqSTk93J8QJf7
         0KWqKsjzr1bHWhqTgDD49phJRqnlRjvE8lvLscT5d7MH3i4PFUsGJgDIgeYPdW0+yqk8
         mzDA4UxRTRmPHuCzt5pngs23j/gQRNiTFbuuQz1CRLydiHvhq7r6jAKPxFKHuus7wyC5
         2ZjewD2Ah/qsHEgG1Jc8XXwcY86y2RJrftmcOQYsyj7U51x3TZ5m5l/CffWaz6D4QDYN
         Sc/pLhcfuYOGAggsnCrkEvTvyxrAHWFdE6GNBteapfGudW6N18fSmHQyY07y6U72h2Fu
         RCUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=byUv3cY+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id l9si828956pjw.2.2020.06.22.02.07.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 02:07:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id m81so18666832ioa.1
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 02:07:24 -0700 (PDT)
X-Received: by 2002:a6b:780d:: with SMTP id j13mr18940211iom.66.1592816843974;
 Mon, 22 Jun 2020 02:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200620033007.1444705-1-keescook@chromium.org>
 <CA+icZUWpHRR7ukyepiUH1dR3r4GMi-s2crfwR5vTszdt1SUTQw@mail.gmail.com> <202006200854.B2D8F21@keescook>
In-Reply-To: <202006200854.B2D8F21@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 22 Jun 2020 11:07:14 +0200
Message-ID: <CA+icZUV-gBgUnrm6pF2MHWC2SnK_ZBatAa9VrEJ2VbdARi1YBw@mail.gmail.com>
Subject: Re: [PATCH v2 00/16] Remove uninitialized_var() macro
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, 
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, netdev@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-mm@kvack.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=byUv3cY+;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jun 20, 2020 at 5:57 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Sat, Jun 20, 2020 at 09:03:34AM +0200, Sedat Dilek wrote:
> > On Sat, Jun 20, 2020 at 5:30 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > v2:
> > > - more special-cased fixes
> > > - add reviews
> > > v1: https://lore.kernel.org/lkml/20200603233203.1695403-1-keescook@chromium.org
> > >
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > >
> > > As recommended[2] by[3] Linus[4], remove the macro.
> > >
> > > Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
> > > a single treewide commit in this series. A few others needed to actually
> > > get cleaned up, and I broke those out into individual patches.
> > >
> > > The tree is:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/macro
> > >
> > > -Kees
> > >
> >
> > Hi Kees,
> >
> > thanks for doing a v2 of your patchset.
> >
> > As I saw Jason Yan providing some "uninitialized_var() macro" patches
> > to the MLs I pointen him to your tree "v1".
>
> Thanks!
>
> > BTW, I have tested your "v1" against Linux v5.7 (see [1]) - just
> > yesterday with Linux v5.7.5-rc1.
> >
> > Is it possible to have a v2 of this patchset on top od Linux v5.7 - if
> > you do not mind.
>
> Since it's only going to be for post-v5.8, I'm fine skipping the v5.7
> testing. Mainly I'm looking at v5.8 and linux-next.
>
> Thanks for looking at it!
>

Thanks for the feedback.

"I knew you'd say that."
( Judge Dredd )

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV-gBgUnrm6pF2MHWC2SnK_ZBatAa9VrEJ2VbdARi1YBw%40mail.gmail.com.
