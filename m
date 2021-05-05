Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWHWZOCAMGQERWOPSYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD92374916
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 22:08:57 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id b1-20020a0c9b010000b02901c4bcfbaa53sf2490741qve.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 13:08:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620245337; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQM5q5V0/PuGUg8IFJ6XLZjGBthdU0yIWv9znFkzYw/6npjuTaUahy96RJ9tOwg8UE
         h/s3ZoIwZJuiAHekcWMkK2m/9SSR5HoFvwa0HkZVh2BcBrNq39hHlSGyNmqifLPsoLMM
         Xwvs1QCe5CmQ1sN1tOOqZHBk4IAAsisM+Jf2oiA5CuoJJmtLtfTLGEtcognHTzIY3Eck
         KBrEX3Jhv98JwurAcL95t25kKFXQOl71qEBvmextfVD/41oTqbg2NbA40zNdBws5xCBv
         z1qOdZ2dtR3NiFfbzaWubbAN16MbT0lXTEF7POijNOakNYJBC7BwXbs7xfY/pguHveOF
         WJWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LCTzMHdmEP175KwUaRnYX3tOvVfd8623HdP1BZHhwIU=;
        b=M5PiasQ8xe2VYUbFBqngOs0XiTG9orBrvqwMVNLYaJxvYB/R6F4NU/8CtjEbDc3KWW
         Oc7bxG+YnVuZ/BEULw7jA3Jh+i1JRdMQ6w2p9D+mOWWMFRPi8QOjJBsRXdSK1S8Rw59s
         EWUsXrazZQvg8pBlfwbD0Roae+fYgXU/IyiW0H6lHQx2bX7Xkn4XACe/TZ0FFyvAXifj
         VVOKjKzIPkvKhnE16iZbwz6Nj2yvTBDPb1TF9cjXUbX0brhDj1FL9MVtpv5Xp04VZI1Z
         LfXlPjKIN13GlKvcWGTAolzCCb9JM0LZLUKimBV/gIHNkbnWf4W8fHwnzU8lllwb/1Ty
         1Oig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aVnWcmhe;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LCTzMHdmEP175KwUaRnYX3tOvVfd8623HdP1BZHhwIU=;
        b=by9sy/qznuk9bPPJ6Y0zIsoE6EtcCgew8oiY+i0i9Tb7P1XnvAeQYJFpZ9H6J+8d1U
         MLPMynlVGKPhBaNumVr5xFgHWOJm9LXpHTiGq1cZKNuJTZkHeR/TjFhA5d9KRe30ss5V
         g9MVhG+jH6sqQXzq9f8lwSwba5XH1mzi242y5HmeHsRWRdz1Put3pCuJDFASwADfJpBH
         JEK2Z2G4/QDOrUq57Q/iumJiHpO+OkC/cHnkvn+0OSdz+QiHETOJW35eGMGuPKuvA0Yh
         WDboOQ13t0WsCe7VdK3urzF4IjOR5um5xsxPXYl9kfamcDkv5EDJInTUASi36ng5Qs/B
         vi0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LCTzMHdmEP175KwUaRnYX3tOvVfd8623HdP1BZHhwIU=;
        b=h1z1IdMbcXgLq8qPvt1A+FxnTC9FOZ2hsjVf4GpEgwOfu9u+u+pm3fDZ+yrEwOnRPW
         ZLz+mfMl8DnQjMUBqzWNiEgL2GxYlzP7Vh3j2ghUeHpZk9w1aNOdbWwVYZNsoveUVlt0
         XOI/RwIgE/ydIf5Vm9m5HAihC8uGBQRFgecm5JxHuZ2qRCpGpUM9GqMWORrTdhq9Gjdc
         xQsLSyJpiEcixubVp5/2xrfgubRtJfcGJI/ls/Lni9y858EYwSz1YRFn78HSDDaZJfEM
         AJ0F73WWKC8SG5xr4msCjl6tqqKMgqQm3f5DFU1Fy2VUQwFvDUuVfBnAW/+65HJCA3dx
         fxcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531POtrquFjtGVypv6oYVWy9/AYit74K+is5vsGHbPJnXdf8tAR7
	Om/im0KxqV49qSWYg3novfw=
X-Google-Smtp-Source: ABdhPJxSO7m00MFJyd6pdmfpktT1B+FlRbgHP1GZ8mZ8kYfxtnODBUE2BWFYFSK065JRH/pdwNoQig==
X-Received: by 2002:a37:8bc1:: with SMTP id n184mr535577qkd.268.1620245336978;
        Wed, 05 May 2021 13:08:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:100c:: with SMTP id d12ls190924qte.3.gmail; Wed, 05
 May 2021 13:08:56 -0700 (PDT)
X-Received: by 2002:ac8:1309:: with SMTP id e9mr300332qtj.371.1620245336578;
        Wed, 05 May 2021 13:08:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620245336; cv=none;
        d=google.com; s=arc-20160816;
        b=CpG6YEn1bvJQziWQtzmnymcuKp4zWxeSg6ODJuZ046sH1zOc14lTWDpXAfv/GIHHjx
         Vm33a3rMuougus4bDeWGh7A0De6z8ADrymTWyOYNp13Jfy6WVpnThVu69UcKdeEiBDal
         igX2sJJRlFGeyiQtnOLtb/g5GZ+33WTpeD5//RBqDBHYxK3p35Y1JhI5BCEmylSJL8XT
         I3GNQGswLMLxBoyOpc+wZSNb2R9GnsA2R9hpF89Ai0McnWlOCZr3WSUvRBEinfZrQF1b
         s61Uh9nwKZcn0z8qOpcyN322soeoGG7ytSsi07EOuCdR2HtyCZXCiIQNwl0NaNpupieS
         DBog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=S0DhxzSooqp9Bz99qKVeDBS1mesCRKHaFmScR8yVGqo=;
        b=tTj2k3e++WbgzHZO4URL607iMB5YiZf9/hjVclLB1pE4ArBqinv/w9blJ23u1W8puh
         zVV8PFLB2FJyTnlDHmFvED8wwZ9RD8AIx45zwBpoTwzkswZL4ODp5/sU68f0TYCUFN/y
         Ru99XwQ9fvlYF0ewIJa4WIcf1mlQAhE6PubBSCnBpNu88bTqQTZYS48z9oEwSouGkzXQ
         ksifqoDjuPoPxb+cufarKJ4t+hLg+HCDMgOHREn60G85yvlgsakij2ylZ8HA0qo3OLYZ
         amAdqNd2j8W+fQxq1vWrUx0RUUvqf4ZttVYAg9AbUo5/36Z1Hc3Y2L4iqQt1Q7JM8F4U
         jE1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aVnWcmhe;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q12si47789qtl.3.2021.05.05.13.08.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 13:08:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8E18D60241;
	Wed,  5 May 2021 20:08:53 +0000 (UTC)
Date: Wed, 5 May 2021 13:08:50 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Kees Cook <keescook@chromium.org>, Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <YJL7UoSr42JfMCq1@archlinux-ax161>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
 <20210403065559.5vebyyx2p5uej5nw@archlinux-ax161>
 <20210504202222.GB2047089@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210504202222.GB2047089@ziepe.ca>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aVnWcmhe;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, May 04, 2021 at 05:22:22PM -0300, Jason Gunthorpe wrote:
> On Fri, Apr 02, 2021 at 11:55:59PM -0700, Nathan Chancellor wrote:
> > > So, I think, the solution is below. This hasn't been runtime tested. It
> > > basically removes the ib_port callback prototype and leaves everything
> > > as kobject/attr. The callbacks then do their own container_of() calls.
> > 
> > Well that appear to be okay from a runtime perspective.
> 
> This giant thing should fix it, and some of the other stuff Greg observed:
> 
> https://github.com/jgunthorpe/linux/commits/rmda_sysfs_cleanup
> 
> It needs some testing before it gets posted
> 
> Jason

I have verified that my original test case of running LTP's read_all
test case passes with CFI enabled in enforcing mode with your series and
I still get values when running cat on them. If you have any other
suggestions for test cases, please let me know :)

Thanks for the quick fix!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJL7UoSr42JfMCq1%40archlinux-ax161.
