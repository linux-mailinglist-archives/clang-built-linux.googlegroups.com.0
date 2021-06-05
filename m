Return-Path: <clang-built-linux+bncBC53FPW2UIOBBM7C52CQMGQET7NVBWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F9439CA24
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 19:15:32 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id b35-20020a2ebc230000b02900e586a5ceaesf5877801ljf.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 10:15:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622913332; cv=pass;
        d=google.com; s=arc-20160816;
        b=yeOIBz6xr7ZtuAS8AaQpToY5puYRUpQyzLaVRMIFuRiP296SNBMLspsHPRO9uBaNUp
         oOe/XvAiM3kgEPlLtWQhYPtK8uRYT2OF1A0Kw325SdTY9rdaPZscM3Pq832GzILWigP/
         V5OogRU6mti5AUj/PKiqDTnA58kEu2ZugZ+OehOsfj/0QWmWLwbjNYCnt8yF6Zav87w1
         WxzXG5uCQQuj8VW7e4NmansYffYMxjk61WW7PqLmJW88UL9HwrstNJj5vyhtcqqTv8XL
         6iB0IYroCO3ephywWqf/T4tuHZTuMfl2zrys3xjcth7W8GjQxvcxEv4fPqI7ZTIr8Fe0
         6ccQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=DCQWHMMQfsNqY2569H6nXP9QzFQ2qfU7sn3B7nSCeSA=;
        b=fVW8em+y51NW3GuA1MRpYwDToOJSUuWK9ytEckh75To25TyuVobBWrZ+Bm+426foBl
         fFXWY64btv4rArwNYsMh5VtoqzxPEgJNIc6DyzIsaoslWwGPDyQAcgKaMBzQ2Gqz/Udm
         gyxRprwGJVa62FyRpzWIgasxjXC4nNLz32WXXHGBN8FEXxfefVxBiSrymtxRUzRDC9pE
         hMj/g6/A+qouy1o13MJMa8oz/jxgmezGxZZOAbadY279ZQAOADkAEFKgYWmSnebzD/RD
         9FjLEUC1GUNmDlu+AgJy3MlHHeKBQ/KNnE3SVsTpHYTcGIitloP9x+jiCJNYtHdkV+9O
         QLHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MqZfknYt;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DCQWHMMQfsNqY2569H6nXP9QzFQ2qfU7sn3B7nSCeSA=;
        b=bpLi3sx1bm3jMVabHP+UuwjQ8cEJudY3HSiTddilk2V5supWAs071wI1CPBADWvco0
         3ZymFtDcYXJ/q/lLh2H/dLbRpdIgPdo2qwoNml/ZhipHhUzUuo/gvmmP/n+uVI2FSdoA
         rp+lUsQH/uLKhEoAoo9jBxzlPLBvX7xvfQVqsyCjAob5uAqoo1/y8nXzBALzD4upAw/b
         vEzyN4JUQQ50GvrbKNiKlpi5XNMDtxaN7xr/DDTca1r0e2IsjgyDRfW4R6r0RlRPqp7z
         zGJB+Y0Tl8f3Yf7SFO3AKSlO2ug+3wjvgneNXFvGp5efivKMn+qo5l7isHUBsk8VGkn0
         ywhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DCQWHMMQfsNqY2569H6nXP9QzFQ2qfU7sn3B7nSCeSA=;
        b=o8fdNCV83PrExTZPOH91i4vcYsbTGGnwi4SgNbDrPm3WTNekTON3KyxZh0vg1d6WYR
         pmCFNEytJWgxXNe4cFDgVeHDBD4eBQlcwxKkK/idi2JKyyQBt5BrUX2bidlN7D2UJ9x5
         zXXruAPCOAdLqVKecr3kCotxf2cVLDRCAIS5E8NX5tBqgyb4Kw3Ko1MvoVGamTOVxXSA
         NbWnP9BaM+oFNCGf9oHPoz83clX4T145QSkyeK7ajV34Yb6WgOpc6RTVimPaLHOomSJp
         UMPlZmQEU5rJEGMSUL73jtDX7cHo/Kd/7xmQRhUJlaSIVnJL7Vul+dfUrQA826b/njGS
         v74Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DCQWHMMQfsNqY2569H6nXP9QzFQ2qfU7sn3B7nSCeSA=;
        b=ATuAGzFjduuP4FsDfbC/ABAh4YGTJlschIMJkf8lZdqT/xUnnptyVtrPI+gCpf8rsE
         CBRQH6+eX5mAHWn7AVcsaqM3jT13a7nRJzlg/JbsWsi9DSbWLVn/P/xEFNLMNgSzTnoy
         AOmZYaaiBVrjN3haMtjMdHTk0k/6svdIHfI6T2YAPNqMFEj/dO1c/iZqlvAe2yfMNbgD
         8IFi7jtOP3xDudCOQMCzAbu9EbYtQSwoCaS+48BrXpea2H30VaO7AcqAt5h/N2b+1BfZ
         pphG8hi3UCUspgnjrW5R1EyuBtCeI1x+FHc6F3D+wH8plui4Kxu5u+u8gPYh1GzTUzV8
         76PA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HepUTq+sVhRWms1QzBlhTc+lH43u3/GHfh1v3yMqFePq6z4KC
	BgSKP4grC7ABy0ajGrkOAVM=
X-Google-Smtp-Source: ABdhPJzDJV8kUg/GCedhZMsbkFSsQ9sTAHmSDfSrLsjnXihX66MJOEyIUFw0btDN4K14u4CJJ67fEQ==
X-Received: by 2002:a2e:7f16:: with SMTP id a22mr8211103ljd.360.1622913332215;
        Sat, 05 Jun 2021 10:15:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls2324262ljm.0.gmail; Sat, 05
 Jun 2021 10:15:31 -0700 (PDT)
X-Received: by 2002:a05:651c:157:: with SMTP id c23mr7718761ljd.393.1622913331068;
        Sat, 05 Jun 2021 10:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622913331; cv=none;
        d=google.com; s=arc-20160816;
        b=fl2ZjK1/dPuT+9iy7KvkKQqVmUoe1xbpMqyFhMJN0dorirIV/+a+Mp0ljmQXTeKNQA
         QYjZ2hxkvFNsl8gKpSw9TlqaHbKVpkvcwUTYHpADXdWWsiWqlOfoQhRd/h6o/SIqgMoV
         Tap4smeit0nK3eSaLvb7DOcq/j4XU8Qr4ouLL4ORM45+fnXbO53LFhJcf2Fpk1ClCkCd
         Bxu/t5UutgijxKjlEYv6fCR1ICVX8Q+3eth9TAzhpXz6XN926szAwZczaa1OCQWiZs5Z
         dqmIMGwO0xN5FBPP+foxNQ2iEbqjynik0dT+dR0WBSNOB+hrE3Es9bWTTB9nqpQMVQHU
         Oxjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3r8c/PTMZwMqkgH83feAIels2f8yAyQNtEiVpRoaizw=;
        b=VNxckDT4g1u6Alv+KVCPEAplupGNAPXnPfibMCGTNyPdaQxBacczEWC5p4HpgYO7K5
         WWpUovA7ZfdGJbl6+VSWXoz2zOSOG28tycVH/1dv04eLrdqa14YLzmHuYqWQOwx2v+Rv
         ov6JpXNmcycpanDOZEda8vVbgsPZgKHZUgLyX3M+tUuTTjJtEnmOojpuqLNot57wrWPd
         lSGze0pdJ17FUN15bOkg/5NNevVpvchwsh7Kq60oo9TD/++bFE9Nw+c+XvC2ikBoHJus
         b+LNKJenZ8/BtX9XzZJ6SRjSXfDftxe7ZOUQ2erW6McTkm/Dy2Eaz/TNwzdH4lJPjrcm
         bY1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MqZfknYt;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id d11si444045lfs.2.2021.06.05.10.15.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 10:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id 131so15864001ljj.3
        for <clang-built-linux@googlegroups.com>; Sat, 05 Jun 2021 10:15:31 -0700 (PDT)
X-Received: by 2002:a2e:bf14:: with SMTP id c20mr8081405ljr.57.1622913330897;
        Sat, 05 Jun 2021 10:15:30 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4ybp09ts--z5-7ry-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:2cf7:60ff:fe99:fedc])
        by smtp.gmail.com with ESMTPSA id d40sm99630lfv.102.2021.06.05.10.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 10:15:30 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, morbo@google.com
Subject: Re: [PATCH v3 1/1] pgo: Fix allocate_node() v2
Date: Sat, 05 Jun 2021 20:15:29 +0300
Message-ID: <2268220.EOMg9uvDZY@hyperiorarchmachine>
In-Reply-To: <202106041104.929FFB3@keescook>
References: <20210604165819.7947-1-jarmo.tiitto@gmail.com> <202106041104.929FFB3@keescook>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MqZfknYt;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::234
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> Kees Cook wrote perjantaina 4. kes=C3=A4kuuta 2021 21.06.37 EEST:
> >=20
> > I grep -R'd where the memory_contains() can be found and it is only
> > found in #include <asm-generic/sections.h>
>=20
> That's true, but the way to use "asm-generic" is to include the
> top-level "asm" file, so that architectures can override things as
> needed.
>=20
Thanks, I didn't know that.

> > I cross my fingers and await if this is my first accepted patch. :-)
>=20
> I tweaked it a bit and applied it (see the separate email).
>=20
> Thank you!
>=20
> -Kees
>=20
> --=20
> Kees Cook
>=20

Whoa!=20
Thanks, I'm glad it worked out. :-)

Btw. I have almost forgotten that I once wrote code=20
(that I didn't send) for the GCC gcov subsystem that also enabled=20
-fprofile-generate/use for the kernel.
However the Clang PGO looks much more approachable and
easier to hack on since the profile data format is simpler.

So starting to work on this felt just natural to me. :-)

-Jarmo



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2268220.EOMg9uvDZY%40hyperiorarchmachine.
