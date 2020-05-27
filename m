Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBCVAXH3AKGQE2HXUT2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ECA1E401E
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 13:33:30 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id c14sf1302615wrw.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 04:33:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590579210; cv=pass;
        d=google.com; s=arc-20160816;
        b=JQclXKYxZauyCpy1Buz/9XfdihggILA2qmkc3AsgSHe8sBl5wW4bzx/ty+cmJD1feL
         HOIJcRwt9Guk6BoAyFcx8f3sDac4VF2r+2JC2rRS9OElZwES9ls2BpS4M3GS17TxoVK7
         wjBquL17qM9gj8UWwZwRjaTd2r+LjiOy8cHqIe1sfznt0Ll5cimMitTD7GXPmmgTdzc4
         3DF1f/42ir/NXmtYbIj6Va/JSM26cIXfLpcpTZDfu9vHvkMD1/oBL5O3GwhlwOecE5ED
         TZveOOkill8+eq7PZU0gMWGLEl7rCTjfiZCBPBn3eZE3hKgsPh16F5HYiGtUEySC8rzT
         rWww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=XXQRG4oC8e6aJFFxZcpHJKiobz972I+Qezeyi/2vxsk=;
        b=AydOj3OFrUNVmOmh31Fkf3VfA4OEm2OsEljwF104xcCe0jCzvbprl6rlBtFLAHDTKj
         uDJFCuCsVVL8HwNEYBLjOBXZdP4KJKbbQIGtpL3ikx00wc+eUrqm3TL8/mB6ciyh/Eci
         FZc3XJrIy6N8K+ybVhIYjT3ro1IhVAvYn2R71uvZ5o9v+Rm8jptHx6/+rWS6nOaV+I/A
         lBZcm51pe8oiUyPYkrlRSQQ2WaTyVQweCHLnaIB9FnwiyQ0RplGD/Oa/Zi7PZTUMoUwC
         8TjcU6+Vcrhnmb8sIBZixQ3URO/8pkQsyaulb3C5rcMZNoD+sTK2I2JDXdMpnCTXaz/r
         q+Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XXQRG4oC8e6aJFFxZcpHJKiobz972I+Qezeyi/2vxsk=;
        b=n8H5i0PRNO47AExRM4Vv77m0BoniORPw/lHQ1sOoGo3Aw/TSgDO6/aLa/oVUUJHpTr
         yyejYkRUXHUY2ihpr1rajjtL0i2QsaqXrh/RjhyhsZIAePO3oJghIuJvX0xZkx6SDeBD
         EnU2NlR9vR2/I6DxI06gQhwO7waCkDp+p1GHiH3SbJbJpfaGfy7zsOHhWuXTzOdhavBU
         ekbklv6HABQekny2LLwt+lMETAPXdAmV3SNo+WL63qR/Hwp2F6FDdZLXybHWuVsbsldc
         oyagcKeUCzfz8xfoidpUgdDYul0HSCPaX4BTaxxYNnkIJ0aUt7HBD7IgP6ww8L/qBRoe
         tIug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XXQRG4oC8e6aJFFxZcpHJKiobz972I+Qezeyi/2vxsk=;
        b=A5hm5yHpKu7riP3CPsyUnE1nKJr9H7IjcUpzgxeaEAoqTsZ4hZQQEW6NLMLVosFO6G
         H0ty2WHew+6NxN5I/hXhNPtxm40hzQfsB6QJa0gXNCbRGkiKLArIDd9xkxg05/BNbvvr
         30FFA8N9xPfElEvlJYMloyV3CIc0faT4X9MJxsSrSFUU1v+ES9okFJ6GOJUvsc/Z5Tgf
         jlYUR3fAxYaQNbj9D/ys+iHzdwG7KiGuR35c7KrkkseFNhBG98VgRWPjRkvRMLdQLF4p
         WxPIo1vnYYARBtFSQwJG/rqYzvM3pMHoYxZdFUbJsho5Vg2ufRvLIMvw9sn5wIMcWaYQ
         R2bA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rNxX13Fz02Eqn7KQajOJmHvkpPEMoKeoFjWTbBfp5s7MpF2ZZ
	EUIj4qtDtqlvkph43R6YJ6o=
X-Google-Smtp-Source: ABdhPJzq9MWHW6STnK4PZoNdCIcnWamoBp5KndLnOMp1cWgtjSxW2MBUaPbbJG1alZIMybtIyToMWg==
X-Received: by 2002:a1c:5606:: with SMTP id k6mr4117244wmb.10.1590579210073;
        Wed, 27 May 2020 04:33:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac9:: with SMTP id a9ls3072356wrs.2.gmail; Wed, 27 May
 2020 04:33:29 -0700 (PDT)
X-Received: by 2002:a5d:5384:: with SMTP id d4mr565836wrv.277.1590579209668;
        Wed, 27 May 2020 04:33:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590579209; cv=none;
        d=google.com; s=arc-20160816;
        b=H79J9GIJsWTgX82iT5uTMj1gmx0jJjvDO5VxfAR7tlSCnvDOJL1BApKzxkcPAJsKNX
         7fuxAwq6QuyiqosukVGj+rc2kvoUZ8NB/9vsFBdHrVl2DHdV4+xpOsoDkJetTtragR0w
         iG5IGjF7anGHJV5R3SpvylvZoETb72T4lzA5rMBlewcSU15cRG+PMFkcpWx6v9DMIrFZ
         iYUber6pZUrfni/5VKo4wD5ghX1R6VxOmp0T4psOT30eR22hJ+vp4vF8gKkZOGxqJnqD
         vQPzYOELNwUWHx1jry0WCUyAvhbdBxsE2etQ6fW65jLB7Th0C9+adO2DElF/qrtFuphx
         gtHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=RRl1bCM/a/Mu9ooL7EvTrhuNpiRTnCCvjH2znRdWiNs=;
        b=NeTwiJd9j+0+wU4tPQRyYWumkAsn/5+OL8/du1/2i9R2QEX6THw2HTYbgu5QoTpHGO
         JJ2L2dV3jvNdBw0IdlLY1GBCC+du3dw8wfC8m70p2/EjG+AeuokV73UaWQ0aYNVsQGiu
         SJalhoEeGn/fhBOyj70M+0uBm6W5xZUpf1Q2/JXfv8B2klp1UG3yLXfe70Q27NpFKPEG
         tJJbFus1v8LzMFd8Gm5WK0Q4VaiZFRLWklDj7xFbBPbBLzegscI/wTLzset1TegLE+u/
         L0Tw2jYj3gHCVmNNlUQ6JjfU+5WkfucCRVQO+IrvwtD1WvogOyx37Q6+r1XMgh0gOsYd
         zMMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id 61si99171wrm.3.2020.05.27.04.33.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 04:33:29 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MQgtC-1jOylT0YWE-00Njqq for <clang-built-linux@googlegroups.com>; Wed, 27
 May 2020 13:33:29 +0200
Received: by mail-qt1-f172.google.com with SMTP id c12so8948320qtq.11
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 04:33:28 -0700 (PDT)
X-Received: by 2002:ac8:306d:: with SMTP id g42mr3579966qte.18.1590579208037;
 Wed, 27 May 2020 04:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl> <20200522120700.838-7-brgl@bgdev.pl>
 <20200527073150.GA3384158@ubuntu-s3-xlarge-x86> <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
In-Reply-To: <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 13:33:11 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com>
Message-ID: <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com>
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
X-Provags-ID: V03:K1:ox0uwMMGL06Zgs1zlxRVXLYP8YBzrWOuerWQSQI1MbHCZFE6sfN
 atrzR/JTp9x3TSM0vLdkZvJbsJjZQXzS1wrxD5JDL2UnpTPmtufDhuXLrhRCf36w46gbys1
 jOBlvyI8xH3S1oulvKsh/ZGCO7aRVs4GvabeqA24BC7es/Tlgw264U0nWo0BXFPLSpNFv7W
 hQ4No4r22kuPrrdn9XXFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t8OmifFP9sk=:P2GTHnSMr1BYnbgSpA3F5f
 m4xtfRWvH75SmxUoXMQrKB+6KWHti491KrJM9dYfGaopEMVX7mjtnp8Ih9bjz7qE1mJtZ8k0/
 +LZ2FunBVYnjuX9mM7JoJp/5zuAvVPB+NUJVg+SWJlyk8FYEA+lBZvvq2GqBoTmL2k2UL/Z/Z
 aiCxzN+r4WbAX6UD5ZPOy4uDbClie9DvXvOW+IMECzGD0KGBz4WdikYYRtrGRvgUlHoyPegyk
 rntPA6pWZ8fIUZBc4cfpIpv8Y+6cLs9qn456MelBPziGzOuN3Esmf9iapnNihTOqY9/D/O8yN
 dezsDYaHJlfzsNMBq8DWA4+nqWgO7oMXUqN4yCvuQ4NJdigyQXqiU1/km6v3KA9u4syqPdjHU
 ZDZeV8rPY1APuSpQXIPT/PKvNLldaYRfrLEYXfnokRdt4qII+r0qdaK3y0HQ4xrJbsJIwAR8I
 975KjyzsHUFWb/KnofJkdMAEy+KNpkwX2A7XCkBWmD+xIFtE2xpEVVlHQo9iZjOqIOWzCYUTO
 8UhZFZchFPxg4U/pNocSGFcDvZgUqlW4ExOESiCjr2yqKsm3Po9DaX9FZ/kDu5nOkD/c2ZyCJ
 YtUymTsAvz5sPfsTKPtKuWo1yGcfk+M5YKZtau1NaQf1Zo2JPqVmhq+XgDddZc4OrBrzUkhdZ
 hFkJk0I3qzGyQDTKM3CyYSrzfukpepXSqWkHoLczl49M4bWXwdCCj4VXaQCCG4D0PqjSfK/5B
 lT02dL9kZMNV23Hl5WnEvFxXHLR4ib7ywYMDPHhrSqhzU+Tma7rw9PPMRBetiPujxPbgcD5h+
 QZ55AoslRgzYf3dSd6h7HfeWopmSs9giZnu+N5jxIhQXMd2Bl4=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
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

On Wed, May 27, 2020 at 10:46 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:

> > I don't know if there should be a new label that excludes that
> > assignment for those particular gotos or if new_dma_addr should
> > be initialized to something at the top. Please take a look at
> > addressing this when you get a chance.
> >
> > Cheers,
> > Nathan
>
> Hi Nathan,
>
> Thanks for reporting this! I have a fix ready and will send it shortly.

I already have a workaround for this bug as well as another one
in my tree that I'll send later today after some more testing.

Feel free to wait for that, or just ignore mine if you already have a fix.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1%3DJh%2BG%2BpRQ%40mail.gmail.com.
