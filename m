Return-Path: <clang-built-linux+bncBCT6537ZTEKRBEMN2CAQMGQE2L6AISA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EE1322031
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 20:31:29 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id a19sf781521lfj.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 11:31:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614022289; cv=pass;
        d=google.com; s=arc-20160816;
        b=aiw6bPLPaHj8sv6A+36cLklqSH1jOwkWTkWklVXyyZTuWuOv+zNh/yWjNaqgZd+4w5
         uIfcTua/t8G7/hHx2866vOKczB5kf3cpP7fwcWOv8BFUEK3IZMbcCFb8oTUjZWTYPWxg
         y7iM724ev4ziY38I9m/G73XrFYgPw6xNFnpaIRJWshd+QfqQ73EPIdfA1xNTzsmD6I0v
         PQDbN39vNKsZ907v5igRVyW5sOJj/ssnQkMZ9+czxkumvE3KbwIn12pBDXZJHZtObOlA
         2Wm4VfHN0nJ/0xurw1ZdUMsNUTvLQh5qqBTaTF2tWWAAyQOXNU4XBBrqCiR9WStCiS/l
         mqFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=5hFqxc5Ak0Injmfe17p6d9RyDVL4wlU53JqmIwrv00g=;
        b=QKeUw1lF8kLOXniTE1+CxaBUcmQgBgUQblaj1ym33UXIsN+VKxub33WvYvIoZfFN08
         Al6qsWTajN9RgCeWtqsZFY+kqydBfBGsI0sO0HzVG2QJN/FZEtfTZgG5OXOyAGxZDgC5
         0BoN76Mxs6AKzJg5fGGRgPg8Lc45rMr8v+tNbNbZ/Iwj/8dez1BYEaLY2ySgVYgDReMv
         F5fXHaZU5/JtUsV9h6diGRzg8mwYTNl/G6Z+f+0/VtEZY2liBMNKfO8YJK9nvigkgvLy
         q3FgpdvIeF0LoeqhqeREtoVolKLTw8KAkCrBdhB+jWz5SKLOOIpv5AO9n9Wqvrpg789W
         tj7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YpHljT4G;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5hFqxc5Ak0Injmfe17p6d9RyDVL4wlU53JqmIwrv00g=;
        b=Fygcxu2dW8fkEozGaJ5+q/17n9teEquGZlY26pJO2g8lEKif/jYIbnd1Y05sezYRQl
         HhuDmvXGCSbe/6zOCd+0tTBuYyP8pmB3o3FDCxsZ66RtLdKP4icLPe7jgGzot+ukypMb
         nIfYpSueOxKCpFJpaNbMOafs0/upS+JBJ+vmxey2UFEyLO3aSPjGNU7x2SdJPc5BjcNC
         Dp4uTLmmNslzlqS41XAAfYP7pd69m5Jv8Wc72Bu84YE+D2GHn6QImml11/lTugb+R1xT
         xgjKEE3zGlpAjWxHR2h9Thrl7eoZLllxXSU89AL8I8fKpoLGw9AuN3+ZGhSWgZkQjq/1
         t1pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5hFqxc5Ak0Injmfe17p6d9RyDVL4wlU53JqmIwrv00g=;
        b=tYlTBIwZ9g79HserXh8ykdPCIVXDPy0yd5JoUznv2nJ3at+YQW4v/CPhG5JbXLNuXg
         3vEyu8+aeaA3pIRw32q4aIckVT2dyHqgNW6dV+oO9inOrD9E9FcoRGEIi9RDiSuPOp+E
         PrUeEyrmLhu7fo7y919uTHuytMaC0/VckVISGmXL5rlGWbuT733JTFXoxtPMPwJA3Bs+
         QNlc08MXAvfx6DAb7SZQtVr3FyvWCZWa8PZndSDffb2HWlLOicb7HLB7LosxZ1DXTgyX
         NwJ8c7DIsTB5AoNHEmU0Rz3EMZrFywzXSMkIwMM2WYe1KoNg8AaweK0gR3nIPgWC7aSc
         GoOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53174eOLzyqFFx8W/zqVmlvyNYwlMjm4hT1YkeJMwZp66DrQxWqr
	sTkKEyW+NL9MgD4RCjtoLpQ=
X-Google-Smtp-Source: ABdhPJxAl1KyhghBNJ+MAzaOZrazVmt7RWuWtMdeMsBlvkStb0UmMPYoWwiNAZi3IZyW5egWuOAFfg==
X-Received: by 2002:ac2:5396:: with SMTP id g22mr8460569lfh.173.1614022289289;
        Mon, 22 Feb 2021 11:31:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls745032lfu.3.gmail; Mon, 22
 Feb 2021 11:31:28 -0800 (PST)
X-Received: by 2002:a05:6512:3391:: with SMTP id h17mr14010532lfg.542.1614022288330;
        Mon, 22 Feb 2021 11:31:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614022288; cv=none;
        d=google.com; s=arc-20160816;
        b=eZ71AMeehKe61BxbCM+hWaCRxU1zPeWHR5bL8GVZGdS8vlIT3jEpCC86/euq8EYLsS
         AyuTSgIF3/tA43xcCPgK+LHLoWBPkOJuILCCTQUe/OkUq4VcqF9MfnO4BL2hQsxnpbAY
         FVm50rH2TIXJzCW/FlJF4KZtsKgmL6pp8MVPVyWLJRh0wFPbLfoXwPSE+XgbS7SJOxDi
         ulh9n/ynRdT4LFn6Yt0W2q5Dx1XdoUogHKE+R6zl0leTPmf6d/Lul+PMr+/UtNYHR1UE
         P3OuXbe9DRe9lv+4T1XKH2qyxSn09a08pHTmT1c8X6g5SQeBVp+AxxRXAuMZ4zKmASBQ
         g9aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=rfD3SQQQMFNXhoku1DuM9YNETkjiInlQqLxzMPB+06o=;
        b=T3K0ci6tOZR8SpeG3L4Ek+tftUJe7vp2LEDm+IrFq+ZNPadbSOBXF5cpQB1g6ZTNDB
         ns6ZQFbMK4jQSn/dlBsUXhkPxu8acbDt2Zp7OQrIdr57zmyJ33W89BJHKRgKxW1uT+CQ
         kV7xUobVv1I+p0O43ilEUp7iWG5Zj38KElWDlu9R7AEnLOuzBkBQ2cFa77ptCptziHcB
         J0LoT4fl+FGZIJGe+WlrjVq9O09C6hjR541xtsJELiNbUtYMQeYWMi+f7nux+Va6nw8g
         xB+EwN0Toy7Zk6VmejknFnsG30Fji4nDVPoqscVlmV/UaJqbTf2JLFeb7+k287XF4LqF
         AvhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YpHljT4G;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id j2si496795lfe.5.2021.02.22.11.31.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 11:31:28 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Received: by mail-ed1-x534.google.com with SMTP id l12so23480426edt.3
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 11:31:28 -0800 (PST)
X-Received: by 2002:aa7:d38b:: with SMTP id x11mr24007272edq.23.1614022287226;
 Mon, 22 Feb 2021 11:31:27 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 23 Feb 2021 01:01:16 +0530
Message-ID: <CA+G9fYuE4ELVDju=LESHnphL4Z2DT5YQjdh9rNgr5D1x5gZxgg@mail.gmail.com>
Subject: clang-12: tun: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	X86 ML <x86@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YpHljT4G;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Following test regressions reported after upgrade to clang-12 from clang-10.
Regression detected on Linux mainline and stable-rc 5.4, 5.10 and 5.11.

qemu-x86_64-clang-12 failed test cases,
  ltp-containers-tests:
    * netns_breakns_ip_ipv4_ioctl
    * netns_breakns_ip_ipv4_netlink
    * netns_breakns_ip_ipv6_ioctl
    * netns_breakns_ip_ipv6_netlink
    * netns_breakns_ns_exec_ipv4_ioctl
    * netns_breakns_ns_exec_ipv4_netlink
    * netns_breakns_ns_exec_ipv6_ioctl
    * netns_breakns_ns_exec_ipv6_netlink
    * netns_comm_ip_ipv4_ioctl
    * netns_comm_ip_ipv4_netlink
    * netns_comm_ip_ipv6_ioctl
    * netns_comm_ip_ipv6_netlink
    * netns_comm_ns_exec_ipv4_ioctl
    * netns_comm_ns_exec_ipv4_netlink
    * netns_comm_ns_exec_ipv6_ioctl
    * netns_comm_ns_exec_ipv6_netlink
    * netns_netlink

Test error log:
--------------
[   19.017163] tun: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
open: No such device
netns_netlink    1  TBROK  :  netns_netlink.c:143: system() failed
netns_netlink    2  TBROK  :  netns_netlink.c:143: Remaining cases broken
netns_breakns 1 TINFO: timeout per run is 0h 15m 0s
[   19.070922] veth: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
[   19.095171] veth: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
Error: Unknown device type.[   19.101364] ip (751) used greatest stack
depth: 12088 bytes left

netns_breakns 1 TBROK: unable to create veth pair devices
Cannot find device \"veth0\"

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

Full test error log link,
-------------------------
https://qa-reports.linaro.org/lkft/linux-stable-rc-linux-5.11.y/build/v5.11-13-g6380656c9227/testrun/4002283/suite/ltp-containers-tests/test/netns_breakns_ip_ipv4_ioctl/log
https://qa-reports.linaro.org/lkft/linux-mainline-master/build/v5.11-2899-g2c405d1ab8b3/testrun/3994442/suite/ltp-containers-tests/test/netns_breakns_ip_ipv4_ioctl/log

-- 
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuE4ELVDju%3DLESHnphL4Z2DT5YQjdh9rNgr5D1x5gZxgg%40mail.gmail.com.
