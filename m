Return-Path: <clang-built-linux+bncBCA6RCEUQQFBB3HW5X4QKGQELRAXG5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 182E2247EC2
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:55:41 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id q15sf3242958ljp.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 23:55:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597733740; cv=pass;
        d=google.com; s=arc-20160816;
        b=xt0Do/LBgvYfPjEAOpC5zIacWLUyQYYJfnop0GieyMf2KqjnoeFxc+YuGjQctJry5l
         UPmhZO1zZs+VykxMyxOn+3p16u744/xfb5iY2gqlFYg0Es0bQIwcUKyQX0fHiDuX+PUC
         s6+N8znKYMFYX3BI1ZzDEtBDQml7c2BiijvXjjXjoQHyE/gui/mdJMecmF5XmkwO9Cu7
         +8gAGt7ZvTwoA6Pg0OTkGHgNMwegN2J8eeVUY+tDxVndZ0g6EuUAJfrE1yGuvQ2/h7n6
         fxeqps/u/fYgZAvZ0pO57LYTlX8lo5YYokfLkL2dSYDg1PEJIDzeBHl8nz9pUeJ8X3TA
         Izkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=m84JSvfR50ybvj3Eb+MPS5Obm/Z6wnmw8oXaDujaRj0=;
        b=GPmhgtjWWOMEznKHxnGFYI0RF6pMs4qsC9/0oZRR2Po4Kpo+Ai0NHT/Jj6SCfe/cr7
         RQ3FfFWyBra11lc/03KaYwJMTMxp7rgHfNf+sg5/SfL2cRSrnOR8BAWPcNOjlgRSL2l8
         bW1bNXIg7s+Vr1f87bWgP2ucjppLOO0rH3NqQr6kj3bB27fcjdPNbSJzKW2TmpAFBgRO
         GbvSsA1gzn35gsBFX4BhF8WM16mm1GvhWJ6Q7P7wjuFCX63rYDGfTDEGwMAQmK7p8jJH
         xjNX1gT7hY+/LA4KIhnbZTd0rdfr64OYmb95KSXTwiqr1S6M4hYJYI2gixy5FLs/hr7A
         Uetw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=eJmbX1SW;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m84JSvfR50ybvj3Eb+MPS5Obm/Z6wnmw8oXaDujaRj0=;
        b=KilccW/bkZC9TkNWy/48qXcKv7NDDiYTV6P2/MjYu0GTZ8QXIP549Ezz9nIJsEvpFJ
         PT6GVdII5t9Wudm2xKCC9sG3Re8qm8XbXKQImA9vpqRojCcaMnrkBnRNDDxy8oEc7IsT
         6SNDDsmR0diDFsC58lPVUz0QyxaNxm5wqPpCLpDXITS5n0u1syG9u8omlssWlq8FA1Vs
         7/MOZkwVDwGqUJWClK3hK9Q/GdeSYNHaCoKuzYYxWCTAyfII2anY+bi6g3aPRnF7QnhP
         7bnsugaIgt15J7P6dxv8XvTq5pUD6CxDKKL8lG5vM6DUjRUahhTgmgnSCBu/6QxbnDDn
         SVXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m84JSvfR50ybvj3Eb+MPS5Obm/Z6wnmw8oXaDujaRj0=;
        b=jR8CEIIrayhzx6UZksZc03U7fhRAdKDgZSQXsnejpKBp1rt9RuuxSn41xYM4+d5eRd
         ECDj//1uzTtnL/ffEXYWDLJvzJkdvKPyPPSzhLfNsb1SXzLI6V9pQBFa4gLATlqn+Xgh
         ZfqoV8R23hxdugKzSYa+q/Dux5CILj2jMVmJxMzbZxqyIbEjJTHdR3hbqRgGyIFktCW0
         FpVQxspShXkRe02mmiXLGj5hDbENNcHIpkIJ5yjTCduaVWoSvN8sJUvzU8DunsixJmVD
         g/TR8rQHzm8uP2Z6KD3E2RMtsLMYGBV5sI/GpleS3V4x2NuDUwNC6520hfTJ7UbsVADc
         8nWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Gc0jzMBT7Fs/1Bp+G5SQRlLCgG1MYD+3wzse/eim4L72aCFlX
	CuFs8MO7rCRedacioWibJ3c=
X-Google-Smtp-Source: ABdhPJz6+igruYVPTcyfYgRfxJtSnL4zayNYyTVkxPMEpMUHXszL9VKeFE5aKpKgkwfqxpU64O1L7Q==
X-Received: by 2002:a2e:918a:: with SMTP id f10mr9297435ljg.78.1597733740613;
        Mon, 17 Aug 2020 23:55:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8994:: with SMTP id c20ls498524lji.0.gmail; Mon, 17 Aug
 2020 23:55:39 -0700 (PDT)
X-Received: by 2002:a2e:85a:: with SMTP id g26mr8905062ljd.60.1597733739883;
        Mon, 17 Aug 2020 23:55:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597733739; cv=none;
        d=google.com; s=arc-20160816;
        b=Lku6VEazQhcmlcOB1u6/8YCDAlFSUXPRAS0qDh6vmNwo9skXNeSkGi+uyde5Zt7yU4
         yBblMn05Lx2d9PzYcWY/Ls0CKhPnWqDkVPmSb4J0/YTC8t9t+3O3wQO69ObJxMDdLwHI
         +FO+NZpWz5qk7v+/CwT1U0+KAC38hXHDlAAqjkWU0M9RaTAhIlPrrvTMQPFwc9GJg161
         Cub3AmALJFaprp6xyJJzji6eymEDGz3gE1nnOkbFNNvV4va8DODBAlo2z0ZQCHnHjQha
         vgmFIwq4UasYvKSlpWHytTf5kTkZVwv8nHA6/oKVu/De2CbE24rHcr814j4m7mYON/WL
         4H5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YVVIR500ClTyfmtyOwulLE+BvxQ0gs3eNmZQyHQPmgM=;
        b=lzUzYgUMyL2TNI1GwaUakCBWs/hH9NZxb/nVJeQos14Ote98kEYIxysmHjldGonjMN
         ez49xigEfCMfAgSaqiVZ8LEjZG9d29LEBU3WIAkT2m5c8ygLXBJEzxcSDFRXqnbR/MDH
         jLF/4y6NThCZ8ZIoFYwcvcVHJ8ZBHwmEyoayT0qHgr9F5UAnDrgnNBiHJ3/Z2JvG/7gj
         lvoaW+EmLn89msBCuma2rdI+MRSaDU0ny0Z9hm7fzjomyo8IfOr+oCmuvw8R3LZql6JR
         UZ8jCMPc303E6cFTSfN0aJatmOqZVCUv50iwbbI9smK/CgH87k8onk6Nv9vlb1kzC0DA
         tGXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=eJmbX1SW;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id u9si926755ljg.8.2020.08.17.23.55.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 23:55:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id p24so20724622ejf.13
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 23:55:39 -0700 (PDT)
X-Received: by 2002:a17:906:a116:: with SMTP id t22mr19212136ejy.353.1597733739373;
 Mon, 17 Aug 2020 23:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAMGffE=2m7XOdKS9xG1bNY7MYR2x6AgQm9YZFHm6D4biO860sw@mail.gmail.com>
 <20200818064924.3984068-1-natechancellor@gmail.com>
In-Reply-To: <20200818064924.3984068-1-natechancellor@gmail.com>
From: Jinpu Wang <jinpu.wang@cloud.ionos.com>
Date: Tue, 18 Aug 2020 08:55:28 +0200
Message-ID: <CAMGffEkcDO5ubT5kJA3Gnt-dm-NXBb3qhKKS9__a4u6efRmghw@mail.gmail.com>
Subject: Re: [PATCH] block/rnbd: Ensure err is always initialized in process_rdma
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Danil Kipnis <danil.kipnis@cloud.ionos.com>, Jens Axboe <axboe@kernel.dk>, 
	Guoqing Jiang <guoqing.jiang@cloud.ionos.com>, linux-block@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Brooke Basile <brookebasile@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jinpu.wang@cloud.ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloud.ionos.com header.s=google header.b=eJmbX1SW;       spf=pass
 (google.com: domain of jinpu.wang@cloud.ionos.com designates
 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
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

On Tue, Aug 18, 2020 at 8:50 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/block/rnbd/rnbd-srv.c:150:6: warning: variable 'err' is used
> uninitialized whenever 'if' condition is true
> [-Wsometimes-uninitialized]
>         if (IS_ERR(bio)) {
>             ^~~~~~~~~~~
> drivers/block/rnbd/rnbd-srv.c:177:9: note: uninitialized use occurs here
>         return err;
>                ^~~
> drivers/block/rnbd/rnbd-srv.c:150:2: note: remove the 'if' if its
> condition is always false
>         if (IS_ERR(bio)) {
>         ^~~~~~~~~~~~~~~~~~
> drivers/block/rnbd/rnbd-srv.c:126:9: note: initialize the variable 'err'
> to silence this warning
>         int err;
>                ^
>                 = 0
> 1 warning generated.
>
> err is indeed uninitialized when this statement is taken. Ensure that it
> is assigned the error value of bio before jumping to the error handling
> label.
>
> Fixes: 735d77d4fd28 ("rnbd: remove rnbd_dev_submit_io")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1134
> Reported-by: Brooke Basile <brookebasile@gmail.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Thanks!
Acked-by: Jack Wang <jinpu.wang@cloud.ionos.com>
> ---
>  drivers/block/rnbd/rnbd-srv.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/block/rnbd/rnbd-srv.c b/drivers/block/rnbd/rnbd-srv.c
> index 0fb94843a495..1b71cb2a885d 100644
> --- a/drivers/block/rnbd/rnbd-srv.c
> +++ b/drivers/block/rnbd/rnbd-srv.c
> @@ -148,7 +148,8 @@ static int process_rdma(struct rtrs_srv *sess,
>         /* Generate bio with pages pointing to the rdma buffer */
>         bio = rnbd_bio_map_kern(data, sess_dev->rnbd_dev->ibd_bio_set, datalen, GFP_KERNEL);
>         if (IS_ERR(bio)) {
> -               rnbd_srv_err(sess_dev, "Failed to generate bio, err: %ld\n", PTR_ERR(bio));
> +               err = PTR_ERR(bio);
> +               rnbd_srv_err(sess_dev, "Failed to generate bio, err: %ld\n", err);
>                 goto sess_dev_put;
>         }
>
> --
> 2.28.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMGffEkcDO5ubT5kJA3Gnt-dm-NXBb3qhKKS9__a4u6efRmghw%40mail.gmail.com.
