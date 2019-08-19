Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBVW35HVAKGQEL4VYCWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A299207F
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 11:37:27 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id i70sf2296348ybg.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 02:37:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566207446; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7fQrFAwgoYZQCxtuaw8ih0V9I6++zZWWkj3ROXCwupRTiQip6xX8d1h0tLhbZ7qsY
         TvT7D6+gW0d1FAw3CLiowHSCGa/8wBN/qWlfia5KqvqMIuGee5fdWhpyY91wYBpdfGIU
         cibvhaXnSKghdV/KYLXGuwSjcaY0JdOx5JLyZVLkOPgwyxMXuip8zT2FpeLWVe1r1KKs
         lSgrUaAMcfnaxn1q+1PDQz27PXEJRL3kyktlI/TVBN7adJMUUgijNrwrb9jATJl3Ndg7
         cbXYa4J+lUQhM/urBBdqxSAPrsKjCNHkgDit259J/VS8dMcAkKJ59W8fwRLLouuFkeIe
         ScRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=nM6wrQg0u/YkuawfyvLBkQSNTB3g8YtvhVPfMShXDOo=;
        b=aMTDPaSJo9uHH+vxuHX9RXcyx8qfz35x8hSFfZ8WEfTB8lrLnCSnNGNWYaB/RFFan0
         3fm/bfK7C7sNtmJYn+KiwHW4v1Ez9oZ8aLwlBk+ZirxNMtMIHCYRjpMWPfD05GiUE8ZX
         TyJW1VVMuM3PVSx4x4SgWlQasn3D7p5WyqId4Lj9MJD4XQge6C/hr+7rBi5QSYhzNm4H
         Ub2m4orp3vtsUVDxgRgnpecLUlfTeeBVZePMnz/+ZmvkAHwOnaEEQPDbsdx7XRsHMaV7
         Qx6KgSE3SFOOib3DXFrRcDRc5Z6TORrVdh862sP6HOEM7/N3iEZc/1RG9YMpllkGq90H
         Xg0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IheZ9hmv;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nM6wrQg0u/YkuawfyvLBkQSNTB3g8YtvhVPfMShXDOo=;
        b=h8QmOUA24YFabsjFbv26qSyyrC6ECg6oeTn8Lwl8Lkn0ALEm/OT944cjNljQEHiwb5
         5anORwM10Y30a1ZDKivHiTVcWyF6WhZlRLZtcgeRjQQCPblyjApRya13PW6cKful5bRO
         SdhTtGKSNAL2BRtPde4eVHVbCX9CKUftjLBsoDCkMzLCymapwbsjbVe8MfK3WtziaWEk
         j+MW/pSBp+URnRik8xtes/4wyaTSQxYPc88aPH7HsJanyG9SH7/JLnXQ4reOCQbBEyWQ
         Bc15/+RiFbykEOzja7kVu+LrBIv0/r3u5HVEglmvk4UAHRtiGVhrlO9D+jgUjJIiJwXi
         6cbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nM6wrQg0u/YkuawfyvLBkQSNTB3g8YtvhVPfMShXDOo=;
        b=WBePsnwLL2AKZkshIDyxaPpPsfi8F0CLdIzczQZ3vBsB3OqDqR20bp5FRo+Dm6Up/l
         ebB4AdyeK5Vg8FxXC814dP6eiFESGTnbRxzP5MOzHGnYjQdQwFgIkRtidYsRF7h/2vjc
         J/lOAJd2QpcRv3yrZS8AlCxtCG2EiTYObXcBKuZujzaI84QFQJGCIQXYT9azH3QjyiBz
         N1K1KmgR/xFASM82RsXmgGr8qh46SOLcS/63R4MnZFudWPp0veLRQicyxCFT2wJgTEZa
         ASFJqL7/ym+5CFmlemE3mqosnHX2QBRdUQjszqCw4oUoM9t23cERxgEIzJAaaGitQ4XD
         aO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nM6wrQg0u/YkuawfyvLBkQSNTB3g8YtvhVPfMShXDOo=;
        b=WL1Bu+ugPzVHw1sFAr5MKi3EP8J6PBoAepI3cZsM9u/1J3I/Aa8tpK7KT0rZKtp3fZ
         ZVg3zzcmCTlf+8oDwLthB+jD4hzz30eTADkBBYI1Y5+HQCrY4t2ga+xIan3VB1TbtqJU
         8DWuhld0UwZSb7lXSVQmULmHM3AN24pK7CCMZ3pfwuE4/H/Ga+itKqW8k50boofi1qPF
         rrCmH3U20X9dqkSf6PN+lXYcIok1UzGQ+b6KiTIXbtXkh0BcLdobnp7ARTd5NH81xvie
         +yH2tF03IKOxrCH/I5ZeHcqiW0yqABPjsMK+PKLmjDnXY4FuWfboL2pQPibnXN5bBWPg
         S4VA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMCzILn+v8LjGeFz/KTfxdaaSPBgh2O+lBUxdo5opH5HHZvw1a
	Ki38SvU+uGKLkABSuXyJuGY=
X-Google-Smtp-Source: APXvYqydXf1Zltn1Ua1xP5rtwANz2sXh/ncmlnEiawgOP0b7dgJZDY1pDt8qJJB+oYpgzbTysbL9GQ==
X-Received: by 2002:a81:3d52:: with SMTP id k79mr3380631ywa.77.1566207446161;
        Mon, 19 Aug 2019 02:37:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:52a:: with SMTP id y10ls2376069ybs.0.gmail; Mon, 19
 Aug 2019 02:37:25 -0700 (PDT)
X-Received: by 2002:a25:bdcf:: with SMTP id g15mr16458091ybk.365.1566207445887;
        Mon, 19 Aug 2019 02:37:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566207445; cv=none;
        d=google.com; s=arc-20160816;
        b=vFNX0iACiHueZX+iJye17aFMFmCOSTy2Te2tLvJmE9/eLO79QlGSgMuIZbhCS27RGp
         NBW0f/Vh4Yf+nFRO99BvfKSQ2qvg1sfSvARoMJrLeeBxhyp8zOb3xzcEPe3f1UcA+i21
         1YY7FmVhXcsSwI2DhUthZu/CVStBA1UkgcGDrVLCSUrk+HgFP7+R67ULX3er6kJO3Lck
         FsarQlUu2WatmvSZGchfoIOU/B25pKlV5FmWKZHX4L+VxnKCbdQ+V+3jidCOZdmwRNvD
         92kNvDOSXKFfgbtbZ1661+hBb4PMnw6GHnCDJayeqn4QQqeVGP9tLmIUMr3kbGk/fyHx
         TnWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bwkUZIeHMuIrD25RyFEvyLdeBCAor4p3gI0zUtTv6BI=;
        b=bj/cgrDjv5n2uYZjxwnyTE1ZjmccpDqdWqvqHi5CIpSVJG58rEoctdcMtrd3tcAV0b
         8VB0spSR36Us8Z7lvrVLQ46g5PRet6Zy50oZDLD0wRt05lkKxHtvAzzO3LiEJVbd9Irl
         LplWNeB67LbsQRXPxOtmM3FxoygAHGxuz+wn2YyX9gVE1L2ZF24TB0RR8e2i1al1PcPn
         F2neb5JlUDUN21v4DLFEQBtR/whq3AObeoVbfuJAOLnONm7FrGFw9uln6bKJUflH+MtT
         4gD2okv1Cg7MKHPeYo7HfInFsNsmMNTMPh2qUwX8HbyDBxblI7Fzb8LW7Ah5vzpvZObk
         CBgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IheZ9hmv;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id r6si679796ybb.1.2019.08.19.02.37.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 02:37:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id t6so2784818ios.7
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 02:37:25 -0700 (PDT)
X-Received: by 2002:a02:a492:: with SMTP id d18mr26756707jam.27.1566207445349;
 Mon, 19 Aug 2019 02:37:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAGG=3QVfgs24b962DBph0ptnoCh-1DTk4-_=DyDL5EcjBS9Wtg@mail.gmail.com>
In-Reply-To: <CAGG=3QVfgs24b962DBph0ptnoCh-1DTk4-_=DyDL5EcjBS9Wtg@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 19 Aug 2019 11:37:14 +0200
Message-ID: <CAKXUXMzUXYO6jhdeXZDwFBALPZAuiBM2kumfQ4YcSSbiqpEgGA@mail.gmail.com>
Subject: Re: [Announcement] Clang-Built Linux Meet-Up
To: Bill Wendling <morbo@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IheZ9hmv;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

Hi Bill and Nick, hi all,

On Mon, Aug 19, 2019 at 12:55 AM 'Bill Wendling' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> The Clang-Built Linux Meet-Up is Go!
>
> Where: Google campus in Z=C3=BCrich, Switzerland
> When: 27th-29th September 2019
>
> We're happy to announce the first clang-built Linux meet-up 27th-29th Sep=
tember in Z=C3=BCrich, Switzerland!
>

I am happy to join this meet-up in Z=C3=BCrich and meet everyone in person.

> The meet-up is a casual affair with no set agenda. The purpose is to get =
together in person to discuss the project. We'll use Google's Z=C3=BCrich c=
ampus as a central point, but can branch out from there.
>
> Even though there's no formal agenda, if you have a presentation you woul=
d like to give we would love to hear it! Please email Nick Desaulniers and =
I if you'd like to give a presentation.
>

I could give a presentation on our attempt of applying clang thread
safety analysis on the Linux kernel source code.

Best regards,

Lukas

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKXUXMzUXYO6jhdeXZDwFBALPZAuiBM2kumfQ4YcSSbiqpEgGA%40mai=
l.gmail.com.
