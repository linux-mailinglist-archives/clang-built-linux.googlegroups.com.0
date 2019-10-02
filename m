Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3XS2LWAKGQE3WT56DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4663EC8BFB
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 16:51:28 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id f80sf11792890oig.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 07:51:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570027886; cv=pass;
        d=google.com; s=arc-20160816;
        b=iMJ4m7rAK3SPM7sx/D1X/SicYxa81XolFbYS5LqVqnd+WFgVEt0gfq30t0xsoFSH2U
         p2JKOdbyTE6NizfHNQPzGbvMCBQ3dP4Fh4XtSb1c+99lL2ydzhsSF+4Zs9fAcajNDFsS
         eKELhrX36h/KoDvRlcAtIOSqJmu8RB54y/tw+JKStGm7oYj/HOMTMXzvMqrWgqZwe6D2
         BARunq/QJApan4TyZfFVCP2f7kNhVxubErLrGlmETQgxa+lK2qySwhFkL+oqz5mUf2aW
         /CxJZIJAjfjnrsmfEfEcZAsyKp/xSYKcFu+4B9rSLljLsqggTpbf478HXEbA3H0oKlDT
         0JDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=HHgwm8Ld5v/SBgu6WiB8mi+oo0mM6co5TYI/EzHMBOA=;
        b=w+WOQ0e8PMTJZutma5gRKgZpUUFIdZ4ESGo8Q7jeG1yYVhMZiOmvt8SqV+CC8+t5iz
         Tb/lP9xJQzVmyGTG1zWlkl9G0NcSXK7Js24K54EFOXxoeglLyEKcDONpdw0TYI/5mOcm
         fHgCy1H77Lz8JGlraX6HuYmh40XB0OZQ+nC0B9BaGbuJS7Muik27NwowI9nlK0dyrsUB
         ut6XbXSHCSJkrmgK+SXr6Sm3fieTotN/Ps8qJ77BLDJTITfpRudbTE3PgaM72MLv8ota
         VWl9TGqjES2vjQgsvoXM+lR3zB5bK48/c3v5biKFO4UZANdcogtvIPAndqPZOsLxZzDQ
         O52A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HHgwm8Ld5v/SBgu6WiB8mi+oo0mM6co5TYI/EzHMBOA=;
        b=NbVPvfJpW5d8nPNn0d2YYzEiJG0x8qp2DBhhHrvMVzM+SNAyctlA3rWpcaJjTN4Xqt
         RyUjwEgIcZecJT6M9nPWPzSRT1U5IHAufUbQ9vNXebbKlSjnNOSKOfylY/UWjYcGsAto
         HlyiCYiK4CbjuSy6M89YGCDqGv+Dgw+RIhXZ2gggr3Iz0iTMQRpKtPoo/QOYSxZfb1Sy
         wg85GQu0rMBAzvYLqwOYAJlE5JY8Qp98ThTzfPXISJuTWjZ5+daGmYNVo2VaUsSzb0pe
         jKfd7PISVCCQ/mdXfYC14bWpZiUxRjtLhcuU9AEn+hq4hOfFyM7Z0TeIX4DgQ//jwIPH
         gcHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HHgwm8Ld5v/SBgu6WiB8mi+oo0mM6co5TYI/EzHMBOA=;
        b=tRG19E9Rc2HN9cI0nb8v27wXRXQCEZLQr1WH08kUdzXQLh4k25brbzIGTolz60Lmck
         21XCqUCOLlc0b9cB9IVHevIPELzNlqnAidkK3118UMmGnF5fr1e6iw7jhQ6PolhZgqw8
         UaBzbLLQriZvQN9nF5Fwrm+ZQsNS7pc9q8tgfkaFUx54wVsrkHoStyUEivm0FJO/xrLx
         lfXyqsHl0dzkQJo1dwmM4MaPCI2wsKPQenqRR+4t12gzEkkC7tfcBYALhve19tEteZWO
         PeowTKCpEybGo/cWU8yj8xICIIXvPXduRGOXEJleVL4JBxTAn1N2G15UHV2HHdb0mPo5
         nn+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwSdUBltFLoPLIZgI5nQdFmklKsnUdQtVHWL1ISZG0KIFsqLkt
	0HX35xLa0ssPFkKJYkhdVCQ=
X-Google-Smtp-Source: APXvYqzcEzQ3Hkve10ll6g+bgOuREv+7nnYiKDz8FSnuDtl2sZpx0Ehl1eTkxrYGTEnnCFFSZRWUKQ==
X-Received: by 2002:a05:6830:1119:: with SMTP id w25mr2899807otq.277.1570027886759;
        Wed, 02 Oct 2019 07:51:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3cc:: with SMTP id o12ls516777oie.0.gmail; Wed, 02
 Oct 2019 07:51:26 -0700 (PDT)
X-Received: by 2002:aca:de07:: with SMTP id v7mr3279666oig.1.1570027886271;
        Wed, 02 Oct 2019 07:51:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570027886; cv=none;
        d=google.com; s=arc-20160816;
        b=hFAEcy+ij/JH0JU3obBmtn7YxNBXWVsLBaMFh1VsPPnJU2bqTXa/Vr+J32VIKORnjK
         w0R4pRJ9YQ/hNL2n4RS/Wp392bEp1yjMM7l9ZD+O1cKwk5Alsk1rz2Q+CtElA7kUgPfr
         idQvYkQpCb1AjZ285iVWmt4ATBaev3lTn2jHUbLMAagU4zwTITfNsNF0DilFaAIBO5q5
         xoVIV8AUItawmU0ndqIRZItE+KTKUxWktqnpOC6yN6hwDvi1ZGoOQXxrGdBSymYQC2tX
         JHukHghs6c74Iv4mez6izJJZ4MPsupjqKF3k2SlklhVf97bu/6k6HPNnvM98nS2xpQt6
         5Ejw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=BFBQJKcoWFEsoedh3fU5Yan3pHcHh9XjwUhZKy85y8A=;
        b=AX0xSt54m9oxOXQwxqMRbNOi68uVyKrXz9d3J8EGUKQIyRCJ/Fj92I0BlJRPNYwoh3
         epyUuAn+UbtceohiBbpML+2iVekYYjQy3Pea7f3ZP2QuxPe7tqTgrj5o5bleXdEYrFoL
         trdaaHV9IKZ3ZuEbf2Ev1rXZiD+mJyIp4AvB5km8JfvvOmkNqQ0a5HNKTrP74KZRdeK3
         qNNtqc2u6PEQ3fcTLxbrSo8lOWqAIe3yLn65tV+BYLbOVGaBd2I5E3dJdvIZitkBl0X+
         oKzRko8WkOvYSdw4P4ufBVRLaTbQxTP1mGgMPi6vzNwivwPd4vCZtuEv3otiSLYMKsub
         OmxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id k184si1215023oih.0.2019.10.02.07.51.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 07:51:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id f7so26692072qtq.7
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 07:51:26 -0700 (PDT)
X-Received: by 2002:ac8:4a01:: with SMTP id x1mr4410955qtq.304.1570027885656;
 Wed, 02 Oct 2019 07:51:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <20191002120136.1777161-5-arnd@arndb.de>
 <CADnq5_PkTwTBbQY9JatZD2_sWjdU5_hK7V2GLfviEvMh_QB12Q@mail.gmail.com>
In-Reply-To: <CADnq5_PkTwTBbQY9JatZD2_sWjdU5_hK7V2GLfviEvMh_QB12Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 2 Oct 2019 16:51:09 +0200
Message-ID: <CAK8P3a0KMT437okhobg=Vzi5LRDgUO7L-x35LczBGXE2jYLg2A@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
To: Alex Deucher <alexdeucher@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Wed, Oct 2, 2019 at 4:17 PM Alex Deucher <alexdeucher@gmail.com> wrote:
>
> I'm getting an error with gcc with this patch:
>   CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.o
> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c: In
> function =E2=80=98calculate_wm_set_for_vlevel=E2=80=99:
> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:964:22:
> error: SSE register return with SSE disabled

I checked again with gcc-8, but do not see that error message.

> > -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -msse=
 -mpreferred-stack-boundary=3D4
> > +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -msse=
 $(cc_stack_align)

Nothing should really change with regards to the -msse flag here, only
the stack alignment flag changed. Maybe there was some other change
in your Makefile that conflicts with my my patch?

       Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a0KMT437okhobg%3DVzi5LRDgUO7L-x35LczBGXE2jYLg2A%40m=
ail.gmail.com.
