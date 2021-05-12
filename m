Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBV6Q6CCAMGQEOOM2YOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2630137D3C3
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 21:11:20 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id h4-20020a1709067184b02903cbbd4c3d8fsf2747954ejk.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 12:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620846679; cv=pass;
        d=google.com; s=arc-20160816;
        b=oQohZJaPsU2an0ecxpSgBFn6Im4QtwRIqr1dyIFPwILzIuLisVit4HvO9QqqRgfR9R
         XIvUCMIgy2LjnljTYMerAeqeyBNTgvahMGciBkX1fftB+3o2fY4tck3Aoemu3atp+qHI
         m0rmC4MiqZCpnkavcWZfg+2cJUjKP79ks+GjRM4JjlWRKmDy18Vnm88WUrUATvUCCjrv
         j3B2g2OCcQIrFXbjdHuQ8FttmiI3xPLdBu/gmsqbC/kw0zmu730N5MDxxBH2XIKwT0jO
         MH1WhKYjp0yWk/vMXeX5G3w/ShCk466/PIu01TeweocD6fHo54UN3y8vtLgAbnQ5hlBt
         rS6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=feOXCzP9IaOfet88lsjWAGNPBXw7F0ivw+7YmACrpUw=;
        b=ZzAJ6Krwd46fYCYEYQAdoLsOrVPB+lkseR+jzo5ZXPI0q9wBdx4mxNfAEPNWL4UQh3
         H755zF9/aBrR5aibAEBZEcoT829JHQNPEs0koxnQuTLQK/rnqQmL/nz8p7BSgnDfod1s
         9YJnLpyr6Aemnpx/0OXseVWbdrMtoWw09PI5XQ6u1GEXPBoiWX2HCSfnNKMdiDAKCpoj
         01HAraFaHQnTrs9Ch5xgeABw99Tn5BfK7rKvT4i7Ok1d0brEH4nOyxTPZMKtqH1xTfZ0
         GRr93chNUatjDtsmpJozJDOp/I93EBtnvbXGWeCRdG3tlWPSYTiO6jTYDDlrYosBt7Ls
         IBHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="HZpSV/mS";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=feOXCzP9IaOfet88lsjWAGNPBXw7F0ivw+7YmACrpUw=;
        b=sdWM7t7hMN5dpB8vhP/2TBdUHZvtzP12GABm91a/0Xc2fbcZSYKGQCXRi206k86fZO
         Q7WoeXmrvelueNpsBUVGDtfQQdnyXSNNyFFvpVE8+/+YInDGP7/xYNAZCvd2h1zUIEe5
         W3tFspDjZAipniDOzngIbKfEZ+O/e4YoMvGtCsvTBvxALLfEdw56dMzAoUUCmKh/zJYJ
         pMrlginelMKM/W0amGBk6xg1Kcs2hll3CtN6sRWYVBRVR+gEhil/ADgfv5b3Fj32P04B
         KlS93SK+Imb146nc05Qo1OlxdjYqN0aeH0Q4GoLbOKkcbfJ3KX3io6hftvvd4Zb27Z1E
         7JYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=feOXCzP9IaOfet88lsjWAGNPBXw7F0ivw+7YmACrpUw=;
        b=BxMJrbWwdFHsCNtCG6IL8ysit75f/8Ah+KHqmFNB2KEA0kPb8rEtC5Lurxr/gaWkff
         DAX0B14Gk9eB2CoSEGWbUGuPbB7Zd3FD01fK+dxiFkX3UpNzrV4y8mhmeGPYFkRgAVfK
         HiZLD9KFPgZmDBBbQ4OdKownMszACDed+pSMfmt3Ze5e7/mw5BHEY/PEDL8bcAus8tt7
         mhWCNNL2KzmCCmWY1z71fH5nMqqx4X7cNm8NgycfdIXrk7jA1ce5S13h2e/gfuJ1TWu8
         72C7xLrCmRrfSYKoBUkVwaSat7x/vQcqHLCjGfEglQykEPBt6cmTFSuVseb+lZqUkXRo
         mrFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pMbrwHRY9nc00Fi29F1W9XgHOnN+Yt0R7eVySaGVNPcGP78yJ
	uvZA1PAeduzT+T4U+c3ycR8=
X-Google-Smtp-Source: ABdhPJz4U7IDQcpufBYzrGYAS2Q7gq6bFFH9yiZqvCfzm1ynfcypd2bTUtc5tR+ea7U3AZs2eUFV6w==
X-Received: by 2002:a50:bb27:: with SMTP id y36mr45474036ede.365.1620846679879;
        Wed, 12 May 2021 12:11:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:af8a:: with SMTP id mj10ls1524824ejb.10.gmail; Wed,
 12 May 2021 12:11:18 -0700 (PDT)
X-Received: by 2002:a17:907:b09:: with SMTP id h9mr8483812ejl.430.1620846678856;
        Wed, 12 May 2021 12:11:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620846678; cv=none;
        d=google.com; s=arc-20160816;
        b=sXY/JXMPK7qq/vF2pB9MXhyZ9c6Og2dndBW7ayIxIPrO+PjFSvx8MS06/uwk0btRL/
         byZRoDquDvvRhkuw0unznttCPlQLEnnYK0d3IhUeMcC2DKGrMVx52BFZXwyZjcWzZxEW
         ZNcA/CwaNO3476GNo8O0pjJH8vAuNyEa1Fa7+/Tlc6+DWCgX9Y6uhvquDYJ87kH+Fnb0
         BvJbaBmvD8BVbI/bBi2pta5gdLhU6ck32+DRfwkwwvDY1pIoKV8AcuD55zgA3RtfPoaF
         RvLinjIfvD5Hw+O40TKeTGtqrY76LyElaZG+kCM+yUB3BDPNdAph5u61Cf6BhfeMDvhd
         Zp6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8BvsCPO/20qH/TAyTy6uJ/xOZE61JFh6apd4RBrMk2I=;
        b=qqtL30f6yKQEbzCArTdPutRWuJZCna2eN632DIT9vGBrLEodRt8GiA/lqDHKij63k2
         QJFz19+wC6W7YBa/1FmaHKlHRbIPaVDJGuLsAzPBAYeHte9g25Yr/3vgmfo3zYhQ5nfC
         Nf252mQ1kbz9PSoBgtgYpETbcdt3CHFUrF8T92iYLvs6Pir3L2H0YaD5vZF7rtWpviVn
         r1yVHc5u4lz3xVhx6tkR7dc3323idAqMmpY6k5oMzYMt7QY9T8huDGyjoS02i4r8NAa+
         JMRtSK6EUXN3L7rgPLcMzBJrEPTuHnBspMzMpzP/+xpFDSNGjNPDoD2Ez6NOWBYD5foA
         a8xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="HZpSV/mS";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id n3si34041edv.4.2021.05.12.12.11.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 12:11:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id r5so18073836lfr.5
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 12:11:18 -0700 (PDT)
X-Received: by 2002:ac2:5231:: with SMTP id i17mr25742149lfl.121.1620846678183;
        Wed, 12 May 2021 12:11:18 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id c7sm52392lfr.167.2021.05.12.12.11.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 12:11:17 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id r5so18073784lfr.5
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 12:11:17 -0700 (PDT)
X-Received: by 2002:a19:7504:: with SMTP id y4mr24793845lfe.41.1620846264161;
 Wed, 12 May 2021 12:04:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210512144837.204217980@linuxfoundation.org> <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
 <YJwW2bNXGZw5kmpo@kroah.com> <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
In-Reply-To: <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 12 May 2021 12:04:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj8jOJtKpw-Jsd043sjdL=rPnOD8uD8Tf84_Q36iu_ewQ@mail.gmail.com>
Message-ID: <CAHk-=wj8jOJtKpw-Jsd043sjdL=rPnOD8uD8Tf84_Q36iu_ewQ@mail.gmail.com>
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, open list <linux-kernel@vger.kernel.org>, 
	Shuah Khan <shuah@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org, 
	lkft-triage@lists.linaro.org, Jon Hunter <jonathanh@nvidia.com>, 
	linux-stable <stable@vger.kernel.org>, Pavel Machek <pavel@denx.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Guenter Roeck <linux@roeck-us.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Maciej W. Rozycki" <macro@orcam.me.uk>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Huacai Chen <chenhuacai@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b="HZpSV/mS";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Wed, May 12, 2021 at 11:48 AM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> Linus's tree builds MIPS clang successfully.

Note that this might just be a random effect of inlining or other
register allocation pressure details.

So it's possible that upstream builds mostly by luck.

The "couldn't allocate output register" thing really does seem more
like a compiler issue than a kernel source code issue.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwj8jOJtKpw-Jsd043sjdL%3DrPnOD8uD8Tf84_Q36iu_ewQ%40mail.gmail.com.
