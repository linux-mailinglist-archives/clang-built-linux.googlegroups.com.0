Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBWOAXWIQMGQEBRCZREI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B8F4D8822
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Mar 2022 16:33:46 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id u123-20020a1fab81000000b003318c64bd9dsf2351624vke.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Mar 2022 08:33:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647272025; cv=pass;
        d=google.com; s=arc-20160816;
        b=dVtVN3gBtp+p46y4zpjtJXizoLMdZVL+VjpANwIdMfyzna4lb4zdsEL4hSe1hQu+9f
         LYw/FLT7JJt1xV5pbd6K1Rn5z+2E3SybGIawkVJ6+PW6PpAUiyOnXK/CtgQJkFFPPbzA
         ylHV7Whi+U+2F3ZiFLgOSmPHwHW+Mlrh+efHoGltG2qiEvHIf8mLeP1T1fWvEhmvxmRa
         x6t8rNUcpIj9tPzBKVPypETITR0+cKaEqZx+54HEJGx25+FK8ln/hrmSghbjZOPUhuhC
         ul4Spt7AeD8cDEro7bKPdYbUuCmWjRfRCLtvufWZ/EL+sWQK4MTAUpyOI4ljj/1ZxNT9
         cCKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gZ3Cixp42Ld0gefllvfKiNie1WEBOQp8PC0cm/8nj0w=;
        b=tet5TonU3VmmTLkM4M8BNM88QakyxQaHY/T+4DYwGHuD9rHsnb/dxtYKdSyKIcq04C
         YtT3X5wzjs6yDECD2CdXISFkCsKq13pjSdj626lf4qgL4uT3za9PNhGhXt+bLLQ8BBal
         REBG05Xy//vplgKuuV1pS1Ay9r+tbrqUrlyve+IMb3IdrdqsgoAi2TG4J8HlNGiRUAmD
         cywOzHSlIqfm8Q+HINntdvq+qNLiZcS/+BF1YhOyMH/zODof3G+g/2B57we9YRXdzo5n
         kMiEppRDcMMqcLcPDMGuDVwk06tXwMEfBUoIfLOvGUXCZXIzLgB7YPTGyl9C6SQkTqzI
         93mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RfIFHwmN;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::1133 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZ3Cixp42Ld0gefllvfKiNie1WEBOQp8PC0cm/8nj0w=;
        b=nVi6ufnrlmRYWjhbzpI8n584Y2f7k61lyX/ZDHdIPTDRJlSSqUDCkbRbBhXf0k5CKm
         SZPhq5ZIy8akIjVZ3qdpl3n1gQRwZc0Kt3ycFs+aGltfi0RyHUX6wOGDRsKjKXtKbOp1
         FcFt17M5eRGvkxET1EUlG7mWSkeIWkkcVtRGatbcbMjiB0wLvWc/mZ9xugXtchdkZQPx
         C64V5TWLdFWpI8LHbcAYiyQdDlFnqxrpQry4EDomv+0vKWvMnzzi3SNH6i7q4gs4zjAh
         wuXI8YUMn2cTD03CtGala67NEM56Bw0v5jQHp67hjcAoTP8FbQVfSvTKE1HU9wDbKply
         hkkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZ3Cixp42Ld0gefllvfKiNie1WEBOQp8PC0cm/8nj0w=;
        b=Iy5jL4KsuCU/2rDJgsZWtH/MF1TgeJ4tBupIHbKZhKlXUocytVjWfSAcwuLSCh54G9
         Q9C9CV574K9Ajnp30knKrrmY+CdeJeM0ndULfeSkALUK/LLqAuourYI1ee0moiqV8Pvk
         a25pP7ZCG64Z4S4H+iE+VGYFFlLNrjX1TVE54pVYQt4Ng3scAkJXMKJkKenIBx3hkRhj
         8zadmdflepgx9zvyQzg55/pZzdQNA17KnfUruLmzTgS1nLWPcb9iRz7VA1hm4h0JVrwo
         91nvbiNRm/xpO++OgDLGV9rCz5jAN6wHoqVXcAT7ClH2kS57qpR2gf/bkPoYa10ig398
         iP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZ3Cixp42Ld0gefllvfKiNie1WEBOQp8PC0cm/8nj0w=;
        b=D0D2n3HvXmiAaH32Kh72l5yxzUfb+wPawxcPEtVWBcR7wWVYngQXuBAtFMjVcmh4mb
         mAxhpAhIZECrxeRvbujYUIpAZ108fnGKPSEasJuwv//qpVDu626POFfu23uB6EfTs9yy
         bhIffMtNEbnyoTlYwK86YrOBy90dxy7CTlnWTlwmM6d+9C7YIY7j1iFm28LxeP6NzxB7
         K3vq0ONwrN1y/oEUNbrEJQRi+BiNretx4hRsCCMxOyCKEmBxDEdbqiJhuB5/wCwLL4EW
         gAx0n2oPxoB2/qZhguUVcS7LoPhp5iwdpkUDe9d+dGBx3d68Sely3FZ76MXNSSwJZvru
         BQjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530e+bhj9SV3qEGWpVA7p/SXAcqPn0lleGX1BXbx0vqdx4nBkD62
	GsIqU0tmKE1wBciLpQzasPM=
X-Google-Smtp-Source: ABdhPJwavil0Tnl5u1BE6UMlPBqV+D+fbJRvAGywnVHv9BlsSjPrl2RSj2ncaW3jo+BimDSjC6UO6w==
X-Received: by 2002:a9f:2462:0:b0:34b:f795:995 with SMTP id 89-20020a9f2462000000b0034bf7950995mr8805530uaq.14.1647272025348;
        Mon, 14 Mar 2022 08:33:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:21c8:0:b0:337:2830:2da6 with SMTP id h191-20020a1f21c8000000b0033728302da6ls838788vkh.4.gmail;
 Mon, 14 Mar 2022 08:33:44 -0700 (PDT)
X-Received: by 2002:a1f:6101:0:b0:336:ea3c:48b0 with SMTP id v1-20020a1f6101000000b00336ea3c48b0mr9718559vkb.19.1647272024850;
        Mon, 14 Mar 2022 08:33:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647272024; cv=none;
        d=google.com; s=arc-20160816;
        b=F4Bbas/ttz3JXc88EvO0VPWqlPUpzmitRDmk6Qyy9bkBOYVr1/BhQXFVCTTML5oqsv
         McrIMzJLZOHIG3ZmRlrEvmHx4Ly8gbXAwq25ifGebe3de2gvHaXpmxxirY0DoTqex9av
         5KeGYfRW6jFIrGQu8ve+7xBZc8dAbgiKKt7aoN3GAFzRkMucdMQoj8qzQVgWAL+FqGdR
         ViOBn94ub1xiVS0rV1St3WF5hkCkWd0xPUIstyiH1+sgX6Y0mzlT0gUTA7MajQnXn1tQ
         X9C7R/lpRP8Afg/VjQeg6nkYGZDQb2WJkanoNc+DwmvNOF+wrYCVIrYufFvl5tw1NO8Z
         ZYaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7Uf1X6BAagoyzcf9c5dvcehL531aJr8OKOHip8qjCDs=;
        b=Hk4/lQTpyz6fcbxg7ieegr1G3ljBh8nkz2JJzxhBUcHm2SlNOBIgYI0FmO52ttyp1C
         RPCJ37V3PfWi2ufVyjY3YARpVXgf8xsVEm20sn9wsd/Bdl5+reZ9QaQXjoy1XPu6/w/B
         3mpHuyQEuNj8cl9tBWWJEVf1Id18u9P3r/4g76JQWjvLe8xfRnQVOTDtmFEHM8unTF1R
         s3qwb0FLclqrmDrHrcNXGXLa5OZIB0C91m+oosrtMPPFjARaWK/Ja+JqHjptJtp611To
         kBdTRPCkINag7bb9Xzv1UaEihqD3uy6opWoeAEEAiW4FlD9vetaYDWjI1rl4MeJRdXp2
         PJQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RfIFHwmN;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::1133 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com. [2607:f8b0:4864:20::1133])
        by gmr-mx.google.com with ESMTPS id b194-20020a1f1bcb000000b0032db64783e0si1076290vkb.5.2022.03.14.08.33.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 08:33:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::1133 as permitted sender) client-ip=2607:f8b0:4864:20::1133;
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-2e2ca8d7812so106611487b3.13
        for <clang-built-linux@googlegroups.com>; Mon, 14 Mar 2022 08:33:44 -0700 (PDT)
X-Received: by 2002:a81:fc06:0:b0:2d6:4a8d:943f with SMTP id
 g6-20020a81fc06000000b002d64a8d943fmr20275962ywi.464.1647272024282; Mon, 14
 Mar 2022 08:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220314150321.17720-1-lukas.bulwahn@gmail.com> <0d79b44c-d51e-282c-99a0-78ae6c9f6f01@kernel.dk>
In-Reply-To: <0d79b44c-d51e-282c-99a0-78ae6c9f6f01@kernel.dk>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 14 Mar 2022 16:33:33 +0100
Message-ID: <CAKXUXMz4XkWTizAjD9nB3x47Fu4+1=pQgWRQNnFzxqCPr8cFSg@mail.gmail.com>
Subject: Re: [PATCH] sr: simplify the local variable initialization in sr_block_open()
To: Jens Axboe <axboe@kernel.dk>
Cc: Christoph Hellwig <hch@lst.de>, linux-block@vger.kernel.org, 
	"James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>, 
	linux-scsi@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	kernel-janitors <kernel-janitors@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=RfIFHwmN;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::1133
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

On Mon, Mar 14, 2022 at 4:05 PM Jens Axboe <axboe@kernel.dk> wrote:
>
> On 3/14/22 9:03 AM, Lukas Bulwahn wrote:
> > Commit 01d0c698536f ("sr: implement ->free_disk to simplify refcounting")
> > refactored sr_block_open(), initialized one variable with a duplicate
> > assignment (probably an unintended copy & paste duplication) and turned one
> > error case into an early return, which makes the initialization of the
> > return variable needless.
> >
> > So, simplify the local variable initialization in sr_block_open() to make
> > the code a bit more clear.
> >
> > No functional change. No change in resulting object code.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > ---
> > Christoph, please ack.
> >
> > Jens, please pick this minor clean-up on your -next branch on top of the
> > commit above.
>
> Should it have a Fixes line?
>

As it is really just syntactic clean-up, it does not deserve the
attention for any kind of severity assessment or potential
backporting, which usually comes with a Fixes: tag.

So, I personally do not consider a Fixes: tag needed. The code works
well before this patch, and well after this patch; it is just a bit
more clear now.

Lukas

> --
> Jens Axboe
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMz4XkWTizAjD9nB3x47Fu4%2B1%3DpQgWRQNnFzxqCPr8cFSg%40mail.gmail.com.
