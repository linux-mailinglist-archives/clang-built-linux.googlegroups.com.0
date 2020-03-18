Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYUAZLZQKGQEPK6PVOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C7C18A384
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 21:11:15 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id l12sf2760546pjq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 13:11:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584562274; cv=pass;
        d=google.com; s=arc-20160816;
        b=xVTRD5k22q3c6JcXJX4kHDx9DeXIOBFMPhSxIQpjIw0cgmP64xhJ9IS3E8AsAS88Lr
         nK6IzPUPtldkROyVrdRsDn2nKaF/jqqQ6XWv9oRxtY9DPDtzAua9XgvjxugoVGVVR8dh
         lC9f+VG+2ukAyYwy49en9GbLEe5PBgW/lBGRCYIBOvsg3P52ibxaGuvvmNwNkZyyDSCI
         n/KRU9n/gfezaOgA9TP1Ml8YIWSPkSYzvA28oJJGc7F3pUuxKvJCHYkHb7lxdCflotXS
         YsWxo6/TR3+e9f2BJSi/AV9YBgv+7s1HyPLVNHhP3zbMLyzYa3LZ6QqFplNZW+N9RWlv
         A8YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1RxttvBhp8RYZnTGsHzZ3nM4SxEJ/83rmZJ1qpMbq9Y=;
        b=0h9gZcibkHXK8GWiw78+qOvShAFd4XtHDe3HJMlQ5V47LuxqcSDkyOp097Y3Vzvgv7
         +9xvW+p5OlZvqywUkpjPK0hYzO4egRjLREtynP3Y9DzZzdcquT4TOF91G0fCB5/r/1q3
         LT9aRXSQrCPp93qZkKr68NAaJNdnQGmnSxraL9MDIr3LeZwI1j1MSdGKr2fz22gBypeb
         65p8B1pyH9Kt7hfemwdXMMpurua7+gSEHy/DNz6ItrkxLxnjDJcPJXEnGduv2/o/Mi4q
         JzJJcroHmIvd7LpI47Y8M2DDmyLcneDCdIwAuZz8bw2yibeY8UdlnWQo9ZY6a4OC0+fk
         coIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=buSa8Rvh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1RxttvBhp8RYZnTGsHzZ3nM4SxEJ/83rmZJ1qpMbq9Y=;
        b=iKSNbLT2Z9iSdHsjPAGy8yx9bMo/S5sCOh5+xYLwcR0uxJRu2xl/vw8w7Xn3nS4ZZV
         3NPHP3v57bCHVNoO1vNQSGex2jtWKcwublTUuqesqQriiDKkmpnsQLYN2TtKRBBpq83F
         sklbfyOT09rDJYKJDdOyYVLzOktUZkGzL8/Ye5ATen6s6ck2LdeEZQMhBiF2kCQh4y0P
         YRPQlj3pa6HOEGgTBtc4+16IxZozsRGY6uXDokLDKsZxmFPkLg0YsrK9xOuBxxx34me3
         74rPNGIcF5P2TWYUL7AWuQAHBRuxUfy+0LwLMsSdm/RmFsE7WlkWLHPbUa60SO+xaBtT
         IluQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1RxttvBhp8RYZnTGsHzZ3nM4SxEJ/83rmZJ1qpMbq9Y=;
        b=sS6aIUzeC5okrKo8rYf44ldMlQTUjlOiR/EU9dpeuqZqId2B/E6XXq+MtErY+D699M
         /bbAWxcWQLub9T+sXzeTSFC0t8sAldl6j/rZNdFNX6xuFPHG2nT58LDZDuD1g3JbwHU5
         WR//VxT1B1NzOOVr5S4sk2MkZ2S0CIomXSJCC3hCz5wqRgAVBoAg5Xu4Z+5tjF+ZLLaM
         lF1IcR9OS0tBU8Irq4/sn1/5VvCrbV0cgXvdEPmyYLQHWVZnswA5sWfOt+6CZK9FOTy7
         iTkpFN5jeiD45umAwSgS7ugpI9ASSOZhyprW/G0STHFYPdk0NNwXsYREdZaGyosaY4cR
         SIbw==
X-Gm-Message-State: ANhLgQ3fPMbK9HRuC/ZKltjzmmu7BnQtmukTU1qvB3Nyp9dVRrei6453
	yp3VARAS2QN6GkTympIx5tg=
X-Google-Smtp-Source: ADFU+vutHZdjN2pLzrI7X4u/4zL7Gm1plTUGq6g0hxbSIZol8Q+uCl+YWpRLYHxQzV4TbUmSzVivvQ==
X-Received: by 2002:a63:a47:: with SMTP id z7mr6442096pgk.117.1584562274481;
        Wed, 18 Mar 2020 13:11:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls13458762pgn.6.gmail; Wed, 18
 Mar 2020 13:11:14 -0700 (PDT)
X-Received: by 2002:aa7:84d8:: with SMTP id x24mr6114695pfn.309.1584562273969;
        Wed, 18 Mar 2020 13:11:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584562273; cv=none;
        d=google.com; s=arc-20160816;
        b=hkdzqYr/9k/m6qKUfnERY/bLNORlmdr5U08C1OKmgVye87/8pDObOWZxwmSVnQzqAQ
         WRJYNDhDK/0AgfJCNuLGaMP7uf+FdG+n1sR+S7CcsenuLszWbvB7rZsSP01WRI8XnsaO
         p7yyJ0k/Y2oaHO/8wSwRQEcumnG2r/L5uAoBfQU6pNDTsc42WnZj8O/l9Hw7rI3Xg2a+
         IJQDWebcNeHyDo0trvENu04XW+V5hCkpMJrsMadJLohf1Ydt3/nE2hEBQf67bLw5qgYo
         9hTR+DEFh77XMDelreG4pgv5aBo/BVwlHaUATQ+xRoxrdGMgWIanhD7Uoh97wlFmx1QN
         6g7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uyesW/I7eVgVyicQueL0CdgpIWranWUqdWTYkhPayEw=;
        b=VQBewvVGEwu8q+XBO83fq+/ndR8Yyswn5mn7HZM/EZTinbgtONaCgP7tLF4LEZwozb
         CblOmFFUOgRQq9K6kW8wcEDwOoE8biwVecWn7Fn5Je5nyE2RcuclN9KOiPzZuHhOsNkQ
         KoThMVY5rWgoTSsq0+UPNDETiBDadV7z+PEENtu87jP6DB+GjMULtG1bxAXG6pPukSvl
         BYyfu/44eTr/aqI1A1KOZLq5zEFwsam5ahIZly0USqSc3sETFUmIAEKMtd9HGCaxfZpn
         uq/qTS6HnGV6/y86PFaMJ3e46FVEKNZuLkSe3L1t64A9QUaes1KjzC30Q9LzUzUotk0/
         jG3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=buSa8Rvh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z7si467879pgz.5.2020.03.18.13.11.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id c19so48723pfo.13
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 13:11:13 -0700 (PDT)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr6229525pge.10.1584562273205;
 Wed, 18 Mar 2020 13:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200318002500.52471-1-natechancellor@gmail.com>
In-Reply-To: <20200318002500.52471-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Mar 2020 13:11:00 -0700
Message-ID: <CAKwvOdkzdBYgixrSKKfo7=god4Q0GaMORmFWUfrJ27JiGhBx2Q@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: Initialize shadow to false in gfx_v9_0_rlcg_wreg
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=buSa8Rvh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Mar 17, 2020 at 5:25 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> clang warns:
>
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'
> is used uninitialized whenever 'if' condition is
> false [-Wsometimes-uninitialized]
>         if (offset == grbm_cntl || offset == grbm_idx)
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:757:6: note: uninitialized use
> occurs here
>         if (shadow) {
>             ^~~~~~
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:2: note: remove the 'if' if
> its condition is always true
>         if (offset == grbm_cntl || offset == grbm_idx)
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the
> variable 'shadow' to silence this warning
>         bool shadow;
>                    ^
>                     = 0
> 1 warning generated.
>
> It is not wrong so initialize shadow to false to ensure shadow is always
> used initialized.

Yep, thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: 2e0cc4d48b91 ("drm/amdgpu: revise RLCG access path")
> Link: https://github.com/ClangBuiltLinux/linux/issues/936
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> index 7bc2486167e7..affbff76758c 100644
> --- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> +++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> @@ -735,7 +735,7 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
>         static void *spare_int;
>         static uint32_t grbm_cntl;
>         static uint32_t grbm_idx;
> -       bool shadow;
> +       bool shadow = false;
>
>         scratch_reg0 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG0_BASE_IDX] + mmSCRATCH_REG0)*4;
>         scratch_reg1 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG1_BASE_IDX] + mmSCRATCH_REG1)*4;
> --
> 2.26.0.rc1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318002500.52471-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkzdBYgixrSKKfo7%3Dgod4Q0GaMORmFWUfrJ27JiGhBx2Q%40mail.gmail.com.
