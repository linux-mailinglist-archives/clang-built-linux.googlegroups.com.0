Return-Path: <clang-built-linux+bncBCT6537ZTEKRBKOKTOQAMGQEC35ZQJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 595616AD83F
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Mar 2023 08:18:03 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id k13-20020a056e021a8d00b0031bae68b383sf5472016ilv.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Mar 2023 23:18:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1678173482; cv=pass;
        d=google.com; s=arc-20160816;
        b=kVZvdorLhHXXV/WFxYhLXhCcZMOYZkDVkt3+bGWrAClnJtPQesEuXrGqYjOwXfY5Dj
         Dk/f5WTljwMFd2Wxq+jgDnurEy1ne6NkxCPfWYWFxuhxP2aKtHR2GJGs65rWZHSWbdNd
         8wBg/YnFFHTaXjjATL6xQJe3Jt1mJy+JM4RvU1BJRnJGFzaMQWFu13py5fjB2aX+2f4h
         LSGit8c4sjUCTWq2q2dCpoBPJKLnJVobjpS4KekeB1yUFAw62YuPFRNTmZTKoTQmFa0Y
         bTfJSP2DwGnkcvhcf3Q9Q5qWXZoQnsx19fyU8mb6JHMlio+eUMoMcl0kc3KOgs8TZ2RJ
         MzMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=EUehE0NhezUr7Z7ZIoKaS8fE/n96YRWYBYqIt8jgmso=;
        b=DoxPPL6MI56GBlLadsSVPWaES1D76tDXUj7qhRbES2MLj2Y9CiOl1AQ/eHPk3NtLsO
         N8bk7E+n+o8+J9YDRJ8KMW35XRDo2x2/cOmnzvdSQj939Xn0+I2CqX4BYTfy5GNFsdk+
         yQwmBzGNygnONHGvewNTcUWzhVZ4JZuUEsug2E7A0FYqZGi8A0l+1iqYV+C0pi63ndP6
         OH8vff73/ybexUC5rtytQFuwY/XhUAwrGvwB/VNdJFrxBKjV2MxpIrfvmm4ujXZbtKRE
         qJMLkMbEWdJBrru14YrhKfB8fV6yPBY65NYSp6hehNBD13MEFyzbV06SzakcjPL14PE4
         n/kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lo7pVp56;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678173482;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EUehE0NhezUr7Z7ZIoKaS8fE/n96YRWYBYqIt8jgmso=;
        b=Kn35OE2WLbYxEpr8CVfjAobX1plE9tHxB78BPe+mwwM6GoACje0yhYhuTx0y4674b6
         2XIFm95oiKXtJYARREbEXKp0MnNr5pGQ83y0kPN/jjfLvJ7/U2PuX5jhIip71SGzTfsq
         aH9WBST/W5UQz1yoNEMeuiYLfi3441Mkzk+RV3szaLY2lav3d2+OYL4kcGHxVMIBMHFy
         CdOaKUgIJyCNhuTRm7bBuGrWBWCHZGgUolb+3U/7UqE4wVggvZG8xGk0mjMdV6erCf1h
         GCoi8fK/4eyrTqG+DPZKbT2NlLwd3woHehqRRCeEIl1vRRuTn1eTgv9xEC8oT4G3uhpX
         F/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678173482;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EUehE0NhezUr7Z7ZIoKaS8fE/n96YRWYBYqIt8jgmso=;
        b=wQMCDIcPBp4Jepkq7rzN7lrOC/yicxkrZkecJgZDswLfIIWQgncj0jrs0fNZI5PmT8
         2Uj7PpsNLN5cgC/0cqKDs6edgVNpKa6oBgTwUr3vYMzUWQkYa/X0aG8S/32ARvcCPrJB
         t7DcBXE1dXfpaU0Gy/8WN04iCCyNVCfbo8twlpBr0gYLIF6lvKuE8wQ2XSi51QwwAt9i
         UnL2zeGxJ99l/NnnZKJcCRRnbI5U2UgvQToZeg1T/y12Cn7bo/6NReyds3aaBbtEnfdQ
         35FkBfQLIFr7qnH5Qyrz4R/M+SGyCBTC7hj3I8Qz/dUnkeu7aRBhWoRqN13ExpDZQNgm
         vFXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKUvxk+wMduxHsymC1J7CT562JFjNZ/+5Rcd7mcUhv4EJQDXzZn0
	YKXsq+IraVVxNZOrTp5csNE=
X-Google-Smtp-Source: AK7set8S88tof7eNYaRL3Kk9dc1dLBC7OXmx05LwNBxhGck6SBZLRSMhFBHhKMiz8VdqVP0VpxJLjw==
X-Received: by 2002:a05:6e02:f02:b0:315:544b:911f with SMTP id x2-20020a056e020f0200b00315544b911fmr6690282ilj.0.1678173482033;
        Mon, 06 Mar 2023 23:18:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c914:0:b0:745:5be5:240d with SMTP id z20-20020a6bc914000000b007455be5240dls1849340iof.2.-pod-prod-gmail;
 Mon, 06 Mar 2023 23:18:01 -0800 (PST)
X-Received: by 2002:a05:6602:130f:b0:74c:b592:4c5e with SMTP id h15-20020a056602130f00b0074cb5924c5emr9226175iov.1.1678173481528;
        Mon, 06 Mar 2023 23:18:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1678173481; cv=none;
        d=google.com; s=arc-20160816;
        b=jEfex8nDMW/1ka5AGX8wiCYqj6/NX5Kz2WqH8huFVzBjnwJOTY8lvTIjqQav58m572
         dt1uiwCVFVSoTqw4zi0MxCu4UMw0BwJ+auXq6cpj7y+Aqz3dCd+HeHotVzp/5zoQl/8i
         GAnTEmgdPVjGiJR0TH0Zy+WyBPS8hEHqBWVzNoWIEhmx9ENz2Qsn/2H1PBZLbiddP/Bc
         mlnog9dk/kM1dYteXTr9A/qO5jSg7FCTK2sNIbAGOeg3lVs5kYGS2QxwoqqBOd46HhYG
         eW2t8hzgxTr3vxz1U1ZWiZA5yosRpFB2lKkHx4ZUysueDi7IShNu5z7kiT4fSfNY+zcJ
         nIgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=DLDvNJAiPBjBod3Tywevhuwhg5NQD2WRFvTgKWfFwAQ=;
        b=hVILX5kLFhT9igMJh4Q6xCFJN3Ej1A+t9tYqxyERvoBX2M2wCluNvxdi6YKJ/o2eN1
         y+AQBu6IO/wXflJ6N0Sn4DHsh0sUSgYrLOo/78mrtu8SYXjUw/15abjWdNjSDtqSCfuL
         uASi1HVzmR6Npzt4DerxSXGORq6fpUewrAl8JROd2mhM5KBHZH1XdSgDc53RhalRz4qW
         +B5Tl6SGs3hbhmBnbnhvzjgj7K7BdwDzUuKgn+24/guqn3+8oGKKRScv+xjPxFDVm5Uu
         Ef7wyDYqWBI8ytvY8PBZ6yBm960BWxpc50M3b4gPb7XckWYXhw2zM3+zr9x4W/qpSGAZ
         5NgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lo7pVp56;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com. [2607:f8b0:4864:20::e2a])
        by gmr-mx.google.com with ESMTPS id t16-20020a92c0d0000000b0031864fa3abesi712557ilf.1.2023.03.06.23.18.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 23:18:01 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::e2a as permitted sender) client-ip=2607:f8b0:4864:20::e2a;
Received: by mail-vs1-xe2a.google.com with SMTP id by13so11509436vsb.3
        for <clang-built-linux@googlegroups.com>; Mon, 06 Mar 2023 23:18:01 -0800 (PST)
X-Received: by 2002:a67:db97:0:b0:412:2ed6:d79b with SMTP id
 f23-20020a67db97000000b004122ed6d79bmr9040317vsk.3.1678173480962; Mon, 06 Mar
 2023 23:18:00 -0800 (PST)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 7 Mar 2023 12:47:50 +0530
Message-ID: <CA+G9fYt+5tML3BTyk4_z_Ro1Dv+W6OvZqoZcqjc5NRhqBNZrVg@mail.gmail.com>
Subject: selftest: rtctest.c:290:alarm_wkalm_set:Expected -1 (-1) != rc (-1) :
 Test terminated by assertion
To: "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org
Cc: Shuah Khan <shuah@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Anders Roxell <anders.roxell@linaro.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, =?UTF-8?Q?Mateusz_Jo=C5=84czyk?= <mat.jonczyk@o2.pl>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=lo7pVp56;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

kselftest: rtc built with clang-16 getting failed but passed with gcc-12
build. Please find more details about test logs on clang-16 and gcc-12
and steps to reproduce locally on your machine by using tuxrun.

On the qemu-x86-64 clang builds it is intermittent failure;
you could notice that from the test history link below.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

Test log:
----------
Linux version 6.3.0-rc1-next-20230307 (tuxmake@tuxmake) (Debian clang
version 16.0.0 (++20230228093516+60692a66ced6-1~exp1~20230228093525.41),
Debian LLD 16.0.0) #1 SMP PREEMPT @1678159722
...
kselftest: Running tests in rtc
TAP version 13
1..1
# selftests: rtc: rtctest
# TAP version 13
# 1..8
# # Starting 8 tests from 1 test cases.
# #  RUN           rtc.date_read ...
# # rtctest.c:54:date_read:Current RTC date/time is 07/03/2023 03:55:04.
# #            OK  rtc.date_read
# ok 1 rtc.date_read
# #  RUN           rtc.date_read_loop ...
# # rtctest.c:96:date_read_loop:Continuously reading RTC time for 30s
(with 11ms breaks after every read).
# # rtctest.c:122:date_read_loop:Performed 2630 RTC time reads.
# #            OK  rtc.date_read_loop
# ok 2 rtc.date_read_loop
# #  RUN           rtc.uie_read ...
# #            OK  rtc.uie_read
# ok 3 rtc.uie_read
# #  RUN           rtc.uie_select ...
# #            OK  rtc.uie_select
# ok 4 rtc.uie_select
# #  RUN           rtc.alarm_alm_set ...
# # rtctest.c:222:alarm_alm_set:Alarm time now set to 03:55:44.
# # rtctest.c:241:alarm_alm_set:data: 1a0
# #            OK  rtc.alarm_alm_set
# ok 5 rtc.alarm_alm_set
# #  RUN           rtc.alarm_wkalm_set ...
# # rtctest.c:284:alarm_wkalm_set:Alarm time now set to 07/03/2023 03:55:47.
# # rtctest.c:290:alarm_wkalm_set:Expected -1 (-1) != rc (-1)
# # alarm_wkalm_set: Test terminated by assertion
# #          FAIL  rtc.alarm_wkalm_set
# not ok 6 rtc.alarm_wkalm_set
# #  RUN           rtc.alarm_alm_set_minute ...
# # rtctest.c:332:alarm_alm_set_minute:Alarm time now set to 03:56:00.
# # rtctest.c:351:alarm_alm_set_minute:data: 1a0
# #            OK  rtc.alarm_alm_set_minute
# ok 7 rtc.alarm_alm_set_minute
# #  RUN           rtc.alarm_wkalm_set_minute ...
# # rtctest.c:394:alarm_wkalm_set_minute:Alarm time now set to
07/03/2023 03:57:00.
# # rtctest.c:400:alarm_wkalm_set_minute:Expected -1 (-1) != rc (-1)
# # alarm_wkalm_set_minute: Test terminated by assertion
# #          FAIL  rtc.alarm_wkalm_set_minute
# not ok 8 rtc.alarm_wkalm_set_minute
# # FAILED: 6 / 8 tests passed.
# # Totals: pass:6 fail:2 xfail:0 xpass:0 skip:0 error:0

Links,

  qemu-x86_64:
  - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230306/testrun/15287646/suite/kselftest-rtc/test/rtc_rtctest/details/
  - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230306/testrun/15287646/suite/kselftest-rtc/test/rtc_rtctest/log

  qemu-arm64:
  - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302349/suite/kselftest-rtc/test/rtc_rtctest/log
  - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302349/suite/kselftest-rtc/tests/

Test history:
- https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302349/suite/kselftest-rtc/test/rtc_rtctest/history/

Test log:
---------
Linux version 6.3.0-rc1-next-20230307 (tuxmake@tuxmake)
(aarch64-linux-gnu-gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils
for Debian) 2.40) #1 SMP PREEMPT @1678159736
...
kselftest: Running tests in rtc
TAP version 13
1..1
# selftests: rtc: rtctest
# TAP version 13
# 1..8
# # Starting 8 tests from 1 test cases.
# #  RUN           rtc.date_read ...
# # rtctest.c:52:date_read:Current RTC date/time is 07/03/2023 03:48:22.
# #            OK  rtc.date_read
# ok 1 rtc.date_read
# #  RUN           rtc.date_read_loop ...
# # rtctest.c:95:date_read_loop:Continuously reading RTC time for 30s
(with 11ms breaks after every read).
# # rtctest.c:122:date_read_loop:Performed 2670 RTC time reads.
# #            OK  rtc.date_read_loop
# ok 2 rtc.date_read_loop
# #  RUN           rtc.uie_read ...
# #            OK  rtc.uie_read
# ok 3 rtc.uie_read
# #  RUN           rtc.uie_select ...
# #            OK  rtc.uie_select
# ok 4 rtc.uie_select
# #  RUN           rtc.alarm_alm_set ...
# # rtctest.c:221:alarm_alm_set:Alarm time now set to 03:49:02.
# # rtctest.c:241:alarm_alm_set:data: 1a0
# #            OK  rtc.alarm_alm_set
# ok 5 rtc.alarm_alm_set
# #  RUN           rtc.alarm_wkalm_set ...
# # rtctest.c:281:alarm_wkalm_set:Alarm time now set to 07/03/2023 03:49:05.
# #            OK  rtc.alarm_wkalm_set
# ok 6 rtc.alarm_wkalm_set
# #  RUN           rtc.alarm_alm_set_minute ...
# # rtctest.c:331:alarm_alm_set_minute:Alarm time now set to 03:50:00.
<47>[  106.383091] systemd-journald[98]: Sent WATCHDOG=1 notification.
# # rtctest.c:351:alarm_alm_set_minute:data: 1a0
# #            OK  rtc.alarm_alm_set_minute
# ok 7 rtc.alarm_alm_set_minute
# #  RUN           rtc.alarm_wkalm_set_minute ...
# # rtctest.c:391:alarm_wkalm_set_minute:Alarm time now set to
07/03/2023 03:51:00.
# #            OK  rtc.alarm_wkalm_set_minute
# ok 8 rtc.alarm_wkalm_set_minute
# # PASSED: 8 / 8 tests passed.
# # Totals: pass:8 fail:0 xfail:0 xpass:0 skip:0 error:0
ok 1 selftests: rtc: rtctest

Links,
 qemu-x86_64:
  - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15303767/suite/kselftest-rtc/test/rtc_rtctest/details/
 qemu-arm64:
  - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302372/suite/kselftest-rtc/tests/
  - https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20230307/testrun/15302372/suite/kselftest-rtc/test/rtc_rtctest/log

Steps to reproduce:
--------------

# To install tuxrun on your system globally:
# sudo pip3 install -U tuxrun==0.37.2
#
# See https://tuxrun.org/ for complete documentation.

tuxrun  \
 --runtime podman  \
 --device qemu-x86_64  \
 --boot-args rw  \
 --kernel https://storage.tuxsuite.com/public/linaro/lkft/builds/2McWP6obiL1x51zgkgLXRAmI9Ei/bzImage
 \
 --modules https://storage.tuxsuite.com/public/linaro/lkft/builds/2McWP6obiL1x51zgkgLXRAmI9Ei/modules.tar.xz
 \
 --rootfs https://storage.tuxboot.com/debian/bookworm/amd64/rootfs.ext4.xz  \
 --parameters SKIPFILE=skipfile-lkft.yaml  \
 --parameters KSELFTEST=https://storage.tuxsuite.com/public/linaro/lkft/builds/2McWP6obiL1x51zgkgLXRAmI9Ei/kselftest.tar.xz
 \
 --image docker.io/lavasoftware/lava-dispatcher:2023.01.0020.gc1598238f  \
 --tests kselftest-rtc  \
 --timeouts boot=15

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYt%2B5tML3BTyk4_z_Ro1Dv%2BW6OvZqoZcqjc5NRhqBNZrVg%40mail.gmail.com.
