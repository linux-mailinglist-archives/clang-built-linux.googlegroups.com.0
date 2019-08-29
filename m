Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBD7PUDVQKGQE3HO2SAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0FEA2828
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 22:37:36 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id n13sf1481637wmi.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 13:37:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567111055; cv=pass;
        d=google.com; s=arc-20160816;
        b=t9KLSdpONrx0rGbDn46LX80CHV6qiDVBsvf0fSf0mu9m6inxcEVlvfvXBPeVbhyLjv
         Y8yT8QUIRVT9yQV9awBSq+6DTJUroyJ3KirWBN3QOvXvEWN0bSChUoRSoQaWTEKFuKce
         Q7pJBlV3YBWc0WHma0aZBTMDnh4vIUc9li98pdUaTcfWmSBzPfKHtWIbX+tbQMxcPLcL
         FSPB5xC+aI04/YCLD2HNMSAZdfW7D2KDQs9sZh1TXJ6odLAfnP+l2WIWn73QHatbjtIu
         k1UxxJh1JAgnm+o1uU2BZaFSlhhSJN+XfW99iUf5+uI6xIzDy0Z7lk2pvii6rKSKSy8R
         3BXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ng/ZJC3r+hgP0SjO45osLU30riAz11RZk5zJ8TFocFI=;
        b=0zEhd3SUJTYd8O8nPG66Xb+o2FkIw6ard5osQgkHpUVBbzapuBgA44ZQDx9ntRa4bC
         XWAxRJIC0iWiwNx776B5/AXaE+abkJjq4hL1wGldeHVwKrD/mpalr6DLPd7bnTIO546c
         pbhKm3TvIdYjAHwkrvW5Eqq0J/+kDmB/UKNAqcjO52xaWVkiAlvvTvvC0v0grEyu28MD
         grF1J9bz/oER7h2baKP3ueAQmG443Jm+ssTv5Mt7xcJr4Rl+S3I+ZVqecQWqAtTlEL+G
         5FATPlAG0t3PCnIZK3eby9Q0fNqL8JT0feNZaXZqbdm5zVx6mTqKoJYPUzt736RkmxxV
         kq8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GPUqryHr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ng/ZJC3r+hgP0SjO45osLU30riAz11RZk5zJ8TFocFI=;
        b=Sqo3OZeOCdVY+2cUYpRq/loT5FXfkFvqcefXb7r2iwSz+Ckvq0Ha+24gYLxwNty8OS
         NTl5nW17RkZfBFLB+RL2DBCJPkQOX1aHEVpRnHvVALzd/Qqu/t6nABSUPd1JpOT4SwFT
         JLNRFI4ekfHu4Hahnj1KsoXT85+OvKDD0xsuXpxiDb7m1go/ZBuuU1ePor9+30qtLtFX
         Viu+eNoaTQj/wFKcb0KTL9jDS/dLmplH2VwuriIED9JER1xekcv9EQMUWMpGALWdIP3+
         VkI7qLGYoUqcnqkSyWUl9Bx4ywy+cTVDdIuIYSsFrmcK4ctGArU9yZCfW6nkFpHrpfO+
         D/Lg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ng/ZJC3r+hgP0SjO45osLU30riAz11RZk5zJ8TFocFI=;
        b=suPUkhUuhXvxF+GC2W6P06bAf/Cfs47foD85O+DDtaVUoUqyXAxTCNL5jr3QL5KBs8
         JJT315JzluZwufCqmLzxLu7p4hBD/cQ4qfMOAJv5RD+JDCnKPEM3fRAvPVnaWUwjqCW9
         BBnXaSzHBArmZ5ml6dh/r1qXG/VldhznpLjD5ibVLNAtxg9vNWZ1D+jR8oymJ2lVkndM
         x4yRQZXreKnIljU5jJYpqPU/Qubw85GMI/tIBEmCoutMKNfvvckyGIA761tmwwyoZq+R
         Sve2BsiDWcOkzDAjXZLUaGwMBabA1zUBfcxJfcu21llgY95YIUIdvmebh9cd7bGXgZxq
         JqqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ng/ZJC3r+hgP0SjO45osLU30riAz11RZk5zJ8TFocFI=;
        b=MNAiEvXyAkcX3Kab5X3aAUk5SxHvqP2hTywoyrwQtxEmfJ0iLS0eqDXcmS3mUUEoQu
         CVErM7xftK0THQhvPU/H4F0gXRkobGwtU8B2j94H4IXv47XvqhmPt82RK+LX0PdEVgDl
         ga9dqo5SCR/fPnxTVx1nw+FT22u24umQueYnjHsDGUU8QV7dnzAPZzmZ1+4JzjIjvxD5
         Ocov0jYE827zFjSmXwTD5ZZShSb6+kbLD5jiGPIGLbi1cDVm5+uBJt09PO0VFy+DDWZi
         8JNeelwtWFBMIAgq2kX/TPPcv+NYkuclziEJi5fc+TNPGgF2iZIG/yhCvwVR6FQXBs5a
         AM4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXufk/vTrkP0SG9ADuAvwazcj1dogWrjStp9vwkIyp0OnimGv0e
	MSZtx6zhjX4xVPZrHaAjxiY=
X-Google-Smtp-Source: APXvYqwH6aBudfm6QKJLH8+26ez5j1B6/uYLprQnrTqugsrcPIqYRLbZ5B2G3ZLLRiafyOPVZ+gygg==
X-Received: by 2002:adf:8444:: with SMTP id 62mr11398583wrf.202.1567111055886;
        Thu, 29 Aug 2019 13:37:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44b:: with SMTP id l11ls1470997wmi.0.canary-gmail; Thu,
 29 Aug 2019 13:37:35 -0700 (PDT)
X-Received: by 2002:a1c:ed1a:: with SMTP id l26mr14507699wmh.34.1567111055335;
        Thu, 29 Aug 2019 13:37:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567111055; cv=none;
        d=google.com; s=arc-20160816;
        b=WUVY4xLNzKJfgVF2Ga2/1k3GazkLsd2k+u0tgTEneFurgr72DGeIPeMsidDBVSvr6m
         Q3G+qdyM+s+QgKZLoNVbzV+2sN52D3hK1b5gsUlICw9i6z0v09ekcmmhPMifYBK0kGoE
         DNAfHTHtXMfp58WM8gd+QBdWPkRWakc2nlV9/uRUGizedIZE+z15z6uGvS/BgOaoTOKt
         URtYPQAe8CaPMTCBQpc5t0uf2LFKiIK3uym3nIFhxYmAGiwXJAk+6ktP1OdJvMtbn3R9
         k6eFmewVhHzh6wvUnk84B14YC+n0b3G1LxTwSHrC9vrEnppZ9CK+JeSNFLVRqWQ+2Abn
         8RBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4ntHy8qnLbvltzVHdmKX4Hf7t3TRxi31vLBSSClDxqI=;
        b=tQb4UJAt7/OfODL2gR1c638p4JW3FdTOiphlMqCZwmotbQ9uULuD7l9oPzuWNB1Q3r
         eNA3dLSvM3+NwPfxiwq54Fzl9WrDSSTKrdUlBrPT8XUzhD6Lcy4wjXMxhMqZRbdpyHpz
         9bD6xBKSRhxJ0U5m9AJ+kO5oblDpaqRLNGFxIX16WZtxA+unZ4qEgmRXCkjO0HJPP/Ec
         Flk1+JweKLQcvDbKWYrkVnltDhKtws3ywHM25RfoW7owGBxIC6zg80Atbo5INOSLIaXU
         NXcUUGmS2JHRbCJEPau0pYhkhptC5TPp1mv5qkoyyBxyargvRIv9PVwI7m3ZlWJEIp6U
         bzzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GPUqryHr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id g7si728659wmk.0.2019.08.29.13.37.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 13:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id t17so5057284wmi.2
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 13:37:35 -0700 (PDT)
X-Received: by 2002:a7b:cf21:: with SMTP id m1mr2287775wmg.150.1567111054983;
 Thu, 29 Aug 2019 13:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com> <CANiq72niUcQv-TFn=_0Ui7nEM9ESKNC7n6GPQs2AKXVsg6ZV=A@mail.gmail.com>
In-Reply-To: <CANiq72niUcQv-TFn=_0Ui7nEM9ESKNC7n6GPQs2AKXVsg6ZV=A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 29 Aug 2019 22:37:23 +0200
Message-ID: <CA+icZUUi9Tsjha+unG+DasXZ9oBb6XcuZvj+N9h=b4XH7cHmqg@mail.gmail.com>
Subject: Re: [PATCH v3 00/14] treewide: prefer __section from compiler_attributes.h
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, naveen.n.rao@linux.vnet.ibm.com, 
	David Miller <davem@davemloft.net>, Paul Burton <paul.burton@mips.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GPUqryHr;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
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

On Thu, Aug 29, 2019 at 10:24 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Aug 29, 2019 at 12:55 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Changes V2 -> V3:
> > * s/__attribute__((__section/__attribute__((__section__ in commit
> >   messages as per Joe.
>
> I have uploaded to -next v3 so that we get some feedback tomorrow
> rather than waiting for Monday.
>
> I added a few changes, please take a look at the commits:
>
>   https://github.com/ojeda/linux/commits/compiler-attributes
>

Thanks for taking care and bringing this to linux-next asap.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUi9Tsjha%2BunG%2BDasXZ9oBb6XcuZvj%2BN9h%3Db4XH7cHmqg%40mail.gmail.com.
