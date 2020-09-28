Return-Path: <clang-built-linux+bncBCQYFH77QIORBTNGY35QKGQEDLUL3WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-f186.google.com (mail-yb1-f186.google.com [209.85.219.186])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A9B27A8DA
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 09:39:58 +0200 (CEST)
Received: by mail-yb1-f186.google.com with SMTP id u64sf31228ybb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 00:39:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601278797; cv=pass;
        d=google.com; s=arc-20160816;
        b=HgJ6icxfSSMbamvgQbUAHVGA/HD8pLdhXHWhsssMfp6D/4/VQokPDHzD75hGEgGLn6
         /kkfXqeqkqkXRJjXZKb10WBJzEHVDb5SjyptO/nIIIecVA9A7pXMExOEc6ccRkqUJ0Pg
         Ce08bRaEL+VaZ0gUUszjAe2DkAyIThTuigx+IEDTeb/Ng8/187DF+64AD9wv5/P4zCe6
         MN5ALCT8h2i+O8lWIDP+kBddpTTP9i3JCCW/+QRzxQrPYjHtDgUwIaKj+mJFEsvoLvNm
         f8ZeTscMe0BfBbb2CoBqWXnuu7UUqC+0uE/54+86LWmAGcf2P420Ljn0YQqc5ZwXsJhe
         lQWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=K4SsY765suzja7Y4i5VxXevM4xcb72QTB2PjHe8aFRc=;
        b=aUx8b6ZPiml9RJhMSR3w8Utm5VAOkQue3t7A3da3L0Kn2O0uW676ULjG7O3u0FEGuP
         GPRWMK8wOJWoiTKx1sscQhF0nBKjzAKoaeg1E2247U/FLZPLHZQVYHWCSXtBPsa8DcI/
         1IY3Bg/xw+Pwmo7agueIn/XOzAecLN1pb9n1E7ou70v8ib9TMe7GziakhFc9I45B0fZq
         GlJDmLKn0Q5x36HWwsuFeCvAxPirz+z0FloTjj1UwMk6m0FQcyJNjUps4jx/4kGOVKdr
         ilhzNG7ubJ2gLSEPeDC93RcQv1OHVjTTPRwK2ZK12eXSjZBVXpBvxAD6RfLBuQ2hPQet
         5GDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=jHzIXKF9;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K4SsY765suzja7Y4i5VxXevM4xcb72QTB2PjHe8aFRc=;
        b=S2ZPxnRGLRx9XOXcDc7h39o2B0u1rwyr4m9aXa/ph+zgyg0YfaHuO7ykJBUmfQOyO5
         sPm7UHesXQXHIrv7Tqz9klEMjKcqJrzre71MZaSTS4OEj1YjxysEdyIMSRhgchpob+Hy
         X3SCjlOULk8p7cnwqdg+kb7AhfBWPYoeRZvWjBe4JG30Z/NiTf9bbaQXJ0ghKGrvD5rx
         uyi09Hre3Fu1xGlw7raWzZOLuFrp0sYFlsMjDCtpxpG0M8Bs2thJEQiqzq9n0ZjTA3qq
         Zw2cNem53I2K7gfvsFL7VhdKXlOD5IS+npJdkOLMe7rdltv5b2zRFQq1tTdogcim9S2X
         8+6g==
X-Gm-Message-State: AOAM531fpqxidBwW5Bkn2mwhWGZdtAeNMUS+IcuCY/ocjGtnqvoAHcfc
	uTfHETNJJwo9zKl/B2zoW7s=
X-Google-Smtp-Source: ABdhPJz6hCafmdVwRHr5FT1IfA5PNIRRUe/UZySkgJy9Staq3Cm3fL1eIAvotsMSrdVzDvLAfcKUVA==
X-Received: by 2002:a25:ae90:: with SMTP id b16mr403369ybj.128.1601278797486;
        Mon, 28 Sep 2020 00:39:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:26c9:: with SMTP id m192ls128457ybm.5.gmail; Mon, 28 Sep
 2020 00:39:57 -0700 (PDT)
X-Received: by 2002:a25:1e55:: with SMTP id e82mr422698ybe.282.1601278797000;
        Mon, 28 Sep 2020 00:39:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601278796; cv=none;
        d=google.com; s=arc-20160816;
        b=pcTReQOPHkihc2WBIOrl0BG6bkloB034/ZJ4WksV78/OCSDz3pZkrUEfT0PvYFRdXU
         nuFhgI4CjRB6NYsvdBYUgkKR//A+u+nxnjmzGdSNHLniqH0YUInRQ9Dz0aDOfq4FiTgj
         ANLo3Zk99q+XtYGJb9ubuvUjoCNV51kcGv1kVZXCQp+iYsaKBj4nqiWNSomujyLhfotj
         kSo9KAiY3g+/YYGl7BVA6UYHZz/2OynzXuGol9dIxZrM/wg++QtQCYmtk6DJ6EcpqLFo
         +IbvgvgUYMCB5zBd8WDHaQrn7J+A36372K/mfhMn9RpH46th7Wib0pyXAaOhH7TfML8+
         7Oiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=65/QhC80dxI/EeONvoNfl2d03i9E0heU5TiyQwr3NHs=;
        b=QNKfaWhs9V9xkxyWFa95T3/xHaNVQhX0qwpVejpIi8GWyXMgmqkotpXB1GbAOo23Xw
         BzYLA8F4CURje6cTn+IYMHUq87B7XbK6c8UeoccjWUuFATHbEWe4oWoSnyXjkmWkE7ae
         oMlC6s6rFlvZce3LXvwzE+GWerMtv01iM5CxaFdO8i9AUDXecR1aFvRlPSr/WbfPANot
         EHkiXr8fAw8z7+90ctPnl69n3rx2t2OEWV36MgftuBO4UMb9V1pnM6yZchXYdtd83IjP
         vnVwlqlmwYQptPvMfkWDP3pa/sSdF5WtRc7fQ6+/vIQEl7+M3RR45564jVr7Fv/33tyL
         o52Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=jHzIXKF9;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from z5.mailgun.us (z5.mailgun.us. [104.130.96.5])
        by gmr-mx.google.com with UTF8SMTPS id l203si11179ybf.0.2020.09.28.00.39.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 00:39:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) client-ip=104.130.96.5;
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5f71934be051fb32a0d08713 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 28 Sep 2020 07:39:55
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id BBCF5C433CB; Mon, 28 Sep 2020 07:39:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 010C8C433CA;
	Mon, 28 Sep 2020 07:39:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 010C8C433CA
From: Kalle Valo <kvalo@codeaurora.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,  clang-built-linux@googlegroups.com, ath11k@lists.infradead.org
Subject: Re: [linux-next:master 9378/11173] ld.lld: error: undefined symbol: ath11k_debugfs_htt_ext_stats_handler
References: <202009280207.7DOSq33F%lkp@intel.com>
Date: Mon, 28 Sep 2020 10:39:51 +0300
In-Reply-To: <202009280207.7DOSq33F%lkp@intel.com> (kernel test robot's
	message of "Mon, 28 Sep 2020 02:47:11 +0800")
Message-ID: <87imbyfiyg.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=jHzIXKF9;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

+ ath11k

kernel test robot <lkp@intel.com> writes:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   20dc779fdefc40bf7dd9736cea01704f29228fae
> commit: 568f06036ee23a003542227975f69a75ac172ba2 [9378/11173] ath11k:
> debugfs: move some function declarations to correct header files
> config: x86_64-randconfig-a003-20200927 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> 6d374cf78c8a80a0bbfc7ce9bc80b3f183f44c80)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         #
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=568f06036ee23a003542227975f69a75ac172ba2
>         git remote add linux-next
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 568f06036ee23a003542227975f69a75ac172ba2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>>> ld.lld: error: undefined symbol: ath11k_debugfs_htt_ext_stats_handler
>    >>> referenced by dp_rx.c:1662 (drivers/net/wireless/ath/ath11k/dp_rx.c:1662)
>    >>> net/wireless/ath/ath11k/dp_rx.o:(ath11k_dp_htt_htc_t2h_msg_handler)
>    >>> in archive drivers/built-in.a

This should be fixed by:

bc8befe6f950 ath11k: fix undefined reference to 'ath11k_debugfs_htt_ext_stats_handler'

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87imbyfiyg.fsf%40codeaurora.org.
