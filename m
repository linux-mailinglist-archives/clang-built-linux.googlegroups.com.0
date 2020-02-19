Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNEXW7ZAKGQENMGQBWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C3C165345
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 00:58:46 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id w6sf1614264ill.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 15:58:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582156725; cv=pass;
        d=google.com; s=arc-20160816;
        b=zoKBsgFuVUhwYDcBuTFKuAqk5y93SXkG0aM7UYuBQHIP6APSDvX7GtmjRZfp4BEbs7
         lwCuBaGQX50kqq62BaTwa+CvimZSBvxKaiOnICWyuqWSrx6SSYUCNsY4+vKBzGz/XGf9
         5qKOsLEt/AQFWZIM+EmmPWkWe5u06SyD+uyY4DYhYRR5z+yNlkkMJPN1guMVlZb7ZO7s
         anemkTsHIXPVuAvN3auMSvW+G8/6V1n/MblppHlo/iYc1MpWjlFb+EBb4DLIe720WGUf
         n8/91/KXJ0aS98xX3hJxbYR/zT5mVmcFa0tXOg7Pi+aTyv5ArmwBu4PL/RyPBbhG9BOX
         W6rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=LthkoCUWQwkTXB5JZh/l0PTTes6QxezJ3UKH/mH+sRQ=;
        b=OyNXPzWbbyozWVOGKgenLEDSbh38DC928jBAOVyE7gL/rhjv7zMxFSL0MUSK8zXakf
         W5Q1tlSj7ifxsBRc2wb/t/uBeyc84p17rOiUObQvMJSvUpt4ELTbv/WQYONIwsyzYbpR
         QMwI5PVu09/SkN1iTUe1wRWFUN87566jSuax5e37D+aUXj65suZbBmtPdzN0e2RRR6lC
         +2r/LMjR/uj6gRIxKJDSuyxNywNk7N+jQDjAUhke0EjkRKZ8jlx4NJld0LwI+M58Opto
         CJoJTa8bznQpNbnudq/AMUctoiRkZ9QsSyDWb5R6d0/xaUYQ2sVYONoLD780F3SQFoJv
         l3+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YI49sziO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LthkoCUWQwkTXB5JZh/l0PTTes6QxezJ3UKH/mH+sRQ=;
        b=aCqHW3tDILYYU8DNpIMryAuxSkyk8uTz48WRZ5JC1wnmmwXh6MDFA2eHvIU29+H3Hr
         nNPl/sYxTCp7ovc8MqLT1d5QCEd8GlXRHveKpZovVizM4OJNFrnN8NsgpirUsreZfcLc
         oiixK75sVpWwMFMRYvZTa+Sdj/wd2nSk+AagJrhTQM+3xAi4vVKEjV1gKzbKOWP0ikFd
         o5gBEkS4uLgmZIg7VT3Qfj8DSLGwKcM8sHqCs5wBuQk8smGoBwuTJz3x1yZpdL8v2Cdk
         ZJQ4VjQUxvnrFVUMwR/8PS0a0e297qx+RVo5kLMHYBfKq5J4akGg9XHpOzA+ghmdiqpL
         lC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LthkoCUWQwkTXB5JZh/l0PTTes6QxezJ3UKH/mH+sRQ=;
        b=Lcw2qvd9zlhqvHrh26MTjNzKt3aUh4nQa6FHH67q/rdCVmJVUm6NcRe+NQo0NhgWLc
         2F3F5IKmSG8LA9vn9B4z650o8gZWLQM7mO/IiO18Gg9k2uwHzzwdIwcWGMYe/LJVrnVB
         q9IsFsZ4jQJ3lhy6A+7jkoVR8mzAMxBSy/c+/bLb66CLYSQ2dhGYDlKiswbHnPSh+jRb
         t/BH6Ef66RfrfDLl2iIE12TcDCncnAbxeW2NAfghQQxCcuJ9shuyc5TP+iBBYfqcVQZN
         EdJ8ZvAJyq9Y+SHB9TWrtvYPuhTsSCo6kXM0t1qc5/SRcjqjhzPUJzPFb2I6CfgXBmMq
         vxSw==
X-Gm-Message-State: APjAAAX3/loqL9vH5RG4UyB2B5o8zyduJQwBinNSVA1Ko3VAQv8kHKcc
	ynEY1k6de8GjOF3RNoW/lWo=
X-Google-Smtp-Source: APXvYqzvCsi+xqs6UW8b4B3n/f5adZOL8eWXQ+S4b9ySCoNXeo7633ynLyG8b4WJYhQqklkKfXIJTA==
X-Received: by 2002:a92:ba8d:: with SMTP id t13mr26277470ill.207.1582156724916;
        Wed, 19 Feb 2020 15:58:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2907:: with SMTP id l7ls319988ilg.8.gmail; Wed, 19 Feb
 2020 15:58:44 -0800 (PST)
X-Received: by 2002:a05:6e02:df2:: with SMTP id m18mr25916208ilj.56.1582156724524;
        Wed, 19 Feb 2020 15:58:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582156724; cv=none;
        d=google.com; s=arc-20160816;
        b=h1rdu4mM1/ZsbswtHIf2FnpgfqCChfrJ0vPm8bTPsML4/597v1qjc1vWtcCf3qtZK4
         kO6Jo2YqMcSUNY/+amr4WDT7sJqReXWKNdw3vYKgJmg0VVRGLZBATpjWy1FcBqDHlrGT
         EXXtFcvU2jXA6tSt37xVjvDep5bIV/O52cZkBdI4gynzkcWaq5TWUs1u4t1qU107Sx3i
         AUHurIaJn10H3Si1+DiaWoryMlsSgtZNKYSl8JSkxfvSp0Lq6p/9shfhLWXjizN3kpcC
         PYnTvUIuY9YopPMRU0y3ipBgL/fukckyxiIGcKj79qW0hDqU/PNxTurdK94EuISKRNrd
         bmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=K6MvtpDUCgJGN+cW2GJPhwgrkHb7UrABIM7vJPo4cNY=;
        b=yPDdaV1nXQCR2XGhkoMI7p8EdWo7SKbnB6cdQHa4cnCiPVNobQhjZS90LY4jJ684au
         LLAdwYqDU2Av8OabXZK1dbLzyXdLyiVEglBqyZBWrKjN+q6Y0gZeRq+2ICfwBYL4H2qY
         LTotczhJftgFYBCdMV55m48WIymzW/QpMaaMlZU5aVWUAot8EynVMAd2oIT+rMCb0WgA
         Qyq+be5e91nYmCxsDk37xkbL6S/9bIIMqSU46xp/0d5E7whTP/5GvKrkKEw45ux9zG3F
         DSZs6rKajxLl+lfO/LA3F+mBjkIZ+odlzikiVa4NEfW7x3zX/b+yr9oW+v3BM7/sz2Wi
         SsIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YI49sziO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id z6si87422iof.2.2020.02.19.15.58.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 15:58:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id 185so929237pfv.3
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 15:58:44 -0800 (PST)
X-Received: by 2002:a62:1615:: with SMTP id 21mr29029534pfw.84.1582156723472;
 Wed, 19 Feb 2020 15:58:43 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 15:58:32 -0800
Message-ID: <CAKwvOdm9Uumj9dFJkuvcZwiVf67s7OOQdO_VKjPhLeEqXFkfpg@mail.gmail.com>
Subject: Tuxbuild initial impressions
To: Dan Rue <dan.rue@linaro.org>
Cc: Randy Linnell <randy.linnell@linaro.org>, tuxbuild@linaro.org, 
	Stephen Hines <srhines@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YI49sziO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b
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

(bcc clang-built-linux@googlegroups.com, our public mailing list)

Hey Dan,
I had some time today to give tuxbuild a shot.  Just jotting my notes
on my experience.

Looks like --git-ref is required.  Could maybe default to master if
not specified then be optional?  Useful for LTS tree which has
different branches, but torvalds/mainline is master.

Error: [Errno 2] No such file or directory:
'/usr/local/google/home/ndesaulniers/.config/tuxbuild/config.ini'

Maybe config.ini should be created for me after prompting for my token?

Error: error: Unexpected argument for target_arch, 'x86_64' needs to
be one of ('i386', 'x86', 'arm', 'arm64', 'mips', 'riscv', 'arc')

No help menu for the list of target architectures.  `tuxbuild build
--help` prints list of supported toolchain, maybe supported target
arch could be added to the help menu. Missing powerpc and s390 which
we are building.

first build took ~20 minutes (which is great from a starting point):
$ tuxbuild build --git-repo
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
--git-ref master --target-arch x86 --kconfig defconfig --toolchain
clang-9

For comparison, our x86 mainline build from last night on our CI took
40 minutes:
https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/288815480

On my workstation, I can do such a build in 50s (without ccache, with
bfd), for reference.  ccache+lld in 18s.

I forgot to add `--json-out` so I had to go off the url printed for
artifacts. Maybe a json could be created by default in /tmp and it's
path printed out?

http://builds.tuxbuild.com/16_CEDdBZxfUGoz76Xa9bw/ were my artifacts.
Kernel version has an error string:
http://builds.tuxbuild.com/16_CEDdBZxfUGoz76Xa9bw/build_definition.json
which looks like a bug.

I was able to fetch the bzImage in 0.8s, so time downloading the image
doesn't look like a concern.

Looks like the --toolchain arg just swaps out the compiler; we should
probably think through how we might do an all LLVM build, since our CI
is using LLD as the linker, and a handful of other LLVM utilities in
place of the GNU ones from binutils.  I'm trying to simplify this
upstream now.

(initramfs) cat /proc/version
Linux version 5.6.0-rc2+ (TuxBuild@6a494879f5b4) (clang version
9.0.1-2) #1 SMP Wed Feb 19 22:57:0

Overall, it looks pretty polished; really nice work.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm9Uumj9dFJkuvcZwiVf67s7OOQdO_VKjPhLeEqXFkfpg%40mail.gmail.com.
