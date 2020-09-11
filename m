Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQF6535AKGQE6RGK3SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF6E2662C9
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 18:01:05 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id v145sf2413032vkv.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 09:01:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599840064; cv=pass;
        d=google.com; s=arc-20160816;
        b=V1geErozM5apW0U7ceWg1+6vwEJzhlwFMWf39ivHqJqCyuJg1iB4HNHRS+xWfcagEa
         KGxABIu/dhTAg/zYstUcNrrswSRxfOtII2VRs4bk6ItnDqxlovZ6gVqB3z1A61bh6lae
         1qdmF4tpL9c3c9Zs91wb4nq6L47VCawWjNWuG4njCE5keyHQyiofxJd78616d9h78TDF
         d4oWQTwdAGM8fTj2s/rIi6BZuaTkHCEJ4ELigOAGanTMr3tCsbzpT5xtNogMkX+TN2OL
         pIbt97nX4xddIA2UhLMRbHgASrarLRsehiF9NMx+ZpFdlEngoIvhB+7BnUnDqquHMkM9
         EMsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Fbw/zuBToxbBlRTczuZ5mGosS2xiTI9hzGWGp9RZHKE=;
        b=ITqoOD5iuUBG9bUwQ87qIVd1gCgrGGdxgYO7nqGLd2yjmzaqj9C3xauP5Q+g6DOFjx
         JKqeYkJbTRgGCETEnMhcEDoERcOwYxztMiYkuvr0EyqxWAxrmqiXFPTwSEh0OmS5030y
         Di6GYevHpQ1TP97nbiy9PZrWNpA7BZaeXIcKAtLEFujaxHm65uE1aScGApZh2JJYzqxt
         vcQAABFtlbNiJES70x1Zzqd1bVn4FAkNbFOVgSCyXOb8ge18KcCdQYFBNZqV2TE+w0No
         zAcVu9724yhRp9krN8YgICpclsK2ZhGbJ6WTglG9gQFnHflSR38kGZyZdfYyJh8w5iGA
         drqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sutpl+MP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fbw/zuBToxbBlRTczuZ5mGosS2xiTI9hzGWGp9RZHKE=;
        b=Hzw+dn9JHkwFZFHZgEuXrn0ejjSrnULmEmCE7HwRk7S2GaNikghKDHXWFjVDiXqdEV
         HMSkl3/kvfeADQiugfBZGwaJy+ZHWYh1SCNImiudM0w/bzVUbHlloIQBemBTyEdZiLWn
         pO9r+WxtKdHsFrId9Baa8ETJbE+gWnWlYSQQOZsUgNE2DLlnKjhmMJbBaRByj/sP5oWw
         xpTdRSL3zzITO1DEHCgFJBtHTGYkosDRl/gbIHZxZR4z1agQGXc0zWVb5diWNdK4SmIL
         iDUsbmZAab+2eW+wTKUYi+FAT/EmKwksXqwc/9GzXk7i3lONJOx1RllPYMkwtolMJVCF
         8b2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fbw/zuBToxbBlRTczuZ5mGosS2xiTI9hzGWGp9RZHKE=;
        b=Ci75Jr+gsIuh8sbolkBhygNcgadPmlkRTJE1z5H6sOabj1G2U9LNQd+YNabqLoBiQD
         JCOwHkhW9GQ2MLtAkNEoOK65KQyjY5g7o8XUAHgCYusqnMik07ROUwhxsRDta3BdrOrB
         aOX/5/TqEQe9affL4d5du7rJWkRJmyg9ZBudNoC3/yfVq7/GiW2z0y7vhtZ1dmDdZSRg
         52TuGKLGO4B4b+XgBhg3xviWOjJA4NiFvuzIcgTBXPcR82XMqjPwT78CG3p+etIG3mlI
         JDPvSJ4kTk7t1n1dv/sqDpxvAZDhLHlnxGLAkDE2OaJfM/HVC2T8BpFvHBycquIplzXG
         UfyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fbw/zuBToxbBlRTczuZ5mGosS2xiTI9hzGWGp9RZHKE=;
        b=GEkTYgnwxOUs0iGSkWiiv6hh4WS/qGCzhJWfOCu0EOIbJfVuSO4xvOzXXD8yJAn2t2
         dlDiwpedVQhl8LKpWmo143IzSy6AoyoUGJl+4r14/iaoVAScbAXWCqrwijcEZN+qIpoT
         tXlN+i7sa00NO0X/h4Uy2WpvqaQzlLd7pOP+VJuyW9ZSLmamd7svXqqvsCVWQwnvyvLJ
         2eDsBe6SAUUnD0CmsJ6xjPRvDK6xDItdn+yiP2O/pXl0zSpLj8XJUvvHHsbmr9QWcbmI
         DBo4tLc9ypHkmeal5JysEpcjAN6rvXi5H33LCxjsDw5+zGpG1TkDcsco9L3qevVJdN1a
         2tYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CMgH/wO9lbf8GBmD/nea9gMdPwRIJIRLPwf9gA0GXvjbVFaf9
	yZz5oxube8UnfrVt8QHxSm4=
X-Google-Smtp-Source: ABdhPJwhx1fqk2t49WWnHQXOeNAde5/7uSASBjlXUqsHZDMYUuAPOxnQgS1yTgyDU8GYJI/wcUG8Iw==
X-Received: by 2002:a67:d896:: with SMTP id f22mr1588737vsj.18.1599840064707;
        Fri, 11 Sep 2020 09:01:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:20c5:: with SMTP id i5ls371566vsr.6.gmail; Fri, 11
 Sep 2020 09:01:04 -0700 (PDT)
X-Received: by 2002:a67:ca86:: with SMTP id a6mr1608322vsl.27.1599840064272;
        Fri, 11 Sep 2020 09:01:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599840064; cv=none;
        d=google.com; s=arc-20160816;
        b=TU1jK/UhbZOKZVGKY8/Ae2DI9p7F8Mwaugh5jzh7IGgO7c/rVaiwnpIH5wlvF3Di3H
         4LVUHFtNIkWnQUS6nm2Eo5gTBxXdsfz1mifUjrnu+DQRR+m4eq2Nl5QMVuNa/dC99UHp
         Y7SWNSQB7hHQo9uQ8Y5sDwUpQ0GIPJ+abI8nqdxNxcM5Hw5jT8lz18Phawdf/DQNyL1w
         jDYZN+GR9pgIECsBRQecRhs9cK9yHTO+3eH1gS0KVFVzzWSwIu+E10vgNZ0I5unmwJXx
         8NaB88g7fhnSHIJBZ3rhlv5Nk4wCOaLMEuYFcKumyxmg4oWYJfU9MQUkRaIwpBT4p7a+
         bpBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=m+iVerlUNqAW5DSLfymFd18Aa+jNaCXhphLLXfU0VIA=;
        b=NlATHFn8kvGKe8nOyCMVmMDHy+JoqxUKgSFMjO/HkFezUvwV0GXn1AIjFkBoSHsY16
         k9+J93d4JumY7nlS/s9D3kQqppJksL84BLU3Dv9DsaIEanu8FPGDjTvnlKe/nlcz+piS
         o9FiMLPyo6YAN9r8qQOmruJvCUBuZ6kTUn4lMR2PqjJrzvGBDOJJ3h1EeJCXNvJZ9bXS
         PANz1mwpmOkyJI4eXlduhwZJM7behLjMBEeTmRz8jRP47iNGBB+E58CY88p3h1M+zpFA
         36C8WACLFAVEOe/pOsNmh7YC2z+pw9JSBl1F4NYoLqdYJ3vQB/U657qBu1ZCBn0FiY1Q
         XCEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sutpl+MP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id m5si223094vkh.4.2020.09.11.09.01.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 09:01:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id p4so10370651qkf.0
        for <clang-built-linux@googlegroups.com>; Fri, 11 Sep 2020 09:01:04 -0700 (PDT)
X-Received: by 2002:ae9:f503:: with SMTP id o3mr1925852qkg.447.1599840063843;
        Fri, 11 Sep 2020 09:01:03 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id g25sm3061622qto.47.2020.09.11.09.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 09:01:03 -0700 (PDT)
Date: Fri, 11 Sep 2020 09:01:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
	David Miller <davem@davemloft.net>, andrew@lunn.ch,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net: mvpp2: Initialize link in
 mvpp2_isr_handle_{xlg,gmac_internal}
Message-ID: <20200911160101.GA4061896@ubuntu-n2-xlarge-x86>
References: <20200910174826.511423-1-natechancellor@gmail.com>
 <20200910.152811.210183159970625640.davem@davemloft.net>
 <20200911003142.GA2469103@ubuntu-n2-xlarge-x86>
 <20200911111158.GF1551@shell.armlinux.org.uk>
 <20200911082236.7dfb7937@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200911082236.7dfb7937@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Sutpl+MP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Sep 11, 2020 at 08:22:36AM -0700, Jakub Kicinski wrote:
> On Fri, 11 Sep 2020 12:11:58 +0100 Russell King - ARM Linux admin wrote:
> > On Thu, Sep 10, 2020 at 05:31:42PM -0700, Nathan Chancellor wrote:
> > > Ah great, that is indeed cleaner, thank you for letting me know!  
> > 
> > Hmm, I'm not sure why gcc didn't find that. Strangely, the 0-day bot
> > seems to have only picked up on it with clang, not gcc.
> 
> May be similar to: https://lkml.org/lkml/2019/2/25/1092
> 
> Recent GCC is so bad at catching uninitialized vars I was considering
> build testing with GCC8 :/

It is even simpler than that, the warning was straight up disabled in
commit 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized").

clang's -Wuninitialized and -Wsometimes-uninitialized are generally more
accurate but can have some false positives because the semantic analysis
phase happens before inlining and dead code elimination.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911160101.GA4061896%40ubuntu-n2-xlarge-x86.
