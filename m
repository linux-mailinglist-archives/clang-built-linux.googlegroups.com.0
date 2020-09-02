Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUNSX75AKGQEGJGNIGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3362F25B311
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 19:41:38 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id 1sf2737580oob.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 10:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599068497; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ajo0o3sTznA+YYpHvmVXPrRVnd+7JdQL/sa+JTz28JhyKcX5GV/g+MjxkaO5MrezGS
         ag47TxOZ+eeCt6k2ib3ZjndmiANSiOU9XRGWXS1onuliPEYecoGfo28O+iibRUwX0Mra
         HVCz/bMgYdffqFYhyPn6sUF4qDU/v+9Mj4h7ZOGu5r1hPih85+bT3LJXJms0g7k60jav
         obODh9I1XRNc2O+7Gtc9AJibGLNOB1a8sot0e1Ni6qA7F17DDz2iVwpkTYyBco59IcAa
         ruHpwV3DCwZii/RCa6tljnVe1JKSJy8oxrx1/h30QoJjpKOnadD1IRg7YHakDPeRjkg9
         wLcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jQgFQ535lbjupiu3iuJT89zZA6uR7bCX7wSBPKHBoss=;
        b=wzwm2JCBTl693oqXRDZnCf3quVM+BwtQVsaWRjZGXSBLHavbNvAJYMHfgoiIkBIZM1
         7MN5h1ywh+ROrvZ8g+EVdUJnre7NHeCFZvORHJMh9Iy2OCOwVMoKFtBsAhhA1B2Yk9Nq
         XD6858G4L/qJmuz3GLXK4evo23IdmMZ+F1lUq/FraFrYZSyfh2iTm6mT/lGfgC96066W
         ynLPADgqptW84Ld1f5PBtOql4SY1jhO3Nd35yY9gxGkqBWuXstfrnLcOsR1GvBsyLWG/
         6tO6WoIPJ9qvGiU8VD8IpyrvIlrYySeOu8KhvL0lxgAPlS/YNJyDmwhMaivkbELqtSHW
         tuEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d39r+fQ+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jQgFQ535lbjupiu3iuJT89zZA6uR7bCX7wSBPKHBoss=;
        b=P+loPosbzaCPNHV3lYNxMQy0Kb3SRWJRRx9336vDxnMHBfoq2p6tzQil6IwwluE4xA
         eu43TyITcWLCzMqozuq8iO4AR1qUSf4Ew9ISRe9zCvgE3E74CR7Bhfc9osVy1oAfC3fj
         Swy1cqEAVKWaGVthrnlj9lpQJ7zinBgml1OtLt5M/K2qrJiNuUT5p51A0w1z9Ujpmx37
         ADcri79SMthFwKlNfKdGo3DQeM9HBaXEJrGZnWL+NWO9uA9M7Du7gOSmUTBmCbYsrw/Q
         aO3ywtp2uIyg0iTSxQLhqHfK+/6kdIkmmNfQvtGHjnw02GJZOJ6vrvxPUXa0mP8ghuB+
         3gKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jQgFQ535lbjupiu3iuJT89zZA6uR7bCX7wSBPKHBoss=;
        b=UGKuZ5moZIxhe/PjDTkR8X3CmCXt3eEWtXiVDhSnZEREe9ucoxQdsYiGKrnFiM2QvK
         qIBd/O7f2Y/UYc/m/dSsGuYQvXp3AI4PD7VQPu7xcya9mkMmhXH8K5qDtfP+nV7hqt/R
         pmpz47qdH37rH3Ier/+EB/x4Ft+Cp8U1ywck0f/sHZFNwldVYNdxGnzADTMqDC02wDAI
         seVjM9rOdwWYIIoPAC9bA6PbGL2BakdIsMJNubjJYqbBs2jVsIOAs5kWzkkGNOb2MlbT
         naAJKftoS9wvhEX2GgQtEj8bDy33dOMinncn8pFPNyfV+6GTUmhx3vWVfew01X5eDkkd
         vwzw==
X-Gm-Message-State: AOAM533/o56AighBueWl8AH8bP/+jI/29Cl8lgSjzahcSjzpxF03/+Zq
	/wJjUuyBHomUl5mYdvQRXJ8=
X-Google-Smtp-Source: ABdhPJyQG20RUUtHtjdySmPQfzlBSCHKfuIRcFEa/pnSSTx+MDWHds6nrT/1aKm55VysRulWIWTXqg==
X-Received: by 2002:aca:59d7:: with SMTP id n206mr2603711oib.86.1599068497103;
        Wed, 02 Sep 2020 10:41:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:31d1:: with SMTP id x200ls652316oix.7.gmail; Wed, 02 Sep
 2020 10:41:36 -0700 (PDT)
X-Received: by 2002:a54:4e10:: with SMTP id a16mr2790152oiy.166.1599068496815;
        Wed, 02 Sep 2020 10:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599068496; cv=none;
        d=google.com; s=arc-20160816;
        b=struqLxfotH1To3QD15WGEzUcvJNKr1mS/sSVwR0tI9g7sYOFuYhQF8f2WecJxhy7F
         Gp8BYkITN27JD9if4Suv0LPNuxeA4aOfPpUHp6AiYQamj+4OCuK/CJkTLEkIOmrOy51s
         DIWiDybLK7uE15eROMaDHtviBLfgteO8D43NMc8S3j12wzbQclQUXHxUPk1m1y2/Rzwp
         AWPLnOIwQxC0xFnVFXRMj8wLFVzrw/PZLMvW311E2ButJfCyRc1Yv8uuNru0hpUGGeHr
         NJEo+csn4tCrRBnqFTEbJANsD5nCvP8n++tCv9pStZbLJp8xPvdgDUkBUMllSNYF9P/+
         n35w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=znhEfk0qTGWBjhVRC5OGNZnEjwpfUwpiOjd2s/MZEpw=;
        b=AIoTTtXU40UinZFXG9+rYLM5XbM+sJnDdm2npOdO+lNjiJCQWEqouJLu6os0zKUPrg
         CjMCkNKUxfP+0RyB53mUqR+fe4ugthAkTBTQab7jiHdR0sWQFYvWXQqJt780f7namrZh
         48fqCMmjt5VP4dD9M2P2BdVEMrJiun148iCGRrw/GiPSmTuBULRRSwL+sjIR4kRqjBP3
         TmwZJcENQVTOb2FHAswfQISgiqQnxLomkDvF9RRoYel1tU8t06OZt5rV2U1JXOMwnOxB
         BQ56eq0qwZe5dX7vBoeLX7Fpm5MidDFXSJwrtD4+QDhOS1D9Sbrg1d1uBcMKl9w+/zeD
         G0Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d39r+fQ+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id c5si11661ots.0.2020.09.02.10.41.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 10:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p37so40098pgl.3
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 10:41:36 -0700 (PDT)
X-Received: by 2002:a63:9d09:: with SMTP id i9mr2625820pgd.381.1599068495912;
 Wed, 02 Sep 2020 10:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-2-ndesaulniers@google.com> <87blio1ilu.fsf@mpe.ellerman.id.au>
In-Reply-To: <87blio1ilu.fsf@mpe.ellerman.id.au>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Sep 2020 10:41:24 -0700
Message-ID: <CAKwvOd=ZeJU+vLUk2P7FpX35haj7AC50B9Yps4pyoGCpd7ueTw@mail.gmail.com>
Subject: Re: [PATCH 1/2] powerpc/vdso64: link vdso64 with linker
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nicholas Piggin <npiggin@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Joe Lawrence <joe.lawrence@redhat.com>, 
	Christophe Leroy <christophe.leroy@c-s.fr>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d39r+fQ+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Sep 2, 2020 at 5:14 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> Nick Desaulniers <ndesaulniers@google.com> writes:
> > Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")
>
> I think I'll just revert that for v5.9 ?

SGTM; you'll probably still want these changes with some modifications
at some point; vdso32 did have at least one orphaned section, and will
be important for hermetic builds.  Seeing crashes in supported
versions of the tools ties our hands at the moment.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZeJU%2BvLUk2P7FpX35haj7AC50B9Yps4pyoGCpd7ueTw%40mail.gmail.com.
