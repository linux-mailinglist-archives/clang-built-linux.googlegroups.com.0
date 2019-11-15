Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK5SXHXAKGQENMPCHAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AB4FD75D
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 08:52:13 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id n9sf6870977ybd.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 23:52:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573804331; cv=pass;
        d=google.com; s=arc-20160816;
        b=HQNwPt3UNqyEz7xDhViCK+VnMHO8xKXa4TX4HKVbxuoLML+vOn1mMbALbCRTd3Gll+
         Tq/aZMJhPYDTm8wWwjzZ3RUrdLXJg1/Kz6q+72VCiRcnRU5mgrTpqJsrerKe7mgv3UKk
         M8AWZWbr02pziBMsZCEy8eZ4Dopa/tAihpQf9HxElsQcGnSmfNqLuuBgpaSHXSb6evmC
         DurtgOl8ONP1DpAqmCjMpl1XilBxHi+TYjd7qasDgu6i1t60cNE5ArlxXNn4l/NycTUc
         k+4eGXbnuE80Q5McRKXVyqAxe1PEeOSDAF4uiF4NtR+WDKMXNn+1pBPMS0fGYQWDhQrN
         sPFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=NldYliyHlpZEZay4kYK6v/A5x09dUMzHA+T44CwSruk=;
        b=Gga9oBDuRRk+wkFe5lsk3mcgfvv/cxxnR8ByMmw1LX8m8Y+dsRSpQwt2Wn0cQezcJd
         6AYACcTmEO/wNzZIPsDWehuAJ/pW0ehYdo7CEgcC40mnMrEZ2E/YL1zAfZiH7U0uPF59
         ZQkck2YPgveT9yqAea20ufkMPNvJjZds8hzp7LwT1WFZpf85RwtFTwsroQL+1hUzaHZc
         YPQyRjJF+2gutZc38i0aWRI1N3jdIdeD+0cd53NPkIErUBE+xfExuncrEp1tZmD4VwkH
         nTTRN+U2IOIjgc0KYNty6oqB1GZ0TKSQs9DDOro+RJIEF0vVz9AJa6lrFyWW45YF/Ivl
         04Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mePX52TL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NldYliyHlpZEZay4kYK6v/A5x09dUMzHA+T44CwSruk=;
        b=puIaviM/srs9162593D6qqql22tx3u490M7/eypCqCfnP3bWRvXAts/rhVZaddzxge
         2LY59iQQBjlLgQA2TQvQ7sYAh6u8aC3DNE6uXra4fBAyJDsu+aZNPkduXEO5MVZNtvyw
         heuQegXq8QadK00PswiXX421enbqF+N00+gwLoXO2jlgx09O39lEuc4pBSVTC6L2jFsJ
         4x7Ofy1wiDJpcez2hfU5b4EDJFORFbbYgdGOM5t0zbnfC/i4hUVlHWTuYNjNmHO413gZ
         xgszn3dg3FL0AV3z+9k65DqZ/iOvPuqhWMxzGaL5cigNcVj9Al3uLXW8DLJEsL5sEpqh
         A+ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NldYliyHlpZEZay4kYK6v/A5x09dUMzHA+T44CwSruk=;
        b=ZouB3mHwxphXmZ2pzlWk77HfsMWpX+p7sXIFu+8KrBn32aT9x0cIJ9190yrk//hPxZ
         C+zQZVsKW88khAJ2zNp2pDXO2YAIUHWIUq+croTyzUxKcgfRTF3peAFMLh6gl3YubiJK
         GOU1PH82s7oOJGq67yHIVCAAixLcalPTyhoMozRLmGTR9R96aXBzkwpMn9AuPX6SH4Xh
         ULx/P/5+vGcKLS7/GHnERSwoXvoYfmq6a6nTN1DJRRijPohefns6yIpS/ePuUMtZLQ1F
         ntBkJNGsnRAPEFKwCTpTwG5YzGUoBPy2s7zX3emrkLOwx+mACo6cXb0Grdeg3LhkMrox
         vaow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NldYliyHlpZEZay4kYK6v/A5x09dUMzHA+T44CwSruk=;
        b=cnlQ2Vrq9S3QjL8PmNLuffTWk0K4WYmowgW891ZludNiCnRqUpUaate8nwMtuAr2Km
         iHwm7LeYqq6Z7Z6a8eZsyEtQIB7hvoUzcbyCpKVUC7nxkx4qRrqkJUc9VIkfmCY9Bup5
         JHYNQX5BZRpRGODG3/L0l0Cg057p3hY2FHOS1TArFLYqWkkj67M+dLKSJw7LFHQ4uJS6
         cpZj3rLTlhjk+n1j+j357EKPN+m/bOw32Th2KHn2oPOLQmy0R84R+r20TUH9EBs2uptJ
         WLmgWhiWWrvVBeFK6dVdDU5o8TbFpl9yltuHEbXosjggC5LySN4viyH38RR9LOL5V2Hk
         4+iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVk9w+kf8CrrBeTnof/ooTVmPBbZ4AjezC3yvCFcmgd0tK3/TcX
	IaAtNj9QZtFG5CyGLrXLZHE=
X-Google-Smtp-Source: APXvYqyKJRtuVSe7kSMTBBW0Ijptyz4iUNlNeUE5ry+J4ADdK2S68rg4bdLx9pt9BYau1TvaqH/xzw==
X-Received: by 2002:a0d:e1d6:: with SMTP id k205mr8538607ywe.196.1573804331617;
        Thu, 14 Nov 2019 23:52:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2388:: with SMTP id j130ls886536ybj.7.gmail; Thu, 14 Nov
 2019 23:52:11 -0800 (PST)
X-Received: by 2002:a25:807:: with SMTP id 7mr10708514ybi.229.1573804331103;
        Thu, 14 Nov 2019 23:52:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573804331; cv=none;
        d=google.com; s=arc-20160816;
        b=nX63HDNgUvMEfNjAYc/BmcUw9LhzA42s6vCxzx7mUl9WtXQPEoipcdnUU8riN79Sk9
         ddmKcBce5eypPpj51C0yfvVCQY34B3FDF7FM618FoEzK1d1LlfuOLw7xpBGEQSXTr1Sg
         KreD1w24umKSrr6R24eUnkWoKHHsahbx7p9+LxLL2AnZiUKe8s0NqZyQxzgXGOfr7SmT
         Wt7T1eEgylbaNapzDNOWAjIznR8Bc76Ofm2DJL89J8GEbI1upssgW+68AA+ES1koH673
         TlFfzfPhHxvuutAKyG3WnFhu3tGMqVzM8Atz/PS274GuYIYf1RY8EjybzvDnlVGJlwLQ
         txtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WcTri5Nv88eDJ2/OvYk9WUdzegag4g8YmClqINNWmgk=;
        b=e7ez3eIUg65/6W2xRFvPkQJOGi2SwgrJDu7ctt/NRzjU/xmWV+27k/KaOjfiFKE8iA
         bHPQAtJkeFWiIKlzkml4Rsl8AOtmdrhgD1ftVzE6/TNF+82fxH4PqWz5tf4IqV4XkLrW
         keNen3Vt+IqJKv1hRn9W2mSNRgatVltROw70gXpcYSOzZ0VrmYKV8TMbyjrhStYE+lwk
         ozEnwdH4KS2mBp0GzFSJ7aXoIdVvBGU/xUu2uuwlMJA8m+A4DAID0/Rd0GByo6+fbYQN
         JxOPq4oyN2IWXRbhzs7IMvMD8CTQ1opnzzRK+Ilud0qaJbA4QBtqmFExUV1dtl2ElUgC
         eNEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mePX52TL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id u3si582578ywf.4.2019.11.14.23.52.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2019 23:52:11 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id w24so6811188otk.6
        for <clang-built-linux@googlegroups.com>; Thu, 14 Nov 2019 23:52:11 -0800 (PST)
X-Received: by 2002:a9d:1b70:: with SMTP id l103mr10941350otl.154.1573804330477;
        Thu, 14 Nov 2019 23:52:10 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z2sm2705950otp.2.2019.11.14.23.52.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Nov 2019 23:52:09 -0800 (PST)
Date: Fri, 15 Nov 2019 00:52:08 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [km13park-linux-1:master 4/7]
 drivers/iommu/intel-iommu.c:3227:29: warning: variable 'first_drhd' is
 uninitialized when used here
Message-ID: <20191115075208.GA48490@ubuntu-m2-xlarge-x86>
References: <201911150813.GKR69TZp%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911150813.GKR69TZp%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mePX52TL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 15, 2019 at 08:01:15AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> TO: Kyung Min Park <kyung.min.park@intel.com>
> 
> tree:   https://github.com/km13park/linux-1.git master
> head:   ab295c14dacea474a043ba57e1764a6ffd11f581
> commit: d5ef6f395216c0250e11472921cd7fa31e035d6a [4/7] iommu/vt-d: Set minimum value when IOMMUs have inconsistencies
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project f7e9d81a8e222f3c9d4f57e0817f19bbb795e5b6)
> reproduce:
>         git checkout d5ef6f395216c0250e11472921cd7fa31e035d6a
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/iommu/intel-iommu.c:3227:29: warning: variable 'first_drhd' is uninitialized when used here [-Wuninitialized]
>            min_mamv = CAP_MAMV_MASK & first_drhd->iommu->cap;
>                                       ^~~~~~~~~~
>    drivers/iommu/intel-iommu.c:3221:35: note: initialize the variable 'first_drhd' to silence this warning
>            struct dmar_drhd_unit *first_drhd;
>                                             ^
>                                              = NULL
>    1 warning generated.

Also reported by Dan Carpenter:

https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/W6QMWJZUEUQ6272OVYAKKE5QDGESXVQG/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115075208.GA48490%40ubuntu-m2-xlarge-x86.
