Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBLFC72EQMGQETWTWJAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD07409B5F
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 19:58:06 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id w4-20020a1709029a8400b00138e222b06asf3572156plp.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 10:58:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631555885; cv=pass;
        d=google.com; s=arc-20160816;
        b=0CjpsJ74Ov9zeiaGdkxWOQZ0ykEfQWWaz1BuvQnbHvalFsqholOUSvLT1vUwpWwFA3
         ihCfg6v6mNDAInKRATAtII9f7jYT7k/WvROPKkOtHmlvlIfTQQ9HGu5wGZSVPoEjwrA0
         NptA8UVoWH6uTjLjzD4dnvYHnEBlDX0hQDxS8KKHQK8pGyjXiuXDUZZxLsZe3e7D2D6N
         XqqdtnZ5Srq67EKZVZUhXi5nViMEt63ci3Ma+C//9OsscB2w/0DTymijgopEss9N/VY9
         LK7w4id6Rd16oldxiGKu2oSKxtaFI6a908faybuCt3SXlx8JwpW9wZuuBh09fCbCvolF
         +I/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h84+KEdyhEtAQKqGOHV5XRbrMc9gNysRFZze2a1S+e4=;
        b=dFjpuabcWZH92khZxtJn3uoPUoWV769o0GRKva662jO5qN7N3sOIyjAQ1BIo6kv9aS
         WLLsMn96vT8w20VpMc1XcgOPsM/xj6apnSHxgbfNjo5g8Pg/ddFk6b/wlEKfrllz4aMB
         ylFT92+7+BB/MvWC+v8mMxhGxJRj34YUdKSd1I80Ke05is5CXFl1qNEsx27PGKJGWxWo
         cW2ON/Ntpb+RDigyxVyu9/IUqHfbBei/i9OGt2RqEoUWaeBIC3AvrbiduCkvc8NTf344
         RvZG/lndbkJSKweuCmPjpsjlskIxKipgyYWuvDArMd3gM6iRLlv+l2Zr1hlEKw5+xd58
         Ddfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GVc7OI7q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h84+KEdyhEtAQKqGOHV5XRbrMc9gNysRFZze2a1S+e4=;
        b=U7IAnWk0qzWjINCpC4N6vChvYmjXzhLffQZunYoLoUPXqmICumpSOAnPjtPYJlowSx
         n0JJOwGXOO4A4umcByzDAj29TQ8xTTUHWfU0+cjWq4VrsGJYcDa08eWia8TqUZfEV0YL
         0hOVIdxFIuIRmw5ttAg2CMsHiqE1G0+FffKhoma0dmiD4AacXk4xoCKJ2DjllH9uOP2L
         p7InMlbwlSkyWnmzXqLXQq4e3K0tKB41a0IsRuFkveEKe0TKqfHHkrHRrdx2yeKrPH5O
         tMDFx9ZqMIdfvDWU1svrZc8RSIOGwWF9RK3XnZilpHSpxPQDTlGXMuezdnZTTP1ep/Y2
         qeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h84+KEdyhEtAQKqGOHV5XRbrMc9gNysRFZze2a1S+e4=;
        b=dT8ehjDjpcBjls0eXlyMiCh7LgLo5frWyJ66Xwly7pVGFsOw+qD10TuAsguPUiApA7
         V4ehba516TFSEXkR84LzCd+tT/JI2uNenMfusvwQhoH2EoxgrjznUUN6glGoiUdy3CjZ
         l6bFdjjL3dl1OROti+7wmYfYuhHKaxN2rz+vD0vKjv0YYW3wGqlcuaOM2tkhtMPAOqwu
         XV9QFUVKz2jmyNPG7l52/kw5Hw8R/tkdwwnlYxTMfutLC0Pg79Bs8iLztgxxbFv/Kkuz
         yVAE0a+WQT8evd8pkySPBt4I6ADhUP/DxNWS216WWJaRZfUEur8mkasgOo5XezxCagbK
         6kFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SrtxTB7rY1qIe1ir/rnyHSE/K4UR29nsaG6XRguZKu7veTzTX
	2OOPfLFUPmd56rih67y5dLY=
X-Google-Smtp-Source: ABdhPJzfDxkJThAk7M9+TeK/bjGzwU6Jou3bfwf8vs6KkBkKgRNn5uv1ZtyHauPBOfarkBLwTUqZMQ==
X-Received: by 2002:a62:82c6:0:b0:410:afa1:6028 with SMTP id w189-20020a6282c6000000b00410afa16028mr713153pfd.35.1631555884909;
        Mon, 13 Sep 2021 10:58:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:690b:: with SMTP id j11ls3793591plk.6.gmail; Mon, 13
 Sep 2021 10:58:04 -0700 (PDT)
X-Received: by 2002:a17:90a:9310:: with SMTP id p16mr804104pjo.193.1631555884136;
        Mon, 13 Sep 2021 10:58:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631555884; cv=none;
        d=google.com; s=arc-20160816;
        b=dcwbdY/k7v8mffrLHCAPsRsdXcTfJg6LOrA3g+IdimBVqQU8BpHVVU3bWA+XRdHiTC
         cWCtSwp2v0mkWqs9YEYYSf1Wmm5n9/v8Tc4az065brC1PxO3ZGH0MSt/7x9Hx7Pk4ojH
         Wi2lJSY5Sj5a1qh3xv/hbrlKU07ZD/CUP3eGQ5CKQB6n9oqHS6hqdYv/tQLBe6sqhmbi
         5WxUG7XT9eLif8DFf426cjZQRRNb94blhBMPlVdYDOQDscIFjqWASvBpz0WoMtQ2EKlq
         GVS9DVsYKYIjBxLUl/YOlnjCRIqAmyT0yUvcTc/GEm1V3od4+GZEvwGG7SI2kqSx8+7a
         0r3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kK4t1GfCZjAJ+MwZXVT/5/aigFHECw88ediQCDf2tN0=;
        b=MESXbtvj7mIsgUvoX1G55LA9X6oKsk88RYkKq/5Et9CzC8PwfdMY/NozJcLg1OkwdG
         EOMdGdkY2uZ2OhCFw4qGFsUI+ox4UdC5KzpKMJYqlVYmU/OTbMPFDHCx7B2n8BJiR9ta
         sbn19A/aWcgAVsHFEgmhbzVYrdCM0LTKQJ4lOqTWUsRwXJNhKiblH+X/O9t92BCcmicZ
         1EuXHJrOBa2ZVpHx1W83aCuT2cEDWPnsX2XOTnNkXEPVpdCELt+I99iLjvxSwoYc7whx
         qWQ++xQmhxa8tNyA5eKYL6u0LlwSMsiEkGQH44JG9HR+Zo7r17ZYm548ZfgOVx2kAViD
         8wMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GVc7OI7q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si542394pjv.1.2021.09.13.10.58.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 10:58:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4789B60F25;
	Mon, 13 Sep 2021 17:58:03 +0000 (UTC)
Date: Mon, 13 Sep 2021 19:58:01 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Baokun Li <libaokun1@huawei.com>,
	open list <linux-kernel@vger.kernel.org>,
	linux-stable <stable@vger.kernel.org>,
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>,
	Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in
 __nbd_ioctl()
Message-ID: <YT+RKemKfg6GFq0S@kroah.com>
References: <20210913131113.390368911@linuxfoundation.org>
 <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=GVc7OI7q;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Sep 13, 2021 at 09:52:33PM +0530, Naresh Kamboju wrote:
> On Mon, 13 Sept 2021 at 19:51, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > From: Baokun Li <libaokun1@huawei.com>
> >
> > [ Upstream commit fad7cd3310db3099f95dd34312c77740fbc455e5 ]
> >
> > If user specify a large enough value of NBD blocks option, it may trigger
> > signed integer overflow which may lead to nbd->config->bytesize becomes a
> > large or small value, zero in particular.
> >
> > UBSAN: Undefined behaviour in drivers/block/nbd.c:325:31
> > signed integer overflow:
> > 1024 * 4611686155866341414 cannot be represented in type 'long long int'
> > [...]
> > Call trace:
> > [...]
> >  handle_overflow+0x188/0x1dc lib/ubsan.c:192
> >  __ubsan_handle_mul_overflow+0x34/0x44 lib/ubsan.c:213
> >  nbd_size_set drivers/block/nbd.c:325 [inline]
> >  __nbd_ioctl drivers/block/nbd.c:1342 [inline]
> >  nbd_ioctl+0x998/0xa10 drivers/block/nbd.c:1395
> >  __blkdev_driver_ioctl block/ioctl.c:311 [inline]
> > [...]
> >
> > Although it is not a big deal, still silence the UBSAN by limit
> > the input value.
> >
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> > Signed-off-by: Baokun Li <libaokun1@huawei.com>
> > Reviewed-by: Josef Bacik <josef@toxicpanda.com>
> > Link: https://lore.kernel.org/r/20210804021212.990223-1-libaokun1@huawei.com
> > [axboe: dropped unlikely()]
> > Signed-off-by: Jens Axboe <axboe@kernel.dk>
> > Signed-off-by: Sasha Levin <sashal@kernel.org>
> > ---
> >  drivers/block/nbd.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
> > index 19f5d5a8b16a..acf3f85bf3c7 100644
> > --- a/drivers/block/nbd.c
> > +++ b/drivers/block/nbd.c
> > @@ -1388,6 +1388,7 @@ static int __nbd_ioctl(struct block_device *bdev, struct nbd_device *nbd,
> >                        unsigned int cmd, unsigned long arg)
> >  {
> >         struct nbd_config *config = nbd->config;
> > +       loff_t bytesize;
> >
> >         switch (cmd) {
> >         case NBD_DISCONNECT:
> > @@ -1402,8 +1403,9 @@ static int __nbd_ioctl(struct block_device *bdev, struct nbd_device *nbd,
> >         case NBD_SET_SIZE:
> >                 return nbd_set_size(nbd, arg, config->blksize);
> >         case NBD_SET_SIZE_BLOCKS:
> > -               return nbd_set_size(nbd, arg * config->blksize,
> > -                                   config->blksize);
> > +               if (check_mul_overflow((loff_t)arg, config->blksize, &bytesize))
> > +                       return -EINVAL;
> > +               return nbd_set_size(nbd, bytesize, config->blksize);
> >         case NBD_SET_TIMEOUT:
> >                 nbd_set_cmd_timeout(nbd, arg);
> >                 return 0;
> 
> arm clang-10, clang-11, clang-12 and clang-13 builds failed.
> due to this commit on 5.14 and 5.13 on following configs,
>   - footbridge_defconfig
>   - mini2440_defconfig
>   - s3c2410_defconfig
> 
> This was already reported on the mailing list.
> 
> ERROR: modpost: "__mulodi4" [drivers/block/nbd.ko] undefined! #1438
> https://github.com/ClangBuiltLinux/linux/issues/1438
> 
> [PATCH 00/10] raise minimum GCC version to 5.1
> https://lore.kernel.org/lkml/20210910234047.1019925-1-ndesaulniers@google.com/
> 
> linux-next: build failure while building Linus' tree
> https://lore.kernel.org/all/20210909182525.372ee687@canb.auug.org.au/
> 
> Full build log,
> https://gitlab.com/Linaro/lkft/mirrors/stable/linux-stable-rc/-/jobs/1585407346#L1111

Has anyone submitted a fix for this upstream yet?  I can't seem to find
one :(

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YT%2BRKemKfg6GFq0S%40kroah.com.
