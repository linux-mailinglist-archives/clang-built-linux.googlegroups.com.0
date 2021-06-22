Return-Path: <clang-built-linux+bncBCOI5MHU24HRBAXJY2DAMGQEDFV6TYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FFA3B00DC
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:59:31 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id l123-20020acad4810000b02901f1fb44dca7sf12385824oig.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:59:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624355970; cv=pass;
        d=google.com; s=arc-20160816;
        b=EZxOEvw1llyI+RNILfb82KFsXJmg9btgqZXUskRSK1qQucoXMwwS8JW0vC/81DtfO8
         Kf8h3EG3I1ONMCoEDiLVARUI92cWs4mcpOy2zyP5YDd1H6ZZdjrwXG2b4XsHKjRc/yny
         48gyLwhUkg4i1QXIyYPEcrtWkRNA0L93d1H6vegyApmoACyPi+YTUnqI+ob78UJoqExC
         nQZ6RL3//dmV82dhRKvGjc7U9TSS0fhUEdRTxqcoNBQGC89ZAPiZPYICIi2Wb88icdwz
         tJNLjTmIG6xXC2UBj6B+mk5UzN6b6BBxcVSyJ5mms1BlZap9kBvAV3ez+C/B3gpOyQ+P
         Wimw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=wHS8t+hc8kO/FCijobPMpPpipL/0naICVqw3v1WCViQ=;
        b=jCz53On/YZ2VxzfTDi3nrc5JwLmTGOxir2uJk83U+AUIFVJqalCsgT++Ex6XLkFVNR
         Sdk1tDGayZ/TDlJPbMjh3CxSAJrSw13fyOh3QUQfONLDSRtjejU52jRGuXKbZgBHw39P
         rib1tgIt879Hm9FS4fOJRKD4R3KXd5kF4fBttDAKbiuhUMZTFLgLLchvc0f5Fs6yFaTF
         ECl4M4OobVCv6AYrbtIPgI3xyH/wEd95Kz1QKRpxzjZH5ZI5vr94iHu6ZSDW+czXvegq
         83YpM25h27pCHYVsH8EKusA2MIrC/Xi6gL6eeHSv91/zMUsGF2qXczQZAOumuuQH7wRh
         Mh3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pWYoHUDw;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wHS8t+hc8kO/FCijobPMpPpipL/0naICVqw3v1WCViQ=;
        b=Ue3nEOkNYu9uxrJkydAX4XLftCz9V2vO+2h1n+0aVOON9n1/tcP1WypDHLhpg1meMt
         ddidjx1MU+0b3M5yusDsHR4PdYDOZmByoLqRJvgNZTQj95ExeJ5dtoh6cHelVPLCrI8J
         YBgxJ3lls8N71hiJtkYXVV+djaVQWbpsAiJVrxT793kv8kXxQYwyKvhQ35ToyWQC7mfP
         vOz0RbCEcjvWeeXkmGeWLDCPPDCgOxtSRlTOjJ+bZ1HfYjJ384TCQ2r8gMjIYFNVMnQJ
         tsZvQUCj4EzsdmXtFBNjf2UbuSxq8Z1p3ysO5eTwQzxS5rJLQBUxeOwUpPUrz46+szgy
         dltQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wHS8t+hc8kO/FCijobPMpPpipL/0naICVqw3v1WCViQ=;
        b=DHWwoxhX5LsLXYPLHoRKnn1JqOFM6FrWk/Hz52rP3jekLbK5yQrJn9Jg+FtP3lp/IC
         FdBBuj9Kux9641LCUTHS6/KMYInXLyBIPmMuKfCAABmGtn7uh0Li7i4a2VoInYd9fSNj
         svg1epm0mQBKl4iNkLcSbkjvicSz0e4REm8iySh4rWJ2HW1hAFOee0Hmb7e4jQtCavb4
         jCPa4nBs5tDnmHdSnuVPaPEdNfddRDUepXGLwIpPxRG75fyaBWikgtyoYZD+sHHXelQi
         AhwVa0YnFZ+IGDP2FBREhMac0VzZEIm4gvig6yrIKwHsectRbdCpe1DRWVZ6Jbb7Mida
         f5TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wHS8t+hc8kO/FCijobPMpPpipL/0naICVqw3v1WCViQ=;
        b=hDoMDaAl9XdEAj8OKXp+io/Q+A2tZuHlq/2OmwGOhDVMdDTxeNWk+X2FfClLL7AsE8
         3LLT734WeJLV6YtxcKWv5RLqu0WWo/0ZF7PFR0eHFXhCeFfPsFWPReM1/TrWibJH119a
         1EXaIzc931ko3Ugmw8tGYbu+n4bZEvZLcT2LI0qJfyYBct3w1cgRfKrMZ7auDPy5QAQZ
         gz1pDltcSvI6/uTvFqLK+mNmlSC6Ff5UB7f5hAtQOzZcl8VNq9Yx3BfMP10cCiPwuQtr
         K+qQCpS6+p6StdCjttrfSU5WH8PE8C+8lvSgqQAiDDRORI0FRW1BAbpKOrBzwAqwZIsp
         ITWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532enAdYyVXrM2Wp3V5k+is2XNJLYtlyn8fhVm9Q6z3RevL6hxqu
	zdSWRM7qpoAZdcbtwjWQvA8=
X-Google-Smtp-Source: ABdhPJygvVM/9nwRhTGRv0/yRickfUvMjoFZJcryXpjFSPyMdBTVtcfQymy+XM87As9gK39gbPdXvw==
X-Received: by 2002:aca:1a08:: with SMTP id a8mr2533629oia.10.1624355970644;
        Tue, 22 Jun 2021 02:59:30 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:604c:: with SMTP id v12ls3936605otj.6.gmail; Tue, 22 Jun
 2021 02:59:30 -0700 (PDT)
X-Received: by 2002:a05:6830:3488:: with SMTP id c8mr2340223otu.273.1624355970310;
        Tue, 22 Jun 2021 02:59:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624355970; cv=none;
        d=google.com; s=arc-20160816;
        b=iLXc1VoyK/Vf7ry2SKdnFsuK7RAuZ4P51W8vep2GsRk48D0AGU7M9tM6NjojM4hJai
         10YxtTFR0vcNIVY8FRHOV2gTqVAbYA53iQlevWD2O4hGN4hBf/caa8bzTJZs2Gq67eOO
         CcESfYqt0fu1RbdXBXM/97oCCgYf1VfVCKwUI9lNjj97ndKm49IQuvsS5p5YuuQM4uAw
         L8KnID8JUlpcACeEkENgT0zuOv7esJRypHItDjhz9s9ZeNtAcsWhfFez+qh4vbtMrk+6
         ZCU16i4M+iK99Ay1Uro4Oc9RyK4U70I0bUYF+zFSiBSOBckLfj8hcfvuY5zC4cvOVuPf
         hq3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7b0kVKn9qmmJHGSzYKJ32lLjNTvo0Camp58c232R8EE=;
        b=AmCyOpqZbcZBF8qNf+ucd3vTbmERILJ8VU1N9Hh9IPz57CDEFvO3Ju94tOP0jQ6EKd
         8EwQKWJ5LVpGYmlU/diCaHqspAQlLj/qGbzbgrHorAuhFaY2CFldHQLhkxScyPBZuTpw
         iyJjfk79Zry6mB1Eb2mP0Tjypo2MNncxUB/loSZiOdXxKoyLSD0O9idwW3sFmy67vaMZ
         CB2k6dBj8LC1V8ko3nxmhNRBm8V7hpCdeWcVH2jYsSY98aD2UuRZ+2xmJiHJ3p1BKnqv
         UirzS31dJm8jdqrxGsqi+F8bfOT0Xq+M/a8FCCMVA0Mkvjheof/ymLC8owPnBaL9TP28
         QXyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pWYoHUDw;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id i10si211114oie.3.2021.06.22.02.59.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:59:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id y14so5217482pgs.12
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 02:59:30 -0700 (PDT)
X-Received: by 2002:a62:1ccf:0:b029:304:3c28:b96c with SMTP id c198-20020a621ccf0000b02903043c28b96cmr2909740pfc.52.1624355969719;
        Tue, 22 Jun 2021 02:59:29 -0700 (PDT)
Received: from localhost ([43.224.245.180])
        by smtp.gmail.com with ESMTPSA id y190sm18059585pfc.85.2021.06.22.02.59.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:59:29 -0700 (PDT)
From: gumingtao <gumingtao1225@gmail.com>
To: cl@linux.com
Cc: penberg@kernel.org,
	rientjes@google.com,
	iamjoonsoo.kim@lge.com,
	akpm@linux-foundation.org,
	vbabka@suse.cz,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	gumingtao <gumingtao@xiaomi.com>
Subject: [PATCH v3] slab: Use __func__ to trace function name
Date: Tue, 22 Jun 2021 17:59:24 +0800
Message-Id: <cover.1624355507.git.gumingtao@xiaomi.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: gumingtao1225@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pWYoHUDw;       spf=pass
 (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::536
 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Changes in v3
 - edit comment and the subject

Changes in v2
 - use %s replace function name for the panic() call
 - use %s replace function name:kmem_cache_destroy

gumingtao (1):
  slab: Use __func__ to trace function name

 mm/slab_common.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1624355507.git.gumingtao%40xiaomi.com.
