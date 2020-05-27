Return-Path: <clang-built-linux+bncBCX4NXWA6APRBNNHXH3AKGQEZMCAL2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 678F11E405F
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 13:49:11 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id s7sf4833275plp.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 04:49:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590580150; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZS4mQelkr1CqSE73L3WHKSCq3zM/FvCEH3ddjMTxYGYl1p4jjcyrpONNra4j9ZIeb
         n5yK4E9Ft3PvusjtukdBNAZiZKQFEzNaBe5RQyKdx3MXEmRECAStH7EIarmuhDoSCRAh
         GHseY6liXFVu/Sgp1POxqM2mIlM259U92js1eP85dhal/Kd1h4dOuxxpv5xB1p6ZeYfk
         dy86byfZ7HgTo4UAb7hMp949nf84Ve3vkRGu6uBSiLARxjGYUHJ0sbTuGRDQov0xDgK7
         xTmXP8Q8wKYqFpxgLwFpgmR9/3FL6r46E3KiEOPJ2aqNw8KjWYvbQ6jDAvs6hqhD8sUV
         ZrOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=vqdPsZ1SsbMmENpKldjQQoMe/nAhtr0yudpg15VNOvk=;
        b=dLfVxxT5B1q+7XV3FVAcuJuPSBbSWm8K8KNhkbZd1/g/LPVXNl+qTLfrUUyaLOoOR9
         H6xNaJwKyJFXg7+26B5tyU5jvXjshJ6CW8ifpvonRPYuKvk/KiqGmGZA1kileh6x3j+6
         b4ytEeiFBBzpUtSbr+BCZjsCaJLUunuwU753nlGk7+UwuNlUNnWgrFQUA5azy5gnuHi4
         kzjsxniggcJW0jv6gdPjNwHIN7XmFfQhSijiT50TGQHlImI7/rwT5NCBzkY76W7UMDRt
         WvTr3qw+dYg+6DVxfLHAsbF2X5AqXdmw/DrzH7mMlr9iVdV/BF15/y7QomJOoKumKnm2
         om2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@bgdev-pl.20150623.gappssmtp.com header.s=20150623 header.b=idCOZA7J;
       spf=neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of brgl@bgdev.pl) smtp.mailfrom=brgl@bgdev.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vqdPsZ1SsbMmENpKldjQQoMe/nAhtr0yudpg15VNOvk=;
        b=nH+jD4+ARaPHoZgTFnCyiT7pEMcrLZhTxKdhdpJyCDF4JN4E0E4YRD8Gogi1Yf3Vtx
         yLczLGBhYSxr6j2sJ9vP20Wdg87zM8wkkadiD+9lzBr8CeH3ljfSt96GeL5FXVhCDWbQ
         iFzUQjRO471TGbgFbDGsbXmZtpgxDx0hGhD2R9QpRzvjTeZvZ/UHxBAD6481xmvnQACx
         oKPpTDXedtC655Ax70PlXh4cfwHehzBndwkFL4Vo33OJuzH1hw7lRQGrIjuJggUmAIMT
         5OKnKM7kC1oVvtZDRVnwwvPw668eRLH2Y5ixeknX4GofESApjYPMbnm9WU2fAaI9wNTU
         ZrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vqdPsZ1SsbMmENpKldjQQoMe/nAhtr0yudpg15VNOvk=;
        b=Ft6o4wFX3U1ytG1y0DjCwxyaGLso+iNyi9JMkV4QUJx2iMbcdSo7Wyfi3YNLyaYUEa
         QyVsuY7ipU5C3VpQYw7MH/iNWf0MAj/yyrxJ929f6p3V7WUaRgjCpvUgs5WE/9uxHK+B
         ihtPFttooJkTCd9wk3m5X8UzIrvcnTNfOhRTMJI8JTkVdTYrtd8diRulAq9dYo2TXEHF
         GjvqvkQLnKvQOav1oXTNDK/eB+cx5Sc+/QwNx6bpPFrwcmqI4TZ3ULU4rxJcWtCWdiGe
         JS6Gwl+fQxsG5Wgl3Dwq8Ij3nNTlDmksGwPW3OyOCwj4MqIveT5jKZ1bz8az8u02O368
         XXVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XQq/+SL+ZqsP2GkFFfI93rlmD3ND9g0dJahQrHaVKDtU9gXuk
	5TozTd0WOvGP7y8K6WulMTc=
X-Google-Smtp-Source: ABdhPJztojGc5ek+PhWLfZCDQZ19HoAMT1aLplPxMsabqlx/WaNwnpXD+MYAE+YPG7EJ05s05Ju2Fg==
X-Received: by 2002:a17:902:b289:: with SMTP id u9mr5660373plr.138.1590580149723;
        Wed, 27 May 2020 04:49:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:12c:: with SMTP id 41ls6080238plb.2.gmail; Wed, 27
 May 2020 04:49:09 -0700 (PDT)
X-Received: by 2002:a17:90a:a884:: with SMTP id h4mr4822431pjq.82.1590580149360;
        Wed, 27 May 2020 04:49:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590580149; cv=none;
        d=google.com; s=arc-20160816;
        b=euB6a3sYUufYWx41+9PsilHDxByOT+u8p0s3JC/mDGUmmzN48tlFxfMpbmOOJe6wPx
         2M7SB9ioV1Po2M8MxWnrsIolS4jJNwmVqbjmAHd1Hi8Tf2FPgy4Cp/IUDt2ECcSfLRar
         fyB88bmonV5L8tsa7O1xXkwDKhT7z2fFQy4CT5lT0e8acgBtkEdEI51Q17RAX3nzlUJW
         xXkgWrd+iW/evySxA0Andf1TL0x6zs+wTTqlFhSPpyhluC5juBcDhakincs3kfda8bNk
         5kLgna0qkUHqe5PiytywTOXb9XU8rb48bssbA9EflhL3u7xY5pip/eV15jgRszlRXhz2
         eFLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=P8PTwzFzeBrMUylfPlK6w5QdgJqQqN0ShMTZV+S777s=;
        b=fV6C4FzHSkrrcL46NNOXRc+LVJSrsuOZy49uBgs7U1rJN1O5zpIpZfy13sVwUbvBfE
         vQcODfXmpC+9nBlfxWKgIhkPvx+UdgfbV3fqNI1aiTgk29Ukq6wOpgdXTFB0XqG3tGf1
         bJSbvzLHERekFQVdWnjqM7cwDvALjWgN84hsVChGwB/vKoX/MmlvezBgiX8QsiQrGiei
         UyXClYDTBtj/qo1NUY658pMGBiWQkq5QUsArNdARKbKrdksJi3WhfGcEMdXUGIrybSnP
         nxExPa8HqQmguYKJ/xpDsosprJccpCRhNh81sbIubdqe5NmlvtiyMUt5IdkKDulo82tb
         z+Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@bgdev-pl.20150623.gappssmtp.com header.s=20150623 header.b=idCOZA7J;
       spf=neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of brgl@bgdev.pl) smtp.mailfrom=brgl@bgdev.pl
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id e13si270476plq.3.2020.05.27.04.49.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 04:49:09 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of brgl@bgdev.pl) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id v11so6270878ilh.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 04:49:09 -0700 (PDT)
X-Received: by 2002:a92:de10:: with SMTP id x16mr2425173ilm.6.1590580148751;
 Wed, 27 May 2020 04:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl> <20200522120700.838-7-brgl@bgdev.pl>
 <20200527073150.GA3384158@ubuntu-s3-xlarge-x86> <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
 <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com>
In-Reply-To: <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 27 May 2020 13:48:57 +0200
Message-ID: <CAMRc=Md1w_6+dU9gCwiiB5R+dMcYMPFLPrA++RBkKp5zaY6Riw@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	"David S . Miller" <davem@davemloft.net>, Matthias Brugger <matthias.bgg@gmail.com>, 
	John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>, 
	Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>, 
	Fabien Parent <fparent@baylibre.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Edwin Peer <edwin.peer@broadcom.com>, devicetree <devicetree@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, netdev <netdev@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>, 
	Stephane Le Provost <stephane.leprovost@mediatek.com>, Pedro Tsai <pedro.tsai@mediatek.com>, 
	Andrew Perepech <andrew.perepech@mediatek.com>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: brgl@bgdev.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@bgdev-pl.20150623.gappssmtp.com header.s=20150623
 header.b=idCOZA7J;       spf=neutral (google.com: 2607:f8b0:4864:20::141 is
 neither permitted nor denied by best guess record for domain of
 brgl@bgdev.pl) smtp.mailfrom=brgl@bgdev.pl
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

=C5=9Br., 27 maj 2020 o 13:33 Arnd Bergmann <arnd@arndb.de> napisa=C5=82(a)=
:
>
> On Wed, May 27, 2020 at 10:46 AM Bartosz Golaszewski <brgl@bgdev.pl> wrot=
e:
>
> > > I don't know if there should be a new label that excludes that
> > > assignment for those particular gotos or if new_dma_addr should
> > > be initialized to something at the top. Please take a look at
> > > addressing this when you get a chance.
> > >
> > > Cheers,
> > > Nathan
> >
> > Hi Nathan,
> >
> > Thanks for reporting this! I have a fix ready and will send it shortly.
>
> I already have a workaround for this bug as well as another one
> in my tree that I'll send later today after some more testing.
>
> Feel free to wait for that, or just ignore mine if you already have a fix=
.
>
>        Arnd

Hi Arnd!

I already posted a fix[1]. Sorry for omitting you, but somehow your
name didn't pop up in get_maintainers.pl.

Bartosz

[1] https://lkml.org/lkml/2020/5/27/378

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMRc%3DMd1w_6%2BdU9gCwiiB5R%2BdMcYMPFLPrA%2B%2BRBkKp5zaY=
6Riw%40mail.gmail.com.
