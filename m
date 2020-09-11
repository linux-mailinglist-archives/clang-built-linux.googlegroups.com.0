Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4MK5P5AKGQEYN7RMQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id BD31C265609
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 02:31:47 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id a184sf4840681pgc.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 17:31:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599784306; cv=pass;
        d=google.com; s=arc-20160816;
        b=LH0O6Rbg1kwiGDBRjcLnGuiv5DK1fvQNTW99UTqQ0rdFywQhB4xi9gQ9XWCJCdx9x6
         fOX7c9LQGA/ObfygIoM21RP3CnPjPZ6Lx6kECtX9wI+MOPVLrrUwWfaAyWOSLOknJ96m
         u/NijtIkpEyt8FWEhV6b9hPqe5RKsx+x/c083aiZKfLDlk7raC35/Uw6eOj6G25xYMh3
         XQSJ9dr/ZK4WLWt3ik/6qltkpViTiE0d9qBaV/lAj0OU/g1ihdr9VxGj+Sa0alphs8rI
         ijq2vho06mdIzVIoOibcHWZIQcauWFPdrS5x6lhCWx2Z0zxdp7lDW5hA1W9vkx8MWjHQ
         Dblw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=IHIQsWMWHTWk9dUxbwOGYdX9hCY9PnfDB8GJYqB/TgE=;
        b=Hu/kibVPoCgShJEya+Q5sdTDWNKdIpFGnHRrfCiVabHENA8EPQVrq6iyzAJewp5vy2
         /e/4VwnV/XZ9AyzZuNTd9D6enDpKJtMxYRNc8Drxw8H7mFzxJH+rYf/qNj84V73YEoO5
         d+LD9eY7HCGlOyIopXUSrWB+WASF0jyyK5WTl2DnJrVOxd3v6muCmJv1QhgnEK4x4H4t
         SI5nELtFuOlbKzUVHbDyFu1o5YKbiN53liG9JiwTDZfUW834e+emkcKXEe9CzASw1FJC
         caUwcYqMY0iUqeuylFIhQgmU6wPJwwita5DkZzBV+wIVM7r2TdrvmhWFZvU21gPDrLuI
         tO9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lETZdGhx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IHIQsWMWHTWk9dUxbwOGYdX9hCY9PnfDB8GJYqB/TgE=;
        b=Xc2pG7tL0vf5khxJ2vjptGeHE9C1f+a5ByNcXK1Qu6W5bhECN678BoIT9o2tcPvGxO
         Q60NCNoldCQHjAow+CRqMBWA28tr0k56nAlLY1uLWsGc89Y1cD9V4WEKl5AxPWZ8Y3RS
         x4L4nDUoyU/9FMlVhSxMPJlKAQbVWftzNNdzs3ABubniaQvR/KYWeXKdVzWWeorZpux/
         +t6FgvvFoXnF5gl60xmi6XAlJtsv1LuzFOD1ct6AXMhotPihggNzKlwz1lh2WyLN4jfj
         dMEDjk0I3JKAsY5l0I23XZHz6EEzjJKPPxzny959ktQB2h0SV8suYSXuGsYMssfweHjw
         aYBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IHIQsWMWHTWk9dUxbwOGYdX9hCY9PnfDB8GJYqB/TgE=;
        b=fZtcQICJIkQuO6HDvN4xcCGCzkQOpvd9B6+JeF7KuQncOp6rSkb7KQDoFLSxhZrRE1
         VDgBQ+BN6G6HsT4kaY+Sg2f+yM9SOuP4GmQo+fA1JuUy/+6lnhbYZ30yAdGJcvqDSXT4
         dqnd1LqG8ua6ghvgH9UV83Iu8Q5f0RK2+nm1iI5ZvrL2S0FXEg06ulyvb+fqxjSs8JBO
         RrS9YRGMQHzy9hi81ABScN31G97zrrpz+lEgpI9Heyqvuutvl9E60L2v2Vk71WqEPNwu
         PUXxRXA+jsYNSM+Yh0/eEE9/LITNhU/B4dvBadDx8Kz4yVLAiBW1mc5zHABZN/GnqCAZ
         lofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IHIQsWMWHTWk9dUxbwOGYdX9hCY9PnfDB8GJYqB/TgE=;
        b=CVloC1qELIeSVSnwbHJiw49q5V6P2BKjDugKMteOuPVG9quPoF3pP0GWpUpwAMc54/
         oeYkQlHz74J4xmlwIHgC2EJw6HXdeOlmjmW8+i3OLXn6II/Ix7pQaBJRfnrRinSI+8GW
         RdlwlZbVY0QZwpN/KY/rIeLbjvKaRP80FCnfzYAcUz2l8HTVsL6LIVElnagh8Udj+6mD
         DhDUuFnMxpvhOxN8NU8vUn/WJBD+kd/AgnUcf8+rj9D5t/nR6dzD1mcb3XBOvEz6VqMv
         4X5SANCsx9ZzDtpGWPUpQlJ4NLZ8PVJHPhFZGq7GABgiOBEiV8i9kc2EhvigwzSmNhRb
         Darw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532D5kLelBjFf+lMUN/HFYMHKJEsKC2hO4zNPII5jPcPLSs+4zen
	y1z7T7TlghMdordli1DQZNE=
X-Google-Smtp-Source: ABdhPJwjw+EKChMiXWOZUaViOgu/IS97I5LejKumWdV7ljnP9VygxoFW0ui7BxWWtRROmvNdNv3fcg==
X-Received: by 2002:a17:902:59d8:b029:d0:89f1:9e2d with SMTP id d24-20020a17090259d8b02900d089f19e2dmr8263106plj.9.1599784306067;
        Thu, 10 Sep 2020 17:31:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8514:: with SMTP id v20ls233301pfn.2.gmail; Thu, 10 Sep
 2020 17:31:45 -0700 (PDT)
X-Received: by 2002:a63:384b:: with SMTP id h11mr6691993pgn.113.1599784305454;
        Thu, 10 Sep 2020 17:31:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599784305; cv=none;
        d=google.com; s=arc-20160816;
        b=aHFsdiZTcLcpwpRBPhb9ElO++TosUnqhgDVnBtyplkZBS3LbcBJBxxSeq3k6Nc7qKB
         YYVOFVu4QpW09Zh2i8EorDsZJZd0uWqvFjgBaJyOKpNu8YdQQVyHscWzMBpeTPvgO7Ke
         p0kRsztPb5474OqOfbcZ4buXvBJ4bRF9VSfO9giLzl0xr9JWCpe3g0DZiEZMOUA2vBo+
         hRnEbU6Lf1zvMIIKDKfps4j6/vXXksE3IKwCZ6cfwCJZuN2afSVbVqdXkRn00Cicorp3
         ARli36g7swbqO2I1fHSw1YjyMPUU9/1YJGzGShtxHvLGII/2XTIgWvJnw53UCOrmgSXN
         PgSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9Gw9EI8PIsj4K4PQPxpv3GeZ8+OtSe8DLVQFJoM0qSk=;
        b=SQET1+i+kUL5CVPAjgyXOYFpzglq9FQAbf+h3eYD3K1zzCRNoBo6x2zafAU57cv/GQ
         2pCbCzGDrmcVjkhsXP8jJG6P/hpj87zzG+DA+sAj79w5T1MIbXBSCIafnI/ySw1TQmPf
         U1BduvdJXd8zZQ4oZL1tm5ae8ujfdyVP75zfXxTQrRIrnBJHW4MgWOUAmG2l+Kb4tuHI
         wDET4n79pokapByXnp8W5Cyz19XVIG8eH+MdzU20G7j4XCLGrh1UBKjW8eMxWXFQzOLY
         RzvPWPqqcRpHO327GuVUvNz8isK5xmWXIjn+VTnwvoWA1ajGUyZjasTUXhNTSjqs9nPC
         cmGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lETZdGhx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id v17si44709pjy.3.2020.09.10.17.31.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 17:31:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id j10so4324942qvk.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 17:31:45 -0700 (PDT)
X-Received: by 2002:a0c:8e4c:: with SMTP id w12mr11600652qvb.3.1599784304531;
        Thu, 10 Sep 2020 17:31:44 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id v42sm527471qth.35.2020.09.10.17.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 17:31:43 -0700 (PDT)
Date: Thu, 10 Sep 2020 17:31:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Miller <davem@davemloft.net>
Cc: kuba@kernel.org, rmk+kernel@armlinux.org.uk, andrew@lunn.ch,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net: mvpp2: Initialize link in
 mvpp2_isr_handle_{xlg,gmac_internal}
Message-ID: <20200911003142.GA2469103@ubuntu-n2-xlarge-x86>
References: <20200910174826.511423-1-natechancellor@gmail.com>
 <20200910.152811.210183159970625640.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200910.152811.210183159970625640.davem@davemloft.net>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lETZdGhx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Sep 10, 2020 at 03:28:11PM -0700, David Miller wrote:
> From: Nathan Chancellor <natechancellor@gmail.com>
> Date: Thu, 10 Sep 2020 10:48:27 -0700
> 
> > Clang warns (trimmed for brevity):
> > 
> > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3073:7: warning:
> > variable 'link' is used uninitialized whenever 'if' condition is false
> > [-Wsometimes-uninitialized]
> >                 if (val & MVPP22_XLG_STATUS_LINK_UP)
> >                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3075:31: note:
> > uninitialized use occurs here
> >                 mvpp2_isr_handle_link(port, link);
> >                                             ^~~~
> > ...
> > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3090:8: warning:
> > variable 'link' is used uninitialized whenever 'if' condition is false
> > [-Wsometimes-uninitialized]
> >                         if (val & MVPP2_GMAC_STATUS0_LINK_UP)
> >                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:3092:32: note:
> > uninitialized use occurs here
> >                         mvpp2_isr_handle_link(port, link);
> >                                                     ^~~~
> > 
> > Initialize link to false like it was before the refactoring that
> > happened around link status so that a valid valid is always passed into
> > mvpp2_isr_handle_link.
> > 
> > Fixes: 36cfd3a6e52b ("net: mvpp2: restructure "link status" interrupt handling")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1151
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> This got fixed via another change, a much mode simply one in fact,
> changing the existing assignments to be unconditional and of the
> form "link = (bits & MASK);"

Ah great, that is indeed cleaner, thank you for letting me know!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911003142.GA2469103%40ubuntu-n2-xlarge-x86.
