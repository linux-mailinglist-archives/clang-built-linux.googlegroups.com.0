Return-Path: <clang-built-linux+bncBCT6537ZTEKRBYUM2OFQMGQEWGKHT7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC5843865B
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 Oct 2021 04:35:14 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id y12-20020a056000168c00b00160da4de2c7sf1833357wrd.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Oct 2021 19:35:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635042914; cv=pass;
        d=google.com; s=arc-20160816;
        b=GH8wLbUyXji9aNIng1OmbDWnSLihtBljmqpP4jFRVi9cEYS7gifdDcGACzVT21qTK5
         ND8jOyUX8y+qf4J93M/1zdzmvqYqensEdTkRlQ1kj7CTF3W6dzvo7EUYq/sXKrkkKesA
         Dn4C5U7V2Szd/HrEmtnRRvBWQynFwbxWhhNJ7mNuXVAK4VpyNUJ5X0/kg0Fr286sQu6b
         ZkC5HrUhtj4cVxF8cyRvuYOP1b7xO+KrHByfnflXUUB3p/+rvgvHtDL2GTkbLPfccdEG
         DWDA+sfGRklL7y4NTQxgs/WSiN8oXKV1+ZggcbpS+7uxXzxTFPbU1DrsDD7snnwQa6s2
         DKTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=A8LdcUOXXQf0h/TA05YdX8F1utUlqQ1q5MOCJwnOoRo=;
        b=BnoQI6lG81MWh13WKE5GQDGZVIYaeV3tTZLiGBgwbgq1ZWEQjDF7S+/2mel4mAcRHh
         zm9QZWMLbL4MSPBIgUUPr9FywudVdUTwELB3wTpFi2k8e27A2ZYSznjieoprZqorSg3H
         MdIJsEFg4ZQWMjicN5Qdzv3fWXmV/jGHdGjHPt04SdLB5BNbI1SJuX/Hy3l1spB3mkxx
         EJbQIOMMrs/xk9fDTR7EiO74I2LU1GCoHRFlUJRtbbED7GRNAYiHtoSTjTsBh+kioK8L
         cPXfrI5H5vAiuBF/uaXwBSERqzSPY0OvVdxXUFch2DlUNzGGPFE9gopYSyYYAzU3uwJI
         7nTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="O/1N85sK";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A8LdcUOXXQf0h/TA05YdX8F1utUlqQ1q5MOCJwnOoRo=;
        b=ntfh7R4TgAAJ/xxNqQkbaICrWJ/Yhwg8JVvzSPKZbyn8qgehfj6W6bdIcSwtWtS+go
         mR75IhtTmGt35NjseKMhNPOrY1HEnX1eKZK/e76dVtxB9HBEPytmjqGctmUX6War3wy2
         S1GYuchPfOzgIWD3sD8zVtyrNhckkfO0Tg1oB1oBZCxla6NQBXawHJaPeECkzT5QDQ0G
         SXG79u82T9Kp1HYTvSguoRtvQTF6BfTxbbcpJfk8W1y2Y9gFStRf9KB/rMBSTPqqanMT
         Yw7XgtOhrvWD+bo3KqaeKKR1Wu1Wu3fmjyUhmp7cYADO4Eq+eDFtZKsW78TXRbuynvZS
         7aLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A8LdcUOXXQf0h/TA05YdX8F1utUlqQ1q5MOCJwnOoRo=;
        b=0NvzzkKLBMFmrK+tgKYhMj/zjtqCFTlYOkkOuW/S7eeCK+6jB/YlFlUD6tMRHseNxP
         8454Fkao66YlyJ9DSGMR57YPdobfNs9ElvtSZdXWCI05dy2TKML6apfgS2fCfgj1kwMZ
         Fp4W8vG3qkkAE1wbi3ek6UlR2mgmj/ip83bMHAeECuDLvM0u6k0sfv3nDukjaDT12ju5
         ikSr5gU+OCJsEFVzlyYj+AdKSCVUjzORTu1pj73phO2ijpVJC/NtHETPOwQ/2Iv9ckCV
         gxhdvJiL0ZPqgjSbCftd0o44Rt/dqJ35o+TTeS465IEkuL93YDVBsuOTVgFszPm1hr2S
         I+Tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533blr1H5Xzme3f4CBhAWwcLwue5P8vDONwIzkCc/2Is7+9Idp2n
	ocF8Gl3WaRFTLiJAmkgT/jM=
X-Google-Smtp-Source: ABdhPJyuk8y4oEOBdnUFHAQQsAtSxFYAfH1QQA9EL4s6baDOpEKwQeTumCO23jMgCZqi+psS+dselg==
X-Received: by 2002:adf:9dc1:: with SMTP id q1mr12228682wre.13.1635042914264;
        Sat, 23 Oct 2021 19:35:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:508a:: with SMTP id a10ls3548748wrt.1.gmail; Sat, 23 Oct
 2021 19:35:13 -0700 (PDT)
X-Received: by 2002:adf:80cd:: with SMTP id 71mr11810916wrl.429.1635042913468;
        Sat, 23 Oct 2021 19:35:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635042913; cv=none;
        d=google.com; s=arc-20160816;
        b=bqyM2pS8bgvWTgAxL+/q7GEHv31X212AEsPv6ZttG0bUdSo5WzIpJvCYcDygI0sso4
         C8qcDudug0g6uPOHBuYPVpGNzJJx0Xu5+AWYd/EgBGE3iRtjQtejx3XTz8ZwymKBYDCU
         aBmbLU4sGG+wcV2wWBi8wjHokl7GXqMFMjyXdpiHzBvsqGDjUkuxBT66RfsNIz48V9j9
         DsCYsve/8LJe8XL0JlCwJ6us/SYvC9MOttJjXtz+sNdjaJKk3Jt9gPbq4XgFHVjC4oHW
         9GJzp1h8ZZ0ei6htIUnoh2eLXwfsX04z0O/hXXOODOGvrG/RiniDTNFOLCrPITs2OXVr
         8h5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=edKpwoRN8Hv/cXIlxyftKTSXyuYnNxa371gif/W+RLM=;
        b=KesqjQrUKx/isDL8q8lpqvzisQc2Pw96MO7PrekKqR8cX6vjX6SPzEqZWldYpPE1zY
         gfd0hcYBPRoI7zxgRNWL0DH/wbb4IIbSeqWRNqtODqbkYEoDAQyg9JQs7l8xsn8bCGMx
         HbxyUfk+nlYeqg4aZ/QpA3u2xfsKj7Ve/arvVuEVARW5o8ei2Xp2XWRFPaCOyU0ptjSA
         a9PbC31us+F8CR6J9UbBRIwMNsOV1dh81W0q5ZywFH4zoyBCKfVZMsX5SUdVU5aFfhjD
         ubNpjsc0+LGmVrM7vz/9exWdmSgQA8AcJaU+u68OfS7hGG1caTQSlKidn+Y/N7Ir5nFg
         6+Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="O/1N85sK";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id w22si509565wmk.1.2021.10.23.19.35.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Oct 2021 19:35:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Received: by mail-ed1-x536.google.com with SMTP id g8so4172165edb.12
        for <clang-built-linux@googlegroups.com>; Sat, 23 Oct 2021 19:35:13 -0700 (PDT)
X-Received: by 2002:a17:906:c7c1:: with SMTP id dc1mr11789939ejb.6.1635042912321;
 Sat, 23 Oct 2021 19:35:12 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Sun, 24 Oct 2021 08:05:01 +0530
Message-ID: <CA+G9fYuhRwQhByNkWQ4OLP7y5vBTGoWdW4KrJSzJizVsDzWQSA@mail.gmail.com>
Subject: i386: tinyconfig: perf_event.h:838:21: error: invalid output size for
 constraint '=q'
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-stable <stable@vger.kernel.org>, llvm@lists.linux.dev
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnaldo Carvalho de Melo <acme@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="O/1N85sK";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Following i386 tinyconfig  clang-13 and clang-nightly failed on
stable-rc queue/5.4.

Fail (119 errors) with status message
'failure while building tuxmake target(s): default': ea3681525113
 ("net: enetc: fix ethtool counter name for PM0_TERR")
 i386 (tinyconfig) with clang-nightly
@ https://builds.tuxbuild.com/1zvtvNS4eyYkOMiXtFgR7n1k0Yc/


make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=i386
CROSS_COMPILE=i686-linux-gnu- HOSTCC=clang CC=clang
In file included from /builds/linux/arch/x86/events/amd/core.c:12:
/builds/linux/arch/x86/events/amd/../perf_event.h:838:21: error:
invalid output size for constraint '=q'
        u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);

build link,
https://builds.tuxbuild.com/1zvtvNS4eyYkOMiXtFgR7n1k0Yc/

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>


--
Linaro LKFT
https://lkft.linaro.org                           ^

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuhRwQhByNkWQ4OLP7y5vBTGoWdW4KrJSzJizVsDzWQSA%40mail.gmail.com.
