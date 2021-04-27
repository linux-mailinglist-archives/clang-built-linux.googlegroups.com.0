Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWGHUGCAMGQELTEWOGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 530FE36CB8D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 21:19:53 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id a12-20020a5d6cac0000b0290109c3c8d66fsf5173054wra.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 12:19:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619551193; cv=pass;
        d=google.com; s=arc-20160816;
        b=vqVlBmjYWdn1Ie99g5uCIr1Farhj43PkFPZJzyqCCq/hcfb4SGBXkdntE9F3kos6K3
         wEKQ0tzpBLKms10zu7Ja568r/PJ9UD325xRoIFORqE7KiNYUg3r1SE+DX1YMPt/iVHSI
         VLwbLABmY9Dwc0qIfGno1kSUbPXKjiBHMUxIxL4ksQrEh9P4j04HRH0fitA1yQaognzj
         5Ebrnx32PV7Z5SmqCcdPoMSAa7XTOm0BjcpFlADvUNjlR28bjTYoyeCVtvn09g2U4s5O
         vwEju+j2KrJTxfwQBM6rg6qY8zzlDAcM8gxZTFmGBYDMNqY+xKrE63jhqcvgFbyBZz24
         SYTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vRWVjJKbFlrZjlZstnDGZ+VNEE8BGNh3MCISf8YJys0=;
        b=C7izdaXOYT5GBDZKsV5bPxBmi+YpZbGpo+Ucfk4hxTNQloMKbjY7IftrQCv6gjaEFz
         O9+B8fkNr7WzymNGKkprjTybySUN22/jZL+mRNRy1GUYmydoFyCv6mwDDh7xdcY1Lzsf
         QQrTer3wVxgIofFdKj7L+n34xObO+PsoDMcRxfafEGl+lUZg6kA/5mrd+LvN7JXf5fiB
         9fhY6EmP8S20b+A5WaevrnC+gBYcEeR8IVdqZHkfL5AsnZW2VmJkpPuN9q2wlkdLVI/5
         Jciu1HzFbNbI0nBY8iuucCYLHGgiGNLxV/qKQ8/V9FSu1/DkGkCnGgklbnFA5qwjAoy6
         M82g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dx3Y56Vb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vRWVjJKbFlrZjlZstnDGZ+VNEE8BGNh3MCISf8YJys0=;
        b=hnS/84eUuQEL7Li1hUpxrFSSeskDVXrg0vL2fFyeFOhTgerZ1QJtblDbRXxmknlc9o
         YT5uP13P0VNQx8GtLFkMcl+86yow3dzI+KGCPJzUZ+xM8s5xcACWG9fgNPOy1Aojq6lE
         +mz9gKLI0EjoQKpIQDaLeaojkt0cMSdFFazaaAtprq0JIpIywli6Gsrt2o6o1lNwSsAA
         69daDnWiNrw+UBmV5Gruv1JUU6DwOouqBB0ngoQT1faOZVa0/z21nnZpUXlh8aLMx64N
         jSRkQ8t2+p+11efVDp/sEtI9N45Eqp+TEv6vBnB/Yn57DKMcni263ZuctOdBOqVOX2Ct
         tnow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vRWVjJKbFlrZjlZstnDGZ+VNEE8BGNh3MCISf8YJys0=;
        b=aP9BvOVgcmmnfHbU3CVsCOTuGzPFRaPs/V0BWpHGh9/LZxgdby9RJjueqtHS4dm2vo
         /JSenLIAwUzTGcWSbolAxtbHnaYm0hAxTXh3U+4gcmwck/1JNDNIrEpthSYpUc55ssTI
         wBVClHgUAkAdPR91K8yO6LnUXse1naqbez9ucdJrvDli2T+mm/A3Cf6hNwyd3Q1FGq1S
         0X/e9HZcqphoLcwBeJAEhd++1bzQIdHbvGnpxsXerlnQ98pMnqTNGlaQihqbmsFw9S2k
         MxIMPc3C/wCI5ub2YWCodPlmCIuJF+cjhUCCq9LxYbvZisb5MzunVvg9jx46xMtikFme
         +Uww==
X-Gm-Message-State: AOAM53174zl9BnIP+/r644OgFhpVAUM98GFMGOdiZROi/FmXfUi3ol/C
	bnxikxnZOH3/+51qFLMSC6s=
X-Google-Smtp-Source: ABdhPJxjQvAP/7/bb9VKgqXisdvezYY6Qv2+Qle7445tKXtBWfs6dxqFEMAv8QgQo4OsMZXEdxmVeA==
X-Received: by 2002:a1c:4e01:: with SMTP id g1mr27398188wmh.48.1619551193084;
        Tue, 27 Apr 2021 12:19:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls7264157wrs.0.gmail; Tue, 27 Apr
 2021 12:19:52 -0700 (PDT)
X-Received: by 2002:adf:e907:: with SMTP id f7mr22393902wrm.86.1619551192297;
        Tue, 27 Apr 2021 12:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619551192; cv=none;
        d=google.com; s=arc-20160816;
        b=i7SC9YGWImIKnCMtBzKyMvjnOdSqJ14BEVscAZwuVNseV2l9G7QbFAEoaCMi4fO61Z
         j+O9U82FCLSfY1PeHymPtjrtr31hM6TuUKwF7eXsT+IwoOh9q6QyF6bjZ3btSwINsaCS
         gQZXANd+4Q/5W8xYBRfuEKULF0MBOGPgV2wyg5vHoeyse5jZc3izWAG5f+J3hmJc5Y+U
         zAskQ+kkPbGw7+ni0lYZ1HQcHwUZFFRQG5hnETdogIIaAqMa1H+cE/y+9x/vVmRsBWxw
         XHCJoLw+XJaNZjoRfeWenJwyFVcaSbN6i+IzmTUebp8qaytyLP4+VgoP5Mfn3Kb4J8mr
         v8kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/oXvf0Y9xKsBQGdqsEuYClY3Pkmd+9qguv7EcU4aiIo=;
        b=G3IVbOEHuLlXkHlMKTZAcbob+2107JimbpfofBJMsPwFohesmQQ+NR2PbmHc3UDrLR
         VTaRBH9fTBER4yMO9wa7Ak7d8aNkuHCfG3eJvS3u0xVnuRcQGTSfVXIPlfELzrjNSLOX
         D5+SxI+J6+SlihG3LtyfKy3USOT4kiBTYi9sg/ALdGeS5U8FE+9Y/2wA9HYEDncKELWm
         uDIwoCPfhZl2upcpazMZsO5m0nRow+QNyq13Q4cPZt76zfVks1W/wifEcJvWtVTF1TXg
         42GafhDeBBa+E46Em3Bc1wqE7I6dav6GEAKF39H19fl9oNVlzniw75SWkR+drx8/KsY+
         28zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dx3Y56Vb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id s9si271467wmh.2.2021.04.27.12.19.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 12:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id u25so31153761ljg.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Apr 2021 12:19:52 -0700 (PDT)
X-Received: by 2002:a2e:9cc1:: with SMTP id g1mr18263376ljj.0.1619551191581;
 Tue, 27 Apr 2021 12:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210427183624.2790305-1-trix@redhat.com>
In-Reply-To: <20210427183624.2790305-1-trix@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Apr 2021 12:19:40 -0700
Message-ID: <CAKwvOd=LSs6gdGj-FAuCTrPrH6ik6PVxYX+_tFK9G1OW0vdMAA@mail.gmail.com>
Subject: Re: [PATCH] bus: fsl-mc: fix improper free of mc_dev
To: Tom Rix <trix@redhat.com>
Cc: stuyoder@gmail.com, laurentiu.tudor@nxp.com, 
	Nathan Chancellor <nathan@kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dx3Y56Vb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

On Tue, Apr 27, 2021 at 11:36 AM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> Clang static analysis reports this error
>
> fsl-mc-bus.c:891:2: warning: Attempt to free released memory
>         kfree(mc_dev);
>         ^~~~~~~~~~~~~
>
> In this block of code
>
> if (strcmp(obj_desc->type, "dprc") == 0) {
> ..
>   mc_bus = kzalloc(..)
>   mc_dev = &mc_bus->mc_dev;

Thanks for the patch.

Aren't the allocations for mc_bus and mc_dev mutually exclusive based
on that conditional? If so...

>
> mc_dev is not alloc-ed, so it should not be freed.
> Old handler triggers a false positive from checkpatch, so add a
> comment and change logic a bit.
>
> Fixes: a042fbed0290 ("staging: fsl-mc: simplify couple of deallocations")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/bus/fsl-mc/fsl-mc-bus.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
> index 380ad1fdb745..fb3e1d8a7f63 100644
> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
> @@ -887,8 +887,10 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
>
>  error_cleanup_dev:
>         kfree(mc_dev->regions);
> +       /* mc_dev is only allocated when it is not part of mc_bus */
> +       if (!mc_bus)
> +               kfree(mc_dev);
>         kfree(mc_bus);
> -       kfree(mc_dev);

The error handling here seems quite wrong (regardless of your patch).
mc_dev->regions is allocated by fsl_mc_device_get_mmio_regions() IIUC.
Wouldn't the first `goto error_cleanup_dev;` taken end up passing an
uninitialized pointer to kfree()?

what if `strcmp(obj_desc->type, "dprc") == 0` is false? We allocate
`mc_dev`, but then call kfree on `mc_bus`?

I think it would be safer to locally save the result of
`strcmp(obj_desc->type, "dprc") == 0`, then check that throughout this
function, including the error handling at the end, or use multiple
labels to unwind the allocations correctly.

>
>         return error;
>  }

> --


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DLSs6gdGj-FAuCTrPrH6ik6PVxYX%2B_tFK9G1OW0vdMAA%40mail.gmail.com.
