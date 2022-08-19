Return-Path: <clang-built-linux+bncBCYJJE5G6QORBTU272LQMGQEHVXWHJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD74599CB1
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Aug 2022 15:17:03 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id r8-20020adfbb08000000b00225239ce4desf754550wrg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Aug 2022 06:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660915023; cv=pass;
        d=google.com; s=arc-20160816;
        b=QfAn0DVUWRcxpnFMjJAK3CB0zdjZ5q64XmARatr5BQ/aYa97xDHuviNiRWuqziNARz
         qvmC9rVPsQ1G4+BcpzDRDuL3Wm0S8AfDkzXKUvYJt9ui0MXlsu1fCyrueA/GwDMb/vZg
         LnUIli3uNH013VQg6kPhYehW8HsSdXSi00jdiRopWGm6mhSQQqLzZ9Wzb/DJg5wA1TRZ
         S1vsGfRPiYJYtjAL1nQ1CfqCJJ+uRM3Q9vHX7X0DU8z88zYhpaebVduAzh3maJ8OiakV
         fCFdpAKJB8xZbald6I17DyRwMAdtqva2cO5ehDYvr/92vihydb/BQv2pirVxaXagPd7d
         Xliw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=Bd1Z6OtbPEvfGtXHSMWy7FRFbYhMTvEP5q2INJQVyqc=;
        b=plqfT00RzR3U2IkrPL0ssCvfJsxXtm4kMyhyKO1GZwHm0c0GfnfOvU+gfh6lNrA8BH
         yTBKSJkMHA6GK+eavizIF7Rv/lmgrUzqOV7M1axO9eTELQBnDonnpedT/x/BXfDaDZKK
         ZHmVXkBvtUaJYXskSvMM4YcIlBc0AlLniDATUI+KfSl/Bl4wP8q6qAEzh6xZWKqWfxXP
         1s+AEnFUKtf+ucsNdwDcTXd7qFaogY93XnXTPhalgealpgJ6Qq+STn0fnFTyHhr+KZzd
         s4+w9vuZZAR/6D0IXk+BsWaEi0f8fQjujkaOYGYZu3uVq9PzCWOiCh1nVtnogtQOrfHu
         N52g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EsnC9ZyU;
       spf=pass (google.com: domain of janetmwangi781@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=janetmwangi781@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:reply-to
         :mime-version:sender:from:to:cc;
        bh=Bd1Z6OtbPEvfGtXHSMWy7FRFbYhMTvEP5q2INJQVyqc=;
        b=cmLEc8M69KKOcxXW4037LIU9U6W6Use+k954tJlvTgQ20dMw+bsohTuMzH8qSBnH1W
         wzozoK5CfzQ9PHVdM+MHcHczV3U2hsoWnRIZn4vSNRbhC90NV5dx+9taEZaBD5LixR2N
         cxqApdclE4FBLbrBtqkdMMgM8DWHh1XwoSDRP2ZVT/H+TEn4o7ofnD8HSl/xR2BI5zzc
         Xn20uEZUJ3+oWJGSq6HegBcUWtjqWPHOBaiWnAKERyL4+ehkdrixs06Gqouxpv3JBBYm
         g5vR3XkMqRklG3/0Jk0LhCB6zbdr7V5MXxSoZXjQTu77yfrp7SRckc4LWions8FNTNz/
         Rcqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc;
        bh=Bd1Z6OtbPEvfGtXHSMWy7FRFbYhMTvEP5q2INJQVyqc=;
        b=d0tcQz+LF67YOFyl+NZY1kyt27qvl8/SN2QXL3SORe9HAZ5lQ+6VezPRO5Eys7HG8w
         cCjdvTWRTr+Zu8gL68UShkRm7oO7tZrjOri3iV6EUXqscvfVfBlqX6hDGuu7E6TIpLvJ
         7MZQ4VoqsPAvfCz4bhkvFYbIeYdBP8S46lqEU+ua0EykKgbog0zeq1B4E3BHLfanoQUJ
         h4G9lsBWowHipj/FVFIIR9tQ67/jhFAqzHg6qGmeGCUbdG/7Vsav/WSxcN43Wvr8EZ15
         qT8NkK2n7Kc8lNb+/hWQiRSMVy4L6jrJLoGqmS03VOPZ9o6VWwkpsnFdi3lJogu0igDD
         gUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:reply-to:mime-version:x-gm-message-state
         :sender:from:to:cc;
        bh=Bd1Z6OtbPEvfGtXHSMWy7FRFbYhMTvEP5q2INJQVyqc=;
        b=hxqlaabbkgc6cN0YypH6Yzibl6H5TsDZxSrd+dC3Th4IReFREzwLpeAZV8NGxOL5Hf
         zvLnsdx4Y6Xc+mwfD84p7+yx1PUOIVXhFdkDN4WrL3V0yoyflJIvRHbcU7cdpQLJwnxW
         Uan3fnJ8EZ5K0rWRAYNSvjG2ecPDyNjrtpUhy55sJg24hycwjCqSl+u+pD4ZFD+S3PZV
         V8AbTIbzw0lm7fEOg3R/yx5ROAzNO6aYGllG9GawSKm0e/HNR/rnuO+lxF8S5mraVnaL
         ilB0L8wovyCHHfZ80EuuZVFMi3PIlLE5S+JVe+/LhzPM+E0jbEHs99nmeRtF7V4+zhOJ
         BnFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo3/8N7VGRZ1O736LWI7FGUlwUxgm9d4EeJRub+mdlYSrPUfk33e
	p+KrvkAW6JDirbBpKqg3LQw=
X-Google-Smtp-Source: AA6agR7YtdovWPEWc0aWSebhUMrFenSD+F3+gk+h5yMY8LtFEMo0Zy+9gPvLCKBlqgKZrtXFjg+yfg==
X-Received: by 2002:a5d:6b8a:0:b0:225:2897:def2 with SMTP id n10-20020a5d6b8a000000b002252897def2mr4216956wrx.251.1660915023010;
        Fri, 19 Aug 2022 06:17:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f618:0:b0:3a6:167:34a8 with SMTP id w24-20020a1cf618000000b003a6016734a8ls1454888wmc.0.-pod-prod-gmail;
 Fri, 19 Aug 2022 06:17:02 -0700 (PDT)
X-Received: by 2002:a05:600c:4f49:b0:3a5:df56:5475 with SMTP id m9-20020a05600c4f4900b003a5df565475mr4880492wmq.116.1660915021999;
        Fri, 19 Aug 2022 06:17:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660915021; cv=none;
        d=google.com; s=arc-20160816;
        b=jIrEhu7tFrJjWwhpvgMJ+QjRCCFFusyHcCJhLclnef9E2xedJ+jSgzPD+LVsVQGD3B
         fw0ipRQDmQrvApKtfJSSXeYXUn80fng02Kk3ncMSEO8wUMtNS5/sKE3ZOnriCf4EF8wc
         g7UDC2AsD+Gq7pxaaGOTSsIdyukmdUFr2BpX245KIjnOYYRwRUcMiucitq9XOFJLf1nz
         bXURV3kJD3ooYnA+12AjiCa4xxPr6SAjgi8iWBgt2F+LReTuRNezy3wmDggh9rtAzZVx
         5CFwbC3G1nxf8qr5M9T+vklybj+9G3//+gk1G2fHnuFwUy2SptAzUNdPMKBquE/ZEwl0
         5l2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=BIQam98RKV6s6PrsEMQjDJGRauQkLr+LISFt7jW6tVs=;
        b=NuUYkmUk/fW1YoPzgSDSu7EitcrvtonjWSQthiRP3uynj3G2nE9rF5Vht32yWF/zyi
         dZljzJYuVYhDWQWOPm3luJv/vwgAFDE8DMu9b7Yx9km9DBGeWE3mxIHT02hRCms+uHfd
         CLBnXdIeV7Ftkwyc8UvMZqdKbCjulyv1dSZIgXuH7YF3S+bM0kFCEWcYUS6UMG/b8jYN
         aK+2rEOgUFIGtB9kNqluJG+F9l2PZ+7MdUBWlXv0nO7Fj2sr/HctjsDBH9GfOuj29NMo
         Ew2Y77wgaD/2GeUj9mEVHe33J+9ZqGe7l5EdQ29Sc8t5nGtdH9ycfQE150MhnpM8VNAe
         e6+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EsnC9ZyU;
       spf=pass (google.com: domain of janetmwangi781@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=janetmwangi781@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id y15-20020a056000168f00b002252df10418si103880wrd.3.2022.08.19.06.17.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 06:17:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of janetmwangi781@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Received: by mail-ej1-x634.google.com with SMTP id fy5so8779315ejc.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Aug 2022 06:17:01 -0700 (PDT)
X-Received: by 2002:a17:906:9bc9:b0:730:6595:dfc8 with SMTP id
 de9-20020a1709069bc900b007306595dfc8mr4764199ejc.286.1660915021650; Fri, 19
 Aug 2022 06:17:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:3c48:b0:738:3473:74c2 with HTTP; Fri, 19 Aug 2022
 06:17:01 -0700 (PDT)
Reply-To: sigridruasungs@gmail.com
From: Sigrid Ruasungs <janetmwangi781@gmail.com>
Date: Fri, 19 Aug 2022 06:17:01 -0700
Message-ID: <CAHfOiBYQ=nEy9B65C8GBwuSytaMr69d1Y9-jjk0T3zhe-1BG_A@mail.gmail.com>
Subject: RE:
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: janetmwangi781@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=EsnC9ZyU;       spf=pass
 (google.com: domain of janetmwangi781@gmail.com designates
 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=janetmwangi781@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

-- 
I will donate 1,000,000.00 euros to you and challenge you to help
someone close to you with the little you can.

For more information about me, see my Wikipedia here:
https://en.wikipedia.org/wiki/Sigrid_Rausing .

Contact me on: sigridruasungs@gmail.com

Regards.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHfOiBYQ%3DnEy9B65C8GBwuSytaMr69d1Y9-jjk0T3zhe-1BG_A%40mail.gmail.com.
