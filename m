Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBSMYYGCAMGQETQUBXKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0B337203D
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 21:17:29 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id v2-20020a0560001622b0290106e28f8af8sf4459597wrb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 12:17:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620069449; cv=pass;
        d=google.com; s=arc-20160816;
        b=g4fq3EVctIoVe5VHgZ3TMWgvWs12JQn5lbYDlpTkgupZMJY1NT6IixsOlbKvwCKof4
         jCHeuzcwXl+wuDWVGHd3ojCT6K+We4+1/DlU6vPt3bDoGdZB7rFzC+UTNy5uKSthbNwP
         MMfWyZSHG7TrdXAXOKvAC7nos1HLWKH6c/Iqld+hp4pCIPeW3MWIVQT+SXAajPQ/MjZt
         MyOu4SkKjxjFBxVNclATLsJNSkDRBPsiPcDCS84+zJIPXSVc5PsArEaTL0RvZ9gMKAb2
         dNtz60Tmzg5KHhVrWlYptb7qBzNTYi/EsOnRQSKLRGLG5qfCSAGDHT8SBcEfqqmzrO7j
         39iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=R5PXIl5+LJpZuOPUjdZ75+R0UHOO2rRp988zlP82kxc=;
        b=WJ4NITAEdPY+Bm8DlqU6wrqiNb+73fXJteYUi6FEzSU6nNkOItMsTytZI9Sj8Ttmys
         rh+ZvNxFfzpZygtKDx0GJzbFvgldMCtFE5EEjGDxw6FkvzRbeRQuX3sFvZJrj3DbfJSN
         MirahK6bT60n1Vs5uhxWB53x5pAcg9bLjycaNrfGQgdyeiIwxShCZrBEqFzH82dgv2yk
         eV3QzTKjfsw2zCB8ouiGyau1Aa3IGkWiL24tUPnkWjDXMUfJolEfgJYi6TpwX0Aca/9R
         pEvlOZ5hqgDpnUOwpvGAFuQ3Py3SoB4TQNWPr8SzW8gup8cMRl7VtRKJLz9W4GQYwEoC
         ZNOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R5PXIl5+LJpZuOPUjdZ75+R0UHOO2rRp988zlP82kxc=;
        b=GCBWV5ZUOqDlo6BV7EkHBLkLEl/91ITPflpNSFKH/Vbt2nEBMNMbFY1SOYLlPQvuHc
         5o3e9C44W2pN4tqzcVT3fhw87dbfOpyzCVX4XlFlqKphaNMTpFa0gZ/jly7twM1oGnfk
         jtoBYBDExwyjAldi9dp2RSauEDGwCINNWbFbYMpGdha3/xW+McnnTF8ev38Iy2f26Bh3
         7tBAwlvblujKZcwOcY73TBWZzIJK+qmTEzlxj8aH7wsI1pQ6M5apHI3XOT4buZZftNus
         rwNbWgy8KHr16PhsWgjbUS6wqeCtHZeoxWiyOk8F6cd9tTogsPKeus4UEIIQxNih7o2l
         1yLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R5PXIl5+LJpZuOPUjdZ75+R0UHOO2rRp988zlP82kxc=;
        b=Fqdx3FnWKbKual4K+2rehr/sJ1a0PBpiune8OMBMhbLVCpHBJs9MC4cktuhqzgyb7z
         OVb6hr00fej4GEBaRKMlw0ytos3aV2C4BrgB53PRGBtceu+QzQoBAiNPodBUQlgtW9ac
         HxSh/NOnyHjtHPFI0wIBLEuiSp0cBiqaBR2D2bpr7Kvx4/Iz5P6SGAR+kf8RMo+hlRae
         8ONipYNASvA+a9s7ZaOLxC0MXZVHYrJRLAL7BtHjpfoBNYqQozFgXRiWQW+TYnyi1loq
         V3JEVEwnV8aU6RmHZH7/6iuePA8zmP6Frdbebi9k5gMqpfj0mslIRvsZZk5CLwADYfrd
         Vrfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YOId8DlFREX0N2jQIFLP0YAjWagjXp8nR2pW1SkdZj8p0Wsi8
	cvX8XxRTs57g2PJfmNYqsvU=
X-Google-Smtp-Source: ABdhPJwreyX+pdWYU0OUts3OjoK4bTr64DV77qGL16HaS8hBuy979LUmK3zJRVJSsr7LEeb3UwfQTw==
X-Received: by 2002:a5d:6d48:: with SMTP id k8mr26334201wri.93.1620069449416;
        Mon, 03 May 2021 12:17:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1909:: with SMTP id j9ls156030wmq.3.canary-gmail;
 Mon, 03 May 2021 12:17:28 -0700 (PDT)
X-Received: by 2002:a7b:c093:: with SMTP id r19mr7137629wmh.35.1620069448608;
        Mon, 03 May 2021 12:17:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620069448; cv=none;
        d=google.com; s=arc-20160816;
        b=x9XTDDZT2LqT7z0SHsvVUr1B9A+Hbxjwn43NFmNZC83ymr+eZqA9VUrpDQCFFlav//
         XXJxOgC8+oBIGuEK7SMyu/hdAiMz4oaiPBF0tL2eq3Gj0BHEP9S4AFEMI2d+k/H0DvpT
         nzpmr7hUdl2kCH3S2Dez24Sb0VvbCVVGu1DYvexpppTIJt943XMQawi46bBVxX3h4vKt
         x8UP0EtYXqzVjBcgRbhNPDHW+iOt/LoWl68Ev8biCqg+ASwD16jynguK9wh/GGLvshPg
         RSjI5h6cPZDHyjLriDJg/hD+qEDd8q2GYGzIHLbtr6lP46O3HcgFzelqsD1x4JgoRQ6B
         vnJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Nej5TN2DqlZW3/TxYAbwMhbzTyJQFzPTymvZIcjQb3k=;
        b=ZGXRVnzCDHTF+a/EDt/aOo/BuZxlfT6JFLXyLETeQgcB7ILc3ws/OTRSYO5/2mtn9k
         KP3Lk4jeXAmCGY/4Ry5EbpBpxM3cxNbt7D2hS1HTWUzziNOzrJmEdgpOgxEgXXWQWmTH
         miYG3c8ychekn+Svrq9j0YGzO3Oh7rPCRnz3yDVOKdL7P1BoVpQcMKF9qraxJh1iOp8Y
         IF+Ay95NBonTSno6gLE4lUEdD9N9g6qUpePwAd/sBTSWrLSCwZ3DAa7JfvzDLySelJ65
         1uIY6KwOlEuS5bNmWO0SwLIIeyRbQWrXwO44S5bps//y+dE+l8eVIcR5ibAwXS4jGjVQ
         PLGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id s141si68963wme.2.2021.05.03.12.17.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 12:17:28 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-wr1-f50.google.com ([209.85.221.50]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1Md6dH-1l5PiN0sqJ-00aFTf for <clang-built-linux@googlegroups.com>; Mon, 03
 May 2021 21:17:28 +0200
Received: by mail-wr1-f50.google.com with SMTP id x5so6720168wrv.13
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 12:17:28 -0700 (PDT)
X-Received: by 2002:a5d:4452:: with SMTP id x18mr27443363wrr.286.1620069447928;
 Mon, 03 May 2021 12:17:27 -0700 (PDT)
MIME-Version: 1.0
References: <202105030311.xWwkyV9z-lkp@intel.com> <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
 <CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w@mail.gmail.com>
In-Reply-To: <CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 3 May 2021 21:16:42 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg@mail.gmail.com>
Message-ID: <CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg@mail.gmail.com>
Subject: Re: [stable:linux-5.4.y 5541/6083] ERROR: "__memcat_p"
 [drivers/hwtracing/stm/stm_core.ko] undefined!
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Sasha Levin <sashal@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:X3UkbDqjDmQyHOrTvULB85HvSt7q8BfW2cCltj5rvaYnlXmsSMD
 LgdM46LxpcU/AAdehfcdwslxzzvl7dMshb+MveyG7h6ocL/1sDKobRi0kIdi9D5Uhs2OQix
 B9OyHFzsbzORgYS8qifD87a7vYFq4SzlcrDEWqbL0KTYHaBtN8e9Xx+fGVnxmJQ1uReASEH
 qMMLKb8rcai0LmhnSQ41A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ay1uO8DlMNE=:fT7VA0KttZBDrnnL8VeYSO
 RiwMhA+D1OM2w0qX8Z6h1L2/ER+VeedojNVMqND2qTAvAOY2yN/+vbItvLcwLmkJSf3FoDLPN
 OZ3tYUqnNwO9TBU7Pq1s43BNvLrr6MRPSAt3ay0PG1CxnFR0dkXv0hhyZIXE4uBVlLUAihCFD
 WjoOF5OsPhL3+CenvZZu2UB8h/cokHWDq5euAToKOw1vWcsJRxQg/PbD/aDqUmS31tns6hdLQ
 orHWEOIzj0Aa3KALDs4yt+xUTjdtmsHU+lW7xs64oeKKbt8bSgdkshuzWN96mnx2HxMyLAP0r
 KqSeLUk5lzZwWA5j/mtoiIYlVVlU7TTSBIqxn2rUgTVkmZ/U4nJGRuAS2mVtApOfKsGsP7woe
 GowkbWuLL0+HF4Y3oziNE6O0qgW1+PgCRMp9QJ5UEKsC0+eE6A0+Pkius7HiUGp+x81Y5n9q7
 scCTQPmC9+fjsWEYyhOKM1jpnr1JB9iWyIoeFAAjnaNh+SkhEYv8V5VLdLfGX3fcmy1LNVRU6
 tjee6mS2Z+sKpe5fsIK180=
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

On Mon, May 3, 2021 at 7:00 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> > > >> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!
> >
> > I'm fairly sure this is unrelated to my patch, but I don't see what
> > happened here.
>
> It's unrelated to your patch. It was fixed in 5.7 by
> 7273ad2b08f8ac9563579d16a3cf528857b26f49 and a few other dependencies
> according to https://github.com/ClangBuiltLinux/linux/issues/515.
>

Ah right, the big hammer.

Greg, not sure what we want to do here. Backporting

7273ad2b08f8 ("kbuild: link lib-y objects to vmlinux forcibly when
CONFIG_MODULES=y")

to v5.4 and earlier would be an easy workaround, but it has the potential
of adding extra bloat to the kernel image since it links in all other
library objects as well.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg%40mail.gmail.com.
