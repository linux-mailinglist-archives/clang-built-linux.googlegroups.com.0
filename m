Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHHCRT6QKGQEN66ZFTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DE72A70D6
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 23:54:21 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id g3sf67627vso.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 14:54:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604530460; cv=pass;
        d=google.com; s=arc-20160816;
        b=f2WFF3v0ILQaBZHleEJOP4eMeKx7A6KJ027dcdgNd36lt6xZ4qPtCqvNN6e07Nbt2x
         jJJrTmaP1vnTkHHNsyJVUndmUZMoUfkDIo1n4NFrEQ5p4g93jogNL6lMwWxbT7LFpeBG
         R78u7Q+Y27B1/rJxQG5pxQzs0eO4+vPfIEskCmHvcAj8s3OaDAqe+XIdlu6VYb+BAw3/
         Y9RlDLR9dkeDDC1ICqArSHVmvAj5iV5cefz1pRkcUQqGNShE6UreR79YUxDd9J6Ajknc
         Kt8NBqBT6IKH7h38HvV62DslNv7N2f5iTkHpB2ZCrdvBZlEHmOLMtZLy0X7GYCQoP8Zx
         VUJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=2Z/QfGzFBZjNclvxjklBuqG6RM3R1e7hdvww8sykr/A=;
        b=gSF8SwOiQi99POoMIaWStfHVNUb6QzFuckN/xoBYLwYWiOENEdqMhxa61/AxWh9gO2
         JXc9L14pUkGV0yIcXu66AUBzBhU+Dc4rtvXOMS2M+0HdEUBfIEkm7qlFYd9AfiK1W+U2
         EetlqqszHRBmFLTUU5NPXDOlf/bg3aacvjm0WAbKAllMhwJJ66oK9rq5ff2zHnF+HEse
         4pPZq12YOFjmqe5QnKc6U0iioL0ndtJ3YmTM/G8fvvN+L05NX8qfMK3jExAir45dAK9G
         J5C/U4CDBAhbmHf5Lr6cw3HWK0MKlzahbPP/Is51wWUYX9xsXB3AZtyy0XmLpsUYrLnm
         oTkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Az4XfnTr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2Z/QfGzFBZjNclvxjklBuqG6RM3R1e7hdvww8sykr/A=;
        b=dELwFkqTVV1OGFTY66NXhpjjC38iH4uB8pUlw6UqPt2dClyz5cH4yU9D2paNdIGv/7
         DGDnd0tQiP1AiF0LZKPdseegE0YYU+MCWsE9CRpvfiu8pmf+ngbplhkzij2TP4BoTWZP
         EAFvgGu7tJ3ztLRJvh3uodhpYJvGw+lN/deFHR1588aJ5uyARpVjcC8jUY2yIHTpsN6i
         Qald2bseV0S8vjmsZkv9L+mZuWsLAPqYnIBdDMys+y86yzWGy9tk6NhfC0WvpajTKAv5
         OPUmaNHiEMS0YBJfb1ZhkMk9zqncI2NzDaquRkZuVUp761iY/HnuNN8/IOz1WAOdEaIQ
         Sxbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Z/QfGzFBZjNclvxjklBuqG6RM3R1e7hdvww8sykr/A=;
        b=XL5NYZFhN5SpBdr7aydSQfXjfw1Ns3VFJlmsuKn1UpU72hz3DFMEUODN9XEO5wdKFr
         qFwF6wgoiYzcJk80QxecyHRl+aKYl7CpbSJJIy2IdTnAR+O10yv5VeqPimmS4fAlV/zi
         Qr0QVHXQOd9NiWORDaGAfav2dp1GZudPRzcOTGnTghoah9iaaAx7phiOS5CkqIoE8VNR
         1TQPWEjvcJDNOJRFPVTMrwweV3XjDtq5bTFvrS9seMUzoKat/9QigegyBOiBb89wm2gB
         AeANN7D4+naEEwx10m1alGspxsg/ctsYuJUEK5MyLGqByaLGJ6/yic3MGZCKIfj9GJ14
         S7bg==
X-Gm-Message-State: AOAM530vCTcbcAGfU8zXreUEsnKpTBldDw9RfPJ8B4NZa02cHQSBemh+
	eoR0eHc464odstuhMaA393o=
X-Google-Smtp-Source: ABdhPJzitDp/J1erGRsc3TLQsUfE3gpvssDKuTi9tbg2h4a//bMcjg0BxoYWK17hk+mXSlAKGYSZ6Q==
X-Received: by 2002:a67:df97:: with SMTP id x23mr254915vsk.13.1604530460144;
        Wed, 04 Nov 2020 14:54:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4515:: with SMTP id s21ls203865vka.11.gmail; Wed, 04 Nov
 2020 14:54:19 -0800 (PST)
X-Received: by 2002:a05:6122:10eb:: with SMTP id m11mr258843vko.8.1604530459659;
        Wed, 04 Nov 2020 14:54:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604530459; cv=none;
        d=google.com; s=arc-20160816;
        b=x+TosJ/AvdN2w8hP3+/a8y1lY6iwwjTMVCV0fnLN7X0ZENTuOLGIp+euIMYNbWrw9u
         WiyQ3x5FGonVWksXXpQATyvhJdvCYvjA3H39tXYDzOPlxHtSGvVlda7ZuzgiomLxnCop
         7qww/bpuwqMKSSovgIC92aBhuvIOEynGVsVmGP4G5i3C6NvznlKxabYNEkZ+czkutRGF
         dGHRM7keMPF25Bbot1GFplnaWsil6Npp2A7jYNaA/UvwfL06LryRROm9EJ0zqLtHub6y
         6GTZ/eOa/0uPbCCEzaRy57e0C5M9ys3VdzaD+YZXkDS6G9TBAibYF5xVC3m3wU5C0cgb
         XWWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=fNfeefITUNfljFa1qezcbnd42/X2tx2a3qz8E+6G8R0=;
        b=gPhDevzlIDAgmxJi7kJ3rgWFQDXB8Picw/wsyhyPeOhBTbRilo+qpq7jQIHj1d8wvb
         QYex9MHhwFPhUZcdHyCbh0dGJ5jrGfxOZRaVQrebwYYgJOUoinylI8JjjE1gypFzbkCS
         hsjvgkLBgkdZCKwN2p+qvr+JFOeDjfGwgFM/zzIgL1wGJKLujx7VmPzf5F0e0lqZ3MXb
         ED46tRqYIfqCwpJQlpcVCm1ROzd4mCsvZdV3qPfftSp3y9+6gORkrQnc5bEe7QW61rzT
         BOPuJlPllW+7CfClDQplwGGMdcrzkVUysIipH/QaKUnZr0UjYjmn/zxiRkZHBYz8BE3E
         xLrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Az4XfnTr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id v18si262757uat.0.2020.11.04.14.54.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 14:54:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id p4so42256plr.1
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 14:54:19 -0800 (PST)
X-Received: by 2002:a17:902:8a8b:b029:d5:f871:92bd with SMTP id
 p11-20020a1709028a8bb02900d5f87192bdmr234132plo.10.1604530458206; Wed, 04 Nov
 2020 14:54:18 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Nov 2020 14:54:06 -0800
Message-ID: <CAKwvOdmfMABVmG=6t2zFUfVEEj1VQJA_jBrW_9Nq8sMquxXngg@mail.gmail.com>
Subject: auto running clang-tidy on godbolt
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: android-llvm-dev <android-llvm-dev@google.com>, Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Az4XfnTr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630
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

Neat trick I'm writing down because I'm probably going to forget.

In godbolt.org, if you add a clang compiler, in the right pane you'll
see "Add Tool".  Add clang-tidy, but if you click "Arguments" then
enter `-checks=* -fix`, it will clean up the input by applying any
fixits.

via Aaron Ballman on review of https://reviews.llvm.org/D90180.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfMABVmG%3D6t2zFUfVEEj1VQJA_jBrW_9Nq8sMquxXngg%40mail.gmail.com.
