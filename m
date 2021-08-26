Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBLNLT2EQMGQEAF4KMJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 982563F88B1
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 15:22:54 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id q5-20020ac25fc5000000b003d9227d9edcsf6574lfg.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 06:22:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629984174; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKG88gEs7weEOZbagNtV1SWPxFZDe2sCQlaDGleUfKRGxcioTrIyARK2eBHvomjZhN
         2SyWt+aOQ5O/i1fVHNpSmQkA+57xaMhUWIZzVT7WHjpkBnfobvgFuBw/eKnCWyj9Ke2V
         5J3RkzthE7SQzFtDXmaY1BoDB+CcgVqsLARkffnK4G/EPLc1qIUesRVf7HOTeaBn+36h
         MajfR3uo1MGkESULjJf0ZmTufykjSjPHCvh9i8E7gH9Vah0l8rPU9CwFGLLlOFSKdflJ
         xMTbs6B9q8eKPYIbduhhb5oo6Wh3XXxQSg9EkPeAVh8EpMxzSIDpi1gbuC1NBRuPFSFZ
         IdtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mQPaiBLCDjPeaNJ/fAAjY8EH1RGTY4pDjV/aeohKhQE=;
        b=romHHt80DSaxASU3QmUYo3E26y+CfXXIsaZiBFWPLl3gQyDtFiuHJVs1AnslqM97Rw
         9yHNLwtfVEo5o6oNw0GGio+kvDA1RAX2FihAckkGzLgT9kSoPvIjrDji1iZJWHLX9jdv
         INuxxDJhoNBifzez9fq5tDKg2r1+/sULYun6vEslQrsrXCZ6hEKGmHNT19ihrA4BX0c1
         YGHt2uhdVnhnTCMPKdY47UGOOOgabu6KZeSNQUdpdH1mVPquTtwfRgoF/k0MH/sETs8d
         Nu7wjnB9i8gVsx3TB1kATZkxw36g7snqqAK5iWEuqAJW+fuGGSqDaoYA64THncrbJ6n5
         Bxxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=HFAbyj7l;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mQPaiBLCDjPeaNJ/fAAjY8EH1RGTY4pDjV/aeohKhQE=;
        b=l5GyhMRY9FLKM0W9h2le//OORkkGy9J7IEIjsfPKAzVAKfdXbVp1S/WFNP2/eoeoHJ
         iG8v+6A19cjHz6UFzyp4W4ZzCS2i0NYSOF8BAGWYLJzY8iKFa1UABYXSW+sFWlzRqWGy
         qWNvv4ghVsy5UD7EFErkZGoeZugdixWKlTz95feR97HTksYSsGbxc/j8ifM5vOmvYwaH
         uxNIgk/kZcFU7N/fyPvoVzd+SqNmZWhxrSb8rZha8AifEJ/0TTHJPIV1hhLzWEag8B9i
         dFVYWxySq+ZKoW5SHo8GU1r7Ff3ySCWBvPI9wNMpl0MnavvAkSXpU6L8MTbg7zj9OwOp
         p0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQPaiBLCDjPeaNJ/fAAjY8EH1RGTY4pDjV/aeohKhQE=;
        b=Jxhasj427VN7baFTpQZ5jztWB9AYVq8HA6VwW/0qDN7ve7CX8iDF8zUEUb2YGgCRKa
         zqXw9DBBBpwY3j/nkV5ZPDeDRG4THeZryCI5Ttyhj6gpaV3Fb/vO5e0010btS0D4unP6
         ygjfj6KgAhlbBNEDwDYa/UICMpSbfI4AqWDfdITg5eqbPnQlkBpLYhBWQ52DlC5xvLx5
         VBe0SYWbICXbD6JDVrU8PtwE4GpBirIIfJpt1sx40lFDC14Xx1tlgiyNFepeen2S5Hru
         gBg9pun8uh8hrhOVAwvdRKEnag4TjiF6AkzJDxCvBWs2DUZyTvwZaGpLY4U/94HknM7z
         zwxQ==
X-Gm-Message-State: AOAM532+K5p0hv3t5i9Wd2+EF9b1JY1K+EmsYQv7F/IOoYTuXK8jmhbN
	flBV3WTmrknFqhgpUPxpAfw=
X-Google-Smtp-Source: ABdhPJwKzO0HXnlg7IIif93c3r6XBqFxzC/FtW2+cAGezO/j0vjMk+zBUQmiuFQAJ4DMXbjTMsN0mw==
X-Received: by 2002:a2e:9cd9:: with SMTP id g25mr3057128ljj.346.1629984174046;
        Thu, 26 Aug 2021 06:22:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls102620lfi.2.gmail; Thu, 26 Aug
 2021 06:22:53 -0700 (PDT)
X-Received: by 2002:ac2:5f1b:: with SMTP id 27mr2761399lfq.79.1629984172963;
        Thu, 26 Aug 2021 06:22:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629984172; cv=none;
        d=google.com; s=arc-20160816;
        b=cWvAuSA2yxNqMsEYAj1cFCxu+a2uuibAjDXygh8tyz+GEJRg2L79u3PvC8CLHx4ref
         kgio56jqjTVv3iiJV1c9ZCEq0DQDgjRVt01uk7novuqrS++kMblVd0btPEHCppSyucES
         vlOhJUl5USVO/hjV1ero1x9Gc4M5wWeC1bb9aHvzoSea6Dr8cpszGZk/yCnPurBF5QQ+
         WJqRjcTJU/H7NSEmtU1qQ+3DtntPQO5GXBoa+r4Qh23C4yxcKqH4Qcx71h/HJEkSa4yY
         rn2Zf/aDvHU8Hl9Ybw8jOTgr0skh4QzilUyJUhMq+J6oZY9QvTS7J4N1hY5Gm6yKsFn9
         ZgKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PLvumcZvpq67fhsZlC53oM4Ky7cTiR667Yrn4EucAoA=;
        b=FJFW8eKK4+PhV4uSdvGgFldgmJUZkmEJktERUgnA5ejGIBDQreoKqpGUiEZHW2tThw
         B0yJj9rU1lUUeFGJq0t44XabAS8JG7tx+b0BaiGnrKhRRmqU93qZVQmR2VegyJhlweue
         JQfq2j1c2S0TbqkYyTAEpAwBLrycnh16IRFSyMywPf8rwNIyRzlWI1/SHCNIrSupVp4t
         3Zo0h4ZbKQA28oFoJ2QURAVBlGg8gkoqNMWCgNTW1/qk4mW+oXsjcb8cukvzFPIhBlaf
         CgGJETfjQx+ckvNomcP3SMK7DKZkubMrY//8Uxz8+TjhCdQaWWjBz6JCb/RvLfsXiikU
         zp5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=HFAbyj7l;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id c12si159653lfi.11.2021.08.26.06.22.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 06:22:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 4D6F11FD59;
	Thu, 26 Aug 2021 13:22:52 +0000 (UTC)
Received: from suse.cz (unknown [10.100.224.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id BFC36A3B8D;
	Thu, 26 Aug 2021 13:22:51 +0000 (UTC)
Date: Thu, 26 Aug 2021 15:22:51 +0200
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
	kernel test robot <lkp@intel.com>,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: drivers/media/v4l2-core/v4l2-ioctl.c:303:28: warning: taking
 address of packed member 'pixelformat' of class or structure
 'v4l2_pix_format_mplane' may result in an unaligned pointer value
Message-ID: <YSeVq7nvVKgCL4HL@alley>
References: <202107150148.RpWnKapX-lkp@intel.com>
 <CAHp75Vfu1rhUV+SOq2ikFWd2G6x9j3BT6OLPhPcf8VZE5Umeqw@mail.gmail.com>
 <20210716114105.GF3@paasikivi.fi.intel.com>
 <YPF3m01nYlt3On7V@smile.fi.intel.com>
 <20210819081053.GW3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819081053.GW3@paasikivi.fi.intel.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=HFAbyj7l;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.29 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Thu 2021-08-19 11:10:53, Sakari Ailus wrote:
> On Fri, Jul 16, 2021 at 03:12:11PM +0300, Andy Shevchenko wrote:
> > On Fri, Jul 16, 2021 at 02:41:05PM +0300, Sakari Ailus wrote:
> > > On Wed, Jul 14, 2021 at 10:45:26PM +0300, Andy Shevchenko wrote:
> > > > > >> drivers/media/v4l2-core/v4l2-ioctl.c:347:37: warning: taking address of packed member 'pixelformat' of class or structure 'v4l2_sdr_format' may result in an unaligned pointer value [-Waddress-of-packed-member]
> > > > 

Is there any plan to fix this, please?


> > > > Why is it packed in the first place? Is it used on unaligned addresses
> > > > in other structures? But even so, why should it matter?
> > > 
> > > It's packed since we wanted to avoid having holes in the structs. There are
> > > other ways to do that but it's ABI dependent and is prone to human errors,
> > > too.

> > What holes can you think about in the above mention structure?
> 
> Probably not that one but it has happened in the past that the struct
> memory layout has been unintentionally different in different ABIs and that
> has not been the intention, but rather a bug.

What kind of bugs did the different ABI caused, please? Incompatibly
between 3rd party drivers that were built with different compilers?

I am not familiar with these problems. I wonder if there is a better
solution. I guess that it might be a common problem affecting most
drivers.

Anyway, the non-aligned struct members might create slower code.

> Packing has been added in newer structs to avoid that.

And this smells with cargo-cult programming. People might make all new
structures packed even when it is not really needed.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSeVq7nvVKgCL4HL%40alley.
