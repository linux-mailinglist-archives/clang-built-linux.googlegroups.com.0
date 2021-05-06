Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5V62CCAMGQESTWXN3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D9D3758CE
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 18:55:18 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id c4-20020a05651c0144b02900d41930170esf3121771ljd.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 09:55:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620320118; cv=pass;
        d=google.com; s=arc-20160816;
        b=h7b4VDw47b1UmRYitbicudTaRnGjpsLie+2q4WOFE70KxsTqXlrqyxxHilOUXuhIZd
         WGuC6AbTh1BquLWEhQKFKd/t6Q49oot1t/n1dqdP95Op9YZSW1eokqzu2vIIlSsxwUM4
         WYA2M/S0J4viYmNdqjsxAYrHcqgFOJ3lRvvKzKTPYSAqtSA78ueTU1me4knruQVHmBuD
         cHwB3X4E6N2YlNNtjIVccX9LrohSy1IjwHTdVJ8vrPHz7oRWCykZdNNKqqrBs/0FmSnA
         oQgNeIcUfPsOzYOjs3fkDAQA3tlY/KyaS1zapTfNd8j5HPRXD8ud1GJ350Sovkgm8Z9O
         XN1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=80FR5uHzooCgxop4O80rDjshWnZL6g2xQLT7zCRffGM=;
        b=VAqEdSS3m7DoF7GMYeq6Qeu2sc0eO3i3Hn7GkqRIh+oRTpIkOdC4mKxV0gpZEkYV6J
         dSmbuPVm06BomPKzZwhou+AWgHiKPH7tsoDcXaXBtmYnQMRw3y1yL4VCIEb2puEqGSUf
         7jRthVe8X1YXSEdjTeMhpooea0Vlp/jpHZ4Ud/7ZWbrkccrlwY2G8bdv3AdbxYMZbU6V
         OzYSF2rd7brwsFXRg6+rCLWxtSyY8t+sgdoxz7h2FozaHngbGlxNZ3BGkyJhZNMc8LZu
         Ox3MtvL1eGHPFvzC9V6ydHAr1zX8khU1WcxdSlf9d5ciKHfx2fK6vp/OxTfequvJqxgC
         nPTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V/GOx8lT";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=80FR5uHzooCgxop4O80rDjshWnZL6g2xQLT7zCRffGM=;
        b=fqxex9Kt0EMnPYgf4NQ93eWQ6vlH42V0Ta8H72WMnsD0760KMJ7CEoxM/P8Nnbib4h
         hixbNZgK8hKYPulTctJE2Nx6HR43g2VNer7VMb3NyVwBj9iR37DKMqkggb1h2qu0nkzf
         mpl0eMdRzlUtQFe7WUpSBqS7Cw1awo9Se9Q9VYyJCDqvccRx6neZvv4ktPqCKXWTgVNN
         4pHwN4n5T14A56y9JqMfn8WBk3sPd9IxSffYJpPDX6r+yCVzvD8NfVc3MQZ7VAbPq134
         dhANp4F+lLLc1ykdZL0XlZRXUD0YbdG4ACF+GlT2Ps3TPiCsv5N9cmtwsekQJBDSGjjx
         Gjeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=80FR5uHzooCgxop4O80rDjshWnZL6g2xQLT7zCRffGM=;
        b=Mdq9OqHo6L4yjFiXzvtLSZzIPKHyLAoU/Dx0Ol8WtrH9QNGDQNGl0jn86dw9+gKoFA
         gOO3J+1eerf86uFu6T3EXWlSzStJ8pZtVH7v+0nB2pd22CjO6m5F6GWwyluKMIgBDXpa
         VZiDbZF7fyUPPElgLl5Qn42fMf/HDRtRg089F8Q9/MBzIQWH+6ftEAiDkTWxgr/J5oPv
         EyjUXQG4Rj2rufGfDTn8fH7C6nsljr29pIdebfZiUBAyMRK16k2Jfga66vFBtCgZq4mr
         IWxLO9ONqIa6qUX8TLs1B1hNVAhaKlE5d1+Y+5FbCmFpWd8UPt6Xz/pMyq3RyeSs8sN2
         gbsw==
X-Gm-Message-State: AOAM5335aXNNV5zjAMtfaegI/5T/JCIYzlw6ZU+5APuMD3XyXN6LI1Z9
	5wofmYR6qxh69+npYhLbf/Y=
X-Google-Smtp-Source: ABdhPJxBaWiZHmGS13p4tKDkjXtozIaySIk8m+V08eXGPGuo9rPNkgAIPPTflL5ODKSeY+2FUa09cQ==
X-Received: by 2002:a2e:8506:: with SMTP id j6mr4328550lji.450.1620320118397;
        Thu, 06 May 2021 09:55:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls2451704lfu.1.gmail; Thu,
 06 May 2021 09:55:17 -0700 (PDT)
X-Received: by 2002:ac2:57c7:: with SMTP id k7mr3533260lfo.606.1620320117214;
        Thu, 06 May 2021 09:55:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620320117; cv=none;
        d=google.com; s=arc-20160816;
        b=g7uOklcr/2i7P7XB43NryyEmUOuurEV/vrvJjwakMQa+3Nl8RusQ+Otmxc1wYEB4pF
         0VjIApUjQuq8fkGRNcaGD+u6srB1z/6trOIq6GiEXsuru2iSCnqtq4o8Rm2dXmbz8M1A
         HQ8fUBpsTUs0skn50DlxOqd+AQ/erRm6F5mgSn7PZfieKkfHGTwqly8vUBCWNE0j9xgD
         16/h1aCIueg1H0PtxI17oBUWn+nkRv3NT57tnfiHUE+/GxX2VCWB6onHiBubmbCItxlQ
         aqcmEr2O7meNisNOs1d8QmE5c2vz4RMoTxmZ3VxM5xAxsBo97s/FcnmLpjOou59qLWwv
         VwNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=O0BI3ijkJZ2N6EevsyKa3UX04GhPkGMIroppuTBl/JE=;
        b=Y4j1cK5NI6JMi92toEoBzQRWhTLXFmnmF2VFYRMApHCHMnPhRzmb4e5uinJehMsZhY
         LG3t6Vh9kKklc1ZE7Txi4GeuIctVVfQkYIdGZ4x0dYDGCxFp9tFwqJUCpQS1YejMDHue
         aIebLms9beGIqhy2/Ka4GdCTBrcBWTwyCiorOfY2iP/K1sFEKJk2mtY3tEdvNPT62j27
         C/vvtwiEWLFZLMB4XfHxoU2mtb5Hpy8xjdaRL3fxW/4nDJqNt/r0F+hob0Vhrq6SEgbk
         6Plh1soz6vsdBcI5jeK3gFHp2p29qhxhoZgy8khfPTdEj9scOZM1x5sAHYm0/o3dl9tX
         3KVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V/GOx8lT";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id 17si96132lfp.2.2021.05.06.09.55.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 09:55:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id w4so7930804ljw.9
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 09:55:17 -0700 (PDT)
X-Received: by 2002:a2e:b5cd:: with SMTP id g13mr4434586ljn.0.1620320116517;
 Thu, 06 May 2021 09:55:16 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 May 2021 09:55:05 -0700
Message-ID: <CAKwvOd=Sr+V931APjW0mXQJXUbnfga6MSNr5080kfeFsuxYHeA@mail.gmail.com>
Subject: linus spotting clang warnings
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="V/GOx8lT";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
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

https://lore.kernel.org/lkml/CAHk-=wh3x4Q4pCkYe7__OAnvOyPqdZLN5ha0z4U035FwT5G57w@mail.gmail.com/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DSr%2BV931APjW0mXQJXUbnfga6MSNr5080kfeFsuxYHeA%40mail.gmail.com.
