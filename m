Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQXJQ6CAMGQEVFMK45I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2303688E5
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 00:12:19 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id 26-20020a05600c021ab029012e366eff83sf115746wmi.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 15:12:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619129539; cv=pass;
        d=google.com; s=arc-20160816;
        b=ooUanP7ozdlKHfOQhUYMC8F3hE2RXv5NYCTaXdEnpk+ywW1tbacIK2PkWk9zY1ZCe2
         lxDUUD1qw8FkWsaWjzFMO7RdaSw6HA3Sc/lHi2JSs3pp4O6Lm75a/ZoWzLui93q5uhWP
         CvZzbuZbKQbKsjW/aZciTNWQ0AO98as/INnP6NaLPlBv/EiNskxSOVyKN/20f9w9Ma9R
         b9Fdk9zTr5Lntd8rpyT350FRA9ojFIdenqO/Zo3aJbSsRzeRrIChFnv/13GPe1eNVoXp
         OJwEns7DzPvZUJjfoecrA+ZTjC1O/SZ7DKMXJltA7W72qahfGXa/KJNoIZw5fLRwueLL
         VJqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=M2E/9oPAIAjmzcA4OFV+FEeeJ88Fmq/Q7Jj7dFXD5D0=;
        b=Iw/oB+UJmFo8ykLw1145F3ow2+oZKXwxpkZtfupqGuz/Ti+0yAIqH4oHNm/bh1LSuP
         dXrXl0oefUkqssOhNULvvWsa7vMxbP3PmxcePkRyVArGqHAioBK0GZOWgRpsQD8JTvdE
         CC3Ne7gSlf3R9LNyOILhYnQTeBxYadNePhSQaupXCA/OtC3GyphsQhRtCQWpOho/+hdi
         yWkPcxEbatG8rSi+euGwpYtQA2D7KL1ZVyzj42NWb0Gz9FLslzzg8rpDYpH8KkEkNHHL
         ma1/Rz7igXd75mDsSokQna9+SHxGiRH7AHiUSx+ZzadbLqFUNj+zzJjTunczt4KBSSx0
         F7Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SAN+kJAr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=M2E/9oPAIAjmzcA4OFV+FEeeJ88Fmq/Q7Jj7dFXD5D0=;
        b=cWz6UkEYEkEZbPD7n+TOYVa6EFnZXaa2mTKzdQnssZc/gXI3vZlNSe8C5oO+rmPyyh
         Bhu3TY0vAHX9WiXw8+wE6fsM8UY/xeH9bVPzJUVHh8DWtOcwyOnAX8X2RP6hUG3kemtf
         G2zLR4X/Lq1qytnJqUq5dTP/S5gn/ZiyeqbBlVlIBiCmaZnTYjt/fNyRwK2b+WtRPqzv
         acrVyrpM8TU0eqlLzS8z99ZXqauMtLaNt7f/LhMO4JWeMO8uHzSZMD4tHUdGYJnBrMcx
         3patuLGFHCOEsHMbvR0GfyiRtcqMRpMBFLxkiUfduR2GRuLZeUbS7V1Ayvyp7MypkWCW
         x34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M2E/9oPAIAjmzcA4OFV+FEeeJ88Fmq/Q7Jj7dFXD5D0=;
        b=WvYOjg1j59bttJRGzNM7xikJSL8Z64B+DlO+Be21pdN8etR6ObX2U2PJK4mX6EnqFI
         oYDPVLrlvtA5HlW0tzn+hJqXJfD5wn5JlT0MZvPj1W0vH5jr3zLZytH3eZfEcQM8Sfkz
         T0RXq11y0gvfAo94JRACP6MBp1MlXMp8vbwCSvw2OCIUjYF9yCFsgMSnm9SE6+3toeqY
         JR3ORpNslNpnYNsEAXLPHZtPPtJ4c+JkQbB+ZZZFwWNMpH8NSFBNobbOlMJLF4+9xJYB
         tGvH/t0qaZ6ByRw9jbbtLjZMWyuulLv67QkBTmJiGn/1xwqXXxtRaDDHkbeCmvfOrdQV
         s7Dw==
X-Gm-Message-State: AOAM531gv++KzRJ4Y5h1ukmNghhMwTsXPL8hVZGp/h1lqx/f3xwj8NOe
	bL2CxgqrkR8hgS4L/4C6XKA=
X-Google-Smtp-Source: ABdhPJxlU00WuDiwxDtPj53vogH86kc2Mmhg6Be2VCs19+QbCs4rToAXD1q9EngMnmqd2lGpCzA66Q==
X-Received: by 2002:adf:f4c4:: with SMTP id h4mr571651wrp.309.1619129539173;
        Thu, 22 Apr 2021 15:12:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c205:: with SMTP id s5ls3329671wmf.3.canary-gmail; Thu,
 22 Apr 2021 15:12:18 -0700 (PDT)
X-Received: by 2002:a7b:c0c3:: with SMTP id s3mr869133wmh.177.1619129538319;
        Thu, 22 Apr 2021 15:12:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619129538; cv=none;
        d=google.com; s=arc-20160816;
        b=fQkH5Ghuf4+iHrDQUW9ytOVepmoe8ppIEAUD1u5KMlgm0v574IkZwTUrsEXVZUSBgB
         YKAN/JHIFWwibE4Qd/YeOx/jvGvdVFn3rh/aakp6oKUpBBcIiW/BiHSR3Vbe1s9eQkDr
         tXwoMXWmDhwZ+YVgEDCUv6BRfHwxxSRXiTknd9luw7IEASaJ64aLOIQwyHyEGd+9AD/0
         JHw5gJBpvT/03rANbG9CFMpYo0ZNfapQ9DJKtiOupy1QpS2nUGsZhQaFavWpUrWBJ/O6
         v+rZO9u043e5zWxJEnx/fidUEIBZoxDaqS42OtJLtlrWmPtZI+Cv1yirYGKQk2Zo3TZW
         rBHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=IeGVP/PzjX6GEC4OpuxzmsnoF97NjtiO1q5gl5FI7JM=;
        b=WevYopstsTHCu54x55oK0/Og0DdOR/45N8Zp0dvTFm6T1SKU9vdloAUnuBrTevR3sF
         cBiQOBXWTK1ZW2mVezMTm3ncJXmDWjXkUuVHMwTVoGQu51fHjxn/E4JDmSVFWHkcs5fa
         zOweYIzA3c0S8ZBCWlCFQwkyigFkK8SPhKmr9pMm0K1l+Dozm8kUlaZLoss+JSBskZQu
         LRpxa/pGE6PjSnPRCxlvIVYXbrztf3nwWYtOyjYCHxgCObE+Ub86O9cQxbp4cbuh91hm
         TTEi2ske21ht+NO6f6WbPLGdJHVCrtGMVMnv+iD1V+NnaE6RkTrgYdHjwIFaXoq3NyL+
         pbZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SAN+kJAr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id l2si232663wmq.0.2021.04.22.15.12.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 15:12:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id j4so35061477lfp.0
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 15:12:18 -0700 (PDT)
X-Received: by 2002:ac2:46ed:: with SMTP id q13mr345430lfo.543.1619129537835;
 Thu, 22 Apr 2021 15:12:17 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 22 Apr 2021 15:12:05 -0700
Message-ID: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
Subject: ARCH=hexagon unsupported?
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-hexagon@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Brian Cain <bcain@codeaurora.org>, 
	linux-arch <linux-arch@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SAN+kJAr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

Arnd,
No one can build ARCH=hexagon and
https://github.com/ClangBuiltLinux/linux/issues/759 has been open for
2 years.

Trying to build
$ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1 LLVM_IAS=1 -j71

shows numerous issues, the latest of which
commit 8320514c91bea ("hexagon: switch to ->regset_get()")
has a very obvious typo which misspells the `struct` keyword and has
been in the tree for almost 1 year.

Why is arch/hexagon/ in the tree if no one can build it?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdngSxXGYAykAbC%3DGLE_uWGap220%3Dk1zOSxe1ntuC%3D0wjA%40mail.gmail.com.
