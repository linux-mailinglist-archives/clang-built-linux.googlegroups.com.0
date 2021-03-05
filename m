Return-Path: <clang-built-linux+bncBC27HSOJ44LBBPGNRGBAMGQEWX63GHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 750ED32F0E8
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 18:13:33 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id b14sf1025023ljf.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Mar 2021 09:13:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614964413; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3LGebhLyEl5EkUWSt+6xl1xAwh6JkIOx7KvzfkU+r+9kqHzZkPz4B25Mqg7QNRFOI
         GO1pGaPwcFltOkEDVmSgK64O75cnieKJXYHsNxzKa9uI4H1gGk2iurVU8JcBBqNhjwnx
         R+9q9N1mAC3+EBgaBXGgveN9xQnIP3Y6n7Q2yBgAmQ6HGjAmH8NwZhebinmsrAH0Ldm3
         xi5DMZxrzO7m7fAc+3wlwOHSbcNLfgA/kIZEsfcT4yyLd15QrHPlFuB9ly+MQYW94u0G
         AEY0g2YW7xGZk9Iev73AOHcaBN3SuQRvJVCqcvHj5O3wewkdR271KtVCE+faLAjz5H0y
         zPEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ZHYwpfw526/gQFWPSJ3hshbepgxQikv4Ul4Zb8UmlHo=;
        b=GZOZI6w93k4FxPdCejUGoS47ObsI0jmihA7Q69K9SnG8jepyKt3i/HbkL8qKAXGvSY
         5SmCXkMMkj8VJBlsskrfYtD+qQhD34aNovw+dIceXjUBVv0voReotg8UcJrE63N+vxjV
         yg8d0E48VWDDNuSX07rt3KSUQU4DZ48MLTqqhWrL0Gf4zSGYkp3+U7RAQf2JpWjtxfe8
         nTYqwS1vBzjF0KZi1CoeG+7biKCtFVwao13sGl8tRbe1i7Ftsssy399WlSpz1RiJ97NQ
         yGUP9oMhkuAU5hzr3wl+wqSOXW+At3SXhueEZWwwlFp5P34ouW5Y6T4rHGbqX3j6SSgU
         uGqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZHYwpfw526/gQFWPSJ3hshbepgxQikv4Ul4Zb8UmlHo=;
        b=Tethrr46waWXsXGlMozi61fEKLI30iKJGRBLM5qi4vNbd/8TLhOAcfisLXoLU13VQA
         MQ7/E2suaNpB7+DH2vhkMEg41nXFvsY22fBZuVcYEHSb/UgbF3sgpCdzMA5TdaUqV97t
         mfxJarJ2hex9phn4kxyXEGpy0PhIYptmOjc52AdYDO7SuLbirCYruIHOLYHQ1vMna5rm
         5L+9/jXNioPzgmQ5V81FLiq0J7M2khdyVTUqHMWnbdDEUNP6rc3pB+MInT7XP7TyoJmx
         P3Ex7a/iSeLksXwhJO/UW63wd4RafifSpY46weo8bAi4Vw9EOsL9h39fdJrZ9596pOJV
         mj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZHYwpfw526/gQFWPSJ3hshbepgxQikv4Ul4Zb8UmlHo=;
        b=nFEPeV2nDhS/wnc8LBjvsxIwnYIXqdvEzWNudgGns7TNtPDqCKU4VhAkbiaCx/wPYM
         z95j++77PxH0cy2C0Uze+9ih3ylHhVS34eCUrTerkMRJxDGJCYcg02npqAqtON25OX9o
         4ZELUBlFCmR2UxS0eohnKAXESBzen8TuBalGK+ZA+0EClS801G5rRuMF1LH9KmIXR8Sr
         Efd1MbTgb2SMc6prREXlV5tB82zuqWSpwsePS3FiaZsYJAFLGCbyMrUTx0vTNx/nafOb
         x93HoVI1zsaP8VWL5LDzKU4f64krcprqlPHClwrHWk8PBt2tKYZeVaGa2oFvGNojMri9
         H//Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wkCInUMZafD9lFZUqzK3HKFx4Ufy2+bq/aJbJ9V5W30H81lEY
	mEfu0bWqa5pjzRmLyqpyxP0=
X-Google-Smtp-Source: ABdhPJzlLSAGBgIxCyP0+PEp1bVi8R1AjgcAO24svSjYfjJP4yFfveZ8nThZBDCReuhApXmiBNzNpw==
X-Received: by 2002:a05:6512:3081:: with SMTP id z1mr6240212lfd.257.1614964412883;
        Fri, 05 Mar 2021 09:13:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls152946lfo.0.gmail; Fri, 05 Mar
 2021 09:13:31 -0800 (PST)
X-Received: by 2002:ac2:4d39:: with SMTP id h25mr5995961lfk.604.1614964411874;
        Fri, 05 Mar 2021 09:13:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614964411; cv=none;
        d=google.com; s=arc-20160816;
        b=TanL4CNJLH49UbwDGmhQe6/LGnEkY4vsBEQIOaNxa1qDPRLsoQuieu23gnSnZEbvFK
         WvON7LTFdAZZELPzSsDQrpKsW7ENwmjpmKO4IOW2QveJNFlwxlI1SwwnEDeF7lcBgCfm
         j4Vo4YbBtvAHwornPXSHYqRY68vCaarOS5jj4Jh22uk+Q8QhRgpGhXT8BLEP9PqyBBA6
         /oPq47Z+2+ZAUG/8j/wXyS3HetIQEJl3FJMftrS3bfsvKaZDCn3ZEHmgYra0Pn2X6cCh
         dKP2/iQheOGLt+M+6KUwN390fNRbnpQZ+9uVALCcZQy/buYdYcHq5wwRjucfl0SSutKC
         tBpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=D7+vQV9jx9BBZ39JgERFkKFPREdOCBBXS3Kq0KIpN14=;
        b=tooSoG5RcdBPLwfXejKqy6zhBZxxHmSbzQw2OQ5I2zsQmm/9R3Ff2mXubvUOVN4esj
         HOwvagJFL/i8GiiGnR8WCSf4KUksnz2StjsLQ5BQ+eRiE4nj6hoiYDl++scA/+TkODjS
         dumoIk5WT0nlE/yAPGqcp9v6HUWf/yF1mVHBTyENHTZCow2QTliX6taLJe6+eC6oC7tq
         AItGHwxFfgETD3Mk2BfFq4ZWS3J9AdnxpLS60MXxVcN7fn48HYFBzcD6nlCABAXo05Yd
         hR5KfDHN3n+cD68LS+svx1/b11S36NnobrqkBJDfYYKgSvplgmiF4sSiJLI+bE1zBdEj
         Rwiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id j2si99387lfe.5.2021.03.05.09.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Mar 2021 09:13:30 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mtapsc-1-9u1wbWfNOlK990iK9I15eQ-1; Fri, 05 Mar 2021 17:13:27 +0000
X-MC-Unique: 9u1wbWfNOlK990iK9I15eQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 5 Mar 2021 17:13:27 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 5 Mar 2021 17:13:27 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Josh Don
	<joshdon@google.com>
CC: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot
	<vincent.guittot@linaro.org>, Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>, "Mel
 Gorman" <mgorman@suse.de>, Daniel Bristot de Oliveira <bristot@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Clement Courbet
	<courbet@google.com>, Oleg Rombakh <olegrom@google.com>, Bill Wendling
	<morbo@google.com>
Subject: RE: [PATCH v2] sched: Optimize __calc_delta.
Thread-Topic: [PATCH v2] sched: Optimize __calc_delta.
Thread-Index: AQHXER0S0FxH/KQD/0qlH7RDSaPhE6p1opJQ
Date: Fri, 5 Mar 2021 17:13:26 +0000
Message-ID: <b28c85f973f34bc192b5b5e95f43a7fb@AcuMS.aculab.com>
References: <YD9dUkGhlRT8vvcy@hirez.programming.kicks-ass.net>
 <20210303224653.2579656-1-joshdon@google.com>
 <CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA@mail.gmail.com>
In-Reply-To: <CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA@mail.gmail.com>
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
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
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

> Hi Josh, Thanks for helping get this patch across the finish line.
> Would you mind updating the commit message to point to
> https://bugs.llvm.org/show_bug.cgi?id=20197?

Is it worth an audit of all the asm() constraints
and potentially changing all the "mr" to "r" for clang?

The explicit 'load into a register' won't make much
difference even if a direct "m" operand could be used on x86.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b28c85f973f34bc192b5b5e95f43a7fb%40AcuMS.aculab.com.
