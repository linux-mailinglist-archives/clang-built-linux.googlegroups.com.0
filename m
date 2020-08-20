Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB4437H4QKGQEWG2FM2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBCB24B504
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 12:18:29 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id mw8sf2821182pjb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 03:18:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597918708; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vxlt94+1EIuaHtzWFvM3fZCkoOutmLD5PUOr4deQwEIDJm2sm4p93e7YzuVn+xux4H
         jMcTSU7IRqO30uKpsXo4L46r4EJD1OZ9+m2FIgDaV3+iZLoTg2SAZPc6Bi96qNNu8c1H
         uFULCE7wubE845cnr9LDk+R5CydAh4KpoSIA46hHdihgWl2QAoCJZumtZKanDPnzySZB
         Nn8jxLViPbEAYz3HMcBUWCQm0a6od+2apUEFHB4KrbouptA9D1YJWVJwZ4PYPto5KhfG
         u2FbUo8mv40As90BI1veUH3MPr97uzjYtdGx/c+PYXPEWlaJTjzdrNfZxKv/aY/n92Fm
         UPtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=N5VEgrtmmNeIkXzFU5Spfp0niXn1dCVxTQFXnJTjy+8=;
        b=Zy7ywtzcDwR2hYnjwX68ItISnRaVeRY9/ZHdwrc0IgOFzhlPaekA49eABWoTD1fgCw
         tSWy8nvxCATnYDJ4i9EL0K/VYejfojIZ0srzAI1a9ipQn1T/4MNp47s57IDflk6CyHgo
         m9VloJDUNNJYIG55wq8KVA0Aqc8pXDVPvST1VoMV6xIiOalfSbGPkuPhNDlD4kjptcit
         ME8Ka2Lrk4MoRQMc1FAWwfOMqozCt5xl4xc19LfB3wzq8FP3d8O3IdMEED+r4A4in+CC
         0USoWYafCjdoKem5YDSpuOpV7EubamzIg65/X8V8YHQ2Y4mDcaEBOqbvYw8lAyYuJhbq
         xksw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=If7bOfIj;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N5VEgrtmmNeIkXzFU5Spfp0niXn1dCVxTQFXnJTjy+8=;
        b=ZuMty5qWaX/CXN3bV3qKoqx6ydRAwJ/lvQfCVX3mfj38EO5bTJ71KNoNvf6jOuwr7c
         dnmfeW+jw8n9UN9EBVgUxGBv6cmRyH16wFDSz/I55keGYdqmOdBFe2zhNJAvId3MS5mD
         gwZUGFsYM9eqDHqN2Frh2Gg66B0NCRFQGdGBesUO4UEcERBFoCG38sbVltiMpNbBH52u
         hin2qe1c3mmd5/fP4swEPynZfoqwLS92SwYTmWTnnkq19I8R4kCqkWlKJwpZYDKkvIF4
         qF5mVJsoT8I8OnSGubDgIBaoQta+d/podSoV9gNAqW+3zXpW/LIeZc8kZU35P++3D1E9
         81cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N5VEgrtmmNeIkXzFU5Spfp0niXn1dCVxTQFXnJTjy+8=;
        b=oM6F+i2fjrQNO8uf/tMadA7ZzUhF2vk8jJTIqiK7My3OkdzyLr+V9bhC+9oOj3zaa1
         aJlmNOCVPEvrDcR4KsKMJo/W+tgRd+K65C1n98c4jA+G97FUoqXo3FSnoObMb8463UWs
         og7Y8bohEOW8uG+tzGIFHrOPGOV0dH3lxMq/MVmPQzMUbkLQlSmKv7GrT4ml81bTHbwP
         Lt3wU/8w173qHqulzqEO6qhoAQAb4TE3DrGMjQuDvZursIFHP/VrO4I8cuc+DmJomU3N
         VrEaMgA9i1X6UvNwCZAB+8sZM/OuQFwbZdYKZT9xVWbh4nj8uv0XzsRxF39pofU7ZB6b
         oulg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328qhk+L73Vbz9JwmAAm5t3RaMRnDYHHyC43zemfZwP82UinHoJ
	E5+emKHH2jq0lQUjQeKNKYw=
X-Google-Smtp-Source: ABdhPJyYU48/95RuT7mqQxXm6mGMDlgmCoME0JK/GSVnhtRY0YEPYU0DtGcLZpyfY8GC1yZC36npxA==
X-Received: by 2002:a17:90a:d712:: with SMTP id y18mr1806991pju.79.1597918707832;
        Thu, 20 Aug 2020 03:18:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c252:: with SMTP id 18ls1025620plg.3.gmail; Thu, 20
 Aug 2020 03:18:27 -0700 (PDT)
X-Received: by 2002:a17:90a:a590:: with SMTP id b16mr1999880pjq.131.1597918707235;
        Thu, 20 Aug 2020 03:18:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597918707; cv=none;
        d=google.com; s=arc-20160816;
        b=UqswTVHeyPdeSOf+06Q3ALthI5YG2XMIkGvvgt11Xms+x668hTnjO6Ru3Zo0XWBoeT
         L5NrGMRRL++vvXTuqqGj/mfbZjzi6x6PtMhb8y9e4N0zIY14B3NtMr+CuKC96etoI7uU
         ZqWrMPVjFlTL134L4dNBDaRmcAb1OZw2ZawCBSgRZLmdW5zhdqJjVdDQiGt5DdEAcsm+
         TCpbjWHl0HP1qwTbUtoo0x8CuQvvRa2MvNNM/ZyF2+EtIfVM11B09AlQxWELzH2g7lQh
         bjJRgKm7/aiff+9TQOBwcwZGL8pW/Yw4I0MaVtaxSwe/aBBS09vVIIV7QuVgdlgMvWQB
         hmSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=zVRgxsfepYzYkU+vpFAChRcrhAuOfHEv8LFvPPE6d28=;
        b=bSFUhbvyIPOIoMtgKWaQIoeDwTLpCWYAmMgoTwt15MjRWtUmNxGOO7LLMuG1R3POwR
         5Hj11f8InJBTStwMjIZ/U9ZQVBsydtAytSFKx0mflet5KSmYnVwNRuSBizv5c1Xt+QZ+
         K/B5+tt1wWBmXfW0j3az9Hdof43JHdgcTbA1SVsy8JMUSXBWs2FJd3qhZmcIlO0Htcwk
         ShE1tOhhYI4XIcAByN6kxQnFY8+h6FFTB7giHhYHMhU34bbUf/2Z21N5imRPWayNtoo0
         vuZbmHhNM6RyyqJRUJgfY3k2aNfF5Z87+ChtgZx4/xaXbcBIgXW+GLpKDS5OevpOl7K4
         bs4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=If7bOfIj;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id y9si97627pgv.0.2020.08.20.03.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 03:18:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-CakX2Xi6PCqH5-AxDXr1nQ-1; Thu, 20 Aug 2020 06:18:22 -0400
X-MC-Unique: CakX2Xi6PCqH5-AxDXr1nQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EB2E807332;
	Thu, 20 Aug 2020 10:18:20 +0000 (UTC)
Received: from krava (unknown [10.40.194.187])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5239319C66;
	Thu, 20 Aug 2020 10:18:11 +0000 (UTC)
Date: Thu, 20 Aug 2020 12:18:10 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Yonghong Song <yhs@fb.com>
Cc: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Mark Wielaard <mjw@redhat.com>, Nick Clifton <nickc@redhat.com>,
	Jesper Dangaard Brouer <brouer@redhat.com>,
	Network Development <netdev@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>, Andrii Nakryiko <andriin@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong
 alignment
Message-ID: <20200820101810.GA336489@krava>
References: <20200819092342.259004-1-jolsa@kernel.org>
 <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com>
 <20200819173618.GH177896@krava>
 <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
 <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
 <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
 <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=If7bOfIj;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Aug 19, 2020 at 08:23:10PM -0700, Yonghong Song wrote:
>=20
>=20
> On 8/19/20 7:27 PM, F=C4=81ng-ru=C3=AC S=C3=B2ng wrote:
> > > > >     section(36) .comment, size 44, link 0, flags 30, type=3D1
> > > > >     section(37) .debug_aranges, size 45684, link 0, flags 800, ty=
pe=3D1
> > > > >      - fixing wrong alignment sh_addralign 16, expected 8
> > > > >     section(38) .debug_info, size 129104957, link 0, flags 800, t=
ype=3D1
> > > > >      - fixing wrong alignment sh_addralign 1, expected 8
> > > > >     section(39) .debug_abbrev, size 1152583, link 0, flags 800, t=
ype=3D1
> > > > >      - fixing wrong alignment sh_addralign 1, expected 8
> > > > >     section(40) .debug_line, size 7374522, link 0, flags 800, typ=
e=3D1
> > > > >      - fixing wrong alignment sh_addralign 1, expected 8
> > > > >     section(41) .debug_frame, size 702463, link 0, flags 800, typ=
e=3D1
> > > > >     section(42) .debug_str, size 1017571, link 0, flags 830, type=
=3D1
> > > > >      - fixing wrong alignment sh_addralign 1, expected 8
> > > > >     section(43) .debug_loc, size 3019453, link 0, flags 800, type=
=3D1
> > > > >      - fixing wrong alignment sh_addralign 1, expected 8
> > > > >     section(44) .debug_ranges, size 1744583, link 0, flags 800, t=
ype=3D1
> > > > >      - fixing wrong alignment sh_addralign 16, expected 8
> > > > >     section(45) .symtab, size 2955888, link 46, flags 0, type=3D2
> > > > >     section(46) .strtab, size 2613072, link 0, flags 0, type=3D3
> >=20
> > I think this is resolve_btfids's bug. GNU ld and LLD are innocent.
> > These .debug_* sections work fine if their sh_addralign is 1.
> > When the section flag SHF_COMPRESSED is set, the meaningful alignment
> > is Elf64_Chdr::ch_addralign, after the header is uncompressed.
> >=20
> > On Wed, Aug 19, 2020 at 2:30 PM Yonghong Song <yhs@fb.com> wrote:
> > >=20
> > >=20
> > >=20
> > > On 8/19/20 11:16 AM, Nick Desaulniers wrote:
> > > > On Wed, Aug 19, 2020 at 10:36 AM Jiri Olsa <jolsa@redhat.com> wrote=
:
> > > > >=20
> > > > > On Wed, Aug 19, 2020 at 08:31:51AM -0700, Yonghong Song wrote:
> > > > > >=20
> > > > > >=20
> > > > > > On 8/19/20 2:23 AM, Jiri Olsa wrote:
> > > > > > > The data of compressed section should be aligned to 4
> > > > > > > (for 32bit) or 8 (for 64 bit) bytes.
> > > > > > >=20
> > > > > > > The binutils ld sets sh_addralign to 1, which makes libelf
> > > > > > > fail with misaligned section error during the update as
> > > > > > > reported by Jesper:
> > > > > > >=20
> > > > > > >       FAILED elf_update(WRITE): invalid section alignment
>=20
> Jiri,
>=20
> Since Fangrui mentioned this is not a ld/lld bug, then changing
> alighment from 1 to 4 might have some adverse effect for the binary,
> I guess.

not sure about that.. Mark? ;-)

>=20
> Do you think we could skip these .debug_* sections somehow in elf parsing=
 in
> resolve_btfids? resolve_btfids does not need to read
> these sections. This way, no need to change their alignment either.

I'm don't think libelf interface allows for that, will check

jirka

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200820101810.GA336489%40krava.
