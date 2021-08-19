Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYPP7KEAMGQEKSV23MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 332273F213A
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 21:58:27 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id 32-20020a6315600000b029023caa2bfec4sf3926615pgv.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 12:58:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629403105; cv=pass;
        d=google.com; s=arc-20160816;
        b=II2hjzMF6NikdO6aKtd/yjd3uenlSER+KX/GL8Xunc6q1nEeihy1ywNfp0pdlwS+Lq
         kD65FCJ5SeE2iAWZaNDVvmd6Pz/3B1IoL3lPBnqyRQ9ntxok2Du4+5oOXz9hyMt4+CPN
         26iUn/ge0nc3uDvW89BZ6+hiPlzDGMEl8118LxhUV38a3QF+0dN/aZU5/7Dk09DuSCJ9
         lFV8dkEKOX83Bewvi15QMKnrlOb9jU8zJwWnuGCJaMcJiIowuCR+OC/wyBb4o7dAP91W
         oGz6ZQfEvQ98+aZxCppRlcUUR8REwV+VCCrj4cVujNSB3f/t5DU4y/UeauG36xaV5L+t
         aL/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=6/BkMZhbWsk+/blDGAGVjwCUd3kX705LYsV8jcCBTTw=;
        b=CuMplVYzT0rabqc5670KqB4qiRsXCjjExm/sBnUoct7V9Q2Lr7NaMs1wrMq9huBCKq
         /20BvnFyugXaUKM87PQM2oiU1S4r0UxFfCnOnu2JPTbfV1N4rMDYD7EAqp96tz1d+rsD
         52CNjI5pKNJ2qcOTrD7eKA+63E18FP2tHm+LBqhRdQ2/+cME+0Cr0p6FApel30w52mXd
         faoDHEzAqZshujbGm5FiN7LEJglqOH2nc/PgpNZtj+dQG3IBBzFOwiDQ89E6vzoq2vCG
         PMKjo5yRo3a0eaofaGg8ZgpkjcmCWkC46/gxdppCgfket0u8bksqfVa1PwDRTa/6CGr8
         l4xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IXP6D8XU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6/BkMZhbWsk+/blDGAGVjwCUd3kX705LYsV8jcCBTTw=;
        b=J/4+u94bkQ/lt0apvySE64D4H/QrrEqzjISxd5u1FcbGR9zOo1HvtKesP/SsugMn9x
         ImIkuFbPfOlHATeg2kxtfGINkeNivAFMOzZrySgFmLmJUxqUgPu8uDP6l8TYjEVfNats
         jHPculIcyKVRPjLRxB78FI+8pJ+gnYSIlqOYE1MQW19uVLOPQML572W82xpM/kti1t2E
         u7LAfoNyzpY03ivPBRX3eXDpbIzK7C7Ol7FUYk93AmrWBbjYOkULWAEQ7xbdKq5+dWF7
         1BhAHlKECvBsBJV4XJF4PD3nxrJuPtZGkzoBtHkzyN+v7ZrhumByda33IzMGGkfGKM7A
         jFGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6/BkMZhbWsk+/blDGAGVjwCUd3kX705LYsV8jcCBTTw=;
        b=m08StIx/WV1LYZrdS8IKH5gqmq1WEdZqHt+UiXu26z3h1UjJWJL0BLxK8G9bMxIh1W
         /Kl505gPO83JUEfCMPcWglQcRulmUdhsSWRYs7WoQlFlnDIUV261dJGB1BJYinsE8ojQ
         ar/i2EeyeERZvBHR0vKwXn8zTcV2ZW737bBUnnjoeLKrtflGxGYTQeOLZxLPvPdKPe/W
         331FK7RI26ITneqqJ6qRbn8741nI2N1sYXaHr3VbAFwVVt/p0HysJd0dsClro7wN4y84
         FcXA/aec3ZO1tY1Gyktn/ypX1xw7JXJfh84MGlc7vv/xf3TmhBcQTGNEpdaCrGHb+6j4
         /Zcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rFc2QG5kRW+9pa/p4IVeup7i0k0P9hrg0LLe3c32EH2zEbcVu
	4k/uUEMse2tkkFDhmL3sbZU=
X-Google-Smtp-Source: ABdhPJzSYfZxHJM/8E2SMfnp8GiQY7AVSEGD5Vbj/KsgyKfwKJkOI0iE7C87I0PE3CxxTJaWr4pDMw==
X-Received: by 2002:a05:6a00:1484:b0:3e2:51da:7a1c with SMTP id v4-20020a056a00148400b003e251da7a1cmr15876247pfu.56.1629403105648;
        Thu, 19 Aug 2021 12:58:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2345:: with SMTP id c5ls3344294plh.8.gmail; Thu, 19
 Aug 2021 12:58:25 -0700 (PDT)
X-Received: by 2002:a17:902:b190:b029:12d:487:dddc with SMTP id s16-20020a170902b190b029012d0487dddcmr13295665plr.24.1629403105013;
        Thu, 19 Aug 2021 12:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629403105; cv=none;
        d=google.com; s=arc-20160816;
        b=NtGlN16cBEwKnPgCbbQVv21IpVkR+LoY0P7IMrPlotpmVVoh/vH+C6IKcrcYv7SuxL
         kMWixM/jUhxbEbMvU7ShYgStjkX8DaOol0HaRGXAkvUUcB23Yo2v23esks7gyfN97XFU
         YxKxtkCzeZLg3Bsd1GvI4u+l6orF8fT4vXtZ3biaxpmu0x3Oe/2zEgx1Yi+MwbV2kgpo
         pO/4tqPPVKed6Zmr9LhOS3OnBDnByR/MfWr1B3w0zeZok4/r+/9PKndcXgM4eu3JeYd6
         T2vhwNK7gQBZH7k6gAaVBuzFdhI5RWgTDdn3r5fJTNzWyeMBhgQWr478NDK7Rm4oO84W
         lGKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=LynX178MCRLTZU5nO2CQfUksz3iyT32ZXzH2mGMWDBA=;
        b=tkRC4EJ39BP/KDFl8yDgrHmYHjIK7GZ+9vyaF51juZruoi7cW9Zoj/dNjf9VFdoYZ4
         3m2tFt6wAle19y2KqHzPnPfqEl/+T+oCpKf/cpOkhl/fG+D2WLVg038IAvBdIQfJWxuq
         QBbrQKcnGsNcqP83Em469tf+hVWcSA8/4zvZzDaoLTxyu9tPvR557JgnxwL/jDJSACmF
         eUUEBIn00GhITheHUodz10XGuTkoGmEiFa+MOvIXIkLTr/+liAyt65ZkjgLTv01qV1NU
         NEewGM22IqyzZTFOlcKLhoL99V9dQmqAoWdLalQu9+UQofl1A4DUYHXPDD158guxwLt+
         /H7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IXP6D8XU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id r14si403403pgv.3.2021.08.19.12.58.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 12:58:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id w8so6915315pgf.5
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 12:58:24 -0700 (PDT)
X-Received: by 2002:aa7:83c6:0:b029:3e0:1f64:6f75 with SMTP id j6-20020aa783c60000b02903e01f646f75mr15962378pfn.69.1629403104650;
        Thu, 19 Aug 2021 12:58:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r16sm3784554pje.10.2021.08.19.12.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 12:58:24 -0700 (PDT)
Date: Thu, 19 Aug 2021 12:58:22 -0700
From: Kees Cook <keescook@chromium.org>
To: "Lazar, Lijo" <lijo.lazar@amd.com>
Cc: linux-kernel@vger.kernel.org,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Hawking Zhang <Hawking.Zhang@amd.com>,
	Feifei Xu <Feifei.Xu@amd.com>, Likun Gao <Likun.Gao@amd.com>,
	Jiawei Gu <Jiawei.Gu@amd.com>, Evan Quan <evan.quan@amd.com>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 18/63] drm/amd/pm: Use struct_group() for memcpy()
 region
Message-ID: <202108191214.6269AFD@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-19-keescook@chromium.org>
 <753ef2d1-0f7e-c930-c095-ed86e1518395@amd.com>
 <202108181619.B603481527@keescook>
 <e56aad3c-a06f-da07-f491-a894a570d78f@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <e56aad3c-a06f-da07-f491-a894a570d78f@amd.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IXP6D8XU;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 19, 2021 at 10:33:43AM +0530, Lazar, Lijo wrote:
> On 8/19/2021 5:29 AM, Kees Cook wrote:
> > On Wed, Aug 18, 2021 at 05:12:28PM +0530, Lazar, Lijo wrote:
> > >=20
> > > On 8/18/2021 11:34 AM, Kees Cook wrote:
> > > > In preparation for FORTIFY_SOURCE performing compile-time and run-t=
ime
> > > > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > > > intentionally writing across neighboring fields.
> > > >=20
> > > > Use struct_group() in structs:
> > > > 	struct atom_smc_dpm_info_v4_5
> > > > 	struct atom_smc_dpm_info_v4_6
> > > > 	struct atom_smc_dpm_info_v4_7
> > > > 	struct atom_smc_dpm_info_v4_10
> > > > 	PPTable_t
> > > > so the grouped members can be referenced together. This will allow
> > > > memcpy() and sizeof() to more easily reason about sizes, improve
> > > > readability, and avoid future warnings about writing beyond the end=
 of
> > > > the first member.
> > > >=20
> > > > "pahole" shows no size nor member offset changes to any structs.
> > > > "objdump -d" shows no object code changes.
> > > >=20
> > > > Cc: "Christian K=C3=B6nig" <christian.koenig@amd.com>
> > > > Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>
> > > > Cc: David Airlie <airlied@linux.ie>
> > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > Cc: Hawking Zhang <Hawking.Zhang@amd.com>
> > > > Cc: Feifei Xu <Feifei.Xu@amd.com>
> > > > Cc: Lijo Lazar <lijo.lazar@amd.com>
> > > > Cc: Likun Gao <Likun.Gao@amd.com>
> > > > Cc: Jiawei Gu <Jiawei.Gu@amd.com>
> > > > Cc: Evan Quan <evan.quan@amd.com>
> > > > Cc: amd-gfx@lists.freedesktop.org
> > > > Cc: dri-devel@lists.freedesktop.org
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > Acked-by: Alex Deucher <alexander.deucher@amd.com>
> > > > Link: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3=
A%2F%2Flore.kernel.org%2Flkml%2FCADnq5_Npb8uYvd%2BR4UHgf-w8-cQj3JoODjviJR_Y=
9w9wqJ71mQ%40mail.gmail.com&amp;data=3D04%7C01%7Clijo.lazar%40amd.com%7C386=
1f20094074bf7328808d962a433f2%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C=
637649279701053991%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2lu=
MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3D386LcfJJGfQfHsXBuK17L=
MqxJ2nFtGoj%2FUjoN2ZtJd0%3D&amp;reserved=3D0
> > > > ---
> > > >    drivers/gpu/drm/amd/include/atomfirmware.h           |  9 ++++++=
++-
> > > >    .../gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h    |  3 ++-
> > > >    drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h  |  3 ++-
> > > >    .../gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h   |  3 ++-
> > >=20
> > > Hi Kees,
> >=20
> > Hi! Thanks for looking into this.
> >=20
> > > The headers which define these structs are firmware/VBIOS interfaces =
and are
> > > picked directly from those components. There are difficulties in grou=
ping
> > > them to structs at the original source as that involves other compone=
nt
> > > changes.
> >=20
> > So, can you help me understand this a bit more? It sounds like these ar=
e
> > generated headers, yes? I'd like to understand your constraints and
> > weight them against various benefits that could be achieved here.
> >=20
> > The groupings I made do appear to be roughly documented already,
> > for example:
> >=20
> >     struct   atom_common_table_header  table_header;
> >       // SECTION: BOARD PARAMETERS
> > +  struct_group(dpm_info,
> >=20
> > Something emitted the "BOARD PARAMETERS" section heading as a comment,
> > so it likely also would know where it ends, yes? The good news here is
> > that for the dpm_info groups, they all end at the end of the existing
> > structs, see:
> > 	struct atom_smc_dpm_info_v4_5
> > 	struct atom_smc_dpm_info_v4_6
> > 	struct atom_smc_dpm_info_v4_7
> > 	struct atom_smc_dpm_info_v4_10
> >=20
> > The matching regions in the PPTable_t structs are similarly marked with=
 a
> > "BOARD PARAMETERS" section heading comment:
> >=20
> > --- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
> > +++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
> > @@ -643,6 +643,7 @@ typedef struct {
> >     // SECTION: BOARD PARAMETERS
> >     // SVI2 Board Parameters
> > +  struct_group(v4_6,
> >     uint16_t     MaxVoltageStepGfx; // In mV(Q2) Max voltage step that =
SMU will request. Multiple steps are taken if voltage change exceeds this v=
alue.
> >     uint16_t     MaxVoltageStepSoc; // In mV(Q2) Max voltage step that =
SMU will request. Multiple steps are taken if voltage change exceeds this v=
alue.
> > @@ -728,10 +729,10 @@ typedef struct {
> >     uint32_t     BoardVoltageCoeffB;    // decode by /1000
> >     uint32_t     BoardReserved[7];
> > +  );
> >     // Padding for MMHUB - do not modify this
> >     uint32_t     MmHubPadding[8]; // SMU internal use
> > -
> >   } PPTable_t;
> >=20
> > Where they end seems known as well (the padding switches from a "Board"
> > to "MmHub" prefix at exactly the matching size).
> >=20
> > So, given that these regions are already known by the export tool, how
> > about just updating the export tool to emit a struct there? I imagine
> > the problem with this would be the identifier churn needed, but that's
> > entirely mechanical.
> >=20
> > However, I'm curious about another aspect of these regions: they are,
> > by definition, the same. Why isn't there a single struct describing
> > them already, given the existing redundancy? For example, look at the
> > member names: maxvoltagestepgfx vs MaxVoltageStepGfx. Why aren't these
> > the same? And then why aren't they described separately?
> >=20
> > Fixing that would cut down on the redundancy here, and in the renaming,
> > you can fix the identifiers as well. It should be straight forward to
> > write a Coccinelle script to do this renaming for you after extracting
> > the structure.
> >=20
> > > The driver_if_* files updates are frequent and it is error prone to m=
anually
> > > group them each time we pick them for any update.
> >=20
> > Why are these structs updated? It looks like they're specifically
> > versioned, and aren't expected to change (i.e. v4.5, v4.6, v4.10, etc).
> >=20
> > > Our usage of memcpy in this way is restricted only to a very few plac=
es.
> >=20
> > True, there's 1 per PPTable_t duplication. With a proper struct, you
> > wouldn't even need a memcpy().
> >=20
> > Instead of the existing:
> >                 memcpy(smc_pptable->I2cControllers, smc_dpm_table_v4_7-=
>I2cControllers,
> >                         sizeof(*smc_dpm_table_v4_7) - sizeof(smc_dpm_ta=
ble_v4_7->table_header));
> >=20
> > or my proposed:
> >                 memcpy(&smc_pptable->v4, &smc_dpm_table_v4_7->dpm_info,
> >                        sizeof(smc_dpm_table_v4_7->dpm_info));
> >=20
> > you could just have:
> > 		smc_pptable->v4 =3D smc_dpm_table_v4_7->dpm_info;
> >=20
> > since they'd be explicitly the same type.
> >=20
> > That looks like a much cleaner solution to this. It greatly improves
> > readability, reduces the redundancy in the headers, and should be a
> > simple mechanical refactoring.
> >=20
> > Oh my, I just noticed append_vbios_pptable() in
> > drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_processpptables.c
> > which does an open-coded assignment of the entire PPTable_t, including
> > padding, and, apparently, the i2c address twice:
> >=20
> >          ppsmc_pptable->Vr2_I2C_address =3D smc_dpm_table.Vr2_I2C_addre=
ss;
> >=20
> >          ppsmc_pptable->Vr2_I2C_address =3D smc_dpm_table.Vr2_I2C_addre=
ss;
> >=20
> > > As another option - is it possible to have a helper function/macro li=
ke
> > > memcpy_fortify() which takes the extra arguments and does the extra c=
ompile
> > > time checks? We will use the helper whenever we have such kind of usa=
ge.
> >=20
> > I'd rather avoid special cases just for this, especially when the code
> > here is already doing a couple things we try to avoid in the rest of
> > the kernel (i.e. open coded redundant struct contents, etc).
> >=20
> > If something mechanically produced append_vbios_pptable() above, I bet
> > we can get rid of the memcpy()s entirely and save a lot of code doing a
> > member-to-member assignment.
> >=20
> > What do you think?
> >=20
>=20
> Hi Kees,
>=20
> Will give a background on why there are multiple headers and why it's
> structured this way. That may help to better understand this arrangement.
>=20
> This code is part of driver for AMD GPUs. These GPUs get to the consumers
> through multiple channels - AMD designs a few boards with those, there ar=
e
> add-in-board partners like ASRock, Sapphire etc. who take these ASICs and
> design their own boards, and others like OEM vendors who have their own
> design for boards in their laptops.
>=20
> As you have noticed, this particular section in the structure carries
> information categorized as 'BOARD PARAMETERS'. Since there are multiple
> vendors designing their own boards, this gives the option to customize th=
e
> parameters based on their board design.
>=20
> There are a few components in AMD GPUs which are interested in these boar=
d
> parameters main ones being - Video BIOS (VBIOS) and power management
> firmware (PMFW). There needs to be a single source where a vendor can inp=
ut
> the information and that is decided as VBIOS. VBIOS carries different dat=
a
> tables which carry other information also (some of which are used by
> driver), so this information is added as a separate data table in VBIOS. =
A
> board vendor can customize the VBIOS build with this information.
>=20
> The data tables (and some other interfaces with driver) carried by VBIOS =
are
> published in this header - drivers/gpu/drm/amd/include/atomfirmware.h

I understand this to mean that this header is shared by other projects?

If that's true, what compilers are processing this header? (i.e. so I
can scope my suggestions to things that all the compilers will be able
to deal with.)

How are edits of this file managed "upstream" from the Linux kernel?

Why does it have strange indentations like this:

  uint8_t  ledpin0;
  uint8_t  ledpin1;
  uint8_t  ledpin2;
  uint8_t  padding8_4;

	uint8_t  pllgfxclkspreadenabled;
	uint8_t  pllgfxclkspreadpercent;
	uint16_t pllgfxclkspreadfreq;

  uint8_t uclkspreadenabled;
  uint8_t uclkspreadpercent;
  uint16_t uclkspreadfreq;


> There are multiple families of AMD GPUs like Navi10, Arcturus, Aldebaran
> etc. and the board specific details change with different families of GPU=
s.
> However, VBIOS team publishes a common header file for these GPUs and any
> difference in data tables (between GPU families) is maintained through a
> versioning scheme. Thus there are different tables like
> atom_smc_dpm_info_v4_5, atom_smc_dpm_info_v4_6 etc. which are relevant fo=
r a
> particular family of GPUs.
>=20
> With newer VBIOS versions and new GPU families, there could be changes in
> the structs defined in atomfirmware.h and we pick the header accordingly.
>=20
> As mentioned earlier, one other user of the board specific information is
> power management firmware (PMFW). PMFW design is isolated from the actual
> source of board information. In addition to board specific information, P=
MFW
> needs some other info as well and driver is the one responsible for passi=
ng
> this info to the firmware. PMFW gives an interface header to driver
> providing the different struct formats which are used in driver<->PMFW
> interactions. Unlike VBIOS, these interface headers are defined per famil=
y
> of ASICs and those are smu11_driver_if_arcturus.h, smu11_driver_if_* etc.
> (in short driver_if_* files). Like VBIOS,  with newer firmware versions,
> there could be changes in the different structs defined in these headers =
and
> we pick them accordingly.

Are these headers also shared between other projects?

What's needed to coordinate making these less redundant? (i.e. replacing
the "BOARD PARAMETERS" portion of PPTable_t with the associated
struct *_dpm_info_v* from atomfirmware.h?)

> Driver acts the intermediary between actual source of board information
> (VBIOS) and PMFW. So what is being done here is driver picks the board
> information from VBIOS table, strips the VBIOS table header and passes it=
 as
> part of PPTable_t which defines all the information that is needed by PMF=
W
> from driver for enabling dynamic power management.
>=20
> In summary, these headers are not generated and not owned by driver. They
> define the interfaces of two different components with driver, and are
> consumed by those components themselves. A simple change to group the
> information as a separate structure involves changes in multiple componen=
ts
> like VBIOS, PMFW, software used to build VBIOS, Windows driver etc.
>=20
> In all practical cases, this code is harmless as these structs (in both
> headers) are well defined for a specific family of GPUs. There is always =
a
> reserve field defined with some extra bytes so that the size is not affec=
ted
> if at all new fields need to be added.

It sounds like it's unlikely that the headers will be able to change? If
that's true, it seems like a good idea to mark those headers very
clearly at the top with details like you describe here. Maybe something
like:

/*
 * This header file is shared between VBIOS, Windows drivers, and Linux
 * drivers. Any changes need to be well justified and coordinated with
 * email@address...
 */

And in looking through these, I notice there's a typo in the Description:

    header file of general definitions for OS nd pre-OS video drivers

nd -> and

> The patch now makes us to modify the headers for Linux through
> script/manually whenever we pick them, and TBH that strips off the cohere=
ncy
> with the original source. The other option is field by field copy. Now we
> use memcpy as a safe bet so that a new field added later taking some rese=
rve
> space is not missed even if we miss a header update.

How does this look as a work-around for now:


diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu.h b/drivers/gpu/drm/amd/amdg=
pu/amdgpu.h
index 96e895d6be35..4605934a4fb7 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu.h
@@ -1446,4 +1446,29 @@ static inline int amdgpu_in_reset(struct amdgpu_devi=
ce *adev)
 {
 	return atomic_read(&adev->in_gpu_reset);
 }
+
+/**
+ * memcpy_trailing - Copy the end of one structure into the middle of anot=
her
+ *
+ * @dst: Pointer to destination struct
+ * @first_dst_member: The member name in @dst where the overwrite begins
+ * @last_dst_member: The member name in @dst where the overwrite ends afte=
r
+ * @src: Pointer to the source struct
+ * @first_src_member: The member name in @src where the copy begins
+ *
+ */
+#define memcpy_trailing(dst, first_dst_member, last_dst_member,		   \
+		        src, first_src_member)				   \
+({									   \
+	size_t __src_offset =3D offsetof(typeof(*(src)), first_src_member);  \
+	size_t __src_size =3D sizeof(*(src)) - __src_offset;		   \
+	size_t __dst_offset =3D offsetof(typeof(*(dst)), first_dst_member);  \
+	size_t __dst_size =3D offsetofend(typeof(*(dst)), last_dst_member) - \
+			    __dst_offset;				   \
+	BUILD_BUG_ON(__src_size !=3D __dst_size);				   \
+	__builtin_memcpy((u8 *)(dst) + __dst_offset,			   \
+			 (u8 *)(src) + __src_offset,			   \
+			 __dst_size);					   \
+})
+
 #endif
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c b/drivers/gp=
u/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
index 8ab58781ae13..1918e6232319 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
@@ -465,10 +465,8 @@ static int arcturus_append_powerplay_table(struct smu_=
context *smu)
=20
 	if ((smc_dpm_table->table_header.format_revision =3D=3D 4) &&
 	    (smc_dpm_table->table_header.content_revision =3D=3D 6))
-		memcpy(&smc_pptable->MaxVoltageStepGfx,
-		       &smc_dpm_table->maxvoltagestepgfx,
-		       sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_6, =
maxvoltagestepgfx));
-
+		memcpy_trailing(smc_pptable, MaxVoltageStepGfx, BoardReserved,
+				smc_dpm_table, maxvoltagestepgfx);
 	return 0;
 }
=20
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c b/drivers/gpu/=
drm/amd/pm/swsmu/smu11/navi10_ppt.c
index 2e5d3669652b..b738042e064d 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
@@ -431,16 +431,16 @@ static int navi10_append_powerplay_table(struct smu_c=
ontext *smu)
=20
 	switch (smc_dpm_table->table_header.content_revision) {
 	case 5: /* nv10 and nv14 */
-		memcpy(smc_pptable->I2cControllers, smc_dpm_table->I2cControllers,
-			sizeof(*smc_dpm_table) - sizeof(smc_dpm_table->table_header));
+		memcpy_trailing(smc_pptable, I2cControllers, BoardReserved,
+				smc_dpm_table, I2cControllers);
 		break;
 	case 7: /* nv12 */
 		ret =3D amdgpu_atombios_get_data_table(adev, index, NULL, NULL, NULL,
 					      (uint8_t **)&smc_dpm_table_v4_7);
 		if (ret)
 			return ret;
-		memcpy(smc_pptable->I2cControllers, smc_dpm_table_v4_7->I2cControllers,
-			sizeof(*smc_dpm_table_v4_7) - sizeof(smc_dpm_table_v4_7->table_header))=
;
+		memcpy_trailing(smc_pptable, I2cControllers, BoardReserved,
+				smc_dpm_table_v4_7, I2cControllers);
 		break;
 	default:
 		dev_err(smu->adev->dev, "smc_dpm_info with unsupported content revision =
%d!\n",
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c b/drivers/g=
pu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
index c8eefacfdd37..a6fd7ee314a9 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
@@ -409,9 +409,8 @@ static int aldebaran_append_powerplay_table(struct smu_=
context *smu)
=20
 	if ((smc_dpm_table->table_header.format_revision =3D=3D 4) &&
 	    (smc_dpm_table->table_header.content_revision =3D=3D 10))
-		memcpy(&smc_pptable->GfxMaxCurrent,
-		       &smc_dpm_table->GfxMaxCurrent,
-		       sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_10,=
 GfxMaxCurrent));
+		memcpy_trailing(smc_pptable, GfxMaxCurrent, reserved,
+				smc_dpm_table, GfxMaxCurrent);
 	return 0;
 }
=20

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108191214.6269AFD%40keescook.
