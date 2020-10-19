Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNW4W76AKGQEW3UXS5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 5202A292EC7
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 21:51:21 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id w4sf367202plp.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 12:51:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603137079; cv=pass;
        d=google.com; s=arc-20160816;
        b=yvynRlapZmf5UYxGZE77NjdPFKy7Oma2BO73PmKcWSFQ+ifn/pSkiaI/C4CgQeO7SS
         CDCFhUzvY4b2YZ4kK7vuZ75OMHwyH6unZibSKTljrSFZ1zGDRiSXbDV4nPPcPFfkWYrt
         pVJeyomFzJdkViAlNbpGXkqj/9Z872qW8y0AJ01/Vvwa7Lb72Wnr0CgYEIiCSVS4ypiO
         xEdaIOYTP5pbZuPECIs1CI30UJBNpb9m3sJ34Fey5+PInZOD/QpIoSaVX3DOxqTU33yx
         ZCbtxGzv1xME8XMkNgP5jcG39FbciLy8HnM0G4hJolPG/XsX4cKerArarDp/wVVX+fJ2
         tpIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=uKBGsMDnFTAwWtBRtHcWaaCYv2+v5S/o4O7L0dl+71Y=;
        b=rv/iQ5CVkIWaylKLxKoH1BJwoteMBiYIXmdbCQxlBbm4/Ddl8R1FFNxyYAaYBwaWDT
         K5zFVMSvLOsLHXTsCfOQNipPW0COhfF671z2tsNsuHDaL0E12WNvnOWMLPYS8EjUPlo7
         vdR9hNqiaYhPLLNgCQLDcZMAhkvkdsA31BaqioT09bD4ursS5lcRtCkEiGEa4cO1m2Ni
         MifuoLTsWt4V/2yHvFFfXz3dRgFAZYm877OGbNONN/1l5en6OHXSeTr8m8diLJjWcVmX
         1dYHXaCW24LcyUggMXGhSfl0hX5e/bN+7qfx7ieNg+Fa9nXSPQFLvfe5+6EOvhtMujxb
         LTuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BVb2mdaC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uKBGsMDnFTAwWtBRtHcWaaCYv2+v5S/o4O7L0dl+71Y=;
        b=okQnqH85wZKZEnFrvcPdrlhu3H8GG2bcC4yuDjKHmX1cpT2o4kHXB65gmkn0xHf0Qs
         kffHnAPK5wpCtk1WY7DLTrVZURbiAZkXABWLRhLTmsLyvbdkW3g1X9EV3QD5xl8DwV0G
         ZmyiCy78apYyc2wB2yLHU6cgAzjoh55zao+nTn3c7klHzN8gl8fBXEhQz7xBQu6JoGxi
         pWyDWwFSZ8t8ll7ix+X3faCv6K/gQFefnfX0ihx2j38R06/dCXkVJpDmsysG9OG3aPGp
         frbB+hE4AHgltrZ5dgvN/pUO6tdH5pVUaZVN3F1g3S9bHHN6w77jmwHZG8x2Xvc3NjzT
         fIIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uKBGsMDnFTAwWtBRtHcWaaCYv2+v5S/o4O7L0dl+71Y=;
        b=Db1dhpajnD+eInA6izRAHgRHtyNobW4qsSsD/jmDAt57JAXKh6r6SVNe1bqmR6uYN8
         Dtk4ura69R0BdD36b77lcMWrGRcJgbrVF8Z5gK8oMrlJBq3PmVDdQiLgoA6+2w9IyXuC
         V5DRyXn8GmANm+RGtd6fcD2lssPM6OZdfHl8mhiwsZpiFzQl4iFpU68C0ZgLp/JgYGKZ
         ++LXXo6lXMGXjRphVgNsgDKedmkeF8LLPlN80YZehCnEQGwGWg9N84UK/wCOVgIyEyKO
         qi9AFmYJbeEkWPg/DJgelWv4MjCdZMWTKOQp4YRE6u1I1vAMyTucSm1JK1aSMaHJ+jMe
         4GFQ==
X-Gm-Message-State: AOAM533nUZeZ5SHeoLSrapqYuMrT6VNmsyzXfjFAMlVeYqyjqyx6zn+p
	ssE5SlalQfhmRyhmZ3n3l6o=
X-Google-Smtp-Source: ABdhPJyPNh64fGYLNP6LzbDr4mEuCxyYCDXV2Ri3ifrbqqZSmYVwRlH/iMpwx45RmAluO5vI8Np3ZA==
X-Received: by 2002:a63:cb4f:: with SMTP id m15mr1127804pgi.281.1603137078652;
        Mon, 19 Oct 2020 12:51:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f993:: with SMTP id cq19ls268390pjb.0.gmail; Mon, 19
 Oct 2020 12:51:18 -0700 (PDT)
X-Received: by 2002:a17:90a:5d17:: with SMTP id s23mr1069313pji.170.1603137078111;
        Mon, 19 Oct 2020 12:51:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603137078; cv=none;
        d=google.com; s=arc-20160816;
        b=U3S+sKgbf8iAxCuqYU5m/iVYnMtI4uwW/WxIeZv/pShlEc3UyTVNqJqK2T4QH5Z7iR
         Q2G7CR97uyrBHmbIx/GxlWhwRncBv2zs32ZhoHhLbeRQeB1VidCtyjBj7L0FQNIoSKHP
         uklljzU7QxKirDpR7gQGgZMQWgBELk1CESw6Vgz5rLjdlikVN3Dmaigu6L2QsWajQs8R
         D2UFHWoQ41qSBG13wlkrB4obsBvcyGZdiihapV7C5Jq7Zfcfj6GyVvST2VxkgvY0G4H7
         HtDWlKCRcb0I2j1zv1oLNKHEPF7n6fmh9dK8b/wEDEgDCojzVIbjmIhptV8Bz1o5o6aD
         3s2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=nyz4ajx3RajVKJCfvBL2XKe6aXk7/YB42si8EBLqPfo=;
        b=WD+XWsISwknPzFJfTP0cUXuT6Q6KdOWau1O4GQiyzjDHng073o22z1x43WgxMA1urF
         xuq3UmrQWsXe9IOiOy2NwVpyFwnSfMwGM94bjvmCNE4QjlX7Y/MVeh635clKGxzegI24
         PaArq55B6lIXXky5fbZAQR5VWYgkOVCeJnAXhFf3cnc8U60hondXSm9eVOtzl2Nfnd9+
         9YKXmHwyvL0ZQhxQRMBgCph6LJknC599YQyBxMC9opiZP64adGGSs4qw+u/QMJsHM1V4
         BGZljQdKJ6qnbmBo4A937dUvTbmbr0ufKlqY8nPigXH1x62+K/JAET1bt48M80O4vYAB
         qDgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BVb2mdaC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id v24si76763plo.1.2020.10.19.12.51.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 12:51:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id 1so350410ple.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 12:51:18 -0700 (PDT)
X-Received: by 2002:a17:90a:ee87:: with SMTP id i7mr951864pjz.25.1603137077331;
 Mon, 19 Oct 2020 12:51:17 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Oct 2020 12:51:06 -0700
Message-ID: <CAKwvOdmdPOB=mB5HNhddeHVPHXPVd=NX2yDucrf4BLuZuiJ5pA@mail.gmail.com>
Subject: Linux Conf AU CFP
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BVb2mdaC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634
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

Hey folks, I think we should have a presence at Linux Conf AU this
year (even if it's only virtual).

Joel gave a talk there about CBL in 2019:
https://www.youtube.com/watch?v=6d6NGrSHyRE

Looks like their CFP is open with a deadline of November 6.
https://lwn.net/Articles/834440/

Thoughts on some interesting topics that might interest folks to see?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmdPOB%3DmB5HNhddeHVPHXPVd%3DNX2yDucrf4BLuZuiJ5pA%40mail.gmail.com.
