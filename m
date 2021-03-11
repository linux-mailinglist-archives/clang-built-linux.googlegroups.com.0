Return-Path: <clang-built-linux+bncBC27HSOJ44LBBPN4VCBAMGQEFE6FHXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id A871B337438
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 14:42:21 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id c7sf4066326wml.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 05:42:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615470141; cv=pass;
        d=google.com; s=arc-20160816;
        b=r+PeX5kbatibVm9vrboq0yGuzotDhCRJze0G15tszU9MdqIg90IRHoLtjmYt1ScSa1
         HWGnd4rjDQrrF/erdyi2CU5jzuzFLuAB9Bua98vXTAlpPG/r2S6pySyvcsbsA6m86PDu
         /Twe7HGQ3TxVsZ2t0N1RpZ32teGUamf8mHpXApWL0WkoqVFV8WrLmyhkDlBSXkB4cmlD
         NNUOJQ+7R8U46YYCvA4Xl8Koz63JkG9J0DpL0dKfjqaBbWq4eNpzkLmex9h/DATGqakm
         mCH63HTlpzRQ3wtgnIcUHPTuXhVTzIJ9WzA32X2siIYiKABUXb4tksymbkU88dvcIjxL
         83xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=djCdnvPmC1YTYNkQe7MppQJeI5yR6tm+8twTpV0OVuc=;
        b=g2Hc+iMK3sIK+k5GMsIrbUTTHhbgUGW/1cHBZJbPXcXkKzVpwFQALMaPip5x8get6u
         lsaHAeFdP0gHdBQwH7louDgc608/SE+efJMxImijfcd8cKaUIVchRcBPIh13Gl9H/qTt
         x350QdM+2ROm11/KM0w9LPNH7Qrl4t86yaYocYLDnMR8bNAnf7LkwCvnaCV0YqakNUlm
         wjUbne2+gm0uBla613RcyhUA2TOeY0CS3zB1isi0tcCwXPwA9Cl5QLuc5vvXT2AQ5rLp
         kXsHMOaI4WVZMEKG8EFUYJwTYKstH33wcQNDL/Km7uZ3rgD3vnJe3L43UrJaW1UiGap0
         gOQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=djCdnvPmC1YTYNkQe7MppQJeI5yR6tm+8twTpV0OVuc=;
        b=PquC7ubyoyj4pE227Ndu1aLDSm2l/fezFcnm0Tc0SNOQavz9ELl1lKNQJYB/l0te0T
         DANo9rlICxLfahXgq9sY2wRAlPnVM0Kg66jGNYMfErUUF5i0cdgQAAmAuICaCa79kLDm
         y6l849BQMuSUf3wf47cbsS4qoMoK6OyS0tz8z2bncRdOy1acNU20SjP7WDaWzYWTlxc8
         UShwm+QELigGC4CImmGohq6T0uLkUL2nujFbD5voxlO/Wz2MGZ2kFND46PMIgoRUQZpz
         4KKc3UWy7sTZBwmYIQiwyKHWGSacWrjeqNT8KNt0SUX+CPbURaRjKd5+pIQBzWPQizC6
         EElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=djCdnvPmC1YTYNkQe7MppQJeI5yR6tm+8twTpV0OVuc=;
        b=oavOeNjXrs1Ejd7byvSLBR7EQcIQSYwv/301h85DKYPPAqXsf81XHCig6flwtV6rBx
         6Uiw8HLxRiIA/izG/k+BVx25UQaFnr5pZ/IdgnnA5zn0sESgMn3cI6SDd9vg4egbhWqM
         q4XJd3NELms59f0r1FjHrvTaVc8irxWHbArB/+iDQGi0bDhWYy7/Lj9PkHuNZsJO1R/Q
         ioSrpfW6KULetq+l57u/qobQB833Mrclvkna2QzFXcIbg4HhTfhoU82iHdNd+MsQspIv
         OkuqJRF6ESyy5qsRY3qUSTAYIGxs0ha1Xr3ygfYbirMUWZUlwAnH31e9QxTA/UYanSIS
         8ydg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ui2Mc8vC1owsN1FmDRkCnLnW/H4hikiq5+t5cDqIM5Kz3RoNW
	HZXFTnUjkDXFC5rv9/b5m1A=
X-Google-Smtp-Source: ABdhPJypLCIshw/WOBcZ5BgUVAwtFFNbMarVzEsLgS8SJf2hO8DByxQCvfXf1dF/2LutZAJ0SqXAnQ==
X-Received: by 2002:a05:600c:284:: with SMTP id 4mr8491846wmk.24.1615470141463;
        Thu, 11 Mar 2021 05:42:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls5773828wrb.1.gmail; Thu,
 11 Mar 2021 05:42:20 -0800 (PST)
X-Received: by 2002:a05:6000:1788:: with SMTP id e8mr8950228wrg.171.1615470140573;
        Thu, 11 Mar 2021 05:42:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615470140; cv=none;
        d=google.com; s=arc-20160816;
        b=FTcfnDKQugTpWji4w8H9MygDeAp3tMyeDLb7Mj+W1Z/wEhY89DD23qNH5zWpWQw6yu
         pmKL9UtI/98gFyaGV+5pQurJo4FQaRMJ6ulmERJZnuhCwx6S3cyPimG1QBG3d5q45I5k
         SacLNH8/uny2iDPuqbujoKXL053XESRFsj2dB4bd4861wm9TeWLVKM8Wg3lRbYZwKEy+
         FUwU6dCmAisx15PSfZQHQFuJCk18oLlBIaW8N+OXLT0zIVSnwdi6Ad3ErRy0qgmDIdzO
         kmT6AZzspRQzrEHxBtweElmKitHNov92S5Va/94oU0PJm/MX+xhU8t23W9PgEOvM3+kt
         /a5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=6/oRab71wHyRGiLRdkIff1cppeyYH0O3FV3vqOqr8nU=;
        b=buOxr3euP/2uwk+Xn1CMZFPp6tK00vAIvCvuuCAOOJdj8dw3VZvzAuCJw3qhWzBHhe
         xAN5fQGG843tWOAgyoTSzFbm179ZOrQlh385mplLJKErQPG7PhSRhrJ9SZ2WhQrm5Caz
         6fQVMY8mPslq0eXtsqYk/rSJC/cwDJ+ATj51uCWwHmlIIugy4StuQvDjW3MAyYdrzGPF
         lcKKwlS5YNgpIlTeayLjCpeu5ofc3FGD2MQme1UivbJPPlEBcMWLlL6Qe3E3oeFPcQMX
         5KNLM3VF7aIxNDcKIkY33jP5cytBAUwRvZ1hkKGCg88cNEdPtvEsqgT4tAm6qVhWB2wf
         xt3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id i22si132153wml.2.2021.03.11.05.42.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 05:42:20 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-160-0OoTqTl0OueELvA3YO31BA-1; Thu, 11 Mar 2021 13:42:18 +0000
X-MC-Unique: 0OoTqTl0OueELvA3YO31BA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 11 Mar 2021 13:42:16 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 11 Mar 2021 13:42:16 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Jens Axboe' <axboe@kernel.dk>, Nathan Chancellor <nathan@kernel.org>
CC: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: -Walign-mismatch in block/blk-mq.c
Thread-Topic: -Walign-mismatch in block/blk-mq.c
Thread-Index: AQHXFe27ca/ZROQGTEKd9Li70YywSKp+zBWQ
Date: Thu, 11 Mar 2021 13:42:16 +0000
Message-ID: <15284544c46b4cff8422abd027eb0f8a@AcuMS.aculab.com>
References: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
 <99cf90ea-81c0-e110-4815-dd1f7df36cb4@kernel.dk>
 <20210310203323.35w2q7tlnxe23ukg@Ryzen-9-3900X.localdomain>
 <e43dba61-8c74-757d-862d-99d23559cf50@kernel.dk>
In-Reply-To: <e43dba61-8c74-757d-862d-99d23559cf50@kernel.dk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Jens Axboe
> Sent: 10 March 2021 20:40
> 
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
> there doesn't seem to be an issue with just having it wherever in struct
> request.

Can you silence it by adding an extra layer of 'struct'?
Something like:

struct [
	....
	struct {
		rq_rype rq:
	} __aligned(8);
	...
};

So that 'rq' will be aligned, but itself doesn't have
the alignment constraint?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/15284544c46b4cff8422abd027eb0f8a%40AcuMS.aculab.com.
