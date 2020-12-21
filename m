Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHMQP7QKGQER3BK5NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFC42E00E4
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 20:23:45 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id q2sf10018477ilt.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 11:23:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608578624; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mv150Iu7L00vbX8A+18hlOZQn4Rch/y+jW5sehAaGgEeTZJhbaRQsQkW4OswUmrUBV
         /L1xsPO4UwmzLQX/Ejj6nEc+P2Y/jYz4WgylHftdYjfNfyk028+7DFZx5s0dtF6bjNUL
         t6LUmxtQ8k0C+TPLSIQ/xFakNB9OVEp1MXnLJqEHKjbSBdDczlz7bI3McZ6IcRFpop5o
         B5yxeJxEd9e8JrNhIGjLZ7BBft4uzMADsoYb+4J0aAvE2KJ4SqUTMaRiVfgHp4acdRHn
         Nvq1IaE4auchopkvbWFRl/YIZ6UZ0OSQXLGHb7Ew67DF2vqjiSL/7QbZLymJzu3qtXyw
         nI3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=iApiYJqgLKJKVPSizff4fCDeW0UlY5IN3335CNkMDkY=;
        b=NXEtwxQhPaptKS6Pdnylo1odF93kkCzw+4Ript4viuR0PBKNvfN6nzXPz3I6c6tO1Y
         JDtIXObdlmaHKPvK8ERmKHqw46FPuOutCKIjl/+pNd29fXtTXsUsf95uVDlccGj1HL0G
         ChOhMmUUrbSs11M7/eupmW+CNk4MEvnJayLC8x1utkM6+9rMrob61GDYUcvSUoF8aMBT
         S/LbL6isQrOAyMKl0a0kMJ9gxwLhVp3Gv7pSHANNrr+ovxelf+bNNMvFsQ2Xkt+VljN2
         RI8KxRn+WUID2l4LI5nZQYDrF3O4vIyGPOghqTlePODOXMP7xrKv3VNIqeWLqLhe1wIj
         wVzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=szomuO+q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iApiYJqgLKJKVPSizff4fCDeW0UlY5IN3335CNkMDkY=;
        b=sVJ+LBCRAFnEeoE4D3oTfeQjLtO+KyH8CbzTVMAASXrGlHkTiwnBviDRYYqjtI9jEz
         wgkl10MgUHnibB6W46PKiYH7C/NnIlOhv+wlIr4yWJO0k1h4unpheK2qeuIc5TI0RDVU
         sQ/txGFiCj9xowLDmOxHPkVeJfTYMKEq3Mt/FNdBoNpq+4UDFzvx4zs4AJWapUwztGB5
         8v1xzUImJP15Dwgrrg3bcT0M+fVt3f48xe8MbE1ZSasO7yxPionQFwgTKGlyz/0awjHC
         a7KmBeD5kqQA38evT91Uyt5oDKhfWlQycwAjEMOKOM/5Z1EpGuT0UWpiAfx+jKzQLlt8
         NOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iApiYJqgLKJKVPSizff4fCDeW0UlY5IN3335CNkMDkY=;
        b=Gn/CrEcMLJ1dfQbsOg3wKMz1ht6XJV4brN9Epey7SWspU8nIbejJPvVicpATo61HM5
         OnMnJL3inzulWlTFP2qX2yExInkPpQ5vpwBtYziXGyxRY62laIYBt1V5ld9G/7lCpNJG
         uLToHxOy3OyIdj4b+HJwcvW4PpLH1cml03h1JimBGqeBKZRsANLPza103Kn1ok/dKHA8
         1E87iVT+VyOQ+HT6uTd4ZRxgz5OLyZLc1IzJlIO8MLIS2tn3tmi5R+rPDJKOkYXdim/2
         5STBFnaGu7f5Jqhn0iLlJoyDJJgb65FFLtxB1BikalaOp0GFPUe4ivQYiewF/07zKEav
         5rWg==
X-Gm-Message-State: AOAM5335mb0+WQ739UaUfv0BZ4UH3mPpScRHPsu4LvLi9qhxTNB6zw72
	rEw4kh6mZlmnMuPH2lgyA5E=
X-Google-Smtp-Source: ABdhPJwH+6PLQDim5cEo87A/65bJCxYWiQEeuCC2fQXvqOFdnu8UMjvb/+JF+I/VyyRlRwMcnLqaVA==
X-Received: by 2002:a92:2406:: with SMTP id k6mr17452314ilk.254.1608578624249;
        Mon, 21 Dec 2020 11:23:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2681:: with SMTP id o1ls4719565jat.3.gmail; Mon, 21
 Dec 2020 11:23:43 -0800 (PST)
X-Received: by 2002:a02:b011:: with SMTP id p17mr16250037jah.114.1608578623822;
        Mon, 21 Dec 2020 11:23:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608578623; cv=none;
        d=google.com; s=arc-20160816;
        b=P2RNzf6Pz9vHL5lleyvClbwq0xe7cjhFpFAFzttwhan1ggohVgAfp+yXOIw0klEzdQ
         foknniJa7dRLKonSX+0JuhsoD8SSmTLpl8uKN++QeYxsKF0+Vh16iGAuMOkU5I7YFCQx
         IBuUsjsiTZcBmAzbIqyXOj38vrn8NoJ9Fnhw2ru/ltxLAgrFW/s80OPH17yXPPswldG9
         xz4Og08Il5uu4MJz8VSo04S+THDdHu/Sb1hnxHHxr+jca1X3/onNslOnJzn6CSvh+UbS
         CcwwELfNj/n2WqnD9L9RjoEShODG6f/SuiOnRX+hVfNQBRANi8H8TrYtL8jyJszCaNPS
         OxSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=vDrHs3Wh4wiQ+1C089cPRYwyobAGzQRKMYp8ad6fvf4=;
        b=Kf12T//1h/FoZNNJ2zWAcBFwFa2LZQyDJQ8J7CPsxB3bvX0xuubgJsUyTGd43dSVP3
         o7O17HzbAkKYorMgeUxzGdMSD+GwgYROSWlFB66j1cLeDzre1fH1PjktBVS5+Bn+N3+q
         2BWgRBPoe/wYfFVESpWGKk5uzC0aNoPu6ghHtrHjxRNkdheFXgea/7xcSYIGP2kWu7Eg
         Ae0rcXZpZqoFGSGUa5pEPFulnVJXx8Q7y6SkNrAWn9smhyH7an1Tv9Wrc3VKlEg5Ywzm
         7XA90iFbNx9xWU0bP7xmgLVmuKuxBfjwJyr2odN+q8Z3fKm+UkZs9wrvYnzD0m5aZLnY
         D2Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=szomuO+q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id j4si1660738ilr.2.2020.12.21.11.23.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 11:23:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id lj6so6700587pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 11:23:43 -0800 (PST)
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr18434339pjb.101.1608578623350;
 Mon, 21 Dec 2020 11:23:43 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Dec 2020 11:23:32 -0800
Message-ID: <CAKwvOdkRgcENHvjJP5+MNrQzk_riBBFG2zSaDgD_62x4k7s6iw@mail.gmail.com>
Subject: Towards Learning From Linux Configurations' Failures with Clang
To: Mathieu Acher <mathieu.acher@irisa.fr>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=szomuO+q;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d
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

Sorry for taking so long to get this posted:
https://www.youtube.com/watch?v=7_Vn9qB2j1Q

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkRgcENHvjJP5%2BMNrQzk_riBBFG2zSaDgD_62x4k7s6iw%40mail.gmail.com.
