Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAXW7XXAKGQEHT5VQ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD5B10C46C
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Nov 2019 08:45:08 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id a200sf17417032ybg.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Nov 2019 23:45:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574927107; cv=pass;
        d=google.com; s=arc-20160816;
        b=HgVqV8w6IXg4z9DDkTIrUPeHPg1KBDAHelm8ORvgLBTPLetpejKOSzIo+OWSKm8thU
         FX9LfyIr74TkUNeSDACDN65ILI79mB4XoTHYTnmqFHIwRA9GvaKNqt+VsWTQhvBv0eEw
         KcjKsATcIkyY0jF1py6AQns22lMBep7QKx6U/yGbq9VgGJdaBIcyQTPiOyp8SSQcUbuJ
         pgILgiIJ/dOt8bQZJ/E6S+Q2KIjqtVXKRksCXpPAo0SZNd2XeQclpNbXoDI263mkG0DX
         p0O+XBluomYSotJRgeSWFVnk6k1hauiCX2W9PeKFWmuGOHwQDQY/wAhsJa2s37aFd/oq
         YWiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=IPysEwSjRriXRjsitn3kkTr68mIQxVe3H9CrvMG2y5E=;
        b=OKQfTsBHb0xlGmXUgAbeQBdKhQwFykQUhFJqLhQmaIqF8UkzW0/Yq9KLp4RN0SGYfI
         ynqlS90VMeZONpfL6CFdFDASTfHT9fO3d7XZWTTpVjEEcRlt47rQul2eRFX8HsRhhU/q
         iM/mrJmkofIr69KotJZgr+/nlUBNPnvif4OZN44X/eaGSYhti7DZvLb1s85y6rXs5p/Q
         rIt1Yaex2L4hrPQkijS4MMuzqizNMnnwXpdwFnib0ml3u6i2DE8dSDmGczkE3kq7cl+w
         SbvU2qzCmXx9ODkXsvNUgGPVDu99j9tjuJXXPGyAEff5GElNgW8lSGe0roudbTCyN2Xm
         RD7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ak2QGyGq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IPysEwSjRriXRjsitn3kkTr68mIQxVe3H9CrvMG2y5E=;
        b=jV3XUwnUPiY4sI7OxxBJPmpWVAHAmUl2r3wZ5BDGdhXMJeBEgJQeg9hvFUa//hl1p5
         cBAsbvumb5nRhCajNxY/6dBNdA3PEtMyMUmsBKfWMTzkaG8ApvYYUC1WfNN7/dLKWNWW
         0xerKW91cvAtvZ3+kJPYIBfTbySv9jckx2a+bkvwl+kU02jpEoWp1MZHqbIUXgUbPzvh
         Z9FCKkjHthMrj/kCNkk+SLc9qG1KMH/iZYhdM2rFTjXp4zD4fYcTO1dQrRt5uTCNedB6
         zXoZw1j6w86jRaci2zylGqt6NGw9SvsLNl/HgaD4DxxuJLZwwmIVuE2TvuQCyRFIimcY
         9Ogg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IPysEwSjRriXRjsitn3kkTr68mIQxVe3H9CrvMG2y5E=;
        b=JwMTRIZOjZAyC+FOyfFOJU5UZlj0ywjZYQZRWk2ckcVRRSvN7MBF786kRHTB7Lf1r2
         LslHhkPxcKiWwe2EoLdJt7thXTvupoEdqR1PnwrEjqKGGEmjgySmW4KPZ0iRKVKxHUZd
         2p2lPhir88xB5brz0ioErCpmzuzYDVP4jaX9DeOkC1wkqyagqdGFgYf8dagsFmL86nMY
         uDo+Rx4rvwwkH0zMNmVjdP7g6nAM2eGNiQkb2h5kGAW+kIrwRd314L0/6+x4YiHIrZT0
         Nd28LOFGti60Qz4bOhH+SZvDT7WYc07MXge9pFT0pbb1C86lejS03jFyfy8jVzRA3YpW
         PekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IPysEwSjRriXRjsitn3kkTr68mIQxVe3H9CrvMG2y5E=;
        b=uP/9/SDH2QoPBEXh+1577qGCPvKr+ndVItjx7cIjJ5gXLDDCUo5algAxeAB/SkamhE
         cxKt2ployGJBAj+kXBUv8Xli9vx2wt7B2im78HK+rDsT6KlIJYbKydkcISwQQjBWDKx/
         VJvR9FDeiSxfTaXo5/t2ThUfZGnItGyIrXXVGXyXOrwZ6cdMiv1s0YWmEGWqpn+pdH9Y
         4W0Dt9c30pO3Glh9ixB6mblf4KBh+erR/722jAAbmw9EM3pU63zMElLqvY8tGDtG0382
         xtGVyGKd3KkD6MpPeauCupZd+p+iGYTACQ6OmjR/8Jzs4M1f/yDGaBUUBbWJUNcjVQ2g
         Sf8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXK/GC/oj0Ra4fPLVqdl8ihK+3M9GCSi+NOLjjlINnVY+dkEA//
	SdU2Mu6Cbs1Wm3vjwo2D16c=
X-Google-Smtp-Source: APXvYqzfggbfIJEN6wqnMtgjerI0n67IH0VjNNoVcqwuqSEdvlK6D8y79rJAl634XC3rOgihJsOXPA==
X-Received: by 2002:a0d:df57:: with SMTP id i84mr6012418ywe.345.1574927106835;
        Wed, 27 Nov 2019 23:45:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9ac2:: with SMTP id r185ls3959251ywg.10.gmail; Wed, 27
 Nov 2019 23:45:06 -0800 (PST)
X-Received: by 2002:a81:a005:: with SMTP id x5mr6321721ywg.473.1574927106470;
        Wed, 27 Nov 2019 23:45:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574927106; cv=none;
        d=google.com; s=arc-20160816;
        b=IsoO1HOgRpsVzdIORGwJoZX6WM8PBbP5NISg4KSTAayhHUBFSg90ilzeNO//yC41qE
         EmpIp/hxwJA9jQVWgj20PCYEvdwpEPg7CBaKy+ct8mf3+Ca/kXTXrbjHjUgwpM1OqfOh
         TzNFoH7khbPo6qZ+yxVyR+yhx/xIukKg8K/Cl677NbVCdiluixSORuodsAViE5IPWsqx
         CgGJN3ZMphKmy5g6SjYrkYF3ALm7z3JsuUc8tbjRtHzgs6wthEFSLaUxIQiug5YZGnnu
         JjUSAPtO53P2jfgmHd5tGXShWRkQPiIDZ3PyNH0qtlIWqZka7K2n/5VfDyqXQDZf1eyi
         PMsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8kiJRE/B/wxbSXxZog9CBfpnC1pt1UKvSf8bBaqAJYE=;
        b=naYy/UHYQgAmBt9l44JuC8FO29vKg9i6jU2hEqwEPtiyDLBJWkb7GiUY5jsZioAWbW
         1fTFMWzmnxegRCO+WghDSSl7l2+5DRr3JeG0QSMrro9mfFzMPintSPLP6NuxEUoSxZZ5
         1KwzOBJHKlopASOhDOoGQj7E31uMStLHbj7NBwCvUev2/851UqsB9nlirU0jPq7ptrfm
         izKULXMtxY4GMSqcI8oqanP2Msn97/GDovlN0dyy1oTWv+RoZjpb9f997388eignnOo4
         txNCWlHx8fEFckVetIWIiNf9yNNgqtxOdCYsTo0GKLi8kU/gWfo7q7ncsMCopq9vAqQx
         YrzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ak2QGyGq;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id a7si294537ybo.0.2019.11.27.23.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2019 23:45:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id x21so15431281oic.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 Nov 2019 23:45:06 -0800 (PST)
X-Received: by 2002:a05:6808:6ce:: with SMTP id m14mr4510556oih.27.1574927105893;
        Wed, 27 Nov 2019 23:45:05 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id w2sm2657096otp.55.2019.11.27.23.45.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Nov 2019 23:45:05 -0800 (PST)
Date: Thu, 28 Nov 2019 00:45:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v5 0/3] LLVM/Clang fixes for a few defconfigs
Message-ID: <20191128074503.GA37339@ubuntu-x2-xlarge-x86>
References: <20191014025101.18567-1-natechancellor@gmail.com>
 <20191119045712.39633-1-natechancellor@gmail.com>
 <CAKwvOd=3Ok8A8V30fccK5UzWFZ7zwG_zvGQV44S2BK4o2akbgw@mail.gmail.com>
 <87v9r4zjdw.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87v9r4zjdw.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ak2QGyGq;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Nov 28, 2019 at 03:59:07PM +1100, Michael Ellerman wrote:
> Nick Desaulniers <ndesaulniers@google.com> writes:
> > Hi Michael,
> > Do you have feedback for Nathan? Rebasing these patches is becoming a
> > nuisance for our CI, and we would like to keep building PPC w/ Clang.
> 
> Sorry just lost in the flood of patches.
> 
> Merged now.
> 
> cheers

Thank you very much for picking them up :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191128074503.GA37339%40ubuntu-x2-xlarge-x86.
