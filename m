Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEE5USBAMGQEDFT7GSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id C31DC334699
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 19:23:13 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id 42sf9374099plb.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 10:23:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615400592; cv=pass;
        d=google.com; s=arc-20160816;
        b=t9KJeOrkPQqNnKv/k9R52V8DJ3KnjDYUWWU/HKFjdgEEBvyhHiAy7LcpNp4utKe+3E
         9Rc3e83t4GAsN+WTctUnfMoJYENxJlu/XaNjKAKlnfJZoEo/MpjZM+15Ig1TZQqKoj6J
         h5jIBTN/qe3JxHviBKFW+RYevFBfjTirM/7JvuFMp7h7BMffTiIn/Wui1U8i4nK4363l
         WBGfgVLeGO6hgpSuz76mxPCXenyt3X1VZBVI6k7oXhtCFEzxqiPaGPY8S+xkRvjyAgC8
         z3Nh8q7IZBg8szdbRjgPszjlYt4AUn8VOwJLGt7z24FcZ5uxGrYGdktVkdOnaeN0lL/f
         Mzvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1qQjTBtYK+xxLrhwbmYhhMjz50A3lE40oWdzR+ldBnY=;
        b=ek9QGcJ2e9XGnZzXq3UHEMou2YEIGNccocTzswT9V06Sey92kLk1uhZpnIeCQq+Xp7
         AQc+Xj3hW4NnmiAsoOdiN6jplDbVh2Vbjo1LTnjVPyD6uRAycPmqHf9ohslFhBVL/OY8
         P/Ubcg9AVq9OH6R+pioq0VvXI0W1NkpOrPOtkznUExS8BZnkfYPuArIl/vR5nzoe7UAb
         ihuoJeNngXvseSgGaHvGJMJRh+Ls+u4hOWWJH8Nzoicv04Cu4bG63GH7adOb6Nj/KA+O
         6ur/Jrg7F8oZ7aiXT+w+ZM/GEZqquxuz0frqS3+DowXjCCFu/wkdz/v7019RWvKrGett
         M50A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AEGjpzvL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1qQjTBtYK+xxLrhwbmYhhMjz50A3lE40oWdzR+ldBnY=;
        b=NgQcJ7MnRodhOu2r4rFtGsu6GHpzoYxqt6LXV05EFLbVKoEcXwelbzoFrJdtm5/M/d
         CIQmzJr3eptAhzhclnswTfsrbkNwIGoPQg1mivSV6QO582b03S18aKLAWW6s4pAGBpSg
         i2XktqKku0qkPM5As5Dr2nJlJLDv8SvdcFHlKgL2cloYwL371tr0QvRNEtHo/vtqIIvS
         2Swqi9jl8cFnCtq21l0q/47gVO90Y5qGI7TBVGN+RuydEbjaWL8OQzFUO6P1uuAsjqeK
         /v2H+6zLNAbJ3HeTCwhmGkcz9DWVlSE7vfl/wNebidOym1c+Vk8AsOG/ppWngRPBQoaQ
         3WZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1qQjTBtYK+xxLrhwbmYhhMjz50A3lE40oWdzR+ldBnY=;
        b=m6oNsw6hE98Trlt/ObqFKJeCZm2dC0tDgMU/oNQUyj+JaC2pmg2c6GTxgIgwuDFuBo
         bS9QsOGlxeUaVdHQnWZ6b7RGzHH7RNPBBo1X3JWyABHB9KS53tIjvPCUU24QPu/1Qvkw
         bPS+L+sKwm4ZBDyc0ZgrOwgN5YNi5mUV93cwu7N/XPWDzpmIpj1YwXrNBH8LIe30VyhQ
         WC9BlgT/g/FsO/W559IOz+nqKXUaU1Q3apRrRBS0gRDmu123oa61SjKzScATLzDL4qfI
         EhbXSjMsI+YxxvdBrWJeTwZqJ8ezJvDj8lNfDIalF1D+r84rChoVRN7VZlnrI2iUQHLH
         8lJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LgWwrlTU9NGZjfzLWF7N7ddRFzFWj4qyswc/Kt4bcEC6JlfCy
	DkcleCEqydGnyihL5L0ucN8=
X-Google-Smtp-Source: ABdhPJyRxr4VtzBDivx0Vzgv/mzcQmM4cr9W6xie4OtqsGol2vmqH0elKqgPekK9HjpDpN4YmwPNTw==
X-Received: by 2002:a17:90a:2c09:: with SMTP id m9mr4928173pjd.3.1615400592243;
        Wed, 10 Mar 2021 10:23:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1b43:: with SMTP id b3ls1260365pgm.11.gmail; Wed, 10 Mar
 2021 10:23:11 -0800 (PST)
X-Received: by 2002:aa7:9a94:0:b029:1f4:ec7:fd2 with SMTP id w20-20020aa79a940000b02901f40ec70fd2mr4018449pfi.48.1615400591683;
        Wed, 10 Mar 2021 10:23:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615400591; cv=none;
        d=google.com; s=arc-20160816;
        b=MjrXmSH8Mi+tc5f1sRQiqD5LtNcDoSdXR5wlRwoLE3SigFrp26YE0Z19ySJoSqFqpE
         QNQUxrbH4O3x32Mz9NaFvNJH/qZsdIDH0zP1dgQBsfcZs9E0eb+UWkcG0CONR5nFsknE
         KaOYRYMLFeknDl2XRWO0jqENLLzKwI6+xyMuHQDSEV0gE9Kdqb2Peld2OvDg5kIXYakK
         SlZ3NnXzg9mCayfc3iHMaLsSSBHis5/I65O2Y8yItph3GkA8zcmJEqV+aEinnwlAyRQw
         zE79Tnd+WHv4CE56092Flj8WKSgDWmJR19X2AD5u6pIe6ojyldTKauS8ITpeQmxjCaG8
         7Fyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=G8XNNMXSkQttRLyo4wfoEfXb1SkiSPPXWJ72EYfCf18=;
        b=RyWcTBeufH4DDLgVI5KfQpp3uHAH93YpgZQAVqtmMf5yr9kZDrBGMgft9UO11QYqon
         XmQaTKRbkR+6qxPwKh5WzY1w7LUqKcPxxSTfsnkFGktbsjWWifJTBZkbf++XUhVloU/8
         dZPtldESI3w/KQVmM7LsbvPKSh9J95dUFRhB+vVLzlRk3cvbmnhnNOu4QZtFzbFWtMhG
         CZDMJV7fvcGz//cEFs8iVIqbkqLy9hh9SwJTRpTyP+kZtmMwFSIHqLteXwPKFtujFXRd
         8kZMn9gQcs4Z+xXrWDH+c6qRXkPus/SXqoc8Yx400Bt7y+5+N/hWYSeg3wb2OyrA/3Nb
         R/pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AEGjpzvL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i24si10437pgm.3.2021.03.10.10.23.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 10:23:11 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C19264EE2;
	Wed, 10 Mar 2021 18:23:10 +0000 (UTC)
Date: Wed, 10 Mar 2021 11:23:07 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: -Walign-mismatch in block/blk-mq.c
Message-ID: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AEGjpzvL;       spf=pass
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

Hi Jens,

There is a new clang warning added in the development branch,
-Walign-mismatch, which shows an instance in block/blk-mq.c:

block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
32-byte aligned parameter 2 of 'smp_call_function_single_async' may
result in an unaligned pointer access [-Walign-mismatch]
                smp_call_function_single_async(cpu, &rq->csd);
                                                    ^
1 warning generated.

There appears to be some history here as I can see that this member was
purposefully unaligned in commit 4ccafe032005 ("block: unalign
call_single_data in struct request"). However, I later see a change in
commit 7c3fb70f0341 ("block: rearrange a few request fields for better
cache layout") that seems somewhat related. Is it possible to get back
the alignment by rearranging the structure again? This seems to be the
only solution for the warning aside from just outright disabling it,
which would be a shame since it seems like it could be useful for
architectures that cannot handle unaligned accesses well, unless I am
missing something obvious :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210310182307.zzcbi5w5jrmveld4%40archlinux-ax161.
