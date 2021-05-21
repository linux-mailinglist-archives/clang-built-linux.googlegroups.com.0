Return-Path: <clang-built-linux+bncBCN674663MOBBQPITWCQMGQEWCYJE3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB9738C244
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 10:50:10 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id b8-20020ab026c80000b029020f97f38cfcsf6486236uap.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 01:50:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621587009; cv=pass;
        d=google.com; s=arc-20160816;
        b=nKJDOlPPDBlGzf9nmKxSzgDsQVTRVtuoP6G/IxpHpkvHve6UMoCD0ZvB0rooiI2js6
         /YcACkl9wYyxkbYWIvbx5DflzDQD+VS0xwiFtK9FsMDhIOn/zr4Nokurz4UObxlVVcj2
         mrcARmJNt3ZEx7o8wxe1zV03xwH26ljDICmjMEkt86j0Suj9eWC7WHVMStgFohDKSjvq
         8W8BjWltTmzkEvus85tX0c2KW+xvdQI2D4CXwKn8wjVun+ZiDcENL4rQgy/cm4975JfA
         sQoxmJhuihyFygTDnVhwKMJAP36p3gReE4y6GaHwK+wCwhypdoFburjBczzPjPlAVoQe
         0IDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zRppYYq5CpEY8dbPTcnFiCTmjNkq79ffxR7+usy6UgE=;
        b=GbL+oD4SKEuT0qGnJMy3i6WfSrYsMBm702OdeL0D6cV8WV0kGLgA+gUP+pLa8MPrbc
         7mEnPaxsCBBq0ATFIjUlZnt9vBb8oKulRuNHLLCJYeH7qC1GLpxAOsa5M/lestlfebba
         fXiGEXQ8mFlfTt11MYftOSvcAUMHCL48YVKoCGznEoJE50j+XjFYm3dwyv6uV/gdhtW8
         dzv874/WMWUmwm5pEpUXiY+rYmRHl5WbHnE7/hUIpdawozYgh7A46w7gqUjm+YoaflZ1
         yF36SIfMC/8Z7kVWUNeAywlZ+LIUK+gc5i/wuP9AlHYOFMZ82h+vScfOThrlezDoeXwk
         iNrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QqKzCjwO;
       spf=pass (google.com: domain of liumartin@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=liumartin@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zRppYYq5CpEY8dbPTcnFiCTmjNkq79ffxR7+usy6UgE=;
        b=W453hOZYCHX81WxRSsD7sytfXuBDsUGhRq351Ie6Avyn5lFhF7dv5w7VZEwNS2xmAJ
         ukfR+PkomDCP928FOahy3t4No9jFvDbQR2UZB/lTo2nvBD/QnSpBl/yCBbNwrQViINk1
         SbU8ZN77TfGQMr7cPR3sw8yC9TdFITVXG+MvXGzJu6zfbvDnBHcIBTcy0LsHZJkv+//4
         g3LHs4HF4WmsOS1blOvUHYRJaJX3VoaH0keEtl8Rq9CF8w/q3JaobSzWmL3xWuQX+rqC
         SZA04e/ceo2noaHHJlsYMvETZd+2vR0n/Et8OVIBGHcpIwVJXcX9mAfA+YnwLssU0J/a
         rYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zRppYYq5CpEY8dbPTcnFiCTmjNkq79ffxR7+usy6UgE=;
        b=h0HysoHuVxLnfQncFVGBnRrgDtALfKkg3PZYE6z8WEi4pBHFn+83I5kdZQ3bU+ocKO
         LQ6S50/Q9NfbaIF8NiQkwO/CfPBtP+lIdKU9UMIXLNjUMQRjsgmY6/E7cUa6XRSyfDIj
         TLehkYFmaOPzumkeK9Z+6GdZ50ygyBEJydvE0tMFOp3aygv3/b/7Ji5k9JM6+iPbBeim
         OHdSEiRaUawZj5FGw8aX8GA97GyVQNUrDdRBwdyTad6Kb5D+0sQ8ls1TgiPQwTXLmYP6
         3ooJFpj+u4Q5dyZlHfhodzsbFO7eg92VDOBQXEhNvi3xITfXoPGYmS0s4Lmb3AU7i1QN
         NjJA==
X-Gm-Message-State: AOAM531YCIYnDaa9WlE4Jpsxib0MAXjYJZNfXnYFTRQjJbrX4fRTbqd1
	RNV6rYSqEBH2e0SP3+JK38k=
X-Google-Smtp-Source: ABdhPJxfwhRKUc7yIrSpEx+rETt47/ixgwWJYy825yymkTS54RxXnNtW45VnkdvC7W3aj+NtpIdu3Q==
X-Received: by 2002:a67:878a:: with SMTP id j132mr9165294vsd.18.1621587009533;
        Fri, 21 May 2021 01:50:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cdf2:: with SMTP id v18ls438087vkn.9.gmail; Fri, 21 May
 2021 01:50:09 -0700 (PDT)
X-Received: by 2002:a05:6122:1799:: with SMTP id o25mr9144675vkf.23.1621587009048;
        Fri, 21 May 2021 01:50:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621587009; cv=none;
        d=google.com; s=arc-20160816;
        b=VN+gQBJ2iAbRkxmTn+bRbLdRVqCwwZwFN21hiQhoH1+TrhsJ385cax0nE8re4DqM5q
         QcJHmWmoW/cnjeeiw0gWXzMQ4IR7bOCfD+WatT4oHbkKENYz2TbLsnh0TC6xbEfpBjot
         Vf3AB9+24BVInW10ax7axGms1+rzjCReHK3lbI2F5WsWfBM201/1T2xz7KpGFD6BOJ9k
         e8aAwO7dBb0UAjR6SRrnHpntIaMCXPfDATE8pHM8RKF5O3uqlYrBTmy4kDLvcTth+THe
         v7sHhsOjP2j0pGA+gi3NcsgBrUarJ241sEAyLv/owVd6HNAYnQLTRGiTFPflKyxlTO+1
         uRYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Z+pNd8iiKn7fyjmLzbAXru7lbppAXi9Y4DYZJ4cZYbI=;
        b=vH9ayyg8bd6r2c6UxO2YG4LldpwtBU3FeHQq9dmSkMN7rT1oRfcklv0gPKbKLalvMi
         lcQo6Wy1AeLGv4D843QBfEMa/enM1SGXueuyMaF4dbCFq+UCKIKuHApGaMieWYD3cB0S
         5T5hR2A500LLJk3ZPRqCxhfpz66kk5CNs/ayifw3xIfUmRCeHDv1ORX6wIlIhKAdGkBF
         YywztddbHDl6RDR5el7b0cNS12qfIN+KRf8IztKfC7ci8PIKD3QKvSwZYQ+WU+4YHOyT
         rkfbkQfvkuOJzhoeEJpc/Yr/6iImxX7Xd0VIIlGkFIHhK8bagJ0gSxH0/kERgdESuc/y
         q10Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QqKzCjwO;
       spf=pass (google.com: domain of liumartin@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=liumartin@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id h7si661156uad.1.2021.05.21.01.50.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 01:50:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of liumartin@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso6742989pjx.1
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 01:50:09 -0700 (PDT)
X-Received: by 2002:a17:903:30c4:b029:ef:82f1:cb28 with SMTP id s4-20020a17090330c4b02900ef82f1cb28mr10984611plc.19.1621587008404;
        Fri, 21 May 2021 01:50:08 -0700 (PDT)
Received: from google.com ([2401:fa00:fc:202:f654:3898:11e:aa15])
        by smtp.gmail.com with ESMTPSA id f13sm3796911pfa.207.2021.05.21.01.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 01:50:07 -0700 (PDT)
Date: Fri, 21 May 2021 16:50:00 +0800
From: "'Martin Liu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Petr Mladek <pmladek@suse.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tejun Heo <tj@kernel.org>, minchan@google.com, www@google.com,
	davidchao@google.com, jenhaochen@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kthread: Fix kthread_mod_delayed_work vs
 kthread_cancel_delayed_work_sync race
Message-ID: <YKd0OBB7dPoAYX7J@google.com>
References: <20210513065458.941403-1-liumartin@google.com>
 <20210520144845.52755f3af700a902e07e2ee7@linux-foundation.org>
 <YKddXqLh6+Pj7wFW@alley>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YKddXqLh6+Pj7wFW@alley>
X-Original-Sender: liumartin@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QqKzCjwO;       spf=pass
 (google.com: domain of liumartin@google.com designates 2607:f8b0:4864:20::1031
 as permitted sender) smtp.mailfrom=liumartin@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Martin Liu <liumartin@google.com>
Reply-To: Martin Liu <liumartin@google.com>
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

On Fri, May 21, 2021 at 09:12:30AM +0200, Petr Mladek wrote:
> On Thu 2021-05-20 14:48:45, Andrew Morton wrote:
> > On Thu, 13 May 2021 14:54:57 +0800 Martin Liu <liumartin@google.com> wrote:
> > 
> > > We encountered a system hang issue while doing the tests. The callstack
> > > is as following
> > >
> > > ...
> > >
> > > Fixes: 37be45d49dec2 ("kthread: allow to cancel kthread work")
> > 
> > Thanks.  I added a cc:stable to this and shall hold it in -mm for a
> > couple of weeks to get exposure and testing before sending it to Linus
> > for 5.13.
> 
> Sounds good to me. Thanks for taking care of it.
> 
> Best Regards,
> Petr

Hi Petr, Andrew

Thanks for your help! :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKd0OBB7dPoAYX7J%40google.com.
