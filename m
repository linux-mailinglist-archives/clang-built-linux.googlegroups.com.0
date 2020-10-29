Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPNI5X6AKGQEFAGGGPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A6E29F938
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 00:46:06 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id r7sf871431ioh.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 16:46:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604015165; cv=pass;
        d=google.com; s=arc-20160816;
        b=gYRHZbzALiMhaDoYbry+xwQ3p+xyfQ4v8fuDEevnQPQaewN31Gjl2uAMiqsZG/TYwk
         eGNlMubtsLCwE8HPIFvcfyHoH++s6dIZBHZCXquN6pM0eU90w4YLuUZMP88J3D8LWwIv
         zzFiyRagW2sg9i/ZwOm+ySm/PnXDbPS4SA3C0CxygW/i2kuBUWY1WFuKoyz8bz+584jn
         HVvHiocykmA8H00f5zGzX9BwCWTB+B8JDf/+vqTk4jpDQ1FL+d6oDbIAdrwsJ7yIfsI8
         wuwNGpNNwka6m20XH1NHTnr6vV0roavuvpsE9e9ymo2p6QuvI551EvswqHDv5ZCzVEmF
         x6wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oOZaFIPJG77z5CJp1QKcJZIM/cm8/v4ELiPhSJ3SzdQ=;
        b=I7B5LAjZ+eYnE4J/qMwDE52ai7aqHM1EsliTFlP58oxdp7KqDsFC8uNuPbFOvzJcyZ
         /YBtLBzZaVLNwNjxZLR7mEJMrdJ6o6eUHBEtkFs5TBfK5/3LoptubipFVjc5niSwRvx6
         qXN1JlGmCwgrO7Dud27od4bOmVBAfgGXSCy3a/feDzy8VdYhM641xRukKGfnaiedP2+I
         3D07scgWgB7671cgXPOExhaZx8TgPVO1l4pY64oolYRMmMszQIcZGHORxu7mXlWCIb+U
         8uPEqK8sRg+2+XwG0Hz4lRNl2w2VH4fJs153YqF80DxuTz7B3IJjrrlygl07/OVbOPp4
         aTYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=byD4ZuKz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oOZaFIPJG77z5CJp1QKcJZIM/cm8/v4ELiPhSJ3SzdQ=;
        b=UmX3uB/JZ+IVUr/P48yPkEAfwvj98mXle5KcduSidbs4qGrDux45TjFFTM4/hcBoMX
         iUl0E5cwF+NeKoD2ynQii4AFaHjDxTAtCMlU23vbcAzD14beFMrawEGiGIjIyI7qrfsv
         I/9DdKBYsZpyK+gYWq8tuqkLN/WuzTOH7Tslh0kKxX4G6HZ/+yaSzJOP4m9UVvEAHlfI
         r1hQqApE8P9jemyMJtZOTiOnO5J2RJounKYBujXdiaelNSbwVOeIwT+uKkMK7K4WkDzM
         Ao1WdDhoMpMWIJ9DkQbSLQqe8+eIRSYsOaxUj7XYu4RnDT2mmx7gfo/Ao4ggrHX9cUiX
         bbjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oOZaFIPJG77z5CJp1QKcJZIM/cm8/v4ELiPhSJ3SzdQ=;
        b=IET5u7EGeBkRP4KMjxjKUycydh5iYDAWQn42105+WkQYSztL93nhiXrUShWn4Tftz0
         Oxa8GvgVxgEeNjldY6zmoxOhwwmVnUVVVYhq45ejQkGkw9s3ubFCP44DQ2qOruO1WSzt
         YiWQiZK6/iHHS8IfE1t1O8qrAlukrdOuVGaafvZmNb8vLBSk1FnaDYdGpBaeRoFceld2
         aTYK9rXaX0aTxdK7uSNOZcN9roeTnO3z77xlrECwdv1h7aWxe8b7ebqYGy4X7ZOvVHuW
         k+GLPn2NvFU4zUAOq6XP1bgRJhKccw+cLAw2moRWuzRTYiggl6VnwXL9KyT2hwclMy4/
         5zzw==
X-Gm-Message-State: AOAM5332LT0uypeUVVCBHkx2ybKpPm03WqDQR+mgFo6Ftgil/rJQ38jL
	xoEDZL4M+NzuUzCgUPrAWTo=
X-Google-Smtp-Source: ABdhPJwndm7cYXoqfhyhUvJ3aEltqvwQ5+dm8blCg6VXtrVy25OVEGeUChZJbfbagC9Cg/ST94bl+Q==
X-Received: by 2002:a6b:38c6:: with SMTP id f189mr4478253ioa.38.1604015165410;
        Thu, 29 Oct 2020 16:46:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:140f:: with SMTP id k15ls583365jad.1.gmail; Thu, 29
 Oct 2020 16:46:05 -0700 (PDT)
X-Received: by 2002:a05:6638:c51:: with SMTP id g17mr5965817jal.33.1604015165042;
        Thu, 29 Oct 2020 16:46:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604015165; cv=none;
        d=google.com; s=arc-20160816;
        b=CVZC7j6wlLINZWppq2q/Kgm/UVm/CBgOM60ojKov9LtqOy0mAovbW2rSPfrT2kd/T8
         ojKQ0VW6HgBVL1T2RJu6gAEeJrPRc/bTOi8qJTNJcfV88flijXgarWkPga8y+WDRQa2S
         HMrjBmnPqUBOU4KpmD2YgU5LiViUREymWgNicvvUN0cdWcfLLk/ZKvuxP6IVZ+r4C6wE
         7O+nUtWaD8sOEh4cFU3liU7rhRSFDpObUOK++b/6VyEAV/7yL1HvMcugnjjJKq3/7Ltb
         9sfKv0sr70ho4KS7H9MwikhuRFIXkyDhI/4ne10bUqQwCK8thvqJ3xLz3H6++TlqYaTP
         IrNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kGjqAOdcC5QA0DRyEF0KSvVoN/sesHrA9HjD2QObBEA=;
        b=jTrDVUTLdiXbyhu8Ixx33Sh9HgufusMpECXeGQYV10dZMrwpxKk4ofSRMRC13HkDZm
         NBE+w4DIA77vsdgtLibFsKfpxZq1qoWbindcqkCyvz+evDkeCfvTI3fPT06ZhGXicrQV
         xS2xJfWf3WaWB4CxXCik4P8Bn5sUAeikhpysNyEfJNof/Djr7SdErVZVqvj57kiOHNIb
         p5i8+vga3LeYSHmymsTkZMeG6ZZlo41Ku2zLLTznMS3VRBWzafkDesYf4E611GEBG1wP
         fZMP2rrUoTl23QIwUEkWC61uzUeTwq57hem3CpX5ie874yrXBvokGFGxP0mw9qx0NuNf
         zGxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=byD4ZuKz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d25si253524ioz.2.2020.10.29.16.46.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 16:46:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id n16so3628287pgv.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 16:46:05 -0700 (PDT)
X-Received: by 2002:a63:2f41:: with SMTP id v62mr5972972pgv.10.1604015164347;
 Thu, 29 Oct 2020 16:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com> <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
 <20201029233635.GF87646@sasha-vm>
In-Reply-To: <20201029233635.GF87646@sasha-vm>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 16:45:52 -0700
Message-ID: <CAKwvOd=MLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg@mail.gmail.com>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
To: Sasha Levin <sashal@kernel.org>
Cc: Jian Cai <jiancai@google.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=byD4ZuKz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Thu, Oct 29, 2020 at 4:36 PM Sasha Levin <sashal@kernel.org> wrote:
>
> On Thu, Oct 29, 2020 at 11:05:01AM -0700, Nick Desaulniers wrote:
> >Hi Jian,
> >Thanks for proactively identifying and requesting a backport of
> >44623b2818.  We'll need it for Android as well soon.
> >
> >One thing I do when requesting backports from stable is I checkout the
> >branch of the stable tree and see if the patch cherry picks cleanly.
>
> btw, an easy way to get an idea of possible dependencies is to look at
> the dependency repo :) For this commit on 5.4:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/sashal/deps.git/plain/v5.4/44623b2818f4a442726639572f44fd9b6d0ef68c

Why you guys never tell me this before? :P Very cool, how is the
dependency chain built? Is it built for every commit?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DMLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg%40mail.gmail.com.
