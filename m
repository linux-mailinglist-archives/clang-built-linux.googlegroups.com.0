Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLNMUPUQKGQEDHV4P4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id D714167535
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 20:49:18 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id p193sf4330306vkd.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 11:49:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562957358; cv=pass;
        d=google.com; s=arc-20160816;
        b=LWE1pjMsZyNaFDbjF7eR+fcSYSq0oY3LklONZ8ZaDmCwZEdPHmg3IdKqrqIDeXSPGJ
         fBQg3w6qn1qJjP+LsO2sSc0sic+U/qCYJkZ80y5cmdTqCMYJZAoPtMafvDsQG01XFCHX
         N6Z4ltowqFyqZLqi6cnjk/8ZiHhFmEScaJUcMFIuRZJgcXOGoo11u3ppI3bVTGOszzYU
         MyyXgLw378hPECnqY5xGxZ00k/pykjFphROUy/Uk2Dh7q868INiI5DEM6xsFG+E1dQg0
         mPz98SP1OGSHhH3Sq3xhWDLSlYdPq569OrSoWwyqnFKdsO9OX71Smt0B67cL2QOQyu7t
         6b4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Jv+6BGoBjIDQuesHNn44fDn0QhrVSv2FcOyqaRrC/I8=;
        b=WaBQLT+vPwyAb2TAO1IbyvNws4lMeJx7+SgNh5Wqs02PursouAcJc34rMkfQJbWgv+
         /qFNRKSqJ5MZFX7/dPGMOSccrNkEZER/bqtRVMlYVmHeC0BHgxGAmfY0rGWZKqyxYtpW
         0YyRa9VKndWDtfIeBOnz4sWxx7zUbjt/oHy0Dvco6F86YJA3EcDgeJhdd+sk0jTUW+89
         xCPl/hvdAUDy8eCXBTQV+YlFfKNX5T2utuOcvAHxW+Bds+8QKtjkXUd28GaI+VtOFkxX
         gJjdJUamtovM16/pdHfow6zELu3UAfRmxvwmxoQCMBXjB/r6B91H52VRPMsbFEEjwRw1
         T6mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PShQDYtf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jv+6BGoBjIDQuesHNn44fDn0QhrVSv2FcOyqaRrC/I8=;
        b=gdBsJTYm29DCKJVSJ7sUMx66tNxOb0VTklFjVa05P7N3bzT8H8gGo4XshIu3xLnXaa
         W7Z+v7muJIWjDT/GwRPmnBoznyn7K0NV4qArkNu7H8yaH3OHcqwFe6Up7nJqTf6iwSpc
         G5D8nvxkKUcTfvNzKmq1CZTJk5SE+1gJP8q9s8yJEATqQkXaoJstYb3OCN8VGmmtRCRP
         zOz2fBSRVtQD6XTjOOVNkNueQ/tSP7mW7A85mQJskyL9EucXQaLZBB5nxJeN33rpzw1L
         W4CUXvChXzxqzuSb+ztF6BUCXyo018ZG/sZ7wjk/DMlgNcyEc5N/BqbJgywk2MVSoPOK
         bCBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jv+6BGoBjIDQuesHNn44fDn0QhrVSv2FcOyqaRrC/I8=;
        b=qwZHojzLZRSpRScT67qUf16LyhTBIB9s/pFgUjPjlEhcSq4vp06n+Kt8/RRqpmv0gw
         OtdBWRGqQ9E1/Mc0oQLLI7A2xYD62xFFWPn+rDo+iYjZuhj/CDdwTEkxV2VMmqk9W9Vn
         kxtECME5hIVtb3+JtzuF+nAaurzDkObf8osL1+h6jS6mvaKvL/opj6i/HYh/ANLFaNHb
         S4ionOlwKsuB/Y9gKM488SCaRU/TLzreV1xUTzQExRF7tlf9yAcw31stjP4rg7GNB2p+
         YiTpNcTBuulIt2CVNDMklHzxZV5z4nYNKIEb5ziD8iq8Rirf7csLn7n1mvwzc4N0dld0
         5myA==
X-Gm-Message-State: APjAAAWda7qpk/CytUkanZ94pgurhWcWNqYQK/1SggIrH0O+YXF5TAD7
	/nHBvR+gJd4WiIoys4oiYjk=
X-Google-Smtp-Source: APXvYqyzRGhghgT57iCHA090yR+voDu/vBG9fZxPIZjl6XGy0WNDX0ScFwu7Z2HtWPgMr8OXtjkYIw==
X-Received: by 2002:ab0:614d:: with SMTP id w13mr9253154uan.66.1562957357942;
        Fri, 12 Jul 2019 11:49:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1661:: with SMTP id l30ls881933uae.15.gmail; Fri, 12 Jul
 2019 11:49:17 -0700 (PDT)
X-Received: by 2002:a9f:3770:: with SMTP id a45mr9707246uae.64.1562957357692;
        Fri, 12 Jul 2019 11:49:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562957357; cv=none;
        d=google.com; s=arc-20160816;
        b=godNLg2ZS8cL7/ngT/UH/ieBstIoL8aiBk+lxTkY/xmJ7xf+DKQVQ2bHk9k5ZijbnX
         Ng5jfaKRllr3I8YLdCE2mDTPr7cFERQmLnz/asVZBwujY93AbQFG/1KqLF8+0Mn3LsF/
         5WFKVCgdg6HvVfhgLnuiMH70nF8+rvfkOMvgqqi6UIFExkp4yJnEStY2plDJQQLjpI7Z
         9v7A3oPhYCi02lNS9omvQWZzea9t+Uxy1W3cP3EAd5RpV3F+/eehlKu3N4FjxmOIeAVf
         Rpm06daokY6EC/JVTqbneBBt5D5BF0hFDxKp+nq6kG9QumSRtaDGGboZDrIGTr+/t8pQ
         3+0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MRVC5IMZoa5o9Lk6/1pZnpghBb7QNpMZIqJdxQxjH40=;
        b=fAg0lXdRCuEpx6M9A6b2hEKccGHN2BuRji375iqV58HUpcbLBC20E6rAKS4ecJfJrW
         pDVlV8UzNb9mxAzsL+N8tXaDBtZxa+D25spZM4F3Nqp3N+LbJcBenYFoCtElyB0U8NSq
         bOULd2ExUTj/23IOvsk83wSEysiZzlgi16uqRzarfIWz/6UTJmVr60ZMostQzsXjcuH6
         LgGBlbXJvpgGqqwM9WOJaWMd+z0miSUbVF9IOENTLv98SCKnGMhEz5+hC1WAeROXJTEq
         l1lUl1iFvkUFeVC4gn0BfScUr1g3iUY/yuIVJq30bKS/1sWOs9eE5p4Nd8sLK1s9DkE3
         tAIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PShQDYtf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id u189si710041vkb.2.2019.07.12.11.49.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 11:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id c2so5154155plz.13
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 11:49:17 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr13242312plq.223.1562957356404;
 Fri, 12 Jul 2019 11:49:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190712093720.1461418-1-arnd@arndb.de>
In-Reply-To: <20190712093720.1461418-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jul 2019 11:49:05 -0700
Message-ID: <CAKwvOd=Xdp_=G3UU9ubayeTvkKCJ9hak0a-7yK90-RPUBQKrpw@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Support clang option for stack alignment
To: Arnd Bergmann <arnd@arndb.de>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>, Duke Du <Duke.Du@amd.com>, 
	Charlene Liu <charlene.liu@amd.com>, amd-gfx@lists.freedesktop.org, 
	dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PShQDYtf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jul 12, 2019 at 2:37 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> As previously fixed for dml in commit 4769278e5c7f ("amdgpu/dc/dml:
> Support clang option for stack alignment") and calcs in commit
> cc32ad8f559c ("amdgpu/dc/calcs: Support clang option for stack
> alignment"), dcn20 uses an option that is not available with clang:
>
> clang: error: unknown argument: '-mpreferred-stack-boundary=4'
> scripts/Makefile.build:281: recipe for target 'drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o' failed
>
> Use the same trick that we have in the other two files.

Maybe time for a macro in Kbuild.include or some such, if we see this
pattern being repeated?

>
> Fixes: 7ed4e6352c16 ("drm/amd/display: Add DCN2 HW Sequencer and Resource")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/amd/display/dc/dcn20/Makefile |  8 +++++++-
>  drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 16 ++++++++++++----
>  2 files changed, 19 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> index 1b68de27ba74..e9721a906592 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> @@ -10,7 +10,13 @@ ifdef CONFIG_DRM_AMD_DC_DSC_SUPPORT
>  DCN20 += dcn20_dsc.o
>  endif
>
> -CFLAGS_dcn20_resource.o := -mhard-float -msse -mpreferred-stack-boundary=4
> +ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
> +       cc_stack_align := -mpreferred-stack-boundary=4
> +else ifneq ($(call cc-option, -mstack-alignment=16),)
> +       cc_stack_align := -mstack-alignment=16
> +endif
> +
> +CFLAGS_dcn20_resource.o := -mhard-float -msse $(cc_stack_align)
>
>  AMD_DAL_DCN20 = $(addprefix $(AMDDALPATH)/dc/dcn20/,$(DCN20))
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> index c5d5b94e2604..e019cd9447e8 100644
> --- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> @@ -1,10 +1,18 @@
>  #
>  # Makefile for the 'dsc' sub-component of DAL.
>
> -CFLAGS_rc_calc.o := -mhard-float -msse -mpreferred-stack-boundary=4
> -CFLAGS_rc_calc_dpi.o := -mhard-float -msse -mpreferred-stack-boundary=4
> -CFLAGS_codec_main_amd.o := -mhard-float -msse -mpreferred-stack-boundary=4
> -CFLAGS_dc_dsc.o := -mhard-float -msse -mpreferred-stack-boundary=4
> +ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
> +       cc_stack_align := -mpreferred-stack-boundary=4
> +else ifneq ($(call cc-option, -mstack-alignment=16),)
> +       cc_stack_align := -mstack-alignment=16
> +endif
> +
> +dsc_ccflags := -mhard-float -msse $(cc_stack_align)
> +
> +CFLAGS_rc_calc.o := $(dsc_ccflags)
> +CFLAGS_rc_calc_dpi.o := $(dsc_ccflags)
> +CFLAGS_codec_main_amd.o := $(dsc_ccflags)
> +CFLAGS_dc_dsc.o := $(dsc_ccflags)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DXdp_%3DG3UU9ubayeTvkKCJ9hak0a-7yK90-RPUBQKrpw%40mail.gmail.com.
