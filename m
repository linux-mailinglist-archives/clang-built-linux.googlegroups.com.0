Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBV5PUWBAMGQEP4P7XLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 315BF334CA3
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 00:35:53 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id p18sf5311993pjo.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 15:35:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615419352; cv=pass;
        d=google.com; s=arc-20160816;
        b=Phf2PfByPzvwsBL3HR1l4xez3hpfBNWC+qtUHJ8DbVDZyIcxBrE7a1mp6MQ0V6YH0M
         TVNkkRJywxRSnFY8H5ZehHdnrMC14SsSEw4Lrc41naH9Gi0UPfA5dTqBgIUI/Ge64PYU
         W1l+qwBegxYFeqdjIm7f27bobiiQykUCUkBUg0YKKKUiudeTu4U+w/aartL07v+y25OJ
         h9REicnQZIEU70S0HG6ExMMMN6io03iZGeQqDuni98ZeBjsvmrZDxzM8ECw98htsXRfl
         TqqQ7jGhIT1HUaOlWZr1tHnBV4qFMTDllz93sf3JYWzPJ3x2+y6AMh7V6W5Glz44U3hp
         7O9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7Q70UlOnRreEnHzE6k7TpWBprtPkzLPO0ony/wC7KoM=;
        b=urcf3nM7R2xLIoVddaO6LJ+K66F2Uwi4l+ILW4whq28WI90H3GhnlLsjapwWqNUZsx
         x8J9LaEYloTdLFMTZZgRxjNinb3J+lSXMlFyvAnpUoynGXicmklRHovgAqKr7qb2Yu09
         oJKCixYTgH/mCUeu59aThMFKAnfHtIlid41lRhrWb+KW/wxgs6irsH5lZxoHVexSHtTM
         uMnx/XOaUcdRusY5X9l0J54mr3tFvk3cr1WCChph1PUqmT7/Cur94btaXssG6UHXrY+F
         I+SliMBsZpfZv4OudRSsgUjqauyfcbh8rmIVA9SY584Ka4ppW3p594joM2t4m7u51u/j
         z2ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lS9iRF1+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Q70UlOnRreEnHzE6k7TpWBprtPkzLPO0ony/wC7KoM=;
        b=SxK01OIlIbkBU21sxsSFOr1PbTOddNbILsAZaDEYphWCfnUlUaJqIqjBk3Soay3cG1
         +uWfocA0XP6mt0EkJYAucTMs530mkH+zM9+I4ScL88K5nOOICy4TrKhit1LmZXiN7gkr
         vvIBenhl57EQaNY77wyAu1f1aBr+hziPMXaciKV1hoxOT10suKfT6ywrGHuMLYYi5BK1
         BhJ74LIV5dEDKU6stEHdYvGgCXadOrqbz/PVRWKNz2k0eDZ7yY/b7WjtCVF/8xh/klok
         Hs1sDf1o2DHdbqqatMrDV5XWDQzojEpNX2eCyQbRHyKTDXB2RIvQiaHKBcmNqWjX7ste
         QG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7Q70UlOnRreEnHzE6k7TpWBprtPkzLPO0ony/wC7KoM=;
        b=NfYJq1LUCemgOXybH9LIRnVIszWZHhiLVCScSpv4Qi9GjlqOJBAYdqsmsVxwUWfVXf
         xae5PUWaiIs7Wq7OdMiVVBOV+VrhGxM5nd7jyLXbbStOZlZ7POj9DjHxCJnWuATtksoH
         I6FnPt9ddCosqf9vcw1QIIQm6VHalLljO00oqqQFjg86lwAc7HkWPGyMALdCvDH7d+pM
         ivdiTVc2Ca4SfeUFJ0tnwAQ94Mzpb+pCdpDxXvUEOvghRQewRm2bFfkgTjUBlOTx4Odq
         iGeyF9ppN9wge8eD70DQsmkDCDp0tk4BphRIXeOoT2FYFxju+HFmxRaHiWsIuInvQDGH
         a7lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RGqHi4wEh+O0cGe90Cj8UBohQ/XWpt1cXRJuSkwCyi6RQU1cJ
	xIbHijHlKj3YyXusQAgSmMA=
X-Google-Smtp-Source: ABdhPJwNGap7+hQTEdp2O2//vSDXV2t3bzbct0hQDRjZw/a3xAZoZBZuwNvEyQ7JiVB8ANFqJTWMHQ==
X-Received: by 2002:a63:63c5:: with SMTP id x188mr4777295pgb.448.1615419351850;
        Wed, 10 Mar 2021 15:35:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls1524690pgh.4.gmail; Wed, 10 Mar
 2021 15:35:51 -0800 (PST)
X-Received: by 2002:aa7:9521:0:b029:1f1:b27f:1a43 with SMTP id c1-20020aa795210000b02901f1b27f1a43mr4951690pfp.4.1615419351288;
        Wed, 10 Mar 2021 15:35:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615419351; cv=none;
        d=google.com; s=arc-20160816;
        b=kh2XxO/MwQRsr9TF/hzfPHZp00KMprMwxKUe+SqVZtgfkX/7FGm6makj/PQszaNIk2
         hLvONm44SVy1zL3LGOvUAOIhhFoQ7DlmEy8qHflYwHeQB9IcacClRMPc5ELPOhoMsISk
         d+FnAKzGyBm+YxdBHXS2rRjSA5gGKlxYsBpRHd8V+uzMloiLXiWAuz5ltCYTNsA2oQcZ
         LJovGwmYqlhiYwkqCeeB+KnKUrqQgYT+yU5aMJvAQYV32PS11j+gX9dK4ZaBKWmjI6ZD
         AzNbBA4obz9haWTjuOCces2epu/f4lMgkMgJXGl7qHX2Xt9xPMsErgtb+zeHDB0zoeX7
         BOhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JfrMo+Y8RpWKATtioxhA2/6Y8fC2GlamLVm9QuioTaI=;
        b=OUGgghFP4bGCWaLfBhUkTVqH2v16VGujRF21TLI7+8wLS/LWeNkhqJOeqs4GhIAFee
         4vWokoeG7rBdADFR70CdeljvXDeKuFKDl1CSVvrIk7Txs3nmV9iwbPfLB+1bUaDeqGAU
         iC89G+RKLNp668Y0SNOtM16S3fNWXUZWYaAIFhjdW1Qe2pI5o5zLb6DwKtlx8i/6YM+i
         IjsqZbkeUfRbUJuFBauC3JXmogdNCjbWGvLTqmXvomy05er9zWdbEGvYuWOoSnSxmJDc
         07SyFpuDLbR9zwL1jlKx7kLvJMtUDa8487P6h7/8NLSzMpLwmvr1CNj7MSx4MA38WRVL
         3p5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lS9iRF1+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e8si44914pgl.0.2021.03.10.15.35.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 15:35:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CFFFF64E25;
	Wed, 10 Mar 2021 23:35:50 +0000 (UTC)
Date: Wed, 10 Mar 2021 18:35:50 -0500
From: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: commit <sha> upstream. vs git cherry-pick -x
Message-ID: <YElX1tunCDhCtz8v@sashalap>
References: <CAKwvOdmAEKQmi-Hy4Gi33t4nb3mCuKUd_qmbEdwrkRwezAWpiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdmAEKQmi-Hy4Gi33t4nb3mCuKUd_qmbEdwrkRwezAWpiA@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lS9iRF1+;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

On Wed, Mar 10, 2021 at 02:37:03PM -0800, Nick Desaulniers wrote:
>Hello stable maintainers,
>While working on some backports I'm about to send hopefully today or
>tomorrow, I was curious why the convention seems to be for folks to
>use "commit <sha> upstream." in commit messages?  I know that's what's
>in https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html#option-3,
>but I was curious whether the format from `git cherry-pick -xs <sha>`
>is not acceptable? I assume there's context as to why not?  It is nice
>to have that info uniformly near the top, but I find myself having to
>cherry-pick then amend a lot.  Or is there an option in git to
>automate the stable kernel's preferred style?

AFAIK it's just due to historical reasons. Both the stable tree and git
added this "feature" at about the same time, each doing it slightly
differently.

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YElX1tunCDhCtz8v%40sashalap.
