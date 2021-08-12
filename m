Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSUO22EAMGQELAUXIBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 086CC3EABE7
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:40:44 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id k3-20020a170902c403b029012d1b645e45sf4511599plk.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:40:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628800842; cv=pass;
        d=google.com; s=arc-20160816;
        b=dhV+n39F+Kt9xUXgzGtxKJ35syWB9+mXi7SQ8YMPFXJmkpE0S9Dw8QueFZlPdHC8BL
         WZoC6C4iRiQz1hWolfTAsOQ27gBpZfLIQ1INvf5omhZ6Eh73A+UVTHFlNrYpSL1iovjb
         41PLrPhzQ8Bph/oKNO6nckDx0ksdZk9nYsd7HMIt7iN+cC2j1OBF9e3D33TRDuHjQsFd
         2pQoH4CVP5XjoVY6PaCE4K9hbtBDo/ftoDM7JE4aCMBWQL7WGPXX85oM/G8riPiSER2o
         HuTjXhVmTtDE/kAfV/z3MCyP/dxupXHMbo0lofnuLx9ka1l9YiySOqc5u0s+/fd2vv5B
         LtbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Ss2mZl1pzWdzdq9bsTAfpWtoZD52myHFS+WuX+0ERI8=;
        b=f3zgu3Cok68X9FHunuOBFaSA8aGqpncoAzVy1ow4TsjdTcFv96Ul5Gi1sHXrUerAWB
         ADrATRhAXSEjuBC0xvCIkl4Ib5lndq3/uCBkgCVVDk7ev5yGEhEVJ6fa4Xu6F0EUde8p
         HHpa8CBoDloWUfK69DDbR3JeZZnJtILo2sGYVxhWOhv+6zewBHGGzQBSwwCXxj0SciDN
         +fpeIHc4EjzoUOetcK2f7wbgCqlz7sER87/zXLX2GewpS7thPWS9b/r/DW9DZaCCTDOQ
         b4OiknnTy3X+evQ7zn6SuQsUOy0ZxyuZp493S+gdsMb9RKdzZCpG9mW/AIkqWlyqBmWm
         Jc2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=alr8zDCr;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ss2mZl1pzWdzdq9bsTAfpWtoZD52myHFS+WuX+0ERI8=;
        b=j4SiedUDmiDh6XCVp99wQ+f1t4DwUnhh1iOxR/QiQ6N2FTD5e/5Lb5d7x8h7t8BM6D
         3sGzQugB4Ws+aDp7NAC2jhAujS1V4mSChwgY4AigIYEPRPRkrniWosfkUo1ZFHrwDGmY
         bhhibxCJAKTiTY5E8B/BoOfQ+/JtyJB32SpDnAVsvdotNOxTAen9YTy1mjpFLTVAiOrz
         DFuHQfv+pe2TvCN1ibElJRpDlbD2ojfBLg3sb8QlLK424FIVID7LHiw/A/qjHCx8oYen
         LiVHcSeY7sN65Gc3ChNO+URrSRpgBMe65OArhc/BmlwBXH7tJMS4URrEmKiHmwZVUwhI
         2XcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ss2mZl1pzWdzdq9bsTAfpWtoZD52myHFS+WuX+0ERI8=;
        b=mAXQrZTlwZbPeFpf3xx64N7qRcousNKOj/GkZl4C4UZ8OkGyGCs5mDivIdcMCqVF2y
         udSPq3yZi4LOGFPQgXFm14fGpzrdthbzGKYlTuj7iLwcawDGp865XMkx50Y8xHqB9mx0
         PUpM+BPhp/J+nUJ7HFHuOrC+Di6lX9sQf+/mRP+JgoL3Yt0RYkWe/DD+tMqwU627xu7Q
         WOF6TnAtr0YhOE2j1kclZU3lQRKUIW2KBeyAGOGZ5U/KBdD0yIs10xL7sxczV9NtmUV9
         C7ZVIywSZh5xSogwu07511JsIu62c6P72hQDBvyzvgzGiEW+vnQ96ERECthCZWfl82WC
         6N9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531di4cheJ//c/lETavwfIiO6Tu0DXr+kpBWfEaBvY3dczb68QNr
	y7KXN4xqK2i5lQ6zmWXlw58=
X-Google-Smtp-Source: ABdhPJxI68cbc315k0KtpOxSEKyPYIcA9hdSNxcqtNsZPxtJsxOG/5IdsjvaCDjPsg3d6p34ZScRAg==
X-Received: by 2002:a17:90b:2486:: with SMTP id nt6mr18003327pjb.70.1628800842636;
        Thu, 12 Aug 2021 13:40:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6802:: with SMTP id l2ls2861004pgt.8.gmail; Thu, 12 Aug
 2021 13:40:42 -0700 (PDT)
X-Received: by 2002:aa7:8151:0:b029:3e0:bba6:9754 with SMTP id d17-20020aa781510000b02903e0bba69754mr2942096pfn.19.1628800842070;
        Thu, 12 Aug 2021 13:40:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628800842; cv=none;
        d=google.com; s=arc-20160816;
        b=M8g0RXyYbTjlv08M5EWcjtMdjFsXV1CglkqnFCZvK1KoenCIKQ9MOC8zRnBUU98Rgg
         XvtXIgY2v7xrfxL4yBCljwqQoaVaWRNaFofgo8uxk+cMntODZ7VZ1xcbz1H57U1DdIiO
         R4CzBI84QqsmFJPgJYO1xvp3+WyuJVeJYXhhRILb8XufjH7KkTfidf3OG7IQX2krIUF9
         E+370eidXgxFziMFcFfJiyHgkOp1jdfOKQLUOSJtmSjhpKfOHQsLC25VEdo16NvqpW9q
         W+8NFJgfQRyDGNQHGyIV6fPnYyRqtHWkSr88dOKcW9RNs/p9mN98JZsptQ0IPCh8EOvq
         UFFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BqqmQR2Wche7IF3wnb6G9gVH7BTU2tcXXClUhJ338n4=;
        b=FyyOvD+wYBJn9/90K3Vk8jYg2pvCkhgjHsE67tyxgFSjKjrmkZyBrmRvJ4aGYbR+aV
         71qrMmKQqrx8dlfj/t7C6dod2ODkj6oTUlLmr2wUR/U08sKrMlMKcBf8EvJsD3z1X+rO
         7gxlgho0tQ7Upk21oOoONJMPv/xQUqQkkq7/9QHBXELRr0OX5FsSk0u9tEVcgU8sQINP
         LlU7MYsC+l0z9NsxwwTUNFcA+VareOYEpn6Yw3Mb8ompjUc0lL15rJwjg81e3heiXWGD
         XGVibcIzeHC3dW7sVD0z1ZiZyJzcdjvIw7Mnz2kF7DhHa8YwtvX34n5WvadpVXrBLfx4
         0TsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=alr8zDCr;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b14si395138pjg.2.2021.08.12.13.40.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 13:40:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 390CA610A8;
	Thu, 12 Aug 2021 20:40:40 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 0/3] staging: r8188eu: Fix -Wuninitialized instances from clang
Date: Thu, 12 Aug 2021 13:40:24 -0700
Message-Id: <20210812204027.338872-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=alr8zDCr;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi all,

Commit 987219ad34a6 ("staging: r8188eu: remove lines from Makefile that
silence build warnings") exposed some instances of -Wuninitialized in
this driver. This series cleans them up. This passes my build tests with
GCC and clang against x86_64 allmodconfig.

Cheers,
Nathan

Nathan Chancellor (3):
  staging: r8188eu: Remove unused static inline functions in rtw_recv.h
  staging: r8188eu: Remove uninitialized use of ether_type in portctrl()
  staging: r8188eu: Reorganize error handling in rtw_drv_init()

 drivers/staging/r8188eu/core/rtw_recv.c    |  4 --
 drivers/staging/r8188eu/include/rtw_recv.h | 46 ----------------------
 drivers/staging/r8188eu/os_dep/usb_intf.c  | 20 +++++-----
 3 files changed, 10 insertions(+), 60 deletions(-)


base-commit: 626520f4ba27d92c8caaf2d1f70c4bca4ea3f9de
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210812204027.338872-1-nathan%40kernel.org.
