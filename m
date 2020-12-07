Return-Path: <clang-built-linux+bncBAABBXGKXL7AKGQEKTGYWMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFEE2D1C81
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 22:57:50 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id b35sf10052302pgl.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 13:57:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607378268; cv=pass;
        d=google.com; s=arc-20160816;
        b=TPw98m5PUrQKq4InUbcE9VGQiKdsz0GRujS4bznU+IpEWTq0L0DZL9l+blIFcEGekN
         zWzw1zXtfrp4Uoolq2CHBKkpbaEwLXV9uJ4d1en8yun9lU9mEzo4znnRdQ91lJQnQkDK
         cezAmiLrqDdBdpcoPxf43V66bRl7CbgBXVeBKKKHHoP35UJHGwXM5hAxxnU1aALqA+8Y
         WXR6QJ1W+DoHGD/XPoNMsdyzHIpxgPiuze9kzICFM7kjtg8pkzeQtF3FF/3CVl3HLAo+
         PlGZPh1Z19EATaXncMQz/x8XdBAN0eML2URhuPCbK8G/BM/uQE9Zm2lXg6u9PTdY17CZ
         Boug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=7d2fBCmnfzRAEYbtK0HmZebfZ1YUnwWXTMz3ZGmvrgc=;
        b=F0sal9g7+2tnL07dxIxob+G3E0kBJMoBOAlgQqUGoTvWHomwNVpVcozAeebQ2VVJRo
         xqzgzJTYAr20D9rAFdXWmP6qqips9HArz0xjLzEWQFFjmvdH5gVYIS8BB6FywPeaflF2
         lufToH8Hh8l6GxiwaaeM1L7Jhf4QfanXWSTYc7/b69iSFJNQTbjArfEcfS5O4VCf1oYd
         NXjARSNKIJGhWTv/O8wmy+02aWnokiHWDzBLoyEuLPFmQj4EJkOncqePyGYDsGwkRoTy
         k8bak16Dcp2DK/Tj8+AYczWx07Z5K7Vimwgy8xuSOgJH/umrOahN0e8ZNW+j8877jIqa
         sEMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Bn2nl2YO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7d2fBCmnfzRAEYbtK0HmZebfZ1YUnwWXTMz3ZGmvrgc=;
        b=NtBqwZzXjatt6QqjlyP8F/FxuwC30rWiXd8KYu27N4rNaaSntmx/eDpb3v7mIUeIcq
         KBPLqxion7lmdThphOFhrxEdOcXI6LBqXam74b0rtgZgGl4eCCN57oFPki1zr/TkIT/x
         9umKUw2Z4QF3FBa2i+5KEqcPDn4wJUvhcg3BOwEoLORFqdUQz29aw1R+mt+9B6ANpFgS
         CvTuQoyRoUQMV/SUOvJInEZj/gHHJ5KS58xKnoE+2O4/EDa5qdxAgTiJbbRa6OwSI8TN
         Qo7RZ2xTSNsn4mVYuGLGURMZlzxk1wi5HGYCe+CVPQCUCkzLb2HCg8qc/YPaDdOcC3iY
         Yx1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7d2fBCmnfzRAEYbtK0HmZebfZ1YUnwWXTMz3ZGmvrgc=;
        b=OACKARwUG0BwGm7M2gvj94jeRjNQqXyJM4d6R5GVr4WmGFIaeukceiE73hcnAG/2o1
         KEDH6UB5KyusX2pNtFF63+EW9TbgBiXGabG1SbyI04+WnKVL/990zb6USpFL9fTwX6wy
         7SElJtfS0R6Ybv7SB9wl3Tx5FpReJ78fuOXCOS20fqaDENtHQ+UYTvPYeu+kKg9iBhL6
         1RdiCybw8EYp2QeCtr4Bn2UncIWoKV79aIseVVwkHeOJM2TAzM1SjUmunU28cQboi+3y
         YCeKj34fA/63Dgb24uth6oJGa74eiYaBDrfLGYXcmurAtzWfhnRP7JwCkrm7zKDCpTzS
         CyKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R7fCHgP5zYf7RvWtC5wwAWhLeTL9ovMWoFk/tDQYmZAOzN4HZ
	P1R1eT9nuyZfkN+8VIQs9QE=
X-Google-Smtp-Source: ABdhPJwp8i0nDksDwV+GrfQLs96Ve/QX0HziP+fYGVHPRaMkXdCW1M5BNXhfHEBErTWQMI/5TZ+F+A==
X-Received: by 2002:a17:90a:bf86:: with SMTP id d6mr831552pjs.212.1607378268511;
        Mon, 07 Dec 2020 13:57:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a47:: with SMTP id x7ls8787913plv.1.gmail; Mon, 07
 Dec 2020 13:57:48 -0800 (PST)
X-Received: by 2002:a17:90a:ead1:: with SMTP id ev17mr843084pjb.51.1607378268036;
        Mon, 07 Dec 2020 13:57:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607378268; cv=none;
        d=google.com; s=arc-20160816;
        b=VLbmQb/eLhJa1iH0+M6GO2u66M+c9EDCxraQw94OI4B0nD1WIdTkWU9RjLnPD5SACy
         fP2tQfN5FtQVnvgJafEXCDN/FbnPzXYpnWjKtXTPMGXIobpqflSxVDwBg39j+uBDP6Qw
         HrDiR15gR0ob7HnUQzvKhFTUqIbjes3a2f3vG6khMgDbxDkLYhPOHgt27S5qVwpLHiP6
         sQQhnKMkd76QvYEw0jWuQAM3FQ2L9/1J+COd5N6IebYlFCGBrXyOHje81PLol5q7gi1W
         vc/M4JMOBUjpLhyb4ac68n9N6kmhtgPmLg+AHN+aYPF+OYadYF5DMGPC9bpG70ne6J+E
         K73A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=aWxz/4k/+IfStOaxzFEr4/ic/SnB6ryFvYwBmBvd7I8=;
        b=F+CIFngOdzKlqhmQQtKFuc+m7YhbDe1mX+L4j+Zvfzbq04C9V1y8z6ewlTD6MNgEMK
         WvO1+cvDpfFzQGV6YDfGFgUqb7xH+wAYSIT/uIYs5aCOVKrPdQo5AKErsq6wUyPe0OE/
         b3Lx9yzIN+UcrVMBL4PiQJtMBdDgC6ZL+uc5GzhctEh58O0nqL19vyAZkbyq5AeHQWrV
         wHBnL5Q+oTLbg4RXvFT/0ZGBXBvYqPITaiJtRsDOy8B8lc5yK2yzOjt8PBkH+djJf7DI
         AymdxTBXJRDJdSBVAiARGNd0QfGBK9nctU4KMAMZyfbjoIyBJ0A7vL0Sdy2p+v5Ppdtz
         TwSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Bn2nl2YO;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y13si990191pgr.2.2020.12.07.13.57.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 13:57:48 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:6317:: with SMTP id q23mr14853258otk.251.1607378267025;
 Mon, 07 Dec 2020 13:57:47 -0800 (PST)
MIME-Version: 1.0
References: <20201204081349.1182302-1-arnd@kernel.org> <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
 <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com>
In-Reply-To: <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 7 Dec 2020 22:57:30 +0100
X-Gmail-Original-Message-ID: <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
Message-ID: <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: make DRM_AMD_DC x86-only again
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: Alex Deucher <alexdeucher@gmail.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Alex Deucher <alexander.deucher@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Luben Tuikov <luben.tuikov@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
	Mauro Rossi <issor.oruam@gmail.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Roman Li <Roman.Li@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Daniel Kolesa <daniel@octaforge.org>, 
	Timothy Pearson <tpearson@raptorengineering.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Bn2nl2YO;       spf=pass
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

On Mon, Dec 7, 2020 at 9:50 PM Christian K=C3=B6nig <christian.koenig@amd.c=
om> wrote:
> Am 07.12.20 um 21:47 schrieb Alex Deucher:
> > On Fri, Dec 4, 2020 at 3:13 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >> From: Arnd Bergmann <arnd@arndb.de>
> >>
> >> As the DRM_AMD_DC_DCN3_0 code was x86-only and fails to build on
> >> arm64, merging it into DRM_AMD_DC means that the top-level symbol
> >> is now x86-only as well.
> >>
> >> Compilation fails on arm64 with clang-12 with
> >>
> >> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30=
.c:3641:6: error: stack frame size of 2416 bytes in function 'dml30_ModeSup=
portAndSystemConfigurationFull' [-Werror,-Wframe-larger-than=3D]
> >> void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_l=
ib *mode_lib)
> >>
> >> I tried to see if the stack usage can be reduced, but this is code
> >> that is described as "This file is gcc-parsable HW gospel, coming
> >> straight from HW engineers." and is written in a way that is inherentl=
y
> >> nonportable and not meant to be understood by humans.
> >>
> >> There are probably no non-x86 users of this code, so simplify
> >> the dependency list accordingly.
> > + Daniel, Timothy
> >
> > Others contributed code to enable this on PPC64 and ARM64.
> > Unfortunately, we don't have these platforms to test with within AMD.
> > Does PPC64 have the same stack limitations as ARM64?  Harry, Leo, can
> > you take a look at fixing the stack usage?
>
> This reminds me that I wanted to reply on this.
>
> 2416 is even to much on x86 if you add -Werror :)
>
> So this needs to be fixed anyway.

Right, looking at my latest randconfig logs, I see the same problem on x86
builds with clang as well, though I'm not entirely sure which other
configuration
options are needed to trigger it.

So my patch can be disregarded, but I agree this needs a better fix,
either in clang or in the dcn driver.

       Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g%40mai=
l.gmail.com.
