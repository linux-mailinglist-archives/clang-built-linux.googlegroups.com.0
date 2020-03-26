Return-Path: <clang-built-linux+bncBAABBHP46DZQKGQEYUWAZUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A09E1937D1
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 06:31:10 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id o9sf2446638wrw.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 22:31:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585200670; cv=pass;
        d=google.com; s=arc-20160816;
        b=P7XiFhOColrH4pojsa1YfnEuKrc+fHqUCqlz2sjVidiVs0FvJIeAl6pndobYbDwqSC
         rCwhvge1HSfsi7qgOqZhVnxeOoHE/pNqFl3b0zSX9j3PVNSxGYwEn3UbmIEKrjy7nrCw
         dc52nu9/YNzxoXAnptWiS4IvCpwf9uxKR2Hm2Goy2xSmiORf/+cKildb51SAkE9IrEKx
         Oolb6YyNB/mWc+Y39lY7tE+UN54qx3jTfSJ4BjMPNvV/62tpa1rddKmZ6zv9pLDRo/7B
         +PP71V35zeKhuX0drbUJ86/Nrnx+vbfazrSYlXBVw2twBfnozoULicb5Oomw2YTfvjKS
         Nwjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:dkim-signature;
        bh=veNV71VwetclRs5NewNOd6U4fsHkWkUN6ozUEDmADfk=;
        b=YFeDRI5h16cBUL+MkGxDQgxcZ7ZJ0homTB5pjsK75VG62nNueeuq8mczmy8VSB9x2d
         Hl9aJGksr4XCADNJjORys+IgIel9h4iAOaGnkiculzRkQ0SOfsXCGRLfUlPIHw6hY5uy
         HEmtJM9xRxHhko3JEu9GYKhV6ORAerdfMzzlOLEdlDOwXqqL6hIMgepm/Fe50qYzREmt
         MPbv5NN36UtKf5QZrKZVzHKGIYN90UurGXj9rBdk5Y/vjuzvql73kd21diGGNMGhhkBT
         5MGwhjP4J40EWie2UkmVvBSQErcbokkCzKaJZJ1Eppptf5yoXoaa1WEWvuAVS/6dcr1v
         3Cvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=s1 header.b=BjynYqeQ;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 81.3.6.165 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=veNV71VwetclRs5NewNOd6U4fsHkWkUN6ozUEDmADfk=;
        b=tAVhiTNc0yGpWCj4IjykcD7WaQhyUCSC7o27ySPs0gWpPxK3VnpjXwTkWcWrSSUb01
         kOQlCcjtSuF+BULiZTKu8BJ5dVW1XahS4dDnVhzq76l4w2n1jNFCBBzVV87hhFk7wMcT
         /h039Y9KMgxHVzESAWCfhrwcg0ZVfCh+hrfsNvrbD5isjQxwB+N58tk/ARYuF4LHcWqH
         gq4XiM9BFX+y295+OhAjbJxgSVjJC0nSQ6wbxnYFbMoHjgQazyjo1m1p96IEzocmPcWM
         t2JvYfnMvGm3aSy7xTQXnboqiSSTH28yXR+cBv121lc1VXacALHZlOssbtT+22BNJFBL
         4bMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=veNV71VwetclRs5NewNOd6U4fsHkWkUN6ozUEDmADfk=;
        b=NTofhuao7F6Ba42ttudbC4RkWcE8UAIBrc/MKBD3Cc39Vq5MI73Z2MD7TdyKyIkda3
         QCIKWPnWhvrK4KDsxWtGfO1MLNrFlvsIaM1/sjrSoJ3JncU4GfWQb2my6t+BV3KUWTtL
         YFbzSrNx0FhkIWScXiYtpXKogLQJ3yRfahIb+RX1gUrKVrW3JLfo3E0788bbKmHyNqNC
         l1MRnZ+EB74v9JZK2FSddChT4HKehyaoocID/UWoi49dDpJDARKrIfzBky9lllK4sGcz
         AZmU5vtDA2jVwCkt68Qe2cFyTnnQquSZIEOPN9DxYI7H8cZ5v94bgz853gzGIt6f1Ha8
         //kQ==
X-Gm-Message-State: ANhLgQ2nnp8MR90Bbv9M5n8JPZ+rTvnU3SDI48/Wvm9+vqckJsmBXiZQ
	IwYpdljBkK2gRY7mKdh+O5s=
X-Google-Smtp-Source: ADFU+vunAZIGM7t4P+fgsYRE1mjvu+aiusxIjX3r9rLYZiRyJbedKHs2nDUHZfHI/Z9boEInSYiRcw==
X-Received: by 2002:a05:600c:228f:: with SMTP id 15mr1261135wmf.140.1585200669844;
        Wed, 25 Mar 2020 22:31:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls2430614wmb.1.canary-gmail; Wed,
 25 Mar 2020 22:31:09 -0700 (PDT)
X-Received: by 2002:a7b:c74d:: with SMTP id w13mr1252757wmk.189.1585200669468;
        Wed, 25 Mar 2020 22:31:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585200669; cv=none;
        d=google.com; s=arc-20160816;
        b=C1lHF974l3YAPhVrCvho6qCkstcIKA2rRXphACe/YBNgwCujtVESF/BMJSs0LAjD6l
         K1Wj/tlRkaT8Zr2OIsA+vsWaIXL0ykNm6tWLS2EUxS0v1ch3dzH4ROcW4oTYy39fxTaI
         IwrxNGNI1oVkRNNDZ/YyWYWrrLrC5GZmJMMFlzpKa3FOWaqf9vVjNRBfFdV6sMYq2kn6
         vAmb2WFpvEzpgdEoo/Nud+znacVj5UaX+CEpR+Bum1Gy8kiwunDSl6YEYB2deWWf0amD
         SXVEyoDvQj5MOwMpe48EVety4yVCHl5JDNG/k9v4wKHVK6EfP986vf5KSKvZJSHmsAaD
         2c2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:dkim-signature;
        bh=cxw13E7jOM8PiFGE+aajg7bJc/SY7tx35Grnzw7FVZI=;
        b=py5u6bIfURPwNeTg+PdXJ6EXsrc5v4YkTDPAXM6++5nBQwDTQ+3uC4RvKyMZyzKltS
         x6ea4f1k1hmx1Q0fI08IdTldZo3yPVlRyIkPN2O/GD9mrXZ6Yp1yu3M0hCJtrKibxAlD
         VCpn5r5G8ekXd5sQAcf3Er0LSaY5mGCHPb8XINpoILEVd3HESMzLGMKh4ONg5K10hdov
         yepcfTxJ7mRX4eQVYT53v0lEfBzuLmSKYLwqjEzSvA1MQestKb6SgzzeIZW6i3jrmxLe
         xtsjMBko+MonMAKF2iakVP8KOJy+OmDcFcEOuKe284mMYFfqUIr7iYTTfJo04MmK2Ffn
         r4FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=s1 header.b=BjynYqeQ;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 81.3.6.165 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
Received: from w4.tutanota.de (w4.tutanota.de. [81.3.6.165])
        by gmr-mx.google.com with ESMTPS id y201si324983wmc.0.2020.03.25.22.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 22:31:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of danny@kdrag0n.dev designates 81.3.6.165 as permitted sender) client-ip=81.3.6.165;
Received: from w3.tutanota.de (unknown [192.168.1.164])
	by w4.tutanota.de (Postfix) with ESMTP id 2CB41106015B;
	Thu, 26 Mar 2020 05:31:09 +0000 (UTC)
Date: Thu, 26 Mar 2020 06:31:08 +0100 (CET)
From: "'Danny Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	android-llvm <android-llvm@googlegroups.com>
Message-ID: <M3KJ445--3-2@kdrag0n.dev>
In-Reply-To: <202003251856.5D568590@keescook>
References: <M2AyAx0--3-2@kdrag0n.dev> <CAKwvOdnN6dEwUQCrdEoiDBnjZxPPHVfYcck0sRqcCujYeRHU3Q@mail.gmail.com> <202003121636.265F4852B@keescook> <CAKwvOd=R-p0bn7K3cp2X=_jk_MqspEynFtBZOX5YqRZkbNDW1A@mail.gmail.com> <202003251856.5D568590@keescook>
Subject: Re: LLVM Polly optimizations for Android
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: danny@kdrag0n.dev
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kdrag0n.dev header.s=s1 header.b=BjynYqeQ;       spf=pass
 (google.com: domain of danny@kdrag0n.dev designates 81.3.6.165 as permitted
 sender) smtp.mailfrom=danny@kdrag0n.dev;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=kdrag0n.dev
X-Original-From: Danny Lin <danny@kdrag0n.dev>
Reply-To: Danny Lin <danny@kdrag0n.dev>
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

Mar 25, 2020, 7:01 PM by keescook@chromium.org:

> On Tue, Mar 24, 2020 at 03:54:53PM -0700, Nick Desaulniers wrote:
>
>> Do you plan on posting the above as a patch, or were you suggesting
>> Danny dip their toes into upstream kernel development? ;) Maybe you
>> could help mentor another padawan?  (Careful, Sith have this weird
>> thing where the pupil becomes the master and...not suggesting anyone
>> is Sith, but everytime it seems they've all been eliminated, it turns
>> out they've just been hiding "in deep space," which is such a cliche.)
>>
>
> Heh, I'm happy to do whatever. Danny, do you want to send this upstream
> after tweaking of the patch on this list, or do you want me to send
> it? I'm happy to do either. :)
>
I'd be glad to send it upstream as soon as I have definitive results on whi=
ch
specific Polly options produce the best output.

Since my initial message, I've decided that the following combination of fl=
ags
is a better "base" to start with:

-mllvm -polly
-mllvm -polly-vectorizer=3Dpolly
-mllvm -polly-opt-fusion=3Dmax
-mllvm -polly-run-inliner
-mllvm -polly-run-dce

Changes from the original:
=C2=A0 =C2=A0 -polly-vectorizer was switched from stripmine to polly
=C2=A0 =C2=A0 -polly-ast-use-context was removed because it's now the defau=
lt
=C2=A0 =C2=A0 -polly-invariant-load-hoisting was removed because it makes C=
lang crash
when compiling some (Android 4.4, mainline 5.5) kernels and is likely a bad
idea when it comes to low-level code
=C2=A0 =C2=A0 -polly-detect-keep-going was removed because it prevents erro=
rs from being
printed until the end of the compilation unit, likely making the compiler
crash more instead of giving errors

I still don't have numbers for how the rest of the flags affect performance=
,
however, so this is probably not the best we can do.

---Danny

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/M3KJ445--3-2%40kdrag0n.dev.
