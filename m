Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBB6G62EAMGQESGVUOKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F08583F0F1A
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:17:12 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id p23-20020a9d76d70000b0290515774e154dsf1804179otl.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:17:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629332232; cv=pass;
        d=google.com; s=arc-20160816;
        b=EbIxVBGIqKm/415Jv68hcDrnRA3B+QeDdxQ7+Ru8/m68uumdSY+W4e6leQ6HPiyzPN
         BmeB7DZnEs1vbUI4PBozUBqB0SqoCxTuIBP5whWU23Rf2/kmNksbz7hA5giqPgsNkx7s
         74je0Bx8VdH5ph7vJDo8msX1mv9rTPwMqqcTKKg7CqGZA6Ocy1B8DZ3/NVX5+mSiZB2l
         t0dWmEp32uyRPY/aVbzrzrt/1pmNxC1aWtvqqJvvYsxliC0lvFGK9RAgXfl6PyZWbXTO
         M/daYTkriuNjPRQ4EnGI73jTX10+tvKKtRO25gSiDVQtGJuf/X66YyBZsBPaW9V2EpAp
         Qs3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Up+O+XIAZpM+X06D68FqzuodKU0PopQ7ZvO189UGyMU=;
        b=qMBjh8j00mbnABUQEeo8LhPR1+rwtsl6zvqnujSUCNpd4L94sBxtLHcnE+voqt8Fhj
         khzO46XwmpsDzC1PRMNWtW7c+6ff6H9a5RWBpzh5KEpfTnQjq/CC+r7PRdd9gtF0qcZ9
         46umZV3WKG2XTB0Vh1Hiysi1Z034xaaAUA+K+p7aSLnckIOxztIzzybO7eSeHzoN3slA
         AvFZvvmcrtT+ig3T/23K9KyE3ZXTKCbdSbBVmyP72NwaCz4Uu1swgNjw14SSLqWfWsso
         EJ3iwH+U/Pp/eRpniiz5VN9kByXzMDFSsRNo2UtmeM2pi589rgkke6HZRECw23caAHr9
         ZBfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=WuhfFANs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Up+O+XIAZpM+X06D68FqzuodKU0PopQ7ZvO189UGyMU=;
        b=IYK692SBeuSecOHkD3gXyoAKHYIwiM8ZmbrDWrjjZBhnSQDyO2t4Tls1Jf/0U78vuU
         UC/GbkUrAmKBmMoMoQ23iupT9HCIMsZHijhImoNUkAB22TO6dda5TyzkshaLo9GuvGeF
         sgNuLsCnsvrZNROM+f/kv+Z9tcOzIasAiFFUGcCkfeTGOKvqoz/6pfm9oMP/UjnE1/vC
         UZNkGYe6ilRmrjuNvoWaCEp3Irx5qujqFa9KBexc1TxIXhDRWF1ttYI5FCfQDpSN+OZB
         bdDFHZqAcXbA3eFbs58cLHFH0mjWuS9YFIRJvfwYDcEUIBi/8shXDnYO/GfjdTllL/I6
         bbJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Up+O+XIAZpM+X06D68FqzuodKU0PopQ7ZvO189UGyMU=;
        b=S8QWZbC1fMyK67f+/ZgoFmvPGr01GfOQXw1n9itl+/QKJ/8St4vX7FbL663Iq22NnO
         ZTfOhuqUREJwsLch4xz9FXDxOXOdv7qNU+nQ1cLAZ1BKQQmZzLSB5BJ1nDzUZoQ6divu
         mqJmolIgmp3wPA7VtL5vOIZxXG/o5Qr2CCQhUku5lXRbBvOP7hiu+MScpHRMc+Qq0gjs
         /vweAZqxHIH9lnUATy8w/nXvJeTGJwtRsjOJRJqngC3eQegDUs/LEX9m3PojzBBODoud
         47uI0f6NZVaEos1E1TsrJ5S4iO0TdPTeHqb70KpLhA+pd1obv1REqG0lDWol94LF5ibV
         gCmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wjHROuMn26/VXHUjb3g1KujrU4OSSBhOX+cp4DLbkQufAqeup
	Tphq7Ni2w/ET22u0lhZM62A=
X-Google-Smtp-Source: ABdhPJzkO04IpLJMWHZhtXPGXmqcCKzWPfaNLnN5czYXZuUzcQ6Dmlc0F0NFBgVHGF+zEqWSmoWyNw==
X-Received: by 2002:a9d:222:: with SMTP id 31mr9540258otb.79.1629332231921;
        Wed, 18 Aug 2021 17:17:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2a05:: with SMTP id y5ls1018090otu.2.gmail; Wed, 18
 Aug 2021 17:17:11 -0700 (PDT)
X-Received: by 2002:a05:6830:617:: with SMTP id w23mr8894078oti.263.1629332231578;
        Wed, 18 Aug 2021 17:17:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629332231; cv=none;
        d=google.com; s=arc-20160816;
        b=G4dJaQmFLdiz9zxzZWPSRDe/c6t5+O8/tlKNo6zm8hvvhD0V/oe4S6i2HSgpxSqBJ4
         MdwRzLTPNXDwrCuSe+q2C14A1jY3LHRpm2dXzy9/NutBV/sJTqYkvUhiUxOWQu5e90xU
         UJyTLenuotmELf4VTOhCfTHzoBMyNWc36apCNqcod46Iicw6m4bs+UUK7ZWCCwD1MKwq
         mNyhShAHwAdtQwdhFsgIl5X6uawfu+xoWeAz8+I5t90wo6LDk34xZFrvQNNKfxD2eEjN
         eTmBzaqPVjSaf4kmkKDZeYLC6DsRahMB3Q3ontrxpcTCVKma7mlTj9esX2Kw9DGG1Iny
         /9Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=WYUUDHvnEQEP0mjtTSmjyCMMUYrJcGv9y/e63tdTC4k=;
        b=ju2LhWXc18cMk4be1WnCved2C564SokFxPzRkZsBZnJH6U81I9+AW6XLwWAWcf3CCQ
         n94/5H4SyihBudlRkJoGlbYXGbgQrElrL7Pmdze/HTRcFlxrooVInEU50W8yoMy9fXCE
         BG8VtF3KtXk3OQjONMTfcWj3AMlvNhNLcDy0bMwftxwlD3REjlPuawaNaXMoF06WEfNx
         79QuYNT7Whb1xz5rEfeQrj+VbwMd7YSjNtCrSVNdHk9sGyyz7+lM2MOU2zU1+RHFSNML
         yII8ptz5fKqVyH0aapFnxWcbNdgvMXzR4Y6UFPiUiEg+yQOhVe27VCFfNuOLJ7MAlmqH
         1h2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=WuhfFANs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id 72si83322otu.2.2021.08.18.17.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:17:11 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 17J0Gp9u013760
	for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 09:16:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 17J0Gp9u013760
X-Nifty-SrcIP: [209.85.210.179]
Received: by mail-pf1-f179.google.com with SMTP id g14so3844764pfm.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 17:16:51 -0700 (PDT)
X-Received: by 2002:a65:6459:: with SMTP id s25mr11432394pgv.7.1629332210619;
 Wed, 18 Aug 2021 17:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210816202056.4586-1-nathan@kernel.org>
In-Reply-To: <20210816202056.4586-1-nathan@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 19 Aug 2021 09:16:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNARrV+KPwcXPd6jaXZ7F4P=vqk55iDbZtOF1vSND0vQKYg@mail.gmail.com>
Message-ID: <CAK7LNARrV+KPwcXPd6jaXZ7F4P=vqk55iDbZtOF1vSND0vQKYg@mail.gmail.com>
Subject: Re: [PATCH 1/3] kbuild: Remove -Wno-format-invalid-specifier from
 clang block
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=WuhfFANs;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 17, 2021 at 5:21 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Turning on -Wformat does not reveal any instances of this warning across
> several different builds so remove this line to keep the number of
> disabled warnings as slim as possible.
>
> This has been disabled since commit 61163efae020 ("kbuild: LLVMLinux:
> Add Kbuild support for building kernel with Clang"), which does not
> explain exactly why it was turned off but since it was so long ago in
> terms of both the kernel and LLVM so it is possible that some bug got
> fixed along the way.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---


All applied to linux-kbuild. Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARrV%2BKPwcXPd6jaXZ7F4P%3Dvqk55iDbZtOF1vSND0vQKYg%40mail.gmail.com.
