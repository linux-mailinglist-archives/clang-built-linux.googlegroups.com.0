Return-Path: <clang-built-linux+bncBDIK727MYIIBB74AT6CAMGQE3TBDHYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D837136C057
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 09:42:55 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id t7-20020a1cc3070000b029014131bbe82esf1826713wmf.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 00:42:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619509375; cv=pass;
        d=google.com; s=arc-20160816;
        b=TeXwRnMYQoswX/kf65mY3niBXrw03c8KTKbVyZ9aUCA9c/yOdeMPCScrxUIiqJUN1o
         MBj6PlzxQ0nsa/U3wucqzMn9V1aVbCAMEi941awvtkzU91hDerBqjF9u/ZiHVk/7BVo2
         3VyHhFcUuGBlT6PXL37hppRjKxAckrnT6OvCsQbnV//aGnQzNt/ruyezAT437mD15Cn+
         Wz3YiRls7UJj6VaOYoFnZnu9/rm3O7wt7xe4iCrBwAOXu6Or34L+b7JbdrJ7eLNIOmRw
         MCzj6kfV8poNTrlwEi2RQtE78Y9XGu4NYYJuP5lvdiwXTl3HPpu5uEjQ50TGO/zJcr2E
         4/UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=Kpe3SIVBb0WXRIs3S5YQvFwkGtvEhqZNJ4RCaU5Blbc=;
        b=vK+ltKFX3epM1YZIHlEwX4n/Vd9cbewwGDLy9Tw/AD4Azte0aXNB5GC3DlwxUXK/wg
         9ANMq9HdYnsC1JC6nebqwnEOQPFbcrcYoB9M9cqB2KheORgAVlkfWXqD/OgD1ZCyp0rF
         Yqd45i0fEZiGK8OxCW8qFVOBrfQDznwsxRaGBdduVOo21tx+aS/5KBLF0LJ52ddtdzkj
         Sa5Plrrf2rvok1jZFeFsPFgmWdtASSg6tgqtfAyNTgwv1G9uxDwzD4sfEmAUEeEIuabC
         H/bF3CTu1x7IEpyDjDw38ttOhU6wxN48jqg4gXdsqVjBVnRuY5SJvTmrRt6mK4uFas40
         OyeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@googlemail.com header.s=20161025 header.b=WeNFf3Ae;
       spf=pass (google.com: domain of adrian.glaubitz@googlemail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=adrian.glaubitz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Kpe3SIVBb0WXRIs3S5YQvFwkGtvEhqZNJ4RCaU5Blbc=;
        b=Sn2Tcm6XUrvgtv4U/OZxBPpVt/4gqCzgdnjORNH4kDZcVAIlrTzutV6giKXsnRgaPQ
         RJ0gYTxXbYsZAj7WB8QDrSzJfp5ymC3RuSCBxkb4kk5TDkJVmSYxOfWMEeaQPMIfElly
         MHtWnUFoWNdV507FxGzjuDEgzqGlasvsJS17bYV64WBLuijBoFcC6yKgZSEY73AWa0GE
         TOBj5/FwbdSwQSomYu5sYFOSJhQZJadE69FXTvqc8cRnjUjBUanTg0gywNWXMAKAglbD
         M31bfK52SNnH/z8s9cXulMj6xd1z9Fq1utWNiW8On1bic3gvhtESUAfXOxIjHle1r+Nv
         3i2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kpe3SIVBb0WXRIs3S5YQvFwkGtvEhqZNJ4RCaU5Blbc=;
        b=V3w1745Uz8SwjBaKTrsVm1G43OZsdEDduAFulLSoFCzbg1uzFdoSuEtAUfifvPJHLd
         /pOAY6Hurc0P1R3a+rz3md+eCQHDrPtfrpFaat2c62kZuM7V8vgEB/zqPA3xkr40/kCN
         /KUFVmyd/gRzryNRsbEqv+dcXbmv52G2n9dfzXIzzuJOl1H1gq1d1CHT1Rw+fyzrGuSe
         A3a5yxam/u5Fxr+s/ydyQA4jPeORcIO4r7Y631Zaj0bIiHnh7A+03kQclUe1SOnwmCUE
         4ENSiLq0lXh9xDofVlm8/7PJ8uANUQZiqfDDlBeLCncTu3Csxayb8kYE9U2ocxkyCJke
         44Kg==
X-Gm-Message-State: AOAM531C8/0xZtGLZyYYMzy1ZxNunGhOIg/8e2cyTpEUyHKOeVHkkGSG
	w3gyIJcT4AwKoBLHftMwsT4=
X-Google-Smtp-Source: ABdhPJxXIttlxubsMrocrV1w6ITeqMXR3SMJMcZNImxG7TMydofQcJduGNJAOgxDPRmV4nnGHqFEWw==
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr27533525wrs.330.1619509375644;
        Tue, 27 Apr 2021 00:42:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls4750616wrs.0.gmail; Tue, 27 Apr
 2021 00:42:54 -0700 (PDT)
X-Received: by 2002:a05:6000:12cc:: with SMTP id l12mr19515046wrx.410.1619509374723;
        Tue, 27 Apr 2021 00:42:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619509374; cv=none;
        d=google.com; s=arc-20160816;
        b=1Fl3RIUFxX5g0kzN3xBB6YKLtBCd0UaE5dtphir4N1l5je/mCNoTKRM4mm/eCg6x56
         nWWE+F1NtYIgHMXCXoAmnlfP0Nn4qh0qMLI0pstXyp1DEu7DFCOBTbaKUGhia0pODHlZ
         m9bJhLj/6p/GlGo2CS9tzwhuSmJliQU9ttIAP355y7FqIHZ66JluB9Cs6uKedQFnI+7H
         0BQ3BtovMRHy7Exe95fH+DvYS7dGuBlc/PER9P4qKyNAriJlP57sGENDBEtjvBn/R52v
         33KFitxbho5wZ1qgXhkTtGeTISzX8q2d8WB6YWRP1A1ZRSXbQKw4uoh0ITLWLLCEJ4sU
         D0gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Xf5DfjVFJ4Gw8X9AdBHU1ujqoHHABVecFNS2FFWcrb0=;
        b=E0xZhjzUqadYoO8iQUpPD6pvnooLKUlfCtfzWwx3GmK1t4neXn9Zoz35vFzsv5r5Bu
         4DsGihCwKGlKdOwQWtrilILwGh+uwYhur1aGlUME2Iu0nTAXbnjPYnRa+mi329SANRbD
         pmsYon8qpacHkIufAjJ4K1EwrjJ/Ym8z/Hi/z/fMyYmyH8j9C9N7NGWSi11r1Z7WgPbT
         nYGX8aNpkVf9KeNPoOjwSk7M0DlOcrQq4fhKTvfFk6qB2L3yA9c/fGsngsGQ63D/w1aF
         cMWiTVjZ87vdvuNF2VDwRM10AZRVBogk1q2swRbU6lHi7b+44ThLIoKckqcLPzhrqX6q
         2JQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@googlemail.com header.s=20161025 header.b=WeNFf3Ae;
       spf=pass (google.com: domain of adrian.glaubitz@googlemail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=adrian.glaubitz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id s141si198987wme.2.2021.04.27.00.42.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 00:42:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.glaubitz@googlemail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Received: by mail-wr1-x42e.google.com with SMTP id q9so4232062wrs.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Apr 2021 00:42:54 -0700 (PDT)
X-Received: by 2002:adf:e2cc:: with SMTP id d12mr27664315wrj.90.1619509374235;
        Tue, 27 Apr 2021 00:42:54 -0700 (PDT)
Received: from ?IPv6:2003:d1:df13:db00:2f45:e41f:59ee:c91f? (p200300d1df13db002f45e41f59eec91f.dip0.t-ipconnect.de. [2003:d1:df13:db00:2f45:e41f:59ee:c91f])
        by smtp.gmail.com with ESMTPSA id d14sm2989639wrp.12.2021.04.27.00.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 00:42:53 -0700 (PDT)
Subject: Re: Clang-Built Linux Meeting Notes - April 21, 2021
To: Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, vishald41234@gmail.com,
 Min-Yih Hsu <minyihh@uci.edu>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, adrian.glaubitz@gmail.com,
 Jian Cai <jiancai@google.com>, Ian Rogers <irogers@google.com>,
 Fangrui Song <maskray@google.com>
Cc: Android-LLVM <android-llvm@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 clang linux fellowship <clang-linux-fellowship@google.com>
References: <000000000000eff40905c0894ce8@google.com>
 <CAKwvOdnq+9wNZwhmKV3HBCL_CX_W3Cfer107yEsZKJqUpK1dXw@mail.gmail.com>
 <CAKwvOd=XixtbdYfwtUf7+ddxxv=h7eCX4-VP0XZNNFvFuxDSMw@mail.gmail.com>
 <CAKwvOdnq7_Fw-fVR5-X7ijyCyF16X1cx9=9yaQoAR_iWJqjgug@mail.gmail.com>
 <CAKwvOdku_T-AFAV4u48vAT-G8e7F3e_8SUdOzwsbGsVPktwUPw@mail.gmail.com>
From: "'John Paul Adrian Glaubitz' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <0a29d582-57b5-7a2c-add3-d8cf18fb9ec6@googlemail.com>
Date: Tue, 27 Apr 2021 09:42:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdku_T-AFAV4u48vAT-G8e7F3e_8SUdOzwsbGsVPktwUPw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.glaubitz@googlemail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@googlemail.com header.s=20161025 header.b=WeNFf3Ae;       spf=pass
 (google.com: domain of adrian.glaubitz@googlemail.com designates
 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=adrian.glaubitz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
X-Original-From: John Paul Adrian Glaubitz <adrian.glaubitz@googlemail.com>
Reply-To: John Paul Adrian Glaubitz <adrian.glaubitz@googlemail.com>
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

Hi Nick!

On 4/23/21 9:08 PM, Nick Desaulniers wrote:
> A big thank you to everyone who was able to stop by yesterday! We were
> able to revisit ~65 bugs yesterday.  We're planning another bug scrub
> next Wednesday for ~the same time to revisit the remainder; bugs about
> ~1 year old and newer. Stop by if you've got some time to spare, and
> hopefully we'll have a good sense for where we are as the merge window
> opens perhaps this weekend.

Great job and I really enjoyed joining the session last week. I'm not sure
if I can make it this week, but I will definitely join future sessions.

Would be great to get clang to build the kernel for more targets such as
SPARC and M68k although it looks like there are still quite a number of
issues to be fixed until we get there :-).

Adrian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0a29d582-57b5-7a2c-add3-d8cf18fb9ec6%40googlemail.com.
