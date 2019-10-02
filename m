Return-Path: <clang-built-linux+bncBDPZFQ463EFRB4HC2LWAKGQENITHVNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B0EC8AB7
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 16:17:21 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id k9sf3101743wmb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 07:17:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570025840; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBVTtZsg6FwXKlP4gDNjfsoDCIeDdnKP/rW3RWTmmxjxzBUi+alvUT3vU5vWh9IpkC
         euZb9QX6Loiuewo6Mr1paNuCKCUDDcG4wkiIVxGtzX9KmvhZSeSsAhZaSbNiZ7qkSSEc
         TG0fbhpNemRpBje1acPxBvHtqgVuWy1bkpie+Aok5RtmO8XmQ7TiKE/ziq0S1zKBOsEX
         AxIjBrvgeFNL+RhhRhQJcE1F4dIewI2A+iOMxbO2qEuh46IBmqyadJTf4RwyF0xG7RTM
         zKRmYVTwO2AbVhlJEVa1n+wt/ctD+cfEVbcR6i3Ev7YXlh15CrVgdBHBUuLiE/r7UM3Z
         2q/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=WInNKjv6Nh3cEUKGVSI3IvQN5y6ZXkBXtp0WH7MTq1Q=;
        b=J3RmgY/Iju1xivqC8BKweaNU+x49rp7Fl1jOPt/pXrc4hAF0nt6/NtAcbFR4xGH+Xw
         pr6HZfE065padVvzHhC2zst9ApVGurUTREyTzDYss7cc13XXFaFvoeuUKg6ItBEkJljQ
         3Zc5XL5daExsbDARKoirwyodxZ2S4TgEML6P2r/Qev/TmhaIpb1uyI5MbyLysXIlZKYd
         UyjmEUkBXePXu4e9cxvCs+o1uL8bdkivmu4o9ewx3c6Bm/QyZo2PRNC9ZRwYoE5vU+j8
         5E7pspPUQ18mtucYybALaclTVQntAeOk99l9oBxgS4wiK53t9uTEVYqg+ZUKIM/aZ8w1
         4x8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R9JOAAoi;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WInNKjv6Nh3cEUKGVSI3IvQN5y6ZXkBXtp0WH7MTq1Q=;
        b=dK5JXCsuUA/STaDEG1JH8fEU16rkiPPhNGaHWQddlIooiEXLLwIzTq48V8kzV5vO3k
         ovmxVHRJjhwgPGjGzF6UGDJlUjPCZ/95xIsBFvFdY323jbOAuSNxolAihcgmlje9JTo3
         mkIpQbgtSdFkryHyBbMIV2AGNmnrje3FNAyigsjvf5lLW7/rK5u3TjdvrsZiQqlj0Fmt
         z/4Zl5jkCI/uHWw4kUL0YYPOskTTbalRJZ88FspF1kH+wtuDExd3QZib6zkbXinPEIE8
         93k68QfBi1vwU4gztbef9uc4LBzploEGy9cTismlclYSdORcsq07sFztSDnM7xutZQng
         /VxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WInNKjv6Nh3cEUKGVSI3IvQN5y6ZXkBXtp0WH7MTq1Q=;
        b=JDAwrHJPVr1NhJ0dBGzEMyD9loWpxftrVGcCZCQboAdpUv4UeO4M+YDwpuEfoqHUdK
         Khl0I+T0tfdYowJd2OTwqNLxE/uoD+ZzwDFt4IidzXVSlHbWkq+ADTKjoXUd0uYdrL+/
         IQ1ymH++B4pWYmXpcfYU8sDuarUbeVly6M1u9xHLVPSUuNuSox33tX+E8EfPRzj2cUyg
         zMPt7JoINsLwzk9I68NPSIRN0f6vLXB0dUFMWPctXLBgQo3+bK+Nxrh9uorFjsLsPyLT
         6H0ElDt5Ze9U6h4v90kiW66jGgA0HZFeFQNZlkTrKKluQjU7mNi9vm1pJaqK2xq4MTAP
         EOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WInNKjv6Nh3cEUKGVSI3IvQN5y6ZXkBXtp0WH7MTq1Q=;
        b=PTNe1qA/n0rdLBrF/0y1ZezyhDQhY8aadpY0PLd5FmIOehXN8muidU+vS6utatPKIB
         F04HA1Vl2gPS8OcSFxApHrIEuYf3Pemzp+UIjHGV4182opXq0UccYxLpMAZWz6Od4Nkd
         wVuV5Rc8t6gtSv2F63gK3pvAEJYuvbH0muipzKJeL7p0GSw3ht0y6/VoZpJy9C9RWdFO
         pDIUJ1fij3onQBHKF9m2Qq4iJxpBp+pVNNHmPi9AgFv8SYIsv5BdZJnjrOikq8/KVTvT
         JemVduuOolRCvNHrm2PjLlwGdJFkdGZfgeN3PvNDxpYL3sYB5PwLHL44S7MhRxC+LC3i
         0ccA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVymoRf3fjjq4PExiZqrZMuu5FVPzzjOPP2A2dqEPS3pGyJhrV
	KcOkzUSKjrYY+UZTBdkxpKY=
X-Google-Smtp-Source: APXvYqznC/kpv5qLg1QnAYwdiIQ3p/gzQzWdAQmaqTLm1b/SHetaBRmjaIw3sbP5Kk0ELo64PcGLug==
X-Received: by 2002:adf:f1c3:: with SMTP id z3mr2941158wro.147.1570025840730;
        Wed, 02 Oct 2019 07:17:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe43:: with SMTP id m3ls767251wrs.4.gmail; Wed, 02 Oct
 2019 07:17:20 -0700 (PDT)
X-Received: by 2002:a05:6000:50:: with SMTP id k16mr2985716wrx.161.1570025840213;
        Wed, 02 Oct 2019 07:17:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570025840; cv=none;
        d=google.com; s=arc-20160816;
        b=FCfssEc/7sIEoRuA1LnsL9nuFBGN02MmiIGYYkTdKnN+5aO5JeWtA30o5+VAAeimxN
         awpGadnw9hwvmJL4dqO6bkg9iwlowkP+A2SEdFE7lctPH5m8fXmDerCapUiQ8kaEBWKX
         xSWSuRZNsuDKFD6xCpVGKfeK61F67YCDSUNXGH1kcOIHyIUgg28WEWR/afex+HxNhwn/
         Kt3OIyyktkdwheFXDoUEggbXZuLW+AwWc8fe01hv07TUVz50+GIJM4ONm5pbbFH3n+T2
         2HGrOhce6hlP4Hayh1owpXJoLapJdVcsN8aHErV8nIZMEmgk7CM8RTmeU1H0Lc0Bi0y0
         fm2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6ZK/alQJG/DzU2yr4fmPDAWsu9lpuXfvvu9e0XLg0VM=;
        b=AaG+Xc6p7VakzWpHeQr925+fvAEQ11ipkML8xDg7KEXJf34HXb1xwCAuFqhDRAlnp8
         Gi+EkOfFMfdZ7pCc7U6ZMGnUzS+9RhUFBZuRNJHsx4+8Z0bqSjMJcGytzWCbdUcmK2y2
         Qm7u7bF8Dsrpq/jf1XB07oR0YWZzEcpBPmxlLwHoSJnXnzIRD95vMMtUmuwxtyaPtk35
         PQK3sZUhC4Q78aJUDqhnk9aYPfylTClHJd/UNCaLHt//SuhL7yFaghhWavnnIGEDmII5
         nCrOb1lagyz6ZHFmnlDjAAXzr1jdrrQWaSa0B0jajkyxoejx+nMMnl5ZT7vrK2PELqM9
         944Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R9JOAAoi;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id i21si417678wml.4.2019.10.02.07.17.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 07:17:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 5so7430979wmg.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 07:17:20 -0700 (PDT)
X-Received: by 2002:a1c:1a45:: with SMTP id a66mr3100375wma.102.1570025839778;
 Wed, 02 Oct 2019 07:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <20191002120136.1777161-5-arnd@arndb.de>
In-Reply-To: <20191002120136.1777161-5-arnd@arndb.de>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 2 Oct 2019 10:17:07 -0400
Message-ID: <CADnq5_PkTwTBbQY9JatZD2_sWjdU5_hK7V2GLfviEvMh_QB12Q@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
To: Arnd Bergmann <arnd@arndb.de>
Cc: Alex Deucher <alexander.deucher@amd.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, clang-built-linux@googlegroups.com, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=R9JOAAoi;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
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

On Wed, Oct 2, 2019 at 8:03 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Just like all the other variants, this one passes invalid
> compile-time options with clang after the new code got
> merged:
>
> clang: error: unknown argument: '-mpreferred-stack-boundary=3D4'
> scripts/Makefile.build:265: recipe for target 'drivers/gpu/drm/amd/amdgpu=
/../display/dc/dcn21/dcn21_resource.o' failed
>
> Use the same variant that we have for dcn20 to fix compilation.
>
> Fixes: eced51f9babb ("drm/amd/display: Add hubp block for Renoir (v2)")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I'm getting an error with gcc with this patch:
  CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.o
drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c: In
function =E2=80=98calculate_wm_set_for_vlevel=E2=80=99:
drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:964:22:
error: SSE register return with SSE disabled
  wm_set->urgent_ns =3D get_wm_urgent(dml, pipes, pipe_cnt) * 1000;
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
make[4]: *** [scripts/Makefile.build:273:
drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.o] Error
1
make[3]: *** [scripts/Makefile.build:490: drivers/gpu/drm/amd/amdgpu] Error=
 2
make[3]: *** Waiting for unfinished jobs....
make[2]: *** [scripts/Makefile.build:490: drivers/gpu/drm] Error 2
make[1]: *** [scripts/Makefile.build:490: drivers/gpu] Error 2
make: *** [Makefile:1080: drivers] Error 2

Alex

> ---
>  drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/=
drm/amd/display/dc/dcn21/Makefile
> index 8cd9de8b1a7a..ef673bffc241 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> @@ -3,7 +3,17 @@
>
>  DCN21 =3D dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o
>
> -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -msse -=
mpreferred-stack-boundary=3D4
> +ifneq ($(call cc-option, -mpreferred-stack-boundary=3D4),)
> +       cc_stack_align :=3D -mpreferred-stack-boundary=3D4
> +else ifneq ($(call cc-option, -mstack-alignment=3D16),)
> +       cc_stack_align :=3D -mstack-alignment=3D16
> +endif
> +
> +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -msse $=
(cc_stack_align)
> +
> +ifdef CONFIG_CC_IS_CLANG
> +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o +=3D -msse2
> +endif
>
>  AMD_DAL_DCN21 =3D $(addprefix $(AMDDALPATH)/dc/dcn21/,$(DCN21))
>
> --
> 2.20.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CADnq5_PkTwTBbQY9JatZD2_sWjdU5_hK7V2GLfviEvMh_QB12Q%40mai=
l.gmail.com.
