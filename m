Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBFNQTWAKGQED7PBZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 55178B540C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 19:23:17 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id m21sf1119055uao.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 10:23:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568740996; cv=pass;
        d=google.com; s=arc-20160816;
        b=hF2sx+z10mFzJVdi5ti1DcXyUJatPhNoU4/9wZo/a7erNO9oW8ZtEG92ODTrn3ZqdT
         BpMj8H8Oby5hJ/B1d+Gn4/TWX0JxsBnfPh+JKogrdeomqDN1yFwH6MBiexmV4m6ZPllJ
         egetAki50N0aiaYDRrlAZN1mm8PxQ0sRo2tLeoL9EPjtirN8RIbZHLNK5Z41QkdaOj1G
         MTeD4V5jY7Yo8hDlW/Qh6g/nKaQQ+7WahjxxxrA5DzBUtfQZ1ELkZ4qQ1YcpVLQ6ufCr
         qos5XwpSRRabP5cmqv72qPbw6jjGLyurhQ7FuAcKeK91JlGfV6/Sy+7NiLCzwC4qsqKQ
         X2ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=gvTSEKWnDp4kSTw6ihCXS18ILarCVQUEFqHkmXPXPvo=;
        b=zNjBnqPErezgnwr43lzTyxRIYym7AkXqTeFGzxFm+UC6gJvH7QECjxC1mOXvqD5SIz
         B4cSzpwISRA3SFNP+8QWrs4SiB6/rWXim7tmQD6OUEv4mlwRH20+AS1/sEc6nkZ4vwAH
         lrUcqCaqrEXXu3SPv1AKJ+azR2S7SwEeqCvFRno/RToVipe588XHExJE6hYN1Xv3XKed
         QCoteSvVZdS0kKJbdGxq+8X+UNVK4sRQ1kM7Hp/o3nU9YhHerZklw9FcCxO8Q4Kxn0t6
         pwhPdxEF2f1IZ+pCOk0q5sxf9jp+fD+79sehKe94Ysx5b1h/2Eo02IAyOe1op4XIQ1ny
         z1ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dSoWqYNg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gvTSEKWnDp4kSTw6ihCXS18ILarCVQUEFqHkmXPXPvo=;
        b=kWbsk5FoJUVpaWShQFpbOOLPq/Pk3vWnjEHXxYV/sgIeRNqnpoTxa3IsqJ9Ehb0xPR
         52Is/m1T2M9YGfZdjJ+r+83VregtS0nKdj62KpgX+hJ3Zkn7lzVp8tX0vUfl4Nr4mhnB
         t+SoQAdcd5WAmDYUFEXaSB1+chbrRKMWmovFEvludMhiGdDto5LRD6okxugNcckxRQLJ
         BFbLsCgga2P32/q37HYYYP4GYhZtavjOlTWX+fWtsdU/4qI0ZokgMEQ3ixRKAJzws/GN
         CsLNCexTSKrE3+I5oQ3Y1NqoqZrZLaPA+IBfclBmy9bGOFE9fsi1bq+Qf5xTjaGQWMEx
         YKGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gvTSEKWnDp4kSTw6ihCXS18ILarCVQUEFqHkmXPXPvo=;
        b=RxnGDtvvuKczis3gtkconuVcIWNMgYISPclWvGuP0ANRe00JubPDd/ojXHDkcbnv4A
         aA2Hd/tIPIZAFRW8OAWYNxuoIismBv3SGxxBZJhPmvcVwNzEqnVZYDKt8sLGU/I/DmgO
         b5xRQkTx+Bsm7q4KQcKtus+PveCfJbcsydY871cCVykFbyV/+LxKyBX58wgyEbFphcR9
         aDI3r6BR9OrEoqV3sPOETNP40UI4qCm5H/mt3Nf5Q3OH3Eb0JY6JVC9Cm+yC2giIPJL1
         OprrwmahLHQuZt9vmYN6QtwDFZCrLcQ0r1yzy/Rc6QiuQVM0ze654iMZYB50B7BVc5Py
         Dg6Q==
X-Gm-Message-State: APjAAAV0DdpjxHqImd17v+CRaAKUOTTHG3QAQ3axuUG8GcGU4EyqYhHK
	CFZhbzcrdI+bLmRrCRkgB6g=
X-Google-Smtp-Source: APXvYqwVa4Kl3SAPBYzwnF3PxOdQYzcCiUKESFP0C11lUIXGJAjgU9dhLcr8CBt09nbbaPQY9l0tWQ==
X-Received: by 2002:a67:2c43:: with SMTP id s64mr2432464vss.94.1568740996093;
        Tue, 17 Sep 2019 10:23:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls235273uai.5.gmail; Tue, 17 Sep
 2019 10:23:15 -0700 (PDT)
X-Received: by 2002:ab0:164a:: with SMTP id l10mr2617077uae.56.1568740995759;
        Tue, 17 Sep 2019 10:23:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568740995; cv=none;
        d=google.com; s=arc-20160816;
        b=c93Je4R04sIvMkkwKwb5NgpPtjRiMde0LwF31pPCHOz7bczYDUSteEMKcbzoIEM79Q
         ZXJYcxeaUHxx13r3fJ9MLdsNhu68tBKBFou5XdlGSYWzlLC2kIbIuVct0nKUAWZwukxm
         grNRoucs99JE9srPN6yOR3W8D3chBnzn6ugd/kRTlkf1bbXu0Co+0esPRqmPbP3xMKR3
         JOHTGB7aVSIJgUK2+IwPqLnQ4X8hie5/QQ6UkuczLQMKSPQIg9qEWU28okDTDwvBiitI
         l+qA3xuQIy+8U9ZqfUD6deMcuYbR3NPYJwNsEykHiamQMdrkflDmy5H2DSdmuE3AOLL8
         ZozA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=sOnNFWIPaWlYxFJKjeD0fTye8Agf3U5f+Xpl1RM1zUM=;
        b=cLUG08K5mo8s1MLUrh0e5ci81+uPqgD2miJjyUwggTuiHM3nkTJTyJyRlWBiOj/AIg
         XiLt49sOhinJlg+iknLVNS6Fnil1n32adevj93W1pcvjnYL09aKNB3+kMoeA0hkAOwGb
         2ZcuQvpmmdzkDcnm2KQakNjXwPg/gy4HlWCHtahL5l2lwcHgLVtaYpzb83jRpGfQezHZ
         GeAYRj+O9SmKEqjr8mNDkXn0ImhcbToPV4UJzSWVWqkhi550bMpTlE5F7SCowupsyyDx
         61yszQN3cSsF5v25HvhqWp2+d+WLT1uTdof6SXOZi2AuEYA13gsVofOzdLei6lqX3BPm
         +H4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dSoWqYNg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id h184si419539vka.3.2019.09.17.10.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 10:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id i18so2350621pgl.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 10:23:15 -0700 (PDT)
X-Received: by 2002:a63:d909:: with SMTP id r9mr4239144pgg.381.1568740994637;
 Tue, 17 Sep 2019 10:23:14 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Sep 2019 10:23:03 -0700
Message-ID: <CAKwvOdk+VUAdDzCMUoyOKtstSKMx1CpyQziWTWQiiiWbeu6W-A@mail.gmail.com>
Subject: Phoronix Tests ClangBuiltLinux
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dSoWqYNg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c
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

TL;DR
"When running 97 different tests across the two systems and the kernel
builds from GCC and Clang, the race was very close. In looking at the
geometric mean, the end result was a wash for the Core i9 9900K while
the Ryzen 9 3900X performance was ever so slightly higher using GCC
over Clang. to build the Linux 5.3 mainline kernel. There's still some
shortcomings as mentioned to building the Linux kernel with Clang, but
it's great that it's now largely working with the mainline Clang
compiler and mainline Linux x86_64 kernel."
https://www.phoronix.com/scan.php?page=article&item=clang-linux-53

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2BVUAdDzCMUoyOKtstSKMx1CpyQziWTWQiiiWbeu6W-A%40mail.gmail.com.
