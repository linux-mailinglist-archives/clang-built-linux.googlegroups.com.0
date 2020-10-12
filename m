Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBZ44SD6AKGQEPECAOOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FE428AF9A
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 10:06:00 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id i21sf6067478ejb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 01:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602489960; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cqh/L8KoL7kXhppEp6/ayRw8xjSHSYw1NCPVjgCa66A570HYK+SEXK9NKX77TI3yMk
         UZ+NcdFEXYqbpOHlPYUh3o7OkaJ7p8baXi+pqtGRxpaU8xr2y7YaYEka2nqigKn6xUlz
         lTeom4GSfs+9gROlfiEDmhtazb08BLxl2//2cHsKE/SDs8ezUYx1xnpQNPrf179KX2oM
         wRnqXKsFcRJz56bt+BWyhQdmfV3SnxmaOju5y5sCP8irWQx8/qb3fNE9qLLbKC+2BqgE
         YCptFjzlbccNNQlcEts3yscB6asWC6IBT4goibYRetKajYbSdirikyHcQoqAJFBm6F9j
         WgOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=AO8a1h1FrxhVn+xX3cRSxkEKfOBJ45y9sMigR9NkI2M=;
        b=u95PDwCPXXNbDpWN1ABvqgRhRp6O+vlta3nb1DspfwduqPyrMbMp+HPcorg57rW++6
         MNfF3SUfNorV1jQVn8NvpAloiuYdXaaypQQfA20yhZzz0OwgRjI26tKM7FpCblwGLsY1
         9AQAMZrswpSSTP2uxIGLtoYGQxgKnV1rpe/7FkZ0cA0H5NdgPCSUy2JwXoKH6vvF1XPJ
         91XDRpCgTnDT9Ta+p4fb70+JkZ1CwZt09opN0qXDhW3Y5ZYi3R7n6082teqewXWPYmpn
         gF47pjmGM5zgvVo0lojbr2ljmJ0lQf/eVyy8JI3f9SihYBey+LsGsfIDZ5pJro5s4NUK
         K63A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AO8a1h1FrxhVn+xX3cRSxkEKfOBJ45y9sMigR9NkI2M=;
        b=VwJrSCr1UJyXmN6n78x7ZF1ZbYHueSKuDue9dM9nHbGMMoA+nDajzB34vCh7iVD0vb
         GXVg4cjqpP27TNAhZGNUZkjIblvXb5C3OOflFQ9LyEkUVs7Xigg4+h5RegLcCuLPjd+W
         ZwFXY9bepZiEjo+AUoLQuCwBe+ySBaH8SxBsiFb5312li71rf4dd7h6erA924kbaksIT
         Psgnv9KexUYthoEZZvTCFCrjdW679TtatwwMNzT3MxrZUgtiNKLW8vED8CsZkI2EtY40
         Vuw6CZLpZmJ68sLjM/FgfRsLxyO/eJG7Wn3EsnB2RzcYfdaNmUquSu27IPazypsS6rm4
         1JSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AO8a1h1FrxhVn+xX3cRSxkEKfOBJ45y9sMigR9NkI2M=;
        b=FaSN96Zh3nGPOcTC5b1GUmvSpSeZi35UjlfTv4ZhQG9dEq6sk3fdWBmORsoe1r6ZFf
         2Ny68bXbQHpQLFsssKtsDl4+6UqKIQTjxR6ZkDYeNhERmJz/0Jtd2JB5OTtbLfZy//1y
         Rzjd/qKLCVrgTo2Emls8AK1giblVf9D2ZPPeX+c3KjeyaqOyhD8zpQx8IczTFZBgzQ2r
         rlUYRB74PU72FBhdCKgw1Lq/S2I6w+KNkbU7adTsIGyxLo4ojh8uBLqmDjVHShA9RTyp
         pCjl5DYV/5QyWC9mrSJdT+x4ZBgZJ92q/8uH3VOHogN9sz5pXTAxst0ssvRrDoS6Zv0g
         RUGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dQYBPyYk98gUFxdKdUAySvsAotqkQgKGnR+Lg+n1TLYyaxPfi
	y684RHINZM1/SmgCr0qyOgA=
X-Google-Smtp-Source: ABdhPJysm7MhJpSzoYh6WTHOPJiYOVVoFeCc34sFPPczR6Hr8m8bRnFazigRB1ALRPLuOgSE1pUpYw==
X-Received: by 2002:a17:906:9394:: with SMTP id l20mr27181106ejx.40.1602489960116;
        Mon, 12 Oct 2020 01:06:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1c02:: with SMTP id k2ls1396121ejg.10.gmail; Mon, 12
 Oct 2020 01:05:59 -0700 (PDT)
X-Received: by 2002:a17:906:4d59:: with SMTP id b25mr8922875ejv.404.1602489959202;
        Mon, 12 Oct 2020 01:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602489959; cv=none;
        d=google.com; s=arc-20160816;
        b=s/ZtFIbqy4N8JULS8qE4XZH8cp+yo9ampJz9rEvLUvoH+HlZFWQylnIxOayZF5p6sN
         0flQjPCTiJs4Ao+YjkxjOzugccsDpAXrjY0h4258r/B8aouTZ4OluolAh8B7YfdNnChf
         JTU/j09EUmqISuogrz5+wH47Y7G1MahJhgMsfStcWsEoxYRWoMmppuLri5aA1AeaiKJ+
         RDAeWEETt2ilZjKPXWeMvt2LjZKNauxPHr+yJv+kp8WOefZAmKge0OlvEwdsoYJkZNLN
         2kYaoiaXdXLyI7NNt3PzLxk5l6kIsb0vgHbxp2ym/U4bcM++INUE4QNxvvqcCID481QM
         K7/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=jESbkNM4mGYnSA2OWbihrjCZu0L12lArbces+4Aj6W4=;
        b=o7c8cr0dMtBztDREUdsAdpMorioJXaFsMUg4Knu05Jb8o2oXbigaU2eAehGyW6MYZp
         88WKqQysp85+Yg8rnIYjVarX8hdrdfEFxbJs+Omiwf1akaBNNv5ReaJwotZIsh1wWiyG
         8Kms02iH1FQLVGXGSu7DaIkvWGy6QAuqU7IiOaqk9NDxAuXJ7hs/QfytDmJ83Y6tABQT
         v9O8+xNujF1zxcExbzBtvfOwsr0xGMGYKchZIcolSWnU9Z99MUQp8Xs+p5iaxRMJgzpT
         Nr7Pz6fbZprfbHbTx/yARpVyxMZzajL8Gg3/tHD+6k4dM/+jAc2PFeDnfB5wS1VsTaCj
         mH4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id u13si229123edb.0.2020.10.12.01.05.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 01:05:59 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-lj1-f182.google.com ([209.85.208.182]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MtfRp-1kCOzZ2vjL-00v7Ko for <clang-built-linux@googlegroups.com>; Mon, 12
 Oct 2020 10:05:58 +0200
Received: by mail-lj1-f182.google.com with SMTP id a4so16003941lji.12
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 01:05:58 -0700 (PDT)
X-Received: by 2002:a2e:83c9:: with SMTP id s9mr9723391ljh.168.1602489958217;
 Mon, 12 Oct 2020 01:05:58 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w@mail.gmail.com>
 <CAK7LNARRchbhDNUT3paTVpOJYKR-D_+HLzjG-wsOOM+LO5p3sA@mail.gmail.com>
In-Reply-To: <CAK7LNARRchbhDNUT3paTVpOJYKR-D_+HLzjG-wsOOM+LO5p3sA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 12 Oct 2020 10:05:41 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3GP005UEwET=CUSw3aNdbCVoscCm2g0kpJYeKTv7NhjQ@mail.gmail.com>
Message-ID: <CAK8P3a3GP005UEwET=CUSw3aNdbCVoscCm2g0kpJYeKTv7NhjQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Nick Desaulniers <ndesaulniers@google.com>, 
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:ZBSBRQBVlTpCmmteOIf0oVDMHLPRr/qGnaTWkPNCOp6fzNCVtkg
 Ff59qI+CPzXi+OPHPwghFKvcaz//d2csusuWrPMzCue/IHpV+G6n0ka9N4BRm/qmrKg90r8
 3HdeOXwVEhciR90SxJrOR9KuoUu6dIABBUPDmhk+oN/hRnGdPwHoGJuvsHd5QO/IFlh/53D
 CBruhvZ6Y6LyHVj9b6b5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eodUTazRNig=:arnfYRnmN9F+xwv3PK2QBj
 Q9rifWkV/3GTTVXr2tHXmkH7kL1JRLkZTyTZgdr8GZ5kdlEGYslKsNYvURVM+yzAgX+Tg+jeG
 wRrrSPR9LWTHnmpGRhkY0brWoP76EiyU8QeSoCRqsrFXPXsWdLugG/w3yaxhxaCxpe1iexQcS
 +GmQQi2fypFF9pIC07y5fGEtJYJxVOaqvQ8GZMSRgl1aFLiiaSbtmZUmGiDzUwzJa9v9PR8jv
 CXSAFOZ68gxVEbbHa8lWv+kCXzKP1L1ha+wgRKcIS2hnmQkq6EQFowvAE9J61Jl8saE7mOKjy
 GYql07li83z4OGSFZ4iZ5GasFvwCUCaqBzVEwaOcypb1mll8PZAT5tI4IcjNYXRcQA1AIIbR9
 sAXtIbRNlSGDAzRvRzLYSqM8wOEUQIGcHHtMnuFVGQWJrIIuJxjCmGhbpfJzGIsQJW5LRUrLm
 6ZBxuUXfeikyGnyiZKs0pDg2LbJwaUSTbF26EPRZMBJ4HV1y1kocqf+bMTFppxOSe+rwZnq0w
 qmMLFJbFIHDveZzvVGeDpm3f1m+djvFGevapQvqWRfCQOMKLxMNUb5peBmOB8nRmIpx01Ui+s
 KVtxlZqTqAF6XOUHoYZMWskCl2q/XkFueTo0hq1FNUoMrB1mgkuRN0MpV6/ATuaStsvhqp9ko
 4FJPx4eQ8pxewlelNMZAsMsOz7SEa7ZEDjJFbmWlWF2df02WV/odpNrNI//rG0BCuJ70WTpTO
 Igho+qiQqAAP3oGLxqTUYGZ2+mpfvTKaloymK2B6jW/amNymKrRQs4rJKuy7+h2d3G2jIWbIF
 C4tSofDwK5t3WZViyHaP4BhBUCZJnXZ+wcCEHrejo7sbkSAoaymDCQ0jJvdRjpaLj1sY23Q2p
 q7Gh8kSW+2hEQ87rXGzwLLD8M8e8IGUhdpDkhOieVR6AF5zBX4pt/9n3n9SCvsFn6kqmriXS2
 Ug3BL79YEKsnG7zHbPvLGnoqXmeIdKpYq/K59/WxZ6pfwFVg4VcuB
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Mon, Oct 12, 2020 at 3:00 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> BTW, if possible, please educate me about the difference
> between -Wmissing-declarations and -Wmissing-prototypes.
>
...
> Do we need to specify both in W=1 ?
> If yes, what is the difference between them?

I think they do the same thing in the kernel, as we already set
 '-Wstrict-prototypes', which requires that there are no declarations
without having a prototype first. Adding either one should be sufficient.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3GP005UEwET%3DCUSw3aNdbCVoscCm2g0kpJYeKTv7NhjQ%40mail.gmail.com.
