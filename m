Return-Path: <clang-built-linux+bncBCT6537ZTEKRBVPV7WEQMGQEIRN3XFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A0A4098E0
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 18:22:46 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id s66-20020acaa945000000b0026a444777bbsf5604315oie.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 09:22:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631550165; cv=pass;
        d=google.com; s=arc-20160816;
        b=kLuddYzkOzZU5ULFuMmMi6o9OhTaqYn2URIVA5/yHa1BvFPbK63SyXDBSdfEaYGkdb
         2RTzG+jrkHhszh+2wxL21r8kKSQU3flmoVrkOnEsQUZBbOlmCezAsItYCNq7hrnD6gPw
         A7yE6HC5uyydR0kFFD5aPKNsoHNoeMqD2VZX7QPDaVNhaRTUq8InqyaS4xDGT6MWSBcU
         m/9yhximjLDpdDdUY3QhAiN9/f7P9sDtgjQT+N6gWQ+w/NjZbWdT01sOg/FPBcHaQ4xW
         vOoHflSz+8mKRYTWIdKHt2D0BHicmk92ev/uiZNypeUoVRfWjw9d/MNPNbkH/53kj9YQ
         QyGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cHYLC+dDL1DvhjyDeIwd4dMHl23cVhEKGI7gdlOiOnE=;
        b=zKlUYL0coRHLX+56TbaiDsBdWpLGUduJ60Bt+Omvg14b/Q2k8ICeJlY6ucrwM2PcbM
         GhZHW1Ff+iyJ6Ti2AG487vlZZqa12mpiQQhSdHthEMun5rwjMYcMq0Ew/LdzMyDclmmW
         4TH2BadXEUKgpwMoKpexsNBwNxcry14oNt5Brh+Df1LWoCZtM4BRXqljKxcYsOZu433X
         K1XUF2XIPJ4Fb8Eas9RT48536fE3ZMJ/qGgC30Rh+VJWGZ3lrpR34ie3Z4MbmywCvT7b
         DAf1rSiXCZQw2I5Qa18nGTa+ZuulepjKJl1xRAf+ngpjc+oZWUNjfYP+xW8t7YKVRLYG
         ZPYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=a1kK2KQf;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cHYLC+dDL1DvhjyDeIwd4dMHl23cVhEKGI7gdlOiOnE=;
        b=CUwZd0UA2BWFZKfQedEON81pugIknzsGjcTonqSxbzEhpE3QMGaD9EhDquIaT+tkga
         BtkOh58FGTrlQJM8FVsTa/i0fVaWr82Px5xpyb/ISKUwBMkW8mjoxtG4g+44Iu8iooeh
         awyOPR1USBHpx3T9D17a3CRfCBX5CqcboJOwhWKl10evBSnqFbcEgHLpDYI9bXktVxNo
         jCanlbKDN/0jlEIPm7IN4/c1+lAAprj7Ly5XO7hzNtfQ2cSc1Afw1puw3dwvRAIw1FEg
         dbQuPRc/rDwVCiobXFtgb842e5oOKhY0rBH/m2HlIAanmmyiBW8m1dQHKrQm/ohDfxcy
         5iCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cHYLC+dDL1DvhjyDeIwd4dMHl23cVhEKGI7gdlOiOnE=;
        b=P1+KmqxNm0RvgikRd8GqSHiRxtPTUyMzA0lvS6D5JFEnaBZ6hUH2NV6yJ7RLP/4Csr
         WXsvMXxsUiEtEHpCjVz9V1qGWQsZmasvC6fixhUd5jGD9rU/qcSorW4uaEs9WsI5c02Y
         0IiiMk5zAjV16WhHPiBMa+m2MEwOKN1loUkccG4hwGOnmlPgA4m98TOMDRC9RT8WtUcj
         CNHPn9vMvZA/v23dkW4aPtJWboMud9iX4JmuJUAS9IN0ZzR28eywi8yHoY47urXTLkT0
         xN5s9MHYHEd7JluFMigu4bs7pEWUvQrpc3P9BTRBxji3fOkoAPzw4zQY/ggRXK7mQO5+
         /p9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VLMOJz0C4hFA+vJ33iN2x4pub3nMnKuzFXMvwgq2M1wNTG1SN
	nuLlJclVoKScW63hA4CyTmI=
X-Google-Smtp-Source: ABdhPJy8NAKL4uy1tYGlPKJEvNfckGqQcurhKJ3cs0rRVyREUu9GvWEaYUlSRKMBTY/U+zBx6mlQ8Q==
X-Received: by 2002:a05:6830:719:: with SMTP id y25mr10315018ots.77.1631550165548;
        Mon, 13 Sep 2021 09:22:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:210a:: with SMTP id 10ls1136455oiz.1.gmail; Mon, 13 Sep
 2021 09:22:45 -0700 (PDT)
X-Received: by 2002:a54:4402:: with SMTP id k2mr8164623oiw.166.1631550165039;
        Mon, 13 Sep 2021 09:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631550165; cv=none;
        d=google.com; s=arc-20160816;
        b=aad394RN7HBGOVCcZ60vAfWnSXrsVh3ZCCUq8IK1CpZgI0LgX6zgKodDxYX45Dw4Wb
         b66xwhVuatNp5OmIuTAm1KFQzIV62dvxmKY5ysDhT4jAxszZLN9AbLNdTvnXXOg7ck/w
         nbXniuf4jP3h805HKSiB73On3RD2tqRuAepduLQg6vSpa4NlJinCc7m2QhT/YfUa74Gt
         VUaxxepsxEJ9QxAgK8GRto+eU1oZLsCAw6Leyh/5JKiRuoqNtcpcdWrp87QCWPaWF8f8
         ZEgGZgjGMjM1y0sKG5kk51e0saIF7OkGr17XZ4rEv+YAqoj6Gtt3eWSOacPS9c1xPAEw
         vEuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4/ivNU19vgx8JM95ZcxudD+bsQ3V+RD7J/J7pfkup6o=;
        b=t3cgp0WWfMq0GQH2SHCkVhrfmRnZIEQwcxoeDAF4AxjgJPzh1fOMP0YxE3ouQ5yvsb
         d+OFRuU+kkF3qIlnvsDBF/7M0ly+FeXTQh7O4s2Sw/LOyBwNenAABWTyF9x9AWbS9dGw
         p9rJUq/doWF46QQOV2DNfL0PO5RD+glNLDpM+egZdpKB9HN2460Y14F3lopmTOEjWu9J
         IWWA5gVNy2+89Dws7GNjSUsi4pW5n7z0w9gGAvRIXYc2vyp6tTgAzwUJ7lIDy9TuwdHG
         VGN8pVov/SivIHDVTHp/1POz+C0xApvmzOa5jyZoqHGWeXplB/AcmGAVQ0MBZd6QBsCn
         fGbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=a1kK2KQf;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com. [2607:f8b0:4864:20::236])
        by gmr-mx.google.com with ESMTPS id q18si524296otm.3.2021.09.13.09.22.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 09:22:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::236 as permitted sender) client-ip=2607:f8b0:4864:20::236;
Received: by mail-oi1-x236.google.com with SMTP id w19so14747563oik.10
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 09:22:44 -0700 (PDT)
X-Received: by 2002:a05:6808:118:: with SMTP id b24mr8614615oie.0.1631550164556;
 Mon, 13 Sep 2021 09:22:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
In-Reply-To: <20210913131114.028340332@linuxfoundation.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 13 Sep 2021 21:52:33 +0530
Message-ID: <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Baokun Li <libaokun1@huawei.com>
Cc: open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=a1kK2KQf;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 13 Sept 2021 at 19:51, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> From: Baokun Li <libaokun1@huawei.com>
>
> [ Upstream commit fad7cd3310db3099f95dd34312c77740fbc455e5 ]
>
> If user specify a large enough value of NBD blocks option, it may trigger
> signed integer overflow which may lead to nbd->config->bytesize becomes a
> large or small value, zero in particular.
>
> UBSAN: Undefined behaviour in drivers/block/nbd.c:325:31
> signed integer overflow:
> 1024 * 4611686155866341414 cannot be represented in type 'long long int'
> [...]
> Call trace:
> [...]
>  handle_overflow+0x188/0x1dc lib/ubsan.c:192
>  __ubsan_handle_mul_overflow+0x34/0x44 lib/ubsan.c:213
>  nbd_size_set drivers/block/nbd.c:325 [inline]
>  __nbd_ioctl drivers/block/nbd.c:1342 [inline]
>  nbd_ioctl+0x998/0xa10 drivers/block/nbd.c:1395
>  __blkdev_driver_ioctl block/ioctl.c:311 [inline]
> [...]
>
> Although it is not a big deal, still silence the UBSAN by limit
> the input value.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Baokun Li <libaokun1@huawei.com>
> Reviewed-by: Josef Bacik <josef@toxicpanda.com>
> Link: https://lore.kernel.org/r/20210804021212.990223-1-libaokun1@huawei.com
> [axboe: dropped unlikely()]
> Signed-off-by: Jens Axboe <axboe@kernel.dk>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/block/nbd.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
> index 19f5d5a8b16a..acf3f85bf3c7 100644
> --- a/drivers/block/nbd.c
> +++ b/drivers/block/nbd.c
> @@ -1388,6 +1388,7 @@ static int __nbd_ioctl(struct block_device *bdev, struct nbd_device *nbd,
>                        unsigned int cmd, unsigned long arg)
>  {
>         struct nbd_config *config = nbd->config;
> +       loff_t bytesize;
>
>         switch (cmd) {
>         case NBD_DISCONNECT:
> @@ -1402,8 +1403,9 @@ static int __nbd_ioctl(struct block_device *bdev, struct nbd_device *nbd,
>         case NBD_SET_SIZE:
>                 return nbd_set_size(nbd, arg, config->blksize);
>         case NBD_SET_SIZE_BLOCKS:
> -               return nbd_set_size(nbd, arg * config->blksize,
> -                                   config->blksize);
> +               if (check_mul_overflow((loff_t)arg, config->blksize, &bytesize))
> +                       return -EINVAL;
> +               return nbd_set_size(nbd, bytesize, config->blksize);
>         case NBD_SET_TIMEOUT:
>                 nbd_set_cmd_timeout(nbd, arg);
>                 return 0;

arm clang-10, clang-11, clang-12 and clang-13 builds failed.
due to this commit on 5.14 and 5.13 on following configs,
  - footbridge_defconfig
  - mini2440_defconfig
  - s3c2410_defconfig

This was already reported on the mailing list.

ERROR: modpost: "__mulodi4" [drivers/block/nbd.ko] undefined! #1438
https://github.com/ClangBuiltLinux/linux/issues/1438

[PATCH 00/10] raise minimum GCC version to 5.1
https://lore.kernel.org/lkml/20210910234047.1019925-1-ndesaulniers@google.com/

linux-next: build failure while building Linus' tree
https://lore.kernel.org/all/20210909182525.372ee687@canb.auug.org.au/

Full build log,
https://gitlab.com/Linaro/lkft/mirrors/stable/linux-stable-rc/-/jobs/1585407346#L1111


--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtdPnwf%2Bfi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g%40mail.gmail.com.
