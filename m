Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBA6J6SAAMGQE3A7KOQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id EC62131099F
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 11:57:08 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id m1sf4635152qvp.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 02:57:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612522628; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZUXOlikgt+eiEFsmUp8TR5x6y6T+DrnL1gmx3pT/mN0KD5G78qkVkksFNUN9o4vuvI
         o+PefwZE5ESKnw2UF3RWeYZdPSBqfXZ3aet9lkILPzR6exzOtJN13EfocJ7j0RbOdXNT
         EbKDumDdvxnhwcIqVMBXOVQIJxWm3+CUFcTVEMY2zcCc0KR66PHuc6lwUkpOHIc8L1kl
         kwMRXfpXDFU2B3lVTGfADpfYnE7WHBkprO+NyswP+Yf3hvoSuUUuwE5b3k8qqqsAgFGw
         lS7OzE0OkqOiu6J1qUvJQwkjODOStikqIhssWoSYjQNpsbnyHo5xLESc7nIJ/scTG5Nk
         wlxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=kS1q9CecY56EAtk16wPHC95EetkUELewaJ/cvs4d+OQ=;
        b=HEnfzdP0uIN61kN3C273pUt03KTI462x1PqMzBXizpwtGCyXd3UrNl8ZY87rbLw2Lk
         Q/ptF94cuLGaCBDRInJBq4nosUXovEj0YMlcunMXV9LJObgauQdWhk1WWn2mK3NF2d/m
         dA8GLdsjUGQdccueE8vPD78IwmBZlJ8Xdk8PjMBLNSHhPyITakYURfrZEEq8DAvEAxvl
         wCGtcrWyOYGBTeeE3Zcw14jFsQ7hiIzf+K43dkTYN6O6enqstjpSL40eMCUbY2q/66mz
         Is1tSFyAoDLIaM0p56lOcQDsBixMFscJMbqeDjg9+0nM1Tt8IB5DchaIkY0saPD3KlTR
         UX9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qHGUpsN8;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kS1q9CecY56EAtk16wPHC95EetkUELewaJ/cvs4d+OQ=;
        b=WMCP/PP5GtXiUnax0BsIR4zSvUK/LOthKZV+P0WIhgU3f/cmqhnVWkB1b6A+B8xH6s
         H30jgi9vGtiRyJ4BDNh4mhgwobd3tSuh4FNNBnWUUtdx2hRMCVA2xWLBdJlUzPCyqgll
         B5uN15ut8NtaBM0aknMjJsoYCkrpPmSOoCIx23ZmuG8pv5MC2X98llT1Xl6weih0A3/y
         Ylkhb0HZy4/X3mUYobFdxNbqPHHgFmfvS1sWEkzzss/4z00UWzfzyrsWBFjYPT0Kjyiy
         FveR9sNkL8FxUBvXj3NMtrH/y6ZtZ/0jXg1ERC4nxzb7LKAImQ08Q/4JTJcVEL+qcebQ
         FM7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kS1q9CecY56EAtk16wPHC95EetkUELewaJ/cvs4d+OQ=;
        b=Av7DGLCIG6G0d/uFzy9h/mBwY1h4/5t+MnZxlxwcLgBURSJvRsharC4SeZwTMLswnV
         0eWGGi2hIXErVaBcECBMIs0Urz2QCJwU5rMsmKCiSRKqK7br77a2rXWk0IBr7xf5JfEr
         XZnAKgbZpjZyALDgKWVDSsylBZowkvwsOlkBjcUNGhYUwl/37cEzyhe7aOOdIkgraK/E
         yRTzQhlQNAhZaC75yaO20QmwM5kmrXlBiHh5xVjE+mDjNLXqr0CXJoLkFuLmN46K73Eu
         n6zNfgflgaiiAvEzeXFIXxj1EzLaAVfbrDiYf0xIwM3KhMUl5ZBbEpqDG9i4juuMx5u0
         j5Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kS1q9CecY56EAtk16wPHC95EetkUELewaJ/cvs4d+OQ=;
        b=k4ZwVkwvF4h2ZVZRUIE+fjYEwySC/AR7D2psNzoK/0RuhUX6SmRl7vAk3A8FRTS0V+
         frV+BLn4XEySqx/+fcEwMsidNO1pIHwXrXkAtqsgwUWRzOHaP8cjAtnBLWepS4PQP8cG
         zpqcTgdFzxTRMXcwUZjYg37GY2KQeXpDAWGZWWxfG287bC9WjcXOGdX7cj/jud3g4p5y
         PQ3TjGKV7MdxvAuSuzWABNh+4dXQl9t9Wiefcwn5f4Llzu+Ds91S9mgH0OIXS27NhQuD
         MNiuIfrIqV1FebyvegppJeRRt7I5WKrLWyHKtZ8tSn4+bW+qiAIJxac2ZNZ9UzsH5ZDf
         6BEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dV919oAHaDJxULrCO0muchrS+T8K9R/Q1xh51sP5HiSNcjBU2
	mZBtyVY3Y2dJbypekji7fGA=
X-Google-Smtp-Source: ABdhPJwph9gmGgI0D/VcyNKzmD5wE1JihcvaAS6UnGI5gooTz4GxsWWLEhfcFY3sxmgUAwQ0iQFGzQ==
X-Received: by 2002:aed:3a04:: with SMTP id n4mr1318769qte.22.1612522627867;
        Fri, 05 Feb 2021 02:57:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:758a:: with SMTP id s10ls3317245qtq.2.gmail; Fri, 05 Feb
 2021 02:57:07 -0800 (PST)
X-Received: by 2002:ac8:675a:: with SMTP id n26mr3588238qtp.383.1612522627477;
        Fri, 05 Feb 2021 02:57:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612522627; cv=none;
        d=google.com; s=arc-20160816;
        b=izUcEp4BuB+RIs85YVOaWFyvwaNKmVCzVVApkNVV/zM6ER479D2WgCNzTcRj3kW13m
         ML0uE9wjtcyJIMF7OFpC/8ThXau2V5dGwkvLDOfsfqcTWArMm3UlyGe5is75g/bU/wVm
         TZ7s1wvZ8G4V/iPQIyfyShdn3xmvVXpRUIATqibl4zcpKljR/wps3lGozAHsk2ua3wRy
         32kvuPqvojmnDZ0/9X+UHP4cqOq1m5XrcLt0lTSaat3qMask0UDM1v8HVa1iyOQbSC4p
         kj5SSahgVCAvyWlGKKAH+a8//pTTIGoroL8qbMIBuwE/XoKVv38uV+IcuVl6x3gl4h1L
         Wz/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=IV251W//AjH9o0T9QP5zg1g7QdWQe3QcIbrbw0AVt9M=;
        b=k9fpjSZ/Ds3/4RQJhe7dI7IlBaWtE2lOk4xq9XWCU3AKoKlmxQDm74ZP0p1CQVakHB
         bAe9zOohwewVKEJigj2/c06X6zBzQ/6UgqqtrCTIctrtAtJHUuRZIzSWF5hlt6LeRlRg
         cPHRD+vVxLpGCX8r7+9jdHOG73oB91Wu8dDUjLToKG/tdVoGEaRcSS+tt/5RKDu3UdNX
         U4wHhBQTSdJ6Q7V155Z6zQfc/zsKmOso7CsujhIVyRJL2hRYnBzMlG2BIMBnfRMIZKT3
         9vcKInvTEeoUmK26YCfejOENrv8kTCMX7QZiQyG35ClTsE5wjcr6vOGm3gp1j1O3k+W2
         lXow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qHGUpsN8;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id e14si179417qtx.4.2021.02.05.02.57.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 02:57:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id d6so5434929ilo.6
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 02:57:07 -0800 (PST)
X-Received: by 2002:a92:58ce:: with SMTP id z75mr3474026ilf.209.1612522627089;
 Fri, 05 Feb 2021 02:57:07 -0800 (PST)
MIME-Version: 1.0
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 5 Feb 2021 11:56:55 +0100
Message-ID: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
Subject: Using GNU AS from a selfmade binutils v2.35.2
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qHGUpsN8;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Masahiro and ClangBuiltLinux folks,

I am trying to use binaries from GNU/binutils v2.35.2 for my
Linux-kernel builds.

Background is I am doing some testing for BTF + pahole with GCC-10 and LLVM-12.

I tried several strategies.

[ STRATEGY #1 - Use a-local-binutils.conf LDCONFIG ]

[ /etc/ld.so.conf.d/a-local-binutils.conf ]

# Selfmade GNU/binutils lib configuration
/opt/binutils/lib
- EOT -

sudo ldconfig
sudo ldconfig -v -p
...shows me above lib path is in the ldconfig-cache.

In my build-script I additionally add:

BINUTILS_BIN_PATH="/opt/binutils/bin"
if [ -d ${BINUTILS_BIN_PATH} ]; then
    export PATH="${BINUTILS_BIN_PATH}:${PATH}"
fi

That's NOT including ld.bfd from /opt/binutils/bin - not including nm,
ar, strip etc.

NOTE: Symlink: lrwxrwxrwx 1 root   root     15  5. Feb 11:10
/opt/binutils -> binutils-2.35.2

[ STRATEGY #2 - Use LD_LIBRARY_PATH ]

From my build-script:

BINUTILS_BIN_PATH="/opt/binutils/bin"
BINUTILS_LIB_PATH="/opt/binutils/lib"
if [ -d ${BINUTILS_BIN_PATH} ] && [ -d ${BINUTILS_LIB_PATH} ]; then
   export PATH="${BINUTILS_BIN_PATH}:${PATH}"
   export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${BINUTILS_LIB_PATH}"
fi

That's not working either.
New PATH and LD_LIBRARY_PATH are set in the user's environment variables.

[ STRATEGY #3 - Use which to get full path to binary ]

### GCC version settings
GCC_MAJOR_VER="10"

### Compiler options
CC_FOR_BUILD="clang"
CXX_FOR_BUILD="clang++"

### Linker options
##LD_FOR_BUILD="ld.bfd"
LD_FOR_BUILD=$(which ld.bfd)

### GNU tools options
# NOTE: Selfmade GNU AS v2.35.2 needs to be symlinked in /usr/bin directory
# XXX: Symlink: /usr/bin/as -> /opt/binutils-2.35.2/bin/as
HOSTAR_FOR_BUILD=$(which ar)
AR_FOR_BUILD=$(which ar)
NM_FOR_BUILD=$(which nm)
STRIP_FOR_BUILD=$(which strip)
OBJCOPY_FOR_BUILD=$(which objcopy)
OBJDUMP_FOR_BUILD=$(which objdump)
READELF_FOR_BUILD=$(which readelf)
GNU_TOOLS_OPTS="HOSTCC=${CC_FOR_BUILD} HOSTCXX=${CXX_FOR_BUILD}
HOSTLD=${LD_FOR_BUILD} HOSTAR=${HOSTAR_FOR_BUILD}"
GNU_TOOLS_OPTS="$GNU_TOOLS_OPTS CC=${CC_FOR_BUILD} LD=${LD_FOR_BUILD}
AR=${AR_FOR_BUILD} NM=${NM_FOR_BUILD} STRIP=${STRIP_FOR_BUILD}"
GNU_TOOLS_OPTS="$GNU_TOOLS_OPTS OBJCOPY=${OBJCOPY_FOR_BUILD}
OBJDUMP=${OBJDUMP_FOR_BUILD} READELF=${READELF_FOR_BUILD}"

That works - means passes all binaries from GNU binutils v2.35.2 to my
make-line.

Please NOTE that I had to symlink GNU AS v2.35.2 as I saw too late I
was using Debian's GNU AS v2.35.1 within my last builds.

AFAICS there is no more AS= assignment in the top-level Makefile.
How can I say: "Please use a different ASsembler?"

[ LDD ]

When I inspect with ldd (here: GNU AS v2.35.2):

# ldd /opt/binutils/bin/as
       linux-vdso.so.1 (0x00007ffc7f4d6000)
       libopcodes-2.35.2.so =>
/opt/binutils-2.35.2/lib/libopcodes-2.35.2.so (0x00007f11f3bcc000)
       libbfd-2.35.2.so => /opt/binutils-2.35.2/lib/libbfd-2.35.2.so
(0x00007f11f3a8b000)
       libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f11f3a44000)
       libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f11f387f000)
       libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f11f3879000)
       /lib64/ld-linux-x86-64.so.2 (0x00007f11f3de3000)

So GNU AS v2.35.2 is loading from the correct places.

Is the symlink in /opt directory a problem?
binutils -> binutils-2.35.2

Can someone comment and give me a hint?

Thanks in advance.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O%2BJCFjtmEEBjA%40mail.gmail.com.
