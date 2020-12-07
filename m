Return-Path: <clang-built-linux+bncBDPZFQ463EFRB5NJXL7AKGQEQFFR3SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B43832D1AF0
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 21:47:50 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id g67sf9650312ybb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 12:47:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607374069; cv=pass;
        d=google.com; s=arc-20160816;
        b=u12HJjh0CjHdnJFUNQCuEtalv/T1kOLUQ5Uo5BKwoUrBKTfFjRcOoTstJgwOaODbl1
         PDaRasiPS9mLI8imMBB7Vuk5nZDCVoTrgS1m8fxxB3Kyamsu13xfao3f1rPPReRvBl7b
         ml8hULrWFXTwZ36FfTtLHFAH3UvDY0j98oIa5oRzNLLb1o2cJ2H5GaO47RHSBJMFa80Y
         AO6KyPFvNkM8XONKsFpwSgBUIErAJWzYfINuz5t9aNYawsUg5tDGTrSD5xvGARGkCqb6
         8kAadzTkuMhwqcYmSx2+WZClspWeTA8kZSe/4t4XSzrR0JOtyz9rR686cIXqwRwCaWxW
         Dyxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hDE9GjhwKg9Xptb/TySw0rqC1FpvcPZIc76k61ROXG8=;
        b=Te5gbiVlnz0Us5BYPnqHD4632+XeJFGp0iafRTkxhqQGyUN9IRYZxEalUGW/abho18
         AgUx8HbYXM9TxQrZbv2NiW/iplA5Gd3Ka1jIpZ0utT0+XUCZx/DR/bNB8auzKhkp3FtN
         Mu/eeYj731jdOTwqbsk0pyWvGT/oQh0iJcvIORz4hoJliCm6/E1+VxBSwZmsHg5pshQ5
         lfd8mAKl1gncbP3K5+odrQupGvGVW0Tl2kU3FvuWo3tT7ujRmHZWGnFNASCSTk8cWzNk
         rfvMNffI+R4YLMLl0iBOGc0dB/9sWIJO8gQX/1j5lFrwkLuyRBGDoaxzB6uybCLE+mWx
         VeCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4EeiBVT;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hDE9GjhwKg9Xptb/TySw0rqC1FpvcPZIc76k61ROXG8=;
        b=ioPqPmkciX3ID3cPJKR/6q+OGdpeJtg98KE6uZ1kd4YPofZUdQDCcSkUCSO1wef7Al
         upZztg0zm3KmN3I7zePX6AU0VVM3jzLbggIJVQKBp1Q94lA/1P+FQEh/f6nrkudxI9X4
         aGQdxX/TIol+1vgqdPML/wmlBwOTz6rc+3ywAlUQakA7Kg41DLEaR2s58M8hdyCvULmJ
         sHavurbziaFdu0rNHqa20AHnpdME/p/+8/O2dRpus05C9hxXJlTh7tWOiDmCjoLcjd5n
         V1VWI/c7WzSInzrD4/tLLNguo884apmOfAYGzD5+HQEClyy+5jhi7zryBBXpDFxf98Gl
         HOBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hDE9GjhwKg9Xptb/TySw0rqC1FpvcPZIc76k61ROXG8=;
        b=Td63kIH6UbAl2uMAkTOCoVfZdECd5Z40ILlELFRrWPI9e3xjmwadALcTEsQ8pLAOrC
         69KIo+qur2lYpa5TidXweXfJoQ20CPxicS11D4l7rnVLyFleTqOPcrTiLNIXVvirPKFV
         lIs9xFzaopj+osZf/Op12ESD1c7wOp2tNAFCnqVeuWlTTi8Epo1j91r/9rxsnXwacGCq
         DNnjLAF7nj1ic9p5QKehtmwXoG35ZFoVRH0Lzvy9RDy42BGYVOoTQ6kTpA4k29z5Xutx
         EUkhHaUFsrWo8VqiAmBKTKIOC2SPBRcEHDpEDkceYdgQZt7F1myyKcydpCRi1xkAOjZg
         bx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hDE9GjhwKg9Xptb/TySw0rqC1FpvcPZIc76k61ROXG8=;
        b=jcvwbYq37L5VVg/BVb+ZCi7iPX1PxB/PG4RIeDhRnWHVlCbd1P5caewfyo0aBfZVFx
         qUPrzF65JmuOddys/6EFjwjp6MHsk4qRpV/rB5hqBuKwL5EeCjCyN769pOz8YHNBcGzv
         N+GVffWcjAHDVD5gVn6RYaJfabtgQvDPM0fLergsXVi5qol+PUgLbkuCZ/A6sjttKfCa
         BEeRRHkVZayx7P8ktiRlNzQ2KwQGFdQUfIg787NQJ+LyqO24NyEibRiEAh9mlsbS0W+n
         Ya+Mq3hjCgdNvVWM9x9DbLKKh6yo2Fp15sJYL1A/hwoC0iZzdaCSTLCz1IW5CE82Cq4i
         uB5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531P/AaVi49ufvrDFAieQC4dOl3SgyUusJ75Aa4Xx9lzgJis+11R
	/fPCDk9PYWHkjXTEqZ4MmHU=
X-Google-Smtp-Source: ABdhPJy8SVsBBPRBJ2NhNO3U069i2Vr6MxLE1SkMnDv7MEYGkdUCmZDK/v75PXMC3UdVz45R8y7jMQ==
X-Received: by 2002:a25:ec08:: with SMTP id j8mr26523686ybh.237.1607374069790;
        Mon, 07 Dec 2020 12:47:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b581:: with SMTP id q1ls8618384ybj.6.gmail; Mon, 07 Dec
 2020 12:47:49 -0800 (PST)
X-Received: by 2002:a25:b11:: with SMTP id 17mr26705236ybl.203.1607374069226;
        Mon, 07 Dec 2020 12:47:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607374069; cv=none;
        d=google.com; s=arc-20160816;
        b=Sy3clHBFfRwpCgl8sZyCpnhV2HJRO2MPF9za/DJiwoaMoJHMQHNxHFLxyna9wLdK0o
         LvzaUhWcw/1D2KTG9ecQ0Eu8sL3h/oBvayW6nxiX3DBD7UdyXHJfl/L6zRtob3SjTgRV
         Up0/nhcgRJyZXhAATy/uebP0Kd/kHhkaK7rQxT4UhY+hI8UIqogbpxYSXVC2jg80iwAf
         W818Nfnn25638/qVqbUPsTVT8m4+CoPeRQWJ+9IgTYs2AxxHaeg0g1rPimT2BpRqKokf
         HSIHE+1kv/zwzMz5GLNmKkm2OrxkietiEBZEZh6jKRmZin8lYYxjLc3MdqdrdCWIfj4j
         j3Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O8MHc0bkaqtEgfXzX9IcijUfPytzNuGviQ8Ld2feZE0=;
        b=cK3qy7HpaB+I5s5SkmJX0mcA8X08TYID4pHWptxTr1BAzM1FxhJc1U+coqMRtts+wI
         7dvsBvjwmewvjk1rU3D1CxAc7A1g20aN951W2UZfeFCjC6KNRoUAEieBO3nf1OuQn48K
         8uBAhYezS+kkv5sv9Ou0tRUy8qNuTvIRLglN45KDuHt4/tCKXW/pzlq5tOcch8DgzP4g
         LC6UUePovrMpArbiQaEdZ1k0WCMMbmHnS/niEqrVqbZ5I3c4S08CidrtI9HTiBrBehmx
         cH+QhO4RVlyRXFU3oWFZx9TlaQjLq46N7QgKUuLY7V11P+1oI4ufsSv3Hb7eaJoh11nY
         74fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4EeiBVT;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id k6si117187ybd.5.2020.12.07.12.47.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 12:47:49 -0800 (PST)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Received: by mail-oo1-xc41.google.com with SMTP id s1so273165oon.2
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 12:47:49 -0800 (PST)
X-Received: by 2002:a4a:330b:: with SMTP id q11mr7063370ooq.90.1607374068633;
 Mon, 07 Dec 2020 12:47:48 -0800 (PST)
MIME-Version: 1.0
References: <20201204081349.1182302-1-arnd@kernel.org>
In-Reply-To: <20201204081349.1182302-1-arnd@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 7 Dec 2020 15:47:37 -0500
Message-ID: <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: make DRM_AMD_DC x86-only again
To: Arnd Bergmann <arnd@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
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
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M4EeiBVT;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c41
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

On Fri, Dec 4, 2020 at 3:13 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> As the DRM_AMD_DC_DCN3_0 code was x86-only and fails to build on
> arm64, merging it into DRM_AMD_DC means that the top-level symbol
> is now x86-only as well.
>
> Compilation fails on arm64 with clang-12 with
>
> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3641:6: error: stack frame size of 2416 bytes in function 'dml30_ModeSupportAndSystemConfigurationFull' [-Werror,-Wframe-larger-than=]
> void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
>
> I tried to see if the stack usage can be reduced, but this is code
> that is described as "This file is gcc-parsable HW gospel, coming
> straight from HW engineers." and is written in a way that is inherently
> nonportable and not meant to be understood by humans.
>
> There are probably no non-x86 users of this code, so simplify
> the dependency list accordingly.

+ Daniel, Timothy

Others contributed code to enable this on PPC64 and ARM64.
Unfortunately, we don't have these platforms to test with within AMD.
Does PPC64 have the same stack limitations as ARM64?  Harry, Leo, can
you take a look at fixing the stack usage?

Thanks,

Alex

>
> Fixes: 20f2ffe50472 ("drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v3)")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/amd/display/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/display/Kconfig b/drivers/gpu/drm/amd/display/Kconfig
> index 797b5d4b43e5..54aa50d4deba 100644
> --- a/drivers/gpu/drm/amd/display/Kconfig
> +++ b/drivers/gpu/drm/amd/display/Kconfig
> @@ -6,7 +6,7 @@ config DRM_AMD_DC
>         bool "AMD DC - Enable new display engine"
>         default y
>         select SND_HDA_COMPONENT if SND_HDA_CORE
> -       select DRM_AMD_DC_DCN if (X86 || PPC64 || (ARM64 && KERNEL_MODE_NEON)) && !(KCOV_INSTRUMENT_ALL && KCOV_ENABLE_COMPARISONS)
> +       select DRM_AMD_DC_DCN if X86 && !(KCOV_INSTRUMENT_ALL && KCOV_ENABLE_COMPARISONS)
>         help
>           Choose this option if you want to use the new display engine
>           support for AMDGPU. This adds required support for Vega and
> --
> 2.27.0
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_OmAVZGuz%3DxHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ%40mail.gmail.com.
