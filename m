Return-Path: <clang-built-linux+bncBDPZFQ463EFRBNOEZTYQKGQEHEFN7JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACD914E0DC
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 19:36:38 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id g11sf2946603edu.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 10:36:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580409398; cv=pass;
        d=google.com; s=arc-20160816;
        b=FsJSapEjinlb9mok1PSCFoJf2RuFTdRDu3qkgDtMycuE0iO6hSM1+G3b3cYTAAIjua
         SLMBeBl/xjwse2QW/MuPvfNKOtumqAY5X7XC2N8ltcTth2j6KUSp9wjz3kfMZ+sZR5wy
         1EOuW1JiV07t3Gsy8DHotuPVe8lXFmUIIBsNKrvA5IYRPZY5o33dy/l21Trd5oDZeuUf
         +WHUQp/e3BM/nVRNUBo3o3GDh4M7Lt4VFi2CC/q2JQRSb/6hnHWYvY+ggX8NdN8rZVhq
         g/MLuXYxfWgfX5aq5kjK9/iFCDJxsN6ZuzKwZW2SKx9CTR4Yka4ZsdYqVHKn+SLxNQ82
         n3dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=98OvjXe1R6CxRdmTezZQ8ecnsbOlKUPJtThPhLGpQP0=;
        b=auVfouX2F/VQ/QVADHSGfK85scCFTV7L371JKHE4bKW4YcchIFAC+tByA8molRlTC6
         7+jaBbBenYJSfcJ2hFL1tVuzoc81fmPUt45AXwWHQRqluwvwijpGf/gu/V37N3Iy27vb
         x934giH6NMHkkU27AqPb3HDcOFx7CWBMXEoF8n9UXk56kjctrCam2lHFgrrDibswNMNQ
         WPR7ArmvdBWtxZu2Ni5g3M23wWEMpv5caEkz7loTOQLE1mKt2ClEYTgQD+lDAxnFZo23
         J4M4En1m8RnmTnkVZEkRh+Q1dlWtSJvHO7FpqwxMo4AhvJOg9vFJ7aZsoVczY1K62f6X
         ZpCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgiscpUZ;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98OvjXe1R6CxRdmTezZQ8ecnsbOlKUPJtThPhLGpQP0=;
        b=p9pL5DjNQIXhe2ps5P0LSD3iF5vcmaEBSGMjobfphPV862z5mC1uLncS7JF4zcDvYM
         69+q/w0Q8CWxw4bcdPuowETX+B3Iy6SUtZptdmp4LKzL8ZIzvY6+fjhLBN8oeanMNwb3
         WlYdijM89WfNK59W1PzIO2WTNxG18Us7Ss2lSyYbQRJfauOy5grpvoN4b9vr+ems+naI
         viD7Mhzx1cBl/KBeoHQEvMXps8knv48w2jhg2L4m9HWcwqBU8IR6JPtBjvSzBhBhbOxZ
         leg9ofVCMBALSl/XRTtgkIKVAv+wRZ78/BLt3b0B+6N37LJBKo5/9ilRi/K7VpymDJMm
         O91A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98OvjXe1R6CxRdmTezZQ8ecnsbOlKUPJtThPhLGpQP0=;
        b=FNOKjNexMsRMvc+v/4pXYwLErskyDk0kgAuPuYK9vZSjfbzyPIxC1CU56xbwgjdrSQ
         5WhqYA27KZjlPbD4qEwGJuZF9f2JU9/5IyUkcNyEeRiJVgNpD87krqoq6qCVljylrJQG
         V/X+sy8ncbaKldoCfAksKbCnE+ru5Ul5Q95vt75B7uce/cvOjLJ1FOcia7mVPG1pZ/eE
         J5PVTIw3bb3uMfs/KJAZTx54hbHF053cmVXCjY1Rh/k1x7R/V5mFPSFPEfJa93+WIhNk
         boAuLbqxQmob52+sTlgP+x/nbWwdc0m3UoYd8bydPCc1B59381ZgzDKcHI3kNymOzxK1
         cd4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98OvjXe1R6CxRdmTezZQ8ecnsbOlKUPJtThPhLGpQP0=;
        b=I9Avlbbvv1LISiWXbcaBzgvehW3hgNxxG60I6N0v6tRW5lORv6vXA5h/6rwksbnwXW
         flD0VK0POKvD8k2bJFj4r1EpIRZ611h2i7xa59JkzQSJy7A2SIqJMxJprLdFauaPbYzN
         zttD8/Cba+VGWGhCoF/hAP/t8NammA7ZT4zljbriQnJ2THGuJsvN3Nqp3IipHZ/8lqCu
         /jmp2KKOcw3jq+BRIfZ7SpamK13+XOSq0lEiOqLmo48gPPJJqdh0ZMWtqXTMF93wFW3I
         0fmdl0jWscn6kLSwL1TXkQCpdiLQxGwhvTY5WyWMBKoDGaiL/X+tdlj349SFDbG8dMFH
         uxYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6MecXXmcryI1z3N1H17g867w//9G+/NkVcYQB7k/Y/CESbtNc
	t14UVOZF7hOdCLI3SDxt3GI=
X-Google-Smtp-Source: APXvYqy/xiOFj7cTp0laYWDWErzlee4bBSlz131wPivqvYwYa24q2PcCDhsnDGMlshR59Q3z3M7tVA==
X-Received: by 2002:aa7:c3c2:: with SMTP id l2mr5170994edr.120.1580409397939;
        Thu, 30 Jan 2020 10:36:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls1686240ejb.1.gmail; Thu, 30
 Jan 2020 10:36:37 -0800 (PST)
X-Received: by 2002:a17:906:5604:: with SMTP id f4mr5454795ejq.255.1580409397364;
        Thu, 30 Jan 2020 10:36:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580409397; cv=none;
        d=google.com; s=arc-20160816;
        b=hcBb8zF/QB8TJ09D3vUcs19CKc3s5vZY/wUC4nvOmu28+KaVAoArIVqhJSfUrjbBhF
         gZFxp/wM+6slbQyzzgDoDZG4v+6KjerlR1+4IJCF05/LL27+I7DOVSRVpfDuKYz9SBrU
         GD266rDSQCmG8kI4Cftkop0KvMsgiRyYh1ypFJ+B/h30klcdYe5Zn2B13RIZVmZQFKzW
         Xx++riJ5cCjsoaGoWUe4n2JcZuDxv5ZruabG7h043xDtKJOl0Mi8RJzbSj7y3tH4vtWX
         78tWMsi4Yfxc4KiWVib6ZPw0rH82h8Zow6W4LTXi5G8n34BAIV9t644b+GHp6cEUVRod
         5GBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nxOm33nBoQ951BS1wuIg4vUOUtrE7fNhIJifAOgimy0=;
        b=JFxAgax6m6ajQ7NWi2+LsLo5+da7h/WeljWR23aKPtJgP9EBtre8E+ulM1rDrQQ0yv
         F86hdVPE6zVtBV9u+ekPMqqANL7xkjFYf5TXSjjaTqwJnv/VLQxiU+Z6fI0+xToXNtwo
         lpUEVm5YKl2W0/c/poP19oMfTI2HSpkNdyY1n4CY9nsGAIoFj1DgF0OVRSP7VXVCscSF
         Tt00edLUG8aZEmn9S1F2cj6+p8xLLzM6shgPxpXh+YLhIQvBQodQtKHqiekKYo57A7ko
         HVU2BQTEIGRXX9hBbWPXireDK6AOMl816m2wJc9jzH/h4gYuLRIFEw2orhGHZm+AtmJw
         W2/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgiscpUZ;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id df10si333066edb.1.2020.01.30.10.36.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2020 10:36:37 -0800 (PST)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id y11so5386937wrt.6
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jan 2020 10:36:37 -0800 (PST)
X-Received: by 2002:adf:ec4c:: with SMTP id w12mr7381485wrn.124.1580409397096;
 Thu, 30 Jan 2020 10:36:37 -0800 (PST)
MIME-Version: 1.0
References: <20200130012435.49822-1-natechancellor@gmail.com>
In-Reply-To: <20200130012435.49822-1-natechancellor@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 30 Jan 2020 13:36:25 -0500
Message-ID: <CADnq5_MzvC=7pLufULN3nGDAwBE7Th7oWcUKXbYFouv0729GwA@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: Fix implicit enum conversion in gfx_v9_4_ras_error_inject
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EgiscpUZ;       spf=pass
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

On Thu, Jan 30, 2020 at 3:33 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c:967:35: warning: implicit
> conversion from enumeration type 'enum amdgpu_ras_block' to different
> enumeration type 'enum ta_ras_block' [-Wenum-conversion]
>         block_info.block_id = info->head.block;
>                             ~ ~~~~~~~~~~~^~~~~
> 1 warning generated.
>
> Use the function added in commit 828cfa29093f ("drm/amdgpu: Fix amdgpu
> ras to ta enums conversion") that handles this conversion explicitly.
>
> Fixes: 4c461d89db4f ("drm/amdgpu: add RAS support for the gfx block of Arcturus")
> Link: https://github.com/ClangBuiltLinux/linux/issues/849
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied.  thanks!

Alex

> ---
>  drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c
> index e19d275f3f7d..f099f13d7f1e 100644
> --- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c
> +++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_4.c
> @@ -964,7 +964,7 @@ int gfx_v9_4_ras_error_inject(struct amdgpu_device *adev, void *inject_if)
>         if (!amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__GFX))
>                 return -EINVAL;
>
> -       block_info.block_id = info->head.block;
> +       block_info.block_id = amdgpu_ras_block_to_ta(info->head.block);
>         block_info.sub_block_index = info->head.sub_block_index;
>         block_info.inject_error_type = amdgpu_ras_error_to_ta(info->head.type);
>         block_info.address = info->address;
> --
> 2.25.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_MzvC%3D7pLufULN3nGDAwBE7Th7oWcUKXbYFouv0729GwA%40mail.gmail.com.
