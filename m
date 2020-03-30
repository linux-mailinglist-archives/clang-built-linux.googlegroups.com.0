Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB44ERH2AKGQEUKWGGDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C991983DC
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 21:03:16 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id t138sf5966264vkt.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 12:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585594995; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yzg9wYmsu166EfZLs+XW+Qr/eKQY180PFxij/B+yQDqoDCVr7F7TJsVxKsESEFTqjP
         pHmxfh1WOBNPfa8ZyzytNIXK7MVgzC4p9R8cVySduZPouvf3UjldUaOL1IpvGyuyOtE/
         9dw9hD7oXIx9JHr5X3WZPGvvuTelAvkqhPKyIBhcjQGup/Jv4OlM6xIPtO6h1jD6MW4L
         viwTkAJFYj2HxcgS78yzBJ8HdNfBAI3i3BqAFBGtLqn5CWTFlmE8Xlwpj+rqUvsFgmxa
         K6ZjUfABPgbKpxXbQXxuxxMKvFVCQuz3ErtxHoJGXPhVbqPfbnBJjc8tg+FYoPZNIBQK
         cv8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Bx8dqjug0YX7MDvRFQ34PmNHXWSNz/DXD2CNTnk6k8U=;
        b=AVPxRV0nKRXx7UZC9ynbQi3LcveGyFxfgF8ki4BFiK3yD9FVCCqTnPAJhaA7ehHY8O
         D9n0eRani60PhnrQvtw5bRR6a0TTYUK9T+A4PY2zWWKui2+FstAb246ochgoCrI3dpbE
         46JHNn7LfMY6+ziFCfbV/G6Mm0kKaa/bH9dShvR0fKLJzJG5yrQKvefiO9nkHKdTW6N9
         VqyA+YR2Dq4g/qVIbG9/Oxgbi7Zn0IHSwlD2ZFAF6V8/243Vdt5dvQyCYn4FY3jWNX9A
         zggh/spXnoK3RO1oURVZ4JyaPvADethUPBASe0as/Urc3HaB2xUL7xXggWD7T05eHv1D
         qGCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WhhkvcSu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bx8dqjug0YX7MDvRFQ34PmNHXWSNz/DXD2CNTnk6k8U=;
        b=Kd740h1t68O9DVphG/pevp4bwP4QtDD8hgOQkYl5PXo6X1wT8QsBtjd0fKZO+xW8ci
         xN1trA9/DQfzMcNzYDn3VIO1/beqXr8c3Q8a74LU8N+ZWoiJzzSY4zHzjZrRkKGPSWkT
         cYMnZZs1AYX85UyitGSc1osFjhem3m9bEvFsyulmFYPrT+ngZJSomZM/1hvEhnR9/I3Q
         piew/ytkkwNteFo60Vy/0YMREEtUuoFrO4lvGFqvH43KnEjRXDDdXhooWJK0gbQaKY0m
         iCRCBLjrO8ix052tNtRyh2RN7ruM5VKX6UVlScN8ylCzjffh32G7IEvgE+3DAGXU7fWc
         cXNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bx8dqjug0YX7MDvRFQ34PmNHXWSNz/DXD2CNTnk6k8U=;
        b=anjVqOF7vnfNx+Mjgx8f9xJvrEwHGJxYO4XuvwrJU82IV57ODmWO8nl6iDItQvP4Qg
         m3s+w/NCNt/u+8ptsrt0CUhoqcMiMLW9/ej3Gq90LX2rVkG2oAwcDodhZa422DcIqvgA
         5pe1bbkZEENOgFP6i5sbYQr2RENnmnk/pW1rKSJi1om0KeDtqDm4AfcF9F6XdlFleFs1
         UIKuNiCbBfCGYwfAwQ7pWnLIGl46ryGiqneqYgO8VrikBtlh3LZZKCcpvNRG5To7vc/w
         vS1rHBtf1FgCgfDSlf58LNjxR1uZrqCte7tXaVf/HSlM/Dh2TCOLmroETGc5LkZEc64i
         9Oyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bx8dqjug0YX7MDvRFQ34PmNHXWSNz/DXD2CNTnk6k8U=;
        b=QhATW8LAYEc/YDTUUcfkXbANzp0Wbmq/gpMkjQciiqiqwXsaf0hFscqu7ITOrB8EuE
         uDswyDnwUZg7B70IHKqwuIKxrUeMb/bUZ9yoafQnePAL+FU/YXOwoD1vHYDh80k1cqvQ
         JNWaMXHJIJqsy6hgQH59/+mkwpvNttm8m2ypICKSbwjZ56TeIZsuPPObeDRhWJkiSr80
         c5jLdqoZGe9yZXvPwEig0GYKDRJJIpphzz70IeqYGVyBYxqSz5u8CQETcU4y4KHLt1at
         0trcGUYe5ePxAnbdbzkwpzOaEOxVve98WYr9woIrCE0TRk+HrXJcVtkeFRJ4IdXPGbJI
         BwHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYNatl5VnBR1nBiTdJtsBgeQ30G2PqSvohCKHfh67E9sfr5nqEE
	PSCWxznvfBLwoqwj7N5mRKg=
X-Google-Smtp-Source: APiQypKp7PWBXYN/A9/1i2GUsD0tlZTGCGWG5lsTRhiiMF9p9yVt6MFZGEcHAygC6/YH3X+t7QaYeA==
X-Received: by 2002:a05:6102:185:: with SMTP id r5mr9653250vsq.164.1585594995515;
        Mon, 30 Mar 2020 12:03:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls2695879vsd.3.gmail; Mon, 30
 Mar 2020 12:03:15 -0700 (PDT)
X-Received: by 2002:a67:d60d:: with SMTP id n13mr10250128vsj.230.1585594995046;
        Mon, 30 Mar 2020 12:03:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585594995; cv=none;
        d=google.com; s=arc-20160816;
        b=mQKKjyJ5anENtsQHGkwVDxERZM+KOE+IGwgBJpa8kZ157Bh/zYuTQT9g5QjJpqrMQH
         v7x7IwniFsnLcaLuPmQwkJwHBfAGOLQL3KdlKLdre2JuGPEkfryZPfGvPXD+tbdhhwD0
         ZbncWPbxZxDy/vNOxbcyshODgEm+BTDi3Q7bAZY3ER+tVa2lWHBxRt9mMWEft7ah4F91
         MYnENdo6qJ2MSdYONRZvLzQobjK5h6A9wawLBerKzSC2oX8Z+vULUoOES/kxQ0bBtC2A
         lPhL++6i2M6L3AURwodXsDO+bPdRjIA00vCvoEhK2VeO3j/JORbhQGhlRdeTNOefM6mx
         SbPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zeoBlPxZ+Ud3NYVMylVFKFU+gocBDIOivDsTMxLaWac=;
        b=jrCtdUTcXP5rbXdx4eMDNfwfOSl1T+CEiaNDbdolyOqsDTbku9tT2Bp8WwfbV5g6pt
         IVliSXOgodC41Ieb1KJWvrXUCW7CO5bcNTKerT2QkALYawq6ReHTMO7HwuPT51cKnMoW
         ktudrSZG4HIuelnTxbYgDYWuW+T2NKkKZwBStV2/dnL4rTxJvQIBJ1grwMG/E+J2HY97
         h/O17edML7C4gOcbOEZZPrVvvY10qtwG6yPGAYMFlF1yddWUmTLdOEUkpAt3SUnTkrDc
         jCVwnC1jOEqMSOd3W+85EV0D/y+4y5OrzIlG+GSt2qvovrS8bpHRNGKDnMGk4uh4MXNV
         IdWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WhhkvcSu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id v5si876967vsl.0.2020.03.30.12.03.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 12:03:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id r19so13448605otn.7
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 12:03:15 -0700 (PDT)
X-Received: by 2002:a05:6830:1e93:: with SMTP id n19mr10914726otr.153.1585594994572;
        Mon, 30 Mar 2020 12:03:14 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c12sm4690809otk.4.2020.03.30.12.03.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Mar 2020 12:03:14 -0700 (PDT)
Date: Mon, 30 Mar 2020 12:03:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
Message-ID: <20200330190312.GA32257@ubuntu-m2-xlarge-x86>
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86>
 <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86>
 <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WhhkvcSu;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Mar 30, 2020 at 11:58:19AM -0700, Nick Desaulniers wrote:
> On Sat, Mar 28, 2020 at 6:57 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > I also had planned to provide a single switch to change
> > all the tool defaults to LLVM.
> >
> > So, supporting 'LLVM' is fine, but I'd rather want this
> > look symmetrical, and easy to understand.
> >
> > CPP        = $(CC) -E
> > ifneq ($(LLVM),)
> 
> Yes, a simple if statement is much simpler than the overly complex patch I had.
> 
> > CC         = $(LLVM_DIR)clang
> 
> Do we need $LLVM_DIR? Shouldn't users just have that in their $PATH?
> 
> Also, I think we need to support suffixed binaries, as debian
> distributes these with version suffixes, as Nathan points out.  Or do
> the debian packages install suffixed binaries AND path versioned
> non-suffixed binaries?

I think the idea here is that ultimately, the suffixed versions of clang
that Debian has in /usr/bin are symlinks to binaries in
/usr/lib/llvm-#/bin; as a result, a user could say
LLVM_DIR=/usr/lib/llvm-#/bin/ and all of those tools would be picked up
automatically. I am not really sure what is better.

I'll try to have some other comments by later today/tonight.

> > LD         = $(LLVM_DIR)ld.lld
> > AR         = $(LLVM_DIR)llvm-ar
> > NM         = $(LLVM_DIR)llvm-nm
> > OBJCOPY    = $(LLVM_DIR)llvm-objcopy
> > OBJDUMP    = $(LLVM_DIR)llvm-objdump
> > READELF    = $(LLVM_DIR)llvm-readelf
> > OBJSIZE    = $(LLVM_DIR)llvm-size
> > STRIP      = $(LLVM_DIR)llvm-strip
> > else
> > CC         = $(CROSS_COMPILE)gcc
> > LD         = $(CROSS_COMPILE)ld
> > AR         = $(CROSS_COMPILE)ar
> > NM         = $(CROSS_COMPILE)nm
> > OBJCOPY    = $(CROSS_COMPILE)objcopy
> > OBJDUMP    = $(CROSS_COMPILE)objdump
> > READELF    = $(CROSS_COMPILE)readelf
> > OBJSIZE    = $(CROSS_COMPILE)size
> > STRIP      = $(CROSS_COMPILE)strip
> > endif
> >
> >
> >
> > I attached two patches.
> > Comments appreciated.
> 
> I'm not sure the second one that recommends changing cc/c++ is the way
> to go; I think it might harm hermeticity.

Agreed. I do not modify my host system at all for this project, just
relying on PATH modification. In theory, we can still override HOSTCC
and HOSTCXX but that would defeat the purpose of that patch.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330190312.GA32257%40ubuntu-m2-xlarge-x86.
