Return-Path: <clang-built-linux+bncBDKIJPMU4QIRB24DRGCQMGQE3BIQGFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id BD710382997
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 12:14:03 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id k9-20020a17090646c9b029039d323bd239sf834799ejs.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 03:14:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621246443; cv=pass;
        d=google.com; s=arc-20160816;
        b=0npGgJyV7rkVwmneI5vey8ej3KBRz+TzcbSX3/bB2II9846SI2gBu6PmKyK9Lbf9Ib
         RpWydN8frHnwf3d3w0v8RoTJXn3F2oYxnzqrQciVI9qSAbjYtt1x5c/sc5i6+9CNvH1P
         utiJamEXRkXPPthDK+snXVr1mbJP/FqcTwlXN57MbGREP+mRFWwiX0kYSYzYjmr2pxK7
         uPDd4JLuPtPNfShAwg0jQvBNN60bJyE0fesuKmJfnEfFi8//F/PV6Br3Ih/ujnE7QGo9
         jE5PM5SmbqUNLBP4h+4ScJfrJVnX2evi9NIfqJujwsiQtJ3agJ4Zwtki7RYpwqzO2v9B
         h/Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:subject:from:references:cc:to:sender:dkim-signature;
        bh=1n9BpNPbpVY/9KTkj32pN8M5VkVLQrxEt/GjGizG3i0=;
        b=uiqAh86Ybx7HqYJDMD8N/LT6+WpSugQwLDuQ3xoNXSj/3i23oCiJvdpYvZ7g27cNzo
         wyMBNf1oElbf9yFYnDUUXhsVWCcNzYfr4rppPIFfS94JZf8UN21jSkLN9PQpZkk2qk3c
         90d3LkRqfIM1f+MOUlDit0UdGwTAIrfS9PKLxXiv8CvVDYc5Ucdpr2j6O+uRQAX+XVtY
         dSnWLqbs9MCUczUjqq14OJ9Q4mTOv3KZZDksKLxMdO2dwJQNh0cXqdn82w5Y/etUqyYf
         QqdyIoBGApf95rFHv6ZacRWbOZCQ3lfMli5X9Rv1sA2kZhKBLQOkhQOWHueJGAoG2n7a
         FIJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b="c/Pc4PFw";
       spf=pass (google.com: domain of quwenruo.btrfs@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=quwenruo.btrfs@gmx.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1n9BpNPbpVY/9KTkj32pN8M5VkVLQrxEt/GjGizG3i0=;
        b=f7W3DEdrx8A6drihc009taRPn0DHL50RhG2MGAHgcIT8WxDb0xUlAjwDG3pa7mxO3Z
         JbqqcDWnUMBZQ9QQ63jSlHT4CAHMLuyyp8wJHFko9CCYbkdVK4liHCLxyIg/lZ3AR0E6
         Cnaf6rDmBlMe5UPqqKxy8gXzBMo+oYWY9do4cBRMtjjph1UlpwylTcR/D0eS4gbGfFSk
         BJCpQg+9HbnrR/3O2SsLl1cqaeV5/vkxY+unVqbJKYErFC+cQRhhtSyGe/5XkIOuEu4z
         OD2gmMJdt6k0Xrk+d2YBg//9/7lqzxAtEV5+2VmvEB85hE5l/mjDoIGPK/Ww35ihN53z
         To8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1n9BpNPbpVY/9KTkj32pN8M5VkVLQrxEt/GjGizG3i0=;
        b=C7HCO3A5EWTrG1lVMP0H4KmZn69Z0UBm4qP+usgL2n+iLFpTbJhYED5BtL2S7IeNXz
         PmeeKgTTy/1yrkzVs6+gZzoJYi1e0rZ7naYSkaqxCED5aIq+1Ps8fFlwVWFIKKN4C1E9
         xLtZWbMcjaY9ZxT396Wf4jIw+H6uxgWOJr2MJ5eecfug3XRaXm7oTK9TEUHUGOz1T/ab
         lz+tL3mbkqJMK2ZQlEOhTkGF5VAMZjKmC8nUtWhOnokvMaSikbaw1jxw3wGS/2wwJk4y
         P8li5hHg+8GvubiOjFqpw1/sRhn4PKl1y9z2AbvioVT0easWMDSKVVz5ODAzkSQsD1H8
         WB4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+LFJ0PF9Bxle+JRYsWMyOMZvuN+LhfoCxr2hgKZxFw4cN7quR
	axfl+APzla7wkCz7QIVCqRs=
X-Google-Smtp-Source: ABdhPJzfOSTbTY8VmnLdI8LRvmeaYUwsrITYrMgmkm0Yvz7BwEz5u+JAhmYtu9KEATmbVEiJc7BJAA==
X-Received: by 2002:a50:a446:: with SMTP id v6mr68736333edb.254.1621246443489;
        Mon, 17 May 2021 03:14:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:e046:: with SMTP id g6ls4037631edl.3.gmail; Mon, 17 May
 2021 03:14:02 -0700 (PDT)
X-Received: by 2002:a50:9558:: with SMTP id v24mr11353696eda.264.1621246442666;
        Mon, 17 May 2021 03:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621246442; cv=none;
        d=google.com; s=arc-20160816;
        b=cgB9Tgpkfn+5ltu3GuIdUCl26tQyeSHqNQ1TGbldoUQh5yCMkQhC3rUlAMM/il78qT
         B8O8hmPANgVpYPQOcT1lPRupzXWYTu7vRYkQsLWjjl8+F3y/n67AlZx3NMgnUwpWvnro
         LpxU0Pz6E883dJNxE3Qrb7e43fzVTcRUXQE8oqvkl/ipX10zXR4mFp8WVBuMHEzKblvY
         cJPxlULqekl1WVN59psSMf50PSp+de8jdyx7WupWNk1EIReBD9rBd1ewfKVmuJ0VvYq8
         uhNap4anNO1LvsUG/959kci9X21r90VGSbeZmLg/mi4aXXhgB4SDe6WHl4irCcuqRL27
         Et1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:from:references:cc:to
         :dkim-signature;
        bh=Qy2caDS4XFb/AW7rLi94xAj0rUbhzK37slT4ntBBKR8=;
        b=A/t0/XQt73YpMD5IaStcBwRdbOfD8opQ2SL5RsGnqfPQ/tiF4DaiR3zco9XeHdaiuf
         J+R4g88+HsX9HLXJMb3+KXzJrdTvAXLf3g4Br5tsFyxuVyjHJLCqXqVhxiGIKJ5X2eW2
         EuN8aT7cpiOVLgt1jG1Zt+LBC11JQQaw11pI3KmwcZsiFziqxq1Io+fj21tOZX49nCv4
         3D3lWQZagY/1kx+o05NsjKckOVKgVHf4Gvn9QhEbqja2KN6LqPR1DChQ44TLPjFib9SP
         LxRD/jiLX4pMJAGH4Gh/oM6FHsUPZ7Y1pHv1unNQ8FqxciWrlMhOoZ1fFCuqwcZvjVW3
         OMIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b="c/Pc4PFw";
       spf=pass (google.com: domain of quwenruo.btrfs@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=quwenruo.btrfs@gmx.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmx.com
Received: from mout.gmx.net (mout.gmx.net. [212.227.15.15])
        by gmr-mx.google.com with ESMTPS id a5si422175edb.4.2021.05.17.03.14.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 03:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of quwenruo.btrfs@gmx.com designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [0.0.0.0] ([149.28.201.231]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N7zBR-1lMQlj0u8Z-014zCc; Mon, 17
 May 2021 12:13:56 +0200
To: Yang Li <yang.lee@linux.alibaba.com>, clm@fb.com
Cc: josef@toxicpanda.com, dsterba@suse.com, nathan@kernel.org,
 ndesaulniers@google.com, linux-btrfs@vger.kernel.org,
 lukas.bulwahn@gmail.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <1621244810-38832-1-git-send-email-yang.lee@linux.alibaba.com>
From: Qu Wenruo <quwenruo.btrfs@gmx.com>
Subject: Re: [PATCH v2] btrfs: Remove redundant initialization of 'to_add'
Message-ID: <5938551d-a083-a62c-4ab3-bc29fc62b1df@gmx.com>
Date: Mon, 17 May 2021 18:13:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1621244810-38832-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:0U/g3hMrG3o9fGlDnHRwXK68W/K/FH6/b8eQv0VDDz9dIoTuExD
 xiqwfwDQjRUSbpsNx+V1gb4ixIk+Gbu8vRb48DLnUwvhlCqjKIizRtaHsZpe0hoW7KvFJyw
 NKlCxDKqndQ3Bdx5RHdM/anE7VyaVFQpGiMtm5BBwqE4eSZaOTiIynYlx3a9sS6WhDItKGV
 I79EuEnKM4vzA+F17vjEw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EPaV5kE0SOE=:ncrqL6P/aa5VszjRuabaVJ
 v0NDRFGqT4o6+C9MIYC7tdXkezCnrPaKX9AQ5GKXGf7MSx2vRxowMoZ8aM4nUNGd0OyrhPPs5
 lN/e26mL0DtMbaMvr2SxteBC889RsSy+vRoo4u9SVFtuAXC35t2CpZFxWGhM6Qq73vcbylXSF
 8Vnxi/goLea5bds1eDCTsqdcrMWFA4NiaxzGh+YaNrpWUJYThjnDx9+uT6ejO95IkU91ftHfc
 V62Q59Qq2sLj4xjbw4Edqb86Vib3OeXGxvqWL8mC8wjooh0YGfPYEG6wNlzD1b4d5wrLqHZy5
 Vrm20vkgElTZ5ztgOeNoatMxMKENNFoBXM6nt+RuVm/f9qexL90qh2iQE1I6E8pWYj5cWNpwo
 +aphho6SZ0pjVjsLdgZhRZwvhA6pGIr/1Gpx9JaQ8N/yi6rpbZ8wAlWTYhtO5ZVIfWAlo+BFs
 u2J4iStZPztdOJUnXSDzwxoHRiB4QwnQkqOX4UQkKPdLgzYeoFiMeUsugl+WMfjTibxlhxzwz
 CDSCRddDCuhXIrUI0y0aJiLEd4kP8ri3fItabECW9Nit+bT/aJm+ggHz/ixUNEEuQjRjzbiVV
 YfSF7Zpo22yPT56/e0hJGWAVEv1EMII5IDlMWFRVNKLfYAXh41yLsotWOMi0gnBmxEKu+OQre
 dAk4yQtxMe5T0PCgT83ZbSCu0OCsuKdQvBRGSUNFM48oz46P0N74AvYeMtK7GrA8/bpq7rQYE
 OJLRtVM0h/TVNNGo+FIXSKsV9+FPJt622p/LswSXuEJ/4joFh3xM14Vg1xqgmAq0CHSdDFBdc
 f8rfEcEvIEnDxG7R/0xghEY1WsjKQVBw2T4yKTHWc/SOvwF0dHOg593EVnzim6ninde/Zvc9B
 grKyMlFCIx3qQt/f9ZZvrvfKmBRN/0H80yLXfElckzsFk+FDzF+b6wbMSKCwDtCzsflfqB6sl
 t4kFHkiu+vUxMdRw+musVAi1DQpXFYKabqX/HKu2gyJF9IYNIqt0n1GzA2dnaEiOCm+321OQz
 3aE1ckDLPWBDX1DlrTW+6dOrWKIpkbZzP2Ca9Mo2wnVJ6pTlW0PL488zRoJJOnonsU+wks9J1
 92VvhgivSrjCLLESNVBSdDJnk89YmTAKQlVhOSTo4C93nrNHDUkshMrxjeUD1wX3PfeSeorV8
 O2JTWFXuUEXjiXRL3XAwY0PBfPvN9zufUtQGpWUDUDmfJhTLDNwSCfpTWWAqlumWwgMaO5LQ2
 ogOYv3hOMnM8x6XXv
X-Original-Sender: quwenruo.btrfs@gmx.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmx.net header.s=badeba3b8450 header.b="c/Pc4PFw";       spf=pass
 (google.com: domain of quwenruo.btrfs@gmx.com designates 212.227.15.15 as
 permitted sender) smtp.mailfrom=quwenruo.btrfs@gmx.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=gmx.com
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



On 2021/5/17 =E4=B8=8B=E5=8D=885:46, Yang Li wrote:
> Variable 'to_add' is being initialized however this value is never
> read as 'to_add' is assigned a new value in if statement. Remove the
> redundant assignment. At the same time, move its declaration into the
> if statement, because the variable is not used elsewhere.
>
> Clean up clang warning:
>
> fs/btrfs/extent-tree.c:2774:8: warning: Value stored to 'to_add' during
> its initialization is never read [clang-analyzer-deadcode.DeadStores]

Personally speaking, compiler should be able to optimize out such
problem, nothing really worthy bothering.

Especially considering these "fixes" just randomly pop up, distracting
the reviewers' time.

If you really believe these "fixes" are really worthy (not to just
fulfill the stupid KPI), please at least pack them into a larger
patchset (but keep the separate patches), not just sending one when you
find one.

>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>

I know some maintainers are already very upset about the bot, although
in your case it reduces a lifespan of a variable, thus it's marginally
acceptable, but under other cases, it doesn't really help much.

If such fixes come from indie developers, I'm pretty fine or even happy
to help them to start more contribution.

But a sponsored bot just repeating clang static analyzer

Trust me, no maintainer will be happy with that, and you're destroying
the reputation of your company (if the reputation hasn't been destoryed
already).

> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>
> Change in v2:
> --According to Lukas's suggestion, combine the declaration and assignment=
 of
>    variable 'to_add' into one line, just as "u64 to_add =3D min(len, ...)=
;"
>    https://lore.kernel.org/patchwork/patch/1428697/
>
>   fs/btrfs/extent-tree.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/fs/btrfs/extent-tree.c b/fs/btrfs/extent-tree.c
> index f1d15b6..13ac978 100644
> --- a/fs/btrfs/extent-tree.c
> +++ b/fs/btrfs/extent-tree.c
> @@ -2774,11 +2774,9 @@ static int unpin_extent_range(struct btrfs_fs_info=
 *fs_info,
>   		spin_unlock(&cache->lock);
>   		if (!readonly && return_free_space &&
>   		    global_rsv->space_info =3D=3D space_info) {
> -			u64 to_add =3D len;
> -
>   			spin_lock(&global_rsv->lock);
>   			if (!global_rsv->full) {
> -				to_add =3D min(len, global_rsv->size -
> +				u64 to_add =3D min(len, global_rsv->size -
>   					     global_rsv->reserved);

Have you ever wondered why "global_rsv" is not indented by tab only, but
with extra spaces?

It's supposed to be aligned with "len".

Thanks,
Qu
>   				global_rsv->reserved +=3D to_add;
>   				btrfs_space_info_update_bytes_may_use(fs_info,
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5938551d-a083-a62c-4ab3-bc29fc62b1df%40gmx.com.
