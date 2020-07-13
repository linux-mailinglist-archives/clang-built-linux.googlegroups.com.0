Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWM5WL4AKGQEXKBHIWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 805F821DDAD
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 18:42:02 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id 64sf2918731oob.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 09:42:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594658521; cv=pass;
        d=google.com; s=arc-20160816;
        b=cgw7cHDqzUKNlCHfT95ux6QvPITzP3DEZgcfOsr4PACGPEZOTUqqDyyrkv9R03M60h
         +9W7VHKoE0HhGxxMLT/zuhL5M53pwQSpybU2CdcD7SSBMPVI0Jf2pI3A8JaTisbHgIWH
         kGGcQbQ8pQrERMzMs70393kyazA+F4uGajEZHYnuFaPvEHjAVhODnnn7H4I06PcIBth6
         b2wm6A/EdWltn9B6nFCTOLX4KN0Oru8ElqUMl3i3e0x1/ZwS9i76RMzX73OewQQTAutc
         p6J8rAMqXEa63IB1cjJfkd8QN1c+irMLILb8lXYLLanhpWbjIJOI7im0gk4SzPFU+puM
         ivVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=Ifyd7lDNp2WwaoLgZKkUhfFKSspr6a9F/9Y9uURu3vQ=;
        b=PS4oABdfM4LCxxEtx3PN7qfi22dWmBbkQ9GpsgxhfljPn8CXxIpicvzka79e1OHUzH
         CV4Q0WJWjJ0ejPurmKnzNCdQbn0M1mrZG960pcgG6QTbOFE4FuYic+mJD8XWViIDSiCL
         qdoM/cGpYfApYuw+8HnnDMgIH2xan8DLgAE+LeeUz22ZqkRM5yLR5MA4D/lnSsasmFEE
         8OTY/KxLm/2R4DU3GAepwO9EI2wff6TrmlqKBeW96FmF3F/WNAgpn9dA3DQlZNkLVBp1
         64cINnpg75ss/ee/q97u8UWLEtDygF5mMQLKRS0CIX/Jd8be/zyODUI01h8tnDfPnzR9
         /dxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m5S65qmf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ifyd7lDNp2WwaoLgZKkUhfFKSspr6a9F/9Y9uURu3vQ=;
        b=sgFw8q/uD78e5Xrtjnq4LLyjIH4ontFIKWc99IEKSVIBSPeFPldiRAni4chR5Y6CRk
         K3nqvn6OE94/t2uU9SJD9rnqyIDBnvgdoVtai5fNRyZS2ROAJ5I8NeJKaDWmrfzLtVgN
         NIiEcGmGeSjTOwLVnxS+/bGw/9GPtZ1mH3bPxCs0YGfk1IMyYLsLbAn7bX2p/5Si5v2f
         4Wv7IpwVo3QI56dh+rTK+gjMibVEnxdUjNCFzt7K/8XTP+fOejRQv4UxFN56HVeyN6lE
         al/A+8zRZL1WLY83rGioKMTNkBNI5wZZdhDBtoijbGFuhhsdPE+GHYdNnsSOMh5f/Y4m
         R25A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ifyd7lDNp2WwaoLgZKkUhfFKSspr6a9F/9Y9uURu3vQ=;
        b=CEFrcQqYdvoRPBiADv0GkIQzIdSJxVaGnG8HXR6r5Wz0hiEM5rWXHY4ovYgLV6M/85
         s0+pDFFuKEdx8GykB7+dzM5UldSyZk/Pmx+XBUekRC6U4LiKWS9I0Jh5KGt5xLYl2kIX
         YT0VhivcyPO4637D8OwlfiCYCbXItTCkDPUNioWHHyAE3WE6dwelHyYqgXpPmD+KktsY
         bIoPjXzyFOMpqI9+yW4TE2T5jgwK7O+mxb9QFdX6t6xkqAoTsTvCx0jgGQJyf6nun0VY
         n53TilKAc590dKJjpeGSFIs+GB//GqAH5B1Kb2BDcbfS89wutnYVG5fx6/aUBSTjoECy
         n+NQ==
X-Gm-Message-State: AOAM530ljXn+gwTdltqQh15RqlmPttFMgplx9uXtclIolcZDOiw83hT5
	LsizCS2tNCZ15mrOrI2fgLQ=
X-Google-Smtp-Source: ABdhPJx4O/ox6QmGSutkG4QcbzkgksPqjHAGhBdL/y9T4rai2NWsWW6KxJ3RBQd3KgalzMdUeHzYtQ==
X-Received: by 2002:a05:6808:112:: with SMTP id b18mr233251oie.140.1594658521508;
        Mon, 13 Jul 2020 09:42:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:520f:: with SMTP id g15ls3486677oib.7.gmail; Mon, 13 Jul
 2020 09:42:01 -0700 (PDT)
X-Received: by 2002:aca:a983:: with SMTP id s125mr266637oie.30.1594658521235;
        Mon, 13 Jul 2020 09:42:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594658521; cv=none;
        d=google.com; s=arc-20160816;
        b=uxI8AQfqu+a0KMCJdMH44QhVT6g+TlT/kVJV/YwiMpaSE6WfIOfgsXYt775pD+oNOg
         gKm1QL10y9D720twUakOjVlQNUi4N9CobjYB3qNutM7xGkj/89+2AGG7uvsI7U76SB0Q
         7XIAI49+09/54SCIlke9b1rcPZb0enaWcEyqWkiraayufTV/zaRoqR3MaEH3kebLpQvo
         7v8EPzBUnJGcgEC2L8AA13/6hFlBzNeW1+ZyayjhATvxLbrW3DGOjnz5yaZCNa+3fAx4
         BBPANljUeGax117kH1PqcJ3nKb4zL0T9BGJYvvlzxNpf/wpaybcgOQtwCqZ1Zwcg8p9n
         wgUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=D2p8l4RwF49IaqlGNhFNX2PDV06ZlxWtnVEnPdUoVvI=;
        b=knsDwv9IxbHfqqVszW+VUZkVXWieYPMFQMJFLctceWVTkxaPRTBgNDBsG/s73AF+0B
         i0514NVEx4aZEQ2/rH+zy4Qlh+0pxpMOXIYyARGl5GVIHeTVf+jJ57lO+pETLvdRVUeW
         f0bgOr4ZNIWx8hJxoDeOsvhwcI/gy3BwvEJoM1PzmnKPNw0wtnMFWsEybuhK5vZQoqGS
         C4cjuz4oUWD+sGR8d/NSiiG66K7SRSB87YxnXGNTt6qNfk6B6chgcA8op28nmdEf+hBj
         uTBueXDc2x9ae0u+tSooZ6Hrsd3zt+iQV2jYvrPOCZZ7ruaCvPn+bzrc/JEWASDUMGh+
         02JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m5S65qmf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id h25si726464otk.4.2020.07.13.09.42.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 09:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id o13so6276162pgf.0
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 09:42:01 -0700 (PDT)
X-Received: by 2002:aa7:9303:: with SMTP id 3mr682479pfj.108.1594658520341;
 Mon, 13 Jul 2020 09:42:00 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jul 2020 09:41:49 -0700
Message-ID: <CAKwvOdn-2E=v_7Uie71pz2jjYCKnk98K1Ly8EkpxzvC6M5pXFA@mail.gmail.com>
Subject: linux plumbers + clang + s390 virtualized testing
To: Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: linux-s390 <linux-s390@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m5S65qmf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535
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

Hi Vasily and Heiko,
We were very excited to see your patches going by for enabling Clang
support for s390.  Since then, we've added s390 builds to our
continuous integration setup.

We've been running into a few issues with doing virtualized boot tests
of our kernels on s390.

I was curious if you'll both be attending Linux plumbers conf?  If we
carve out time for an s390+clang talk, would this be of interest to
you to attend?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn-2E%3Dv_7Uie71pz2jjYCKnk98K1Ly8EkpxzvC6M5pXFA%40mail.gmail.com.
