Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB4GS23WAKGQEZVALOZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7254EC9950
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 09:55:30 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id s139sf1512342pfc.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 00:55:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570089329; cv=pass;
        d=google.com; s=arc-20160816;
        b=izo8cnijko4SHmzTwvei0zH+ZQUiM8qadUtzs+dXS6fbFDfxkz9vhoVPpDwGinFX3s
         m2ab16dqx+ygZQE9bCtXbu9KiEtqeepdhQ7RffNhxSXlMynZH8tJ8wTtNJ+HRVezgm9U
         a89ZkMD+kssEJuZfo3utr9LwrhgOcsnXpzBz+iuQbj2/JS3sSdFZSBT7tZa2l1n++b+H
         iG2S0sj9EDM0EKq2+1mo30mnMaGJLwSlgdDSpKjwoEYEucNpAdlOxO/IQgiT1np1G3rW
         Ea2OrfFwd2vCx8zYoClCVK3jyjJ7+0gwWdVBKdJolgHvONwMmVDTu4hdHWoYwvrRvB7c
         WMvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1c7G6PvjHIHqBuC157zbU0AIh2DAI/SgjTrUMUkEUtE=;
        b=jT3g8oynrh2CoKsfMNXf/CcAbgwQQJGu8I6Ap5aUi1I61fGNERPQ4a7KtWX+cVQ41V
         +VVEV6c/t39nxEmLIgiBro2DSCxTbDu6oqKGddu/lXzg9iO974oIIkDO592yUFL022XS
         EvtqwEWv3UaU0+WE6Z9cKHof8Up89jr3c9FzBDDW5sJrzA5Rs91VtSULH/6k5Lv7r6g1
         eXo4QkD/Zfwn3OZqsBpgujV0Xlqju9PejKGtGeypktQBaUC1kOH3js7eXbH/g858ghv1
         AX2L9OI6FZIZnVn0wdFtMDWMTKRW2LpAHwMTxE+QiFgf65+WBrrlLeCJn4VVwg9AXmbG
         Z3Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xCoQhDnc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1c7G6PvjHIHqBuC157zbU0AIh2DAI/SgjTrUMUkEUtE=;
        b=D6QIzF0MET1RSK/ZVEa0XZrJy6tbRpuxSERAXleZs+G1FazXSrCmTcYs/BF0Sh5pOJ
         hZE1YiNdC00Yg/LmHoY/vbR1dEMtzfC0LxeeOo9DL6Tgl6mC6oRS2f2ACvgueaPaOsLv
         iNJPxwBQ1i3SKyLJGZNfvL95NsF3/TWTBuFfJX9ukWD6yVSDm+JX4wCSXznHJLXnoDeH
         6gQS2upbIScx6sKsQEGxIlLdOG1/DcTtPlBRRfNf1OcwCRe1x44LvluXEbyZ+P8Z+Nit
         /ypbcCZkRbX2Xw8KX5mHvpe5rjuqqncHq/GD82KHMxzW8Hl5P6/7vhF6Q4iHgL/HTdqj
         DPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1c7G6PvjHIHqBuC157zbU0AIh2DAI/SgjTrUMUkEUtE=;
        b=H1Mc3I3OLw6X/0Y1hmWzmEvZm9Z64oQsTzccMfBdbKmbej0wdqDSvte+sywBghEEya
         yTCMyjElW0nDqOLmoNNYva5eVdeHywFoIlKL8joF07ep1zrjIMQyiPC5cNErT+wmrg4z
         PrWTfxf1ArQp5G2f5zVzEAQEfRt1H3wORwULUjhseI0shlVQkNxldfbQvpspoSnASdsG
         1iRneKbA3nNBkkPawowY1kY17OpUj+7evMOJPpXDqSGNjBJ2Rpv3cXdnAtO3InWgiw6U
         H1mHzb2Medi1CBx/09ApAj9Yh13WLjT29o+JSutW8MLGyriZyALWNaiIljWPcuP5t2n6
         PJIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmXpwLjRfjH9cXh4qS8L9kFvPq+aUCbuTy9oPGg15QH0vTKlZn
	6soEYNStKoJzW0q51rEJStw=
X-Google-Smtp-Source: APXvYqznG0o5p5YOIdAGkp+fB1UpK6FSJrGfiQ+3zXj/3rMYzPMfbbUoVAPcBRiizQGiy0fyIU7C0g==
X-Received: by 2002:aa7:9358:: with SMTP id 24mr9274686pfn.241.1570089328884;
        Thu, 03 Oct 2019 00:55:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a589:: with SMTP id az9ls1346915plb.12.gmail; Thu,
 03 Oct 2019 00:55:28 -0700 (PDT)
X-Received: by 2002:a17:902:b287:: with SMTP id u7mr8159869plr.72.1570089328489;
        Thu, 03 Oct 2019 00:55:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570089328; cv=none;
        d=google.com; s=arc-20160816;
        b=YEytxnKtN91dSYquRRf/0yMLoBNvpC9VeISJB8mokhUWeHlxM+qtJSIxA/OEiNAjAp
         EXLx+sc2N/rDPPUnjUbKi/SRLKLOUiqeYF0fBwom+bwFZ9CJyLQWSB6nN2lPAB7vn0qM
         JF4NkQkckZMGEhxxlNQs327tsqNLiJpbZubD0slIHf51MrpejU8rk2Sno7z1hJRQ1pIv
         9I4enxlLCKET0xsJBTzBq/91fe2k2AQsujSvwTMXaYa6NpzlA2JVlnBVk9yQ63p56i9/
         teJGgSE0PYJw96tZE2S2Niqv54KDvZNQiqlMZYxngyOgmCsnwq56+PbkT8P3uwo2QauQ
         J22w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RHJFPxtvT8tiQCsuyafxcUR0jzqz8ZEYk6I24EJimsc=;
        b=hG5IOUCZy+AVSCjlkqfmY9wJnaa37xLrqckM9vUvm8qtrWjFSwQ6bTrF3+rQpGHM9U
         gw30xK92icSOulC2ApdABI3LNr7qRDf5UkL4AR1PoRY4uxP8zeRgNuGigivSkcAcLJLk
         fhqdQ5b2ySNtoClZFKFq0LavPGa58EOLETsa6C5XXvPo6CCLiga+CQK4j0m4sjLhWYl3
         Ap7XiVDFFAHxiOF4AlhZlGRmGxhkSqngivFE2UCsyL0hiqGNv+KMWmefnK9guwUH12C4
         ntvfn4ogdMm4vh30zSiDZhQOroKS2fThHFtg1iKPzp81qoFGSIys/8bYN/8q7H2rYIRa
         T7+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xCoQhDnc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id fh7si345171pjb.0.2019.10.03.00.55.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 00:55:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A867521D71;
	Thu,  3 Oct 2019 07:55:27 +0000 (UTC)
Date: Thu, 3 Oct 2019 09:55:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org, x86@kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 4.14] x86/retpolines: Fix up backport of a9d57ef15cbe
Message-ID: <20191003075525.GB1848078@kroah.com>
References: <20190929183206.922721-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190929183206.922721-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xCoQhDnc;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Sun, Sep 29, 2019 at 11:32:06AM -0700, Nathan Chancellor wrote:
> Commit a9d57ef15cbe ("x86/retpolines: Disable switch jump tables when
> retpolines are enabled") added -fno-jump-tables to workaround a GCC issue
> while deliberately avoiding adding this flag when CONFIG_CC_IS_CLANG is
> set, which is defined by the kconfig system when CC=clang is provided.
> 
> However, this symbol was added in 4.18 in commit 469cb7376c06 ("kconfig:
> add CC_IS_CLANG and CLANG_VERSION") so it is always undefined in 4.14,
> meaning -fno-jump-tables gets added when using Clang.
> 
> Fix this up by using the equivalent $(cc-name) comparison, which matches
> what upstream did until commit 076f421da5d4 ("kbuild: replace cc-name
> test with CONFIG_CC_IS_CLANG").
> 
> Fixes: e28951100515 ("x86/retpolines: Disable switch jump tables when retpolines are enabled")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/x86/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Now queued up, thanks!

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191003075525.GB1848078%40kroah.com.
