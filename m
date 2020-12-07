Return-Path: <clang-built-linux+bncBAABBXWTXL7AKGQESCPXH6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8832D1D0E
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 23:17:03 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id r62sf1561092vkr.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 14:17:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607379422; cv=pass;
        d=google.com; s=arc-20160816;
        b=RRhz1Z+Bz8a58m5j8+gOZ2b9JoDo0R3OUk2SygfRDmZGSyFCoeq+ZizUMFSB7jlj4f
         cHVyZOjyygpWL3+eT7TMg/w52u/s9omflLO4FRrq0FK3fnuv32riZ+YOajk9QV3kweKf
         j0zUgYECYxahTe2MYNBxcmLaUfwOpFNWlxDV3H3rliqojKbbegNB9Fc2mqBUUBJgCivJ
         25zUMWxqKBvZbZeFY2OcBCA036sO8xRvxP2czaILF08/hw6T9DfOSdvAE94ltj6HAFvK
         c1DdrSNVkTFZ5LzKHr05bnCzyr4zIQXs2QZRkUj4YKRUhlfy4867tmNIp5Ll6Uplju9C
         qAWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RQNE3ztjEoCMN1MgmRlJ7Evhoh9SxPH0hM4/kaVervM=;
        b=RQ6qRHujE3bScmV6fbhd067NTt/r2BhNneWXGng0YzQPdFG1+NaDc02SrDGuuU+HC0
         WCrMuwmB7kMFy04rrc/TmUbKo0sGhb6W1X+OVMZoM7ic8EkSTOWnvyRFgGrHaohDVR+B
         z4QmdSvAmf8gQcoXNWKi4fTeGAXBxc/6Cp1nDwELtwllBMGHv4xtTu5ApXUnh3a97NVM
         9d4NhHRNoCWF70u4WNR1KgK83NPyu/xfwwB3fYBCgpsgKF4Tkpg+QrHrT0akH0heMd6N
         k8G9+Y98js2JI8xWolw5vqZjplvHgq5e+uaGil+gGOZtkRc1RDqNnLKGb7wh2lyPo5S4
         w09w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GNNdf5C6;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQNE3ztjEoCMN1MgmRlJ7Evhoh9SxPH0hM4/kaVervM=;
        b=TkKAjeNK010UfsQwGSRFy/3+ZRPKlGbRx3v4/88g2j8BBO4NogIrW+l1E6QMt+4ZQA
         WWuk7tz+dnoV7q65ZZYzIIxU4dRpOkrORRH79AZpVdnksy0u3AEepCb7OCouUIYxt7La
         T6/z5D7eS0Tln1ENKZhgqOOfIy3dNV31clcAiA5d8KRgw8jwtP+qE5PmJLzO72gHJucn
         r7aeMKikQau50r5BPwYZ5DKUfVdZrf8pWS0jCZLY5vKDtRGNCd1+tNHOKg3HS5YFdfzg
         J22ayf2gGc4E69iXpWzqhyNyYRGd+dZjjsNhhn3taZkRs//4wDD4kqjRste1EcETfV7b
         oaQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQNE3ztjEoCMN1MgmRlJ7Evhoh9SxPH0hM4/kaVervM=;
        b=UNi99dqhZprjGtAsFg4p3ghlcCzBI4OQjb+Aak+KZPvezlKqzq3DGwlfAkt5DNlbpz
         mavCTMqRBygyJdBxL+KUQMeKsgnk0OLhT2MZw+ri/tYCahZfg8l5GdM1UfQCm7zJAy9r
         MdEnWDnD72zKvuxmJJEta853s8T+ZezBa/3Jph0p7S9jSau0xqd3gkgXO08GBriBfwKF
         g3IOvdYhhVvJ60DzOP/jWDaw3R2bMEZERTWY2a33SVbecgXcVAW6GOo+hMkKvsadU2NX
         meWclooozHWk7wbxT7djYz1G4gjcT2q624Vc7LjqCiNYLtWpzUDdJvw0ik/uKx8yFtRP
         /Jxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oWukgG1f40hJVgnmRhSfujeMsMJngqT8G9gzrbRBvcqaQWlcm
	BL/mJb0oi8d1MWUIO+rmipE=
X-Google-Smtp-Source: ABdhPJzmjqAIl4BCu03qa3YbsJweucaTlHN32EKJ2EGyBGCsu/lGNOr5lLYgtjYZgHU2OjlICGuvZw==
X-Received: by 2002:ab0:708c:: with SMTP id m12mr13755370ual.69.1607379422736;
        Mon, 07 Dec 2020 14:17:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:214e:: with SMTP id h14ls407935vsg.2.gmail; Mon, 07
 Dec 2020 14:17:02 -0800 (PST)
X-Received: by 2002:a67:c282:: with SMTP id k2mr14027024vsj.1.1607379422366;
        Mon, 07 Dec 2020 14:17:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607379422; cv=none;
        d=google.com; s=arc-20160816;
        b=P8/VVXB0TlisqwjvnYsxjlNv6dpbeArh9IIGyr5TojXkvNp0XPFIMCmonNQTcN13lD
         bvjB9CYBgMSygj4/7oKgZ6GUawkuQhHrhZd+PzcA6CTKyIwFbmpJ+TRy/5diB5nD5BIc
         hrIPeGq15svydmNjN7Cndifd2JNs5+tadD5+ye+KAQn9VKRLRwrh5ziHtTDUYyfU8V30
         kxvPI2Pifq+8VrZk9n603Jd82m/l53oq8HfkJtqq2XukLuf1BfWNGYcmd2Ho2raioW8m
         fW5mGXRVT6C1yJCdgO9Hh4X0Ekqge4WTWbqJG06P8vJ7qjo2rVY0xc+HVyomzRBaijGc
         eFGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CgJBduj2YZrTbq9cyVxybZ5828u++KOOKncact6WnOI=;
        b=DvrWWDulJDwWq+qDB53W02h/SkrkFOKecjamV17JrCktyihFNHUotwkyT9vEp0v9RU
         d9IT0PRtv9IZbFSjvI4GcYjXNJWM7TFaK+tKrr/zDc/sOF8uihzLJG6wh12I14fVxAJB
         /lz7k3F8Ik6a42/9LCBRf58kxOPwCaOuuTJ6lMmB1L7y4tjAbYLYzSni7JHaL+2Qknsu
         iM8TI96HXTyi7uD1pNAnnciIp7XP0D9ct+A/eq0RcwlztFBy8GpbWJspf7A1Y+GtLMSY
         Z+hZAUBQIbj7uG23q03gT6jgPzbltEevcYQAEZDsZiiRRwdw9i0i6H2Jt3Ma7agApbhF
         CQnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GNNdf5C6;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si863182vsc.0.2020.12.07.14.17.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 14:17:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr10918089otm.305.1607379420605;
 Mon, 07 Dec 2020 14:17:00 -0800 (PST)
MIME-Version: 1.0
References: <20201204081349.1182302-1-arnd@kernel.org> <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
 <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com> <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
 <CAKwvOd=-2zoc06EY4R9ZJ0M874bQv3NuT8a0q9=RoYeMMtnXVQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=-2zoc06EY4R9ZJ0M874bQv3NuT8a0q9=RoYeMMtnXVQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 7 Dec 2020 23:16:44 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0gjPWiRX0yg=i6Qxgyo02AtQVVsw+=w-OvF956Tn=jDw@mail.gmail.com>
Message-ID: <CAK8P3a0gjPWiRX0yg=i6Qxgyo02AtQVVsw+=w-OvF956Tn=jDw@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: make DRM_AMD_DC x86-only again
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Alex Deucher <alexdeucher@gmail.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Alex Deucher <alexander.deucher@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Nathan Chancellor <natechancellor@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, Mauro Rossi <issor.oruam@gmail.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Roman Li <Roman.Li@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Daniel Kolesa <daniel@octaforge.org>, 
	Timothy Pearson <tpearson@raptorengineering.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GNNdf5C6;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Dec 7, 2020 at 11:08 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Dec 7, 2020 at 1:57 PM Arnd Bergmann <arnd@kernel.org> wrote:

> >
> > Right, looking at my latest randconfig logs, I see the same problem on x86
> > builds with clang as well, though I'm not entirely sure which other
> > configuration
> > options are needed to trigger it.
> >
> > So my patch can be disregarded, but I agree this needs a better fix,
> > either in clang or in the dcn driver.
>
> If you could give https://github.com/ClangBuiltLinux/frame-larger-than
> a spin again, I would appreciate any feedback.

I've already tried it, but the tool doesn't seem to like me, I never
get the information out of it that I want. This time it failed because
it could not parse the .o file correctly.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0gjPWiRX0yg%3Di6Qxgyo02AtQVVsw%2B%3Dw-OvF956Tn%3DjDw%40mail.gmail.com.
