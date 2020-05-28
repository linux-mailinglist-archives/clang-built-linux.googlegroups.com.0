Return-Path: <clang-built-linux+bncBCQ6FHMJVICRBWXIX33AKGQELJCCYSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 129A81E617B
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 14:53:48 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id q3sf10710412uas.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 05:53:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590670427; cv=pass;
        d=google.com; s=arc-20160816;
        b=FAKPmxGtc/fs37B55Dwqus4eNnLJ5b9ciHh76jJ6/yFJvA3a+RTFNwa7of+GSTCQVm
         8QjEkBZjG2ZTGW64bYHO2iTsrDfCVkq4X07f5pPHM6u7PBS8gzOL/cBlY0BFwj+omBqd
         PXd8aZoEt8cjasYaeT/DQO6TS24fbPhmG54Zv+he4aPK9qoLJdHo8582RZ0cmU1ziF9f
         dmga7qIo9Xj58inplKEoxrYdnC+G6xkzrQSZX7pG4Yb+5rKpMcIuHw/3SOSsO16zR4JV
         G+ue0uU2KRMX0TnhAQ1tclFNnzY0axaSOZgT+hzatsQ/f34jCaTSn49mm33tjMa6vxCr
         ou6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=yFzj+jB40BSMml823MBwgLEYQeMpxLZPAZWXz4V1xMA=;
        b=qfRo7rgfRubFB4MJlW3cOKcz9wBlZhhDpFwxg9qAIPQcG/5ZxwYMKZLW1D/fw5/d/S
         Lb1BoTVozhEJWahaHzKzv7bnTazcVaWpR4oBvdIBTCXjDLbfAA9x1ohNyyXiEkvvMPDH
         tzKLmBbmo5cLMEk+lhLMk496m3lPBjgkDtyL1HRgRDgeII4ebf0oJ1tIECqVoiY3xCKo
         9+T+QurT+1rlVb3fF3XBkjTXDbytKcXhpQq12dT9kDvSQnsVkwph2I6Z5cShwmwlW5f8
         FZnTyh3pWA9KcievehH3MWn+UNLTMiqnwlLafJXE9IPzs/Ptbi8x+cD4lyOTKCZQnbCX
         XrJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=DqxdiboI;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yFzj+jB40BSMml823MBwgLEYQeMpxLZPAZWXz4V1xMA=;
        b=S/mSziVw5wNwDPJKx11zfq7L+iQnQGXQbOK8Tl3GLMGhDmsD5Gj076/zs05RbzOn1R
         PxeP6iJgJpWKWvlYP3C8i9dRCs1ooWsenxFldOkmp+Zu5h3C7IXW8q5w9fTWynRrsi1/
         3CvJQzXUTedi5hXsjIWTfg6gddtZ7B4keFAXFvs7ke4GxjR/BpMACFmFKGXLhAbcd3+J
         bqc8WgnF2DrR4bpCtk2bZwMysQkvvqJyznptaENnaGnvT2EMRy9jwbWJh3rg/BcSkq4K
         WUnEg1Qzhyr0ATenPK5b9KTQp8zw0CWkyZA3ydd0B417LenDuCiKMFPpDsImdDsUFSfU
         zL/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yFzj+jB40BSMml823MBwgLEYQeMpxLZPAZWXz4V1xMA=;
        b=PM74amaU3DY8Rn2oeQ042QUuv0+zSV8MSxH7ckXnuEj7tRhBxrIWWEyN2qLScChKHh
         aEiXukYD5kHm1oUPP+FxgkGhm7yZC1WUZ3+yDZwjRy9Ww9G2Zf1eKziSRnP/6Ej1Odt0
         hM284w0xI29RlPw2iAps0kvHgpVmavI0yTlAre3l1AgUxNO2YwrHdR2IZi4uM0dwELK3
         C2/VGhGibQRjUT8bj88bNeysS/6PqtBuYoEAVRiOu3QZxPq7ifuoKnlJXGYb/0UBR63e
         7qH04tJOzLmVspwh4UcLDfkstpxC3KpDdrkF0qZv98wVLTvTTsvXHblIWLhp4A4MHjBz
         6w4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GjlZELYZK2NfwquCGf4X2XB8vN93CyBZJ6eEqCh2R+O2KELG3
	a0DCx4jzKOYQiZ3V5iDy1gg=
X-Google-Smtp-Source: ABdhPJyv/Ef2gDO8xv1VaeBYeb0KdXOLh2iu+Feq5gTZOopbRIaH0iNJle8fnoFnuyODas/HRIVtQA==
X-Received: by 2002:a05:6102:20cb:: with SMTP id i11mr1749949vsr.137.1590670426818;
        Thu, 28 May 2020 05:53:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6e8b:: with SMTP id b11ls148749uav.7.gmail; Thu, 28 May
 2020 05:53:46 -0700 (PDT)
X-Received: by 2002:a9f:22c9:: with SMTP id 67mr1835010uan.13.1590670426190;
        Thu, 28 May 2020 05:53:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590670426; cv=none;
        d=google.com; s=arc-20160816;
        b=fdBlPj5Rl6mPwMUp6ohUFsAUy7nyBaCEa2ZTP1mXQMBvknP2J7XBCTVXU1N7Gd+n0H
         ndrhM4DuZ/V9W23KAjMfHAIIIwXbfsKsxw8oGP8BSN3hSKkHDRMdyGjrIZa6slrYj8JK
         frInzgZP07ijVJP2V9/A9dMidddjx2kjf/TwNWBSLrw1MaUK25vlrNR3eJM9poZHXvl7
         vy/+T0xihrRlOhmkWuXyLptd37vWUbeJz9yZ3ubfiXp4+cUPg4QJ52ZZP0o/dmYkZSV8
         q+1fVkzabAUwJAhax1wZvxRIhhsBcS54odTdAly4yhwb/5k63zYjgZ9iFs87huLJcChg
         FHGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=ZBsCj2O8w8xTGzkKezsi4dWXexaPe4MLdXo5AvnuKpM=;
        b=hD0s1JtbQhhDUq1uK/MVQDdbEdFGRk6aKd7g1wdV2xxxlXN5ck3i2Ixfk5SRD8Amhm
         LuLs5u4t+YnaXKdE2tWxGbGtKgXC5/v1SUf7JPzMRhvMs0V2h0EAuhJOtCPatDRLsI+G
         MVEOQLKcaX8JrSKwNWu1S6rvySGfUrWYvxkNXrq/6rfrZqy+HuYUo7YQtm4iuGnCTSgL
         NUVpZ3S2KwT8iBhqIw/ZWqfZuqY37zsWPGbAGgj59jVPUTITaTzJAGh/fm/zTnJI2LdD
         4y64u5wb5zzNks1U1W2vHIqbpy8cTSSu7eGNgfrM8T5pbszEZ7i4czDBgtzeykWlEE1N
         PC+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=DqxdiboI;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id m12si391797vka.2.2020.05.28.05.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 05:53:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49Xngk1GHNz9sSF;
	Thu, 28 May 2020 22:53:38 +1000 (AEST)
Date: Thu, 28 May 2020 22:53:36 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, "Paul E. McKenney"
 <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, Alexander
 Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML
 <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo
 Molnar <mingo@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov
 <bp@alien8.de>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement
 expression
Message-ID: <20200528225336.2defab20@canb.auug.org.au>
In-Reply-To: <CAK8P3a1BH5nXDK2VS7jWc_u2B1kztr4u9JMXhWF9-iZdrsb-7Q@mail.gmail.com>
References: <20200521142047.169334-1-elver@google.com>
	<20200521142047.169334-10-elver@google.com>
	<CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
	<CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
	<20200526120245.GB27166@willie-the-truck>
	<CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
	<CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com>
	<20200526173312.GA30240@google.com>
	<CAK8P3a3ZawPnzmzx4q58--M1h=v4X-1GtQLiwL1=G6rDK8=Wpg@mail.gmail.com>
	<CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com>
	<20200527072248.GA9887@willie-the-truck>
	<CANpmjNO2A39XRQ9OstwKGKpZ6wQ4ebVcBNfH_ZhCTi8RG6WqYw@mail.gmail.com>
	<CAK8P3a1BH5nXDK2VS7jWc_u2B1kztr4u9JMXhWF9-iZdrsb-7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/=gXnD5Mwv9r7w5Lq6vJ+mEE";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=DqxdiboI;       spf=pass
 (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/=gXnD5Mwv9r7w5Lq6vJ+mEE
Content-Type: text/plain; charset="UTF-8"

Hi Arnd,

On Wed, 27 May 2020 11:26:51 +0200 Arnd Bergmann <arnd@arndb.de> wrote:
>
> Right. I think there is still room for optimization around here, but
> for v5.8 I'm happy enough with Marco's__unqual_scalar_typeof()
> change. Stephen Rothwell is probably the one who's most affected
> by compile speed, so it would be good to get an Ack/Nak from him
> on whether this brings speed and memory usage back to normal
> for him as well.

Assuming you meant "[PATCH -tip] compiler_types.h: Optimize
__unqual_scalar_typeof  compilation time"
https://lore.kernel.org/lkml/20200527103236.148700-1-elver@google.com/

I did some x86_64 allmodconfig builds (as I do all day):

Linus' tree:

36884.15user 1439.31system 9:05.46elapsed 7025%CPU (0avgtext+0avgdata 500416maxresident)k
0inputs+128outputs (0major+64821256minor)pagefaults 0swaps
36878.19user 1436.60system 9:05.37elapsed 7025%CPU (0avgtext+0avgdata 494656maxresident)k
0inputs+128outputs (0major+64771097minor)pagefaults 0swaps

linux-next:

42378.58user 1513.34system 9:59.33elapsed 7323%CPU (0avgtext+0avgdata 537920maxresident)k
0inputs+384outputs (0major+65102976minor)pagefaults 0swaps
42378.38user 1509.52system 9:59.12elapsed 7325%CPU (0avgtext+0avgdata 535360maxresident)k
0inputs+384outputs (0major+65102513minor)pagefaults 0swaps

linux-next+patch:

39090.54user 1464.71system 9:17.36elapsed 7276%CPU (0avgtext+0avgdata 520576maxresident)k
0inputs+384outputs (0major+62226026minor)pagefaults 0swaps
39101.66user 1471.55system 9:18.13elapsed 7269%CPU (0avgtext+0avgdata 513856maxresident)k
0inputs+384outputs (0major+62243972minor)pagefaults 0swaps

So, it is a bit better than current linux-next, but not quita back to
Linus' tree (but that is not unexpected as there are over 12000 new
commits in -next).

$ x86_64-linux-gnu-gcc --version
x86_64-linux-gnu-gcc (Debian 9.3.0-8) 9.3.0

80 thread Power8 using -j100

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200528225336.2defab20%40canb.auug.org.au.

--Sig_/=gXnD5Mwv9r7w5Lq6vJ+mEE
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl7PtFAACgkQAVBC80lX
0GwShgf/WE8dBTWi5LGlN07/ZZepqF0bEYhRDibb43csv7ZTlkh/o57GpSMNFz5P
WTFPsP/oiD6mNhZVkuu5vZfNTocZo/r4f5n4CsIF5Tn9PSHVXw8nSYmC9GmLV/+K
LCSNsc6d/TQQRBPY7fSMlSh12NxhQ2nE1LbbxRZpnZT852NnCncBfFsKMGEb1ue0
AVzcq4+iModfjf2dqRJKUgBwpD8VxfBPgV9zjmH3U4BW9NgYVTndW5E/ceXCM6Yd
cOQCADKJP4qWLETMrC4oTiXMwRP5pHjZ7oXOccD7XsKnPWrHLFET8G5KAySIiA9e
Xz7rs85KHwGG5zkogSTDHVkNUkg0vA==
=YOpz
-----END PGP SIGNATURE-----

--Sig_/=gXnD5Mwv9r7w5Lq6vJ+mEE--
