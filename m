Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMHEUODAMGQEXAWHXEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CC01D3A88A9
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 20:32:17 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id m194-20020a2526cb0000b02905375d41acd7sf21192472ybm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 11:32:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623781936; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q38gneWXw+7+ZMSSFGuPvz/8WCCQ3/JTzQrNDxHIMYiLwWXkrcyrjRBsnpcbhR/fAk
         SMPvNDKK7z/brwpFibrsX6yopqLbGqZKEFkOKnNy9bsXAuWHiIHmDnxdECUFsIBEgXgS
         EC2n/ojtDDqTpm00G2bRJ98WA6yrzAs5/3/lwiHAj0chN7X4D8zp3ALkiRXDphywsn+u
         HHCbgU9WHXPdc+pXX/lj0rAMnjyEMuWwZE6+8b86sNd1W13zJz0/anYl+VkZCV8OeLdb
         EHfpUvn6e5FojYXq6a9SrHvE3aS1Ad+4/t7U6BIjErNfHNJ7LsX9tAA58l9tTLiFMg+C
         cpQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TCQeW6TSNtmF6yn5U6aDCqCVNzl/R40x1Zba8K5ctvQ=;
        b=kRTXOpAZPmbgChoSDSiX3cEixJWwatzkV/a5FsMjhw2QzNd27/W84XcA5lZFhvmUmG
         nHp2zadaOKkS+RQPoZJZjLDde051jENsHe9bPOHccGu7E+eMZ+calgkGGRqihOpMhdDF
         BfPI1ld7uVMSlZadUWe7K/UNAYv6C1XsKmNf3hbo7szKdNhfUhryCBoR71sDgFmstS8W
         faITlxkeiRVYjadXoltjGGTFlX0k60I4fUXjHv5iVNMvBvbWzOfWDP48le6kr2Z/wFhx
         dqmPq8jLEP0Bo0vs0kE8LrDPqOGcliLXZztQ/IGwp1/YShcVuw9DeMulBL1KVjAkS4sZ
         zvBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aGMJHW9B;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TCQeW6TSNtmF6yn5U6aDCqCVNzl/R40x1Zba8K5ctvQ=;
        b=NDsrgh2PrIITWQQDWtbbuloafglZzE5J7od8fM1FDT8eb7ZHcMPambV+vWBvHFZMzl
         muA2WKKCaYq6tzei/fPIR4xa9V9fLN0Rws1ehCYdDzwcgO/TL9Kci9hlQQ8IvbmDrb5M
         Tk4c/Fjhao1xeGjNyVkgjdvYcIH9EA5tploAsp619seJd/YT9W0lsdzYaqmPi1dbG4Ye
         P3+bn7JG2WlB1ukXi2qIV7BL+1tnXL7u6CTsz/HQC2+ABz6kQuuntf+UIoUJhaTnXJtF
         ve5Xy0Hj4Li6lAtx7MUtNLiE79zmGR6vNEr6XblcwucO/ZQ7B3DFyvdOuiPD8NKbCi8f
         w9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TCQeW6TSNtmF6yn5U6aDCqCVNzl/R40x1Zba8K5ctvQ=;
        b=EJ4jSclhVm/9n/VB6/Ba4f7R2x2A2cCRY0wxvGUFcL4Kct+tjfb4HqDYzI6jS28diV
         NpHUZfYzrmaRTxy+Bi2bRy0t9LE58MhSF0sWC4EXgcqmaZzoOgv58VwTczkNmtj8AH0Y
         2HndJ8/BaQGedte7Y+6dhSu9mYq7UFCRu8Co7F3JXqtGy9w9P6DpHsLKxEsTXK1t130/
         DoYa33+XhDky8o37+GdPjjDzJxg6oaioEtx3oF6+i1qRDLWQpzRnqfMlAVA2Cnon9YGS
         EMD79+wT+Ksnkx9SS7U05ZHR7CEjAWOKzRRy87qlGvNcsF7zd5pP8dmJu+awzpTib36P
         5Z1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NFebEAZbJF2ah9pldbA83ueCVXQZybOkgB1M2LburxxEP/dB0
	azSjsUQ/UHJ1oix6ZXrIwKY=
X-Google-Smtp-Source: ABdhPJxsIl0a2fn2Jm/RLdW6Dfy+mOlBrUz3BnITY/0lcVBVNGll8TDa8Z+IVav93UEWYe0JYcw9ug==
X-Received: by 2002:a25:aae2:: with SMTP id t89mr5867ybi.302.1623781936752;
        Tue, 15 Jun 2021 11:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls1054646ybr.9.gmail; Tue, 15 Jun
 2021 11:32:16 -0700 (PDT)
X-Received: by 2002:a25:8884:: with SMTP id d4mr713936ybl.410.1623781936285;
        Tue, 15 Jun 2021 11:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623781936; cv=none;
        d=google.com; s=arc-20160816;
        b=Dg+BfE/xjy98+Rn4IhA3wiejwbzulX0ry/HDT1M/kPbK4RGVKk7wo0pCL8rfqbsJuQ
         E9ShczmF1b5QxP/rtQ24fzsir0JO820Jg6aBrYgD2vmAIcy/YCoqt97VwaYI79FTZb4v
         NPSTfg70Greu425pdHPChTxZyqxrZEzB3id2GUegDuYVowV3AfgGIAOAjk49W1l5HcK7
         e33DvUCsBYaH30ZBSBcmjrZB9O9n+0qmfQWju8lc3nZbRA7hEi/AgPERt5KAwbqpLkZ/
         inZnXWPEtGWkqxjehyEa22PdB35OAy8BD/6cRPmWwOAkAsaLaAgTyS5Q9jlrGsJxdXaX
         JPBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q1IfbeomTBTEZR4ZSuJKICOzS/TjxsnlAINDGGodx20=;
        b=CwILyKdYuBUPeBA3SSSNYy8lV9RtEHHxwpQAipu+3SajAJMyqeJR0rX9E4k7l9meTe
         LXKnziThN19+zMvZ/OHPdpbZNILPSwJco8c9qIZgw2YbqMm4MG5lbIGMdnzjP+RKN97K
         nSt4tExbji/HYagW756ca46p+B2zJy/E6MQ5S5/dfShM6K0wUQ0zhHz2+a2ANlaCbF9D
         rrGgoNnf/jL9uZ0IyCd2+VeRnnh+hlXf76mP8vwRsMh4gVDn10AFT8hE0y/mGGaVdIzh
         omC9ofnHxk1ZuWtUugnvolemwPaYer0wLy1/z6gwMMfMrTwPOhC3FMDs0unC4kCi14CT
         iPdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aGMJHW9B;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s65si278238ybi.5.2021.06.15.11.32.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 11:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CB3C861185;
	Tue, 15 Jun 2021 18:32:13 +0000 (UTC)
Date: Tue, 15 Jun 2021 11:32:10 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Cc: kernel test robot <lkp@intel.com>, Hugh Dickins <hughd@google.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [linux-next:master 9529/10007] mm/hugetlb.c:1591:9: warning: no
 previous prototype for function 'hugetlb_basepage_index'
Message-ID: <YMjyKtBiQJHN8JXL@archlinux-ax161>
References: <202106152328.Mh5S48hE-lkp@intel.com>
 <YMjPXKrHfqZKDisp@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YMjPXKrHfqZKDisp@casper.infradead.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aGMJHW9B;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On Tue, Jun 15, 2021 at 05:03:40PM +0100, Matthew Wilcox wrote:
> On Tue, Jun 15, 2021 at 11:58:36PM +0800, kernel test robot wrote:
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> mm/hugetlb.c:1591:9: warning: no previous prototype for function 'hugetlb_basepage_index' [-Wmissing-prototypes]
> >    pgoff_t hugetlb_basepage_index(struct page *page)
> 
> So clang requires the prototype to still be in scope, while gcc doesn't.
> Does one of our clangers want to file a bug about that?

I see the exact same warning with GCC 11.1.0:

$ curl -LSs https://lore.kernel.org/linux-mm/202106152328.Mh5S48hE-lkp@intel.com/2-a.bin | gzip -d > .config

$ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux- W=1 olddefconfig mm/hugetlb.c
mm/hugetlb.c:1591:9: warning: no previous prototype for 'hugetlb_basepage_index' [-Wmissing-prototypes]
 1591 | pgoff_t hugetlb_basepage_index(struct page *page)
      |         ^~~~~~~~~~~~~~~~~~~~~~

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMjyKtBiQJHN8JXL%40archlinux-ax161.
