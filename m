Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBPHD23UQKGQEZLG5JBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADB670035
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:53:18 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id e95sf19788801plb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 05:53:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563799997; cv=pass;
        d=google.com; s=arc-20160816;
        b=qDUvjUdaSxHP26RKgMj6KsnU5s6zij2Vy1MxVyMjWfbzr7wO5YGc9uvQlDVpz1hNoE
         abQaDV7XV5xpmlCV3HRjrNmIsq8AxwYVptIR1Zq0MgUrXs54O9OJ4DVz65BOJKAfgRi7
         KMofnR99rSZBlC+uVmbyVpQBuZfO+0lPkgpvEhKoAh4Yj+kII6cbLhvwkkICpeCo0EFt
         LIuGBp0RssV8+G3wqtf3IZ09pAcQ5JNhZKxFL8BOivFl8iMMqdJmqakXrZZAxoy5UjLv
         RPK+p2lvw5RqPg3nVR64O1KixPrA5vGSnQ77JxfMzZxt7W25lNm4S9kNI93RMspN5swZ
         DBwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GRUqwwVM3NvpPC/1zRsN1pDKCAz9+llz6xE0mr/AlfY=;
        b=K5nOgN9Qp/3n+xMZkp4C5VYkPeSuVu2R3xLrlgYP8uOhY67iGWv5swbrBHgh4R4FpS
         flcXCNwwYKiEfmbZ+SHumiAMZqym7OUg82EmRv/KbD3UrtVx9fDinACRtiZWTyVHGUqP
         Y0gonj88u6yCjOqEgojngvpsInkUMlHajawXEtAHhfNe5kPxd0Tkv9hvJwPGUkcDur+Q
         w/WU8aIIRUcZFxeq/nt8JLtb+jYkXVjsJqsTZCaRd7rM9NI04M6H91gn3Epze5F7wu1J
         mo5HiSiy5FQEZuTu+Wo3W2Yv212eD6WusxuAmr/g1Asqr4NiNpLx7Op5eUoO1jmeHHFY
         SQfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GRUqwwVM3NvpPC/1zRsN1pDKCAz9+llz6xE0mr/AlfY=;
        b=Rh9Iae5tw2d8jHpS6rsdtm3ocIKJN6E9IV5N/MS7Tkig0lvVSmhs0hs0CGSzrIkj7n
         wGoVs+p2Rq8/AlqQt/FVE4/O6cTuqws0hJBWaG/JaRDLoGfpUaQE3E3Lqz6pYwHJeSPQ
         7gbfUgiPy1NRGje2Lc6Vo4ufnbg08Jtjxauvm19SohZ6PBmb3xbG/alyGWBzlM97gcg9
         +Vj+NyCxhjICiIDSJRZRJh0/s5jpvXp72rU1UTLCHhdG5J99U/yv8/jI2Ehp5GgurXbH
         AeXsbSCkEHtz06lQRO+YQj6JRBEmP/kCbAXt/ewldG4fgnikNGcrIXBLOd6fr/nr95Dm
         NHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GRUqwwVM3NvpPC/1zRsN1pDKCAz9+llz6xE0mr/AlfY=;
        b=M6j8cOSi4S0kCH3VetuCMz8pC3buIfIMOlg9mmPIprxkYGkDN7J3BeV40rnbKSKg86
         8EhmN1X3bH17K+bIy00pqvQtis7ddXE/xplPk3VvRid0DF7aOc5XBt41Qkiq372J178N
         T/kMzG89LDIRkZnxutV8bspBn6g6rqPTsYqXDsHcnfUSxtn4ZMO3KRs3FCPilft+W8jG
         48RdPGxjlpDLVUzyeQ0SYpqS6dE0FPuBDJTx+XUDyUohzz0Hlz0biTEFbeT0l5Feb4TN
         qcHStzfiY6BvwOtymmkTNazA9MXnwUk+jySNzB+t0M8zY/fGb+lS/iCfgveC99BOHCEK
         nLXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWc4+Zm7mgUGE/tsAb/G2kOeloQXVuKk9aCPwPNJ+oIiB0BalCU
	SRQLa2JUtNjygncuR9kfSlY=
X-Google-Smtp-Source: APXvYqxN838/AnlDQPb24PiOfSs/kE1zGGmxzve7zRLCjdmuDs3+xJS2XAVAdN/jib4iAS/7A6IqRA==
X-Received: by 2002:a17:90a:338b:: with SMTP id n11mr76022607pjb.21.1563799996895;
        Mon, 22 Jul 2019 05:53:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3aa7:: with SMTP id b36ls13460853pjc.5.gmail; Mon,
 22 Jul 2019 05:53:16 -0700 (PDT)
X-Received: by 2002:a17:90a:fe5:: with SMTP id 92mr77919882pjz.35.1563799996581;
        Mon, 22 Jul 2019 05:53:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563799996; cv=none;
        d=google.com; s=arc-20160816;
        b=xOoKKQf+0I+h3hTtfkfOzJMqqXNG+WQr2Jr3WQPEfl6uhnSgIuMbzAkjebBwZ1b8mP
         RdfWcIuxhrDvaNHDdBO+QWnB+o4hdNE6KRBKxEJlJCVHlH2FDkTmLw4xzTAiIdvx1nuh
         iXZXfWflJM2UP2lw6tO3ZSEVoj0g0vrKnU9RvF1Bxh5c7naGSApMesgPGZEUcpih7O2Y
         vmnq+0WvLJImI+mx9U2BCp2JuIQNVhThEaaE6xOehf2K00JB86OPnbN/Xp9vGXfcfkuu
         zzLZdRXAHuw12JJbLQlTMv89Exjd0HKAqB4kE1W1sBz7ALBJWe5UZJMmqPM2+dvgmhXy
         KWuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=dcEf8I7/m2lMn1t5WHBwpDegF2GOQrXyNgF8wvk2z0Q=;
        b=BLesYsnEXPGxLZuC1MOqESdjWvmcSpxZPeo/aMcUSnW+9bFijFrCXrFQOzM8tg85OI
         sSPkDMlNDc90XCw2VBg3mK0rgoCsMPuWrCPfP01ORRT9250tnYYWDyYCTf/Y4onpb0G4
         dGUhsXT12iSUzgj537agh2d9yNq7qvb+SJdfaa1bKM4LRM6YMPeDzxuyEoMWHOT5mPNP
         7R8PITb2wz0uZKw+oTH3RMLnIzngBYqNTStAcuFGybib8iNcgPjCbslU6ndyDQ6g+exm
         CrjtA742zEB15W6ymPEMq30AuG/z3QIOIYH1kINllIbJqX9rESZPtPbLEZvgAYmushGB
         7YVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id j6si1815223pjt.0.2019.07.22.05.53.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 05:53:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id l9so38317375qtu.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 05:53:16 -0700 (PDT)
X-Received: by 2002:a0c:b758:: with SMTP id q24mr50227938qve.45.1563799995616;
 Mon, 22 Jul 2019 05:53:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190722091050.2188664-1-arnd@arndb.de> <c7da8503-93bc-c130-2e50-918996abe6c7@virtuozzo.com>
In-Reply-To: <c7da8503-93bc-c130-2e50-918996abe6c7@virtuozzo.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 14:52:59 +0200
Message-ID: <CAK8P3a3pAEutcpfQJrCz+0m00LBEBn5qjxNnpRxK9HshnTjQww@mail.gmail.com>
Subject: Re: [PATCH] ubsan: build ubsan.c more conservatively
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	Sodagudi Prasad <psodagud@codeaurora.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"David S. Miller" <davem@davemloft.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Mon, Jul 22, 2019 at 2:25 PM Andrey Ryabinin <aryabinin@virtuozzo.com> wrote:
> On 7/22/19 12:10 PM, Arnd Bergmann wrote:

> >
> > Fixes: 42440c1f9911 ("lib/ubsan: add type mismatch handler for new GCC/Clang")
>
> There was no uaccess validataion at that time, so the right fixes line is probably this:
>
> Fixes: d08965a27e84 ("x86/uaccess, ubsan: Fix UBSAN vs. SMAP")
>
> > Link: > +CFLAGS_ubsan.o := $(call cc-option, -fno-conserve-stack) $(call cc-option, -fno-stack-protector) $(DISABLE_STACKLEAK_PLUGIN)
>
> $(call cc-option, -fno-conserve-stack) can be removed entirely. It's just copy paste from kasan Makefile.
> It was added in kasan purely for performance reasons.

Ok, I addressed both of these and sent an updated patch, thanks for the review.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3pAEutcpfQJrCz%2B0m00LBEBn5qjxNnpRxK9HshnTjQww%40mail.gmail.com.
