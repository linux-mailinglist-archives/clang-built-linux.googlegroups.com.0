Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3NZXH3AKGQEQZM7ZIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E101E4242
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 14:28:30 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id t4sf1573452ljk.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 05:28:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590582509; cv=pass;
        d=google.com; s=arc-20160816;
        b=zruFc5k2PSaeZ9/SUtVto/Vw3JhNVEJoW4he0Gc7F5jMOr6ROFPcTnf8BS7VAVpDbi
         xZoX0sS0NQDxds0xmnHLTbr7q0hJRMbUzLNcuNKEX72oAgQ04y/lYw731kxvk4/QaYCD
         hKLBqwN6P9jF8iDAJ92evx7f2J9c2SpH74auJma2KGr0e40LR5FXk2w0U5l6pSiHePga
         Or1VOC/xWEuv5F87OdxzsOSlTa5wxr7WyjSjINXyZdE1u0Ig60UBbydOyGGTN7BOgOwG
         oh7VPV9okdmwnCWkfyCBSu2NOgoUPpDcRMDvYLH2ONSqaj9aWbS5ffjsX09cgfOgwyxh
         n4BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=BPXkrj2KZPwOH6lh+cQY8MMgnaOtvC/6F/Paw+f+amo=;
        b=sOXEa4ybDuuOdlcGvTwRN+l1N1Gnw9ETJWA3nQwY//6iVR/dGpLzLxmJyOi1qGjlYn
         5x5pifJi4yGIptYttP56h90vjMFIzbsZ8s/NR1kl9lVY4/h8MiV9jYk0RvXSqSDzIxkv
         O+ixaU6XbE5bGAGiCde4TV5K4OWBIqIcKPb4ew4jcMV8Sxqb8bhsjwAzt+85NVLivQuZ
         yy/q/WCZDXPrU6dxlhAiGI1VrqgsUi9X+IYEF7t/QlLXiseXhEE+llGo+A0Bp7eGXQkd
         NQ7ifB9k9SCIkgrd2Q5HdrvavJ3S90RMOWaFqEOFGp70oArRmSz+7DG/K4XiOBpB8FY1
         lxmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BPXkrj2KZPwOH6lh+cQY8MMgnaOtvC/6F/Paw+f+amo=;
        b=oHPxlVRJ+MyOGwiuMcdJhGPisEElTMlg4P4TXKQzZchAMjHr2CTmNGREqEAE5atmAI
         GwOeY5k2zfdoKGdCZ6wKNTdS9m242uiYEyBya0qJc6wtfQ17LQLi69CzARiM8swwq0X/
         2pdbouir7ErjodjwvvhCNIxfolgT/cXNf6WCpllgCLO7/3dX279LUsh+mKsSgInnlNSF
         qwaCbIT2nFwsL6ZvTLHXWFYDWe0vbnK+SRqYo5EP+TLzS3ZhT/LoG1NRHRSL9KWyGh/G
         FO9i1l9xW7XRwIf64OR+2mjSH3ZmcCZHon2AK1bja9b/h0z98XtGpH7WRJS0Cz0I7Qmn
         Ts2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BPXkrj2KZPwOH6lh+cQY8MMgnaOtvC/6F/Paw+f+amo=;
        b=Ry2a3JnB60ThbKMj2ASRiTcXJ8pQIbc/YebhWaugemab4GZyYOkMo7cHD0oTr/iMjb
         5GN1l5nHN4hqNU9PGry82q56PL0yUjqUQZVQm54THfsuPYALfg00NKspt5zIApsdnk+F
         XA2RGp2sxGhRQwfSxEap6vORUDhK7VjyrXixoXR6hrDIotD0rBZiaJDGNRtxj+uiTuwZ
         GwPtAz2i3rZ+m8XhgEbfpbIVjOoaRtpvMMCWWnscIs5WMQvHjyLlElMIh5rSj7uah6vp
         2GibbMqP1IQDPwaDVfaa02JyTKcJ3CN2KweicrkyC6E1HOLuDCEUsX/TQmxy97ILvofa
         9BCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530P5h1ou5Pff7IxwlzY5ZHYruGsoJdM8v8SnVE7NMs0AfEy2UpY
	M6RFnAmLNzbgYTY19vM5oLo=
X-Google-Smtp-Source: ABdhPJyLPZE5tCJsgyDpTROLfSe+IOqsTASEv5jrdEg3HCM6jMdQ34bK0zOhFn318p2ovS2HoiDf3A==
X-Received: by 2002:ac2:43b7:: with SMTP id t23mr3015341lfl.64.1590582509672;
        Wed, 27 May 2020 05:28:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7d6:: with SMTP id x205ls4223553lff.0.gmail; Wed, 27
 May 2020 05:28:29 -0700 (PDT)
X-Received: by 2002:a05:6512:108f:: with SMTP id j15mr3029131lfg.19.1590582509089;
        Wed, 27 May 2020 05:28:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590582509; cv=none;
        d=google.com; s=arc-20160816;
        b=jVzKStoCToI9oXmtLHKX6QDheiDHxtX0LInOTGsbEo3pB21Sv/3GiNtwLMOpdI3+N/
         4ErMsQ8esiZtIv7/C1OOtDnqN/5IMZughEz4gZZvt3NniqMLjAu4FSRIe9M7g8XcpAU6
         hXgTH0A0/2YEoEz6rHEPc1AQkk7hfNXfHhOL79UIn8bua3z8DubuKHRpu/Rw2+hmoEJc
         bnxa9/QEyK6la5ynxKMJECm+kvabkVy4iGiLu+9LKCCDaKQWCMxUFvI2QV6TijOOHmDR
         NctzoQr+WF79e5xRSksu2nSGJ1m0a7Atf2VlD7MU6oGJH/qWIwu5EhbxooSpC3FjX00e
         BdpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=jv9iuq0Ifs3ejzF8c3CN5cCB9JnleYAeM698wjmyrGc=;
        b=fRy59qtWW8A1s5WMqkn+W0i1lExb5Z8wecfqrDIj/3iZNDW7I7KhIvqDKhU7UXEBbc
         siNCAjOF3Mo25MzJTMb9PbpHf5wyn1jokKvmnaQ48FNV5zHruAW6NzHcVQK218+xdymE
         oufWyCMc6Ldu8TBtKWBDz8gWXZHCTy/Q3IS+rnCFZmNCKnbDKQBdrmC1QtvVov3TastE
         EOVlog1yJXRN/IFiqhfWyVVcSZV1XMD9/KU4AreQU7HpW75wLbbSydYKg5JBTo1iHeSA
         WJ9VPMtdE5KwMcRk1MoQBs2QqkT7EdCeyJQpAeh1hNK6ghwFBnBi+w9xKFlPQoEmcETD
         dR3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id f16si186071lfm.0.2020.05.27.05.28.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 05:28:29 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from mail-qk1-f182.google.com ([209.85.222.182]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mduym-1j3CyQ0dnC-00az6i for <clang-built-linux@googlegroups.com>; Wed, 27
 May 2020 14:28:28 +0200
Received: by mail-qk1-f182.google.com with SMTP id v79so14003479qkb.10
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 05:28:27 -0700 (PDT)
X-Received: by 2002:a37:bc7:: with SMTP id 190mr3695944qkl.286.1590582507016;
 Wed, 27 May 2020 05:28:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl> <20200522120700.838-7-brgl@bgdev.pl>
 <20200527073150.GA3384158@ubuntu-s3-xlarge-x86> <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
 <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com> <CAMRc=Md1w_6+dU9gCwiiB5R+dMcYMPFLPrA++RBkKp5zaY6Riw@mail.gmail.com>
In-Reply-To: <CAMRc=Md1w_6+dU9gCwiiB5R+dMcYMPFLPrA++RBkKp5zaY6Riw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 14:28:10 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3L6aGtKqv4ikNJc3or_mX2VvRE1sgaZZ9esD6jx+Hyug@mail.gmail.com>
Message-ID: <CAK8P3a3L6aGtKqv4ikNJc3or_mX2VvRE1sgaZZ9esD6jx+Hyug@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
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
X-Provags-ID: V03:K1:O36yI0rEcuTLjV9/WGAGttdOtiCasvyxQBXs+XsFmZqpeRc2sir
 Jcu0oiybYAXLKatwBF09MTfCuRmVkWt08J6RMOsVsZxkTui09/300DykQQruPqWcpKjiHx+
 qiEQzHSeynb3jaq57fQYT/kFG2/mD9qSbw8481Pre9hVbN7v8VgAMG5DVIPr69lYroXtHPj
 Go5JGS06nwkamWlOGOCFw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tqfP2MPRRD8=:la8ZLGifWbJYb6Pq+cx6Vx
 gaamLAgTT7AXbPAXbTNii8ikK4f14nvDUwQ1cSpg4GxqfwFSOYJk7HP1xR4OBOxbUtd16Og64
 Ouda4ifvrwtXdxcWMTkGCClA8XA+p0zXMOv45c528O4TKdGGzAD28cgv0n7pM6egrxRDY5seL
 ramo4YmxGAGAHsZc5KNlI/mS7nDriCpp0hb5LwXTkzRa61yNylbArkcZPrcmjuSZtaxskMCVk
 sXcgu7db3mMZx4x3OVeV5GejkUgBuMpu+yFh3yaBJaLxqvdNd1CaGHyH9lqNAw2iGeqkqxvhc
 1+P/KlJZjr9ys2wnRgPJfqLaImD06IiBucqunGXbsIdiLz/WSjdHJREZEidFRN6zTmIiBt7Dq
 zrOqXsNe91BHmo2vn7lRuLFKEDGtkHL2FpQXYB5c35ANoNJnfB0g2/9Qklgeys83lM5IiLMVZ
 NSo6ZMn6A28rqwnCO2yK3uGxUvOICchaXzyGlngO7T1aQd2F36ZlOkUxAHwDMR8wJcJnSJWD2
 SrTGgKryPdMOPlcIY9ZfV8+9S+8zx10KLHA3lSN8e01Srhla+d5THHHZ5AMW58AtVdKyL//ed
 cFoNC7m64qnUNhT2gJfMR+3pAjrWNPMV9suynaQT5uklJg78FBg9BTpS8LsbJr3BQ0DtTGa7h
 ErnQ3VuU+ZDwAmPUd/I/tMwZh+yh6TOH7b4p8D5avLPd2T1JKplZcoNQ99czYHtJRFvFxk8ik
 bdFBVcyNZ5SdIrYioVZw1+ZVzVe05rCO3UEQkDziLTjpnCTwfCFNHdTX3sBf9WodBxuEuHT6F
 0VjdlcKzBbW8Z0ibKHQHB1JtEL6pJD4DtFEiri6Wj9W9jerCSo=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
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

On Wed, May 27, 2020 at 1:49 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> =C5=9Br., 27 maj 2020 o 13:33 Arnd Bergmann <arnd@arndb.de> napisa=C5=82(=
a):
> >
> > On Wed, May 27, 2020 at 10:46 AM Bartosz Golaszewski <brgl@bgdev.pl> wr=
ote:
> > > Thanks for reporting this! I have a fix ready and will send it shortl=
y.
> >
> > I already have a workaround for this bug as well as another one
> > in my tree that I'll send later today after some more testing.
> >
> > Feel free to wait for that, or just ignore mine if you already have a f=
ix.
> >
>
> I already posted a fix[1]. Sorry for omitting you, but somehow your
> name didn't pop up in get_maintainers.pl.

I'm not a maintainer for this, I just do a lot of build fixes on the side,
as I verify the stuff that I merge myself ;-)

> [1] https://lkml.org/lkml/2020/5/27/378

Ok, perfect, that is indeed the correct fix and mine was wrong. I'll
just send a fix for the other bug (unused-function warning) then.

     Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a3L6aGtKqv4ikNJc3or_mX2VvRE1sgaZZ9esD6jx%2BHyug%40m=
ail.gmail.com.
