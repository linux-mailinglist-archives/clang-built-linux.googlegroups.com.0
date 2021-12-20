Return-Path: <clang-built-linux+bncBDK73744WQBRB2WCQGHAMGQEROFLE2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5761047A7FE
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 11:56:43 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id 12-20020a05621420cc00b00410c7826fc6sf9316805qve.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 02:56:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639997802; cv=pass;
        d=google.com; s=arc-20160816;
        b=gP+dBFi65vCurSyEjqj8BWMgYGkBamFaH9angI7qAEmCQLOSwOHRXei0fD4QkxQ0E4
         f3P+JI8B6PX3OKgS4R1tDqXPV70Ws8cWWXucetegPP0/5WIHG9Ld3gUPMn8jJ7AprgJR
         nkynj3Sat8mIZFmaFwdysxiqyKUNuJ1gsodOq6Rw7CRSDNQMKPfeSdvbNPDkLNfMgIy/
         XHApAQvwFMUmxu2KwoIb7RwxlF3jLAk6F4Jnec/iPJWDijo6UYOkcBVVJL1Xd4T4FD9s
         dqrYV6khp265hxfl4MXByuZlLCPKxlXINGyt/hUlqUsxEI72x3TLVPMqD0rwzzcXlZw/
         UALw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vAcCdm+e01IBtF0NhNdIqC7im9MUcKweSSO5efbKj0o=;
        b=M1968Xgs2LwxGGvX2NsykrJrJMwy6XORYIz4omh77rdVbf3Wgj9sFl1mKS860i4dR6
         nKp3vutHwg+MMc8MWlybKWO6dIt1JEKhWvQXrlyn6wvIEJvfFhEwLO/TjjsLbTg/1juT
         0o9fsknhxAbkvzmigTry77kD4EjvZMq659xijVGPa4USOX/xtu1H1tE+ApbIId7Clori
         1gSeQTJkokimmKWaOGBOhd2tk2m/MJKtgKpJZ4Yu4y31OKJOnxZiPi9R94OlfYIWXj/x
         Ia3bQhJ/8ZmbIfOP+5NZZXxX5RkrGOTEkJL2BdeVTmkmyHgQf2MdCSgvlxjq+bWlESTH
         h/FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=HoCN2BIq;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=Rk5L5LcX;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vAcCdm+e01IBtF0NhNdIqC7im9MUcKweSSO5efbKj0o=;
        b=QOWqOrnSox2J4mXdRTDx0P2i3UoF0g19R74344MaTQN35hkiD8HBaw0hUpNbKFlzaz
         qz9I3KdfKYolsOjjVj4duC7xHsHtXoJn+7kdwB6qsmX8te4mgoN2sqIVUFpRKk4CvyuA
         c5DqG+/Lv7rIiPXqms8uWd6Sbw7/gNZQbSm7w7mwAuossKiVE0rjfC98E/8dWBd6ywM8
         5VqgCK06kxHtWQP49LKClVveTcNSOnjx7FWDnsIiZ5Wnx4CX6T5oq4JA0xREJQuCL47+
         UvxDTCC8Wgs2S73XTbY016UmAdeE9Dr1dysYSXLflPEjV5jKn6Bc+OstigS9/0CkG6Jg
         CwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vAcCdm+e01IBtF0NhNdIqC7im9MUcKweSSO5efbKj0o=;
        b=k98yilofyOTRZ8YXLjsIEB58j3DRCAH1BQDTYXxaW8Se1Qy0HIhjGtip4mS/Q/hBu1
         +z7fX2dmdyJdKGI4lrVEyXMNpnoouAQLOYubSoJy8KjDAw7fX+bbSaWNUVz2mAI37Pb0
         sXroOHViuONa7dezkRmedWYK9QeP8RsgiUb/+cPVfI86bh8V5S4ZRCpE64EzFfCIu2uO
         w0VbwKEp+hc3eyx+Bs0DVnN94B8QFYGTMR8yzv4SEanmTDk16frxT4cYd0kKMOmzYqwp
         3ooSWoavqs1cIKTfhIhpwuiilyaMDV84tNHDH52XUSlctsis5coYCZRxqLEx9y1lJFYg
         wLBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329hMiVN+3iu7lEp98n/0cn/fayig1ivS0xm1q7u7pPYkCfw+MO
	p43dDH06pVDT9dfEeiEkiEc=
X-Google-Smtp-Source: ABdhPJzcVlTI4HtLo8lVsDPGSFhJfbxbFJiU2AU1e8p0quQQKC9FZXnn97IKATjEIdrO8iAuwAz2XA==
X-Received: by 2002:ad4:5ca5:: with SMTP id q5mr11421593qvh.63.1639997802353;
        Mon, 20 Dec 2021 02:56:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:40cc:: with SMTP id g12ls7873899qko.4.gmail; Mon,
 20 Dec 2021 02:56:42 -0800 (PST)
X-Received: by 2002:a05:620a:2891:: with SMTP id j17mr9036082qkp.386.1639997801940;
        Mon, 20 Dec 2021 02:56:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639997801; cv=none;
        d=google.com; s=arc-20160816;
        b=j2H4kQ+oDfvSWXngivz4Tpo//dre2OGxopqYMOBlWIViGMRcnd8UUx83wp6MWAUBU6
         vpMibOZBuRbfMK3n2NYwJRGhvdD/AcNys6CGdzTrJOctufqZDNkD9ld8TGRfo022/sAM
         Zjf0eUjhe6XU3u4VCj9QYopD7E3lvFwk4K6hYcy7pZuYAUogRzdTlgq1/eLtsZP/jD5B
         /2FIWkK31Lva01JQ89/2lSbji9U+6leS2VS5VIbx7w10tu6KAtrGZY+Q5F50ThNx9A8E
         l4V4N1f5O2ryGXkVAWMJW6vj1ycKvbWatHnEBBTj0ClTKMVfA9E9LcovCcKwBPtk9Ig0
         EbJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=9AcYE0yu0KZhD7v7tPxMpIY4EGhI9m76hau90FdriAM=;
        b=sIyig+LnhnGZEOLYV5hnSCuGyN2ap1K44K+zgl1r7oG1xpAY00X1KZIPOYggTVgLrN
         T4WlJblXu+bb9ecraktdjyGQ86KiUPbQI1MyfUlR/BSQDQQTrfcw1GGuvCxOPxWxjUlU
         QLek0woEIEG89ETgovz4lX96v5nbHpHV7D2qmu02Xs1NHGhFdCCweYacHC4aBKujHbbL
         eY/7eay+WuN3U6sfKdjvzsP+WNwEVFOFR/gUbxIr2LugikQ30fmWMweF4/IGs7ezPx3S
         ePydngVRf61niBPhokk5UAaLiqPq/hpDG3vCnaaJn+7LpFHGS8wT05P0O2DxYECXAK2R
         ccTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=HoCN2BIq;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=Rk5L5LcX;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com. [66.111.4.229])
        by gmr-mx.google.com with ESMTPS id k10si1091658qko.0.2021.12.20.02.56.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 02:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) client-ip=66.111.4.229;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id 690E3580181;
	Mon, 20 Dec 2021 05:56:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 20 Dec 2021 05:56:41 -0500
X-ME-Sender: <xms:aGHAYWuAnwt8-6iZmqtmblceEtttJyfj92CG0GzMbRbyXeXkCrAcJw>
    <xme:aGHAYbfr47SkUyvDrQo9_gECgXEi4dPlw-rESlyW-o9uuP_YXlkD4WDOLpbSHemvB
    SR7V4cZ5mYieA>
X-ME-Received: <xmr:aGHAYRwf5sCTwbQTX6thYMK_S7GkRBesT01DMSOfX7fHRZsYP8H7ZXij1wGNdwzRbAMGPKusDhIbFdNItta_qjsohErXp5Lq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddtvddgvddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpefgteefff
    etvdffledtgeduudetffdutdduveefvedtueegueeggfeiteehfeetfeenucffohhmrghi
    nhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:aGHAYRPToRypfycYbanRoBLhJwYAQJO0JbIc7iP67zB2MZ6rZ7Hpfg>
    <xmx:aGHAYW-1UeAtg5aEZ2_Kxybu-Xnu-1UNAuEfKEXuiNR7CIYlmAK6Yw>
    <xmx:aGHAYZWWBvEkTnj_bDpbSQCkR1sle0t0uStglgypDBqeKTDguiB6OQ>
    <xmx:aWHAYelmdg3AwCxbYeFPmPuPhpHnqIr955Hp_d_1FQcccQb4o6PVRQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 20 Dec 2021 05:56:40 -0500 (EST)
Date: Mon, 20 Dec 2021 11:56:37 +0100
From: Greg KH <greg@kroah.com>
To: Anders Roxell <anders.roxell@linaro.org>
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com, UNGLinuxDriver@microchip.com,
	davem@davemloft.net, netdev@vger.kernel.org,
	linux-usb@vger.kernel.org, clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com, linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org, amitkarwar@gmail.com,
	nishants@marvell.com, gbhat@marvell.com, huxinming820@gmail.com,
	kvalo@codeaurora.org, linux-wireless@vger.kernel.org,
	rostedt@goodmis.org, mingo@redhat.com, dmitry.torokhov@gmail.com,
	ndesaulniers@google.com, nathan@kernel.org,
	linux-input@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andy Lavr <andy.lavr@gmail.com>
Subject: Re: [PATCH 4.19 3/6] mwifiex: Remove unnecessary braces from
 HostCmd_SET_SEQ_NO_BSS_INFO
Message-ID: <YcBhZdeTQfD0Sjtq@kroah.com>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
 <20211217144119.2538175-4-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211217144119.2538175-4-anders.roxell@linaro.org>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm2 header.b=HoCN2BIq;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=Rk5L5LcX;       spf=pass
 (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted
 sender) smtp.mailfrom=greg@kroah.com
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

On Fri, Dec 17, 2021 at 03:41:16PM +0100, Anders Roxell wrote:
> From: Nathan Chancellor <natechancellor@gmail.com>
> 
> commit 6a953dc4dbd1c7057fb765a24f37a5e953c85fb0 upstream.
> 
> A new warning in clang points out when macro expansion might result in a
> GNU C statement expression. There is an instance of this in the mwifiex
> driver:
> 
> drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: warning: '}' and
> ')' tokens terminating statement expression appear in different macro
> expansion contexts [-Wcompound-token-split-by-macro]
>         host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/marvell/mwifiex/fw.h:519:46: note: expanded from
> macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
>         (((type) & 0x000f) << 12);                  }
>                                                     ^
> 
> This does not appear to be a real issue. Removing the braces and
> replacing them with parentheses will fix the warning and not change the
> meaning of the code.
> 
> Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1146
> Reported-by: Andy Lavr <andy.lavr@gmail.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  drivers/net/wireless/marvell/mwifiex/cmdevt.c | 4 ++--
>  drivers/net/wireless/marvell/mwifiex/fw.h     | 8 ++++----
>  2 files changed, 6 insertions(+), 6 deletions(-)

Also needed in 5.4.y, right?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YcBhZdeTQfD0Sjtq%40kroah.com.
