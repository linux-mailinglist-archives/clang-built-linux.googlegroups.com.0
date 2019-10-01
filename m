Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBH2ZXWAKGQE6HH6CWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB2AC3A53
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 18:21:26 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id g8sf39393308iop.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 09:21:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569946885; cv=pass;
        d=google.com; s=arc-20160816;
        b=0zxwk56qQPDeVXbN0nNeuNqBLyGOoAhHUwMX3X6BJ07oHwKPl+E1l4IU9bq6G28fAQ
         xOjDYd0+0489yQxa42uZWC9vHxJT2e08B2ci2FVWBQI7LgXLDRMltHJYVgSlVQ8r/blm
         p5bbllTbmusgM+QeI1VFN+ZFKJhoKip5SOvoyTwjFtuaJveje4aHYOur8dXekwYMmb2S
         AF0R2Gx/RhJvPf4YklvwY5DMuckAh99OJ5MqNjROKN6SDJEht+5QoccS9sIitRMk43Gk
         DCqX4H7gHTTUykohfZmEgv/9X+uPnksMG1EZ7N2Y+ZzFe/e1wTYrOsz7aJ/u1nh2iRLd
         5QBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=dii42Qv7wFCBtL5MnkHM0k8jJ6pPf/m21rHkZGvJfHc=;
        b=NZN18ESu7WQOidWfLHqBACy8ag/4/oo8EQ4L7H5kJ6ea18bNDASvAwOem0kxEQdaar
         1Taro3P6xmFA2nxMFGMBi6HQt5Pn9liycaViJKCp+Ve8ReetEeIjKRHpG7pOWjCbejTB
         Z6GdbUnGftarLgOQ13Hm3enlpK23rKagVf/QItwrxD4SoYVcumMSR75flIfp9+KneeQo
         7sDObTSAhshlgh8WJEiB8hFuh/e0IIVsRG5y8rF0Kq0DhWSMmBmZJw7WDEpgLEwNNmfL
         TJ+HFXgEKUkyPHlQ0KfA/nrUfHeN8z066NAW4Qqdd3bBuD8G/KdpQHnn+EXXXp3FemX4
         slZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G+DasL0i;
       spf=pass (google.com: domain of 3bh2txqwkad8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3BH2TXQwKAD8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dii42Qv7wFCBtL5MnkHM0k8jJ6pPf/m21rHkZGvJfHc=;
        b=gR6Wzft7kz7/Bfdve7VflqKi8pItWbshSZW4AA/Kz2OdIcJZWb4Z/xHh6dcGvm56bx
         sVITlQ2dYL+OZc90Nl+BgafcjW3+UMLDyZx8kDN8Tj0MG3DaQtXISeU3UR23vjXxs/mS
         LJFjNrHMCi5MTNRhUAtZubaknmEaMsS6hQb7Q7NkUj6FbM2ZP1cU7ipdIIK2t7Xx1dY+
         8W/2bPoChef8pzjOkuBWn/4zAssfFhSy7mvf/5BDuTclNKHOukLpSb3iZGV9r6gsX0+x
         OaliCdSbFn/3q+l9VFLyWui60UtnAT08MTrMJjhrFAaQ1Vjt6Hs+Wigmau3g+UlmfxH4
         YP1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dii42Qv7wFCBtL5MnkHM0k8jJ6pPf/m21rHkZGvJfHc=;
        b=RrP8LpO5buLjtB26ssuIsYw1110BnaDeDjvvUSnvceXvcO/pOMsxsi6lrHQCf7zVPF
         Bb5+ICBSIRUfb/IUodzfPe6/5MYUDwsxO8Q+8roFp29Rl1RSi4SpP3xhLLGPLKY08ii8
         h8Pw/3foG9bHn5Fbx2vMaJfTndDtxN1BWY2R6EC5J01ajmbbZadfuyRN+wkFK7lcqIu1
         N3dn57yNZLJqpO3bUFcdXeoeQq7Qryv5FlPWCefdWLnvkj/02WaNUVsFviaQMQ1MHA+W
         FX8/fFRrJLDdP3oMevJXvT0xtiYXoCInsYKF6utUnAwsLnRH3rQK0jlZHUHeP+bmsY/B
         dXsw==
X-Gm-Message-State: APjAAAUYbH7TuEy5aW/XXk5zVX/Cbt0TVqnRjBEnxdmM4MKONvTpQja/
	aqkQLjKvu60pNzonY6DDz2E=
X-Google-Smtp-Source: APXvYqzmHQkYlORKLWo4jePyAI7uvxFOgm0Bt7xCUeVVd9Qv82U7VPZbWzW3iPZwp4wIXcDx8PNPrw==
X-Received: by 2002:a5e:8613:: with SMTP id z19mr2959916ioj.25.1569946885090;
        Tue, 01 Oct 2019 09:21:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b104:: with SMTP id t4ls3148229ilh.1.gmail; Tue, 01 Oct
 2019 09:21:24 -0700 (PDT)
X-Received: by 2002:a92:d206:: with SMTP id y6mr5675497ily.208.1569946884784;
        Tue, 01 Oct 2019 09:21:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569946884; cv=none;
        d=google.com; s=arc-20160816;
        b=c10duwSxM29nknCuNTAcv4cVpawSWJ8dQKvAor4QRrjXoC1YC21W1kvD3JWbQvBg+o
         J2TZeLWatu/+9KmNB/myusn29uA62eHhl//SCBwpxVRI3greiulY9vYBDxWTXE6iq6bT
         urfY0n9NYFtPhg8HACGpyTUsmkXQHB5A6yYHcNkLXaGFZ8y4ubk+5AxybB13nKAH4Ayu
         lg8PQ4wzZWBvRz+MWV3HJ0mW2XoGWoJ+GKVd1tH3vpniy0SUbnJ0myZ6MOoJwuf+Lfs7
         6cpSHJZkbiU9rySWkOWXQGqvalyRjQI6gWMWhDwmKOWjr6rf+/VNX7CPjts4m0Ys/wAo
         nMpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=zGjQR/sTKc3smldtiGbvkknjnXT+JplA/pSqSqfQKlI=;
        b=e6/O1v4LvEoTTd1y3xb7BIbXZeCsVX9g/k269nvTy86gCPZXkfn9ami6ZO02QI1/vF
         i4DdGHPmK+H1jo2IDF41Qb+Y7XGwI9mSl4wRJMXrvCAEEBtyDxX2ab945EfYZQVKjpbP
         rI9t/XNeGqhEk9XHoJp/M5p7esUVev1RX11/x54ECdpe4A0OCsmFiKmK/A5nxfI5ceFJ
         ZVmVx90oldyY70pa5/lQu56kYugKV++jIG3EQQ+Mu0f//lhli76p06G8r/VV3QFWwVwh
         EaLyHohgQCct/He37ujtmNxNNRAOZAuDHhR+7FIiicST/mJTjUE8Z+wAGXCQahJ4G4/t
         BJ3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G+DasL0i;
       spf=pass (google.com: domain of 3bh2txqwkad8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3BH2TXQwKAD8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id s5si909289iol.1.2019.10.01.09.21.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bh2txqwkad8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id s24so951293plp.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 09:21:24 -0700 (PDT)
X-Received: by 2002:a63:d846:: with SMTP id k6mr31013518pgj.378.1569946884027;
 Tue, 01 Oct 2019 09:21:24 -0700 (PDT)
Date: Tue,  1 Oct 2019 09:21:21 -0700
In-Reply-To: <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
Message-Id: <20191001162121.67109-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
Subject: Re: [PATCH] Partially revert "compiler: enable CONFIG_OPTIMIZE_INLINING
 forcibly"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: will@kernel.org
Cc: arnd@arndb.de, catalin.marinas@arm.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux@armlinux.org.uk, nsaenzjulienne@suse.de, torvalds@linux-foundation.org, 
	yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G+DasL0i;       spf=pass
 (google.com: domain of 3bh2txqwkad8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3BH2TXQwKAD8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

> So you'd prefer I do something like the diff below?

Yes, I find that diff preferable.  Use __always_inline only when absolutely
necessary.  Even then, it sounds like this is a workaround for one compiler,
so it should probably also have a comment. (I don't mind changing this for
all compilers).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191001162121.67109-1-ndesaulniers%40google.com.
