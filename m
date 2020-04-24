Return-Path: <clang-built-linux+bncBCR5PSMFZYORBMVXRH2QKGQETBX7OBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D02C01B6BE0
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:23:32 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 18sf7500473pfu.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 20:23:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587698611; cv=pass;
        d=google.com; s=arc-20160816;
        b=EOqMu/HLzZeHHLQXqPYk9m/IAyltRm5HhYIUdAEU2IStK5egpJ4AFDTbRLHl0bw966
         iV6moFqOwmJkslJc20GocYI72m9KtdfhIKs0t//qmcQHX7AbfvMyXYmm3ftpn7e7bQ/E
         YL8ZMszF0WUeOJDbMGVODav/iSD/ZiIDvexVKFz5rriifkR55nK/Df6LOwei1v90cKyy
         mT0QV2qz9Sg4M07S7kKcsfndx8HBErHJw0pr5w458o0mhh9uuAhWODhzeggZ9ftlX5jD
         qnp4iA7l8BopzgFJBR83VJV/sxgZSFAEU9NQFdbe2qnUCLL6G2vCYaqFZ8xbRVi5zpzs
         4EtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=BrqMZoC77IdQJyYVymFeWbkO5FVuathWFoaE8qUhy+Y=;
        b=MbfHlOwfi1Nbydhc17PKOAU3Pe96HYX5IC7w2U6K0t1ANExdZk5HCek9jM3o3HdgDp
         hr0IEwOVyVcokN4WpxoUa3EHvDRt81TB4rJ7XIVSgW+pHxyJgTFHLd19axnI1sEM1a/2
         FS6jTYWwJpHScRUGzL6jObZuQfEssNwSyQ1wL49NiK0CoatZNokcEldK+BTQaJkzYRDY
         OcCvVAuLTDpFMS9fFxsiS8grC0c9mujyGvfourqyHBiQzQsyE79LN52YHXnptUQSK7u3
         /eLL1RNofXPpHNoNUaqb1N0p3kpHTlA9G4lLLa6taTbMdQy4eyfDjH52HKNW1wuNYLSH
         ZAPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=DMkHr9Ib;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BrqMZoC77IdQJyYVymFeWbkO5FVuathWFoaE8qUhy+Y=;
        b=XXM4hc8HzvslsDPuLs8jurevX3z+TSqQ2quHEzllIrbqePCokLaZOcKQNnT6PvyEyo
         qVfWg6hfSYJlkdsuNZlYEhqYEs7NQvvYGbWG3ZuRX5hpQGFh0tcyQpQY5QQu6Gw3e1mk
         nNxhvX7FMpvhAX1bqez6Hrw4Axs9WePeSp4FH+toMubaRRtjpst+a4Deepv4eB8bNrFz
         tERv5Ne3rgrlaSkfmwHz9r+WNWkcCxKy/JOdrSCkEO792FhJRa7DK9TGOBMHIYB9a/v3
         +elf9ibNvCC67Wwm2u3Xcirhr97sHBhaPLC2mNPwobEm69/+t4FvwdxZUZJFN8xs/5oT
         cQKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BrqMZoC77IdQJyYVymFeWbkO5FVuathWFoaE8qUhy+Y=;
        b=TSroJPYA/MoSDa2T0a086/cVb29MI3YZ9iX8XYAIrwCiRxiKJAKpjDKoL722YW8M3r
         e+yC8v0ppP9vgjUKQyTFLQ1+i9KimQNduodwfgz68bD35r5W1VKX+qIXTo6GBw/1Jhr3
         zYzu624RZiReqybRS1dio5B0pGUyCvzrozxAiqrZ49YH5Qhp9Henr+jTqwRTSZTvf4WO
         I8kyioaJW/JRiDLUlAn9WTLg9iHZ4S6flPuBVs6Kv4cpPoQScIm4bpZ35AxZrTDCXZjq
         wvRfrbIWCy4jdaPkjpcaznGogNNQvrE+XsQcgXLop8MsDf8AiurSVWzRgy4ImKM9/Qc0
         sT1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubYx1zXfBtPnz3Z3WQ69Tn6LwAFEHvktTQ+tozwFV9WbOAOVZz6
	t0/Rj84U4z4hBXlcG4RufNc=
X-Google-Smtp-Source: APiQypI28VB0sOxQTnHY3aJcOIns2r2RHOReRHsJ9AKsFGEj6jVUTFIVWwE7jZtK+CVN5onIqadEuw==
X-Received: by 2002:a63:c149:: with SMTP id p9mr6828434pgi.389.1587698610702;
        Thu, 23 Apr 2020 20:23:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c85:: with SMTP id t5ls5931679plo.9.gmail; Thu, 23
 Apr 2020 20:23:30 -0700 (PDT)
X-Received: by 2002:a92:3a91:: with SMTP id i17mr6830028ilf.88.1587698610013;
        Thu, 23 Apr 2020 20:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587698610; cv=none;
        d=google.com; s=arc-20160816;
        b=l2rZZg9Y7qxo64eiP1Tyil1AkFUAYLZJvv3LOZeCDUH+GOVouye1lGiQiXjuQi7pNS
         AUmO9ehMClKHZjvJQuU3mQ/sd9tlhiQ4HPXm1iPsDG9C7PgJZ+Z3Y2LU8KWT07utDJax
         dX01g0FpnpfEHcaLeZWg8Ye5T8GJCORqY/wCVWz70p+jYZ09UdxJ88YD1v4sbQZ6rrIn
         hjG70H2I+UPptVBsmRqHbZ+mm9652Z8PUuxRmQhHTOBOfll/lz81h9rYQOuNmfNJgNGO
         3tYCW/20JFJRZHnxenECLByb5K3TBCyuVxk8eEXWPFfHImfKIi75vrXTp2E8tmdyRnTj
         9DvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=chTbklAtW/+nE8q2us8SDBKn0YrpIbtUR3TpVNh240o=;
        b=u2HDiZHt2VotDvUXodKqnuLAnn8dtn5OxPGb9LYY1dDkE4RIuJL+T8uCtCUNyqwMBk
         wtnIuoZo3VLIWrM7rmeyDKnKnojQG5MxEGThZYOKTatGdlC3YD56dl4A/srQEM7oEa9D
         PY5WW+bgEZ2ZNrwajhI827g+CHlZ2bs4PjYMCshCJCWkd3UvJudywyTj3VQkvGoXhs3z
         pFJGDCxnOJ/ElkO/nVUS4vdOr37oa96DHtU2XN3D/VXMbpDmXRjsqd4M7wavY4SCbnFp
         RPL0WS2MbaxxY2Xe7vSVG8IxdKWfBP5QkbavKoXYrvQt8pAl0jYgh7kNOBuehg5zxP18
         48og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=DMkHr9Ib;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id v22si468323ioj.2.2020.04.23.20.23.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 20:23:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 497fdQ6pKKz9sRN;
	Fri, 24 Apr 2020 13:23:22 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linux-crypto@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] lib/mpi: Fix building for powerpc with clang
In-Reply-To: <20200423163602.GA18872@ubuntu-s3-xlarge-x86>
References: <20200413195041.24064-1-natechancellor@gmail.com> <20200414135731.GA8766@gondor.apana.org.au> <20200423163602.GA18872@ubuntu-s3-xlarge-x86>
Date: Fri, 24 Apr 2020 13:23:37 +1000
Message-ID: <87eesdh8hy.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=DMkHr9Ib;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> On Tue, Apr 14, 2020 at 11:57:31PM +1000, Herbert Xu wrote:
>> On Mon, Apr 13, 2020 at 12:50:42PM -0700, Nathan Chancellor wrote:
>> > 0day reports over and over on an powerpc randconfig with clang:
>> > 
>> > lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
>> > inline asm context requiring an l-value: remove the cast or build with
>> > -fheinous-gnu-extensions
>> > 
>> > Remove the superfluous casts, which have been done previously for x86
>> > and arm32 in commit dea632cadd12 ("lib/mpi: fix build with clang") and
>> > commit 7b7c1df2883d ("lib/mpi/longlong.h: fix building with 32-bit
>> > x86").
>> > 
>> > Reported-by: kbuild test robot <lkp@intel.com>
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/991
>> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> 
>> Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
>> -- 
>> Email: Herbert Xu <herbert@gondor.apana.org.au>
>> Home Page: http://gondor.apana.org.au/~herbert/
>> PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
>
> Might be better for you to take this instead. 0day just tripped over
> this again.

Sorry I missed the ack. Will pick it up today.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87eesdh8hy.fsf%40mpe.ellerman.id.au.
