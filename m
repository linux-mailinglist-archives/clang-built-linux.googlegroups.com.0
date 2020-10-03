Return-Path: <clang-built-linux+bncBCS5NQE5SUJBB6VM4L5QKGQEB2LTUDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id DA28A28250B
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 17:19:23 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 32sf2046513ott.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 08:19:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601738362; cv=pass;
        d=google.com; s=arc-20160816;
        b=v+Eba4c9/1C3ltn1BI5n7TxisxCrFYh0oDb9e4zEcl8aX4lnwK/Xmihoyq5qhOoITH
         Pn5IWGoUSSrGN25b2UyC9vvenvUvQKDB+4DIlZOQ2t0lhF7Q5KEQhRp2biP0ry7xjoum
         NHDGm19ggN4B/tj9Hj44lcqK0yUAfTZ/PFbG6V+ZSGxEgDxc93s+st3jXv9cEi/wWtds
         +Ex02m6TL598EKaM5On8EfLgpNHIAMY+ysW0B3nH6UgB8n3smtLMTnBT3c01ukyDa1Ug
         quTRwENXymyDjb2AUgtMLW7hkp5e8Jo/2LoXY4DK0zb30KWfS6mEYo3gfi4tbE9yMJBO
         AbrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:cc:to:subject:from:sender:dkim-signature
         :dkim-signature;
        bh=1ZGFcrY/NVZisbu4VDGGwIPrcQQ0y1FkT4jNpYwagD0=;
        b=O3tsAa+fxTfrs3CmJDe9ZYkxel/b7nV+3H7Zd/BFnxbMQK2MAHuHaaczqaW9mu8UkV
         qc9Tr1/ASGItaHNAPwNnQMXvYVMowzQbXThcxy3ySfEBMvepnanErU1L7J9+9a7+6J5p
         D7S+giVHHStk5J3tSBw5i+c4wYAgzE6nSQVatThoFWNXR8zATNVfIKZPviY3LcT+zPI0
         mNZayhETlGntHCxLymbsKC6w+QfmWnGce8Vm8cz7EpulwOZlWTD/8EgK5+Tx4D9iPIid
         Ti7OyEpWGimkXGFGJRGA3Bvid7MqDDo2kZdqFQpJ+Brt2rZZ6P+JgT3nDTU9Ik0IAeez
         Klxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=URSW9S7Y;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1ZGFcrY/NVZisbu4VDGGwIPrcQQ0y1FkT4jNpYwagD0=;
        b=ROohN3OgPU6YT93bE+to7gKRB0MTFsoY9hTTGVn6giRf8Cn5ApmXMrUN2D+bz4M40Y
         GmWpLopzyvxX7/J3h6UfEQnCVSeIKpf9UzQoC6tcY0utb4TfRCUrWZ23M4f+x0Wu/VAk
         +5kmzX8S5ERc/4DhMftfZtTr1ceMIoF2rRfl+6C/P418zjSOUocLunz1G7fnKHHeCtmz
         8g0pq4NN/iUNphYNRJFFK2G7AorSWYXZzrWq79LhJD8jrWOAkg8resues9mTZWUbcBCr
         6JZkaH5aJV1hxf5EP7b9gpjSiL4w4OOJUN3V38upoiYdyE9g7hNBeOSiE2mx3SuSdYuL
         G5cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1ZGFcrY/NVZisbu4VDGGwIPrcQQ0y1FkT4jNpYwagD0=;
        b=b4aJufxiw7+tFL7ahLLoSKGr5N0jKCE2yq1C+Zena5wvPQmDq5Pk7frKGjjeH3LKal
         dExJPTrv25/MDJd50RdqYtCjNSM5geLz7kQ33JxtQhccWN+SQTdyEHIpBaFI5ILxhzsE
         pzZ6KbhgLC0uTmTJC8lCZ2TbKDo0W0AFEMKsb8R0ADewx6317iWPOr0lE2eupow00Qqq
         FvLP0iW60VVGASBfzdp9sNLQ3SKQVoJDGBqw+HrMLAsphyaIiQApFswIskKwxiOEh2PJ
         teXWnbMaZ/sbN8LdfamQUx897GueDx71WUmBSSEwQw5qTYxkaCFntnTIVJzbqZ0g2W9f
         VYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ZGFcrY/NVZisbu4VDGGwIPrcQQ0y1FkT4jNpYwagD0=;
        b=SxyFcHjjwcQ4pthPKxHR4V5Ox9RzF98TqSQQ7BOnIRHWKFxqLFqevXHNvXJoZi6hOD
         XkkdRMPmpB4sW0HWi9oODP4MqPowvLyaJnU+/ZebrZNJrgM/UZ5PZEIbyNsiBmYpekjw
         B+QLNw5Cqr6mNiw+R1fP15OTdAgDYxbNWMKfYFI+cNgOcch8WHn3fE+lnC9mScpLLeDX
         z8CYq+O+o+gaOyGYv53PUrt9TWHHg9H2CCmh4qkb9gJnxVek0pS5uPciNrTHCJOXZzJj
         VUF3+PKKQXAxzHxz7yLVqWWfPpxmkHfwht7lEnsCEkyb9Tfak8C6yQUlfIPV6u8FWArl
         PdKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SWjsu3fdnWlLZqg46OUgAI0AdTNfLdgT3W+MCVAQTY/1hucAq
	5jvr96kgx+Tuv/tD7EYPm7k=
X-Google-Smtp-Source: ABdhPJz4GdDPZZYCSS1nvBmvs6tfKDFO1tonkcPvr+Vex6NWK5um7ZTn0/4JHCBDfQ5HWxQf+8uVFg==
X-Received: by 2002:a9d:7998:: with SMTP id h24mr5709435otm.192.1601738362612;
        Sat, 03 Oct 2020 08:19:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e85:: with SMTP id b5ls1182483otc.1.gmail; Sat, 03 Oct
 2020 08:19:22 -0700 (PDT)
X-Received: by 2002:a9d:8f7:: with SMTP id 110mr5629231otf.143.1601738362270;
        Sat, 03 Oct 2020 08:19:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601738362; cv=none;
        d=google.com; s=arc-20160816;
        b=yf34BpaqQWxM1D7gpFJz4Jcoeyca1Ksw9FZn1l9rfUAqDzye8Kesc65UpltFWiV0mx
         djhfCwCZat8VsCNlgHI1fafVbMR0S/dxTuV6uSNvxJnufGF0bSTExtEhM3C5EMJYH32E
         7ORNXdLvq11wchhBvqxaH3kzbw+8M66drxBVr/wp9y603/MZK5AoKfLe4JAAHE0uqQ8x
         XU/2rIDeRMdbZRQwHr8WENwwfjuewBrn5jMmBvZvPZ72j/8v4RJKj5MBaTSsDA4sTNUI
         gjpxEB5zBt29RurTqxU/Y/W0a9W9SMvK6zXZ6TBpFFYqI0iWnE88GppYn8XqSpAfRrEE
         H7zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:cc:to:subject:from:dkim-signature;
        bh=HMfn3sVRJkjUaie6oXrhM0CzB/smuFPKw2b5ubgLlhc=;
        b=BLflSynvkTIxH9MpS0IVvzDT5xo4LSiz2G+btRqlPGAd8vf9a3P+J6ZF6l700EPqF3
         I+gjpKe/V4jLQfWO7CuME0YFf4R/AKK3gQjmM8yK/JD5AofsLs4ff1Nxr053Bx76NrZ9
         73hodZaKQHdsD5ZCRXcVDlpaYEVb/IRVtpdzKnNH8ak6e2xwIFtUSAKjfxLWO8VoiRY1
         Q+NzWsaeieHWX6HVRpQaboT7Vl3EXlghcshCZbTvIEZskLzCZR6/JOX+InbtISex6dBm
         9VALKYKil0TrFH5WwHS6V9gEaJmDOziOUlIexjF5dK212d8foBuejSHHEgzl1L8bb1gm
         ZBAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=URSW9S7Y;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l15si689728otb.0.2020.10.03.08.19.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 08:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u24so2911977pgi.1
        for <clang-built-linux@googlegroups.com>; Sat, 03 Oct 2020 08:19:22 -0700 (PDT)
X-Received: by 2002:aa7:9555:0:b029:152:4b0b:cca with SMTP id w21-20020aa795550000b02901524b0b0ccamr2917244pfq.16.1601738361449;
        Sat, 03 Oct 2020 08:19:21 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id fv13sm5312717pjb.50.2020.10.03.08.19.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 08:19:20 -0700 (PDT)
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Subject: [PATCH RFC 0/2] use interpreters to invoke scripts
To: Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>
Cc: Ujjwal Kumar <ujjwalkumar0501@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Message-ID: <2b00e566-112c-5657-c10f-7f210d3eae93@gmail.com>
Date: Sat, 3 Oct 2020 20:49:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=URSW9S7Y;       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
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

This patch series aims at removing the dependency on execute 
bit of the scripts in the kbuild system.

If not working with fresh clone of linux-next, clean the srctree:
make distclean
make tools/clean

To test the dependency on execute bits, I tried building the 
kernel after removing x-bits for all files in the repository.
Removing execute bits:
for i in $(find -executable -type f); do chmod -x $i; done

Any attempts to configure (or build) the kernel fail because of 
'Permission denied' on scripts with the following error:
$ make allmodconfig
sh: ./scripts/gcc-version.sh: Permission denied
init/Kconfig:34: syntax error
init/Kconfig:33: invalid statement
init/Kconfig:34: invalid statement
sh: ./scripts/ld-version.sh: Permission denied
init/Kconfig:39: syntax error
init/Kconfig:38: invalid statement
sh: ./scripts/clang-version.sh: Permission denied
init/Kconfig:49: syntax error
init/Kconfig:48: invalid statement
make[1]: *** [scripts/kconfig/Makefile:71: allmodconfig] Error 1
make: *** [Makefile:606: allmodconfig] Error 2

Changes:
1. Adds specific interpreters (in Kconfig) to invoke 
scripts.

After this patch I could successfully do a kernel build 
without any errors.

2. Again, adds specific interpreters to other parts of 
kbuild system.

I could successfully perform the following make targets after 
applying the PATCH 2/2:
make headerdep
make kselftest-merge
make rpm-pkg
make perf-tar-src-pkg
make ARCH=ia64 defconfig
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make prepare

Following changes in PATCH 2/2 are not yet tested:
arch/arm64/kernel/vdso32/Makefile
arch/nds32/kernel/vdso/Makefile
scripts/Makefile.build

Ujjwal Kumar (2):
  kconfig: use interpreters to invoke scripts
  kbuild: use interpreters to invoke scripts

 Makefile                          |  4 ++--
 arch/arm64/kernel/vdso/Makefile   |  2 +-
 arch/arm64/kernel/vdso32/Makefile |  2 +-
 arch/ia64/Makefile                |  4 ++--
 arch/nds32/kernel/vdso/Makefile   |  2 +-
 init/Kconfig                      | 16 ++++++++--------
 scripts/Makefile.build            |  2 +-
 scripts/Makefile.package          |  4 ++--
 8 files changed, 18 insertions(+), 18 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2b00e566-112c-5657-c10f-7f210d3eae93%40gmail.com.
