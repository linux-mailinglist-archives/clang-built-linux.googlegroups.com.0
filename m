Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBN7W3ZAKGQEMW64FPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B56165039
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:50:14 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id e11sf925347otq.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 12:50:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582145413; cv=pass;
        d=google.com; s=arc-20160816;
        b=PnJ/PQ5iuxBSjEuBlVGyxgQuo/D+gLLWWzv1hXtAXD2vRB3BzX3eTz0qvxJMaq4A+Z
         cC/ynIx21cejfm07F16q31o4f3f/QYM5wnFfzBABFmB9533m6+jpjnyWjvkXZKrpN+Kg
         FbMBBtcPEZwBjit8/yiNYVGxYAg/WCZTc3TbZ3ULAaJNeJYbCl7+dHEStMGUFrEwMZYQ
         k+lJVQ0xE/m1O5UoMKPYx4ZHAkb3joZF49VZTNYethNGPfNQ4zpthOsfRJZxHaWePf5b
         EhK14AaFbFi3aOwfZJqsuBK579xgUIC6tyVwJa/7dK8rwYZp0yIo5bD0/Q8DjxQ2ctrb
         bvyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=hVFbhP6n76v4TddIy9FZTig0eOLdiHx6lUDdy6eJTQI=;
        b=lG3qh/ajyHizuZUsLZ52/QtMe1+cGnyxYmwMldSK48oK6jpIui+drEphx0MQLSDvyS
         6ecxSJAgwpG+jpqt/33NasJ46EBQLoe2OUvKqGrJsj9oSxj9RuVfZCbuXBnEUPkYyCss
         mN45CEA2Yc9XWKYmcocvXUfBkee6vTcE3TIuJVfIwIOE6btKluS1V0zQAm1XlwizkEOQ
         e87cHOUARyZV/5OMQ/qCAqCoIxBOF8kvSUUZdDdpWgU5LX44eVK+ZGm3sYdB8j+SN/Su
         B+gLNXTc6pNlWX/1SjF9tb82NG7kIYjqU/9PfX0AlBV9K//G3f5o8eCWrXbVKSQNbhWm
         pVvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="t/iI5eK3";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hVFbhP6n76v4TddIy9FZTig0eOLdiHx6lUDdy6eJTQI=;
        b=WUh2dAYWPhWvwdwlh/TPvFD0qjZcYKuE75CK5E50cdc6W8E0V/x0C9QG+brWcAoSrK
         EQW591DNBEeZBPQrER0i7Mm3hUZUoeFx1XEgxfYVm3NV1h9VGb+dMutSHKx7wQLSTYvk
         H65rMdTGZVvgmMAt+52wvSrZQeTsTYi1NqvsoHFLNCa73WrlH3yAELPAnDHl1soNqeJR
         rN0SKIkQGvJBC7XdYIw679+Qoq0XWVXEDjiyIsOyeXSBIK3pQCJZccHluN/Vo+0b92nY
         YsRd7E6m5E3rvQo8l2Lad5EK4xFNFSj10+AWUSgO4chOB/+xaTVcSY+NAi8jdTxSlNic
         qVyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hVFbhP6n76v4TddIy9FZTig0eOLdiHx6lUDdy6eJTQI=;
        b=gnPDQhdMo/rjDDc0TYouulwXv/CofqdV16mcpuSMNhiYrkN7Db56D/5lt9p0G7a9Sd
         FSmR+MUsbaIBZ0j6R/IzUbfnezgh5RAv/2iE6x/NpMWDhFiQqgkppR4LMB1b8BIxgl8T
         Omth8uy/4NhW1AvdZ1SBjw7aHMthu1aMbF1jj4nwBPbeQQOiE7uo0LnAdCU+4JNcACQw
         aneUTe9v+QyBoC0mtLBtc+l0HzCR/WUyy1m7R2JKSUV2rBjSBrlByWIs90ejAeglqn7N
         O/ONgZEuLRFhc3CoOK5zMi03/YLJdRyK/liEaMrHeTdKPsOd+w/vbj95AX/TqrBSyxvJ
         rOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hVFbhP6n76v4TddIy9FZTig0eOLdiHx6lUDdy6eJTQI=;
        b=lGmtePqV+cZOcyn787HctG2X4N2D0fvX4gFzdmyz4IMj9YiCmbumPojMh5S7PpiBXN
         xseiPb/IAUEuoiHsDoR48Tqgv2TcaMRSGkF4dYgnWOZG6X9FFPA1jCeMl9m/yBHtXAc6
         ivFzfuyHuUnHzo2LeHERJCGfGCDKdB2TrZnAMQGRyGfl7TOQLzyRqkUm3NKMoahYVgKF
         /RRd/53m4p7DDrRNLPdAWWN5p8dSU9vLJWiHA0lS79ANJuNeLNmlXPUDsfDU0iymaWoD
         FKDWPu31UxMo1OR5iIWpPxupKnZfeEJ/jfpO3OUvdS8sQK99AiVfBhPFV335gCLxyGO2
         X8YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsH7K8RxCuyl1bhGvuEspnwPjqqsbbi2XOUH7IfZ0/fbGjODEn
	x4SPsUbx9Nf0y2t21PhUJYI=
X-Google-Smtp-Source: APXvYqwpI5dLdnLX5voFCeXC280aWj3mEDgGC6nZBlJy+MG0uoFhHx2x4vF1ft/f4Bg4MTzR8VUFbA==
X-Received: by 2002:a9d:6f8f:: with SMTP id h15mr19783891otq.1.1582145413345;
        Wed, 19 Feb 2020 12:50:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d549:: with SMTP id m70ls422084oig.10.gmail; Wed, 19 Feb
 2020 12:50:13 -0800 (PST)
X-Received: by 2002:aca:d903:: with SMTP id q3mr5871506oig.12.1582145413000;
        Wed, 19 Feb 2020 12:50:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582145412; cv=none;
        d=google.com; s=arc-20160816;
        b=u1MYFy0Lllbzac23aQvzwM0hKYhyxj3l3AAcmqjhhVYKDZ2WfzZzcJFmLibqaYbLVr
         5sGQc74A7tvvqRr4ToyTaNLIpfiap7tXM8JSW3BcOJnlo99wS7E9pj+hMqTYVQGxEnSL
         agSBxUYmoEe2CE+XB0mM3wi+alpU9fPgahQzEUDNu9H7oRduvRFd18mpCwqMlMLVx/gA
         snBMFPsD5T1ipIFUoGxB6AY9jpV47PovVWr8RzP1GCF3TO0RL9yKTHIwHncd1sNLhUz1
         ycfQJvvd0dUjxgGedinS7rlxat6mS0iXa1YE3HjERzd16s+xcozHzWFxOvyM9+xoF1zj
         TBXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NID/u0S4YSnbZSmhzBcTOVCgZLrtIaXULpx1S3tMLhg=;
        b=s1LaD057zdvP+0Dty3Tl1CKhREB6XUW+fxn051pB7ZVUaLrQ3x7e/OrG9LpGggtE9j
         Fyt+TXUHfCO+SCTm1TJxklHSE6a2c+YGfREifL3ATzpsnUfqUeLoZnECDeoProlVlhHT
         1k60OQiN4UkefGJ1P2VGiO+p1GHyUg5BPWzciJpa1KjeKBYmB9gSnb76ZoyhHVL4eB4S
         TJZKW/+gkJtg6ikFeDsOkvcLqSHPJvvCeRAEksApujxgeT7Fs80JvkEVklOisBIQjuWy
         FYAlw64Y2O+G0vnBpcavsJ4KYZWrXGPdVzWelVyM7yC7gTBht+MN73Q2SumSkTeC7Z4K
         r7Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="t/iI5eK3";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id a17si71380otr.1.2020.02.19.12.50.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 12:50:12 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id h9so1491053otj.11
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 12:50:12 -0800 (PST)
X-Received: by 2002:a9d:4d17:: with SMTP id n23mr21219507otf.85.1582145412623;
        Wed, 19 Feb 2020 12:50:12 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b9sm289014otf.56.2020.02.19.12.50.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Feb 2020 12:50:11 -0800 (PST)
Date: Wed, 19 Feb 2020 13:50:10 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Doug Ledford <dledford@redhat.com>, Leon Romanovsky <leon@kernel.org>,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] RDMA/core: Fix use of logical OR in get_new_pps
Message-ID: <20200219205010.GA44941@ubuntu-m2-xlarge-x86>
References: <20200217204318.13609-1-natechancellor@gmail.com>
 <20200219204625.GA12915@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200219204625.GA12915@ziepe.ca>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="t/iI5eK3";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 19, 2020 at 04:46:25PM -0400, Jason Gunthorpe wrote:
> On Mon, Feb 17, 2020 at 01:43:18PM -0700, Nathan Chancellor wrote:
> > Clang warns:
> > 
> > ../drivers/infiniband/core/security.c:351:41: warning: converting the
> > enum constant to a boolean [-Wint-in-bool-context]
> >         if (!(qp_attr_mask & (IB_QP_PKEY_INDEX || IB_QP_PORT)) && qp_pps) {
> >                                                ^
> > 1 warning generated.
> > 
> > A bitwise OR should have been used instead.
> > 
> > Fixes: 1dd017882e01 ("RDMA/core: Fix protection fault in get_pkey_idx_qp_list")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/889
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reviewed-by: Leon Romanovsky <leonro@mellanox.com>
> > ---
> >  drivers/infiniband/core/security.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Applied to for-next, thanks
> 
> Jason

Shouldn't this go into for-rc since the commit that introduced this was
merged in 5.6-rc2? I guess I should have added that after the PATCH in
the subject line, I always forget.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219205010.GA44941%40ubuntu-m2-xlarge-x86.
