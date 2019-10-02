Return-Path: <clang-built-linux+bncBDPZFQ463EFRBO7B2PWAKGQEUFS6GHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B663C9114
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 20:47:24 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id 205sf65723ljf.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 11:47:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570042043; cv=pass;
        d=google.com; s=arc-20160816;
        b=vJUYS/t6X4T4VMLZzd8n4t8QWdWKdWDtpfYviSu7rUF8UsAUhc8/G4YcV5DxQQI3x8
         OzkCk0PCN+NZnvRGONwydfQ4cCR104UbLff/OZoPvhy5mxCkIX0bMlQRc/JJXBA+9XHp
         D8TqDN8L/qwKypYgt+BYUV1O/CHEsE2jW3zC/AM1JrlEv/p4hNUp61wds7QWNobHbbpw
         /AfRaNh0TDOzALCOHai1hBqxNAGas4ax73AYM9c9Dr/vCe9Z1MYe9HC82XwULwcmbw8n
         UU9hJOmzKPGbPcoZJqNtqyB94dWUGVUJktC2e4C+UYxRyqVUVu5zLYRGCGZX45gKVlMD
         pB2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4WTtN7AvL3zsPJzMj/OwPVFeos6qWRCUh00EVRWT/as=;
        b=DR+spxmKaYVqfbsZvRAayQ6LfPGl6jXsMfIm0B8pJYqnX2+Rbeouru33k6VmhFmKR8
         Z9wvZjV5qBsnWlsJIVRcxt5Nb3tmOhLMGkP/RNyayDEvt5xh+iSTR4++5GjEI6dDQHtl
         iqrQlJ9LtuRbbF4JWgq7EWx8B4wTpFKqPAtNMWwamL9OzqMC/W1Xeajn7PV9pLExRKR3
         p9/9muJg4ug6IhqnmAHSlrYeMDJapRuxQhxypdVYEyjGrUPCMJpCKKcN93mEKUKYUCSg
         OIp84SoSQoW2ryf0m8ImltFGLHWN4zRKDWvJNzKOXLWpnO2QDzrzmrZ7SC+3OypBQzed
         F1sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="azaA/Cc2";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4WTtN7AvL3zsPJzMj/OwPVFeos6qWRCUh00EVRWT/as=;
        b=svizjT/cvZt2rRsZh7GiT/4h6xx36P/lvAJA2cXtxfJ0JZlwwCnFHzBoo+Wa7glU2j
         OLvEXvzjTvPtmlWV8uDCWmLOCv636Xgg0Qz2v62crvmNJnQyXQgeezlYgdBJPVjsQ2V8
         r0AoLpEAQGX6QMYDoG/fvtFOT/1Ss0qv+8LJEgG1HawZcOTk3aRRaYGPmOKs3xVHKPbL
         hSWnen0+oscYO3IVJ3q6/dNw7IM0NgNIgqu+sWWzC2dHSoue+/SzZTbojiB9ue3bpzYo
         s+mBIImFgodEWcnxmV8McrGI3+qdTjQMGIEHkweOQXmXZlfWvmuema77ZrclYc7W92Ed
         u6HA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4WTtN7AvL3zsPJzMj/OwPVFeos6qWRCUh00EVRWT/as=;
        b=dGGHvB+ZdBOehRoYuelxdnU+PkT4VAEFss/AMYb86yeXxmYEO4Vz/v0+LoJnTYjj2n
         YaUCJgIHWIVANVZui15mzPlqYsGEKRfxtYJUp8bcXJ6mSdgGp3o6XC6MoJLTguyIHfQ9
         SjlXYzmQeDjqKCUUJlFxLdbys9RL7GgKHD0qfVPr1/mQn+RrtBMgZeRWyiCYs8+4QTWw
         K/gDIgVOQgh4I4EzIFno6qbhzOyUg3xWCwckeoBx5nVVylFF7ytolxhliVmm3hQ6dt+/
         DTJb980APO86KqAhkKIkj7V5viV7+eqQ33fw0dLJjuH4lVA47j0NTKgOF1e6Re8MU+gQ
         DEXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4WTtN7AvL3zsPJzMj/OwPVFeos6qWRCUh00EVRWT/as=;
        b=r8TMQqnz9vZWcwjhZKL1q1zi2DMinQPp8qYL4ODdOGANx45h6xGeEAT18TYoZ45G2q
         ZTF2u2GQJb57uBKFdYOI3RHD6jqYjdJf8fh57RL6jiWtPtGsyIXBXM3nZ2tu5zoGYPQ7
         M4yeNUqmncYn2BszOoknHcCnSB7k7ZAAcZdl/CgR2vCN9pktkUHzDF0r+bk0MQwRgTS+
         LdqsStsvkcG+BqV6gbKRqGvanW8plkdgyQAqS/lEWPvMh3EafEsP96vCaoqQY7CxuEAW
         VuM11RACnS72bvNhGuy4BPCCdHwSSAomEQUei26AiaORFAyhE6k1iE0Piw7JizlHsFIv
         TntA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUaOMKcBHx4G41WrU7nLyBxGxJdE0xicWeiZpBvTQeXSoGWmpmV
	EJ+OYvDBn9Wa3fNhiGn7LNs=
X-Google-Smtp-Source: APXvYqwdAUA914zbNiThfyxDATkIxFiYI2SrjnX8TrWMOoTK4NgQEGQtRKBOYwu4wzVjGdDt1xHmCA==
X-Received: by 2002:a2e:301a:: with SMTP id w26mr3418426ljw.168.1570042043746;
        Wed, 02 Oct 2019 11:47:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:47d5:: with SMTP id u204ls446551lja.5.gmail; Wed, 02 Oct
 2019 11:47:23 -0700 (PDT)
X-Received: by 2002:a2e:4296:: with SMTP id h22mr3487607ljf.208.1570042043284;
        Wed, 02 Oct 2019 11:47:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570042043; cv=none;
        d=google.com; s=arc-20160816;
        b=TT7LpmJA+Yd0jSaAiWo8sP0+WDSwEwsUIWpgM8JQ237ui7lQFZYvBW2TZsjJL2pdda
         SHyXA0vxunPQ23gUZ3ce+MEHBxzDLgoNV/PKd46CCyHaT5868dkXCKW22pfImRFgkGMO
         QlgjsYsGMWUxB3sPg/MUyDgURYxS8FyYbEkiU645zfRoc7EwdZmIhqPYX4xJLGIBxf+E
         4LSh8OuNFeFUW7k+vAr4s7Zv+Q0XRlFFNV5P/FlKR/578k3FJruzkZ1sZ9eqksRwxhUU
         dvnpM5oHCdnc4oH6ObWsfxVllkSrGAdty3tlQ2kfAkggKjq3KztnWTY0AtuZ9BGuBHcb
         VJeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rl3HwNc1oPPqrMvALhFW3tFOkISeqhdk4UKaPBcY6s0=;
        b=rXbHZ53cFrXMYeeAAqB6Txx4p3lkgHzP1g3up1N8g2Sb5kMx2MQI+J0sosg1xlakQ0
         MaAyX+E2YiH7tzSQSO6T3Ss1Xl9r4XnObAcNzg1kqZhhE0omypk7L/IUIPwKkvYG0IOf
         bfEBITEuSk+cf065fOrrp86oaeAjNhPCQ6aII8EwCcEXBbyq8VjrP44K1Fz1ym5TLl6h
         2MlPBi3OfkRAh/nfsJX2ulOJq9bCwTKFrVOjKRfeQeEMnBZoarokBPlmFRHfLnIowBFY
         ukqQNMijK/zPcFTp+r8XCt8JvLVouaBgnzgfm1PGdQuqRiPCDWNRxhbeNy3mEEd2U2mB
         u3UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="azaA/Cc2";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y6si11176lji.0.2019.10.02.11.47.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 11:47:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 5so34712wmg.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 11:47:23 -0700 (PDT)
X-Received: by 2002:a1c:1a45:: with SMTP id a66mr3986539wma.102.1570042042540;
 Wed, 02 Oct 2019 11:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de>
In-Reply-To: <20191002120136.1777161-1-arnd@arndb.de>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 2 Oct 2019 14:47:10 -0400
Message-ID: <CADnq5_MLg=J5dmSGzx8jC=1--d2S3HJzWH3EHhyzT6da5a3wcA@mail.gmail.com>
Subject: Re: [PATCH 0/6] amdgpu build fixes
To: Arnd Bergmann <arnd@arndb.de>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="azaA/Cc2";       spf=pass
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

On Wed, Oct 2, 2019 at 8:02 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Here are a couple of build fixes from my backlog in the randconfig
> tree. It would be good to get them all into linux-5.4.
>
>      Arnd
>
> Arnd Bergmann (6):
>   drm/amdgpu: make pmu support optional, again
>   drm/amdgpu: hide another #warning
>   drm/amdgpu: display_mode_vba_21: remove uint typedef
>   drm/amd/display: fix dcn21 Makefile for clang
>   [RESEND] drm/amd/display: hide an unused variable
>   [RESEND] drm/amdgpu: work around llvm bug #42576

I've applied 1-5 and I'll send them for 5.4.  There still seems to be
some debate about 6.

Thanks.

Alex

>
>  drivers/gpu/drm/amd/amdgpu/Makefile                 |  2 +-
>  drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c              |  1 +
>  drivers/gpu/drm/amd/amdgpu/soc15.c                  |  2 --
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c   |  2 ++
>  drivers/gpu/drm/amd/display/dc/dcn21/Makefile       | 12 +++++++++++-
>  .../amd/display/dc/dml/dcn21/display_mode_vba_21.c  | 13 +++++--------
>  6 files changed, 20 insertions(+), 12 deletions(-)
>
> --
> 2.20.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_MLg%3DJ5dmSGzx8jC%3D1--d2S3HJzWH3EHhyzT6da5a3wcA%40mail.gmail.com.
