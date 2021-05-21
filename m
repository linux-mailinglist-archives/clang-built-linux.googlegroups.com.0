Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7PWT6CQMGQEIT7OZAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1996838CD66
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 20:27:10 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id f4-20020a2e97440000b02900e0cf71110dsf9189937ljj.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 11:27:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621621629; cv=pass;
        d=google.com; s=arc-20160816;
        b=MzIub0wJPGCtAjoSZcm03CEfA3PN+7L5BXie3Ti5dCxzSLgOtGcYOb99N7qouYAOrz
         icdu9lPxeBxwmU3YTsARhUm65lyn50dauEz/IW2DCQozCocOU9YOrpgsaAWCHcNA7Fyj
         rC6klFolF04Xs+KM651oWP8twRR1JTgNcWEmKrf03eqUh9VQ43dc1KrnIbQ4nWpS9/Wb
         QrGR3WM3RnMH9Z2tvmQh6Jx0YWvURWpfb4U2QDUINp+JuxskvlQ8qKY93tw7EnbhnccZ
         f7T0YjRmTOxUd2xtK0tC2XEFNaeSZorTaaN1DpbSXPSwC79XZkNALQLUl0nHGplsroYe
         ph9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=yrT/bBv0h4i3JHINITg3xS/E/NE6ywn/5x1oKl8+h8Q=;
        b=KAiIDjN3sBXduYlyKsgTtMVuuX9ceTn0XbMSUDg2398jarjRwQoAOg7ztffltMaWbU
         iBMqQgUnWDvqWcMVIF18sf/cj1TvpfdCMd8ljshbE6IQVxv5Xk/aSxq/XECVILX4gpR6
         5LG5jzBMgbCrBzzBlKtWKVVH0h3dIlxOkpQFWic/S9sc17AwfvYDLs0B/VH4AlzEivxm
         HM7PElWXtjts6PrMlZ3G310CBnmhGlVN+0+bvbqhEcMjZsnCT9Ol2wzPgRRiArr+mhwh
         ZmmpnMkrd2Pft5PueDmoRqAFw1KZnKyfuxx9Iqx1CjmZ9EBYxuUvroyDRIgXmJ8/Bd7r
         ZPhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="o4P6GOq/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yrT/bBv0h4i3JHINITg3xS/E/NE6ywn/5x1oKl8+h8Q=;
        b=TZ9UtTrQO1btl1BT+VPfX2uTcEclERjiYwepEtnDbydgvchisU8n5sfvE5jGK8CDwu
         /ggscABWLUxTO/uRrw2go/WyCkWGe8ju99XXhY47jVZSDKYzweV65YUs3n/x+wwscHGv
         VFP5tDmzzf69jaAb1zIC63LmmWQMRdatZr/8Hxli9mujAekS417Hr4OwrlrTX/fyGZpD
         eb6RypZXUloYwaCO1tSfGw6n/tOajNmK96Y+qcY1O49L28LRZWQv5+TAxsaZZ5xD7Nfx
         xqwwKbaU+TXWwFZT29eOi7fMrThg+da0m3Ya/Y/zWyQEm1TRTltLCBrrVqdwwataldPv
         aH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yrT/bBv0h4i3JHINITg3xS/E/NE6ywn/5x1oKl8+h8Q=;
        b=ZcKriq1pkCr89NI/TKlokByZgmWAVkk7RCbMlcwlAwBXv/Kr7Pqx7GXBEivKpZDvrl
         QD04i1VZj1YZn8nyiL6Qi80nEMpA52pY9Qh9gx6t+RYMa77PX77hph4wLk9g0H4XPgN2
         2lxyBuck0XK+/g+17GN00dRwMxSmz+IhZLkbwHGM9LBNFRibJNclsoD6F7IZgN9rJzjU
         tLfuMNdzeajIMONgSufaVYAVLWodn7HTHJoRBepbtPitOLeoJObGw79Ph/NpAqORe4GG
         H4hMUJNPcaljqoaxmogN2lCCxVtYJMr43NdW9lVojHRNtMNxTCX96XC6mtFEs2yZpMI5
         LOxg==
X-Gm-Message-State: AOAM532+LjzJ+goY9iFo1yNvnPlvvSv+kHwiS7TOHwRGj6g+pcsQpjvT
	G0/2lDrKCSUTgQPOgnKoJPk=
X-Google-Smtp-Source: ABdhPJwbCHm2y0e7EB2ejr+eva4XA3cU/2PIkFR+rd3ThyTNHAbpEt81j2/JKRVcOquW85LwMmP2Eg==
X-Received: by 2002:a19:5018:: with SMTP id e24mr2255984lfb.608.1621621629701;
        Fri, 21 May 2021 11:27:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls1308717lfa.0.gmail; Fri,
 21 May 2021 11:27:08 -0700 (PDT)
X-Received: by 2002:ac2:5146:: with SMTP id q6mr2962473lfd.558.1621621628653;
        Fri, 21 May 2021 11:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621621628; cv=none;
        d=google.com; s=arc-20160816;
        b=kiLsXo/laMq3wa//pANG4X7QXWduF52mD7or43SrEWLk2CsL72arxV5pQvbBFu2Knl
         61whQMqf8jHHmB+oWoHvBZqH9+bZw3ulW/aT4LduaMDcCL3GbpT3AH7e7ejFC1rB70PN
         gzcjapFDrRMG91MNNDhmXZ5UfgI7Z5+Q1C2J2WcG4+H44PK/7prQkZSanNzzTXUZegcN
         yylFGEMINeo1EwFmN2KshSuXMK+e4CpR5qKhfrpiL/edqvcFMbK01UlvA4AcXrI4pbCT
         v9ZqGBzR2uwkGj8QuQXEOzGWe64Gruq8h2NeGhtLbA6kFydBoySEKz4WkYKPVbc1ZZnb
         U9zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=nYnd+UlW6zLgQeZzp0x4XpVO0jM7q/BUTXnxlvCSpbs=;
        b=VMB1grE33HMUyUBKqawHXLUyuGjyJSTercEbGimkjCCYDWV8YfREUWiuu9mYufwhPi
         xvaj9UpvigF9SaSU0HIT5SOABnT4vUimorIilQn92pJ6Fr2I6sHqLd5SNCycgpiTqfj5
         X2QLpjWMfq4DuqdTXGqC2wlnNmP0gc40OdHlxWWL92ykqpG8LwG8yjf5Un+QSveHPzyv
         X1xcn27ynnwqdTsdjyMRpdMBDj947YXbONCjyHk2C/xBMUVevdLUbtpaixkBUA6Fbngc
         WgkL/zUzctUXS3gzYr0TYvCxpnx3i2P4w6LGb0oCg57PZHBoH+Soniz/BPyqcPwGKHS7
         QPgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="o4P6GOq/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id b39si300486lfv.1.2021.05.21.11.27.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 11:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id w7so11657654lji.6
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 11:27:08 -0700 (PDT)
X-Received: by 2002:a2e:b6d2:: with SMTP id m18mr7333416ljo.233.1621621628085;
 Fri, 21 May 2021 11:27:08 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 May 2021 11:26:57 -0700
Message-ID: <CAKwvOd=HYCVqC7LCnSvLxDyqDnxnW62skBAn21_3OqCAjdYZVA@mail.gmail.com>
Subject: A fresh look at toolchains in 2021
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Bernhard Rosenkraenzer <bero@lindev.ch>, bernhard.rosenkraenzer.ext@huawei.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="o4P6GOq/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236
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

Found a nice talk from Bero from FOSDEM '21, check it out:
https://fosdem.org/2021/schedule/event/toolchains_choice/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DHYCVqC7LCnSvLxDyqDnxnW62skBAn21_3OqCAjdYZVA%40mail.gmail.com.
