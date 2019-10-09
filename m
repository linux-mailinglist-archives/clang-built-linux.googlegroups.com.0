Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPM57HWAKGQERHJQSDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 200CDD1AB0
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 23:18:55 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id 70sf2310736ple.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 14:18:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570655933; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZSVTCqO7qu2a5GaPNsrzidDkeKoH6QjI/vZzOnG27vZSUgw3VN8ijeLPN8bkjC99h
         6FTWIlNzCQYra0MyApuERvqYurxrrdCEcs22DV8/AO2L8b8ZQBTONfFZXa2LQo+h1yeO
         pvcvyVh4jmz40Yzs4kAxz1r5Tsokou6htelMSfC69bHptMUwx1cO3egDKpY1c5mbqSW9
         w26DSmgkJEPCoK49S+da5f753NESXsqgxPbtgEbtrjs2e9xHVd5g5NcnANuQmc8T/D4s
         WNfeyAMSelUdZOME4z939yYMZfcRWUd1F4kzCuVLS6WsM0yK/Z7G9vR/oRzUJdbS6Su1
         jbJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m4TxTDQeKQHnB7wZSodvfiy6MkqjD/STbf32DpfRoZQ=;
        b=apt+YwPcPBO+bMvzBVugU4iQagpq5Bd5a61CAzHINXmFoZi3BQJ8hHPzkm1/3tDV6h
         maSeoigzdLFaZmCkZ4Qtzf4H7tQ0t2b9GIlQws5vYp5poDOBSSGEd1BXnw0OhitfT9YH
         Kq7fXVgF5IyY2fIzfaLq+dM68B3LZNMFozBgQxhrCYwjeGv6e/J51n5jdmc2YEQ1j5RV
         ZGL7TJAZ/uVREukty3oe0eHcftbOah+vlKxwFr9ggmcBtTcZwD14G9vGInjsrqfHCKFu
         ytOoNcHgmQW2GIqayr0xSz2NQs61ZLMs3J1FXjCtpNFnW3SXWP2gVwaAPAmv5yD5/xHy
         zg0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VJpWIqv5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m4TxTDQeKQHnB7wZSodvfiy6MkqjD/STbf32DpfRoZQ=;
        b=Q366QBIqz/LbQeWkxFiIBY5INA1RA548lQlqhDeVuo8E/QyBmlYwE9BsBaUqgQ8vYm
         JRDoZe1Zc6gNQ+nTWiAU31iE3Lj/gnCY51HeVEFdR8ZU98o+cIGKtumGNdAf/0o/x0mY
         17VVuNKr7IAZBJwm9vEQDjPlHKB5R3q4oOtXxBNRjVAsTS/WA2t3TzmBktP8Wv/yqhHb
         2XRz0cqai3TmksRxA42ILpcUcLrx7vzRPhlBbzBfzTp/E3sh0KVCS7p1P/9PiMjHWaso
         UP+aBXAa1ojkkboR7CggIN3JVQztk4ICikn7QZveYLXjvNmSir4GuGETvnNfabVjHa5q
         ggaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m4TxTDQeKQHnB7wZSodvfiy6MkqjD/STbf32DpfRoZQ=;
        b=m1s3jdd/gaS+EynVRbDy0fT5Rrx5G87hm9FE4+HCkhLvTDR3QVuklAQ/jC8U0O14+f
         mrNOQ4lQsTbVmEyyASTa8hQzgPXCPOAM64wF/PXZ391l9TZyi5X3I/iZfpZPC5pwrSpz
         6BpEJD1gNtR4ctXomwVBFP/PzguKpwtKIsBSa3DDVOwRyZWfHtG2gHGKyRDsh1km3m13
         /4aiaPWT97nb4dj9FHOBZ8t+2wPqzg78W5IG95X54QgDIG+dHkYsUbRYW9weEAKDtTmV
         PUl5zVBO0GW1CrFV5nIKc235KPqKzz6HSP3Ny0bNXJ6RvhoqoLIi4ILniOcD+vA3YV7K
         NtJA==
X-Gm-Message-State: APjAAAWJeCK+nXG/cUxFmi6UL9YJKplPL3yrRKZduSHcQom0z3V2MyVN
	KhqzKg+pBn6VL0spEW3u6os=
X-Google-Smtp-Source: APXvYqy4mpBPoIdiX/bCKlTMK2nmAVOtSZu7J1p3EHbFNhbswIG56bdF1zTUS+j+EmVX5DkxvbTOww==
X-Received: by 2002:a63:2644:: with SMTP id m65mr6447347pgm.170.1570655933110;
        Wed, 09 Oct 2019 14:18:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b413:: with SMTP id x19ls305150plr.10.gmail; Wed, 09
 Oct 2019 14:18:52 -0700 (PDT)
X-Received: by 2002:a17:90a:9f81:: with SMTP id o1mr6742121pjp.60.1570655932773;
        Wed, 09 Oct 2019 14:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570655932; cv=none;
        d=google.com; s=arc-20160816;
        b=yUbKXWSy08EFK3dzhlG3FZBrThc3ggaGfcFl7bqLQD0x4dOVHXeLppyZIbY7nwhg+/
         4uyUq9WxcbMSp1xEG+rjI+hv0WBEecVR35ayCh0i+IAvakP4ouFmovBT0wKeLLJHcA/N
         QQtPc0fiB7Y5QseAiRQsrUYf2HjDuvEbrrn3EdT7r07GI3PytfICLSwvlXSbanPAPk2f
         /Pdqo5YJfU2YNiCAT3beLwxtYaCcp4/8zLf6fKm3A4nnDu+j6mNQOHRRTSOAPfFqgadU
         8qYtnFCKsAuoT7AjWysTMJIT70AUCWa6MI6MMOg2ky3UPXFQOMDeCgaMDT/9J9jmcR8k
         AhJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FppqMOHDAi1x/ZzxMXvNdSZsAcZcOy0dTiQqP4Mp8vs=;
        b=WfPaxmEykO9dq6cO+HTBN2j2wsHBc9VYL0mBp9zR5Nsgi+Eik3wQx7dRHjjpVxNX4Z
         Uc7gHnMJw3V3Z7jtojjU+Gr/SdMXq3RCcEZ16AxuJsGQ0P+ZriQ/cz7pOqX/nzrGnWYV
         26zLGNxl2pP6wxcb8OkxDHQf+P1KQvWM9ozpLZ6DY+Wuc/Ov2CLhyL7o+ahUlGk1RSEf
         cmxnB38zOoPJ9AJ1zQeOJq7C5yzvWPql11VFghCj15nT6ElOa7eOH7cdbisUde7b4Lv8
         EBWbDEN4vDb6Zl2d/YxEWmo59Kl5dso2wY0sQQJlmzBNXg4xdBZutrpKAW8XXRwQuyTE
         HUJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VJpWIqv5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id o23si306619pjt.2.2019.10.09.14.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 14:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id i32so2219756pgl.10
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 14:18:52 -0700 (PDT)
X-Received: by 2002:a17:90a:aa81:: with SMTP id l1mr133528pjq.73.1570655931589;
 Wed, 09 Oct 2019 14:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAAzmS6-PUDe_4EA93v-oL6Xhw7221b=DdXyRB60f=eYtWOBSFA@mail.gmail.com>
In-Reply-To: <CAAzmS6-PUDe_4EA93v-oL6Xhw7221b=DdXyRB60f=eYtWOBSFA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Oct 2019 14:18:39 -0700
Message-ID: <CAKwvOdkZVs23gBJJEX3MbB7EsTpHmP5Hm49X6gR94zRRsNAPTw@mail.gmail.com>
Subject: Fwd: Clang Linux fellowship notes - October 9, 2019
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VJpWIqv5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530
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

---------- Forwarded message ---------
From: Stephen Hines <srhines@google.com>
Date: Wed, Oct 9, 2019 at 1:26 PM
Subject: Clang Linux fellowship notes - October 9, 2019
To: Nick Desaulniers <ndesaulniers@google.com>

CrOS working on linking their kernels w/ LLD now.  Could use arm64
backports to 4.4 LTS.

KASLR
- available in Android 4.4 (4.6+ otherwise)

Replacing binutils (especially assembler) with LLVM-based tools
- Welcome to Jian!
- https://b.corp.google.com/hotlists/1789112 is the hotlist from Bill.
- Is support back to 4.4 achievable? Maybe
- llvm-objcopy has a patch from Jordan that might be sufficient.

Benchmarking LLVM 9 builds of the kernel
- Nathan trying this out and collecting data.
- Timing how long it takes to build the kernel with variations of Clang.
- LTO, PGO, etc. vs. regular builds.

Prod kernel + Clang
- FDO really needed for net/ subdir.
- Bill narrowing down which files are most sensitive.
- Maybe talk to Ian Rogers on the performance side to analyze it.

LLVM Developer Meeting
- in 2 weeks

Issues with -m flags
- Seeing -msse -mno-sse2 crashes in Clang
- Intel agrees that this is a lot of work.

always_inline
- Semantics have changed over time.
- Originally just a hint, but now has become more strict.
- Can't do it for indirect function calls (although Clang can in some
limited cases).

Aaron Ballman adding C++ style attributes to C


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkZVs23gBJJEX3MbB7EsTpHmP5Hm49X6gR94zRRsNAPTw%40mail.gmail.com.
