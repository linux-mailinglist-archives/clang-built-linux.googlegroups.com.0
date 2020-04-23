Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHVUQ72QKGQEECY24ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AF81B6305
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 20:10:39 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id c15sf6861305iom.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 11:10:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587665438; cv=pass;
        d=google.com; s=arc-20160816;
        b=RWHMYtB39C++DgUQ83V59H1UqRVdE98GH2qr2GnGfpVs9ayf9wxSYNdajTX1yYE4bo
         5WLc/8iBmHztkAhUjmjfL3zfgSKba2/aa3gK0YfWEnslIlcOMotpq4ahjGlfERCWoIba
         GgyYe5Ln5+Jdc+3MA+J+EjN5I7pR1xiJodS0VGPYJnpXgHmr0wjxNfoOaqxNtFJ4KFkq
         +74twwfE7/2YRGmIB9iipkevAj58hAfAr3D63PgLcmvyo8wH329kbcQZ0l/X0SCP9bYx
         LyoKJrGTtOU+Xe6rzsvmj6NX/shVQ01iDh3bfhqCgcbTXzdFsXub2fOCbAMgaMZ7wvFr
         VFBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vXqtuxrf2Zu9npddh4F1uEvNelnzEysi2GTujlpYBv0=;
        b=MWaSQ3XbSXke3LJEZ7xoRW97a28Z6TlUGrsT/6u/DktEVUWEdXpoTVyF//hG9RhrR3
         swlEdG+k7B+5M/1kok9DfTifwpAzULJjH16cot2tlk0a6ZG0PzNAk9/Tttsb4D2BCjEl
         QDmcVoHKqv4UC5pnIj5FBHpeurDglvt6Tu7RjeslL13AUDenRI17klVxd8uicwP6ASSA
         mXIrrLEoy0rChFPPgxe+k3eAPOarRFTjrF9j5ykambRn9Z3HHTj+Lbf2J8Qbuw0XLspN
         nByLVkK/Uhwk4vu/VYV59lBi783w+3meH+RZURd85q2kDQM6/vcDs979/1VYfLqa5Hea
         zhxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AsXfCxXa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vXqtuxrf2Zu9npddh4F1uEvNelnzEysi2GTujlpYBv0=;
        b=htwU6vqeFOiXHkGFf9GFTAEVCl4ryjH91hUnpqusE3Me1BTyL8V+Avl5cmkZ4N5CwS
         mx+IZ+Lp0lZkxB7D+tSe2Hwe3kJrEFylJvAeRwKArv3RGSluDw/yCOmYNSTRhI2U3UIk
         RQ1DrU9zsWR8zos379TbKvITqKigviscAHL0bwroQx/erbh77ivp7lZ1Rrsf1k5QkuzN
         mBwPB3hsMMVKTZ4/znfyw2UdWr+QDKPX9O+QHbsipWVHC33yYxnPs3b2/PUhJVN3sqAP
         FzTd/eHvuuzkHfFvHGbRZBtLyWR66IIpPwpLbneU8HbRoMVBSFnEF4bcc58yzfy+lJ/t
         S++g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vXqtuxrf2Zu9npddh4F1uEvNelnzEysi2GTujlpYBv0=;
        b=bqvVmTBHxeDg7kfYmCQcTBT1L3S5g5P7PaNnMcfMBAYsbjjT1Z8yjLXp+OvgpupIO0
         NgOYS0t1d4Hr3K6BLQXMjzlTvWpRIK129mjyQUH2p4vGjtSBtrL3Mog0XaySOj47uSuo
         3vSgDSdulJEZmYITJpC901JkYlZQDUW2r/zHbxNXO8TL2uEEfWm7yIyE2zNNPne65yw4
         rKnntA0Md1j97QKTigcPtM8NvOGx6YZSweZVje208iivZuOJ3sruGLEHAYhisvqNqF6W
         jAzLtXC5KaTcBSw3uJpuhPGllmtNjN/LZRQZtPSs6fwkUOfPm8mscWXNyS7vBBzBae/J
         N6qg==
X-Gm-Message-State: AGi0PuYKC7Lq9QGLRw+1EpBo0EPFfDJLBz54ID23KZUXCNlWOr6E113D
	wWUWWexaVOkMP4+ULvDEK5M=
X-Google-Smtp-Source: APiQypJIgnYdiVjlyPD+f/WnCykA/TGentAP9KgmrpYBz2w8NIgtcYEBYUlu3Z4vAkWPvJHB1OA0VQ==
X-Received: by 2002:a5d:9ed9:: with SMTP id a25mr5023698ioe.192.1587665438393;
        Thu, 23 Apr 2020 11:10:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce4c:: with SMTP id a12ls1760170ilr.8.gmail; Thu, 23 Apr
 2020 11:10:38 -0700 (PDT)
X-Received: by 2002:a92:5b42:: with SMTP id p63mr5031648ilb.112.1587665438067;
        Thu, 23 Apr 2020 11:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587665438; cv=none;
        d=google.com; s=arc-20160816;
        b=xXEeh6n3RuwYi2ItGaz6/KslW14sp/EdTlqGZys2VejABOGb7hUAd08b3qX0UmF1wz
         XqFOlYuyYVzu8DqBkIkNAdXwpGoVDgKF61XNBZz1JMYsKfNK1rXlZ4i7ZOjgKLhhprSG
         rXccCTU4ibHD3gUGrruQXBsWg7XePCcM00DYvxrK3EpShN6xUXD5F4az/IDIskT+6uW/
         C7zd4BgoxDLtpwsCcyDjHPcHC9A/heKRoEdrhGU3zW3xNj6zTKjiE1UhMqNa6dq0Bead
         LlYtKH6PuwB81c15JU1iHM5WtUDsIPov5P4FRZm2VBal2SCKCObxn/RVeQ5JJ84LLgFv
         wDLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QrjNM8BIB5l9RDDyP/w9uL8SShDah7FJKmQ5DvjnKE8=;
        b=kAhJ/QMNTgCWnQcHQCi9xK9o/+hw1/8wK+luuioUNXXVkNLgDonka6dCt/ex4uCJNn
         rNBQryfV5M9u77d6gXrGP7ZR2mmg3HSvf5zx1Mu7I6oT23PrZBSo8Xi6YJMXJR+SBc7G
         8Rr2gSDuxgUIP5Xsc9n/Y6JHoi6vnv/psYUFGT+hBUyKMdvewYUy1N7eTpaKx5cZiRYc
         /BJabrqE7qtep+pI6kPgthKB6TgG2S/4wvyfEkHryAgVYdxYFJKAt2wTA+cofglGkEB/
         wqJp+oEplyqruL4xL4DRvTJxGDEVCMfWVrEq8Wj1Z2/ZD64KfUTZ44kZWRFWC7K4r1EY
         +O9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AsXfCxXa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id o6si151833ilo.4.2020.04.23.11.10.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 11:10:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id 7so3881929pjo.0
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 11:10:38 -0700 (PDT)
X-Received: by 2002:a17:902:ac87:: with SMTP id h7mr4756081plr.119.1587665437124;
 Thu, 23 Apr 2020 11:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200423162923.10886-1-natechancellor@gmail.com>
In-Reply-To: <20200423162923.10886-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 23 Apr 2020 11:10:25 -0700
Message-ID: <CAKwvOdnP247LJpqo5ZZfGXUktjtXKzhDwQU=aTOrFi-y_px9mA@mail.gmail.com>
Subject: Re: [PATCH] USB: gadget: udc: s3c2410_udc: Remove pointless NULL
 check in s3c2410_udc_nuke
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Felipe Balbi <balbi@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-usb@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AsXfCxXa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Thu, Apr 23, 2020 at 9:30 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison of
> address of 'ep->queue' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (&ep->queue == NULL)
>              ~~~~^~~~~    ~~~~
> 1 warning generated.
>
> It is not wrong, queue is not a pointer so if ep is not NULL, the
> address of queue cannot be NULL. No other driver does a check like this
> and this check has been around since the driver was first introduced,
> presumably with no issues so it does not seem like this check should be
> something else. Just remove it.
>
> Commit afe956c577b2d ("kbuild: Enable -Wtautological-compare") exposed
> this but it is not the root cause of the warning.
>
> Fixes: 3fc154b6b8134 ("USB Gadget driver for Samsung s3c2410 ARM SoC")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1004
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!  If anything, I'd be happy to see some more NULL
checks against `ep`, though the callers of s3c2410_udc_nuke() also
seem quite confident that the pointer is not NULL.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/usb/gadget/udc/s3c2410_udc.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/usb/gadget/udc/s3c2410_udc.c b/drivers/usb/gadget/udc/s3c2410_udc.c
> index 0507a2ca0f552..80002d97b59d8 100644
> --- a/drivers/usb/gadget/udc/s3c2410_udc.c
> +++ b/drivers/usb/gadget/udc/s3c2410_udc.c
> @@ -251,10 +251,6 @@ static void s3c2410_udc_done(struct s3c2410_ep *ep,
>  static void s3c2410_udc_nuke(struct s3c2410_udc *udc,
>                 struct s3c2410_ep *ep, int status)
>  {
> -       /* Sanity check */
> -       if (&ep->queue == NULL)
> -               return;
> -
>         while (!list_empty(&ep->queue)) {
>                 struct s3c2410_request *req;
>                 req = list_entry(ep->queue.next, struct s3c2410_request,
>
> base-commit: ae83d0b416db002fe95601e7f97f64b59514d936
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423162923.10886-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnP247LJpqo5ZZfGXUktjtXKzhDwQU%3DaTOrFi-y_px9mA%40mail.gmail.com.
