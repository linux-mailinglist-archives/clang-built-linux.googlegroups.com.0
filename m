Return-Path: <clang-built-linux+bncBDPZFQ463EFRB7ORXOAAMGQEG6KA4NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE3030273A
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 16:51:26 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id z51sf6296822otb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 07:51:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611589885; cv=pass;
        d=google.com; s=arc-20160816;
        b=ysMbvS/6AmV68FHWVZ9ndhOADohmjyoOLv+eXo8tRAi5sBa5wpB5iwScFl5sGp3z7m
         Tvrm1O5Z+k470vjcVvCX094BuAE5D0YP2NRm6XHTCyDd5MLUpv4mCNVcyA6kbcrVgcTQ
         AcNwvkwDxWMBu5l08/WOit5RyyvYSi3JBGEFMqn2pwvUb2XzaVk/iigyeokn0gzVSKi5
         XIyijZ4VRM5nZMMWR24u6hnbT4/UxjOA0GUhxefu+Uqmxefj0dhLAJEZvMfzMoctJOQ7
         xBGa25dr1KdnxZ/lThhvlvqQaAbQDEYL7gox1KaLI163b9n42o4NxMG2lE0K5W2wQ4Af
         g80Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SxLvqiFza70OzG6B8ya5t247YqIuW6V1Kqo5lXG5srE=;
        b=R8EOdw6I+05fxgyjxkOOOhg9V+DEASsEZ6dJbj9zWNoGOWePpwBNh3/XSEfqwzLO0W
         0dPKiIKRdxh+7EDUGjohbzouasmwNAhjUaWYtaWP9b1BkHEWa6qlwRzgEYdHl31IDd++
         CfSMZqqFZrckSiwy/lrJsOcucjgj7dfI7kqoOz8xuOJUeUzLdL1wtqZPUA8WZvCwRVw6
         ACfUCdRo4uUKHc2lpUklfQoSemey7aOWZ1TRrjGijS/cuoIFlgsi+u1fyit3kpjfpC5U
         Ha3OUT6ye1pz8QNZ3wnFC/M+oitJWd/pEdxYb4+fJ8RTfExuarznLmSzZQ3YOiNfa8ZT
         3QBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZcxU7anJ;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SxLvqiFza70OzG6B8ya5t247YqIuW6V1Kqo5lXG5srE=;
        b=YiM3hKaVZM/0vXcZsYB6nyEOkfEYvha+kSMtfEwxrDcdNgcKHjgxCYq4wP4GnkVajV
         6KV2sbVSOFLLC1bHNq0mKhs3mUrO+d6vkAiqGvJ0enklxtOeqTH0rUOlxrMOC4+sV4TH
         fnvoCxzw7WHKcFIVCXWhWrzzjl08oAGGMyQ6nc9sLl+53fsH84OKKbwaZjrlmkAJcv7I
         SU/YFfa2kxRKX9T4aOv7Com5z/95wqzmaGtAnPlvI/grn9UJyCyTFz0fjX8VHK/zflf7
         knGm97tCMt3AX9rzmlTLq8jK3jLgJoyKDxnGdOoLBZK864XSmarHrGsWqsj0L5nxVaMB
         5igg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SxLvqiFza70OzG6B8ya5t247YqIuW6V1Kqo5lXG5srE=;
        b=cCGFrNvSqI5iY2rlHiRt9OSKOiP/AO75/KNFfROZbn3fCDfdz1Xp1KfphDeZrnjAoC
         G8a25s50meMkxrht9fk7sF9nG/TkCkNkztwMzbG/bbDKPrUEAT7uZX/owtw5xNPzBXxV
         DkvxmRaVGmw4QgVBN9DLGD27Gg0tE6YHbE7pSxV4I977lBS/grYJtOhVTiixKLHeddvz
         EFbOkp93nZm5u9BfIxUi70//leIBLX9evnrnxjY2y3xuoo5PdVzYHAs/XeacOzEg+yXF
         axkAoQqukBmhwEfpJu9whBFl2B7hrTDwcOqVLNgNRNAUmc1lszDn9T64fmyrtPzhHamX
         zpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SxLvqiFza70OzG6B8ya5t247YqIuW6V1Kqo5lXG5srE=;
        b=hu089b/zOZJc9oWr2ue9qCt2yrc1crKp2Tix16bZLgw+ol8duO9ikzMfc6L9aBg95t
         2ktZr1U0Ks1DsBImwIz4+Z7RTxRm/TWbtdhowGd5w2agYfvKqZR5W8D81o6WJAPcLtmR
         Eo/WiVJbocvb4GqXlc6rnNJ9Lrb81TXUlusvKF8XhTy9xmqUSSrk5+83oTtIH12xKnUc
         9heEc0+JzeepOpVRrPA3exWqhuiMcSLlL5E0UJ96eLn9z+AvOaV1fWxuo7BwkA42/pUt
         kbNPrM/CGDbafcv+6ZA9H1cvf4kkdP55Wkd6B2/tOLyNmD8u3u9krC5REqhZO13gbhw2
         vxxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kogxycjG9icopAJowIY7XgbfaAnB0pRlkMG8dLCSrd2SRSCM9
	aj7/pkR71i/ZO07wuZS6DW4=
X-Google-Smtp-Source: ABdhPJwB82NXdriSGY9ZQ36hQWak8rkmHwqkt1Ban/AamfaD0+nIxBJ8YEW/udqV/YhK1+HddM7nMw==
X-Received: by 2002:aca:a9d3:: with SMTP id s202mr507028oie.140.1611589885317;
        Mon, 25 Jan 2021 07:51:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cc51:: with SMTP id c78ls3313873oig.5.gmail; Mon, 25 Jan
 2021 07:51:25 -0800 (PST)
X-Received: by 2002:aca:ac12:: with SMTP id v18mr522768oie.14.1611589884915;
        Mon, 25 Jan 2021 07:51:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611589884; cv=none;
        d=google.com; s=arc-20160816;
        b=mxZ4oh+irnoH7P0wJ2aVd9IV11WGiUtavoLkTffad+3TBtiiYQKXZ7MUzfTL3EaITf
         XCf4RAmO5Ubc3kSnUmh9dHz5o+O140+gotM24NQ1svWdmnvg7tnZOqdAeszrfRYbtvG3
         bAefCQplgj22j58UxKZxrt5vpNjVUcJfs21S9NKVzQ2tcMz9y4vQmDNr9ZdONQzDcplB
         4mhNTDL3ACULlxBd0S5FpWAOEaHovyy9u1VpmvmPAXuycZiQupOzEUvKWedaHiL7Oxwk
         Fxx/9QQtJwfMMbY3wPc9NyrTj4GPAJGPC9AdIvBKEF396Zh6K4QSCFDBkOWTgB+n5UFM
         gqHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AnH8Zx3d2Pw4vQ7JjSbzPf+jFEKtnCEURYKMXZ7izF4=;
        b=op1w+dBjSUWoOUQG8zSIY6/QLe5XJqAHSCL4C50FHF/cAELzKpnJZSMwbnWuTi+RUu
         vXyQneVrtjNtYI4gTRJNe+bVatGWlBtlCXPqSH26kpyhlJx/IqdOW7eovYYcROatUX3a
         eMv8lAbfwhViM5MqnA2R+F5a0gK5WeMMTzSBhRjI5gCse1WAPiDX/Z7hkrSQ283Apuze
         c6dnKUpAffybCXBUENcG6MnDPHWjpcg8+JldavX0oU6EqsMAxjJ5z+2h/JXllRIdaQt/
         AJtHTF6gpaFgWUS0YzePpNVf9KiG4Awj3zgay0/CUF3d7O3P3v515ghk03Zgk961Y4Vq
         U2RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZcxU7anJ;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id k4si1094706oib.1.2021.01.25.07.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 07:51:24 -0800 (PST)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Received: by mail-ot1-x32f.google.com with SMTP id 36so13166942otp.2
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 07:51:24 -0800 (PST)
X-Received: by 2002:a9d:784a:: with SMTP id c10mr931304otm.132.1611589884729;
 Mon, 25 Jan 2021 07:51:24 -0800 (PST)
MIME-Version: 1.0
References: <20210125122402.4036126-1-arnd@kernel.org>
In-Reply-To: <20210125122402.4036126-1-arnd@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 25 Jan 2021 10:51:13 -0500
Message-ID: <CADnq5_MLYdu+cY88yzmv+D6A0twg64C0vLBEhPazCgGseEWg=Q@mail.gmail.com>
Subject: Re: [PATCH] amdgpu: fix clang build warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Joshua Aberback <joshua.aberback@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, Roman Li <Roman.Li@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nirmoy Das <nirmoy.das@amd.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, Will Deacon <will@kernel.org>, 
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZcxU7anJ;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::32f
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

On Mon, Jan 25, 2021 at 7:24 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang warns about the -mhard-float command line arguments
> on architectures that do not support this:
>
> clang: error: argument unused during compilation: '-mhard-float' [-Werror,-Wunused-command-line-argument]
>
> Move this into the gcc-specific arguments.
>
> Fixes: e77165bf7b02 ("drm/amd/display: Add DCN3 blocks to Makefile")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.  Thanks!

Alex

> ---
>  drivers/gpu/drm/amd/display/dc/dcn30/Makefile  | 6 ++++--
>  drivers/gpu/drm/amd/display/dc/dcn301/Makefile | 3 ++-
>  drivers/gpu/drm/amd/display/dc/dcn302/Makefile | 3 ++-
>  3 files changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn30/Makefile b/drivers/gpu/drm/amd/display/dc/dcn30/Makefile
> index c20331eb62e0..dfd77b3cc84d 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn30/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn30/Makefile
> @@ -32,8 +32,8 @@ DCN30 = dcn30_init.o dcn30_hubbub.o dcn30_hubp.o dcn30_dpp.o dcn30_optc.o \
>
>
>  ifdef CONFIG_X86
> -CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_resource.o := -mhard-float -msse
> -CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_optc.o := -mhard-float -msse
> +CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_resource.o := -msse
> +CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_optc.o := -msse
>  endif
>
>  ifdef CONFIG_PPC64
> @@ -45,6 +45,8 @@ ifdef CONFIG_CC_IS_GCC
>  ifeq ($(call cc-ifversion, -lt, 0701, y), y)
>  IS_OLD_GCC = 1
>  endif
> +CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_resource.o += -mhard-float
> +CFLAGS_$(AMDDALPATH)/dc/dcn30/dcn30_optc.o += -mhard-float
>  endif
>
>  ifdef CONFIG_X86
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn301/Makefile b/drivers/gpu/drm/amd/display/dc/dcn301/Makefile
> index 3ca7d911d25c..09264716d1dc 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn301/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn301/Makefile
> @@ -14,7 +14,7 @@ DCN301 = dcn301_init.o dcn301_resource.o dcn301_dccg.o \
>                 dcn301_dio_link_encoder.o dcn301_hwseq.o dcn301_panel_cntl.o dcn301_hubbub.o
>
>  ifdef CONFIG_X86
> -CFLAGS_$(AMDDALPATH)/dc/dcn301/dcn301_resource.o := -mhard-float -msse
> +CFLAGS_$(AMDDALPATH)/dc/dcn301/dcn301_resource.o := -msse
>  endif
>
>  ifdef CONFIG_PPC64
> @@ -25,6 +25,7 @@ ifdef CONFIG_CC_IS_GCC
>  ifeq ($(call cc-ifversion, -lt, 0701, y), y)
>  IS_OLD_GCC = 1
>  endif
> +CFLAGS_$(AMDDALPATH)/dc/dcn301/dcn301_resource.o += -mhard-float
>  endif
>
>  ifdef CONFIG_X86
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn302/Makefile b/drivers/gpu/drm/amd/display/dc/dcn302/Makefile
> index 8d4924b7dc22..101620a8867a 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn302/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn302/Makefile
> @@ -13,7 +13,7 @@
>  DCN3_02 = dcn302_init.o dcn302_hwseq.o dcn302_resource.o
>
>  ifdef CONFIG_X86
> -CFLAGS_$(AMDDALPATH)/dc/dcn302/dcn302_resource.o := -mhard-float -msse
> +CFLAGS_$(AMDDALPATH)/dc/dcn302/dcn302_resource.o := -msse
>  endif
>
>  ifdef CONFIG_PPC64
> @@ -24,6 +24,7 @@ ifdef CONFIG_CC_IS_GCC
>  ifeq ($(call cc-ifversion, -lt, 0701, y), y)
>  IS_OLD_GCC = 1
>  endif
> +CFLAGS_$(AMDDALPATH)/dc/dcn302/dcn302_resource.o += -mhard-float
>  endif
>
>  ifdef CONFIG_X86
> --
> 2.29.2
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_MLYdu%2BcY88yzmv%2BD6A0twg64C0vLBEhPazCgGseEWg%3DQ%40mail.gmail.com.
