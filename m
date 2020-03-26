Return-Path: <clang-built-linux+bncBAABBHFI6TZQKGQET37MIMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F79194961
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 21:44:14 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id q5sf2611336qvr.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:44:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585255453; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLthWUR6p3MCBPUsYdr/R38t0oDmei3JrjUQxLc8Q2YKy5kc4U+Ix9TNUZCQ/PqqKC
         EznaTvAFfymtoP+Qx3XeAWmRm5sE6Q+usWpJBgY7vczM9ptmJKUVPhl9EUj8aKxnupmL
         8O/n43QHWsHBl9MCfib9i4ccbJOhYfHKU03ZDSnbJbSUNuzRhq1F96Bui2yQ1AUQverR
         5etYaEA4OxTyvzFfv66gwyjAQBymQeRx4nyMEeI3N317EDQtRlPzCdrLDMfA9DTMqQYU
         VMt/rClJELfJy4Epap30Q3bVOwjF748HtKtKPVZVdkwdDjk7gzZVSIWQAJ3R6z/zyxBn
         ptpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ZF05Egp6g30oJMIcu8AjEf4wt0NKCU1wk1asP86XsDw=;
        b=Df85UwvBQhv/DP7SkNwpUkRrIYw5CTP6OwWWOSuoOtzojPYXp4izK4HFJ0XcBtWBM+
         prlOhq1BOGzkEfPzjS+1yI5Z+N8PG7Y6XlxhiVAu2BKz+KgHK4yV/6g1GUxb3OREB7Tz
         8Iv5YPE/D9HjcTX/E66kFsrXT5fDpU9j/zAOecsz4dYTqj1fnpquJbVjInerFiTKIPBx
         b6VgbsqklxZQR2dR2l860bKN9adsa4g9We2HXiGcqrfdcCD15w8cAfQ5c00kab36REbV
         ynIx9I/VtuUNxKZZjPYGA9gqLPwamDZ+UdkwU9fNdBkY3/bvDxNOmZcSzNzWij6DPPFM
         7Ywg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=T0Y1kMBw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZF05Egp6g30oJMIcu8AjEf4wt0NKCU1wk1asP86XsDw=;
        b=qOBI8GoQ2s2x4Nj6PoKwZaMStHGzuneBST3c7LmlNxeKs1RhV0e5V8LR3kdFZqGCIh
         ltuQCrRc2PJ0I72k5lVFM6d/XwXLd6j8IYvfAdtkOnzGkp5NdEtHr2QA8ma3YRNliL0w
         Ciyda2gjFUbynw7znduop77A2xBNnMW5vuUfNDVHj158W4D56/xS0ZwDeQT8hGoMjRth
         oKV5BOtmi6H0TB8jgWhZeKNvjCKbynCGGmJR8wCuI+z2fcErWG81+wPWoZEqU0x3wn0f
         rDClHOviRP/rAn5n0dZii1TW3I5150vo/43EE24dWi1eo0qpsnkICKxjPTurTT6ys35h
         9b1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZF05Egp6g30oJMIcu8AjEf4wt0NKCU1wk1asP86XsDw=;
        b=XiRqknb+J9nrI9M307ELjJ/kvI1/eLgoUJmKO4if1Lh10QiNCgEr8MsnM19cms3PzN
         WRBVVTYve4bucOjYM21ih0LuzJwykQoW3fqQnzTiLuc3DbByrsINml4JZ2WEQkeFkW2c
         olHXdwqf7HC3t6a+iQ9vGrtKDqf/SkrMGw30OLj1Lvrvzw/6Cr4zN8kIm2BRiCklYMd3
         9DDClcJ/Zb7ML2EYlB/fhvWF2KwQTqzYjkYaeYoQ9lXDFY1PkDjIvM0UGFv1Q7W77z2Q
         ECqWudmDF/7+YL9kyUinwECAWIIoyysnqtOk1t7DCvS7ifa5hRqiHZQPfPFYdNgnxEjD
         yqdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1K2Vj/Pioy0tM6tr8zzGvTn2EBFVoCMkkfA0LmWYMXzWa6i2jj
	JKltn1h1cYds6RIS+K27ozw=
X-Google-Smtp-Source: ADFU+vtJz4vFUS20CxscRAQIv59JN9iMidYPIRiUsTRTUEiCntAfl4a/7LbJbMXt5RQvCE31x8OyHw==
X-Received: by 2002:a37:a84b:: with SMTP id r72mr10782677qke.414.1585255452908;
        Thu, 26 Mar 2020 13:44:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:dc83:: with SMTP id q125ls3296378qkf.9.gmail; Thu, 26
 Mar 2020 13:44:12 -0700 (PDT)
X-Received: by 2002:a37:aa54:: with SMTP id t81mr10969431qke.234.1585255452493;
        Thu, 26 Mar 2020 13:44:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585255452; cv=none;
        d=google.com; s=arc-20160816;
        b=WClNIhpmDvZIoxGzXAnkImMwvCT7dHriflHd4SG8eF5vbp1TWTye85kxCkiYEU2nMq
         T0p4s6euD7MbcfwFcGIuA44ByuCjY4OOsuX/F2G93BnvQn2YPHBjFq1A5Xi5VRt6Viy1
         wqJxrkvPyCxV+Pd2bVK5HdqrT9b07AxDvhpChEAqsJxmwK7+Dy6ZQDGAlk5WDD03cDEw
         C7wrh7BfujESuIEFicw/8PuyxrbAdOzxAELHZ7IF7mC9dK8BA/Q9S3b64xt/O2+rXXB3
         /K3ucg9M3vB/+Xbti/m9YleXhk+Fj+QgWFu0fzbQWnGpPmSR9remnerFeUj0dcaOnr91
         3wQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=6HJwRTaLrQez1RAJvnsU1ylf9hNXRZ8k4BSgYFgJ22k=;
        b=lrrWtq1waND62ME5EvfQSvcOsyEQmysempJlPwyI0Talf83OzVgsSc76i43QFIwdiW
         zmkW2wl9Irzppyd3ROrsWcV2wGE2IkSelwH892EZUdGsw7UeIdlyoUWVNt6EhBT/YItI
         v3c8s1xci5RrZvN0Pp9Z14cQ9mscaLFsfEfdJuOmU7gKaSQNstHSLcO9CKNpQ7FOXJxq
         ZxDCpTXQG+7QXUDIEZmBe3QTPv3BznkSoxpXqvjzgNZK/8hfv8cw+q70v0Anboi7HHeC
         qiXlLkXXJ7ghbg8vlgSGq4MMRUmNkTWK1Mm1r2UnDuYSoabEJ32tHa7lIU+3Un5PM32R
         KFEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=T0Y1kMBw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id r14si359035qtc.5.2020.03.26.13.44.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 13:44:12 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 02QKhtVu019873
	for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 05:43:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 02QKhtVu019873
X-Nifty-SrcIP: [209.85.222.52]
Received: by mail-ua1-f52.google.com with SMTP id o16so2696333uap.6
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 13:43:56 -0700 (PDT)
X-Received: by 2002:ab0:2085:: with SMTP id r5mr8287832uak.95.1585255434710;
 Thu, 26 Mar 2020 13:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
 <20200326092213.GA100918@gmail.com>
In-Reply-To: <20200326092213.GA100918@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 27 Mar 2020 05:43:18 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ7-wpm+g=cXeJ01vGrO1nVjfP-ornKm=SXoDEn4x+DjQ@mail.gmail.com>
Message-ID: <CAK7LNAQ7-wpm+g=cXeJ01vGrO1nVjfP-ornKm=SXoDEn4x+DjQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/16] x86, crypto: remove always-defined CONFIG_AS_*
 and cosolidate Kconfig/Makefiles
To: Ingo Molnar <mingo@kernel.org>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Yuanhan Liu <yuanhan.liu@linux.intel.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        intel-gfx@lists.freedesktop.org,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=T0Y1kMBw;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi all,

On Thu, Mar 26, 2020 at 6:22 PM Ingo Molnar <mingo@kernel.org> wrote:
>
>
> * Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> > Very little has changed from last time, and this whole series still
> > looks good to me. I think I already ack'd most packages, but in case
> > it helps:
> >
> > Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>
>
> Acked-by: Ingo Molnar <mingo@kernel.org>
>
> > Since this touches a lot of stuff, it might be best to get it in as
> > early as possible during the merge window, as I imagine new code being
> > added is going to want to be touching those makefiles too.
>
> I'd argue the opposite: please merge this later in the merge window, to
> not disrupt the vast body of other stuff that has already been lined up
> and has been tested, and to give time for these new bits to get tested
> some more.

I agree.


> Also, please get it into -next ASAP, today would be ideal for test
> coverage ...

I collected more Reviewed-by and Acked-by,
then pushed this series to

git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
kbuild-asinstr

It will show up in -next soon.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ7-wpm%2Bg%3DcXeJ01vGrO1nVjfP-ornKm%3DSXoDEn4x%2BDjQ%40mail.gmail.com.
