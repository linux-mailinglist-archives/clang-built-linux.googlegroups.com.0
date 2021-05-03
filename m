Return-Path: <clang-built-linux+bncBC27HSOJ44LBBTGAYCCAMGQEO3WQFIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAEB3718EB
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:09:49 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id d29-20020a19385d0000b02901b948cc0e74sf3136108lfj.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:09:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620058189; cv=pass;
        d=google.com; s=arc-20160816;
        b=MTWXPT2gbtZzwHeHBDh0c5U3qAAyEj7uZrrS01u0PXWdhGUXVpzhRKM0Dtclsoh2QW
         +fcwp8BWuKw2Q42sPjfb/BBLmrv+62HwJFqaK4Uu4uNf8ssAAclmcgcLGvt9Z8qb5oj2
         oLRZzOT56z8xygBT/pcIuA4nfkLqiBcHs3MAI8UHrypMiTJrkAhBrxN/7pOv2UykSOe/
         kDW3jCDgMERSbGfQ/bCAm/YgWgKKepC1a0bp/aTSnXWemWNFIaPML/euz875GuM6rDie
         i5kr1DIFiEwEFaxoQDQsB6HZXOM7MMsjlOYPlwUvAH4QgHRlpUiZr2S/FPRdooKI73iW
         PHGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=6q7iVne42/a3AOFJpdHtNl4tb8G2ftt68DabF6ZcDqw=;
        b=0bq6qQrHmMvCETGn8u+BEr/woUkrei13xDR21hJlwCKsaLJnNAge9d1LmzX5Nm2I+J
         yiDlNIBdnCy97GL+Wu6xzxKDMvVoTjKcIbIS0L4pERpfhzezysI0lmIeA4uCuWcfcNn/
         3rSy+t/HEronm1xgoqnCkZyB9KX05F9UdDZ6nD0R3Ltg1r5HrcimEWpqtMoJ3LA0NELk
         4bqFWOI6EOFQl6IfbQFew/Ynfr8PuP7wJoiSfMBDnsZ868zhkX3ossOVrRHUcMF6tO1N
         baijvM9bCuPssJ3K0qUB84UnR4f030K7Ayi4sZpj1BqFfYgHqDoEAEvQgxbK2UlXb7tv
         4nVg==
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
        bh=6q7iVne42/a3AOFJpdHtNl4tb8G2ftt68DabF6ZcDqw=;
        b=S0QcXvq9T5uk+iVp2032TOkLmJzMw7OGXSXnnvS1r0MUPpL3d8fdAdou2aFB+b8d8+
         uBAdxU5bL1yWjYcY1DiCB68u/76gx84SNLMpTU1g5bX9i82cqMKofL2NRchiIwGXjPKu
         WMa1h9xa4N6x6g0+bDxWkIp6WPpVgZ5hjRqN828yMwTjTwlHoQ6JNbXW4v3UuQNwMLvG
         8J+0zMFfaKpm38CTGYelBE1qr90TUBItkVE83CLPmj85kL7hTowRiMQoaJheQ5PRCquB
         alhKWyIflWQVFRvns060IC9CTXN8waJUOSKYsNwPKLDLH6keu+lCch8HFn/pjG3R0ctl
         84uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6q7iVne42/a3AOFJpdHtNl4tb8G2ftt68DabF6ZcDqw=;
        b=sDZOdrGHmQT+57Y5fBFrnz/pYU80JAsR41Hyjr9S5S7DnB7QocLWmIqbLIRMCjOJvD
         d8rzEDKGrsDOevJjCyvPvYk2xWAGfu2ZmO8Xhrf+a4osKUTZUMUmPkGOTsqy/d7hafkr
         B42wax6rWnuMcU9Kb1RDQrMqXpmHShyXNm/FXgad+wYD+CvSN0kBmC3fplj5td16WRvb
         w1u0HATnx2QoD7vh25UXHBj7Q7xNDaJq5j6hQpvFtCp06LO5tQDWCsfw6HllyXu73Nk+
         XUs532zvD5xctPjk6ZyM7EZJH/fgGDxR6Q0/Jt2foK6rqzWdDImUGuJVpqU5uroR9rA4
         Mxag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gFc9YsOnx60IYei1Aqj425eEikjUjfmaU8V12yYD0eNfnxbV7
	mmwE6Vhqm0uN/NlYxDuHNkM=
X-Google-Smtp-Source: ABdhPJxytIv0PBBT1L35iVabrhc2G08pO/CUs1/5cP9nmDQRePdGwg9y6pdvWbBTIxuT4dBfLMzZUg==
X-Received: by 2002:a2e:9682:: with SMTP id q2mr2782195lji.288.1620058189186;
        Mon, 03 May 2021 09:09:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e2c:: with SMTP id o12ls751346lfg.2.gmail; Mon, 03 May
 2021 09:09:48 -0700 (PDT)
X-Received: by 2002:ac2:456c:: with SMTP id k12mr3436401lfm.460.1620058188318;
        Mon, 03 May 2021 09:09:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620058188; cv=none;
        d=google.com; s=arc-20160816;
        b=Bdz+6+ELR4cqkLBYxONsEblBNRsat/XFmHuiteiUDVrEmhdWz0NIuNwKhtO8HxO+wO
         /LPuCGsBnOSLBkTOFXvyfbMgvDryqYYHFuh+/1vQ1hP+sNsu3hNS5+IpadMyBTt4ZVE2
         c61zUwuFzyKMJHc6WWeQBS3QCq+KozgGTSf6je12x9zXYGiE8U+81tPI1G6CEJ70L1sJ
         c8j9le7M43u1kbkOdIz9liZxEjBc4/ddBvc/UL9oNgVsfCpRhxIyjqMIcyJIRMQUlhy8
         FYMo6nFvUgnpZajS9B/BloxAZOhXqjvemA6Z/UP0sZf6FVQ6ZFvP1duwpR1VuDw87Xlw
         h+Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=LqEnXwIxp/d9gXOtxxBMVqDeWQ7K563+VnN+OV7r5/A=;
        b=q9E9XYRBHj1emXGesRsIIScsIS47DhYORKW1dtCTknzOYESzHt4YwM6aH6AZiCpm9o
         phSVlaRtk2Z4Tx1yZvxJM28z8r7i5pXGLTZmVaFKzlybO2Os2JjNSgsSSkguibQ1lsW0
         TKxXEieHV5JAYKd/LIG4tIsektfx/jbd2P6jztRGC1Q2RHp7PHyiq+kZVBZYy36H53Mo
         aj1tOJ2Es22bHTKyE/fTy4UZhs7TVknmZCVr/ZYAvI42KLo2oS6fkTImU/yqpjdssQga
         GQJsEXZGDwCrBUCAsoCF84xY6EKsB8u0M4VbB9lfIRFKajVFLmgRFwJa2hkdYkonctc1
         uHNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id n10si989002lft.1.2021.05.03.09.09.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-255-kFw4Vq1gOwC5lu5CIeuZOg-1; Mon, 03 May 2021 17:09:46 +0100
X-MC-Unique: kFw4Vq1gOwC5lu5CIeuZOg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Mon, 3 May 2021 17:09:45 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Mon, 3 May 2021 17:09:45 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Theodore Ts'o' <tytso@mit.edu>, "Maciej W. Rozycki" <macro@orcam.me.uk>
CC: Linus Torvalds <torvalds@linux-foundation.org>, Tom Stellard
	<tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, "Masahiro
 Yamada" <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Linux
 Kernel Mailing List" <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Subject: RE: Very slow clang kernel config ..
Thread-Topic: Very slow clang kernel config ..
Thread-Index: AQHXQCnxH46G91tEpEmd7WaoBDaEqarR6NJg
Date: Mon, 3 May 2021 16:09:45 +0000
Message-ID: <71e42d2a3c9d415188984f34f602425c@AcuMS.aculab.com>
References: <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <alpine.DEB.2.21.2105020346520.2587@angie.orcam.me.uk>
 <YJAK1C1uLknYGYrH@mit.edu>
In-Reply-To: <YJAK1C1uLknYGYrH@mit.edu>
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

From: Theodore Ts'o <tytso@mit.edu>
> Sent: 03 May 2021 15:38
...
> If people could actually guarantee stable ABI's, then shared libraries
> might make sense.  E2fsprogs hasn't had a major version bump in shared
> libraries for over a decade (although some developers whine and
> complain about how I reject function signature changes in the
> libext2fs library to provide that ABI stability).  But how many
> userspace packages can make that claim?

Indeed. Stable ABIs are really mandatory for anything released as
a shared library.
You can add new functions, and (if careful) new features to
existing functions (if you remembered to check all those unused
fields and flags), but the function signatures must not change.
You also can't change the exported data area.

We've got some simple drivers, they don't do anything complex.
Just hardware interrupts and PCIe accesses.
It wouldn't require many structure to be fixed, and a few
non-inlined versions of some access functions to make these
reasonably binary compatible.
At least to the point that they don't need rebuilding when
a distribution releases a new minor kernel version.

Solaris had stable kernel ABIs.
The windows version of our drivers installs on everything
from Windows 7 (maybe even Vista) through to the latest
Windows 10 (apart from the 'driver signing' fiasco).

With multiple symbol namespaces it ought to be possible
to keep them separately stable - so that drivers that only
use some symbols are portable.

Of course, there are the people who only want to support
in-tree source drivers.
They clearly exist outside the commercial world.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/71e42d2a3c9d415188984f34f602425c%40AcuMS.aculab.com.
