Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3MG2HZAKGQEPG6VMJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A2316B2FA
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:43:10 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id ce2sf10384768qvb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:43:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582580590; cv=pass;
        d=google.com; s=arc-20160816;
        b=yoEVBDG5tewqXHnFjFp+8Y4+OreT/ltuUuS6JhcZq6jlPU7NXqkPU5YwDdENhSRkO6
         aSEngU6FKfdHxkt+KhHxpq1cpFfWnWsElVfIAyW3bK7/eHxY8iTo7fBKZsDDYE4NZ6EX
         LBLeNlH0xxne7UknkNlplFpdsZV1m+pOwbdL9QtL538bShfja2/c/YLQDm6+MRPJ4C5t
         739NwxcSh0YEH76XKoVEzK5n3BldkEmI6MOkMVfVWEoN9yGJiYQTS18LadPoye5775WJ
         eWiD4+qoqu10oK+qmYeXCJYsdsR9WrUEo2o2dTvYmXoxZjnCvyjIVhMkYtB8PQ+jFtop
         U2fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FGwc7NDLGHNMHXL0l6Fxja+s1rLwwMVkB2j5hDTlI/Y=;
        b=LghcHpR1sBaRUQdbeBl9PucxMAMbpUpQ62RRrUzv8dPQYSmGHYIt5InS3BWAYXv3Y4
         YmAS8ikLirC0Aws4xG8b64k0yjaIDnq8cfFpZhFc0bCox9dUotjogiVZLqqReyLJ0aFy
         IigSTiVE4ok7aHD6z4BVXf/qiJTU49ovVTp7Tu2YRipqLfo9Zh9+xSFlshhJM5QWao0J
         9PhTe2x8l2pmh8rSxRyp2JzP0HzoqTd13lHi0pVr90VUDKV2IBLdCgziuPJSoVb0Uban
         15txGv6CUfOBLutWa6Zj/DBKLtRkt2iAf9yc+FEbkDG3IKl4L+LXOxN1Ga0PFKr6FRwG
         YEkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="L7SG/xfX";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FGwc7NDLGHNMHXL0l6Fxja+s1rLwwMVkB2j5hDTlI/Y=;
        b=P/vrj+iRdIhCVHEd++j0y9qtZkCRbucp/WB6vos97WAqMIMw6Jz716VoKLuEXyGm/t
         7vJEW5aB+q5yH/H6JTfn4wAO9ZoH9jx2Gu5pLvK4cXm+5WNFrmOaV9OhCrNcGzYJ5VAX
         7jtCx1/baL/vOQrTwrzdYk1fcac5fMPrrVL/aFbCfIFyE9BKcYuKhNeyWdD5b32tEABj
         DH8g20DS600tPAiFv4nTq5+n+gKo+M/9GriRqSN9f6DHX5+eU10QmZZc0M16jxmlEgw1
         8GboYSPC7IIoVFN0iI0woMSr7FvwTJa27F0+fnzJUugYNnz5yjfD1ppW6m6BdV4v+lL4
         uh0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FGwc7NDLGHNMHXL0l6Fxja+s1rLwwMVkB2j5hDTlI/Y=;
        b=c24tOrSpG377ArHAU8nqXg/3VGFokNMhcU/hCZotQt/Rzio3Rj0LtKmZa0xT4NbEeo
         5ayhoqudbo9tUqiE3IEDIENcqGC/7Nt9Z9BH3rJGMoQqVCKq0RUGLcAUAEZ2GIH0hyM1
         Op1jBYEy8us5cMWnmRRjVOkxwndwTMH3RlMdo28mH4D+99Vh5ocPfIVpFzjvLMzSnR/b
         PqSrVnOop1YgklgpEaJc6yRObGzV5gbDjf9GJnFEbREJTCIa12dNm+QlL+etJzDKHJwc
         uuuC7zB9h/r/qX0+1GB7C+V4SGp2O4YcqeXknpu6DkA7n6M5NPE+tEJfTFVko1z0Mmip
         mT3A==
X-Gm-Message-State: APjAAAX3y/K/nV0KgZXz3DwlNWmW4rqxeNV98arqlUoESRy14tkNvG0d
	9EzrC/heRyXx1Va8t7cxyWM=
X-Google-Smtp-Source: APXvYqy6D3X5LfNw8mdvTXjuVQV8oriyNCxvB5p7LnqmIHm3JYcZ+op8I/qKiPISUUo8oTIoBbRXiQ==
X-Received: by 2002:a37:9c10:: with SMTP id f16mr53599103qke.275.1582580589894;
        Mon, 24 Feb 2020 13:43:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:110c:: with SMTP id e12ls2360117qvs.3.gmail; Mon,
 24 Feb 2020 13:43:09 -0800 (PST)
X-Received: by 2002:a05:6214:146e:: with SMTP id c14mr6797245qvy.82.1582580589555;
        Mon, 24 Feb 2020 13:43:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582580589; cv=none;
        d=google.com; s=arc-20160816;
        b=Rr6oB62fXqMNJ5l66qsfT2xUQjY2WeDRT42pUU4Gl82EEUsB88m0SmfAkJ4VSrCsUq
         VmeH1xIML6hAp0WY6ENUNbUIfxIz3Dziv9Tod4dQRQeHfH0U7r17TIGAfwSVoNGYYOA6
         9Yk3vAm4R41MTJYe1LOAu+1++2cheSn7cylt8N51HpPTlK4uEAMcKRhI4W2n3AtPwNyD
         1VU/mKG4IDQEuMosIevJE+JTFE0C59hwgc2We48PE1OxvCAfV9sv3VfKbrO4PUWFrBCH
         vcRfGnNzlEmFxDlr166rCrRJDoJ7VbCBtmzLHKfkcGasT4PrsrNhDwAWXVs+vuu29bp0
         MKNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f4i1Oi5gvnAT7W5MjdBiXsrt20m/drKTjt6b50/GmPk=;
        b=bfiRcHpjy062+X8x60475AopF5roI7ZBzlAThEFWFeyFuM8KYWVRXPK0aS1adMoVOp
         2wiX9lSdrV+gXJVSqlBTJKGylpJ848h+8x8FVsDm8AkoawfkVCypUTXhkENJMg3aY6K3
         kIi0st0Rrknna675bGBVzQYW5ZtszKIFkeJx8V8bxDdJ9W/e5rsMUN64cgnRJIeAmJ1O
         In2d9OuHQ1TeMSgNO6OMak9QLDfjj+/CkY7dq8RRwgh+TkSI9/dZRd3TY6eGfywt1y4Z
         DvDaVoTU/76UcYgcQgvCBo8CznuCGVnzw9sjgkDjn1Kl+JKqcBvzP3uqCmMkZ0JdDkyM
         Y2qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="L7SG/xfX";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id b15si734060qkh.5.2020.02.24.13.43.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:43:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id m7so296611pjs.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:43:09 -0800 (PST)
X-Received: by 2002:a17:902:760e:: with SMTP id k14mr49231805pll.119.1582580588273;
 Mon, 24 Feb 2020 13:43:08 -0800 (PST)
MIME-Version: 1.0
References: <20191023002014.22571-1-natechancellor@gmail.com> <20200221045740.GA43417@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200221045740.GA43417@ubuntu-m2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 13:42:57 -0800
Message-ID: <CAKwvOdku24UV8J4uSKFFc7gmwOP28-8K352BJepb_z-octFoPw@mail.gmail.com>
Subject: Re: [PATCH] usb: gadget: udc: bdc: Remove unnecessary NULL checks in bdc_req_complete
To: Nathan Chancellor <natechancellor@gmail.com>, Ashwini Pahuja <ashwini.linux@gmail.com>, 
	Felipe Balbi <balbi@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="L7SG/xfX";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Thu, Feb 20, 2020 at 8:57 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> I know it has been a while but ping?

Sorry! Too many bugs...barely treading water! Send help!

>
> On Tue, Oct 22, 2019 at 05:20:15PM -0700, Nathan Chancellor wrote:
> > When building with Clang + -Wtautological-pointer-compare:
> >
> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
> > address of 'req->queue' equal to a null pointer is always false
> > [-Wtautological-pointer-compare]
> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> >                              ~~~~~^~~~~    ~~~~
> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
> > address of 'req->usb_req' equal to a null pointer is always false
> > [-Wtautological-pointer-compare]
> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> >                                                     ~~~~~^~~~~~~    ~~~~
> > 2 warnings generated.
> >
> > As it notes, these statements will always evaluate to false so remove
> > them.

`req` is an instance of a `struct bdc_req` defined in
drivers/usb/gadget/udc/bdc/bdc.h as:
333 struct bdc_req {
334   struct usb_request  usb_req;
335   struct list_head  queue;
336   struct bdc_ep   *ep;
337   /* only one Transfer per request */
338   struct bd_transfer bd_xfr;
339   int epnum;
340 };

So indeed the non-pointer, struct members can never be NULL.

I think the second check that was removed should be
`req->usb_req.complete == NULL`, since otherwise `&req->usb_req` may
be passed to usb_gadget_giveback_request which tries to invoke the
`complete` member as a callback.  There are numerous places in
drivers/usb/gadget/udc/bdc/bdc_ep.c that assign `complete = NULL`.

Can the maintainers clarify?

> >
> > Fixes: efed421a94e6 ("usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/749
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >
> > Note: I am not sure if these checks were intended to check if the
> > contents of these arrays were NULL or if there should be some other
> > checks in lieu of these; I am not familiar with the USB subsystem to
> > answer this but I will happily respin the patch if this is not correct.
> >
> >  drivers/usb/gadget/udc/bdc/bdc_ep.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/gadget/udc/bdc/bdc_ep.c b/drivers/usb/gadget/udc/bdc/bdc_ep.c
> > index a4d9b5e1e50e..d49c6dc1082d 100644
> > --- a/drivers/usb/gadget/udc/bdc/bdc_ep.c
> > +++ b/drivers/usb/gadget/udc/bdc/bdc_ep.c
> > @@ -540,7 +540,7 @@ static void bdc_req_complete(struct bdc_ep *ep, struct bdc_req *req,
> >  {
> >       struct bdc *bdc = ep->bdc;
> >
> > -     if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> > +     if (req == NULL)
> >               return;
> >
> >       dev_dbg(bdc->dev, "%s ep:%s status:%d\n", __func__, ep->name, status);
> > --
> > 2.23.0
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200221045740.GA43417%40ubuntu-m2-xlarge-x86.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdku24UV8J4uSKFFc7gmwOP28-8K352BJepb_z-octFoPw%40mail.gmail.com.
