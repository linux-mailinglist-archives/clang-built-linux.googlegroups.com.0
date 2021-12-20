Return-Path: <clang-built-linux+bncBDK73744WQBRBK6DQGHAMGQEV5N6UGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB87A47A80B
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 11:57:48 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id s8-20020a056602168800b005e96bba1363sf6817958iow.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 02:57:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639997867; cv=pass;
        d=google.com; s=arc-20160816;
        b=BL02WPH3dM3KPCiGe5eUE5pu97e/8Eo1WvipnZGQsGo5YDDINmf8OgyJUr+eUBpUUb
         MN6kxjBz5ghJ68E2s6t31jU9oDd6mI95oTAhRY2WObRJKgypM/aVIcpw9R3E2pQNVRBs
         VPy6y9ZwBUVanWzlnqGmivPex7R1NYmUqH5FybD76Za/NiqtqOzoRMxTyEALYZk7zACt
         9SCbTtN4n2Jy3CTTJRIO/gvKas/WYnpQigKpqK7082xTMGHrfk//t7jRXMOTJYx8U4Gt
         k/i7qs8xviXZvAs6D8NT/kfdm/57B1FqLxRcyxs5RWP3nfl62w7hIHmEPoxTVRo47nDX
         Xz/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zCykofvjxjdZGfr/Phqwh3fbkQsuyqblicwVBYKX2U0=;
        b=V+YO11F/+dF5kxN/Ln4/mBgMFPCPoznk2WSTuoKyC2LGxBUhWtfHrifK8YSAB02g+8
         UZlvjBvJ+XW1N+Q5EWD5rnquWTGmgF8VY1i+8nBa0oD9SsFlKe+lEkWqwELJDmaGgkoA
         FQx9AsRQ+1V6E9dtvO6GUmAMIm9TlHG9KpJP3tDdLyPl1dLMMQFsmNvwbQNHstWfZHrn
         ordl038bErWGuTIwiMhTc4c2Qg5i3YQBFU5GWLlJpf4BCtRkYi7EQ3X6/zV5yZzP7S7w
         oYihKx+8V77aest3+BxKPWLvlyxQYeuzO+xwWM3releltZaK4tyxv3Wn35AR9lwS1VtU
         86bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=nWJI7XVI;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=napt0aVx;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zCykofvjxjdZGfr/Phqwh3fbkQsuyqblicwVBYKX2U0=;
        b=lf4Gp2zQdnHw2CQX6uRBPmW3Rr4dQ4xxMZRnpqUGLE95SuucwbWcafDUmzUGH6SsvE
         gSEcG1gSK3EZWEU4y7ucuFteswFQcuszRwmt2QT3CZaxPEKIf/0ctZfZ/W4bXDQJKp5t
         ZH4Kh4RcfH+yDQz204uqv+OpMi8McfmMLMa5/t2NnvDqR6s/Ep4jYRagk4VkxEK4E6fM
         6r8qn2dgMyCKQY/obFbcr2sGRMTfRqx6bStWsn0jDR11fWFfcNAz6fN3CtkZEPgUS3be
         NOA02IWMzdz7/0RgGdvL/lgWS9UrJACikBghp/f2LEBW5C8BZztJNultRwCKDgWh+KYA
         9fNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zCykofvjxjdZGfr/Phqwh3fbkQsuyqblicwVBYKX2U0=;
        b=sujcTBToVl4dpXD0k9ax3/yZpHhjX0YT0FeFMUG9Y5djn5ywhmiRUnbPn3vzjN6SuD
         bhYu8Z5tfkKVyG3YdZ9q4T70kjR1S7lzab6EmwgguxR/24s2b+LNp4zlJ4c/ik7k1xGp
         4ifqeWDQLhmDSHoqULWRZ00yvO0hKPfdhbpk2sZU1zIICxS5kVxObkNnZwbE9ol+6xZt
         eGMv+jERrfhrzpbg/NbCiBK8JaZUIUFt/A0y11eqYNL/UnaT49ieks2FO0VTuHDyZm8X
         hFAqj34WclKUxfVDuP2qCZHIKfCpOs/kjm38oWrX5FU91veMoVN+tfQrT90AVOKGTf9K
         o2GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WstrERrkgy9Ol5vkJaX1hVJSfx1rXGPb6kRaDUXBjveS4iU63
	Bkq1N3vCthDx60vjfFUmXWY=
X-Google-Smtp-Source: ABdhPJwECCTueHJx4ZdvMIfeILEWE1Y9HFQp5qImOKWdbbccJHMsBFw1Rg1QuwYNoOE5qf6Yy1LDtQ==
X-Received: by 2002:a05:6e02:12eb:: with SMTP id l11mr67049iln.313.1639997867478;
        Mon, 20 Dec 2021 02:57:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1341:: with SMTP id i1ls1579464iov.9.gmail; Mon, 20
 Dec 2021 02:57:47 -0800 (PST)
X-Received: by 2002:a6b:7602:: with SMTP id g2mr7710347iom.37.1639997867114;
        Mon, 20 Dec 2021 02:57:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639997867; cv=none;
        d=google.com; s=arc-20160816;
        b=xjx+UtW7rJdcCxiP5yxeuTKGpRrrZ87Sz9kepcETBajd3RV3Ki+EJAINLcAECLU0Pk
         DJIhXqA/6U6WTzejKKKIeHyiwKcvQGVFsjpOJiT7B+ZOTMNsie3ZlSjMtCYPfLq+Mrhp
         t6S4dUXaIus3Kx9berbmBWDQ2PfyRmQkALDk0t/xo+vX8wtKlLFuue51gjD7IpOVNouU
         3IG8BMumBDoMY9iy3jNChTlikR6ryfWc4QkkCkl/wTZOKN7+venr4bgK09Dknu5MA8pC
         5IJy7nGPQMLLvo47ap4H+Zc5V6GvS/dJ2BF0f5E5PbQH6inLRgHNW4wtPcrXSbMz4gxA
         tYYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=KuhQPJcPGkGOv91Y6afHIx9rUdFGI8okUJ7zNSalflU=;
        b=vqpmp+2cegHtJPaTlPG6jCwFUBvcBcbf17QROvdf8yUNb6fbbbiI5x3PsEjf6bozEX
         +ku1FOvjv+l292ee2zrXSHZ+gYZ1bp7yyi8gFP3IT41m6+ugsliPRRoJZMUzQ+4gFOXc
         FRBUuaFYOYqSsMZJbZ1IbYCkhg1tI06NU6HT9o8oYLdAJ8OfBEFIZvZy+HqwHfVmCR50
         J7n09TnqTZjVMhmIXG4crVvam8+NKHgrMTTzXLVnd9RY5XyPezRV6t5lsxL5al2KSqgH
         Fsq6RQWYm9cqhRu9E285VLN0cZJ8eqbHIkRRh0x2Wc7j3lj7tIDkTTm0j2RNxalbfX7I
         5AAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=nWJI7XVI;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=napt0aVx;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com. [66.111.4.229])
        by gmr-mx.google.com with ESMTPS id 8926c6da1cb9f-2fbfb77cf3fsi509087173.2.2021.12.20.02.57.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 02:57:47 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) client-ip=66.111.4.229;
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.nyi.internal (Postfix) with ESMTP id 5BC325801A4;
	Mon, 20 Dec 2021 05:57:46 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 20 Dec 2021 05:57:46 -0500
X-ME-Sender: <xms:qmHAYVpPq8s52mpuWbreXJDrtb23RF-yaCQrDNOTyVBNknXnviJdhQ>
    <xme:qmHAYXrBKRxtpZbSzyVQGuxjpTYlboUWERJHDe569iMYfDGnJv2g_ibZx7PY1AiHQ
    DIWjdo4zOzN6A>
X-ME-Received: <xmr:qmHAYSNVc6Fif7jSLeGBcm-vBEfCuu1mCJY1iv7wlzgOw8fLBbQmSxKY8QJxL6TSWhoF7ZKE3MW0ven9VB5mWI_S7LgCxd6k>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddtvddgvddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:qmHAYQ4ewHehKtA_qm9PnK4f3ZKw-m9fpCGfcbydAgWeMPR_FPJR0Q>
    <xmx:qmHAYU4k-ayhrh6yoFw8dD033gac8474E5IarGgGOkFEQd7zjnaFSw>
    <xmx:qmHAYYglgRnaX4DE_Jrf4epwdUWpd9d1KiHoNlSiyQcb5_VOibE8Rg>
    <xmx:qmHAYehLJ56pWSu8RP6j_9YdLy3zZ9LCtTKKXvWb1QaBXmRSbIZB4Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 20 Dec 2021 05:57:45 -0500 (EST)
Date: Mon, 20 Dec 2021 11:57:44 +0100
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
	linux-input@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
	Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH 4.19 5/6] ARM: 8788/1: ftrace: remove old mcount support
Message-ID: <YcBhqJMLdwieZa8X@kroah.com>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
 <20211217144119.2538175-6-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211217144119.2538175-6-anders.roxell@linaro.org>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm2 header.b=nWJI7XVI;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=napt0aVx;       spf=pass
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

On Fri, Dec 17, 2021 at 03:41:18PM +0100, Anders Roxell wrote:
> From: Stefan Agner <stefan@agner.ch>
> 
> commit d3c61619568c88d48eccd5e74b4f84faa1440652 upstream.
> 
> Commit cafa0010cd51 ("Raise the minimum required gcc version to 4.6")
> raised the minimum GCC version to 4.6. Old mcount is only required for
> GCC versions older than 4.4.0. Hence old mcount support can be dropped
> too.
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>

Why is this needed for clang builds in 4.19? 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YcBhqJMLdwieZa8X%40kroah.com.
