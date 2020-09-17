Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBMOMRT5QKGQEMKSEFUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E0F26D74E
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 11:02:42 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id 12sf711475oij.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 02:02:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600333361; cv=pass;
        d=google.com; s=arc-20160816;
        b=E5dA/hHiNz9jv7BwDMfC8nGWVLn3bVzLtBXC7BUua45qk7t0D4STb538Fi/TL13rUs
         SiOgKHXqkpy1ik1BSeyTM7EuQH+kSlTonTfLGk5gV3yzRL51ReYKGDY0bdK6+lY3qFV4
         XScwp0blsrA0og57uAl+7YuOi72fM8k8FxOPLPz3M4Y3qxHEZmoi07Bkmpahpk1Rg2dE
         o7ob9xCKgEflrOpb4DEF+H1bxzNrqxW2jd5Uxg2GjQeydUVxLcRliF70a+GplQqyZiQr
         q2f/65uo0M5FFE9ZLpRwyAhH7juQPQ4LZ2X1n/RHrj0suz6oS9scLswV3XxjGmGg96rp
         c/SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JmRlGzZXfG0zlO37yA2F0CI/4Df+wfLUltMYhLGpLFM=;
        b=Ia9O8Cfrm79Jqm88uOmvXLa9xFlg6kUo8NMdZn9NusJqDo+Nzc79pbj4A9eHFfDbZf
         sAcDr1Ds3/ktO18bjhCApcJJ139vtk6KqULaZkGUGqL/DHj5IQCBSMHmtzliVg0oW5xX
         B/+G4nWxQB+3iNbzdzgRsmsCHEnwrLEJh3pReX5cgPx3LlLaXUkbehoDkKlcdDK9nZ+M
         ILxJocQ9rqILAwpc5oUWjF711bRM1ChJCJUQKIaHBSSRhB2brwotV7DefEmWmUCKDhW/
         qB63YUYzYGMZDX9pIQ7k79lgva7G7nUHirJiaFkQRL9KKVM/Q/8it6AingLrUVlXCLAa
         ZdvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M6NhvpJk;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JmRlGzZXfG0zlO37yA2F0CI/4Df+wfLUltMYhLGpLFM=;
        b=Qir1zzhB6FsB0HR5A5H1NN3jTiZWLfu5mMtWiRMdCVLNawy0mE/S4DkCjU0n8zsM45
         RY45fonBY8eXFMfNwDXWGTQYGZmgqu2Zs4y75VAm8NrZZaARKN6iqtxH6YmMEkbe1Q1q
         tpmbutNO1dfGIpL7M2YflVckFaq/luM1t6ZeVG3NJWOkSbyD0obBhXsfhk/WTrGQI3ap
         dcuJYQeNVQrsfR48L5/13m87zwkHZ+prBhqfUYcVc41cSzRIDXp+fqBHpnt6wM3JwfBB
         PjjRcBOxKigrAGRdHTIZKM9iIwvcCir92mLikd2Pf1WR+nGMCOajE5KrDYym9QxDtrxi
         YeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JmRlGzZXfG0zlO37yA2F0CI/4Df+wfLUltMYhLGpLFM=;
        b=GiMLyk/JP8x6nzLjIKqOhUtfsA4N+uBLFIHCk6yh3997fEvKe1EJJtbUrcoWDy4JUL
         3Omr10IKik92iQb5O9kJljmTGpLcKxHga/M2W4RHqhiJ2gYxEwUHnhGemncfcdxxhQQj
         aBXcrdPfREXtCgSdHXC9ILXnNjdT5Zv/29llwJIUL5HSTMRv3Afds+k6xhZvmeR2pC5m
         sYY5ld7QMjMjFaNgfKlWeLxlHmD19V7oTrrnZz4nffbh8N54LVdmdntKs9rqBLJrPrTt
         4YE+qIm494QWnE2ycTn4A4k6uvVxclJrPLR9miXzabCR4YwVGxvvRPZtieDcwyh4xxt+
         ITvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309YEKYrsMewcOMRwfxxjckd84lyz16mZs1yS83XaFZcuqVTfdc
	6Oha0Tl08EULpg7V7CLbJp8=
X-Google-Smtp-Source: ABdhPJzUdGGFzarc5nkOrk3Rt34rjTZmSxzkTzJjY+e7F0jzdVxaogak+dIg0JF+RgwRMoLteeOSdA==
X-Received: by 2002:aca:4fce:: with SMTP id d197mr5814609oib.17.1600333361543;
        Thu, 17 Sep 2020 02:02:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls303607oic.3.gmail; Thu, 17 Sep
 2020 02:02:41 -0700 (PDT)
X-Received: by 2002:a05:6808:44:: with SMTP id v4mr5810215oic.45.1600333361221;
        Thu, 17 Sep 2020 02:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600333361; cv=none;
        d=google.com; s=arc-20160816;
        b=CU5lSjMBmrBZ1kUfPM2qI0x+MV8tC+9vLtw8QzU3pPovmQ5G43rcGWz08IT8rfC/v+
         HchUJya6sCKxjmIjyM7zK8kdCBFHhSbsdr2NgKBt+3Ae+jhAPJvbSx+dwLuH0R4GsbTM
         FRacwiRZWnWrx2OuJy4PkXfehyPWuqVTC4GLW/1AcPLw3rsVF2g8+3vTnnnaKDSvlTRM
         nrmEc58zt9t3z4HviaqAWAFnTT3XIb6OcMo1F9O+1UfnrxAQg6JpEc1g1QNpojihVVw1
         TC2mWzpANPP4jfqBFJ+tVzIUVpNAvbolsJNjI0jxgGk3vsOUjW8aSf+HVQuOlc0vgMji
         pfLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2X8lsy4VMmPm25gu6YxXHfjjqupgVnzNM7ru1YqHnQ8=;
        b=ePkg0aGDgRsc75lkrZKKpua7kjpHUQdbRV+cGbvxnsyVsLgPlg9feX25+w/U3enBSX
         5jLqAXAtjBwcmdMvvN3dl8zN4IRAxOL42/h+UgmDFELfpQlPvNukd+F36rgi2etZtM/N
         XzUogTeVYXwXbkVanELUEyRrxnjdTBaEdp6/ULwVIrS4qbo2UTqBytJygj0XWF8L3ADH
         +2Ii5JF9Y/2SmJQ6vFcI3p956tozAwQ8GZPDlpHd3HVzmjDhEd3nfDyUeMKQ2baa6Rl0
         HYCxfRnsSerdjPB1JpBNc/AGKAvrPeWk3c9b+NJdLleZ94SRw1VvzeaLV3bBJAtU+qpY
         KgTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M6NhvpJk;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d11si1868286oti.2.2020.09.17.02.02.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 02:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7A75620770;
	Thu, 17 Sep 2020 09:02:38 +0000 (UTC)
Date: Thu, 17 Sep 2020 10:02:35 +0100
From: Will Deacon <will@kernel.org>
To: Mike Kravetz <mike.kravetz@oracle.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, song.bao.hua@hisilicon.com,
	akpm@linux-foundation.org, guro@fb.com,
	linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
	linuxarm@huawei.com, sfr@canb.auug.org.au, ardb@kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: arm64: mm: move dma_contiguous_reserve() to be after
 paging_init()
Message-ID: <20200917090234.GB29556@willie-the-truck>
References: <20200916085933.25220-1-song.bao.hua@hisilicon.com>
 <20200917001934.2793370-1-ndesaulniers@google.com>
 <ccfcf5a5-79d1-6339-b4b8-33b587507807@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ccfcf5a5-79d1-6339-b4b8-33b587507807@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=M6NhvpJk;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Mike,

On Wed, Sep 16, 2020 at 05:27:18PM -0700, Mike Kravetz wrote:
> On 9/16/20 5:19 PM, Nick Desaulniers wrote:
> > It looks like that change referenced may also break arm32 boots with today's
> > next?
> > 
> > The following allows me to boot, but I have no idea if it's incorrect or not.
> 
> Thanks Nick,
> 
> The referenced commit was pulled from Andrew's tree and subsequent versions
> of next.

By "pulled" do you mean removed? (potential terminology clash with git pull
is confusing me here!).

> I'm looking into other architectures as this is dependent on where in arch
> specific boot process first cma call is made.  Hopefully, there is a some
> way to do this without potentially touching a bunch of arch code.

Ok, for now I won't queue this arm64 patch, then.

Cheers,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917090234.GB29556%40willie-the-truck.
