Return-Path: <clang-built-linux+bncBCA6RCEUQQFBBS7Q5X4QKGQEC5DXTZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id E017D247E91
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 08:42:19 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id a20sf1686073ljm.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 23:42:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597732939; cv=pass;
        d=google.com; s=arc-20160816;
        b=x3b3mKJgKyKMSfYYx8Oiqz6Q7Y/AhfOnhJjd2l7BYTLK5RFq3/47KFSf6RH/RlYgKM
         RPCcrgIcyMHigmtq6nisG+PSIcs81lvih6Ubj75yBwVhkfIV2G1ZXIKz53OFmw61Q0q4
         EZ1wJdorQ7zT5K9TEuqHBH7sAIrx+hHDzgTt98ykUpnSGXXVYpFZxZFMmf4vc0jIcZYx
         cpwGpFqdqVsElRdN71k9H99k87JBDAQT2BZYGpBxlxvSSRTj5kpjx1kcdxtdW6P3AVm5
         +eDJMgCdr5Rn09fPGzJg5XslYpWlKNJUvYwr5sMG4A+oOgZhfM0oFqMg3Sughx8g2lW4
         Paug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3sqnXGSE1rTK2ppGoQkI/1bN68RA//TApgkzP/I7kyk=;
        b=JaxNbfa69hGs0H6Q9XXvl3n1ZaemHnwC3Dj4HvJAaE7tEeV2iPP73tkfJJ7q3V5P1k
         o7wsqpGF+yyzLg+46F0BidYofjBGvTR9uCVHxGcgpTnc0nrVGtW8A0N6W4xJao2IFh7r
         IWbtP2dHvW3TZmqT5Ith40KIrAmL34dgYdsy7u2H7sScJ/FqZRjYNSyxclMoeuN3dvIM
         zoLIUmrx7qgGbw+b2sxtXSTkcYoxSrSvxijE27Ghu239SDwmaDUoHpp+Dkn5yK0KDV4g
         gNuiO7Rk8VwMjcsdlXOi8C7QP0goYzoxNAWYOOUN3bkj8npQuozwvtUYUxLPsssXL/tc
         zxYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=Gm8Wbu1x;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3sqnXGSE1rTK2ppGoQkI/1bN68RA//TApgkzP/I7kyk=;
        b=BwlLAS2xEE95z5+7ocesMI1Zg0Z1TVeHC2JWUpWDVAmzF7/SEs3iEK0dlQ3Q3fe+Sz
         ZZqCegMBa7eWCz7ibR/btV1dTymX7Sssc5CtxJS5iqPUfB5e11xMB3YltjoZGFH61QKB
         NSK9jV1/FADQBt4tzhDGDZ3yurDIX0IaWxMHvMGTkNT8WKSTSFWNbD8L8RcJPmoejBuK
         YWIq246xbMUe1CL0KPwQglp3s0MuHdmUDjAZkQhAronpJfhqltdhJ7ZjGQqQiqyZi9iu
         eSLjrS4q0TLGMdtspTTJIiNs6i+WTWGRFoVKoRbdUlAIfmPdx2hexLfNgFdWCWkxkwFV
         geHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3sqnXGSE1rTK2ppGoQkI/1bN68RA//TApgkzP/I7kyk=;
        b=KcKgclLH4IwTJPWpEYbZLX7TIHYhChpCraC/sWrfN/aEJQUEIbESXFTWsEOG7xjmjd
         E63iYRrxeeh41PnfAkMRao0Pk0pqqDoyDqhMgvqGceNMpWXqCE+1ewlmrNAS4RFxgZXq
         r1sT+W9kCXW6iUAQq/AXHtTuvUcvM6lBjJ59q5POFs/VtrsVDf1V8TQ0XMZSVey1s/yG
         pqBNzOGEGbqpKLjKsAQeLBp9P8A+1r0VrWrQaCEXp2xJR2HDyf/wP5L/fgTgBJVo+eYN
         xbvxcMJ+Vz4Yu0qwvzubqJrnAvR/dru6MCbD20ex4bleS/+a8xill7eORV4r9f+C4wbt
         rhNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yo2kz0Ide9PH/6t3ArMLAGmRGasNmmy2EOJk8dYhG/vXfuUcY
	7jQ2JVwWfZuvhXqr2OoxbmI=
X-Google-Smtp-Source: ABdhPJwyyaQ8DnpT6D8iYiRyig9FMPRpdA9dFyp0LPY05hKkRef6XoM6EpXd9hJkpbkB3i1vd0lywQ==
X-Received: by 2002:ac2:5e3a:: with SMTP id o26mr9389431lfg.78.1597732939376;
        Mon, 17 Aug 2020 23:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4f43:: with SMTP id a3ls698843lfk.3.gmail; Mon, 17 Aug
 2020 23:42:18 -0700 (PDT)
X-Received: by 2002:a19:ae0a:: with SMTP id f10mr9027567lfc.100.1597732938625;
        Mon, 17 Aug 2020 23:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597732938; cv=none;
        d=google.com; s=arc-20160816;
        b=UszEDXKnAD8ALEJ9LP7QYd/NfwSfbHbblrRLeXX6NtoUL5cDcjYHsh2iF00HiP/Bed
         MN325wU963Kg+XP7dsVzCLxExnFW12mhlNMiZYLzsZ9aXKpYNEbv29OZTwf0GFgg/nIJ
         MaO185hjtVIi3oGwCb+ewTHFgD7zjsZV+SNBeZMp3ukzcjLwLK2/XdNzIYOVUcmepdD+
         NRGyzisDmStxYnR5xj/WcXklMlRRem/3arKbguy+Y7GADKrCJHbTpwZ3TUiAirKjFV9M
         ZguwiTgcZ3Nmhi6S0O6le0cFuQbcoYCxJC2F8Tjmgc5/zW5T60Ae+uYMBnkk0IsS8GTB
         PNgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=775qzk5G3HfBeCtXoCDJAjllre8IaZ3OdmJ8ASXAorY=;
        b=kl5BRD/q0sPcUeCF+QY0mYGzPg9MsgoiNzhnKaBe2xf3TxrriChOLgJjobqpH+eO+M
         BbwDynB8NtBmdsfzbAsxfp4Z5cikaxbR2IEFVSQZ/06iAs1mSdyxSGL9Lvt0HeVgKxzP
         lQOwSmBFnewBzQzYVBv2uV2JxupucJxzEezo/563QSwk1cgaLROtoDH8dG1r/t/NLyEP
         tKxVSdKBGrSi6HQReuy9juA4hmsUzcHdAsI8aW/G9rUqJgkDlZ5U45RMNYWwrYt1hadF
         0WqQ7+PiHWWqlT8rRmr+Zs9Aed9nkcPYE/veFfN50YiDIHq2zr33G0aXod9siLx2KB6E
         aBLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=Gm8Wbu1x;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id p12si664778ljj.0.2020.08.17.23.42.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 23:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id kq25so20726973ejb.3
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 23:42:18 -0700 (PDT)
X-Received: by 2002:a17:906:9399:: with SMTP id l25mr18532375ejx.212.1597732938235;
 Mon, 17 Aug 2020 23:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200818040317.5926-1-brookebasile@gmail.com> <20200818052957.GA2253299@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200818052957.GA2253299@ubuntu-n2-xlarge-x86>
From: Jinpu Wang <jinpu.wang@cloud.ionos.com>
Date: Tue, 18 Aug 2020 08:42:06 +0200
Message-ID: <CAMGffE=2m7XOdKS9xG1bNY7MYR2x6AgQm9YZFHm6D4biO860sw@mail.gmail.com>
Subject: Re: [PATCH] block: rnbd: rnbd-srv: silence uninitialized variable warning
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Brooke Basile <brookebasile@gmail.com>, Danil Kipnis <danil.kipnis@cloud.ionos.com>, 
	Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jinpu.wang@cloud.ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloud.ionos.com header.s=google header.b=Gm8Wbu1x;       spf=pass
 (google.com: domain of jinpu.wang@cloud.ionos.com designates
 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
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

On Tue, Aug 18, 2020 at 7:30 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Aug 18, 2020 at 12:03:18AM -0400, Brooke Basile wrote:
> > Clang warns:
> >       drivers/block/rnbd/rnbd-srv.c:150:6: warning: variable 'err' is used
> >       uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> >               if (IS_ERR(bio)) {
> >               ^~~~~~~~~~~
> >       drivers/block/rnbd/rnbd-srv.c:177:9: note: uninitialized use occurs here
> >               return err;
> >               ^~~
> >       drivers/block/rnbd/rnbd-srv.c:126:9: note: initialize the variable 'err'
> >       to silence this warning
> >               int err;
> >                       ^
> >                       = 0
> >
> > Silence this by replacing `err` with `ret`, returning ret = 0 upon
> > success.
> >
> > Signed-off-by: Brooke Basile <brookebasile@gmail.com>
> > ---
> >  drivers/block/rnbd/rnbd-srv.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/block/rnbd/rnbd-srv.c b/drivers/block/rnbd/rnbd-srv.c
> > index 0fb94843a495..f515d1a048a9 100644
> > --- a/drivers/block/rnbd/rnbd-srv.c
> > +++ b/drivers/block/rnbd/rnbd-srv.c
> > @@ -123,10 +123,10 @@ static int process_rdma(struct rtrs_srv *sess,
> >       struct rnbd_io_private *priv;
> >       struct rnbd_srv_sess_dev *sess_dev;
> >       u32 dev_id;
> > -     int err;
> >       struct rnbd_dev_blk_io *io;
> >       struct bio *bio;
> >       short prio;
> > +     int ret = 0;
> >
> >       priv = kmalloc(sizeof(*priv), GFP_KERNEL);
> >       if (!priv)
> > @@ -138,7 +138,7 @@ static int process_rdma(struct rtrs_srv *sess,
> >       if (IS_ERR(sess_dev)) {
> >               pr_err_ratelimited("Got I/O request on session %s for unknown device id %d\n",
> >                                  srv_sess->sessname, dev_id);
> > -             err = -ENOTCONN;
> > +             ret = -ENOTCONN;
> >               goto err;
> >       }
> >
> > @@ -168,13 +168,13 @@ static int process_rdma(struct rtrs_srv *sess,
> >
> >       submit_bio(bio);
> >
> > -     return 0;
> > +     return ret;
> >
> >  sess_dev_put:
> >       rnbd_put_sess_dev(sess_dev);
> >  err:
> >       kfree(priv);
> > -     return err;
> > +     return ret;
> >  }
> >
> >  static void destroy_device(struct rnbd_srv_dev *dev)
> > --
> > 2.28.0
> >
>
> I don't think this is a proper fix since the root cause of the warning
> appears to be that we are ignoring the return value of
> rnbd_bio_map_kern. Should we not set err to that value like this
> (completely untested)?
>
> Cheers,
> Nathan
Thanks Nathan, thanks Brooke,

I agree with Nathan, the problem is we forgot to set the err before
"goto sess_dev_put".
Nathan's patch is simpler, less code of change.
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
Nathan, could you send a formal patch?

Thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMGffE%3D2m7XOdKS9xG1bNY7MYR2x6AgQm9YZFHm6D4biO860sw%40mail.gmail.com.
