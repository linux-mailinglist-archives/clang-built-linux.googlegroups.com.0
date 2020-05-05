Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBXXGYX2QKGQENMXMA5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 377CE1C5834
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:08:32 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id t10sf2592566ilf.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:08:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687711; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHwxjo/gcWAJYNjxuIsTHnVdH6v0FuTbqv5t0lmOMSUPELk/W3/cqY+geHEn1u7X23
         yjkPnilJcGbb465Gd9IqxgZc4OX3UwnDPkxEt+8KODAHcL3XBcGGbAQQFZo9jg4MztV5
         UsBMyB48Iow6I+ScC9KepO1syo9E1KY/nt0UImjYwzJxucUAWMMJB9ggUEq0p7pnh22q
         a5IUhEaEMXzTQYZHVIKQ+q2tAh37xMlVjLbJoA5UWjdyONufsNDz0wnLfKJvzKsjZ8eS
         046MDOilctCcwOmH0FXZQsWfpWJIRKt/0XibGd5Aic9JzEZsG5HRJMJnfwguPNroO/1C
         8MKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YlRbMWJUmOagaJeffBQeWxpR5LiXV8RqdnnJ9hD78u0=;
        b=0CbkaeegUHkFo6lGplhpfkI4A67EiLQ9SIGmvq0SYGFL+AL8JiTMCsSG5LPVSodpAE
         fPLI82G+LZDSs7F5BTtXt9WyJXCQmecs67KW/rZ0OSrInTXDSi4glL4COR2Wt6kxBlmQ
         yrvW5QPLxFdmPI9uEBwb4bRGRy/7gJL7O1telF683MuSuN4gX80Hk+6HZ7aajpIupyRf
         AQiQEyQ9SUndB4q4NKyeZg0HSQ0D93gaA5Qx3vx4c/fQd0Iiy4R22ZrOETnDD0POv8JK
         KzkM/dffyNdhJ56Q7YLeaoG3XBI+Gn+0SiWKLCApbl4zc+tsXBIUC0Nh4nCoqLob45B9
         FikA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0TGtVIV;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YlRbMWJUmOagaJeffBQeWxpR5LiXV8RqdnnJ9hD78u0=;
        b=Id77zskULxVo7roSOg/RVmyQKhwjAFL/kDzRGVWKP7+7R/XZw6K7OUB9KPLi65wteQ
         c3m8D6L0NVgjONx6EpotVFxvTaa2NR0gGZS5S368QhSWa/P8mr964vFhs8pxA34gKOjw
         i1tlDJapz/3aZJVn3PCuPo5ij34knn8+V/Zw6pChoLrNJeCoqGUMMhJbdsmBo9j1t1Nv
         CpPbhla/PH7H18XRujUrdkVC0lFnj7QdElMjwSRluM4h3QXGfhve0NZwFefE5M9Q8sa2
         gEiH1+H736gmpwO+7IPaB4kbba4JBSbux2TweGmP+xEnTyZ+557CXDEKRkRDcr0O8oBV
         Wysw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YlRbMWJUmOagaJeffBQeWxpR5LiXV8RqdnnJ9hD78u0=;
        b=bEoQQW8t1C7iwoxuJ/SVJA8tY6l6CAkjFoLUwPpBZyTjw4QYtEkyB7cUzKLCx9dSxL
         ZqGwmpG6T1lPAX4Qtd32ifQXqSOoEa4EXWH3kRqkOpVioxOuV3QvrXiroZbhJDF06i/j
         Q21Zp1RT8BOcVeklMXBrc3LDoKKOBSeJ1E621aL5of6cJD+C8/MWSdw6e12lwYNhdarc
         CGw5e3d+LZucnY0UK69pHDUdGPb3vBk8/f5klWDVqmd2LtGXVgk339NdvKEyupCQwiH0
         tpA5ox3HZdE1pWiHXZ/zKp6zEna6s6Pb5/wFukaWg4LrcazRcPKXOaaRahgfro8aOpGn
         i5vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YlRbMWJUmOagaJeffBQeWxpR5LiXV8RqdnnJ9hD78u0=;
        b=fJQRmx+xUBL70Aml2dGMAUHJI7wFukgtNPUB0awR7XKHqjAtJ+09OqtApWWnh0htJR
         uUnkIMc7SDER4NKML7DfiTv/CJlkUl2NBd2l1gI+z50zqNjp7TO8eGXBkvxz3uY7tWuZ
         c4QsFkTeIoJRhMxZjmsphLrk4QiTBDNpxq1hR8IXQVkXlafh+tP9WXW8ukXI2nIWuRrU
         U/LY1r32HWp3bhaNtNdMAv0R4mHAYpfg6tjZY3sOP1iivADo31PQYJC9OUilXIMgje5I
         YMJ6sNCMTH+TdRA07mvSbQth7quKJ+w19JqYesI0a5PvHK1g9q028YJxL1oE2c829Su6
         Gi8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua4PO/DF3TuLOqRml+8pjV2AmMP9QhUOXyiYoLnkmlGrNpTaGug
	+JY5Ah6dFRMVr+ZhHn2QNNc=
X-Google-Smtp-Source: APiQypI5fB0vmXyg288FlESt6IPxrw6pwKEstIXbsOaZM5f+1u/SI9/MfGtL+pklrINkDV6i5bEYFg==
X-Received: by 2002:a92:5e16:: with SMTP id s22mr3954935ilb.81.1588687710903;
        Tue, 05 May 2020 07:08:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1494:: with SMTP id a20ls723147iow.5.gmail; Tue, 05
 May 2020 07:08:30 -0700 (PDT)
X-Received: by 2002:a6b:bc85:: with SMTP id m127mr3427774iof.89.1588687710512;
        Tue, 05 May 2020 07:08:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687710; cv=none;
        d=google.com; s=arc-20160816;
        b=WPyqKXwZI8OquUU1bQGcMzaTOXFIwJs5H2vvqHOnupQ/c66zAf6dsFmIrt7bkyief/
         d9GgtB2hf+GLy7OZmdB2jFa98o1EkR4HH4+QVyw5Bc1oas94s2NRkgbL1cg6VAnIJNKW
         DcXCYe6qS8IWdxOwuOU4AIS2e3thk16iQg2+E8/jRJc1Z2KjWHj6nVVEgl8v6bXxtjv3
         SWRRRDAMCnDJ3DnJlbexf+y1BWQl41vHknHsWaJe6G4VhxI/6rAXY6feHjV++H8HbgCf
         8Fly+pvtvSaiBkugjQE0BfJeeRELOHVHKV1gOt9MujK6+OGzYxP1edbw1OIWob22uZRM
         kUsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=F/B9MSZGaJ58+mVfmNmjkyPrZwGf3ULvwrE6DesvvNs=;
        b=gkdyB+fnEe85lkUjhu8jYac+XyYeFIoWnn97IDMQgaGUwP0ESj7UQoZ91YiPoezNqH
         v6ToQXOWP6cbAl2Xo72hhSahoU2/enwUQ5hwvxpcEIhbBX8SFWNIjjFRflO+oV9ehaUm
         u881U5Q2/GejLyk2A3Tfq/PkRu1l12oKbTrdBYXP9ldh0/2ztRecGe056SrqGsxdgkc1
         LsA02nYqN+S+u0YFnHuZBsnfVQ5c0AkYVVnWCwwyBkisnmnLDYl8bztgI+zbmWrhNnWU
         jDukI21ooKc00PGIlAxSxAXacCZA5n0/1JFs3vZ/RCRojJvPvy/ExjDV8+bAh2An8IHT
         YO1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0TGtVIV;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id v22si220512ioj.2.2020.05.05.07.08.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 07:08:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id y6so1170515pjc.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 07:08:30 -0700 (PDT)
X-Received: by 2002:a17:90a:fa81:: with SMTP id cu1mr3332209pjb.25.1588687709819;
 Tue, 05 May 2020 07:08:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200505135513.65265-1-arnd@arndb.de>
In-Reply-To: <20200505135513.65265-1-arnd@arndb.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 5 May 2020 17:08:23 +0300
Message-ID: <CAHp75VfmvXotH+NRt_YnNQW8O38Gas+ZfLH00jfhytM8w7ka3w@mail.gmail.com>
Subject: Re: [PATCH] bitops: avoid clang shift-count-overflow warnings
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Christian Brauner <christian.brauner@ubuntu.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a0TGtVIV;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Tue, May 5, 2020 at 4:58 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Clang normally does not warn about certain issues in inline functions when
> it only happens in an eliminated code path. However if something else
> goes wrong, it does tend to complain about the definition of hweight_long()
> on 32-bit targets:

Shouldn't it be fixed in CLang?

> include/linux/bitops.h:75:41: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
>         return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
>                                                ^~~~~~~~~~~~

sizeof(w) is compile-time constant. It can easily drop the second part
without even looking at it.

> Adding an explicit cast to __u64 avoids that warning and makes it easier
> to read other output.

Looks like papering over the real issue.

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VfmvXotH%2BNRt_YnNQW8O38Gas%2BZfLH00jfhytM8w7ka3w%40mail.gmail.com.
