Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGMQZLZQKGQEETMX6AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4967F18A3E7
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 21:44:10 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id i123sf11259594vkg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 13:44:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584564249; cv=pass;
        d=google.com; s=arc-20160816;
        b=ksnY0na8HBL8kbZFbXt79cZ4/NlL3C7KT6vXKM5HSf0n3jY/qJdkwl1Gre9ImrPRsp
         MmEISCkXIVn7CnTmdYf7BuE9aUbiet1zziH+2H39ZqDaJSQnDHFWMgKKqZHzzl9/ZB/S
         OCdKXaqp1IjPcWXHput6mGS9uvoKJMbEcB4ONFWRn5ob7wxcKZ6vdcZGCi9hlLlhfcQS
         5n7hg9Jry83uAAwECUG2yIN3sHKUfCU4ZDqyPJFMzfVKWpKB90ywYqb5ldX3yhUeV2eO
         SzcbsnDSvTuaDDy4YbQAx5fKiaxej2OdRXAdgXWikBrT1K/OGZuo32PBBQLS3ilkkImY
         fttw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1jrOyO5wxUEgel9F2SiKixGLTQCPNdPJgHsuUf0RIJg=;
        b=MbswKM3AxswGE5c5Z118FTdbTr9+QxfH5sUrYLqWPQsNP1geiOwN1fD4ARrZjySCP5
         G6V8v6ryTQGgRRw1HXGqhh2u+899EOXFVjsAMKz9QeA96y6DCHTXmf2UgZ83nyiO5k4U
         /TIsrerXCKcP5Z8vGiLfEHv5N2aYvpD6BROsZSCkz548+AyrLsjDoatLLgDBbKQUnVSL
         IWPWmWN/L+dkQkxMZn3kcAiVKsUAZY5A6FBSbITJPb82Lfb3p2M8M2al+QdilAK/vtpL
         v1d9ZerDHbgq1YfaqGk7tlyttXcDEmGjuGxBmOz2TbmlB0ij1GxPAvpwIuB7ByN30r0X
         hsiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="n/X1upys";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1jrOyO5wxUEgel9F2SiKixGLTQCPNdPJgHsuUf0RIJg=;
        b=TueHtj1Ko6AiDbA8cv1pbrIVFvGYvgK/Zb0r7Nfp2sPwUk8l8J87iJM9r73QayO9EK
         sHKRITu/SrntPA7AasZE4AH03Ofm6fLscrciBuZJ2oRiGdIBX4HcFv+MlOVDsRkMsF/V
         ccjnwNgi6R4AEa00uaHRzV/p9sj9QD/vHN1F2iDLljZzHjEDkAWDqnA+qrh+Uwbn1yHO
         y9tkjslKFKefu8O82XWVE7cpHAygmQWpUQST+x9VjCR42WemaFL6TO/vpAKZuba4JUZx
         8bxDmyfrsMlG5DdKTUKfwrJr1RYtUh7aFvQgn1Ls94ebk7lPm5Tz7hdZyM4lBpWjKgfn
         x9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1jrOyO5wxUEgel9F2SiKixGLTQCPNdPJgHsuUf0RIJg=;
        b=gm7UMutLvf3jpOcRZrEshKITIDE+KrU552GrDYlqgiIoePb+Ec0IOKWTjJrUaybftk
         zvqshAGrX6jfCDWsM6OmFvLI5i0VeYpcPSROMGBd1aS8eQtoeBcr0KE85cX9NLKdMnXR
         wBNnYJRrJXXjBv2DVMs3dz/umEIiboSLdgTEGybPj9OxJViMR16u56BtWvaZNo1zvTzx
         IcH/NJ3aWg5iMjy35VCVWTVI7B5LOQgADxSZGpxm2VQiA1s/mlv76sthdFr6rpe5aWRU
         lBIGN/9f/Qn9i6MtCKvcRFEKpIz1CfV0vSBcRjwUCPRjqsu1WRf2NqAeri/m19Hp9mh+
         6xIA==
X-Gm-Message-State: ANhLgQ111c913OaIELGoFnjofQldMAKacyLXaokvLD8tToTJjIoXs7ho
	cRpTL6gT4KrBg/7Iscf28nk=
X-Google-Smtp-Source: ADFU+vvT30QBQR4ObSqbXGAVMn0+tPn1YReX5jbDoB4es4r66x31+trpj42q1yNui7txOcAhmdanMg==
X-Received: by 2002:ab0:2657:: with SMTP id q23mr4197705uao.76.1584564249134;
        Wed, 18 Mar 2020 13:44:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:24d1:: with SMTP id k17ls17242uan.3.gmail; Wed, 18 Mar
 2020 13:44:08 -0700 (PDT)
X-Received: by 2002:ab0:3779:: with SMTP id o25mr4362714uat.5.1584564248785;
        Wed, 18 Mar 2020 13:44:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584564248; cv=none;
        d=google.com; s=arc-20160816;
        b=UQna8U9xaZa24Gp4DcbrN3oE5b40/ogPdJ4pEqnDfe7ZE0Vz6kaIFuq7XBJEr1xs79
         kH7GbD6cY0mYEHRzrMgJzDwZAkJIkzJ3OCgi8fRtZDqxGnC+RXoAGThgxhUL6Fin5TaK
         R5oAF7iaerXuNQQtLFVsotc0koxoj4RiuZDMeeWW5lObujH/2BmnZPABnCRte2lLJh5f
         /WaFd4xEZOKesnX9IPnIDctHX11YrbmbM1SCMp2Ax1Zd2N/dX5mir3GHCoIiYeYaKJRg
         yNnrycpRT+6X0BnnuEPyg3ZjvuqzXBG3xBrgy2ECgFzHC04fLMTvGk2WbLKiHim01GNS
         NltQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=suYHs9658zHP4xficEGq5WrBjqIzHfAOzaIFRECzM5Y=;
        b=CeVRNnnpPyTsU6c9190bJC/etGLkTQDkN3WiYMGXggY4oXfd908JJeocfyhDp0gI28
         kW+UhgKfS4rzRVNpdqYBTEAj1DY44pX8oa1zu2gGUML9Jti+L2SM+sZX0wdu8NuQP0tr
         /e7lgxAVOE1q7esKfrqqlAx9Uph6qienalwLPNVVYFTQ96YCMY7Lmzul9PNNiy8rDdAL
         pqAZMdW9Rp5luq09QigKl+w9aB1GP6VfVVvtYgyKOlrdkUQzrCBOuHFcRlNtarKTMs8z
         9+I1qZPZA/5Pz2AQLMNJ/xShq2j/CZYoqCiXPZLEPWWN1VtYBgIridfWL+In+FfSvYoK
         GboA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="n/X1upys";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h13si416vso.0.2020.03.18.13.44.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:44:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u12so14318408pgb.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 13:44:08 -0700 (PDT)
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr116252pfd.39.1584564247262;
 Wed, 18 Mar 2020 13:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200318002500.52471-1-natechancellor@gmail.com> <3a997f4ee640e607a171a19668f5f5484062116c.camel@perches.com>
In-Reply-To: <3a997f4ee640e607a171a19668f5f5484062116c.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Mar 2020 13:43:54 -0700
Message-ID: <CAKwvOd=AA8NrqmOR=E7+e6dHEVo3DZwfSuK72DGzHG+X56pB7A@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: Initialize shadow to false in gfx_v9_0_rlcg_wreg
To: Joe Perches <joe@perches.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="n/X1upys";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Wed, Mar 18, 2020 at 1:28 PM Joe Perches <joe@perches.com> wrote:
>
> On Tue, 2020-03-17 at 17:25 -0700, Nathan Chancellor wrote:
> > clang warns:
> >
> > drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'
> > is used uninitialized whenever 'if' condition is
> > false [-Wsometimes-uninitialized]
> >         if (offset == grbm_cntl || offset == grbm_idx)
> >             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:757:6: note: uninitialized use
> > occurs here
> >         if (shadow) {
> >             ^~~~~~
>
> Wouldn't it be better to get rid of the shadow variable completely?

Yes, much better indeed. Seems it only has one use.

> ---
>  drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> index 7bc248..496b9e 100644
> --- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> +++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> @@ -735,7 +735,6 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
>         static void *spare_int;
>         static uint32_t grbm_cntl;
>         static uint32_t grbm_idx;
> -       bool shadow;
>
>         scratch_reg0 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG0_BASE_IDX] + mmSCRATCH_REG0)*4;
>         scratch_reg1 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG1_BASE_IDX] + mmSCRATCH_REG1)*4;
> @@ -751,10 +750,7 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
>                 return;
>         }
>
> -       if (offset == grbm_cntl || offset == grbm_idx)
> -               shadow = true;
> -
> -       if (shadow) {
> +       if (offset == grbm_cntl || offset == grbm_idx) {
>                 if (offset  == grbm_cntl)
>                         writel(v, scratch_reg2);
>                 else if (offset == grbm_idx)
>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3a997f4ee640e607a171a19668f5f5484062116c.camel%40perches.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DAA8NrqmOR%3DE7%2Be6dHEVo3DZwfSuK72DGzHG%2BX56pB7A%40mail.gmail.com.
