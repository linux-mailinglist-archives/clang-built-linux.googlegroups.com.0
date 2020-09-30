Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBWEE2P5QKGQEIT7IMKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B7B27F09F
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 19:37:29 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id r8sf1053315edy.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 10:37:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601487449; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/dZvrfwBC9O0lE14h0fDveaEQLeXu3VzIEKRpV+jaGouVPM0u8KkLe+gTsH3JNW6Z
         TriBA8p77h3vRaI1p5y9/gKagNt1SCTGzmGibMqwVxQcvlPZB/uSDrMu8KeLPB46TnGw
         Ine/SeQ/+IX3uia1M9rjpD6IxTIYiQzq0yg4uxHWVOaFMRGQ0gVd2SzvJP5E6WyZzN4e
         PGwWGFV+9IDUr5qhk+TVs8ie4MeMbEDIv7L/ilzGOb5KcKzO3PiRxq9p+cF5lPfYgX/I
         ThfQI2A5k9Xrx9S/MP7Q91Vt7y7JhS9hosN6x2WTzkDjVLe8QawGyeGZs/2+zxlgrbKL
         7y/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iSTcW930D7drQXVoda2Jlk/Hw11vMiNEoipSi15gNOY=;
        b=qA/fTYenOPgerDabkZuK6X21G0Mwci3bhM0qe+O7b1ib4f0TL/HSuJz1hhMXtjP6yT
         vFnZW/BpXcHoUI/JnGSJeR6jZQUCTUgWBFaY9yBVgeh8OuSxsYsjHMIm5oOm5Sm3MnT0
         F8NOQ+W6wMx/ERqQuwGqqtWXUasbkPqdJTa+h+BgLvG7ZiatW/tjBhyhAqw8hbiCcdVm
         vD8PbAe05VQJqqDFFON7P29yFYMNpst2VAkGv+jn1tYMfgQKoX3ijdPNlicoCze1lG+1
         4/v+YjavaxmaKNq0ALbq5qkH6eGmOq7W05TuOmVKgelDLeYm13OPo6uoR5kTQJm0EBjE
         1mpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=a5mZR239;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iSTcW930D7drQXVoda2Jlk/Hw11vMiNEoipSi15gNOY=;
        b=MyXlciv8L2nc6eBF1/LO8/Nj4jrDxAwSzQ+2709A8Sjv8DMS+DBQX9cvwm3mQr3r3b
         V/VGR2Nu983/upGv+o3or4NaLKrccEC0UUPsgevyRecxJazyVsPJ4oIl6c28MhO9CUzK
         ZR2rhr/BB/9rPJ5J+fbcxTj9agSqMKM/6L2GKdLguhU7gzvL8EETu3wPuIiWuncupmcI
         gUIlaxlbJaJn/SJqGcIGMjB62l+1Ac7G+Jwz6b6ImGBss6GNQiDU7tx6VjKlyLvv84z1
         kYb1Y3fl9UmHSevXrvn7oHEukv3h3ff/b/kmQoCX9v5poso8SwhD/KEK3pR4zuWgg63g
         rCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iSTcW930D7drQXVoda2Jlk/Hw11vMiNEoipSi15gNOY=;
        b=IggaE+D/P34bY92/5l2j86tQia9EtIY7eeYTZGtZogKbUFeWbiqvh9VuBZPPvpom9e
         TAwG0MMCCF8B8TCaac4dQVy6ujMzUqpV40PUZi8Cg62TAQbujvvTFniT0et+Rre57X79
         W1iy9f/QEQbaPifADu7SlUot+F69pdV/ZE+kLLO/AiVecmhC94aEiECkOGoD+MKSNRU/
         5MckUUQ8X2euleSJqmYCf0W6DAtnx0urOWpiXO+/W2tjrY2UbeCjwspXNzz8YOYuRtJl
         lzTHByCQgToG4+V5LwNmR0acaWEq3f0T0NlS1fPbTPglnMzjUj8AztypwAXpJwJmd5/H
         wXQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wBMos41xANO3VgWyPfJ4NWj7neqQiabw3J2y+VE1JX5xhssaK
	rjyGw318XVGOTmx1PWeKFZU=
X-Google-Smtp-Source: ABdhPJwmQk1N5j3atDD3XOggJ+caH/xk9eMQnQ2vX7y43sreIO4btsXMRj7IKpKmNNoLYUwF2tQn9g==
X-Received: by 2002:a17:906:b88f:: with SMTP id hb15mr2701415ejb.45.1601487448987;
        Wed, 30 Sep 2020 10:37:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f1c6:: with SMTP id gx6ls1225215ejb.8.gmail; Wed, 30
 Sep 2020 10:37:28 -0700 (PDT)
X-Received: by 2002:a17:906:2c14:: with SMTP id e20mr4161768ejh.205.1601487448012;
        Wed, 30 Sep 2020 10:37:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601487448; cv=none;
        d=google.com; s=arc-20160816;
        b=XZtMF83G8APKMUJ2hvu4ShLumaDwO5/4tLYpupKrpXl4qqi4Fm+FaV6XJHz+CqdjUG
         xprrMPvzVeP7lYZ9iThlMjKunsf/K/25K1nf40DsH4SWkKA4N9CSuQWSALPzDZWzgphA
         Vl1XJGJdA2oRa9BLqspWN3MR8IqAru3CnMp/mbwTjb5KQj5OEJoaaD8dgbHIxLNu40lt
         /CeH6YOb0pVXoBTCHHk4/dHnLIKMlbzaWLgYSSJISKXKDNXIq3q2kpRtRBr9T3B1Zsqf
         7N4TQcAWn9fgcPGr5vlKToZLuyHZO1QAap8FjY+L/6zCrGOq2cMxNs36lBryVR3+wsHg
         G4eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A5KlBjNa4UamexPhFOAub/bWTs9pyBwcLEyxvvIWw8w=;
        b=wLvFjXtnuGjP3fQrwRAncF+chOt55DCi1nHUscYRKuX6iyHKvgyhBMklSn6ztsG1Gd
         RknzRsMmtJU/J22x4FVDOIcvN1eBgLBUrvEKI3+Bb2GIXNgrVBs7kBEd7Q2ezrW8irEr
         62AA1IKlEKE5Hy3UYLPGS3tmZJT74ELDQKHach60OcXkBEtTQzt8bEboSIBx7A4su2/i
         LqxZF8b5gyRV2rOKDci5a78ck8PQQXN2PSO5Yyn7zEH7x3uRjQ+mS3fmuRgWAZZL3J0c
         lKAp+eFd12Nx3AEXXZbEcgoSoj5PWoAG4EXI9IzXHf4O/cDsnoU+s9drz/8f5ucM4g43
         BtIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=a5mZR239;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i14si64159eds.1.2020.09.30.10.37.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 10:37:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNg2a-0000TW-IU; Wed, 30 Sep 2020 17:37:20 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3E4A6301179;
	Wed, 30 Sep 2020 19:37:19 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 22CAF20115B0E; Wed, 30 Sep 2020 19:37:19 +0200 (CEST)
Date: Wed, 30 Sep 2020 19:37:19 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nick Clifton <nickc@redhat.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>, postmaster@vger.kernel.org,
	David Miller <davem@davemloft.net>
Subject: Re: linux tooling mailing list
Message-ID: <20200930173719.GE2628@hirez.programming.kicks-ass.net>
References: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
 <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com>
 <CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8+K4d4gpY4CPag@mail.gmail.com>
 <CA+icZUU44tbsmGfTc-2OO42V42Z02dRSs7AZCJBnXL65vJDz-Q@mail.gmail.com>
 <664e5923-d65e-0a3a-1320-8b6635146676@redhat.com>
 <CAKwvOdkiSLidxNxWUxCrJ_rPogORt=aGDHTkbO=yJn0FPevbpw@mail.gmail.com>
 <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=a5mZR239;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Sep 30, 2020 at 10:25:40AM -0700, Nick Desaulniers wrote:
> Does anyone know who's behind postmaster@vger.kernel.org?  Maybe I can
> email them directly if perhaps they don't check this email often?
> (Benefit of the doubt)

davem iirc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930173719.GE2628%40hirez.programming.kicks-ass.net.
