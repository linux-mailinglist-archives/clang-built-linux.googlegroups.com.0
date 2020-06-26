Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYXQ3D3QKGQETIKU4QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF3E20B7C9
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 20:03:16 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id g21sf2045840vkk.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 11:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593194595; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ui1Pzc2qdHUby4yAqeM9tfsN7cmWniW8f77BGmVRpW+c3BOnn00sCt2Rc86RYk5Q+I
         qWDkOHK9I7yJrBFQpNKA+eWlzW78Pis3V4erdtq1grk0L5WFJNtBqWAyzAznO0r4xdsw
         JkOChI33N01eHCzbL4lOnQTCSmWUq5mY1UwAjPc8wDJanllvvuCjP+tgXsGgy+S6V7hm
         S/pSjC7ClyzVUYHlxfhUXQbV3OFKgFdbebVfNurOFmajY/R3oGi7RnVF1Ecp40/75jG3
         X1aMlf7L1BGnFVwggYiXqLl/2gHEK2dFWjYxy0iiNNJLPT44Cd7mLExs33A74MHjoZqQ
         YBEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tsrZpSI8wFNcg6XPXpNMI5NLZ61PW+VUhjgZmrXpnfo=;
        b=RcsLUCnPS0Jtp+Fl06gbOZjcxC/P01X9k0I5DHuE+Z41zygHbJv8nDq5yLJP/JT3VX
         avaA72N0TojhRiu54ztIawgDQQJCw7+xbdV5K+kQKm9g1OjJzT3GMVGWwKXCNTZm6Fw9
         v3mYMHRSpYrPWFkD59a9YDEDJLpoI7U9XxhGv7Lsgfn5/jope7YOBLcuq38eJyBAchV5
         t04dgXSr0ejOzkweKBMd8UL9Y4X9AGwFdrknyodd7n54VV+YrYQZcOohCb6yG3WPotkz
         4apys+yfLfWaR/ituAuHQ+W04hQ3GhV+a9URs8fgTMHiVh0dAHo3Fmw1wHDCAphqiIKr
         CtDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ma2BehIm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tsrZpSI8wFNcg6XPXpNMI5NLZ61PW+VUhjgZmrXpnfo=;
        b=p+6A3Gzle1CtRDm9AQOu/zqOgbMc61oFzQzDYq0+L+yjWD2N7D4S9O94+81Z3Y3hQR
         RWR5O6VMEnPkS8qqcHo/ZjRjN8NH2POW7ev7yPsf8E+vXoPbufYNIxqUdtx7OUExFeWr
         M14lpUIp+CQFZuBRHrRVc+qCZhR9P8HttYPAuJtNM1YeCulJ+TiIro0Wvt83FNjX8VHL
         hnuew+QSqoMZxXyiL+8cYxxwXY9fEMNy3stQgjFmFoqcyXAdrXVUycVLEPwXimEmMHvT
         /Vw5x8A+t9J41933Tx156KYeRBbCdjjzmnExrlSMJjoGBvZBa876abuPp8Wh3JvDmHXR
         QfsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tsrZpSI8wFNcg6XPXpNMI5NLZ61PW+VUhjgZmrXpnfo=;
        b=YHXGBBKW7SIoJK6vxDQEMrv64qpTy0Y2M1kstBHJq0b5EbxoTtIQq0Di7I/pKeRAo/
         PPmV+EV/pgU6t6UhN/dG3AR7yd6XywR/mTZW57xMpWzHtQHtos4LvG835DUi1o5l0BNK
         +DTF1Xi77SGhOqNf642bdmr2TBC4Jiwvqsy0WTOLA5hOcgY/mY+ee2bhJEaNiShs1838
         sbRQEELiZO5nRxHrShthh/MLQex9Zp2LxJq6PxGG0ahQnBV6kj2ex+ZtKy97BqXEil0/
         hp46h9bEy7YunQmrZT0Lwps7HSs2zc/CwDxhNrmPLrtM/jiOcF6BjZCgFnV4VWu1A4Dx
         L8WA==
X-Gm-Message-State: AOAM530/kcdchZTh5VeWkPIyK8SwZWkda/PyLWdb6rr8aaUNH0QI1QB7
	yA1UeU7jZGpqBSQPw1NGZnM=
X-Google-Smtp-Source: ABdhPJxIgSL9oAUS7hXrSdFRInGOqi9xmXmazaYqVByTNLS8NBCtpGl1bbXiRLgPUmoIef5jN/5qcA==
X-Received: by 2002:a67:6c47:: with SMTP id h68mr3515815vsc.126.1593194594919;
        Fri, 26 Jun 2020 11:03:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7c0b:: with SMTP id x11ls1227587vsc.2.gmail; Fri, 26 Jun
 2020 11:03:14 -0700 (PDT)
X-Received: by 2002:a05:6102:205d:: with SMTP id q29mr3684197vsr.130.1593194594479;
        Fri, 26 Jun 2020 11:03:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593194594; cv=none;
        d=google.com; s=arc-20160816;
        b=x30363P8Lu2O4PXavBUhVOkELhqWFjFm6fQkrhSIhvBZlKTHJzL/Q01//vDV4SURiL
         l9J0R5qNsHDCz47Ij3DPeyRxPsopWR6N9nI5ZeGLv8BAxa4467kov8RrhrmdXOTf0dXI
         /YSI/S/P31lK5qy44hwbh6i1DsA4mK+G8NXrPTZKz1mw2yhaH5rMa1XhhCYH6AyvK4e4
         zzmJ/ZDtfdJ/EJOPm+iHIAJqwNTYnWu5jMTOOZj85q3lRCMOHfVAk8JIN9dOZYqHxZhB
         KGRYhmIb7RiqbFt6AniRgYOVCJEVL8ytRXfhSWgV3QWYBfsyWK6GGfTzJy43jRIM625q
         +pIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MIUMjSaMlS6zBGL91VS5XCO0Rvi6aDq5b10UCJka4lQ=;
        b=RS7xPczGvMmyxIeMn/0vhQKlpjSQLJSx5cn7m5dnZTIY7Zz/dsdfzPKSYNEhYTlvXb
         9l/NxCY+N5o4ywJxlKOF15HwaM+V0NXw3036tL63hzIrJDwLuMbsRkhKqYYQqNzBH8rC
         wfEvO036H35nvEhBhxXdtOy4y6cs+dfYOCawsu6BOsAPAC7zwFtxWAxSCiVymAVnUxZb
         KabYiZqz+RtUO9iJuUNdUwDiTWrO+tqUiGScg2rl0LmuhlITX1lq9822HGdb+cUdh2Cx
         lqUGwhI7Q+uiMEn9P50atjzlF1Cy5fOmbCzWoZRqrgptopN1ZN8joY4wHcsMTuyQz8z4
         4szQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ma2BehIm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o66si468780vkc.0.2020.06.26.11.03.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 11:03:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id t11so97286pfq.11
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 11:03:14 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr3701064pgf.10.1593194593326;
 Fri, 26 Jun 2020 11:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200626041001.1194928-1-natechancellor@gmail.com>
In-Reply-To: <20200626041001.1194928-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Jun 2020 11:03:02 -0700
Message-ID: <CAKwvOdmOriZwmiq8XoKqLq0RR4fRnFoDVgS+X_n_5x1cK4G=RQ@mail.gmail.com>
Subject: Re: [PATCH net-next] bonding: Remove extraneous parentheses in bond_setup
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jay Vosburgh <j.vosburgh@gmail.com>, Veaceslav Falico <vfalico@gmail.com>, 
	Andy Gospodarek <andy@greyhouse.net>, Jarod Wilson <jarod@redhat.com>, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ma2BehIm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Thu, Jun 25, 2020 at 9:10 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/net/bonding/bond_main.c:4657:23: warning: equality comparison
> with extraneous parentheses [-Wparentheses-equality]
>         if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
>              ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
>
> drivers/net/bonding/bond_main.c:4681:23: warning: equality comparison
> with extraneous parentheses [-Wparentheses-equality]
>         if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
>              ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
>
> This warning occurs when a comparision has two sets of parentheses,
> which is usually the convention for doing an assignment within an
> if statement. Since equality comparisons do not need a second set of
> parentheses, remove them to fix the warning.
>
> Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1066
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch.  I recently saw this in a report from KernelCI
this morning.  Adding a tag to reward the robot.

Reported-by: kernelci.org bot <bot@kernelci.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/net/bonding/bond_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
> index 4ef99efc37f6..b3479584cc16 100644
> --- a/drivers/net/bonding/bond_main.c
> +++ b/drivers/net/bonding/bond_main.c
> @@ -4654,7 +4654,7 @@ void bond_setup(struct net_device *bond_dev)
>
>  #ifdef CONFIG_XFRM_OFFLOAD
>         /* set up xfrm device ops (only supported in active-backup right now) */
> -       if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
> +       if (BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP)
>                 bond_dev->xfrmdev_ops = &bond_xfrmdev_ops;
>         bond->xs = NULL;
>  #endif /* CONFIG_XFRM_OFFLOAD */
> @@ -4678,7 +4678,7 @@ void bond_setup(struct net_device *bond_dev)
>
>         bond_dev->hw_features |= NETIF_F_GSO_ENCAP_ALL | NETIF_F_GSO_UDP_L4;
>  #ifdef CONFIG_XFRM_OFFLOAD
> -       if ((BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP))
> +       if (BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP)
>                 bond_dev->hw_features |= BOND_XFRM_FEATURES;
>  #endif /* CONFIG_XFRM_OFFLOAD */
>         bond_dev->features |= bond_dev->hw_features;
>
> base-commit: 7bed14551659875e1cd23a7c0266394a29a773b3
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOriZwmiq8XoKqLq0RR4fRnFoDVgS%2BX_n_5x1cK4G%3DRQ%40mail.gmail.com.
