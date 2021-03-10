Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK7DUSBAMGQEPAE2RBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7D6334925
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 21:53:00 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id k10sf3600753uag.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 12:53:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615409580; cv=pass;
        d=google.com; s=arc-20160816;
        b=N2B2uK7WZAyX3bXQzs5UdOwf86HRSV+kOQs1DfipnlR2iTB8DTI3Cax7Y6/EQw2QvY
         nsvjblNyDbDv0gGUMpezzUC1DuC54g7ujnEM/jjqj/vWxf9aLMm8QHiWw06i23Gnob+u
         HjHTav/5VXL7oyAWuKHW2aF0lZT8+lyqq2QNSXZqhTevYU5+Ac8R/eS8ewF8jEshU4Sk
         BLQ4utU0Ab9yqi6CuGJ0luJghXHJ3qXhnRUl78c2AHcAr9KMl3ecsJ+WK7dhyH7tEiRq
         Frx4QeXyC7qmoJV9VW16FPXiwvDTkgzeKpEOlXjYbogM75sr4o4lrhQdPHvcBaaxGKdq
         uwwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yMnfFdnIT9i30/KXlts6D7zjI2hq6LGG4V26RhufG50=;
        b=D4F6amNTS9Ik9pQIHPdEqfXmYb8rVDIGxlCK+8pSPIPRbpmpwJUWrKAjkez3B/+ICG
         gLEzmbsffntOYq8RMtJC93A2Nt4JG7esUv5kmvKiUqwuCppnTlaBMWD6Xj4dcGnl7dB9
         ZuJJWxwHNDLcZlhqgw58RcYRmcSPWee9s+b8KqIvULujOt/K8eTkP4NkeDnjkWfeQe0X
         jFM7IMZWilyl5PtVHxGizDrTEjPnBKjd31l8gfxf3QqIh6gy9RA64I/aQ/T7JTCPab6t
         cUJ1BFAr4dv6GDtDSR3Ah1mRfi/ZD4En+FNi2NPQyWv/4rbKeChXu4GkRS5AtCEtri6N
         Q8oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FrXzjSJq;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yMnfFdnIT9i30/KXlts6D7zjI2hq6LGG4V26RhufG50=;
        b=cSQTiDly2UZT2bCEtDELJQmr84hN9qudSQIufrsMMXvgZ8NCgAxiAZ66tuqU9D6bdL
         m0b0TR0cetwWk1C/XWVirdlvUM6+uoV2Y7nS4cBpqiCZZi4Po3IJ6XoKiXkYVcyMKqjs
         o7hWvJ8UmL+zKdrjoIT+T+p/2NVNPyzimqrEP5+m6F/oKwaPliij0Cul+UwOwLoz7VQA
         XXg+CMEeX07vHMq1BB+oqjuQKAmsRvhjGZu8UN7Gdo9GPRe7wtI0/ULaJPVcbRgT+TVJ
         QGwnS/a285DMmyM8tlV8O4O29ocEGPIBoDCHM2G4s8QdVPsAzuXXEOdEkhwyu/K988kp
         vTWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yMnfFdnIT9i30/KXlts6D7zjI2hq6LGG4V26RhufG50=;
        b=lc33ZWo4u+5gSvPaySQVuP/oTtIC66dukCtSGWqRr/kDqt5wLan98J0eYc+9UuXsp0
         zQMAH6NQTa6Kyy+m4V15fpryX69zGt4T17TnNMfSX7GN+GQADXY4hHPGQhJkPKyhL1sn
         9necBtmcE3Sz+DGb7Luri+fo2uDP0y0IJ5C9qqplFisnzsiK+2l0ha40yZW+v43CyLj5
         f8i80Pa/0BBxSPzIeX3N4/Y6sGcsf4QCKblx/T15XI3v0bHnXw90NsXd10fBd38+MtOG
         cbNa3JLbLm9UOfIikowHVibu3kpfaPxt+8ixcvDyhD9wyU+nDrwo/r6GEPebQ5RqNtV5
         n1ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533daS8gKowbWXODoQl5WQ7P/rj74q5o9hAhgwqAMMELpjV26oPl
	G7aobValyeZfrhMgLPiZQOU=
X-Google-Smtp-Source: ABdhPJznndLKaXk2cS0emHawlkeD9SJdmo2GBu+7NUChuUhxQZ9LO5heKr8l5C0PQcx6CytA/tBAig==
X-Received: by 2002:a05:6102:30a3:: with SMTP id y3mr3340426vsd.16.1615409579943;
        Wed, 10 Mar 2021 12:52:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:21c4:: with SMTP id r4ls439611vsg.5.gmail; Wed, 10
 Mar 2021 12:52:59 -0800 (PST)
X-Received: by 2002:a67:a20c:: with SMTP id l12mr3203148vse.57.1615409579174;
        Wed, 10 Mar 2021 12:52:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615409579; cv=none;
        d=google.com; s=arc-20160816;
        b=xeZejrtqe07pKZOEjkpTXjqboQ/mFaql8NWrLANPwMTeAFaGQuklEICk8HAItYVCll
         C3S4hmgSyS2V/M6ck2EfxEvJKUpqTPFi75Vj6S0SMFaNd2IqD+2qlMeJu7+Qb2E48yna
         vA11Fx8cEqNNfLm9rvwxN9vrlLul/wbgsTT0aSiFgsBRrGdjARtbWO8t6B0KroEP+pJp
         1ghfAZoLAVezXEL7PIRoP17qc9u798pmG4Irw0WUWHzzZs/4cuIMwGR1+V6N8sqPo5ZF
         CkR8nESVTMJxGS5Nm68gNwT6sfAotsID6svKFCMncH/FnThMPAQVeEvMFe4em1bnLXxq
         bsaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QEwX3SreoWonMEo9mAf30gfWGbOzQmHhw7//Sz9ytg8=;
        b=chcHXenCVaBLovwEgcu8ViiojzHbujCDIPaNwj6ufF5JaX8KRGH08jSaomeLqvEgnr
         CRNPOvHsi4pXE8aACi7Obt5jXu1bFaAIh/xTWIWkpBNHyK7vSYa01hPh5ALALQqEJkzm
         sMtHxszZzC01EofMF492ED7XlQ4Hvep/hI1LhIpjiXdjVqb6R5tAeQ1YIPUSzKec10jk
         LQJ9Y/lnEP8qadLNjPj/WvO1/1wCB1h59T1DH6QrGPV1Wxa2bbzV0qdRP1l6DsEnfFaw
         Cc870GK9Su1JiXObmKeV1g/PZqbFZQ4229TWEfAm1PHeeYARA+SytipiVNsUD/BzE30Q
         fnSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FrXzjSJq;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n3si43685uad.0.2021.03.10.12.52.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:52:58 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E7B964FB3;
	Wed, 10 Mar 2021 20:52:55 +0000 (UTC)
Date: Wed, 10 Mar 2021 13:52:50 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: -Walign-mismatch in block/blk-mq.c
Message-ID: <20210310205250.hpe4wcgn4yh3rjqz@archlinux-ax161>
References: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
 <99cf90ea-81c0-e110-4815-dd1f7df36cb4@kernel.dk>
 <20210310203323.35w2q7tlnxe23ukg@Ryzen-9-3900X.localdomain>
 <e43dba61-8c74-757d-862d-99d23559cf50@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e43dba61-8c74-757d-862d-99d23559cf50@kernel.dk>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FrXzjSJq;       spf=pass
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

On Wed, Mar 10, 2021 at 01:40:25PM -0700, Jens Axboe wrote:
> On 3/10/21 1:33 PM, Nathan Chancellor wrote:
> > On Wed, Mar 10, 2021 at 01:21:52PM -0700, Jens Axboe wrote:
> >> On 3/10/21 11:23 AM, Nathan Chancellor wrote:
> >>> Hi Jens,
> >>>
> >>> There is a new clang warning added in the development branch,
> >>> -Walign-mismatch, which shows an instance in block/blk-mq.c:
> >>>
> >>> block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
> >>> 32-byte aligned parameter 2 of 'smp_call_function_single_async' may
> >>> result in an unaligned pointer access [-Walign-mismatch]
> >>>                 smp_call_function_single_async(cpu, &rq->csd);
> >>>                                                     ^
> >>> 1 warning generated.
> >>>
> >>> There appears to be some history here as I can see that this member was
> >>> purposefully unaligned in commit 4ccafe032005 ("block: unalign
> >>> call_single_data in struct request"). However, I later see a change in
> >>> commit 7c3fb70f0341 ("block: rearrange a few request fields for better
> >>> cache layout") that seems somewhat related. Is it possible to get back
> >>> the alignment by rearranging the structure again? This seems to be the
> >>> only solution for the warning aside from just outright disabling it,
> >>> which would be a shame since it seems like it could be useful for
> >>> architectures that cannot handle unaligned accesses well, unless I am
> >>> missing something obvious :)
> >>
> >> It should not be hard to ensure that alignment without re-introducing
> >> the bloat. Is there some background on why 32-byte alignment is
> >> required?
> >>
> > 
> > This alignment requirement was introduced in commit 966a967116e6 ("smp:
> > Avoid using two cache lines for struct call_single_data") and it looks
> > like there was a thread between you and Peter Zijlstra that has some
> > more information on this:
> > https://lore.kernel.org/r/a9beb452-7344-9e2d-fc80-094d8f5a0394@kernel.dk/
> 
> Ah now I remember - so it's not that it _needs_ to be 32-byte aligned,
> it's just a handy way to ensure that it doesn't straddle two cachelines.
> In fact, there's no real alignment concern, outside of performance
> reasons we don't want it touching two cachelines.
> 
> So... what exactly is your concern? Just silencing that warning? Because

Yes, dealing with the warning in some way is my only motivation. My
apologies, I should have led with that. I had assumed that this would
potentially be an issue due to the warning's text and that rearranging
the structure might allow the alignment to be added back but if there is
not actually a problem, then the warning should be silenced in some way.

I am not sure if there is a preferred way to silence it (CFLAGS_... or
some of the __diag() infrastructure in include/linux/compiler_types.h).

> there doesn't seem to be an issue with just having it wherever in struct
> request.
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210310205250.hpe4wcgn4yh3rjqz%40archlinux-ax161.
