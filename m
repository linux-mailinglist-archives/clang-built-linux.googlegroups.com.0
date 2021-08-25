Return-Path: <clang-built-linux+bncBD3ZPWOPXYGBBWVHTCEQMGQENHMFC3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 305DF3F7264
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 11:56:44 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id d13-20020a056a0010cd00b003eb385150d1sf4121054pfu.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 02:56:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629885403; cv=pass;
        d=google.com; s=arc-20160816;
        b=OycfKP4g5IQGNVF7RGx6Ra4d0pBeFwAwSbGas+wZPiMW9QkJ/8tQrlxG5kXYy1hVfK
         6BpONMRcFaL5I2ORMasI6x3n5DC4chN6q+Uw77mRlXkojYq1RU5DyhJ/96gRmfBRBK2I
         vR/aNogYsiYiLzchAXXWouLmXSSM6K3F+K2frJQbYzvY1PNAgqPa65fzDQ3xtoeMu14U
         aMzp4a2Kagm4MY9PvHK1sjx3ByDQ1uF7sIuxkn0mWS+W3f2dX9YVnrdU3UkyNcW4iRzw
         48JykA69aoZ3ldRl6DTihsm9d1cKrP9j4Ps9rZCojzDcR2Amsm9lwsxXF6GpjiwAhXIx
         AAEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=TQRQiKl52l+cf/6eU9W2vBH5CLtHSm49ceW1opMJrbM=;
        b=ar8PA/XAoWR7lJDIMf7YsKEMjjSZ1EgwuJ1e7xJJCc3c4SS8/AknffE1E2wNF3qqTg
         c7AADAHGvV+qFE8OFRJE34XqPGQCGDRAwyXQGFmtdxtKJvxOZZsZk/Mu1vCIC/MxtDAN
         LtRqXy+7j2KAXkxGwTmkhF2O+5khdQY7PIvXtXa5SeKZ8LyOY7xBZ715E+Dj0rAH/ZZd
         FWnOh3UJwems+QJXOgRABED6luchsB4PTo0Pi27eXeLgh1b0eXsFA5nEur9UmvqRHqhh
         GeC+UweTp+v+X6f51NuFITdh2E61v2U1xquXDU0SMBa5QVwjF7K4irgWzo1cwI3e2ZkR
         xGZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of thomas.hellstrom@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TQRQiKl52l+cf/6eU9W2vBH5CLtHSm49ceW1opMJrbM=;
        b=iCPzflsgFlTfByy3OzNNB6QATVebakatzzslD8eFikrybqA0F45AxVt1intqt6ZMzZ
         SJbfDyR4yBFVcfCab6NH555glT//rHZ11eE579B9PjV6YgiWptWzLKhBHMnMLpstcMmd
         uKa96R3PKR6S0Cj3Lnsjmq72EFcrA7aHfb4dtfZ0rDUv6bgLrr7IXaEhOFfY+sO0i/i9
         rAv8amYpUiGur+3bzWUYsp+WEl8e7UossC7xJOuQ48eXz6XyxA7oGPyLa6TViPBTjI7S
         LrAn/hWp1Sn0OkfD9kcCD9SRE0smdLdWocujCugvLdqbpRm+rRIYaBMvOoHTDIToetRr
         cJWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TQRQiKl52l+cf/6eU9W2vBH5CLtHSm49ceW1opMJrbM=;
        b=RPz55cn375hDP9/r9QE1TH6bNNZloWG5RfeaymtSxQLJLU+2JcJwTZndyQDwPfTWww
         jBX1pjuteZmr/q2XCS8lqRi8baJ74IbpoQ4ojSbIe68FomD4WAAwzb5yhMuLQc9uDLNB
         xHcXn7ctT8cf0iR4iwDNdY38VqHHk/78x5J7+sYLjT0UwL/Ls27V7GzVxspsNYcKcM7Y
         AbueVOoQVR4vVRxxOtComxWxZOxGziSutGmJLUqGsD9PnvdWva439gIGbbsjM6NFYg3W
         y19lqBpjZJ9/sIo5DPE4CrlH/VfXIo/QqEPevCmHKg7QPeq42Yp1crG5VckZ4k4c77DB
         kq8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ad5Q3p1xUHCnnjqV6JSR0iB2++AFKWP7NDPBs1OyzmUWYcnkc
	N5fjIVu95wyT0VGoFMZEYPo=
X-Google-Smtp-Source: ABdhPJw9bRXtO/LPdQccmfh9R7jkoRKORDLOVE+836Dvhd+o6cgW9NQTnMwU1JOp6k6ApZbj+p733A==
X-Received: by 2002:a17:90a:4d8d:: with SMTP id m13mr9499686pjh.190.1629885402907;
        Wed, 25 Aug 2021 02:56:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls721109pfa.5.gmail; Wed, 25 Aug
 2021 02:56:42 -0700 (PDT)
X-Received: by 2002:a05:6a00:cd0:b0:3e2:209e:4e30 with SMTP id b16-20020a056a000cd000b003e2209e4e30mr43685736pfv.59.1629885402349;
        Wed, 25 Aug 2021 02:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629885402; cv=none;
        d=google.com; s=arc-20160816;
        b=APAMcRTZQ2A/3rBZi2yXHmp5VVS099vWfQN5akSN/f7b/JkpOidY8HmgSt/GnOfr85
         zwiqNwUWgG8eL3tOQVC3i44wPnWekld82O32Wn7pAE5MS161oircK7KUp+/mkhmJrW26
         2exG3TyaDVZF4f3Vgha123XeSTmjn2B7OAjMcT/wcvyHCtpBjcITgslSuVW87VFtW3KD
         /OsBCuU6CTOvztKYLRphv24cC1cnA6M+nXMhdSKP3YrliWqBSPRomjM3pMBjEsap4ZH/
         lsF2rnUa8MvTfnrspBXA0yPCTuZfufEa6MdAptzFB9qCIUF06fDPdga3H4A7T8+4qXqz
         Ps8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=wYiFbeJ+yLSY4/oob1FvSTqnc3agZyTo2y+6pLWNjd4=;
        b=w2D1k8qw9rfqwdoviMgrITyU1worzVbliNDw8NjKy+1DR0upRiCDkBU2BbDGMTGGU2
         BS2/ululNtiNBYkGEl48Mp5Epa3pRvJEKFITtwoVFLhWvfPbCYvTU/GprJ0OHNiY5MCX
         Tr0Vk/z6q/A7l7O5ErFco+1SZJHOO25FCYHBu9yku1jfnIvezGoUV1nBTNpYQLp4vFT7
         111WCKm/eKSgOkU+iXSIR6E1FASMyvJ405vDqbrnkSCam6ZZwEJtUeD966Hywq0pPJ1m
         0n74DMAMnuYDdcRRb4qq81DcXmT4RKKIYLRdubJu29xDOrzLKk2sRk4vU4PHQNlHSB1a
         2enw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of thomas.hellstrom@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id h6si292578pji.0.2021.08.25.02.56.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 02:56:42 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of thomas.hellstrom@linux.intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="215648001"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="scan'208";a="215648001"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 02:56:41 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="scan'208";a="426393046"
Received: from pjthomps-mobl1.ger.corp.intel.com (HELO [10.249.254.76]) ([10.249.254.76])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 02:56:37 -0700
Subject: Re: [PATCH 1/3] drm/i915/selftests: Do not use import_obj
 uninitialized
To: Nathan Chancellor <nathan@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>,
 Matthew Auld <matthew.auld@intel.com>,
 "Michael J. Ruhl" <michael.j.ruhl@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20210824225427.2065517-1-nathan@kernel.org>
 <20210824225427.2065517-2-nathan@kernel.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <ef38255f-fe4a-3ba5-e828-bac4d9957cdb@linux.intel.com>
Date: Wed, 25 Aug 2021 11:56:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210824225427.2065517-2-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: thomas.hellstrom@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of thomas.hellstrom@linux.intel.com
 designates 192.55.52.120 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


On 8/25/21 12:54 AM, Nathan Chancellor wrote:
> Clang warns a couple of times:
>
> drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:63:6: warning:
> variable 'import_obj' is used uninitialized whenever 'if' condition is
> true [-Wsometimes-uninitialized]
>          if (import !=3D &obj->base) {
>              ^~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:80:22: note:
> uninitialized use occurs here
>          i915_gem_object_put(import_obj);
>                              ^~~~~~~~~~
> drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:63:2: note: remove
> the 'if' if its condition is always false
>          if (import !=3D &obj->base) {
>          ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:38:46: note:
> initialize the variable 'import_obj' to silence this warning
>          struct drm_i915_gem_object *obj, *import_obj;
>                                                      ^
>                                                       =3D NULL
>
> Shuffle the import_obj initialization above these if statements so that
> it is not used uninitialized.
>
> Fixes: d7b2cb380b3a ("drm/i915/gem: Correct the locking and pin pattern f=
or dma-buf (v8)")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Patch looks good to me.

Reviewed-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ef38255f-fe4a-3ba5-e828-bac4d9957cdb%40linux.intel.com.
