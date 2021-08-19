Return-Path: <clang-built-linux+bncBDOMJEHI4IARB2W266EAMGQEE4L77UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B9C3F12CB
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 07:34:34 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id c22-20020a0565121056b02903c8d745ff5csf1514333lfb.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 22:34:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629351274; cv=pass;
        d=google.com; s=arc-20160816;
        b=UGAv3YzPmb6OsluCmCGfLQd+QyiT+uc9N0Vz4mKNw6ushe3prvffBERoPT6ySJDSI4
         wRG1K8FXoYxMoPW8BaaS1+0smyphiUX4KA6o3a2dEaZqVG+8S1l5Q0sUb4MrstqN2A/y
         gwO8Cc+YJTvx5PxMTGwG0wYEQXGhXqCWkVEVFzMk7nw9q8Qxn4oEU9fHDErjMou+SlFn
         sye9MVaUz/VSCWCwqZzYV5Dl6vR+8RRJEYsWJieCIkGK/rFmZUwnlqitJGrj3I1QKFhV
         bzzx03dQdIQU3OOB61AduLu3iCJT1M9kML99yqrv4rvr0dh7+72xvQjt5np6MevNrR4+
         sTPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=15YB7HLqcNvHb5k2HQnUQCE8hIhAphqoRyIklB7oo6c=;
        b=aj7h6V71XdmATHpGyNVhczf8xP5JQ1OTn+/Lgt2hJ+FqQQSpyAKGoDqC8P+TVMAuTW
         RB+PylNjmwH9q/Xs6zhKJ62vD1L0vsXgNqP8nCKWwihy9i9EvPjzgrtL5RIHGYIeie3D
         6djihpoS4UIG/PeOma+KM1Wnyw6BcfX2GOET5zj7eOY56+tOJUvqMRMeM+J8qHfx2hQt
         v9xL67ktXnzhHSpqHCnbdxp9iEd0L1I+uso1ujzeEIebwUkbb/MgwNp9HNgxxRbn6vWI
         wjN3xbel+UYfRXOIEnxXxhdhYPqUUFTJEUZf9+Ndp6VXaeXbWxpZoMpSaPIIfLRA4WQb
         N4Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YaLJ+ZaU;
       spf=pass (google.com: domain of mazziesaccount@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=mazziesaccount@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=15YB7HLqcNvHb5k2HQnUQCE8hIhAphqoRyIklB7oo6c=;
        b=q9scygGqwZ9SBvzmuC2BDlIFO4UrRGSl1Nls6U60yEhjmrgSW4LbKg/xiWpDO/gdmH
         rUiFVtDAqox0VK/xNjYZ0of5SMXJi7TYGXxEwqUI2Mq+vEvr90o9+arm4FmsvlamnORR
         Dkp4uCi1her8b4IDYPMbkI8q+ZehBKz00uquTSiXCuzh8aoK2pi2jY2EaiO6SlgvziIC
         DoRLUdml3uAH0G6DVkbE4IXGyL/nNLetGOV0c4rUj1GOK6Aocs1KmXmbnObT8PQ16Ung
         5LzMQpRIuopixDJv9TyqE9+fdqZY8fLvMax3S3Wx7akm0pEy0YPiiUB21Fk2N78PJZXv
         wCvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=15YB7HLqcNvHb5k2HQnUQCE8hIhAphqoRyIklB7oo6c=;
        b=AC0vbRZd0rCvY+nt7+YYy7efiSlNXTujMsxxXruJ0KKNJG8GvPdUG2BqvoBHOhbD+B
         cAM4cROJFQP8fMRmeWJuVkuGjk9Cq4I2qTb8rYQZfd/AkKvfmBM0mQY8naEPS0wITrS8
         CCA0GBe8plc80TFbydmv62yPzUM+7KpxYP48EokWh+Vka/wkAP5QjMvao7TbyDnd4DCq
         hEewYHLgRqNwPUsX+09vg/SwHNu30l/V7t20T8d6mYm28VnvZ7JpOhndDyVgQYx8JC/5
         lgj9ow2ERLZjLNsuHHMqIKzb0FGKoR5P2Cxb+9hAoaVuTz3oOTOxOYk9q283cCrs68H6
         8BGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=15YB7HLqcNvHb5k2HQnUQCE8hIhAphqoRyIklB7oo6c=;
        b=AzDVMCf3KidAwpN7DEsiSXOLWMF08uDaRYr5/+PPwltp409wCx244LWMzRIKQYdGUf
         Lp8R1gOZGxWUfZbWGxRkbesxKcqVN0CXp4ndWZ4iVTwf7crHHABX5RhvUSQ4gwL11Hxp
         5DdKMeHGqrJuueOsy4PV+rc4zn8VnoBvxXYRPGl+y/zIeX5AwhaS2pKtnwwNzZXZ4Vis
         7wjS/3IKlM2wWL7CPliRqukUabVJbRX/ldf04rXo832huoqQwIPKJzCIBdlOnmNnbU3m
         dCzOLhkkidLK1V80uSHgYLwvYTkE9zycpxsrBPFGz8VvDFDu0hx8JtzwmUdoVrNnPyE3
         YlcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hs3SA1ohhorH956cx4yeD/Jv7jp4b17aW7juFVymYEjbTU1d4
	OWz65GrdPRDT/WeK8igv1jo=
X-Google-Smtp-Source: ABdhPJyFg2tLtacGMmzOG4zow3PYd1Mdsfpo3swLhKT4YfpM9rds+sjWS9mCnQ+Ki/8JalhKkzte5A==
X-Received: by 2002:a05:6512:22cd:: with SMTP id g13mr9496818lfu.440.1629351274428;
        Wed, 18 Aug 2021 22:34:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf26:: with SMTP id c38ls808862ljr.5.gmail; Wed, 18 Aug
 2021 22:34:33 -0700 (PDT)
X-Received: by 2002:a2e:b80f:: with SMTP id u15mr10770916ljo.232.1629351273304;
        Wed, 18 Aug 2021 22:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629351273; cv=none;
        d=google.com; s=arc-20160816;
        b=RbW91oDkwrWSQ2eNzjtyooJmwthlgxecOeqvWcjXeX90P7844qpH1Nr3kZRspJXt2W
         MTnqBNpJlFWodoYQQrIYwjzagfqI7pjGpFL7hdnQHYYJwg9pmp7FRuItEmwF5B5VZAp0
         Ufo4hSvEfcCLVU4EBfXzJzt7qCoEVwj8em3FrXnoJhgD7ITrzNfjOi/BR5lMj8bl9OsV
         ZwAdTxHtlQ2Hw79hfSMRQqs/K0GcWqmmOl0NZK3SIlAVUVBT5UHCmJLgiG97IuZaPOXQ
         /9dDjr5P7Glt1vSMCF9xDBJAbuJB7McZnf9wjnd8L3EH3Ga2x0+MFMIGUo1OJhw8Kt0j
         a6Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XzBtTyUuZAZ36Cvu3BHXUN5QOP1AlqjuoYzkcck7J1A=;
        b=k4phR14zFjN4rMrZ25/1/vH1Pi+ibWx+9C9y3q6B88qZ+HnAnzaCWcT6kJnU8Gg9AK
         sGZuW3PUZJdj8RRBOIoPJtARYMi15mw7DZ643dga0D+QNKP6gLDs/5nnwcuo4buR+gRi
         hOH5/Eclt2kTu5OpHvyUvvqPctaodopvAZFnZjVJP4y9UhBOFOs8S04pMy9IELG9EABN
         06CGhXN9MwhSc6hn8bWhBHzbRtYVq7CuIboRm8i7cgs3YzzyT2MWQIQesp3oo5A5bcEt
         f2hPVTlVqnsAosPl165/jI6fUerRewsCFRgwp/4TC83swqMFTifzltHioVZbWYzUiCKq
         CFcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YaLJ+ZaU;
       spf=pass (google.com: domain of mazziesaccount@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=mazziesaccount@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id h13si100933ljj.7.2021.08.18.22.34.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 22:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mazziesaccount@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id q3so6927466edt.5
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 22:34:33 -0700 (PDT)
X-Received: by 2002:a50:ec0e:: with SMTP id g14mr13880265edr.157.1629351272988;
 Wed, 18 Aug 2021 22:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <202108172206.9cbgvI53-lkp@intel.com> <4dabc78a-f9ee-4e7d-8bf3-ea1c6cef8530@intel.com>
In-Reply-To: <4dabc78a-f9ee-4e7d-8bf3-ea1c6cef8530@intel.com>
From: Matti Vaittinen <mazziesaccount@gmail.com>
Date: Thu, 19 Aug 2021 08:34:22 +0300
Message-ID: <CANhJrGOh+9PoMmsv-Q9petTV-hv9rv9nOitg0NCQHqXVXzJvvw@mail.gmail.com>
Subject: Re: [kbuild] drivers/regulator/bd718x7-regulator.c:531:8: warning:
 Excessive padding in 'struct bd718xx_regulator_data' (8 padding bytes, where
 0 is optimal).
To: kernel test robot <yujie.liu@intel.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>, clang-built-linux@googlegroups.com, 
	kbuild-all@lists.01.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Mazziesaccount@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YaLJ+ZaU;       spf=pass
 (google.com: domain of mazziesaccount@gmail.com designates
 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=mazziesaccount@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi,

On Thu, Aug 19, 2021 at 6:26 AM kernel test robot <yujie.liu@intel.com> wrote:
>  >> drivers/regulator/bd718x7-regulator.c:531:8: warning: Excessive
> padding in 'struct bd718xx_regulator_data' (8 padding bytes, where 0 is
> optimal).
>     Optimal fields order:
>     dvs,
>     additional_inits,
>     additional_init_amnt,
>     init,
>     desc,
>     consider reordering the fields or adding explicit padding members
> [clang-analyzer-optin.performance.Padding]
>     struct bd718xx_regulator_data {
>     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
>     drivers/regulator/bd718x7-regulator.c:531:8: note: Excessive padding
> in 'struct bd718xx_regulator_data' (8 padding bytes, where 0 is
> optimal). Optimal fields order: dvs, additional_inits,
> additional_init_amnt, init, desc, consider reordering the fields or
> adding explicit padding members
>     struct bd718xx_regulator_data {
>     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~

I don't have a good feeling about these checks. Especially when a
struct is composed of other structs - which may be modified
independently of the code we are looking at here. Any unrelated
addition of a member to any of the structs (well, maybe not the one at
the bottom). I guess fixing all the users of these structs when
something changes would cause quite a churn of changes... What is
expected to be done as a result from these mails?

Best Regards
    -- Matti

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANhJrGOh%2B9PoMmsv-Q9petTV-hv9rv9nOitg0NCQHqXVXzJvvw%40mail.gmail.com.
