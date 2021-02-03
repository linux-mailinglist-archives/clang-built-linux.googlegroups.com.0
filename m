Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB56S5GAAMGQEV5XBXCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A2A30D5FC
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 10:14:32 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id z6sf16502290pgg.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 01:14:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612343671; cv=pass;
        d=google.com; s=arc-20160816;
        b=vFVjY1xjpCYODAlbU3JU6apxb4RltcKK7x8/u/Ofqw8mlUIPd3jysLux9XpL9NWNek
         tPI4nlWsyqbB4g/dI+hiCB/xnVWXkTx7X5h+FF8GrQSpdxOLs3uFX0MFrB5gU7Ja39SZ
         kaSbA/o2RDzWkSkrDlC1yRB24jSsLRW0ISKR2Jx3DDaRGKiIuPr95VXxd+avm4GNkr0l
         O9P5mpPbwPpWmUzEnIetuTOTY5m3nJCsnCN4rRDIDr9KHNHGddW1fLvWayUz2p5gGJ/M
         /E1S2RuVyskw5Dl8s4GNixlC54ggWslncGLw6elmcrOgoKiO7CJfsksDoHi/7YB2kaMi
         asSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=efnCu09Mbw1GlHgnwaoeWZ0l4EYeHBPXilnE9uP14vI=;
        b=esrHjkqL9Iq7Q1iHFOHs+d5naBbGvVujI2ig3KiH6R7cIxZJwR5OST/ewbpbMdxS4+
         6B/PeeF/MzwXeiyo/VsKIcJZeNGJiqoHdpHUudIrQ1ImvXWTXrvrVcUdpx/R4E8ECo5M
         g81VOtfx42FGnrcWQnjA+czXWxKaUWt2m17JP6GfEAbl74o7zy3vsveUBNUMpTv3RtgY
         lb0xzelEsLVFz6oyWlJDyJFgiSoBPANuF15XxCymW8zIEM5RApIccZ38LBd9gSkttbo7
         GzJp/e3tQQeqGXTHSB+pJyS9bcitsgbW4YdriP5ddHAZErpgG9Ss8OmJV7XFnNBbTIA9
         Dilg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="f/DE7o+D";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=efnCu09Mbw1GlHgnwaoeWZ0l4EYeHBPXilnE9uP14vI=;
        b=KceJz4ueBqQXBC1lw95AHqvY2RxX474yL3dB/hIj1W9voalgS1Z6k7/TK6IQ86OFtJ
         cYgeXTzASfstdXGIBkymuF27Kk/HB0NhlhhjvpKjoVPmp2LZw+aw11Ddy1NMEjde7fvv
         0KHrJ9mLboTB6NXIX3TJYXTKg/qtiT+yYiJ2M/qv3pRiXHeXGU/jflsMcjSuy+KRrC+T
         vcUaKukdRcYSl8f1khUsngkwpvqiqFOD1jWXeP9mrunERFoN1eZlpQ3TV6w/ap/m9gG9
         4VGy205/ztC/i0Z9BEbSC2/HXeER92WY4E8itXmV6Y3PQubw7JhaMO2wwC8bAptSHUKy
         2TPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=efnCu09Mbw1GlHgnwaoeWZ0l4EYeHBPXilnE9uP14vI=;
        b=Hvb9T1pWL8B7vtWMKOiJrxvb8JYHsCjNWPpDQ3gLpsz/o0TyGgv1r/B6gLGdXMQWNW
         rXwSSxbOyIBtcSaNLYjcZh46wZcekA7+yEM1Gy0DopqDld953voMgQDsn+wfskdG4yFm
         sixfPd4MiTz9LaD760d2pTU6ezciOcxxb6yGV68ogx/V41jUe5uqzS9oot044mRA+wp3
         Mb56wcut2YkXmKGu9g0EOPI9uQl6+OifMm2/k0lLuU3qyvwASHKjDc5UqPxga+OVsDpr
         EUUTg3NxUTmsCqExEa93IS58GZ52p1R3SHEcS6Y5+ynQQefuOedD+t88304Nb+UDs9y9
         BWBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=efnCu09Mbw1GlHgnwaoeWZ0l4EYeHBPXilnE9uP14vI=;
        b=cpMlR00IlCi3aYhsi5BA6lPWasBER1gbsllUcqlVa9QxSAiCx6bbDFjaG1BahoMEQi
         /tbaSz9Hm1udbsYpV8hIQ0QnGenIENoGVYUInTxqG2KGt80cquRTrFWB88SX7z/a5D4F
         ONjkabN6hSdoaMsd6qYFQuywmq6b+LbWnquEZ9UDcNvF+W+c0yB1v5Cg3m6QOgLBLuHJ
         SBOQsOjpxKt3Mjiqh3WUkLlrtXvnMwJ5U7iy1zXPURrhxkAacv2rA6PSxLpeR6kU8wH+
         a2IrZ4J1rO30+0ngxmwOLgNKBAxkcdg5NIDd4en3W9pUEVy/Nltfp7iGb5aNS95EFz68
         af4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313oEGAIlwpbPlX7FASZFmnOQLDuvms1N2K2og+bT2Pc8eyDcTq
	NjAAH5QCgq1ScAUzI63q+wE=
X-Google-Smtp-Source: ABdhPJz6G+lJC5sHkXlXSKVWF1X9LBqFZ1CwXJ4nSt8LbIii/qziBtweiiOoyfKeItWQEvDdzr+sVw==
X-Received: by 2002:a17:902:f686:b029:de:18c7:41f8 with SMTP id l6-20020a170902f686b02900de18c741f8mr2390633plg.65.1612343671143;
        Wed, 03 Feb 2021 01:14:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls698925pfa.2.gmail; Wed, 03 Feb
 2021 01:14:30 -0800 (PST)
X-Received: by 2002:a63:8f4c:: with SMTP id r12mr2559191pgn.311.1612343670545;
        Wed, 03 Feb 2021 01:14:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612343670; cv=none;
        d=google.com; s=arc-20160816;
        b=WhrOiqZZVYV8fs9+ObNHTWflKtpnOTGAAPLHMS1GNBtXtm/4KhtKkns14xacytDO4r
         lU5bjxx9Vjz+ZAKAv8rhZyYueBapad08ohQytyrvKw57ICsIGGbCKthAJiV0J9wVImRf
         LUVdm/7SZChhu7hVMza1JyRGdZw0QzwmmTWId3ZKXY+8F0+9Pbm9WQ5toUbmbtaTMBb2
         O0WHtwqOv4Zzw6uS6vOdRjncUdGtFI9ZeSQcnXbriQTxzlESP4U8klIGS0fcXnWozmTc
         tHCmsoZncrlFB/IRWucGuQZ1p1lMAm6OjYrQIkEA4Wtjl8LFS5I1K2xV4zZPue9TBPru
         QiNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=8yjHvb2yO1BHOwbr9Oy+UC8jLlPgyPwQroP5B+lgb1U=;
        b=VMOOCBqTd4v32rMbnFDh2zaKiVuH6qIxtt3ElXMp5oZPw4KlNzOwETFsXKC2eqlVdv
         k6/idB2dXDx1L4nk6lkIcd8bG+LWZJ+Hs1W1yU81WlGhRYs+wEk38+MvQ8526/f8eLlc
         sneQvDnlTE5duca6bhhtartnKvU4ZDDAzK51qPKSBgUGcORPmgsgvkqaIWjwXioZAUf3
         7CCIPaFLJepaz8kkf040Tc2JKRz6n9H0SPMwc1tVBgSLrbWi9NhtUX+7gAX8gCscGkNt
         7WgIJVMcxFPHxJoMi/8oywnbjD9WIAF+2yBE3KLzcEvbNnDLuIVC+9/OmAzgA9WjQUsD
         gJMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="f/DE7o+D";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id p10si70104plq.0.2021.02.03.01.14.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 01:14:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id y19so24471721iov.2
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 01:14:30 -0800 (PST)
X-Received: by 2002:a05:6602:2f93:: with SMTP id u19mr1723553iow.110.1612343669908;
 Wed, 03 Feb 2021 01:14:29 -0800 (PST)
MIME-Version: 1.0
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Feb 2021 10:14:18 +0100
Message-ID: <CA+icZUUZsyg0GM4f1X2RJ15RqLFSxd50BUzs+JLrvFGTyTZbmQ@mail.gmail.com>
Subject: [YouTube] SUSE Labs Conference 2018 - Compiling the Linux kernel in a
 second (give or take)
To: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="f/DE7o+D";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

Hi,

yesterday, I compiled a ThinLTO+PGO optimized LLVM toolchain version 12.0.0-rc1.

The new LLVM toolchain reduces my build-time by approx. 1/3  - means
in numbers 04:30 -> 03:15 [hh:mm].

While gasping through linux-kbuild mailing-list [1] today I found the
video in [2] about TinyCC.

I wanted to share that video with you... with no comments.

Regards,
- Sedat -

[1] https://marc.info/?t=161222257700001&r=1&w=2
[2] https://www.youtube.com/watch?v=iU0Z0vBKrtQ

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUZsyg0GM4f1X2RJ15RqLFSxd50BUzs%2BJLrvFGTyTZbmQ%40mail.gmail.com.
