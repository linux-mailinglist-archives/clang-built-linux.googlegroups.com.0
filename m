Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQXAUD7AKGQEWOK45UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id B38602CCAF9
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:24:36 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id s18sf197117pfc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:24:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606955075; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fo1DCR67p7hMxgFXt7sdj5EWoVJuFp1cugWz8HKOa3aKMoOzTgPJ4IBy4379pqoctV
         ZVtjQAF/TRJj11Bfgxf4rqmEz0iqIOwPUlLk52B60G/ds7ya5iqI10I/O7LLRQl1OwQ3
         DcLJKUbB8bMyioNsymRuPn7ZSKpwLHhxhVvncJIj9j8t6+mITakfzTGthFJophIVfQ3j
         98H1pvvN68BeZ3CJoaabRlMlRtC6vZHKXEYQ9ecFzBKxZZ8JdahIxLJw9uOGQk/M3f7/
         oqriYafP1QJ1cnOI1D5i0o0uWm0DTM6ifSZpD+TG3bpZimizp2JmY3G2JWnIL32DBRYe
         BMSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=xDRT73aPSkkPMV7BMeJ4ZNQihoE3Hn+B/yREJGryEiQ=;
        b=1FLBRTmiXLzTTD9DKqepn1duFETgTA1F1x+WF3q9Igdzt+M41I3ot2YnpfWNfGx/bS
         9x3B1JMINxOcuOpO4llpqE9+RjjAbExbHg6Ubv3etLlWCCMoH5bQqIXCdj9kreZqVc6e
         Oqmprn48x806KqG6CnIXBAbaCq2i0WZhuUrFj9/f94R/Jgaxvj258+PmwcMVjvlN2UUl
         MYMUojBJchDhBI7LB1cCmzPVE5pQdiXWkqh6noKaQ3L0z6I0QqBKYFtLnzTrbiy+GKZk
         HdZ84hXC52A03RJt6I0GwtzjGcAJCVOOIGjyc9s4d92P+AZ+mHsN1rYA/qRy1Ttfq2+S
         TBFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kIQrC4MN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xDRT73aPSkkPMV7BMeJ4ZNQihoE3Hn+B/yREJGryEiQ=;
        b=OXAUg+AmrXMdmIkLctnXAFIOpzPdRoKEjSFehHe/jxFZJHsjDpnKrCYQHTU4rn4Ia2
         802C/55C61xsgrWkohRCOtaxaiSlLhHYV+1mvCEx+OvDijQVFLf2PXSEb23xIk2o/ohY
         eDI4Z/gyCQceZNtIQdds4CvFQtDyMYon/FZY8EIi2+j7k4ggoKDsGeObahJNQ3McI9uX
         IdQliAkIEXMGWXCk9RKqTZk1fMEhrBQGzku4sMys+vJiQJwqYHzeMwf9TafPbyDqbl34
         cskyVn7MhRNIZWvsPwBMHt2gEW4rvgteqM5QHyh2RJEl3Y8uDs8C7VbR36rRLLkau+cQ
         zbgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xDRT73aPSkkPMV7BMeJ4ZNQihoE3Hn+B/yREJGryEiQ=;
        b=YxgKO2fyumrdAih1qCBjmWqPaQJYAp50R3C56HDITz/89EsRuFqAV0NERB/YIP/spX
         rrgFyx7hB4Lgvg9MsHBP7ChF4Luc4nrb5B6YdJpGNQ4xDpw2ZERewH+nwW2KbRKSVPMB
         8AxsNX1yqewSSgzFcdty5mVuwWtpQJWcGHh4ggnHfv8nirWtEuh0xtdbai5GY/kGGRTk
         w3eebv7/DW+DK+ATh/U4n8SpL2ctWFDqmNpBU+pdu3laOVKqezCadx+Ze2pjxTisKfaw
         PY5jIJ3bhO6jHJ6KZvprZjT0UHHKB5vibvKL2+X5WVC6ZpfNXpvqqII5bE2vTFMV/iul
         ercQ==
X-Gm-Message-State: AOAM5327LpIZQar7GfSag9DWDQ8bBWP53C+6jfljKC7FvDxf06arFXY5
	soCQMvqciCX3eccIfeadRPQ=
X-Google-Smtp-Source: ABdhPJzJJHL/XBEJVTNQOzPR1AdXCXE0JyfDCmXcK6+J4tLVG/1r+IyTZb7h0W917osyBmZZqw2H/A==
X-Received: by 2002:a17:902:b207:b029:d8:fdf3:af30 with SMTP id t7-20020a170902b207b02900d8fdf3af30mr574263plr.31.1606955074896;
        Wed, 02 Dec 2020 16:24:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5612:: with SMTP id k18ls1313127pgb.7.gmail; Wed, 02 Dec
 2020 16:24:34 -0800 (PST)
X-Received: by 2002:a62:780a:0:b029:19b:694:3255 with SMTP id t10-20020a62780a0000b029019b06943255mr581077pfc.36.1606955074256;
        Wed, 02 Dec 2020 16:24:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606955074; cv=none;
        d=google.com; s=arc-20160816;
        b=E6nR9ACICwA5JpEgh0AtqrBMFWTVvyvW73YWlBV/KDdlejxLdpe7e2ippsKPbpTRfq
         YmvpNzuX/86upBijIlXFx2VojX9KP0kyXWPb/QCA/eyZfHv90HB65o1i1WrVw3w9P3aD
         CsRIOuUFy3MVjukjq9a9cDp+BWayVlDDI7M3dE3nHS1o+j8gqMrsdGk5I1kAzqDGKMJL
         G6j2JbtNmYIjGv3fz50bRf8o7PpFK+9TGPB1Hz6M4nb/wqe67n9c83AMmr3NKZM5pyxR
         qtAXR0GVYOmPxDpmGbs4XF0Im4Cb+5uzNRqXjcvzaRp+V3YFB/1W/n4LP2SgDasGtM2v
         0vXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=OUri3hGhDIW9fqA/aDVmmEFS+l5rWQmmpyx69XIxH+0=;
        b=0JSN38ZIwa84pnJUxza3DO22aDNYYjQ7BApIUx2EZhprirQ4uR5KfDb5f5dQdGS7/s
         Dv8ARTS4ViiSS0RQU6u/5uXKjdqNKF0S7jVwy4cq6E+lg1zFo2wNwc/SoC6qloY45bEH
         Uvp3amHxmDP1CcizaoK2NFoHU5Wrvo6VovkXFppmyZuX/YYFueBIzYx8JKuqRF38y9ft
         9nX71o62ZbF5GpwrbaxrPcP7pD75kryHlsez2ap2Ez+MHjXJli6UzJsyP9ZRiMoND2x3
         OgSiUKqKKGpL7fbsNj9wl64yideIntj0coKefx3LcnrppKKj7BWS7eHtiWPsXAfU4WFR
         iSPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kIQrC4MN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id v204si27081pfc.1.2020.12.02.16.24.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:24:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id t8so107791pfg.8
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:24:34 -0800 (PST)
X-Received: by 2002:aa7:80c9:0:b029:197:6775:4a5b with SMTP id
 a9-20020aa780c90000b029019767754a5bmr521757pfn.36.1606955073813; Wed, 02 Dec
 2020 16:24:33 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 16:24:22 -0800
Message-ID: <CAKwvOd=xD3DQcrLC_YjRyLjJKPGTZj6mbVNBP788-KPTb-Jd2w@mail.gmail.com>
Subject: comic on automated style lint
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kIQrC4MN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435
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

Thought you might like this:
https://mtlynch.io/code-review-love/verify-syntax.jpg

via: https://mtlynch.io/code-review-love/
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DxD3DQcrLC_YjRyLjJKPGTZj6mbVNBP788-KPTb-Jd2w%40mail.gmail.com.
