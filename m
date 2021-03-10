Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGG2USBAMGQEORS5L5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5FE3348EB
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 21:33:29 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id v66sf5300473vsb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 12:33:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615408408; cv=pass;
        d=google.com; s=arc-20160816;
        b=C4L6lF92Vo7ivhLYpYAEApsSKq5B2DGU04g1qfLIB/ZoPnfIai00BKtvauOlD4X9Sg
         KGKq4jJwdoqoV9upVg3+IOdOlaSdiwHzXr0itomOMWyuE2fgJDP+3F19V6Q69R4RuBmQ
         r/c6szXsTyRadfsJCsF4lm2Z2aZXWvHlDT2y0IX0nb0PYON7gjzQb8LZ/+g25eg0LqxN
         7IOeYyZsMN6VMOX18K9aRjQeIz2DcyzCnBHrGZ1MddEZ9UCG+cR5qOccRcvTVZD5HGiw
         n3cz8d25/VTMdpHhzikm486draIIQKUry8HpAUkCkkCOdi039eWfCedu7cnVKTCtM50k
         afMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=t7mnRroDi27XrxAg4lTiauL7Q8c2Xq8lKk4B7V6zQI4=;
        b=y5Rle1ufyXXfD5iMf7AxlZ0OENolAwh8wFGQkZxmTieAO7/2YEuuCDLPa5Gzn5rBp8
         9UUiH9a9TveoZn+43COj9pnzXFSeJ+gmO4Is949vysnjwvn8u091fdCTmaeNp5E3Yatd
         2OjYVoObAbB7k67PGnoVQZpE34sGp5A0nxV95qQbUCCPd38wvpFGDhlUrdcUj1b4GjHZ
         D7pn+W0Sky+8mi5p1WITzadKoQ2p8MpvnCm0LdvtP8h5I/lSf/8Na4qocjpGrfmgjpAD
         uuK4dAiJc5F/Yaz4/cIHLakcMiE+xif/8QE1P6HkUyv1Gl8rOI6DAJYTUccllCTxyPBw
         Zd4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i4tUPg34;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t7mnRroDi27XrxAg4lTiauL7Q8c2Xq8lKk4B7V6zQI4=;
        b=EqZ1FKjwXxx+0e4oV5X10mY4ZV8rgUZdTl1/ZVD1gzSSIgO5JGiQDy95spB8cPt/Bi
         /O3yu3Wyrq1qpj21/ATZQ712gQe2KYcGe6enWsZTR9JLetcsHA7z9toFsvsG1kzbLuT7
         9laujQxiTLSCVZEyF2VxsMiyA3YpNYf20ZPGqcrPeIjB9d5WTYmDndHDxFBypvgv9u9q
         YMn97wb8Iz8sraLt1zsXs2Z37v6YkwNnWiH0XTqIHZ8iEFU96X6iPrzzN3s/rTcPsw1f
         sRUvSViytMOGxDwta2c+Qir2DvjOwMhmBokHGDo0HAGKP7tOsx0lC7cZgGMovuJMSzJs
         5m5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t7mnRroDi27XrxAg4lTiauL7Q8c2Xq8lKk4B7V6zQI4=;
        b=MVC2edRngKAU3onD46mvG1NPpASVD2OdS7cjl9YmI5xBXl9fhVByXyXby5ebaU8bUN
         CJEpQdBwycHJUdwc5oAJdzQ7ztzsGQ6kPm1hGpIdveTIUEbzxUlZ3B+J/QJW3N9T2zKm
         /yoaJ8I3i98hNC6NwTzzMMMeLYlAGcvCGKk3WfeFpPj3qS2e6RNedNQ2tbUc7GRWLZrq
         fuDjJp7vzTJvw5RV1no1eYtN4uDY25twV4PrXvufXw2PWSgd1YT/v/0j4ULWpNIuHoPI
         ZRZg64oDMCD86NnWy3cOXR5baVVC758+PL5tZft0ST8hcLQk0aQsJNVJVErF1HlNbVGJ
         xDKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GxzF7NF8KJbgz5Js93N6lE9sT2rGtG79v+NyL6T7uNtKPWIpD
	aIge6zPQZgrvdn7BMX7+ZU4=
X-Google-Smtp-Source: ABdhPJzjUdTcwSN+EOKpXXG+cvIin5g/fTTn5odOi3Xj8aaIc0vwqLhcXcvdwROUf1hSVIkK0P6S2w==
X-Received: by 2002:a1f:b686:: with SMTP id g128mr2896381vkf.25.1615408408307;
        Wed, 10 Mar 2021 12:33:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6147:: with SMTP id w7ls273655uan.8.gmail; Wed, 10 Mar
 2021 12:33:27 -0800 (PST)
X-Received: by 2002:ab0:30b3:: with SMTP id b19mr3350382uam.58.1615408407779;
        Wed, 10 Mar 2021 12:33:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615408407; cv=none;
        d=google.com; s=arc-20160816;
        b=v1wByXg9itf8Ew+z+fNExqBG9G8S8e3s9G3m7zz4z9A9qt+YeaPTXW8QC7coZ23FQQ
         xOx2f4h/gdPh+y5PGc6HR/otDyX+lfTfT88hEvM8BIDltvB6EbHqO1oAdzzk211rfHFG
         pb32xxn73IIPfRahJPid3L/od9PkoVW2zJqw4tBTt/AmbPPHQu31WTRKck07fCjA/3Ek
         BqtysfddRvrkH4zJdcL8XSF9tsd2rI8myge2b93Szbm4QSDDV3rVYIpchuX93whOv6eS
         wv0c4gatByY4mJpg2krFx3T2jHFDrAiwlxIlyzAuuSxCSNouByfuRJ9+HYhozLK5QUm9
         9d6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3hq85zMsBQru5JJUKox4NCtJ4X0U+SDQSqts9ZFMF5s=;
        b=lZzA9ZlrgvM47Jf8OEs51CR7i1NiwhF5RoSBO2ILKgOwrybLyZe8R3hg+v6FqCptDh
         YTPs+IKhFbT5BBDvdgNzZcgJEt6cqD0dWQmXgeD4VBYO7khcQcQlflDVnSZMWsw5Klr9
         kscU0hLO9bLPqI8MZvwUaUVLI5MmLIuglAB7xzhCL+Ng+uhzqil04wuQGjgOkTUv5485
         kCAWN0NRgvS1m18uKuUnMUzSbxQHC2oOibRrEAkgvD2K5gJiHH0ORv3AHRAoXDKk+p8R
         PpW/yTYwnjActcC8uhRkmXUNMDeUdTA55jtnwHB+uJcVoKcZkKyDwYjvuYKZPp1zF7Tp
         7qsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i4tUPg34;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p23si43171vkm.1.2021.03.10.12.33.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:33:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3714D64FB3;
	Wed, 10 Mar 2021 20:33:26 +0000 (UTC)
Date: Wed, 10 Mar 2021 13:33:23 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: -Walign-mismatch in block/blk-mq.c
Message-ID: <20210310203323.35w2q7tlnxe23ukg@Ryzen-9-3900X.localdomain>
References: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
 <99cf90ea-81c0-e110-4815-dd1f7df36cb4@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <99cf90ea-81c0-e110-4815-dd1f7df36cb4@kernel.dk>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=i4tUPg34;       spf=pass
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

On Wed, Mar 10, 2021 at 01:21:52PM -0700, Jens Axboe wrote:
> On 3/10/21 11:23 AM, Nathan Chancellor wrote:
> > Hi Jens,
> > 
> > There is a new clang warning added in the development branch,
> > -Walign-mismatch, which shows an instance in block/blk-mq.c:
> > 
> > block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
> > 32-byte aligned parameter 2 of 'smp_call_function_single_async' may
> > result in an unaligned pointer access [-Walign-mismatch]
> >                 smp_call_function_single_async(cpu, &rq->csd);
> >                                                     ^
> > 1 warning generated.
> > 
> > There appears to be some history here as I can see that this member was
> > purposefully unaligned in commit 4ccafe032005 ("block: unalign
> > call_single_data in struct request"). However, I later see a change in
> > commit 7c3fb70f0341 ("block: rearrange a few request fields for better
> > cache layout") that seems somewhat related. Is it possible to get back
> > the alignment by rearranging the structure again? This seems to be the
> > only solution for the warning aside from just outright disabling it,
> > which would be a shame since it seems like it could be useful for
> > architectures that cannot handle unaligned accesses well, unless I am
> > missing something obvious :)
> 
> It should not be hard to ensure that alignment without re-introducing
> the bloat. Is there some background on why 32-byte alignment is
> required?
> 

This alignment requirement was introduced in commit 966a967116e6 ("smp:
Avoid using two cache lines for struct call_single_data") and it looks
like there was a thread between you and Peter Zijlstra that has some
more information on this:
https://lore.kernel.org/r/a9beb452-7344-9e2d-fc80-094d8f5a0394@kernel.dk/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210310203323.35w2q7tlnxe23ukg%40Ryzen-9-3900X.localdomain.
