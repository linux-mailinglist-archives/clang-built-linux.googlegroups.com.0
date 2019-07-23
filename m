Return-Path: <clang-built-linux+bncBDPZFQ463EFRB5FE3XUQKGQEVP3KRQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9617E71F55
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 20:31:16 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id b14sf21117295wrn.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 11:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563906676; cv=pass;
        d=google.com; s=arc-20160816;
        b=H9Gq7PFreXQNbcyzysTHe5FmBpVNTBvPWhdVR/kbu6cQ9VcCU3EkuPjHqGGqpfjxMU
         iv0Fl+fRUfNFtWG9lFZaqn5HGBgFXGyBT+xmNQMfOfQYkxjT6KMAxG3D3D8Az3w2jfbL
         BkfR+pwSscfAcpTmzEiRGehQSrNkPBbNxU3yo8/KWvxbS7jSt9tKh4RnTWorHW785/4a
         PYp0afRXdkCDVOEku2Ekoi2iBaXyaz/H3/PYAW0DA7RuQpV6fw6IfDUBXYVtHOM32WHY
         kK9NBGDleNnWqcI1lwHOlZWZ34ED2zvlOLdR49lF092cPp+BHu6rEp9WF5+MiakiD667
         icbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=VXaWliy3T2R0JhLI7RyH2jODa+RQ7xEmz9e8JtuTnFM=;
        b=U7WSLR4YuNAZQlt45M2Pb2Xne4JQYTnpPWi8noSviVijj0Eygz7JpiZHUEPsDP8DDL
         vD/eMAQUsKw6rNDYcD8gEWPZscVtftD3Wsf8Puwq8gpx60Hv8ALNqenR8amN2/8wTBKX
         KQjaASjm3eDQ4wb2EOTlZTEuCkVPbl2hnI/KxMfmh3Vb68Ph2fqnAG+hxT7A969BqJgB
         2JzYr2HRWImw8RN5Rpz8/a9K6jzRJi+3rZ0i3anmlM4J8MHmmSCkH4MfWrdbRN2eqZ+H
         kIOWLd97n/eE0pF4PqKM9TlFixXo6YojSuPpm5FSgelNjj920aEw37uDNUa8MZZy+kGX
         r6Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qztMIXUX;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VXaWliy3T2R0JhLI7RyH2jODa+RQ7xEmz9e8JtuTnFM=;
        b=ccNxSa4Pgdy1Wat8bniyHHArDVsdB6faMm23exAoW+31iObdVq4EJJU7uZhiHem+j7
         nu/BfN+baJnz1cmJTerEXDekprbfNvm3dbZASSEuaV5pUZOqKrj9IU48WXw6jQ5kQahG
         kFI6l6DfjQgvT8Ntp6ii7+LY9jXrFnaMvg4l9l+hyPS1l+qx6I0DgmkIec2wfBzyyU4o
         zwlulyyhf72R3OAY/E0fCb/jkOlSszX2TxBI7BwOVd9KrCFy8nCGfMW97OzjyZ+mHeoo
         q4bahsZQ+6wjleCr9GkW5r87f4p0eorbp3r39xdPnvKyO2NFms1cFqegdmPlqE6noqgS
         GfEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VXaWliy3T2R0JhLI7RyH2jODa+RQ7xEmz9e8JtuTnFM=;
        b=lmBe115JOa+7GoSaixxO2vKQh/gWWRo5OVBjQ0j6fAvqlU3aiqI91WJycQBXO28gPf
         Oh4FKDVjFncbGK8spiTEdGI4mH57QjTbv86PXgZeJHPcSVySqyjDWodesSp/wZGsfU7x
         RpcJGvp6wNa+3LoeCpk839CMqT9lOFo9RU16S0bMCKDV0TfD3G0pL11VDzXpbLQHcwOI
         SCVzyenofOw+y5oFtnoJxOKmxUfMwVYz2c34VAILSsRx+ZeetXdRUjbqtw+P57iJ4mBY
         MQD74xailPeI4zzDlBkjvJtpohoBEtjGxSSR2swMMdTGnK7+Awg+2k409U3hRaynmVe3
         tRqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VXaWliy3T2R0JhLI7RyH2jODa+RQ7xEmz9e8JtuTnFM=;
        b=k8exeCoTTWaw5ZM7Tn9fWcAC9vANxINSwVZSqUbqhmluOwHeWUGbSOzKOAVv4hPgiK
         PDEJa049UZlca4ynRyZiej1kpzz75v1H+wJD5OGcZTM17qPDnyakAe1ltOSGxYTuwTPt
         1FzIqOthLkOedVAUiDUFbPjlCQt7kGnbAUjKsSNDoATOIW9w2KARVVQR125un5mFRZAw
         eqhBYp2gpxeeeNzx7oemQlv5I7KBQVrYmMHOJcIGqtA44EGgS/tZPryMFHsxAtih2OOU
         Hw5LWjXWbtZl/i8k7JSHD+7FZzc4UhkO40K89EXuKCHsBan6OfEWHqDsOifQa53eHCRV
         8u7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5wKkYRe+qJ1FlLarqji06rSFmu/zO8mkalync7DI5j0nYa6wA
	KQcBOcXhInDEHuUEGkYgR/g=
X-Google-Smtp-Source: APXvYqxzd5+TyHwpQtE56B9ECcXnncwScuSSq0+FVt+Lf19GmI70ot7HxvZgwHfgNiRvmVJgPTxRXQ==
X-Received: by 2002:a1c:be05:: with SMTP id o5mr71110713wmf.52.1563906676326;
        Tue, 23 Jul 2019 11:31:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5144:: with SMTP id u4ls13072483wrt.4.gmail; Tue, 23 Jul
 2019 11:31:15 -0700 (PDT)
X-Received: by 2002:adf:aac8:: with SMTP id i8mr7978658wrc.56.1563906675924;
        Tue, 23 Jul 2019 11:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563906675; cv=none;
        d=google.com; s=arc-20160816;
        b=K5BI5xr0YaEQPWag2DNZeTOLWjKUu3jQsrZBTZCLkqSGIcRYuaN+yxURyA7rcPbvoq
         NBSlikyVpfreqV7Y5JlOZ/T+mbjiCvHh7WD80iVrDLeAge2eIErMoCxZ15/wRPzejkKo
         mNeVRbEZh/k+R85n+z6LtTpPOM/HqjW9rlIdPtZhfO7AQaP9lyPrxsY53ySOf1UYV+F8
         3dL+3BqbTARurIwVyl8GoPQmjInP602I/WRxM+LuJwDLwzxM9Od3vfutYJAps1PbTg+Z
         vpnrUCOVljIUctN8pHXMT0FIe1JA+HAPmKRaNsKbjo54VpVgA3kS8ytu9geIykjILAm8
         l2SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tgcKZmsghA7oPWetYCkkd5OFkpIDAUtXqxPwI5yL+Wg=;
        b=zdJ0pWysIJLVUD1BxqTuggTzyqnjf7mY9EHdSgB9JXQ2VF3AUl3jdqwtpL+2UJCRUO
         D7iIPcb3nAd0k3sxi16XOqyXH1rZ5Wdybw3zzdwx9X1B8xOhb8E/8+Ov/TXvhv9ypPte
         xx21qIPKcsiNKdHjSgaalsmS/jmKqXEOnN6q+A/hJQkqbRXG7VlJN95V6rckIm7r+JQb
         WJf4qINvksdh1howmm4hLHxsmIEgjP0bsTNIhuTbc7r7yzHu+A681jVDv/539ry9rhxE
         jnH18ZWjD0iaPnBwr8eDv6sS7HYQbz4vBWQLLoj/FxB28RhVccDHXJTYK01+7PvmLe2M
         MEgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qztMIXUX;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b15si1467132wmg.1.2019.07.23.11.31.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 11:31:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id f9so44183697wre.12
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 11:31:15 -0700 (PDT)
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr6395667wrw.323.1563906675402;
 Tue, 23 Jul 2019 11:31:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190722223112.199769-1-ndesaulniers@google.com>
In-Reply-To: <20190722223112.199769-1-ndesaulniers@google.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 23 Jul 2019 14:31:03 -0400
Message-ID: <CADnq5_MA+oCYRWLyaJT+oQGwA2jDwfX554qNZoS6BtKmeSru1Q@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: readd -msse2 to prevent Clang from
 emitting libcalls to undefined SW FP routines
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Deucher, Alexander" <alexander.deucher@amd.com>, "Wentland, Harry" <harry.wentland@amd.com>, 
	David Airlie <airlied@linux.ie>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, clang-built-linux@googlegroups.com, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, Matthias Kaehlcke <mka@google.com>, samitolvanen@google.com, 
	Guenter Roeck <linux@roeck-us.net>, Arnd Bergmann <arnd@arndb.de>, Charlene Liu <charlene.liu@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, 
	=?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@amd.com>, 
	LKML <linux-kernel@vger.kernel.org>, "S, Shirish" <Shirish.S@amd.com>, 
	Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>, James Y Knight <jyknight@google.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qztMIXUX;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443
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

On Tue, Jul 23, 2019 at 3:16 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> arch/x86/Makefile disables SSE and SSE2 for the whole kernel.  The
> AMDGPU drivers modified in this patch re-enable SSE but not SSE2.  Turn
> on SSE2 to support emitting double precision floating point instructions
> rather than calls to non-existent (usually available from gcc_s or
> compiler_rt) floating point helper routines for Clang.
>
> This was originally landed in:
> commit 10117450735c ("drm/amd/display: add -msse2 to prevent Clang from emitting libcalls to undefined SW FP routines")
> but reverted in:
> commit 193392ed9f69 ("Revert "drm/amd/display: add -msse2 to prevent Clang from emitting libcalls to undefined SW FP routines"")
> due to bugreports from GCC builds. Add guards to only do so for Clang.
>
> Link: https://bugs.freedesktop.org/show_bug.cgi?id=109487
> Link: https://github.com/ClangBuiltLinux/linux/issues/327
>
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Applied.  Thanks!

Alex

> ---
>  drivers/gpu/drm/amd/display/dc/calcs/Makefile | 4 ++++
>  drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 4 ++++
>  drivers/gpu/drm/amd/display/dc/dml/Makefile   | 4 ++++
>  drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 4 ++++
>  4 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/calcs/Makefile b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
> index 95f332ee3e7e..16614d73a5fc 100644
> --- a/drivers/gpu/drm/amd/display/dc/calcs/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
> @@ -32,6 +32,10 @@ endif
>
>  calcs_ccflags := -mhard-float -msse $(cc_stack_align)
>
> +ifdef CONFIG_CC_IS_CLANG
> +calcs_ccflags += -msse2
> +endif
> +
>  CFLAGS_dcn_calcs.o := $(calcs_ccflags)
>  CFLAGS_dcn_calc_auto.o := $(calcs_ccflags)
>  CFLAGS_dcn_calc_math.o := $(calcs_ccflags) -Wno-tautological-compare
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> index e9721a906592..f57a3b281408 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> @@ -18,6 +18,10 @@ endif
>
>  CFLAGS_dcn20_resource.o := -mhard-float -msse $(cc_stack_align)
>
> +ifdef CONFIG_CC_IS_CLANG
> +CFLAGS_dcn20_resource.o += -msse2
> +endif
> +
>  AMD_DAL_DCN20 = $(addprefix $(AMDDALPATH)/dc/dcn20/,$(DCN20))
>
>  AMD_DISPLAY_FILES += $(AMD_DAL_DCN20)
> diff --git a/drivers/gpu/drm/amd/display/dc/dml/Makefile b/drivers/gpu/drm/amd/display/dc/dml/Makefile
> index 0bb7a20675c4..132ade1a234e 100644
> --- a/drivers/gpu/drm/amd/display/dc/dml/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dml/Makefile
> @@ -32,6 +32,10 @@ endif
>
>  dml_ccflags := -mhard-float -msse $(cc_stack_align)
>
> +ifdef CONFIG_CC_IS_CLANG
> +dml_ccflags += -msse2
> +endif
> +
>  CFLAGS_display_mode_lib.o := $(dml_ccflags)
>
>  ifdef CONFIG_DRM_AMD_DC_DCN2_0
> diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> index e019cd9447e8..17db603f2d1f 100644
> --- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> @@ -9,6 +9,10 @@ endif
>
>  dsc_ccflags := -mhard-float -msse $(cc_stack_align)
>
> +ifdef CONFIG_CC_IS_CLANG
> +dsc_ccflags += -msse2
> +endif
> +
>  CFLAGS_rc_calc.o := $(dsc_ccflags)
>  CFLAGS_rc_calc_dpi.o := $(dsc_ccflags)
>  CFLAGS_codec_main_amd.o := $(dsc_ccflags)
> --
> 2.22.0.657.g960e92d24f-goog
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_MA%2BoCYRWLyaJT%2BoQGwA2jDwfX554qNZoS6BtKmeSru1Q%40mail.gmail.com.
