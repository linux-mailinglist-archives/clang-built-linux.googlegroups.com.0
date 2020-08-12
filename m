Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMNU2H4QKGQERTYHCJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2C6243061
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 23:08:02 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id w11sf4202564ybi.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 14:08:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597266481; cv=pass;
        d=google.com; s=arc-20160816;
        b=BTOz3R9OrsMaKYzuqPtpkugaZxYpx6OCvSErNy92xbER2GrKn4vTzdI3gdm/Nead+O
         /C3lNU0SDF2Hy4mWyDJwy8+QLo/cr7zImIoQJDWSc/F7iAX1lXx7gU0lw9sbveqSANE9
         7o8EPW3BPSZpE+FPYIpikZFG8DS75HPay2yhMiBxvYDq4/P4A0POZaWDeMkEiqNFYWhR
         +VEW20AQe8QJWBF0AWerADROE9/5s5+gYOIR8ET2b9KB9KWHT4nI65EHJfOxUgvU8kYy
         LXpSov3zW5vxp5H2omJVMpVSnvSga5pfH23ecAi48poG7qn7wJfxIMYUU7s4HFOkb+G7
         2/qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=ryd54mUOQDQzlxUc7/NgdYYqmDGJWxBenR9JKi/k9ws=;
        b=QPc4s5RbvPyITM1EMVtarMjPY+J5UP4bDjvcB3HeX94DMJfWaq5kAOeDAhkLCfFPFe
         tBjNaU0JEwDU3tmDomTaPA8VgTLdM8ABLJvvRX0gXCxc7x7JT7SCJnG2q3ZFrrx0Zvok
         JVdWRjLNcsv7bpv2dLeAVmWMFW8k6VS3lkk2KRHds3bYjJPekdr6u+DtT5TLkTjJU9mY
         QjaC3KvI0YJg+MS0Cg1XENcGKI1+Y+tYtLPW4hLvGBzQFJSTFkXqvcwh9Cq6PaPzY7IJ
         9wlVlHKeNfO/o3PsimmdjAZL3mOHZZ3zKm/6ar+XoKLE1+G/HQu6wiJwtjFtCAfynoPJ
         iYpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p+pb7GG1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ryd54mUOQDQzlxUc7/NgdYYqmDGJWxBenR9JKi/k9ws=;
        b=SbpNzYdw2Kv7DHEndEZ1IjD/UsCGgSpHboL4KXHz6HnwmUVjxsoa4US9bdGVSBHCx1
         nghrK+Qy4ltJCdyc6jkwwLDE9BvrSm3RrJT+KRVgkqnCykUXwOg6YiVB4Z4NxPuWquI+
         9myAtsSbcyoTPkuDl1U83pwp+p7DaiS+zECXnRi9S8JHeQ2vBikobrh9EUzSMLGRxl1+
         E4JcELSbVi4ZK7b8Z0MrHOyoGJp8zOoVq/hjVIubGoRnBgkxbv2SzNQXrLFzL5gm1PAi
         x1UVMUmmgHuQJ6L0YvMK+NNJOLDHyXVVIX0dnsVNTyl8FA857nShroZvEpQNV4vyzI75
         9d0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ryd54mUOQDQzlxUc7/NgdYYqmDGJWxBenR9JKi/k9ws=;
        b=eR5AmMCasO5kLHPFpqoR+BcvgV65G6ErsxAn/TFoZJtbmzvbqiiQzhuZDk75qTfYqZ
         bc6aAOI4n96Ou9JwW/M5EepnsPsUMN5qQEel2lBh8diAkPvh+7ObUY8h2PPvyvvljCD5
         x3u8ht31fN/3xQy1S9i6rGCpl/WjKybzwcxzlgzc62rqJTBg2YJz0MN8fv8wtiAWvz1j
         mA9AWCf025wb4/01iiG0HQWNNRDgcRogwSTsT0NX4iqssxUvneK/83s0rLsU5I9a+7uk
         N3Z8+aT31m5POEH5CtrvD3nFmjcbLt22pzQiiyv6u8APSeJsmZBMaNvuKb9RukXiDFZE
         NWVg==
X-Gm-Message-State: AOAM5337nUAcde7Pcq3RZZtEOIar+Tijq+YPy6ADQRxUPYzqb1jUVnxT
	Q0ixBhARBwACPS0AU/ZM710=
X-Google-Smtp-Source: ABdhPJxdrlKkZCAkzQzCPTIL9HBzWXN73IXtPqVqHsQkEOJ/Y8WLiL+ABMrrNV54/KWYI9Jc1KMZEQ==
X-Received: by 2002:a25:8892:: with SMTP id d18mr2100197ybl.70.1597266481452;
        Wed, 12 Aug 2020 14:08:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6cc1:: with SMTP id h184ls1454633ybc.4.gmail; Wed, 12
 Aug 2020 14:08:01 -0700 (PDT)
X-Received: by 2002:a25:5887:: with SMTP id m129mr2118233ybb.11.1597266481077;
        Wed, 12 Aug 2020 14:08:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597266481; cv=none;
        d=google.com; s=arc-20160816;
        b=kg5Et8Spe4qezZstmcsuQ8op8EA5B2aNaj1W3QvDOD5lQWgNJrIj92r8WCuhQ69QCn
         LoxrZeM99IPsto00RCtInYIV8CtWHZTeHYZX/qC05CS0KY6yZSaBD3+kJemyMDV2jC9+
         2QLKFFqWDCVuEp2QV8medUTLs5A6uhFaZAIM4d8PuffRxyarJLUqe6eqi29Cxf2illhw
         EX89bHAHPoOhJRJNkRfiUD/1t/teZfpzA5YkL6JVvdgYeiD+5UiVNTOq3qhFzjxaFe8y
         gGQir9ODlyjZrmP0Fz7+vTuBpEzlQeWNvr3nUOjMKw5qKLTrlNsn3YjThk0v4mvHvjVu
         D2GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=LcD/NfHepjJWJ55EeL7lf3nSN1+pIHGA491xwExM6Os=;
        b=wu03iaVEdSm9wOg0FFXR5W2UeC38uIZ77oodMcs2GngH3ld3KRzDa+r1/LAjeDLhOI
         b48cFhvpHaVYBs33Kh9b9HT/rcduqIoWXuAwwkx4C5fsH7GzaBZV3NVLBxbWCo78Pko9
         ig7qJ4hYAgaJCNneYbxor+eQO+hxC0kQlhXgYjIroo/DRuPYZsyrEEvMKED+MfGDaUz8
         kZoCJn66MA1ACOke35RqXxb1ycpMy3DtYLDK1BLSBGFqlC/Biu2zVJPbyzh8y3/QeF0I
         l2oJ7nZ4qjPldAfeUR/91OUyJtAFG/V8P6rNx0rX6x+QRHlI60shKOUGvi4MfDEF55t1
         1uWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p+pb7GG1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id 7si264911ybc.0.2020.08.12.14.08.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 14:08:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id t10so1646331plz.10
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 14:08:01 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr1763696pjc.25.1597266479620;
 Wed, 12 Aug 2020 14:07:59 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 14:07:48 -0700
Message-ID: <CAKwvOd=_HzS2tmkTgPs=csvjmVv0U=WYsXhhbh-Y_=T9equTJw@mail.gmail.com>
Subject: i386
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p+pb7GG1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634
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

https://www.phoronix.com/scan.php?page=news_item&px=Linux-5.9-i386-Clang-Kernels

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D_HzS2tmkTgPs%3DcsvjmVv0U%3DWYsXhhbh-Y_%3DT9equTJw%40mail.gmail.com.
