Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR6CS3XAKGQE4U5KTQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D69F523B
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 18:09:28 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id i15sf5802892ion.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 09:09:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573232967; cv=pass;
        d=google.com; s=arc-20160816;
        b=01IXVv85R1ey6QoJIP1AVZg80xpnjhdutTQRN+GMYYONR8uAsYUtWJoqFcVZ+lj2iq
         getK5IOse3bVbZTzB2XIscyNCklfqigiPhNaKDrJkH1UP+e9AVXkdAHXns69o87O7/A7
         zBot1BWjLW0rhy7cU3ymPgRzWFx/LsIu70UqbtK15AITfV+/lQHKpXz7tgO77xHGIuw3
         6gEmtO/zoSfJBRvXNLBHAG9cW9PZGt9BCQ96NK3kB6HIfkqMup8WmNWNOxBYakqXh7r8
         OuACSkzdhd1xVXDkfJqpeV+qQQSC/5mRoBF15jMAnmCPUneEbOPgw9XlkdD8+WPoFvWM
         Hrvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=em9V/FDQa5NMTAyp2pnz8hGVYBvLbh93RHeMdlr6FgI=;
        b=0J9QmH4/1qtM5QnWZpvCh1UG0HaSakOR5oF3KlNHUcXxggz7C5sv6R+6GEac8MQh+O
         lPdsS36Dsgg70et4XA4BL6TBlBIUpPKpvO4lLpldWZXP8fKGJI10cTe8bWBvQSTbrngB
         cQHjEU+q455h9FB8EJ7wxxbHAkk5XcFdOBCsMeux77lXU8EdFUKVxlwqAepFibDNvMSb
         SXFrVcddbe6Es16Q1l1wYOKmwMVysXrwf6hTznO4r3Hfz4u4BzXuR3idSpPgpOzbKoNE
         FQlvoOij4o5MnTZaPf1y3dAtT1RI7rI9JX/t4oUBnOqTjGDihtzyRE3QkhbKsqv1WCRB
         P2ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FQ9eHcA2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=em9V/FDQa5NMTAyp2pnz8hGVYBvLbh93RHeMdlr6FgI=;
        b=i683FCqE3+ssVoJtRouWVK2E1UW/tdh+C/y3UygXyOmWstYqfWAiAg+Zm584PMsIER
         eXIZeWE6l6OkPi71fdfhmVjpx1aTEOcFxZg48Du3Mk3cZpLThIPhjU+5StJjPxDoilT2
         ojf9u5zVYCoeGzaucWTNxqN6nIfgVthPYLXgUPjieehqQNbGtZqdXYktKatYi8NDTch4
         BxUeAAbutLLRPb643wJqSTiJF0WN4i8YQ3vzj4duZ0SFpS/guT5+H+AyDaBiXWPA2ZPj
         JRSwNWgpnePStB534uOUTX1O5fTuwTDtBd9oMxJE1DrMatqJxsRwtU8cizq003pXfI7n
         4w9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=em9V/FDQa5NMTAyp2pnz8hGVYBvLbh93RHeMdlr6FgI=;
        b=ojMGfs5XIo7vNCUKHoE9ffGUyp7+wI7n6IMkTWekVMkzD04+FklRN/BW12t4WrFhTH
         GYYs3Mj7VtHspf8W2LjL2XHGGQ7h01sS86QvfJMHH+qcDCV5WxmagnJF2+ym3ff56yzA
         JXaczQ5s0B7HXt5lmHytyKW51AySt2QU8LGAedz89vWd5OATWkUuUpkb7pVhwEQTrOmG
         pIXgyMMkLwx4TCres9OOf7U/Anp4N5QPDYELIOkqmGVyssyAwx5RKbDh0pe/zicge+eg
         IQb4yLWwNJDZavGOyXmG3oRcQdMQUkCYFsRMDDfoNwHNXkBVJ66n4TSymG3vwZH3cvqg
         vMvw==
X-Gm-Message-State: APjAAAUPP/8ZAu2GRBORMP1oIcDfAQ1+KwoVP0pU7YfJvXfbKI4RdJv7
	xgIhfiDYzFk4RLytficVF/0=
X-Google-Smtp-Source: APXvYqwR6G3bY6sTwuUh2B3JNLQd2JgtiB75+aZp3qrFEyR4olGwFCdVEiJqrIxUsmEw+MlL5wAWPA==
X-Received: by 2002:a02:b48:: with SMTP id 69mr11901495jad.25.1573232967115;
        Fri, 08 Nov 2019 09:09:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:df41:: with SMTP id g1ls40061ioq.13.gmail; Fri, 08 Nov
 2019 09:09:26 -0800 (PST)
X-Received: by 2002:a5d:9c02:: with SMTP id 2mr11392903ioe.52.1573232966747;
        Fri, 08 Nov 2019 09:09:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573232966; cv=none;
        d=google.com; s=arc-20160816;
        b=whAdr1hSlvRXvz4MY46sfKNK/B0a6g29Aa9X7ki/c33F00fLcGvaSEfMP/iFgYUXvc
         D8d+kdA0cEbcfvmeORe/1U8sz4ZW6zuPrsj5oKK89BY69ehLrdFomnUQdH7Ue2MeMr2z
         iW0MtkKRvprNr6qBRHFKdhHN6i2uBOqIU5uFgarOZYk6SthKG1UDfS0LoCNJfHr5g6Yc
         nnCdiqz5Gf/h6Zf0fEuN9+BkCpLUjwCBxV/4zdmWfelb+DbNkf4fTjvu4C4ZBY0fxacO
         I8QO/bSwhpLF6lfegY38RdZPcc8/B1YkMVG9OXTbNkPJJynZMJOGIqYymy9KZgT4KlC+
         MkqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Tsnj6O060imYwVR4hQl63wDpCmXCX/5QGpfhLawTfnM=;
        b=SlOKxBgHoH47DM5Il1e5p38Yza6/dHdyJ5rafk1UDi8F1eS+6kUSLVikbLDhpYBsos
         PhKRjIvOWCeAE4cA8svNUgMu7JKX02cXVu4NYDnS7fya+rN4+cJAbwAsI8c6F6dYZGF2
         zGSTUikyo8FRXo/hBEDTaltAUNXiwY1a3og/QigCK411SLhrx17yLAysIsfbDo/JO8UO
         wQEEkOYnzW4MQP4fjqzhri8dmKPTamOr43E+OdcJzMcFkjxFUxYriVE8L0ERdFpQ/6E7
         niqm5OJ+bZ10hjHvVX75OqHELRmzWoFxMRWmPnnl/kGB3dR6M/PnlOkaV7txa3R1V7jl
         iM4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FQ9eHcA2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id k11si434547ilg.4.2019.11.08.09.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2019 09:09:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id p24so5031194pfn.4
        for <clang-built-linux@googlegroups.com>; Fri, 08 Nov 2019 09:09:26 -0800 (PST)
X-Received: by 2002:a17:90a:1f4b:: with SMTP id y11mr14877295pjy.123.1573232965613;
 Fri, 08 Nov 2019 09:09:25 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 Nov 2019 09:09:14 -0800
Message-ID: <CAKwvOdn4f-E_h9f5ndsEAb5m8eHBnBTUjTC9YOGpQkEh9RxNpQ@mail.gmail.com>
Subject: Testing Debian kernel builds with Clang
To: Debian kernel maintainers <debian-kernel@lists.debian.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FQ9eHcA2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
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

Hello!

At work, we have a downstream Debian based distro called gLinux.
We're working on testing Linux kernels built with Clang; trying to
find bugs either due to undefined behaviors or compiler codegen bugs.
We would like to test packaging such a kernel for distribution.  We're
able to build+boot most ISAs at this point, and ship Clang built
kernels in Android, CrOS, and our Google Cloud VM images.

I'm not super familiar with creating .deb's, but I was curious what's
the recommended way of distributing such a kernel for testing?  I
assume setting up a PPA is also involved?  Is it possible to choose a
different kernel image to install via apt?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn4f-E_h9f5ndsEAb5m8eHBnBTUjTC9YOGpQkEh9RxNpQ%40mail.gmail.com.
