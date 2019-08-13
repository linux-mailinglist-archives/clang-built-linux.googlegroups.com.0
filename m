Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBQ7GZPVAKGQEN6SRMWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0158BF9D
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 19:28:36 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id t2sf12472759qkd.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:28:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565717315; cv=pass;
        d=google.com; s=arc-20160816;
        b=bYPjx5yKjzs9GMNvY6x1a73rGkr8ba25cZmqvAASOJ+fUDDOXhtcUs2xeqSJnkq3ZJ
         FGvvule1UP93R0QeErVDKYk0KaaSYrv4vVN2HJoRXXK6hYTNH12CaA3n0RsX0l3LFIsy
         z1SDaAaDVtxK5sztvHV9zRTnDHRQsX8mgZshRQQgQm1ZoJ/u4NaNxyFSOY2NEwRDcREI
         0qSODwsd6VT6raDAZdeu6ljPqx/nHjrWkRuFqQfJAJCFiOBuVjcpRNkKaaToO/CYuIt7
         mbUd4RU0Jx3gY/v8X88NwBa7NvBynSXxjHdsp98XXYNQeflEQV0l8euFQ/FYSbSwIq89
         ZJYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+Cp/hnnRdQZe8lVy0xnyzcqgu2/KH+dCu4N9nbrGIbY=;
        b=vgczRv6ugJ5A0T26qtjQyycoNz6HHDWpb1+xd6d2sVf7zWCARRYAWwpiDcuIibFM3b
         KhyHU0SfuXlytpG8HmlgLRrfeapDOzx2qWzmxV3cKdmo/mp/q1U9SzG4Xf+46MW2Ou9E
         VlaK5+FAhOmjaQ/xes739LFqxuVGS2ctIKl63vNQJ1LK80ZnSDl4VJMoy4mMUpFHlxIP
         O1caXfYDhiEMxr4hopPxtShXEtHEWW+S6BjhZk/2T/Ta4P3RxH9y+yUkY2/FrQmEwnY7
         ulJxGXfVUmpk2hPTrTFMWKuSlZrQc6So00+lV/coTceWKaSHjcawCME0fVxGi34rQQYU
         WePg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="lqt/2/49";
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Cp/hnnRdQZe8lVy0xnyzcqgu2/KH+dCu4N9nbrGIbY=;
        b=fLnxulWPuY97kL0b2rZ0V69sF7CKKJ3JL7NSYB0m+IR91zwL8oWli7wBRjYfqHsoRv
         cBjG3O1vpTnLpYDmjZe2GSjNQysU+krAL9PAnPYhsBXrsONV6NcrAwVUPqcVsoQ3NX8u
         CuRqv08h4xNn3AucMxJmY89yCT115s69zDunwf5FKg4ycdIPbKEGfMsSFBesP/IVIOhq
         5J94ulwa2M3wcShdV87tCZZSaoHUThUzDruhg3MFJOThhNZu9qSFwYmGdgV08ym9GPLi
         XdQek+cF6K77bJWicYLxeujq3IrobMJx7zQUyTZcFT0eZ3o76HsduMgb9xNd0IAaYjS4
         94qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Cp/hnnRdQZe8lVy0xnyzcqgu2/KH+dCu4N9nbrGIbY=;
        b=T7Ogg5p9uVQE2302lui/ZVNLNyCSaYehRsY2nH/HABJInqC9pFi3LtNERnCgMO6FLJ
         diA3LNSHzPNw/VVnuUy0gATfBbBt7M2SH6EUaIVZ+5h8EUyfOH2mz+LE51mWBDyjR5Gj
         O5uaixXNjxalFUhd0zyxE2DMQ4RT9cDSNCY23A/KTlf23VjxrfSjmhAOt8JYW5EiP1rK
         WWHq4z4tlYzFWxh5uRuZg0iglzAW0DWHGXOkol+JoJmr9SWDVVV5ffBf122/LHc0010E
         nolZFp41GpOuFFYz7pzDNiLfg5Z8RsTupMionSpTGhti91YMHzcG0V7zbtd2NGJHqwS7
         2SRg==
X-Gm-Message-State: APjAAAW9SPSDuaXtSUtHTZ+JleSbCneH1BpGM7BtWQGht4nVERdDdsA3
	WzQugrYyGNIL6/hlOZ7SWX0=
X-Google-Smtp-Source: APXvYqyqh3Hw18yyomNLwZZj9rAIwLIzOTUVkn/87cD6T66NuXRrFeIYZ9ISmlzJDjPxtJ39pvmglA==
X-Received: by 2002:ac8:27fd:: with SMTP id x58mr14928012qtx.112.1565717315738;
        Tue, 13 Aug 2019 10:28:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3149:: with SMTP id h9ls4012152qtb.2.gmail; Tue, 13 Aug
 2019 10:28:35 -0700 (PDT)
X-Received: by 2002:ac8:fc2:: with SMTP id f2mr19049769qtk.82.1565717315555;
        Tue, 13 Aug 2019 10:28:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565717315; cv=none;
        d=google.com; s=arc-20160816;
        b=s9IJcnua4BGbOUOd6y2tB++xR1rTipOMMw39s//GQ+y2n3d3mOst1TzqfrWaYv7k6y
         n+OyVtLx4GHnVLwurxztDr/8zKna9vTY8bTPT1ITnRqrqCi0R/LT2ZSV7RQ5DOkOLAyY
         VeeI7RkrTdFpJvrohs009u6lL4DqgwQQtqun826rQey+Dn0I7n32qZhakQc1NROb+XYK
         CEeiKX7Udd1/jEnyzGmIzT73HqknmmlWZFu5ReAcz9mB4vcf+JzSb7pIREqVmOezzhh4
         UEWTtFmylbkw2PAtWzsJ06sfhfSx28X4nGNzUUeH8Ssc4lbAaDZDbENnInWewPf8Hh6g
         CgYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Yv80EgLntszbP6TTSuSNcZVmW18fS3ZlkdDQEp8VgVs=;
        b=m/MYQYCaSakubdrbqDgLr4Ry9sN4F/HEC0qug/rB3InwIbqjJh86fmWb6hFAEorDSv
         GV8AGLgu0Qjv6ChOyNCkLvvBaQBDxTDQfEtiKEZ4K0HWbnR/o38gaRqGkYID9pSbLL9x
         ahn2I0ZlU/F8oNvtMPd5teUxmVJwvR+8Hh72+Euf2bxoBiH9Mmuh7JJwq1pOMwpENyfo
         796dNb0RbTbvN/YhecXYgkyrVQAKGR6RGlcWr+ddVv7AO8YpjxKHeTe3bW9N9ePxw5st
         UUQOYQRJfRVL2VCx3gvxAEuJCeFGQZjd3rFl9n/v83e8hr/U4stuVe2gN391eqB1KgUl
         Acxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="lqt/2/49";
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id j23si439127qkg.2.2019.08.13.10.28.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 10:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id v38so14754736qtb.0
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 10:28:35 -0700 (PDT)
X-Received: by 2002:ac8:6c9:: with SMTP id j9mr3573806qth.76.1565717315175;
 Tue, 13 Aug 2019 10:28:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190613184923.245935-1-nhuck@google.com> <27428324-129e-ee37-304a-0da2ed3810a0@linaro.org>
In-Reply-To: <27428324-129e-ee37-304a-0da2ed3810a0@linaro.org>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 10:28:24 -0700
Message-ID: <CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow@mail.gmail.com>
Subject: Re: [PATCH] thermal: armada: Fix -Wshift-negative-value
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: miquel.raynal@bootlin.com, rui.zhang@intel.com, edubezval@gmail.com, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="lqt/2/49";       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::844 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Following up to see if this patch is going to be accepted.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow%40mail.gmail.com.
