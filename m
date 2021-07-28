Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBGW6QOEAMGQEMUV3RII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA2F3D8753
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:46:03 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id a16-20020a0568300090b02904bbc3b57656sf333393oto.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451162; cv=pass;
        d=google.com; s=arc-20160816;
        b=aXFWFoItCaGmpNgVfz4xC9xoqvMemH7LJuMGtSxBthSrwyOTFqSc5e9H41uWD4p8zo
         HMmI1zCclOxru4t0UMc9KJv1xia8fPWm9hyu16ZD/vE7mIcyoQS/QdqbIk/ZNHZ7bRyK
         rIk8aYSBO2UKzrgIp4nPuc+XVtPXxoy64CStuDUNqu17HlUVPSYipw0iAFhngsvtIn2U
         Nmi+X49ZAmf16QAZtnu0Z+AJQg04MC0maL34vp0Q44BZ6qEilg++h2s3P6EfpLH3Wpzy
         8lARftPXvrCtz+2PWjWuAZ2eBS+ygCCahHcueC0LTy/lNtJbEJfGLytMoMS2pEYUq2H9
         9Yqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AnZLYHaduEE8dHCJ0r7dpyJ1QiXTqVVLeAwLdvXsxkM=;
        b=zsyZkVvsuv+Kxz1yNV8p8XJmtIHHFAoQAinrW3J7y7lnyQ9BqWWSjGRpr4iHlp6LX/
         D+28nOV1yZ1+JXfiSST279ywCWPiqJrwAX4egLRb7mObVx1y74qTmrjIaWds+uR6L+UT
         n0Km32SB2JrOZfg7CIi12CgSuFpBL3Zqp3b3sieDsG50EobN0Ivs8LIHXHMdNVf0U4He
         WltEL/z1+bj/BFBnFNCsu9Q9/wuyn3DQLXwH2Nw0ylPpuOVaTDMGUfZUpm3SPZdLGwZF
         /Y9yWXXXpInlXvZEMWlc+ukRvKEosa21KwPx+NRzMgKEMmxRqtD+wY54J44D47bKAFwx
         pQbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F6DkcU1t;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AnZLYHaduEE8dHCJ0r7dpyJ1QiXTqVVLeAwLdvXsxkM=;
        b=UhfRWXEUZDmjYultUvbBIPzXuJ0NbdMi9TS/+j91pm9EA0lqfKDy6qv2TEaxILja7l
         qEA0BqIiSN/hJsW66Z7UoBloLVjnvp+r8t8vNM8gi2V4g9O9Lt9NHQ7dteKw0fUtjRam
         pEtzYliFZPc7fEtbFhrTo/e7GEobNAha8rJmo7HzgfMPnq2nC2PqlJRKFplqv+KL+ssx
         ZBTtMIWTF/kWAxHdofviyaCgGj4PJfBChZdU4lDJcTAIaRCS/hRDIFc/U4cZwPxDtVh/
         Fb0Pua2kMQ3ygB++Jgg8o8ncyv+0DlfAx5LSgpJy9Eq7AqDgTvMyKKiK4Ura1pWQdtXS
         5pww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AnZLYHaduEE8dHCJ0r7dpyJ1QiXTqVVLeAwLdvXsxkM=;
        b=tAHNRKi9bgQH4tShATJmrsUKPAazf9+KwHuo/wQu2KugYGS2x7XSaqWMZxloVigxUd
         WTYZipEWvA43uq6/AHn4k3QaZAE6RotzESxoyc1UhzyaUaMWtqlpD6CmD6g1en1z/RBt
         86W0WCG3ia505169HhNOObDl9SP+xqH1L+O4yK7qopwyBT0qIfnvatcta+ny+dIL468T
         OwP0LaVEFDd39ctjLPuS1VxIVL+SaSM+3tn9rMh0fqlxiyuw+SlG7RtW7IZFvrkifSCL
         ULDFJSwfZJ9sHIlTwRIWMkZ/ZkEwGZGssfD29aHga0ShhLufqeObGcoBVh5lYY/oSLpg
         Wzow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53081I3c9M2NmHSHbQcoNOsQnMFAC8P0t3u/6/ERfCsRnKZYyp6a
	C2TPaxDPSHYZmn2rdxSDdWo=
X-Google-Smtp-Source: ABdhPJyDl3QN9RJmFb9dEwrgKY5cvZgEyL6yFe5kVQaCZRg28/bC4ZRZSsmNeu6ioYv1hFQKZj9pJA==
X-Received: by 2002:a4a:94e2:: with SMTP id l31mr15968961ooi.62.1627451162450;
        Tue, 27 Jul 2021 22:46:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls293831oto.8.gmail; Tue, 27 Jul
 2021 22:46:02 -0700 (PDT)
X-Received: by 2002:a9d:14e:: with SMTP id 72mr17949688otu.232.1627451162110;
        Tue, 27 Jul 2021 22:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451162; cv=none;
        d=google.com; s=arc-20160816;
        b=S+xmoJUnYdttRs72RplTZW9FT5J/QvBvDznjfnQC9d+EPkBLqT2Z0MDzOiq0gxcn5j
         ohJZw8/RMEwVCNmCHUYiT+TxyuTO7lIGR23N1YKZm2TUvsimAJ98xM5ddnUZ7YIBeBpE
         gUD7SyluTftupPj4dcdA8xDjbyQUB/iS/F151Xzzd0p3qbqUb2toh8x6AUljayCeuIKL
         S0CzCZ9ShQLa9JB3nJzbqub5XThWcWFL88KXZrhc5yYEQhli/zGQRSbRtBdB8wVcyyq5
         IfgWJVE1PlTs9zQFVQxmck2K4qen6RUfYQuIHDnH7/hChRp5dBy+kKBfIZgdli/YMkKE
         uHWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VB398ruaATolEYiSRB7ksOByl+NtOrmxCsuI6mYg1yI=;
        b=hzf56wz2fi+A49w4P2v0eYQM800bv3Pt4KPuGiTkE7ZAxLL7xzJ8RCjB8zpak6GP8v
         SWSHkAg1+LLKLkfGkhwTz2Zsq/cMwm8/nR/xetsZkOfbQCVCV9dYh0DP1X6aQKbPF1EG
         p8BTy78aC1TVqAX1pAvK9kEvfcu730a8hNvo9LLHLSskS5WZOfX3cHJNQ7lVlzGgh5CD
         t03V884BtTqphjNVgLdnxevvJ5NNwO0NlYcfXA4pGFNhcUkQe1Wyirku/XaD3f4+T17I
         mGmZt7Xe5bzo2lOFh8UtlkYKHEstlZ3MMyylFKsCUs4Vi7fUsJ5sJSW+ZFE8QhkvaZdv
         j+2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F6DkcU1t;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b9si518849ooq.1.2021.07.27.22.46.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B91F460BD3;
	Wed, 28 Jul 2021 05:46:00 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:45:59 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 08/64] staging: rtl8192u: Use struct_group() for memcpy()
 region
Message-ID: <YQDvF2syaThTs7sx@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-9-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-9-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=F6DkcU1t;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 01:57:59PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() around members addr1, addr2, and addr3 in struct
> rtl_80211_hdr_4addr, and members qui, qui_type, qui_subtype, version,
> and ac_info in struct ieee80211_qos_information_element, so they can be
> referenced together. This will allow memcpy() and sizeof() to more easily
> reason about sizes, improve readability, and avoid future warnings about
> writing beyond the end of addr1 and qui. Additionally replace zero sized
> arrays with flexible arrays in struct ieee_param.
> 
> "pahole" shows no size nor member offset changes to struct
> rtl_80211_hdr_4addr nor struct ieee80211_qos_information_element. "objdump
> -d" shows no meaningful object code changes (i.e. only source line number
> induced differences and optimizations).
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDvF2syaThTs7sx%40kroah.com.
