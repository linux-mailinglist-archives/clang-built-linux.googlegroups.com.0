Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXWLXSBAMGQE7T2JGWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4150E33AE6E
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 10:16:21 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id z11sf3361243pfe.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 02:16:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615799774; cv=pass;
        d=google.com; s=arc-20160816;
        b=09230QWBlm84J2C3mJT9t9m3oUH/zPLTAULJtTf5Azvhki/n9LxUi5YX75ncC8HF8R
         2sOl/kIFnVKIJ+TF0HgyOui1n/R/HBFiOfLRLZbOk+Bd2VQaTV+0oocXsW6trosaBevJ
         mcM2JeinPMca2xuZ/RaU7fDyGnqnhiXCqlbXBxTOk8gGdT3Md8gxPAbBEDx7WZtYYNWM
         GckpaxDPgigvAV/6yxIKg2HO/woP1O1lPjfbK1ntDL2gClH//PJvnF+QLczN0+0WNbkO
         50WGBtygEGcHSNgf67bYGfyOVqZu1uQGqneRqITwWzrfqxUjoOLpqnX+BL4Zzxyo4/1v
         wZsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4U/N+1ccmcEedG4Fhk8pT40r2BD4CycksXnb2tnymKQ=;
        b=bnsQqAgWjdH5uwir15sBNhc8W8ZDoR8cJzYA6jCyphLqZ85VhMovY/CeGtn/yzxA6n
         fzG7rFki9Igdzwc1/lBhS/aa1RNd7raoSW7uOQ36Ih19dd5dD8DVmD7yWZIXP0/NT5eq
         k1DtR/DRapcn7KWzBoRE0oPaOQll3t0sQwClbTtHMOW7MX92WzLI2ol0n2O1TX6RR8IT
         sU16sGhuYapYIJYmhSIulinHyB3d3P7BfDorCqlVaz3G01xnTOY6UpPvMTkmrRp9pCEl
         kH62684LmZxUjOn9SKvlJJpa5pO+RqYlDn2gwX/RObbF/1LthWzPh9nSGWUnzXMBXFjF
         cKPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=2iQbIvDC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4U/N+1ccmcEedG4Fhk8pT40r2BD4CycksXnb2tnymKQ=;
        b=KS1CRTeGKs5kCGaSCQDuGbopvWS51TjQJXenoBvHwWzb2pIoWJV3yP+H+VEBETvI5U
         4zMl9w+wTJmTOVdV6QDhMtHyg+8WoOQkc35MT0f4bAuIYvRgaocPX/BwzreS+F0+dctB
         n9Zn82ARZxFHduwPKpXTfeShouEBpnYGiPS2zvb6g+JqWmR9xcT85CrgqXC6duTFYLqC
         /l7PyLM794xeRVAiKeLbMG7ex+9Fc30I5vfybs1Y5Oa0W4gYewHkLbBpLOkWNk8x8eqH
         7oIvOEkwKMEKVpu7u+9DfsrsaPKiQXicNpJwp4OcWqBJwU4s0X69ZoyOvsncPoOXJmhk
         lGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4U/N+1ccmcEedG4Fhk8pT40r2BD4CycksXnb2tnymKQ=;
        b=THm/Y3Fd1RcnR8fSnz29KIawqjXyDoc9oV9eSwaG7nnC6g4XEB+pYwg1VGPaCuBwb5
         +Y12jWGig0fHmZTXzTVFkydmgJoaKD3voA9i28/E6IFuir6/ZZaAhNtW7Aajb9Vocy5r
         052M+FjVJGucJqelacKCLY5uyg0UqAyBjJ9LWkq6TS5sLaYnD3KB+sAp9qVy+hk7yWAU
         aAGEdm+CrBAkIf3GZOdbQXjLMgc8RXN116Kealauyhhvz7A2RXtls/CV6UCaVIAWW3Fi
         2Bq1P6Uvfls8muyOoFglnfRRfYJycDAyi8ECpPcC3wWBkr5P2HnXn5f9A3F1wCvXqZOD
         MyBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53298s9mQhJYc4pCqUwg/sG0Plgyi/Tn2HXkcbIuOmtjyVwRJUFd
	Ipj7+wrtDAEbhbxJ7JRQt4g=
X-Google-Smtp-Source: ABdhPJx/lG8wYIjkcuKP17EVso4BIOUmVJ9+hGBxDGJzec9RtdAocZhKDpnNXHrN6jO3XOpvzZhNWw==
X-Received: by 2002:a17:90b:1090:: with SMTP id gj16mr11705277pjb.57.1615799774620;
        Mon, 15 Mar 2021 02:16:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8052:: with SMTP id y18ls419155pfm.3.gmail; Mon, 15 Mar
 2021 02:16:14 -0700 (PDT)
X-Received: by 2002:a63:5f89:: with SMTP id t131mr15728609pgb.271.1615799774058;
        Mon, 15 Mar 2021 02:16:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615799774; cv=none;
        d=google.com; s=arc-20160816;
        b=JUA2XlFBWQM1cQjG2Ca1A4gPLoSQCrmEQRG1A5x8zcS7/f6rHP+lWkpMi9edYvBGpy
         m9CQ5Qw7zfQDNJ1DcGYj6XNBCqa+dzINjifmJ9GJJItgJBbtnhJHPMB1VbbP9Mr+1Pvp
         6d0f50C5VsPPa90kil3rLpvyz6fkXq5uL90QUhcwo+8KtbRQFmw30N5EWVztnsZ8ffSj
         Ucy8dl8fzhiECbJAxtccpgeS5SeATh/euAq+8IqTVbWE1eIiL7eDTSjPB6ibaF9bEe44
         xVmT9J/U8l9Wf0JjyRWKO68zney6B1sgNd021zvdv9xVjQ5tuhhNIk7zmABkyOA17eYY
         fMXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/mnXuVblOiZfTi9sEura73ocyVGajL8fpMfi0igILPo=;
        b=vc+DLn9KNBlphcvSRZIo53a8bnGMfL7JJs75bpfy0u9fJjU9mDKyRc71ZeJN1Pctta
         zogKxXyhhWfNxDeFko6FYsRNuqfGu7MegBg4I6UV7eujNUqndN/o3VeFyAOoD/WHeyyN
         eXsWAfMvuv2fV4udYnri0SNfdJG8MN1renfztl/EPrf2wU2WjAoLFxrtF9vxKLKavQzT
         K3IBUSdTq/wAWt1B3yrhxvwaz3Iuuq2KguDMlY+Wzg9l6B8tGD5zn1mFHXCyAWpZHOwc
         vHXyIOvQMLelE4ln6onKsN8kXUXVP8b75G+AZRZ3pavLVevsX6gvAhdXpg+qBRChvCtO
         kcnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=2iQbIvDC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id nl15si665172pjb.2.2021.03.15.02.16.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 02:16:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EDB1A60295;
	Mon, 15 Mar 2021 09:16:12 +0000 (UTC)
Date: Mon, 15 Mar 2021 10:16:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
Message-ID: <YE8l2qhycaGPYdNn@kroah.com>
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com>
 <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap>
 <YE8kIbyWKSojC1SV@kroah.com>
 <YE8k/2WTPFGwMpHk@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YE8k/2WTPFGwMpHk@kroah.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=2iQbIvDC;       spf=pass
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

On Mon, Mar 15, 2021 at 10:12:31AM +0100, Greg KH wrote:
> On Mon, Mar 15, 2021 at 10:08:49AM +0100, Greg KH wrote:
> > On Fri, Mar 12, 2021 at 11:07:39PM -0500, Sasha Levin wrote:
> > > On Fri, Mar 12, 2021 at 09:28:56AM -0800, Nick Desaulniers wrote:
> > > > My mistake, meant to lop those last two commits off of 4.19.y, they
> > > > were the ones I referred to earlier working their way through the ARM
> > > > maintainers tree.  Regenerated the series' (rather than edit the patch
> > > > files) additionally with --base=auto. Re-attached.
> > > 
> > > Queued up, thanks!
> > 
> > This series seems to cause build breakages in a lot of places, so I'm
> > going to drop the whole set of them now:
> > 	https://lore.kernel.org/r/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net
> > and:
> > 	https://lore.kernel.org/r/066efc42-0788-8668-2ff5-d431e77068b5@roeck-us.net
> > 
> > Nick, if you want these merged, can you fix up the errors and resend?
> > 
> > Perhaps you might want to run these through the tuxbuild tool before
> > sending?  You should have access to it...
> 
> Oops, wait, they are fine for 5.10.y, just 4.19 and 5.4 are broken, will
> go drop those patches only.

Also, these are a lot of churn for 5.4 and 4.19, I'm not convinced it's
really needed there.  Why again is this required?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YE8l2qhycaGPYdNn%40kroah.com.
