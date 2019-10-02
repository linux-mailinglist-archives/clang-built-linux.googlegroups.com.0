Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQNG2TWAKGQEON6THQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBA0C9357
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 23:14:43 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id q18sf1154428ios.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 14:14:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570050882; cv=pass;
        d=google.com; s=arc-20160816;
        b=qV77QxtuXPttSYddscTgYAGonj5Zf4ke3/4POTEtJ5iQPADi9DbZSLn2bP7iomS7YC
         rOjzLtUoMhey7hLqqXleITteH5EiFD9AOs3PycoeSQMA3sOv0Gy988LbScf1It0ZJ9NV
         0O6H/d+Nl39H//xbIDuUp+QePkbuBBQ8D/yYmhs5f1v0IhMmgcuQrJcBOUm0brDmek35
         OHVcJ6H+WsZp1puYKqkecOyg2IUUOB7lY5oXey8/gC2axsCLzjrvKWSeDgQielMI8Wu3
         Tg6U1RDvqZBe2alKQKwYkhMYetV4qNWLBebmI5J6gbfR3kQ6B7DcVTZuSt7Lx27k3XCM
         Xuew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IfqMnZ856zbcXIatK/9t9feCipKtbIhDVDlWfhfnvt0=;
        b=Q1ao9Tc3uJmzWvfHxwVOPy1nIA0QF6Pqg+PiWi627ckika734dCGMiydIBTezW8XMm
         vnNXOL6Ik7KB9jjzvohpylszXWZK3tIU8KFQM0HqqEr8wVGtWL6nqUmNuR/YeqFCeODX
         7ynaCxAmuzP+OjgOPPtRDNLqN1NdasOEX+JctoZCpjkLQM72+ODbgeOKkFEm1HzGm0k3
         uyppeM4cgcM+M4XoJVgI33Cr408spMd4Q0a9niUNi1Qk6udFIfpMVvb33O5nB/1UD3i9
         orynyqr6+b+C6vzVlArvT/zMl4dFl36OMFzR3C2PQOB9By8LXqCL+utR5CpGrtptxcse
         14iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q9BbE0GO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IfqMnZ856zbcXIatK/9t9feCipKtbIhDVDlWfhfnvt0=;
        b=CQo3Mgk/DKPCINQBqLJLwlIH0N5r5v2q/P2vk/QCcirUu0AFgXJuefzy/EYrZQqiRU
         pyH+a4DpqIyRT1eSR+rGsV49AMwnb9TKST/JZ3Nnsv3jTifipfyfa1g206L/WWsRRt39
         nrWnHvSvTInmlfG5URW6ZGtDU42s6pU1SyqQ3OzzLD8Z/CRcpAsBLlmCWTjJcSIZdtzV
         yv3peaYdMZvpn49/3JezPsVks237uX35fxzz2/CpKrGDUXyGkG+yQG0Ar0krRsGtgvp0
         +NTcF5teYMtEBOwYNd8stjFY2VQO6KfqErkUlJO0AT+3JqK1Y+aji1HnGI86TYn5noTy
         mVMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IfqMnZ856zbcXIatK/9t9feCipKtbIhDVDlWfhfnvt0=;
        b=VwGVVK7ZVpJjYpqYrTUYOI1y1/i2kGJMGVYaiquw5wupA7gfiquHhMAGdvRh+ZBrA7
         fmgOat2OGgbOhvN3SP+qP0tciO609taQvz4HYkB2BUOY4QhkJ44TS/dAYoR6tYVn8WeN
         N34R1MjKcugL7Hpw/sIm1YJwKBWWhv3/rO2E2IBqVtvTTkILUQhZ/hfkse/6rJ7MgtPv
         x+wve+cTxMGmO0kcpYN8WAP8EPsgKt+oEIT9WsZ6By9PQ398X0gcUaCJzsyci/60vtYM
         +3iAt+kht0dhV8shEfKgWZu7wgt3BupbNRSXOhmGQHM1jS9ums6iSrhLvI2itaZclXf+
         a2Yg==
X-Gm-Message-State: APjAAAWCD20aELGk7AQTSzkaskOCRjISCtWSP6qFHYyGhu3g5mKhrY8B
	puyv9NFZR77gZi8nLfOeJyw=
X-Google-Smtp-Source: APXvYqxgb5IYRFtLdD+8b77G14fCZkNYvFxP2reOIMSZQqUKfVwBOsyIdRA1NA9JpdSff3qB68xyPw==
X-Received: by 2002:a02:5ec4:: with SMTP id h187mr6066014jab.101.1570050882100;
        Wed, 02 Oct 2019 14:14:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:e717:: with SMTP id b23ls737588ioh.5.gmail; Wed, 02 Oct
 2019 14:14:41 -0700 (PDT)
X-Received: by 2002:a6b:b2c3:: with SMTP id b186mr5191295iof.128.1570050881816;
        Wed, 02 Oct 2019 14:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570050881; cv=none;
        d=google.com; s=arc-20160816;
        b=yONloda19fRVKNAh1B28WrM0e/sAfYga9MqfshM4QmSz3E8XXCn1CnQayEMLL/HSC5
         LQ3bYc9FX6ax8/2NJkpOnx6tTMuzMCIGerA/nc7GarvMNuwO52L6GkbsR5EV3gskDX8f
         y99Vh3Z9kzOi/bqLyqEgLWhls4GFEL5E1DfSaBUDgaLke7qCltFtf7oYigrgvbdfP1GD
         ynHBebShd0wN70ifJTPI1fhA88n958SRU/gObPqXRXb24ypbPX0iUdbEoDtn6uHSp33x
         Wj9pyXTLySI/NQNP1PzpuCkUHHLL/H/B6RrrLGWuKCNlsFez1p9fnN/DSRlmpb3j79/t
         p/XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iHYXT2MapQxKdVQ7MnzMSwJjofrDGs/mMoboG0lEVTY=;
        b=sipU/kYX1Hl9mOyHqDoW+axkl8earcepUS9hihnWxjpdCrzAFBA52yXX4u8M06KheM
         V1bOAB9kwT5VvVCsS8DnxeCshzRFCclfVvBRtzi3MwB4OVjOJglhj38d23awRbFeFsJY
         0hUFY0lbG3q2mM8SXlCO8tc9v4RB99my8qfA9jnRUn45tgNZ6MWL88Rq0g6ALTA9LWZ4
         nvC7KBoCmrQI79HiVD6rMLyKb//sbtbCrsFjKH0n8CiSU+6hC4iG805nHfCo/+HuuZBy
         3WfZx7Ih+n6kVUP3Twuay0qtuIfM6+5cMqDFhNU6UKzPgAWCmPc0V7HfDMNUN5u2w6Uo
         Y3gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q9BbE0GO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q207si23139iod.5.2019.10.02.14.14.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 14:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d22so438882pls.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 14:14:41 -0700 (PDT)
X-Received: by 2002:a17:902:7c08:: with SMTP id x8mr5677826pll.119.1570050880892;
 Wed, 02 Oct 2019 14:14:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <20191002120136.1777161-5-arnd@arndb.de>
In-Reply-To: <20191002120136.1777161-5-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Oct 2019 14:14:29 -0700
Message-ID: <CAKwvOdmjM80XP7VH83iLn=8mz6W1+SbXST2FChEnH0LSRRm4pA@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
To: Arnd Bergmann <arnd@arndb.de>, Alex Deucher <alexander.deucher@amd.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, amd-gfx@lists.freedesktop.org, 
	LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q9BbE0GO;       spf=pass
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

On Wed, Oct 2, 2019 at 5:03 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Just like all the other variants, this one passes invalid
> compile-time options with clang after the new code got
> merged:
>
> clang: error: unknown argument: '-mpreferred-stack-boundary=4'
> scripts/Makefile.build:265: recipe for target 'drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.o' failed
>
> Use the same variant that we have for dcn20 to fix compilation.
>
> Fixes: eced51f9babb ("drm/amd/display: Add hubp block for Renoir (v2)")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
(Though I think it's already been merged)

Alex, do you know why the AMDGPU driver uses a different stack
alignment (16B) than the rest of the x86 kernel?  (see
arch/x86/Makefile which uses 8B stack alignment).

> ---
>  drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> index 8cd9de8b1a7a..ef673bffc241 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> @@ -3,7 +3,17 @@
>
>  DCN21 = dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o
>
> -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse -mpreferred-stack-boundary=4
> +ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
> +       cc_stack_align := -mpreferred-stack-boundary=4
> +else ifneq ($(call cc-option, -mstack-alignment=16),)
> +       cc_stack_align := -mstack-alignment=16
> +endif
> +
> +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse $(cc_stack_align)
> +
> +ifdef CONFIG_CC_IS_CLANG
> +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -msse2
> +endif
>
>  AMD_DAL_DCN21 = $(addprefix $(AMDDALPATH)/dc/dcn21/,$(DCN21))
>
> --
> 2.20.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-5-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmjM80XP7VH83iLn%3D8mz6W1%2BSbXST2FChEnH0LSRRm4pA%40mail.gmail.com.
