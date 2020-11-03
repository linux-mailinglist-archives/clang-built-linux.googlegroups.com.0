Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBINQQT6QKGQEP3VELRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F102A3F27
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 09:43:14 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id n14sf7533068wrp.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 00:43:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604392994; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHEbzDwmypcgLxnXFUCCczLPNUVKzpU1trf8EbLYtExWW05gZ5stLuAaJjmtKhuW9P
         0lqYbBaAHprwUu/RGKrdQN8IZXiniCYP4rulxZ9du3j3gKDbJJSn1HLz6QdCHx+BZ3GT
         ZlEMyErPWd94h3lxDGuc1OBNCB8tH7u+IbnQDSNGLEA92oW8MbWqaEtiKZXLwrttEXJw
         HNPgRFggfeDZypCzeLEDFqmNQRTD9XeTQQTZ6wbmd50VCx2uM2fqZRkTuXp6W40/jSU7
         ImT6ucMQWQsaInTYuDrVCtEg955NBDP7ZcHIis0Kz4Tzn4Wq2rifKlxJU6YKoNNxvbHF
         zPoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=6PS74DEZwcNMk0GvazDh9Ucneuj23f3mFQAoT3YW98g=;
        b=usPrVZMLCKPKRBhFxRI4il2akHYrEWLJLaEqWfpiaPEvdjsGpL9fHoFPVTLpzzpWC6
         3ZFVuZ81U28iO/6XwfxQrWPoR/ufJ/muQo4DScLSFtWS0VDdA8wLS3WDZ8O+txwsteg7
         1RbOCiy7OT43QPUOBwecX0Gf/aT0dbbtOCdWhinBBtuv5RJyN7k/cY/zkQFMvTv3K1L6
         0zamkWjSyLZGQqdeK21hk9cYMbFS/epG8dztTdXBsdsboJNPXEuwxdfPv167a1pJc/gi
         waSyCFaO2RiRsh5v1iUxnV4gWeKR1/2G4ghea2dcZC4HrTUo/lXV6vtU7tkAe3exOqAl
         hxdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IK3z930i;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PS74DEZwcNMk0GvazDh9Ucneuj23f3mFQAoT3YW98g=;
        b=tOi3bFBe+3NxW9Rw8D7x6pEFVzg6mPLnUHm5XZPHp9ps3ygXgrZNp919pFxtbviRzH
         4Zo5mW38Db17QO1esV2gdAydTOCW4E0tI9bzCD4a5qUs4A3auKE0+SB7Zk7bK2tMSbln
         qwWsBQytprj1MJ4FhMAgSWqm5EzDGfdgE41gKWD8PCnhmCsTWqQNClQO15jGPnuX1avr
         pYi6VviQgMbldwumKPZzBtaqYVtPrxnyLHdInmg/SwWUORqAzhRDKTmkg/Ip4jDov/Ay
         XfNSFMfaB88O4YvSK5DwYwXT6dxhP2w+/u6GbyhJRJ70Wx2P3g9Ko7QX7mr8yAH3mz5o
         SLnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PS74DEZwcNMk0GvazDh9Ucneuj23f3mFQAoT3YW98g=;
        b=CntSCrqwHyaIsqsnzEcsosAOJ102nc4/EH2AEH2wZ14JsBnCC8K/B5+kJ6LvEwP9tG
         hMEaGGS29O0LktK7AKtLy5BFW1iToY0eFaWpLGcxX3QM/7C86Eo6cDbd/NNkWnPT4k7J
         KKaqQ2IiASXFUCB8zIcOdeiXk32CoMAvuszUNqiTFuB8TreFGi/yaIuK3loh8mDJsaRP
         rGDiQF2JkCIoHUtveLMm1dEYTGFygMA9BmfTi68vZx4ll8HUmnuM0v0Het1tLSVJQ42X
         cbd1ac0dPJh2FFyz+LzFEKs3TDJ7jL3pW+zDPHcfOmZKRyJCzUV9R2ANNRyl4myVC1oX
         6N8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PS74DEZwcNMk0GvazDh9Ucneuj23f3mFQAoT3YW98g=;
        b=s/H0sKQsqGN4h20wTgARyiWTuvWzeJe1uZ6AfKHeL+0NzWxijsJTjgzP8+dynwo2rm
         WdbDWttHwK861wMUXxr6XlcvkrcwZTOWVRjzAytENnvoojIwpZ/Ia3yV82XIj5wSe+RZ
         pQ2Pe6rO7A8DhQYsBJAGVmzpc0jVVTJ34Urya2ZWnWYlT24Cijka8k0zL3JRzWn1Njcp
         5lIxuly6aGMXK28w8eLiKoxddTS/uzfdvbUDd3G1hdPAb7XZMykt7D/QJrA+tyDlNiUo
         +YCCQND/E4qBDTJieTaLhGMpjx73YFfaxNjPQeRz7zdGZUP5vzRKtMzIAbDCkRnygf8P
         J4mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o0fPXTbLvXBlQiTgwJHCU6+TPaQTgwu8qbHMl0fTDUxd4jb7w
	4bQLrg4wGVZWUpU1wteqWRo=
X-Google-Smtp-Source: ABdhPJyH+x7xRR7QmauQSvp554lHh4Yb0q5V0XFjrqOxLzk0R6DLzLPydG3Moh1HNLs2sdypk9FYZg==
X-Received: by 2002:a7b:c305:: with SMTP id k5mr2448667wmj.102.1604392994005;
        Tue, 03 Nov 2020 00:43:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4e19:: with SMTP id g25ls484060wmh.2.gmail; Tue, 03 Nov
 2020 00:43:13 -0800 (PST)
X-Received: by 2002:a7b:c2ef:: with SMTP id e15mr2447354wmk.180.1604392993190;
        Tue, 03 Nov 2020 00:43:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604392993; cv=none;
        d=google.com; s=arc-20160816;
        b=fLqNx6hQW6/62G4yoFnIlx3AskvwfIuJCabZcaaHlBgDjjaxHbcHD/X6EJ9nLsQkPa
         3KSXg+4BNhn9nP4sqaOBRo2rFn53FHLRnvIs+gmEbqgkHr2U5UcPS4d6JREvZ2z6cf28
         XkR2nyUGdQ96ZJ/j08pOCvSKY806Qog9bEH7TrP1c3niBPt8QQ+E/3rPaMGvupM2u4Ly
         wbggx88kZ7zbk2V+MXsR6uTuT4w9B6493JeuNNr+bvoLA/c1oKi6ycJHbkO93gEHHmxy
         qzzvwDQSQlaVpmCA3StyRZYIZ1FNxESGYShpOc1rehd9gUgSr1N1kFxlSCeTvOX+L8sh
         Ru5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=eZ78QKU5zhNl2xLl/0nTlqEQQ1NMs6MqfyMY7wLeUDg=;
        b=rN2LH8GwTTexJgFZGiZHM5AwRdSA9zaaiHyI6GIn2nAc62oKg0OIAGxAO0H8L1oKkL
         0Da3DKewyX9cweGLgnTUnOMByXP8vWpjz7R2ZO6BMqdcQNNm92b/eTpXWp8+BUByY83E
         XZWqi2cNb00pxYN3SNthhtjJe1OTXvwQnoi9dP1a8+SbdrN0w2K/PnwO6iV3qTVIitKj
         L47tsTrrpQMnM1pjyGVIbBSq4Eezpu8u3HS/j8ayhI0mkyZWAO+4jhx/p23RqGgb5MWi
         cSpZzSDos7qEoIG+Tc4Y4NOhbcLIcCd5fHIj8ftJPurm6146AgtQdQPmPdcobbew+BK5
         WNig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IK3z930i;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id m5si61112wmc.0.2020.11.03.00.43.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 00:43:13 -0800 (PST)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id v6so21012389lfa.13
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 00:43:13 -0800 (PST)
X-Received: by 2002:a19:8d3:: with SMTP id 202mr6743681lfi.600.1604392992679;
        Tue, 03 Nov 2020 00:43:12 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-17.dynamic.spd-mgts.ru. [109.252.192.17])
        by smtp.googlemail.com with ESMTPSA id c133sm2473422lfd.92.2020.11.03.00.43.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 00:43:11 -0800 (PST)
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Ard Biesheuvel <ardb@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
 <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk>
 <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
 <20201022174826.GS1551@shell.armlinux.org.uk>
 <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
 <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com>
 <CAMj1kXF6EdrJWASQQp57L=3gni6R_pLvZfCaFxCoH=rMRzK_6A@mail.gmail.com>
 <CAMj1kXFMiTSakUGnopb8eWRHTM9-0XM0kDaJvTXWDhRPJ3Vsow@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <f4b4f5ca-2c0c-c1f0-9329-a95967b99bd0@gmail.com>
Date: Tue, 3 Nov 2020 11:43:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXFMiTSakUGnopb8eWRHTM9-0XM0kDaJvTXWDhRPJ3Vsow@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IK3z930i;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::144 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

03.11.2020 10:24, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> Still broken today
>=20
> https://kernelci.org/build/id/5fa0c1a74bdb1ea4063fe7e4/
>=20
> So the options are
>=20
> a) merge my patch that adds 2 bytes of opcode to the Thumb2 build
> b) merge Dmitry's patch that adds an unconditional literal load to all bu=
ilds
> c) remove kernel mode handling from vfp_support_entry() [my other patch]
> d) move sections around so that vfp_kmode_exception is guaranteed to
> be in range.
> e) do nothing
>=20
> Given the lack of reports about this issue, it is pretty clear that
> few people use the Thumb2 build (which I find odd, tbh, since it
> really is much smaller).

I waited for about a month, hoping that somebody will fix this problem
before bothering with bisection, which took quite some time and effort
because intermediate commits were broken, and then with creating and
sending a patch :)

Thumb2 usually is untested by CI farms and in a case of personal use
it's easier to wait for a fix. Hence no much reports, I suppose.

> However, that means that a) is a reasonable
> fix, since nobody will notice the potential performance hit either,
> and it can easily be backported to wherever the breakage was
> introduced. (Note that eff8728fe698, which created the problem is
> marked cc:stable itself).

The performance argument is questionable to me, to be honest. In
practice the performance difference should be absolutely negligible for
either of the proposed options, it should stay in a noise even if
somebody thoroughly counting cycles, IMO.

I'm still thinking that the best option will be to apply a).

> Going forward, I can refine d) so that we can get rid of the kernel
> mode path entirely.

And then improve it using d).

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f4b4f5ca-2c0c-c1f0-9329-a95967b99bd0%40gmail.com.
