Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGUM6CEAMGQELLOLSPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 489E73EF24B
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:55:23 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id f11-20020a05651c160bb0290192ede80275sf87552ljq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:55:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629226523; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLn6ClQFQRD7BRwTVtbO5W88rHRAaKhLo5BbiafLvdfOvw8MgMVj0uQ5yt52QhXcaa
         6OlMq/fSoBlNWkr0CH/eanu5WgDOrhOUbRquByc4mZFho3ek7KBYFw9Mm38tk+QmlxhH
         UKbkaBbTdRRGiE1A7uoQk9Dp2U8onDjpfz3aGhHrwSsUZGUugRsqYb8dWZcOmUpYNfEx
         plQMGjsqQjmyXSZiJK57TYBh9H/ZEf05s3wa1Jp7pchgOarMpni6WBsAA+pnbfgo7QET
         ttVJIwiv/uhtxH3agak7NxtPrdfcr6YBCVc26h0T4uij/sCbpPjDEqUoeHZDNFEWj6VD
         7/LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KtCE7lTTed+/PGZJQFU+8NNCgIFgKyD68tuNgeWcF+k=;
        b=cB0QgZI6E/7agl5qppWOwy0CHkej+FKLR1WDGETDtcYHDEiOCSRkalVrQC7n3ayAkk
         sVF0eogPlf2guSX6cHWoQt2QfFrb0gGvtEfvE2gJ9t5ngfRx+tZdORFtlPAt9b7dMrIA
         8sRM1roGKigSehEcf/NUQU7plDYrQYMYMjIfKTK7rqyqxYcGzn7KDpkS3Yx1MxBJzSC5
         2QbxItT2K5o0zvEjO2t4LW/NzCun3wN5erR4ro/U5/5yYKvLWje8q7x56/71QVcizKKF
         a/YNGwrnjJriY3ncRqGlo3V7nxzwqFrrXDKy8WIHAYcDA2fzGhp57dBPep6wvBXPBgOv
         1GKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kQQBKEHH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KtCE7lTTed+/PGZJQFU+8NNCgIFgKyD68tuNgeWcF+k=;
        b=gYPxlacQiKsPA8TkI9SgqnfSnREqOp+v1gop/PKoG7SJ4tZDkP1jHGc+c3i0AaNKjk
         4f2Wxdwn836EriP5vYG22Y8n1tNEa0I9mPGaucPopfEeOX/1wXjMWvLXQO5PUcftnPq8
         521yfU9XYivZpMwKvUBrkAyuxtBcKWdut/RsWOWmkIv2o5tFv6SfZdsKUUF/7JeRRPDc
         F3T9cHd+fnXM1ZpOicryiP23rrrdIhn6BUBx17/ZTGBSnrxuawcoe763N5Pp0NB0MLrl
         M3iVg/vjDcAUewP49jznL8vJi2bNijpsCq+DpmMRq912aQiwQWs+favm1xErGh9Lxrwq
         4KWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KtCE7lTTed+/PGZJQFU+8NNCgIFgKyD68tuNgeWcF+k=;
        b=Pjka6/t2FHCgXL9jbIVw4oFsrE6Jk/hmoHU5JAmu3uAmSkRBHbT3RjVUzbfZyiZRyA
         gXWCO0xCDklFfgcZKL06m+/h1cQTiNcV7YPR06vn10/XaDOQTMiAJ3w1bdSOEI7c0/u5
         oHGhkQdC/eCdLlwusoiiFjBDljHcpIdb0gfRmAxf/0NRLXHPgmkZqDzfNpTlBm7W8Qny
         ffcGUaHnxSsnHVltB+oMKuIvFRC9mOH625+U5uYDpXzekj/0dlvu2VNBQacPJW8+KMVa
         pnIo05kzvaPANUw4B+Z9C2rzMlrfG178nfB1CdKOx/FoL0fyFAno7Fmdx6sbhtRmfvS/
         1/WQ==
X-Gm-Message-State: AOAM530dNWiY5zAzvOryYEf1tB6c3bU+60phtVDD0jz0z7xMdJENjyfI
	3vQjlojAnCcUJlhYEXTNff0=
X-Google-Smtp-Source: ABdhPJzP09Vz9euUt8/yQUvKxzS2FqhRatKAtDyguGrzv8dv78nK8/KhjbCtoiS4vDFPOhTaelz+EQ==
X-Received: by 2002:a05:651c:382:: with SMTP id e2mr1444923ljp.401.1629226522876;
        Tue, 17 Aug 2021 11:55:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls708617ljf.7.gmail; Tue, 17 Aug
 2021 11:55:22 -0700 (PDT)
X-Received: by 2002:a2e:7f1a:: with SMTP id a26mr4417011ljd.183.1629226521969;
        Tue, 17 Aug 2021 11:55:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629226521; cv=none;
        d=google.com; s=arc-20160816;
        b=A7KD1RDnGbBFmRBRpri+1/BO2DOCzf0dhWFHNLFIiqNcHgN8j7PHYKiNn8/qPh4bG/
         tO+eahuj7TFfPqp8VbDpcQU5d4YGCaK4r8/VERniTw8wQNYwGC3tuHSdDeGmWhwNxSdS
         /UUEje4yCQUReHOomZFq3NHSFjNpuELbIPawzBWt08cUawKRT0p1MQ+yToHOpe0cbD9O
         QRmWTv/6fslN59lS0n2X1vi/60e7wRIkHRWWWfz3DxakD5cNKHHyGMmQA1Bn6UIliKto
         nzg5JPcysBG87lOBxgmE8I1T0cEcrlgR0MnthXCU1j35dwK8BY03OUWYwSE8wdBy2dIy
         1QUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=E175HQedQV4pYxwYRI04BWVE0s8W3PZ+miuE8T5Y4+c=;
        b=VOtkf2aQzl394UIPfllKmn9b3QHUKSs6/z5nN6OWOOnQP3Oh8PGfVrGgjb8YeT7sgE
         R7f4XQ8k3XwLJM4LMdKoUNwP8xE7SS2hMSS5HdwIaOQOtgQm908oY/k9cs0fvIF7rRPf
         tKpZDY7QnHh3P17SlalFjHRpQv8+mNl1spCwuDeYEtw4KrzFgxfWu8Z7qbEASjpdJsw9
         5K2kbyFqckFY8VOsu/oebMvM+3N2ii976/gj7KefbH7Q50XOcHkZysQAV0HRwVAR1u+H
         V37bbozBglJ7yqpIYDShgB0nd2cgnJce55pRwneOKUBN7JGPiBlvR/jwG9hHx4LodycA
         WL5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kQQBKEHH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id g13si151886lfv.9.2021.08.17.11.55.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id p38so43434411lfa.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 11:55:21 -0700 (PDT)
X-Received: by 2002:ac2:5f10:: with SMTP id 16mr3320227lfq.368.1629226521379;
 Tue, 17 Aug 2021 11:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <CANJfhHdh5iMPQ5i0gUHf9xiY9-OFcmhjw0eP523uHHXTd-da0Q@mail.gmail.com>
In-Reply-To: <CANJfhHdh5iMPQ5i0gUHf9xiY9-OFcmhjw0eP523uHHXTd-da0Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Aug 2021 11:55:10 -0700
Message-ID: <CAKwvOd=hGyJmv6cN4Xp=3hEboESjckd+Y1oQQPmg0RbRtMbmpQ@mail.gmail.com>
Subject: Re: TuxTest for ClangBuilt Linux
To: Remi Duraffort <remi.duraffort@linaro.org>
Cc: Vishal Bhoj <vishal.bhoj@linaro.org>, Lars Bergstrom <larsberg@google.com>, 
	Stephen Hines <srhines@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kQQBKEHH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

On Tue, Aug 17, 2021 at 7:08 AM Remi Duraffort
<remi.duraffort@linaro.org> wrote:
>
> Hello
>
> In the team, we've seen that issue https://github.com/ClangBuiltLinux/con=
tinuous-integration2/pull/185 that you have with the boot tests.
> I don't like interfering but that's a shame that you have to care about s=
uch issue while TuxTest can do it for you.
>
> Why don't you use TuxTest for this? We would be happy to give you some he=
lp for the setup.
> If that's for another reason, I would love to ear about it to understand =
the concerned that you can have.

Hi Remi,
My major concern is the current lack of resources we have to triage
resulting failures.  Until Google has more resources to pursue
triaging boot+runtime test (LTP) failures, I'm not going to pursue
expanding our CI in such manner.  We have our hands full keeping the
kernel building; boot failures are rare enough that they're not very
interesting, and in my experience when a kernel test fails folks don't
have time to triage why, they just disable the test and run to the
next fire.

I have no doubt that TuxTest is well suited to fill this role; we
simply don't have the staff to pursue using it effectively at the
moment.

>
> Should we setup a small HangOut to chat about this?
>
>
> Cheers
>
> --
> R=C3=A9mi Duraffort
> TuxArchitect
> Linaro



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DhGyJmv6cN4Xp%3D3hEboESjckd%2BY1oQQPmg0RbRtMbmpQ=
%40mail.gmail.com.
