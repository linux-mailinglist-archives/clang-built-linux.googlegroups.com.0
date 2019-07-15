Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBAULWHUQKGQEEKHCPFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA946862F
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 11:21:07 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id r4sf8126226vkr.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 02:21:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563182466; cv=pass;
        d=google.com; s=arc-20160816;
        b=EwkudrBjnUcYYAM1VTkxt8xRceYrdm5UsnnJ0NJDqlDjXLltp0Fm8l5SHOFsEOS+rS
         9z/r6+HhA74PWoSTr5XOQOY6+1JI+MgsdbOHQ/UKCJp+wk3Ya9d+qi5IjPRS0yIigS2d
         bSOO7nnRBHnDiNvQF6zgPS1CXYUnmpUOoTqTkv6xmVrGxXbimD8ulDIqROzmrxM1zsrZ
         hWLMsdhwgsLtQ+UhQTwI/dIXB6/3SpLE0a7T4jEWLoYi/zFW4EXWzCznZon/WGYARfNW
         GSrMV/gSQQLMqOb83r+X6ovVcJ5ei2qTEceYsaljVEnjWfyecImYFN8Ic6VFKFrpBYaV
         cb1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RsFSqT11XwQ0J+TxLg77uU5nZrg/T0dLjr2bxTzKWL0=;
        b=vH48EoCzersx5xykFUZEno45NYWjlWOf+iA7OyDyUpxUjxaB0juCqsBBLxnxCZMq2K
         9FF2JAed/rgv+qhIaJe279/pSYbmaLakMby8uWPCcNdfyyIV+lLs0ZfeFFiuuooe4cJG
         WZPXifok2yw8iPzbbCIQFVsPGu4tSJigTQ1NwEvVVKLPWYWJpxEnoz/SQK8FTyYSRIEH
         SS9pI/0wJCdawUACxQg3UpXMFSibKDDhoIyhtvoPIFuZsV6NG+9ZJG56hDJWSr6eX2mm
         5euP2hzQNkHIXymYYdCkDSl6PxpHPd6+K7/QZf7df7jt2LNkgBGe31lvPxbU1Okq5YBX
         BYQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RsFSqT11XwQ0J+TxLg77uU5nZrg/T0dLjr2bxTzKWL0=;
        b=kSMZoZ+6mKNYoj5aUQ2rpkoVna+3E/9hqwtha/G9Pk1kjgHzV+FV4BHqtVeDdyyP1o
         5DsOwPjn3gxou7cVJFIEWrUTidoUxeWyKEV4kTHKQlTUfUhlSuzgjb+fiXbjpNCW+NG+
         mO3VDBA66M5m2rdpzByX74KQf+4vGR4LUv4LQThGQ/BaGIZ/aiWPqLjcscqxxwFvWIPD
         /s15NC0Al/8B8JYz6sGka3RXB1wnowHUGwVeIvH4ZuNcrEdq00jUe7srF/sFf9RnI+qh
         4Tbz70ZhMI6xZFOvXjggAG+hDTQtGiKhuxfIybUZINzJVDw+GiElgx1Lv62Obu5rxTFs
         pOtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RsFSqT11XwQ0J+TxLg77uU5nZrg/T0dLjr2bxTzKWL0=;
        b=Dg+gb0cWi/eRPZsuTmOQ/cXEWvrOoot+MfsTKQtW1TDE/hSO+Nx+feZ0hxfwGJicGb
         UNwOIQUub6pxSs8mdlUA+rMAvTUi+JJNufqldn8BlyucaEH3ac1yav/qQOvhv/+HHM46
         wElSJy5XI64naWEjNGIRQX6Q2vhvUz4MzWepHiuwOwJ39K6h3kDyPp+nYD5EdPmawQ7b
         OsOOYbWHr8GihCMZN4QpkuhdHuMZ8AWD26ZaCeqfkT7D9on7wuhE471VJaq4T9g4CjqG
         y3lvSNyHZ31zYQDyIRsH6w5t+0PoTQjI7kEQoKOB0nFPkcrGiBhWbPxiK765ufHUkWqr
         EaoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVcmZjooxucPIZ7cLBKEi0h/RKt5AXV9ezYIEb6ls5VwAQFZR/L
	2tlxGFpOl2vsA8eLwC6kqns=
X-Google-Smtp-Source: APXvYqwdBcv1b75KkQtFGyPcYwYmY+ckJxmG2Njr/Pkx00ixDBxG9Ud+scta9HZuw9Xlqo12lSIPow==
X-Received: by 2002:a67:af09:: with SMTP id v9mr15847355vsl.129.1563182466299;
        Mon, 15 Jul 2019 02:21:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6043:: with SMTP id o3ls1194376ual.1.gmail; Mon, 15 Jul
 2019 02:21:05 -0700 (PDT)
X-Received: by 2002:ab0:6158:: with SMTP id w24mr9469153uan.37.1563182465842;
        Mon, 15 Jul 2019 02:21:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563182465; cv=none;
        d=google.com; s=arc-20160816;
        b=cK+lJet0nDRDW2uMjOLXGMQhts86/CYdTIQKR0sLSLg3CQxETtA64W4sULUzQ/3toD
         fEFuu+n8pOgv7qxcw51Kp/PcK9Plkrqm8xsarJFDenSYuJYqFWznoQpXjEUucLp7/oxX
         g0X4sdnM5PsaEvSWyrqsByGBms9PeKDYq55lRkVGucAcAltb37MMmPVPhjosDuUCGndH
         dOmDCWMlxhkxcbY2dwBXe20kOQ17n6UP1KcaPZ7x28CQBwYFYDQSbCN3JqIXNFZa2+0Z
         84/28ijhqS5BpbwOCXH2rEVlidYa3rgU40KeQEicawBSvXqLvE/jcKVzU2LEfpfc1h9q
         bKuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=VxKKZuQtCI1ZkIIYkRW9QnKWr4iswbDh01TB7Vwu9Eo=;
        b=EY4zepQPUZvnpdwCQeFiO1vKt89NZqKvx/6B2vZL0VA7bCrP87QJi0Sri9kyBJfDpu
         r1/m/cV6jap2CLbnRH5yFli7SKzcCtbGeYSj5dhZMHbVL63AgRq3SL224q6AsA4sMzJA
         9zARKI/Qp/1DBR1TmmHKy5bsNPnQEZrDsE0ozopVrvWYQV/KkH7eQ2RAVdrPWz3N2foD
         oYvMqiBeWoLiJEvWlqxKdeaB/RZ7FtTpshiTxAOjvt817Dr87/iSvNv1ew1YAJI5r4wH
         +8wZefopgDecjBO1iglLW+r8WwSST8tZOdiCoVaTIZQHkL5OE5QCvDpiAyFbfFXXe6Hd
         nrIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id k125si912517vkh.4.2019.07.15.02.21.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 02:21:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id w17so14830343qto.10
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jul 2019 02:21:05 -0700 (PDT)
X-Received: by 2002:ac8:5311:: with SMTP id t17mr16507653qtn.304.1563182465343;
 Mon, 15 Jul 2019 02:21:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190708135725.844960-1-arnd@arndb.de> <20190708145430.GC43693@archlinux-epyc>
 <CAK8P3a0ZVqEYCxoCOcAgJL7oV+su0=eZu_XR6X+9vcXzGDwVSQ@mail.gmail.com>
In-Reply-To: <CAK8P3a0ZVqEYCxoCOcAgJL7oV+su0=eZu_XR6X+9vcXzGDwVSQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 15 Jul 2019 11:20:48 +0200
Message-ID: <CAK8P3a0FyzThq_8dO27OxP7nXVORGf5jQQnfUnnG0u272ChRtQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/powerplay: work around enum conversion warnings
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Rex Zhu <rex.zhu@amd.com>, Evan Quan <evan.quan@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Likun Gao <Likun.Gao@amd.com>, Huang Rui <ray.huang@amd.com>, Gui Chengming <Jack.Gui@amd.com>, 
	Kevin Wang <kevin1.wang@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as
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

On Mon, Jul 8, 2019 at 6:05 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Mon, Jul 8, 2019 at 4:54 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:

> > On Mon, Jul 08, 2019 at 03:57:06PM +0200, Arnd Bergmann wrote:
> > > A couple of calls to smu_get_current_clk_freq() and smu_force_clk_levels()
> > > pass constants of the wrong type, leading to warnings with clang-8:
> > >
> > > drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:995:39: error: implicit conversion from enumeration type 'PPCLK_e' to different enumeration type 'enum smu_clk_type' [-Werror,-Wenum-conversion]
> > >                 ret = smu_get_current_clk_freq(smu, PPCLK_SOCCLK, &now);
> > >                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> > > drivers/gpu/drm/amd/amdgpu/../powerplay/inc/amdgpu_smu.h:775:82: note: expanded from macro 'smu_get_current_clk_freq'
> > >         ((smu)->funcs->get_current_clk_freq? (smu)->funcs->get_current_clk_freq((smu), (clk_id), (value)) : 0)
> > >
> > > I could not figure out what the purpose is of mixing the types
> > > like this and if it is written like this intentionally.
> > > Assuming this is all correct, adding an explict case is an
> > > easy way to shut up the warnings.
> > >
> > > Fixes: bc0fcffd36ba ("drm/amd/powerplay: Unify smu handle task function (v2)")
> > > Fixes: 096761014227 ("drm/amd/powerplay: support sysfs to get socclk, fclk, dcefclk")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > I sent a series last week for all of the clang warnings that were added
> > in this driver recently.
> >
> > https://lore.kernel.org/lkml/20190704055217.45860-1-natechancellor@gmail.com/
> >
> > I think it is safe to use the CLK enums from the expected type (from
> > what I could see from going down the code flow rabbit hole).
> >
> > https://lore.kernel.org/lkml/20190704055217.45860-4-natechancellor@gmail.com/
> >
> > https://lore.kernel.org/lkml/20190704055217.45860-7-natechancellor@gmail.com/
>
> I tried that at first but concluded that it could not work because the constants
> are different. Either it's currently broken and you patches fix the runtime
> behavior, or it's currently correct and your patches break it.

d36893362d22 ("drm/amd/powerplay: fix smu clock type change miss error")
was now applied and contains the same change as your first patch.

I assume the other one is still needed though.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0FyzThq_8dO27OxP7nXVORGf5jQQnfUnnG0u272ChRtQ%40mail.gmail.com.
