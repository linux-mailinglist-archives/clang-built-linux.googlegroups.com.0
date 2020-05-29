Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQWVYX3AKGQEHSARV6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB741E886E
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:04:19 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id n22sf513469pgd.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:04:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782658; cv=pass;
        d=google.com; s=arc-20160816;
        b=jBJp/sVBpfwy0vfmHm3nz+xI64iBnTEb0wVDI8rxewPqDQffSH66454MSrQIE13OPj
         fEkJUXO7cC+T1BtZVRx2332QroJh1F34j+BhK64rdz+tf7C7hYjLY4hjjC8dQyl8TqAp
         wDRGiItfQG4Nqq7yxkP2u041+BOyPJfZJqU9kQDuz9bZy9tZfblN9ssH3gPBAMgvAjjf
         PV8H3TYX5W/qnKb94pdJAdxRsxl2kCjk3G5LMLjcgEKpcPl3V880OaqIIDxXvZCE+oL2
         vkECu3nLX+cLrqA4kNQf/xH+BF5pqOWT7I1G2USDQCQB21hyRS9ykUE0hXUpXtCtsDib
         s8Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qMwaWq7H0kefSPyltoRLuJKJylcYYpdcZm16PvdoLNQ=;
        b=SjKRO+kg6gXyrQf8QIC4ggcGOC0YF6HxSSp95hIF1JyE0Rqbi9enpEg96QJ/x/QW2h
         DnlOkJkAVHk+F9B+w4Dp6ZUWf+2tvrFwYggpbhhXE0mSUGe1XvRaca6TG9q1jme8Y7uz
         3PQWz5zyVSG7tzvpWs0L5+IuCM23f0Z1IiAsWQej9E3MG6caqXnmE9zA5u8NN9/Gycp9
         k3hW6G+ZQluvo5J8QZpKlXGvBehXwiJh+25mKSmiSctEzL2EKgMlcVAP4R5el7TiNcYG
         yPbDNukG18yu1IMCxHEMV79SuKW4xmji46XFSBGYQRFvwwObraFypq207ZMZ7v65hEKt
         EnYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oIkV2Iwx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qMwaWq7H0kefSPyltoRLuJKJylcYYpdcZm16PvdoLNQ=;
        b=hZsQLfGvFMIxXJ3Drbz08rDkV1xJ4hMZQB6XKBshGuNgjBFrZbW/io0T9TvyYxP7Lx
         xisRUCS3mXW8B0NPc7YBvhHW+KfIc5zPyBf9kfe+OF+CKopETnYGeGz8ZMbXCsNLhlhh
         UrGbv/FEWk1tGzU+mGrX4VVVun1USgCvxnIlsbBaf2RT/TexBHR8Q9zuFWKSBk4ex3Hs
         AkzLKOBv3UlMD6+LV6AlPPKXWPbTcYsbfH49EjRd6q4W70TiGM1//VpXPpmhVbkZu4kz
         UBd9DC/FDa1OZkTOhtTNiZw+QTWFm/r4tTXSstdd6GleRUEO4zTbEUY/y7U7cMl9PMf7
         JhwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qMwaWq7H0kefSPyltoRLuJKJylcYYpdcZm16PvdoLNQ=;
        b=KgPrDpt3IYEMeznIr7J32ZcPbFx08HNy3afLmWj+zjs3cnTDWELnPjQ+Q0UHcJqdvc
         ElivRsFW80LnXGbTSMkpKAyd5TBnPJZ7lDUUQrIvJlbvSWuiDqE14I5yMpc4X1ut+Xp9
         1PGzd7A3M/SGlN/PlFur8T3Q3AP1BPOphf0MUt+wOcAgc0y+zkK1Ar+iEBgWCZkIU9li
         VgbjnbhI9iWmBsow+bhn1DJEAHEOFijiQscxNk1Wah6Q5IVFENwUK8yAhF48UMsk9VTl
         9J4SzZ1blIiyHA1L9VKKJ/7vOv/XdaEQnTtUZDLHgqA1jzKbkPuY+CmfmshGHrnrKlCg
         V8sQ==
X-Gm-Message-State: AOAM530JrlBn7F+lVq19WeD03ftAQye+ocDD3XW8AI9nqjszEpYbdzTd
	/HPLb0QouMeZzv7uKAAywZw=
X-Google-Smtp-Source: ABdhPJywvvmSuDwyzeF9mgqOjyyi80yhnvQheMo46Q61CDcQpJcXlphNi8+//ypFbW6iq1do9zqrUg==
X-Received: by 2002:a17:90a:32d1:: with SMTP id l75mr11397406pjb.85.1590782658672;
        Fri, 29 May 2020 13:04:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:920e:: with SMTP id o14ls2605880pfd.4.gmail; Fri, 29 May
 2020 13:04:18 -0700 (PDT)
X-Received: by 2002:aa7:8f27:: with SMTP id y7mr10537114pfr.19.1590782658288;
        Fri, 29 May 2020 13:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782658; cv=none;
        d=google.com; s=arc-20160816;
        b=ReDpIXNb1i0uvnfwdvOLIdrokJpBdSxhRio5VmT57UE1NfBw8DtGVFe/RH+UYAW3pz
         KHYfI6lDHo6Q1TXI9drLPRNpz4SjTg6py2O/DAa9Q5T5qX8Amb4idYGXmd/7D2bUw6n0
         HAuFLSRxDAkKiu+AtsBnuQJm0M9rFNpw7s8Ow+40I603KWjl2jLSNF3I+CmbotWZBZYO
         p3bwEwKt3zRd+gjZme9vIWX8x1lLdxzYPvcKYIBjJazmDi8aQV99y86nL9ldB9KT2ysX
         4RSDM4oArhNYHV7K0C8f5do8vpsXPsaySzZrZGx85FpAZsl7Ewtiu8mizaMG+rfQ+XWM
         je4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4+g7Oezu2RunpZeGCvY0b0s77w8UFoTcEBsYnh2aCmE=;
        b=l+ukNzELSlGX6gck9GCJH3IJSFPwBECm/LYOTtZIhzn7g/CwLVCx0grt60kUNoKLzS
         GT3kusgY85OCMc3oaaiIaopFY3xEpF0aRQwQKT/cgZ5PAKjFuyYLi4U0ftosPxXVBZ3b
         Zggz9+zqCwjvQx59++MWrHk3+1jdbxN+c5OKbr+iCbb4XOJakKDVBEAj8dy1dPseX45w
         f9mxmQLNGIi0S+ugDrB9vm+MT7MwRi6ziVfzkPshrOgJdil1oX2LqD7Sa6ZScVrF62J8
         Uoz2ynWIrr/39sNS/ZKJ6QY27jeq7z5udGw3Wo3T96rRlBLV9wVEUlxdJ4xl8N7vlsvf
         gfLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oIkV2Iwx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i4si588787pgl.0.2020.05.29.13.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t7so1679303plr.0
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:04:18 -0700 (PDT)
X-Received: by 2002:a17:902:724a:: with SMTP id c10mr10068319pll.223.1590782657556;
 Fri, 29 May 2020 13:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200529200031.4117841-1-arnd@arndb.de>
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 May 2020 13:04:05 -0700
Message-ID: <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer check
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oIkV2Iwx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

See also Nathan's 7 patch series.
https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/

Might be some overlap between series?

On Fri, May 29, 2020 at 1:00 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Checking the pointer to a member of a struct against NULL
> is pointless as clang points out:
>
> drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: error: address of 'config->info' will always evaluate to 'true'
>
> Check the original pointer instead, which may also be
> unnecessary here, but makes a little more sense.
>
> Fixes: 9d4fa1a16b28 ("media: atomisp: cleanup directory hierarchy")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/staging/media/atomisp/pci/atomisp_cmd.c | 2 +-
>  drivers/staging/media/atomisp/pci/sh_css.c      | 4 ++--
>  drivers/staging/media/atomisp/pci/sh_css_sp.c   | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> index 5be690f876c1..342fc3b34fe0 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
> @@ -4275,7 +4275,7 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
>                     atomisp_css_get_dvs_grid_info(
>                         &asd->params.curr_grid_info);
>
> -               if (!&config->info) {
> +               if (!config) {
>                         dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
>                         return -EINVAL;
>                 }
> diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
> index d77432254a2c..e91c6029c651 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css.c
> @@ -8534,7 +8534,7 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
>
>         if (firmware->info.isp.type == IA_CSS_ACC_OUTPUT)
>         {
> -               if (&pipe->output_stage)
> +               if (pipe)
>                         append_firmware(&pipe->output_stage, firmware);
>                 else {
>                         IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
> @@ -8542,7 +8542,7 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
>                 }
>         } else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
>         {
> -               if (&pipe->vf_stage)
> +               if (pipe)
>                         append_firmware(&pipe->vf_stage, firmware);
>                 else {
>                         IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
> index e574396ad0f4..c0e579c1705f 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
> @@ -1022,7 +1022,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
>                 if (!pipe)
>                         return IA_CSS_ERR_INTERNAL_ERROR;
>                 ia_css_get_crop_offsets(pipe, &args->in_frame->info);
> -       } else if (&binary->in_frame_info)
> +       } else if (binary)
>         {
>                 pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
>                 if (!pipe)
> @@ -1036,7 +1036,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
>                         if (!pipe)
>                                 return IA_CSS_ERR_INTERNAL_ERROR;
>                         ia_css_get_crop_offsets(pipe, &args->in_frame->info);
> -               } else if (&binary->in_frame_info) {
> +               } else if (binary) {
>                         pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
>                         if (!pipe)
>                                 return IA_CSS_ERR_INTERNAL_ERROR;
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g%40mail.gmail.com.
