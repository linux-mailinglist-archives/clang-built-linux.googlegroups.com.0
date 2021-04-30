Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3MVWKCAMGQEBNVIKNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 796543703D3
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 00:55:42 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id d29-20020a19385d0000b02901b948cc0e74sf7150450lfj.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 15:55:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619823342; cv=pass;
        d=google.com; s=arc-20160816;
        b=grczC0RpMKvOrdqiyK8qHvuetoyZerzs+EjtTf2ajCh08xEOu+UISZ/eYeTePhAcEZ
         FyMGQGFE2GZBi/GbXyfOYNrzv23Oj1SKxhUx+F2ekbUd/mcsBaBRti2V+6I/nGqZmlH0
         DIPexkULfydo669fib319rHVaj8yDTRJEGPKIhe/1F7PsufogEdbuRibRj1a/ysKoOT6
         6ph0gHyfO+k2UiI6/689EThoLVSgkEXCSEs+8q8o8t8xZOH6mFXQnXLniWHC3uvxJgJt
         zJcVX3L4t+GsxrGS5se+HbI/H06uao7Jl1vQxIwgnvLXovfjDvYpis09awRq+dMAfn43
         EvHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=95XWVExHhApZc9UP9DiAWxd8RECGb7ZxGvtioeSFVks=;
        b=THZj9b62Bug/z8Jjdj1oCbphkqMWnWrS4b1ZSNgf3PLOfwSvMIrDuDiEim3cNX/nld
         aYi+4hDzDUvR6SzouDOdwh9LE7XWK66wzXXYXnnVY8tvcjiRWstXw+8iNq83tYaH5mOS
         LJmT748Izv2pjX3Iqjg3zu3rLCy2aBNvPIAGwIYrV5pxb9pJb4FAuELbf1xzVd1ldhy3
         TCld300W6r6N4EKQVrfuNH7dX5DE9SqUA+X+RK040lY42bvjy1tNzdDvgIp6++gxjutr
         t5jifdJ89xjORfSuEEKs212mgy2uhD6VhTsZqfLIRvv4CT3bl+nptb5qqZ/A552GJH3F
         g4dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DWrxmCBx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=95XWVExHhApZc9UP9DiAWxd8RECGb7ZxGvtioeSFVks=;
        b=sWHiImUALo3Sc8OI+RfqnduF5fM6zOA0mQ5i5jXZN0nBUcZZc4OUW/4IOLeg5LRPkw
         81+KHyTRvy3P9D6sJXAq+WIWG+Bmjg2imc727zJ4ksxlZrrcMzRhEp7Skx1PCq74A7Yv
         BTHWENSMMT3p48drAEGkyI1msv2vgcRF74IvNw01PyjvQkNsEhZu+xpDaAHP9QHjknXZ
         m4If78Pwu2y84326w7a/fXk6e5AoA2d7DLCgnW+Q3D59jJHTWS6OMzVHKXIix5QnNz2c
         IsAAFahjmTER0XIlZl6Ft1RowQAXMZ83bWGM7C4QrklJq9CljWc1tP39krqefqYurxNf
         kWlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=95XWVExHhApZc9UP9DiAWxd8RECGb7ZxGvtioeSFVks=;
        b=fGBVLJlMv2lFAh5CSYJTey3YcYNozQLquyN2aYwg1wDW9SHPBjH+88E25lfIZMTmMw
         mPrMIitabAXHWSC4mAZ4sPwvNS0STC1X23DFXQA2raCgaxFyb1mvpFHOiO9W+E7pUnBT
         WMDodvtvSzDRyrzBvIS0UTadBnv3xsChDjDNJQibP03ZGOemjxfx90gE8aCT2TdqzxLl
         1AaKJXI3Djs5XU9R+3PvffeX/g+5E53YMKFxCuvCS+NV8PYFaexQSKAoqY5d5rbvtb2w
         9lYr0+3NW3PX581X68aeEknYD/G9QS5C9olbZW3M/Q4Pquu1oTmi77DhWPpIigduXvJO
         OXKA==
X-Gm-Message-State: AOAM532nDASI9mPNoivwpoF4BITs6mj82noQrR3QHbrQ/GDmhg+Z5wVO
	NdaOkBw2jvkYDkZuuBWCB9M=
X-Google-Smtp-Source: ABdhPJwh74lztEyy8ttqwbnnWxm4RegJHUw8m3am9J/hDq0aVgff+Lpu5ciDN9ZPhd7MaQeEqa0rLg==
X-Received: by 2002:a05:6512:3f08:: with SMTP id y8mr4895083lfa.657.1619823342064;
        Fri, 30 Apr 2021 15:55:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f815:: with SMTP id a21ls3980069lff.1.gmail; Fri, 30 Apr
 2021 15:55:40 -0700 (PDT)
X-Received: by 2002:a05:6512:104c:: with SMTP id c12mr4835651lfb.562.1619823340888;
        Fri, 30 Apr 2021 15:55:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619823340; cv=none;
        d=google.com; s=arc-20160816;
        b=oReP4KCaeWFG7EfRO1ygRAzNHid2hd+B3JVg0zi1JP5CFT49oLGO6uz52fEDy1iFSK
         VpRw8k8VmvNHdEYeRFJ8kc3RMURtMmC5cg2uuUWaVqjnaXJOPc3TdmTvIWUB84ZpitKJ
         xrL41wq3s8u+p6Va/9eKsh4c8LoDT8E701K2Lyeirvp+Dx+jVG4Tqy+PLbRawd5tD1v3
         +9Ac46oOHPIgA8LrfiT+FOZaL1fnWdWkDoBghQP8fwHx3QWVIHzOGAMtBRWcsjnfgpBk
         6VaEHGnYNPEETNqk2tr3eaylIE31+9IaNk7HDCdA9Y35Il3spLetdnu4sdfPdn/GyNsr
         +gqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=BDFgdHoY7/zOMgPte1Fw6LRKHdSdc3LL+ycFpnl0Ypg=;
        b=SFltcElt9MDTP5Tr8MHWO0NAi8WvwWRnpBx13dFhnrZ2Q62kQ4GATXTTfec0Nf+13v
         DaQ6JnOnIwRzZls67a3CWUC4BSqZA6+OzQylRGbm6/O4oyUklYClAj3BaZ3O917nHkod
         HdVd5dw3tPZz6BXbD0lp7NfP2XTuJHfZwcytpk2VvCnXo/sPoXSfpHzIXEsZnrBvV7Pt
         kbMAyqqCHRb4irmiabA1rFW9Sq2L38AZLtaUk29IsRdeCYxNzMfgtjoyXXEmCWViD6/s
         So3dy1hU4BKh9d5W+mLQjIrgNr/T3WnMybf4F0yA7wNyotjbv8eyhCOPR/D6LwNrWvLM
         obpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DWrxmCBx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id z33si259029lfu.12.2021.04.30.15.55.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 15:55:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id s25so141568lji.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 15:55:40 -0700 (PDT)
X-Received: by 2002:a2e:6e13:: with SMTP id j19mr152146ljc.116.1619823340378;
 Fri, 30 Apr 2021 15:55:40 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 15:55:29 -0700
Message-ID: <CAKwvOdkpt8KRNEgMStfqMazhEgsVck=24DmhE=tc7hN2L-rSHg@mail.gmail.com>
Subject: Linux Plumbers Goes Fully Virtual
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DWrxmCBx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

https://www.linuxplumbersconf.org/blog/2021/index.php/2021/04/30/linux-plumbers-goes-fully-virtual/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkpt8KRNEgMStfqMazhEgsVck%3D24DmhE%3Dtc7hN2L-rSHg%40mail.gmail.com.
