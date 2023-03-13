Return-Path: <clang-built-linux+bncBCKYNX7Y3IMBBDUVX2QAMGQE5UQ4IMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEFC6B82FE
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Mar 2023 21:41:51 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id c6-20020a196546000000b004b57756f937sf3903207lfj.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Mar 2023 13:41:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678740111; cv=pass;
        d=google.com; s=arc-20160816;
        b=IhcY23lMR81j0dGV1Ky6tZqa1ViPC1qncGW+BP79wdT0wKCAN4F0tj3Yck2QNwicK9
         ooFirK77Q13alTIdWEuDnCYRgI7SB06b3jbq5Krtqn93+DhrM/ogOtj9pCLNWbH/M5vH
         iXYXaYmuF102Z84xgG7n/Dh41Dud0pUMxoXz9Rpq9hXM6bbBKt652e5oOXOf32ZGrYVB
         fu+6X++IFEBDXcmQOBx/0cARpFsVJYXlg+kLbC4wKo27ueo9nTFNnClUbNb8/L7sUhVG
         HzIwZrRbuw95tlfRSxoNnq5gLCV5VoG2bj7hHKaNUi9uNddPHneCanI1L0bKgJcQiJI8
         JihA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Gg8xfqImN3QIcOxvN65lCk93x7ks1do9Q+MeH69pZWA=;
        b=xrgVFN3ZmXdPjPAivgMLYs5ieffbK5DXQkTlUCVMWGn+HkJTs+StHGXzDsHYy2moEw
         SZPgOwRb+mFnad+6nrNF4zlkPETlgCdAZfQX+QFS6fKSf2Twz0SXLh/Re73Qp8NEmT9k
         KUgbGCzUNsYteiQwFxOetTgrxLIZBgvIgEu9V1NLwyT8X+O3FjZGmKqu9Y7XW3AQ6Fhs
         e5Ry+c5NmpYiX8usW3zbwAp2N/WUw52iJ8b9mo72JUtUg5v5w3wmv5gxNTLwOwFpr5AC
         W5qEbmJYUDGdMcfGOXcASaZy1xyLXNJpkqi91juRFDzk7hACAU4sJjj5aBcQ3i+8oYpG
         9f+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@bootlin.com header.s=gm1 header.b=PGDinJQS;
       spf=pass (google.com: domain of alexandre.belloni@bootlin.com designates 2001:4b98:dc4:8::229 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678740111;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gg8xfqImN3QIcOxvN65lCk93x7ks1do9Q+MeH69pZWA=;
        b=Tn39BAI4w7FoGh8JACaVQVNmX4eaBf2cU0S2O+8hyeWWxRHTlNG8JtSQko7WQHyn52
         6htpM43+EtHor2p0VICKZ74G9m0QCsJPAqlUYUt0TTWvoHj+CXgGKTIofkw0vK+AIAcE
         tM3XTSNl5IA/lCw+Ymx3iWfhwSvt6w5g5a0r5zHQ6r1RaatKgZoh5gY2x2AkdoxAqxCR
         KVvYM56D1EBbYvpMexkLYmgrzu+FZ9D6Aaw8nTen/lcStMbGwlJXkZzjZMKTFgO2GJQP
         hH/X90QvWovjTM3EPYz70Udf5zyWNnE9TXNal3cOkDG/KETFptVqozEh4bptG8WVY9FM
         dlhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678740111;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gg8xfqImN3QIcOxvN65lCk93x7ks1do9Q+MeH69pZWA=;
        b=sdvY5ARas5hM1dhHd1DDnQZoK8w3PNF/vTV+Q0S354GBZpYEYRTa2/US/8Mm7OqUSU
         tFcxm83ZWRa5eHSYOrt5oLqY/fw9HsK4sIsNsHcOqaH+20s2V4EkIqrETDgWmGcsqE7H
         yVSSBCka/MLzl0w9iR9bhgZ5FhC2W8jGt4aBXrggSws0YSeA8M24t0JpWW9aKBCb5V3p
         L7c7ErxulJZINERIGBLawNL8L+LpfARZgTHp0Wd1n7bZWAmep0r9qpvLeM6cf2W3A/3B
         tC1t6pYa2UtqE7QVQ9LHU0psqZlmBWs7YDgELa+0OGsDfdv6ONtGkgcEgfyPebzOHBTR
         mCOQ==
X-Gm-Message-State: AO0yUKUnPkzXkUc6nOWdCzvvIoEKgPs7qzHnJhEKoexmatoxVyJBONw0
	l/P1ZNI90FxWlHkJATO844E=
X-Google-Smtp-Source: AK7set8RR/LULx8r21xmFyw14R2ObTdZRR6DRwqR6ycGc5plp3RD3Ia61qKoQGtwu4lNg7ZRGI0Lag==
X-Received: by 2002:a05:6512:68:b0:4d8:5f47:e4d3 with SMTP id i8-20020a056512006800b004d85f47e4d3mr10683489lfo.8.1678740110682;
        Mon, 13 Mar 2023 13:41:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:aa93:0:b0:293:4fce:5c5f with SMTP id bj19-20020a2eaa93000000b002934fce5c5fls2224214ljb.8.-pod-prod-gmail;
 Mon, 13 Mar 2023 13:41:48 -0700 (PDT)
X-Received: by 2002:a05:651c:54c:b0:295:b0c2:f6cf with SMTP id q12-20020a05651c054c00b00295b0c2f6cfmr14450765ljp.6.1678740108677;
        Mon, 13 Mar 2023 13:41:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678740108; cv=none;
        d=google.com; s=arc-20160816;
        b=y/JEom+vKSL+ErJ3nzkOL6CYab2e83U770cwopDtv8P/pKPy8HTfOhjwzcRQEParsv
         mPmgzFePM03A/o0ZRrsjWb8qxWaTmWUWIaZPt+rzYEMAzzOX8cdL/cnUJS6fSWEZmBFA
         uVUpSrckXcovvZ1NRkEkMTW/gW0RYkQmjKUe482FplEMPMHuh4+a0+8yOHv+G5H/Nnkt
         bvILIpsDfnPdzfLRCLEySlh67dMOHaetIqpiatNG1tkKf10dHy5QJmk8d3en+ILsoRTr
         dzmYYznfjoFVSAmPgXcGLnV23riaRHXmKBG3Ns1/y3zgTXwHECYBYh3UWsBeGvnAZxgu
         /RVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DwOQUIXnpFoKCIrGTMaLUibdWxxZk5kTy83/Zjo1/tc=;
        b=jjSADMyKibsDtHHWJ5Cq623Y92/0T/i8azg3saHsetcrhOEWPNix/vE8XRj7Naln//
         Ti8WiQpJf0poJg+khwCzX+E5uLFnmYtrOOOATHxUsP+QlZ7oZzqojGC6IdW+0KaVf+uF
         V43r/v+Y7yNTn6+tb2KBHMoZp0Ww4BkEWdtfzZfEahTlU6qFLJicxl0+UhUzti6EnZun
         3gwO//QGsRNhd0lF0SiLMN9LjcEn1GCbuGHJVtwxhrvu1G0dRnUDLU+X70PyOg5aiWgP
         ++WOJinFIo1fdih5lZ8hbeExQNWM9gyvzhA/T1b5XzOXRVNxqKtFok9i+1nCbNhjN5Wc
         IsrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@bootlin.com header.s=gm1 header.b=PGDinJQS;
       spf=pass (google.com: domain of alexandre.belloni@bootlin.com designates 2001:4b98:dc4:8::229 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=bootlin.com
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net. [2001:4b98:dc4:8::229])
        by gmr-mx.google.com with ESMTPS id z33-20020a2ebe21000000b00295a08c1798si45921ljq.1.2023.03.13.13.41.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 Mar 2023 13:41:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandre.belloni@bootlin.com designates 2001:4b98:dc4:8::229 as permitted sender) client-ip=2001:4b98:dc4:8::229;
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id BF8EAFF803;
	Mon, 13 Mar 2023 20:41:46 +0000 (UTC)
Date: Mon, 13 Mar 2023 21:41:46 +0100
From: "'Alexandre Belloni' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	open list <linux-kernel@vger.kernel.org>,
	lkft-triage@lists.linaro.org, Shuah Khan <shuah@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Anders Roxell <anders.roxell@linaro.org>,
	Mateusz =?utf-8?Q?Jo=C5=84czyk?= <mat.jonczyk@o2.pl>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: selftest: rtctest.c:290:alarm_wkalm_set:Expected -1 (-1) != rc
 (-1) : Test terminated by assertion
Message-ID: <202303132041465686d750@mail.local>
References: <CA+G9fYt+5tML3BTyk4_z_Ro1Dv+W6OvZqoZcqjc5NRhqBNZrVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYt+5tML3BTyk4_z_Ro1Dv+W6OvZqoZcqjc5NRhqBNZrVg@mail.gmail.com>
X-Original-Sender: alexandre.belloni@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@bootlin.com header.s=gm1 header.b=PGDinJQS;       spf=pass
 (google.com: domain of alexandre.belloni@bootlin.com designates
 2001:4b98:dc4:8::229 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=bootlin.com
X-Original-From: Alexandre Belloni <alexandre.belloni@bootlin.com>
Reply-To: Alexandre Belloni <alexandre.belloni@bootlin.com>
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

Hello,

This honestly looks like an infrastructure issue. How loaded are your
workers when running this test?
Also, I'm not sure how good is the rtc emulation in qemu (which is a
good part of what is being tested here).

On 07/03/2023 12:47:50+0530, Naresh Kamboju wrote:
> kselftest: rtc built with clang-16 getting failed but passed with gcc-12
> build. Please find more details about test logs on clang-16 and gcc-12
> and steps to reproduce locally on your machine by using tuxrun.
> 
> On the qemu-x86-64 clang builds it is intermittent failure;
> you could notice that from the test history link below.
> 
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> 
> Test log:
> ----------
> Linux version 6.3.0-rc1-next-20230307 (tuxmake@tuxmake) (Debian clang
> version 16.0.0 (++20230228093516+60692a66ced6-1~exp1~20230228093525.41),
> Debian LLD 16.0.0) #1 SMP PREEMPT @1678159722
> ...
> kselftest: Running tests in rtc
> TAP version 13
> 1..1
> # selftests: rtc: rtctest
> # TAP version 13
> # 1..8
> # # Starting 8 tests from 1 test cases.
> # #  RUN           rtc.date_read ...
> # # rtctest.c:54:date_read:Current RTC date/time is 07/03/2023 03:55:04.
> # #            OK  rtc.date_read
> # ok 1 rtc.date_read
> # #  RUN           rtc.date_read_loop ...
> # # rtctest.c:96:date_read_loop:Continuously reading RTC time for 30s
> (with 11ms breaks after every read).
> # # rtctest.c:122:date_read_loop:Performed 2630 RTC time reads.
> # #            OK  rtc.date_read_loop
> # ok 2 rtc.date_read_loop
> # #  RUN           rtc.uie_read ...
> # #            OK  rtc.uie_read
> # ok 3 rtc.uie_read
> # #  RUN           rtc.uie_select ...
> # #            OK  rtc.uie_select
> # ok 4 rtc.uie_select
> # #  RUN           rtc.alarm_alm_set ...
> # # rtctest.c:222:alarm_alm_set:Alarm time now set to 03:55:44.
> # # rtctest.c:241:alarm_alm_set:data: 1a0
> # #            OK  rtc.alarm_alm_set
> # ok 5 rtc.alarm_alm_set
> # #  RUN           rtc.alarm_wkalm_set ...
> # # rtctest.c:284:alarm_wkalm_set:Alarm time now set to 07/03/2023 03:55:47.
> # # rtctest.c:290:alarm_wkalm_set:Expected -1 (-1) != rc (-1)
> # # alarm_wkalm_set: Test terminated by assertion
> # #          FAIL  rtc.alarm_wkalm_set
> # not ok 6 rtc.alarm_wkalm_set
> # #  RUN           rtc.alarm_alm_set_minute ...
> # # rtctest.c:332:alarm_alm_set_minute:Alarm time now set to 03:56:00.
> # # rtctest.c:351:alarm_alm_set_minute:data: 1a0
> # #            OK  rtc.alarm_alm_set_minute
> # ok 7 rtc.alarm_alm_set_minute
> # #  RUN           rtc.alarm_wkalm_set_minute ...
> # # rtctest.c:394:alarm_wkalm_set_minute:Alarm time now set to
> 07/03/2023 03:57:00.
> # # rtctest.c:400:alarm_wkalm_set_minute:Expected -1 (-1) != rc (-1)
> # # alarm_wkalm_set_minute: Test terminated by assertion
> # #          FAIL  rtc.alarm_wkalm_set_minute
> # not ok 8 rtc.alarm_wkalm_set_minute
> # # FAILED: 6 / 8 tests passed.
> # # Totals: pass:6 fail:2 xfail:0 xpass:0 skip:0 error:0
> 
> Links,
> 
>   qemu-x86_64:
>   - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230306/testrun/15287646/suite/kselftest-rtc/test/rtc_rtctest/details/
>   - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230306/testrun/15287646/suite/kselftest-rtc/test/rtc_rtctest/log
> 
>   qemu-arm64:
>   - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302349/suite/kselftest-rtc/test/rtc_rtctest/log
>   - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302349/suite/kselftest-rtc/tests/
> 
> Test history:
> - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302349/suite/kselftest-rtc/test/rtc_rtctest/history/
> 
> Test log:
> ---------
> Linux version 6.3.0-rc1-next-20230307 (tuxmake@tuxmake)
> (aarch64-linux-gnu-gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils
> for Debian) 2.40) #1 SMP PREEMPT @1678159736
> ...
> kselftest: Running tests in rtc
> TAP version 13
> 1..1
> # selftests: rtc: rtctest
> # TAP version 13
> # 1..8
> # # Starting 8 tests from 1 test cases.
> # #  RUN           rtc.date_read ...
> # # rtctest.c:52:date_read:Current RTC date/time is 07/03/2023 03:48:22.
> # #            OK  rtc.date_read
> # ok 1 rtc.date_read
> # #  RUN           rtc.date_read_loop ...
> # # rtctest.c:95:date_read_loop:Continuously reading RTC time for 30s
> (with 11ms breaks after every read).
> # # rtctest.c:122:date_read_loop:Performed 2670 RTC time reads.
> # #            OK  rtc.date_read_loop
> # ok 2 rtc.date_read_loop
> # #  RUN           rtc.uie_read ...
> # #            OK  rtc.uie_read
> # ok 3 rtc.uie_read
> # #  RUN           rtc.uie_select ...
> # #            OK  rtc.uie_select
> # ok 4 rtc.uie_select
> # #  RUN           rtc.alarm_alm_set ...
> # # rtctest.c:221:alarm_alm_set:Alarm time now set to 03:49:02.
> # # rtctest.c:241:alarm_alm_set:data: 1a0
> # #            OK  rtc.alarm_alm_set
> # ok 5 rtc.alarm_alm_set
> # #  RUN           rtc.alarm_wkalm_set ...
> # # rtctest.c:281:alarm_wkalm_set:Alarm time now set to 07/03/2023 03:49:05.
> # #            OK  rtc.alarm_wkalm_set
> # ok 6 rtc.alarm_wkalm_set
> # #  RUN           rtc.alarm_alm_set_minute ...
> # # rtctest.c:331:alarm_alm_set_minute:Alarm time now set to 03:50:00.
> <47>[  106.383091] systemd-journald[98]: Sent WATCHDOG=1 notification.
> # # rtctest.c:351:alarm_alm_set_minute:data: 1a0
> # #            OK  rtc.alarm_alm_set_minute
> # ok 7 rtc.alarm_alm_set_minute
> # #  RUN           rtc.alarm_wkalm_set_minute ...
> # # rtctest.c:391:alarm_wkalm_set_minute:Alarm time now set to
> 07/03/2023 03:51:00.
> # #            OK  rtc.alarm_wkalm_set_minute
> # ok 8 rtc.alarm_wkalm_set_minute
> # # PASSED: 8 / 8 tests passed.
> # # Totals: pass:8 fail:0 xfail:0 xpass:0 skip:0 error:0
> ok 1 selftests: rtc: rtctest
> 
> Links,
>  qemu-x86_64:
>   - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15303767/suite/kselftest-rtc/test/rtc_rtctest/details/
>  qemu-arm64:
>   - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302372/suite/kselftest-rtc/tests/
>   - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302372/suite/kselftest-rtc/test/rtc_rtctest/log
> 
> Steps to reproduce:
> --------------
> 
> # To install tuxrun on your system globally:
> # sudo pip3 install -U tuxrun==0.37.2
> #
> # See https://tuxrun.org/ for complete documentation.
> 
> tuxrun  \
>  --runtime podman  \
>  --device qemu-x86_64  \
>  --boot-args rw  \
>  --kernel https://storage.tuxsuite.com/public/linaro/lkft/builds/2McWP6obiL1x51zgkgLXRAmI9Ei/bzImage
>  \
>  --modules https://storage.tuxsuite.com/public/linaro/lkft/builds/2McWP6obiL1x51zgkgLXRAmI9Ei/modules.tar.xz
>  \
>  --rootfs https://storage.tuxboot.com/debian/bookworm/amd64/rootfs.ext4.xz  \
>  --parameters SKIPFILE=skipfile-lkft.yaml  \
>  --parameters KSELFTEST=https://storage.tuxsuite.com/public/linaro/lkft/builds/2McWP6obiL1x51zgkgLXRAmI9Ei/kselftest.tar.xz
>  \
>  --image docker.io/lavasoftware/lava-dispatcher:2023.01.0020.gc1598238f  \
>  --tests kselftest-rtc  \
>  --timeouts boot=15
> 
> --
> Linaro LKFT
> https://lkft.linaro.org

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202303132041465686d750%40mail.local.
