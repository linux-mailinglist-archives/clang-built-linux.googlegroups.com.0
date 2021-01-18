Return-Path: <clang-built-linux+bncBD66FMGZA4IMLZUTQADBUBAKUSEVK@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D55EE2F97D9
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 03:32:37 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id z12sf3933493wmf.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 18:32:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610937157; cv=pass;
        d=google.com; s=arc-20160816;
        b=jIcjt3HfNVnJ7GCAENI6J60qHBnUTXCW0MsujJ34UsAYEdfePqvbJpMefyJGWGLyZ9
         PAs6b7cckAynD+5f+M9oRRkWe3gk9vXLBx5E/CWK0X02EKPLXm3385p+F+qwtMv+j94N
         7L2JJU+cu4YTYkqr5Mc33yx31AyOiDVDwIfQAp4JwOfmNMeKmNTQEmOy9hDd6+B0D3Q6
         BnTx9Q6/kvdB8uogrbjztnHUpMZdqv5YCXx3wfOvQECHFDXvKbXMiI+/BIFZIAuCT8Co
         Iu0ZqsV5ij5Zui9MHevqVrv+cIObg/2T8uGiq0aHCVF1Rem+lIo2K51Uc3B2hLnE2TS8
         TlmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WTj85OLIgGL0fkmot27RG6LqPw3UszV9Eym4LAjXPmg=;
        b=X0CDW3Ufr/ZEAgATqgoFHJvPwGFbVb2T2v0/z4B/vAnvIoFcr841PViNvjBnosIdKL
         qMaq3hKz8jDwtkhNeUaMXhI00KJirWrDQ1PDR4eTPTPVDJBeXzcb5eCtPB0fjfNOwihY
         Tqqy3sogAqy4s2e13YXesDlL52EGXP+rjoTMNU5b2rXiL8IXs6v7eaayfelyHRGVsQIE
         y/FGbpNqqsgEt1UvfhTZ+cRdXbz2gGMqef2bItbFgy+PNTAKY+q0/BUTAaLO3H4ERm4u
         siJGBj6Gm6QjGIFfiOcFMgO4Dn7l8za+BAkdWptkcddJpINbbNZDrx/fSXDGoLRe6pJ6
         tb/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fu01MN1R;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WTj85OLIgGL0fkmot27RG6LqPw3UszV9Eym4LAjXPmg=;
        b=BbM2RXVtPa6PoioyxVEl/KsO3ZRo9V9lYPV44e1Z1mkgYP+luQyPzYW30zK0IscFtV
         FTx66+gIdU5xU4JKSRztcNOuWCUu6dbZXTBkurgdhFpgOZvyRhy14z9k/MguIoLsA4/1
         VYcFl9cTdUyAhfiOz4R7M0n07Ze4xBeBgcpFabA6Kz2PEouAUyYof644vR7PSE2vHCw9
         taPvhBPRqeEiMhSsb3weMQLrClZO9XCDL7Gx7IZ1Z/0pVWgUwgUAxpe6OVQnpl/uFVkj
         cMEyt9FVYVACYL7zaXV8rQYctE8bzua7QWGwBpIoL1mvbQ5wvDqim9+yUQBqxXoX1prw
         CcMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WTj85OLIgGL0fkmot27RG6LqPw3UszV9Eym4LAjXPmg=;
        b=NFnWsLQ8tgxfufzTf6wM1YjqKvotT8f4/Dol9aITq/f77ZzwSqw8/LR7BYpl5Z+QCd
         4P+HkUoFtAvZ/7PG8l7IZoOSnEnXeiOJlh/F2173EgEkyvUInbQjoa1wi0zp/8cTyhAR
         x90FGPLTIFoUq3VUCWl3UysxUL+UwclTHgMkgIeludGms2IYaC3B+OETXCffIeBtyT83
         cghg1N48SuxAAMHJIUnWfgHoEo0ntoKnktstqzkyeJdIys/UB5qN9ecsrZMKgR1n8bay
         7gy99LpkEzs4wxEC1kk7/RFnS2X/1j62g2ESLxtUlmN6anWszjL05cT3GUj3NWUmwMO5
         SkbA==
X-Gm-Message-State: AOAM533Ei5I8z+u1NoHZSndMs/O3WQQLfUlPogPnT3RjUXrVYFEbzUgV
	9/1etCBuYwBqbIdQRkZyY3U=
X-Google-Smtp-Source: ABdhPJy9UHdxC8JzkoAkIUN2nuF7Jau9ikzzjODhPQdqWPiiyuhVjMjgRifaqgxBjllc7gQpzXivvQ==
X-Received: by 2002:a5d:6682:: with SMTP id l2mr23466380wru.213.1610937157601;
        Sun, 17 Jan 2021 18:32:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c191:: with SMTP id y17ls1345461wmi.3.canary-gmail; Sun,
 17 Jan 2021 18:32:36 -0800 (PST)
X-Received: by 2002:a7b:c205:: with SMTP id x5mr19439001wmi.115.1610937156912;
        Sun, 17 Jan 2021 18:32:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610937156; cv=none;
        d=google.com; s=arc-20160816;
        b=bVmkaEDxPgzy268kdY8lkNg/9g9eSxBhAy/vY4UbBr6D0ySY/F2FSa+1/FS1an6dAe
         uYp+8rpCSSS2EGYsQe+yY+AG1pb+VFKrgwY8Ai3luhQzFnS3Cifm78KAt0EmKtgBCJim
         rdMLot5IJU1rfuA3baVpuLFQfA/rXVq93pC5riSmcYY1P6lYw4VWLsBNQSJknU5gDD4X
         rnuSODJysZwC6lxWGRN9tScwIA0U9FlkMxSJFV0dVmxn1mYXjdOy7Y0tNFhhRGkkmWi4
         PskXN243n1ozLrVKcaLAwgyDtE1W1JaVr/y/kI2ZNvPYMUJZjBo40cRSmvGsVEiA8WTe
         PujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iw3qguMN2HQw0dg4Ex4c2c9WaYKPlQtajPSFcrfomWk=;
        b=M5IQQzgwoY70s2IV+FewL/VjpurRewlaPcYXT+ec0AgtHVIqIdEFTkJdfFZHsbb94U
         /fOU1rRpHCi+6P8yT1F4EsFYIIS5f+n/MoZz3Q3jfnhJiRMZ6GWx/apvEeBVFJd/LTPD
         Ejnr6qLfub8fuphUU9/LgbCFPRPiRDlgguwptKDJ1cXoAjQ/XNS6qagip99aonbht3+m
         7xZysk7I8lUZp4WfVyvbfnBRmZSJVRxQjA7ecRLshXjh46zqSxMRMqUay80mCaoaayu1
         oOAYDJVEgdKiXR3n61Cx2OQnx8nReRJTJ/EpWYKEWKkE+YbPS9FYh8HAlrhnbnx5ikIm
         XJOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fu01MN1R;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id 18si821346wmg.2.2021.01.17.18.32.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 18:32:36 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Received: by mail-ed1-x52c.google.com with SMTP id f1so1751124edr.12
        for <clang-built-linux@googlegroups.com>; Sun, 17 Jan 2021 18:32:36 -0800 (PST)
X-Received: by 2002:aa7:c719:: with SMTP id i25mr13208470edq.197.1610937156426;
 Sun, 17 Jan 2021 18:32:36 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
 <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
 <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
 <CA+icZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A@mail.gmail.com>
 <CA+icZUU-3i7Of71C6XaNmee7xD4y_DeoWJFvUHnMUyBaMN3Ywg@mail.gmail.com>
 <CA+icZUXmn15w=kSq2CZzQD5JggJw_9AEam=Sz13M0KpJ68MWZg@mail.gmail.com>
 <CA+icZUWUPCuLWCo=kuPr9YZ4-NZ3F8Fv1GzDXPbDevyWjaMrJg@mail.gmail.com>
 <CAGG=3QW+ayBzCxOusLyQ0-y5K5C_3hNXjara_pYOcxK8MseN9g@mail.gmail.com>
 <CA+icZUU1HihUFaEHzF69+01+Picg8aq6HAqHupxiRqyDGJ=Mpw@mail.gmail.com> <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com>
In-Reply-To: <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 17 Jan 2021 18:32:25 -0800
Message-ID: <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fu01MN1R;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> [ big snip ]

[More snippage.]

> [ CC Fangrui ]
>
> With the attached...
>
>    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> undefined symbols
>
> ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> For details see ClangBuiltLinux issue #1250 "Unknown symbol
> _GLOBAL_OFFSET_TABLE_ loading kernel modules".
>
Thanks for confirming that this works with the above patch.

> @ Bill Nick Sami Nathan
>
> 1, Can you say something of the impact passing "LLVM_IAS=1" to make?

The integrated assembler and this option are more-or-less orthogonal
to each other. One can still use the GNU assembler with PGO. If you're
having an issue, it may be related to ClangBuiltLinux issue #1250.

> 2. Can you please try Nick's DWARF v5 support patchset v5 and
> CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
>
I know Nick did several tests with PGO. He may have looked into it
already, but we can check.

> I would like to know what the impact of the Clang's Integrated
> Assembler and DWARF v5 are.
>
> I dropped both means...
>
> 1. Do not pass "LLVM_IAS=1" to make.
> 2. Use default DWARF v2 (with Nick's patchset: CONFIG_DEBUG_INFO_DWARF2=y).
>
> ...for a successfull build and boot on bare metal.
>

[Next message]

> On each rebuild I need to pass to make ...?
>
>   LLVM=1 -fprofile-use=vmlinux.profdata
>
Yes.

> Did you try together with passing LLVM_IAS=1 to make?

One of my tests was with the integrated assembler enabled. Are you
finding issues with it?

The problem with using top-of-tree clang is that it's not necessarily
stable. You could try using the clang 11.x release (changing the
"CLANG_VERSION >= 120000" in kernel/pgo/Kconfig/ to "CLANG_VERSION >=
110000").

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWmOA%2ByM2GJF%2BcHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q%40mail.gmail.com.
