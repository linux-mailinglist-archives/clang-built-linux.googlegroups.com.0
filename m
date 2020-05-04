Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYUDYH2QKGQEC5CAG7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6AE1C3FC3
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 18:25:06 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id o26sf71498wmh.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 09:25:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588609506; cv=pass;
        d=google.com; s=arc-20160816;
        b=CzZpVrsF3h/70BRWP8J+cbdOmy0p1WdfRyuSpulXsrXSEakwd30ZCMN3IWf96z1Led
         MkHFA3+kTcl0Fnnl0avyJRlnW4q3ieCJrezBwaQ54iSATy6qfmb8JaP+FTKL6ZNhB2TF
         EuqE/Mqk8smxoHBObryj2X/j76535uiumbPFWInjOOLSJ6KVVdskktbVPMPQAy+rDmN0
         LyNVmUw8I9O5uI5DCXzpka5JCU1dzE82KE7BgdqzZ6djh4RP8MuYRCZECk29Glrk3ht3
         1D6qpsZVmwVb1sbxweuUEn/s3BEe8h0gPfmWvEcGY+vDyhKlmDAHJOecU6ANgmBFzkkD
         umjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=JM9Sq/QOb5gvSku1bli/vqCREe8vH6zPzAk/t13zRnc=;
        b=KGqjVjGPA7fwZ1K7ZMuk+5qmwn5JK4eCDjMA9TGCx98jzMc3OlF1rJZnrfL8q25ceV
         A8kjrbMHfNTzgYnWloumj8wlgjYuR4PGGTu5Id8MXhLZ8A/l7f1uN1iZhlEl5PWqGr33
         a0K2t0/FFnGiFzlEoetchTr/m6ilvTonxcaOOk256mekr1aU8fd3L8DI1OqeF+5G2NWZ
         vUSQCJYbqsF1bRfh1LxhouVTcU8W173D85Zk73drwMPN0sQMsw+AnrYr/3Hpzx3Osde5
         R8+YlLFjkNSfc5XtjTqkgwADhCUWt/1IsYDpibRfqWfFfV5R/us/lvWLSz6q+V2bW+AI
         Pasg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n+Da1qav;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JM9Sq/QOb5gvSku1bli/vqCREe8vH6zPzAk/t13zRnc=;
        b=KYLyPKz2vao1eAFkAWomxJYqvyZc52QHDHlFjA5Ya7crNkDREMiQTR7LtjzB8YAKYT
         HvzzQLsbWXZ1Gh3c/phDgJojJi5/rXe3WwRhPnan++4P69uBzDcOHR+YQYj1tFtR18t5
         AdVPZ6zzQzf+M+daA3kaUQkmVXOld/kb+CPQqoacowxW9fvFkhUqVLxE7xp1wwexxfOj
         hOYQ6qYI5iVSS2f4C8cYZsbTLh7RzOzNYrkigN1d4BSmU1UV1TG9aLDOSTcqPZajm6n3
         xQLDU5oco/pwZveukZB7DUdip4GV0X/h65bYsts96azhl9Uy3iBCCaCRnBW9/eEAh2st
         gDpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JM9Sq/QOb5gvSku1bli/vqCREe8vH6zPzAk/t13zRnc=;
        b=anCmSWsbgxB08zw5trj/dLG+Syk5R2QbeuygZJmYy0lVA1HZWxTbLKOBJsz27LStJH
         8HYioBluLuQlhwpFJlc50Iqp6jwfP2LlkkifwWIHk4X9JcyaTxaRpaNy+k2oPhw1rscN
         UuvI2EnQQDdBFCIHyyyLuhFst6eA4ECPXJbKbpWKjAEESDQ8oTg+zmdiAeuwX645l7po
         ewiASfJxRJcI2byj0teFGCFdVCP5kLyQ9btNyKTeEpOdgUj9SnKgU0zmmP+DE/mMv00Y
         EDnM01FSsHyro43zb56PlsYdFtBBchRkcSKWr3qJ52msGl6EWfICJGB5altwRDw04UOD
         w4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JM9Sq/QOb5gvSku1bli/vqCREe8vH6zPzAk/t13zRnc=;
        b=kkbU1TDKLO3EEeSu1MvwrvySMdyjqiKaMmoGscTV/wVtLhq+F96TB6aTfEPpPdK68a
         YHIVUCqIe8u+28LG9ECvYNijLbSRTv+bEDsOcJQ8pvGS4nWp2Bwbw2X7nrgfkND4UQ3T
         thpTu5J2jEz2dlAegb7YJJY0Dxo5V5NcvtByOGU0eacQy5pxGLTfqY2w9qEizti/2iql
         merRAUXReJSRX/SD26MTSPlEaIKusdpDAGrCQRy2TDdELwcHTUR12y8M4Et85PqZeMut
         gmZK1h625DVNZzzClm4MO593FbE9/CaIinAGyZFH4WBaXZXp5U73z4xyiXJ2V92AmG3O
         k8pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYB+ZcxquiyzKJLY2pHnwpZL3G3uzC/ZDS+khjXu+2ZsIFBkU5j
	CEhQmwK3m8tGEDsjFCKj1Pc=
X-Google-Smtp-Source: APiQypILXqBkzAlKc8O5ElgK8u1J3azFdNPWRqz5FCMH7Tpdf1J7YuxkH1xdq0NovJBiNBigc2cHLg==
X-Received: by 2002:adf:e812:: with SMTP id o18mr14508203wrm.185.1588609506657;
        Mon, 04 May 2020 09:25:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4088:: with SMTP id n130ls232563wma.2.canary-gmail; Mon,
 04 May 2020 09:25:06 -0700 (PDT)
X-Received: by 2002:a7b:c250:: with SMTP id b16mr16293176wmj.100.1588609506000;
        Mon, 04 May 2020 09:25:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588609505; cv=none;
        d=google.com; s=arc-20160816;
        b=p2XObFmlGSuQYJAh6no4hyFx6U8XHl7JHaluO4eGUTO9jWefL4kX0NzlEiBVPib6IP
         TCsoPzCsqanGbWFTfyeaFG7Tt8Xuzm3J43Lsx5IKztQNBcSiojL6fV+cJodT6ewS5NdB
         +G9GkdLzFBB3jBk1BGClQ7A6rtr+qxnkWW4S20F963rXUJlKTNCmZnmouvExFEu0o7BY
         HDYomvJvAO0XG9yIMAvcxZcsni/H1ywRi//pk3lY3u+5RDuuKXruSU+Tei4fqMyCiwTk
         oeIwo3tRkqaAmN7ISTaRodWM6Hvixuy+t8+qbygvNZl2O6ujNwfcPn4OQ+Fy5iEBz70x
         Oxqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OXI+BTNRpGZudxYaIqga7shYaaL0hbXwRkiRxDAedGE=;
        b=DLCka83wttKLc2arOOarOg5fnQ0iy84n/ZdjKWYUZ316rn1BsAnogDZjM7ABSBwszA
         uOWabhjQZy2IYoYGOzNIyZr+khByfaz4gPeImWCNJoXOEqtdY7EqI/q0GZtSuX5PWNKU
         8td8RHXdLYw4h0fmbjlXigoLxsYerOePCJWPoLSdgK/00iBTljgZf31LYMfMp5/nT8O8
         baui4js/txV1Qjn+C9ALOid4nnJL3mI8Xt9h4att1PwtTF9FIH1Z75Haxx7ZxjqcWIf3
         xI9ED+aQ1Qp3CQmvK6a2Y867Z1S1unUkQ2JhlnV2Kqclf08+RVBghWfLC6uF/rEvlVdp
         URWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n+Da1qav;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 90si239800wrr.1.2020.05.04.09.25.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 09:25:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id i10so21681804wrv.10
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 09:25:05 -0700 (PDT)
X-Received: by 2002:adf:d0ce:: with SMTP id z14mr21441898wrh.179.1588609505573;
 Mon, 04 May 2020 09:25:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
In-Reply-To: <20200504031340.7103-1-nick.desaulniers@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 4 May 2020 18:25:00 +0200
Message-ID: <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Krzysztof Kozlowski <krzk@kernel.org>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=n+Da1qav;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
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

On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
<nick.desaulniers@gmail.com> wrote:
>
> As debug information gets larger and larger, it helps significantly save
> the size of vmlinux images to compress the information in the debug
> information sections. Note: this debug info is typically split off from
> the final compressed kernel image, which is why vmlinux is what's used
> in conjunction with GDB. Minimizing the debug info size should have no
> impact on boot times, or final compressed kernel image size.
>
> All of the debug sections will have a `C` flag set.
> $ readelf -S <object file>
>
> $ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
>     vmlinux.gcc75.uncompressed.dwarf4
>
>     FILE SIZE        VM SIZE
>  --------------  --------------
>   +0.0%     +18  [ = ]       0    [Unmapped]
>  -73.3%  -114Ki  [ = ]       0    .debug_aranges
>  -76.2% -2.01Mi  [ = ]       0    .debug_frame
>  -73.6% -2.89Mi  [ = ]       0    .debug_str
>  -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
>  -82.9% -4.88Mi  [ = ]       0    .debug_ranges
>  -70.5% -9.04Mi  [ = ]       0    .debug_line
>  -79.3% -10.9Mi  [ = ]       0    .debug_loc
>  -39.5% -88.6Mi  [ = ]       0    .debug_info
>  -18.2%  -123Mi  [ = ]       0    TOTAL
>
> $ bloaty vmlinux.clang11.compressed.dwarf4 -- \
>     vmlinux.clang11.uncompressed.dwarf4
>
>     FILE SIZE        VM SIZE
>  --------------  --------------
>   +0.0%     +23  [ = ]       0    [Unmapped]
>  -65.6%    -871  [ = ]       0    .debug_aranges
>  -77.4% -1.84Mi  [ = ]       0    .debug_frame
>  -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
>  -73.1% -2.43Mi  [ = ]       0    .debug_str
>  -84.8% -3.07Mi  [ = ]       0    .debug_ranges
>  -65.9% -8.62Mi  [ = ]       0    .debug_line
>  -86.2% -40.0Mi  [ = ]       0    .debug_loc
>  -42.0% -64.1Mi  [ = ]       0    .debug_info
>  -22.1%  -122Mi  [ = ]       0    TOTAL
>

Hi Nick,

thanks for the patch.

I have slightly modified it to adapt to Linux v5.7-rc4 (what was your base?).

Which linker did you use and has it an impact if you switch from
ld.bfd to ld.lld?

I tried a first normal run and in a 2nd one with
CONFIG_DEBUG_INFO_COMPRESSED=y both with clang-10 and ld.lld-10.

My numbers (sizes in MiB):

[ diffconfig ]

$ scripts/diffconfig /boot/config-5.7.0-rc4-1-amd64-clang
/boot/config-5.7.0-rc4-2-amd64-clang
 BUILD_SALT "5.7.0-rc4-1-amd64-clang" -> "5.7.0-rc4-2-amd64-clang"
+DEBUG_INFO_COMPRESSED y

[ compiler and linker ]

$ clang-10 -v
ClangBuiltLinux clang version 10.0.1
(https://github.com/llvm/llvm-project
92d5c1be9ee93850c0a8903f05f36a23ee835dc2)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /home/dileks/src/llvm-toolchain/install/bin
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/9
Selected GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
Candidate multilib: .;@m64
Candidate multilib: 32;@m32
Candidate multilib: x32;@mx32
Selected multilib: .;@m64

$ ld.lld-10 -v
LLD 10.0.1 (https://github.com/llvm/llvm-project
92d5c1be9ee93850c0a8903f05f36a23ee835dc2) (compatible with GNU
linkers)

[ sizes vmlinux ]

$ du -m 5.7.0-rc4-*/vmlinux*
409     5.7.0-rc4-1-amd64-clang/vmlinux
7       5.7.0-rc4-1-amd64-clang/vmlinux.compressed
404     5.7.0-rc4-1-amd64-clang/vmlinux.o
324     5.7.0-rc4-2-amd64-clang/vmlinux
7       5.7.0-rc4-2-amd64-clang/vmlinux.compressed
299     5.7.0-rc4-2-amd64-clang/vmlinux.o

[ readelf (.debug_info as example) ]

$ readelf -S vmlinux.o
  [33] .debug_info       PROGBITS         0000000000000000  01d6a5e8
       0000000006be1ee6  0000000000000000           0     0     1

$ readelf -S vmlinux.o
  [33] .debug_info       PROGBITS         0000000000000000  01749f18
       0000000002ef04d2  0000000000000000   C       0     0     1 <---
XXX: "C (compressed)" Flag

Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  l (large), p (processor specific)

[ sizes linux-image debian packages ]

$ du -m 5.7.0-rc4-*/linux-image*.deb
47      5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
424     5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
47      5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
771     5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb

[ sizes linux-git dir (compilation finished ]

5.7.0-rc4-1-amd64-clang: 17963   /home/dileks/src/linux-kernel/linux
5.7.0-rc4-2-amd64-clang: 14328   /home/dileks/src/linux-kernel/linux

[ xz compressed linux-image-dbg packages ]

$ file linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb:
Debian binary package (format 2.0), with control.tar.xz, data
compression xz
$ file linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb:
Debian binary package (format 2.0), with control.tar.xz, data
compression xz

[ file-lists ]

$ dpkg --contents
linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
| wc -l
4395
$ dpkg --contents
linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
| wc -l
4395

[ file-lists vmlinux ]

$ dpkg --contents
linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
| grep vmlinux
-rwxr-xr-x root/root 428588312 2020-05-04 06:15
./usr/lib/debug/lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
lrwxrwxrwx root/root         0 2020-05-04 06:15
./usr/lib/debug/boot/vmlinux-5.7.0-rc4-1-amd64-clang ->
../lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
lrwxrwxrwx root/root         0 2020-05-04 06:15
./usr/lib/debug/vmlinux-5.7.0-rc4-1-amd64-clang ->
lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux

$ dpkg --contents
linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
| grep vmlinux
-rwxr-xr-x root/root 339341456 2020-05-04 12:24
./usr/lib/debug/lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
lrwxrwxrwx root/root         0 2020-05-04 12:24
./usr/lib/debug/boot/vmlinux-5.7.0-rc4-2-amd64-clang ->
../lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
lrwxrwxrwx root/root         0 2020-05-04 12:24
./usr/lib/debug/vmlinux-5.7.0-rc4-2-amd64-clang ->
lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux

[ conclusion ]

As you can see there is a size-reduction in case of vmlinux/vmlinux.o
(debug) files...
...and my linux-git directory in total is smaller: 17963M vs. 14328M.

But the resulting linux-image-dbg file is much fatter: 424M vs. 711M.
XZ-compressing the gz/zlib-compressed vmlinux (debug) file results in
a fatter linux-image-dbg package.

For a usage of vmlinux (debug) in a VM scenario this might be nice but
seen from a debian repository perspective not.

For the sake of completeness:  I have just installed and booted the
"normal" linux-image debian package - not the debug packages.

Thanks.

Regards,
- Sedat -

> Suggested-by: David Blaikie <blakie@google.com>
> Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> ---
>  Makefile          | 5 +++++
>  lib/Kconfig.debug | 9 +++++++++
>  2 files changed, 14 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index 981eb902384b..313a054e5dc6 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -825,6 +825,11 @@ ifdef CONFIG_DEBUG_INFO_REDUCED
>  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
>                    $(call cc-option,-fno-var-tracking)
>  endif
> +
> +ifdef CONFIG_DEBUG_INFO_COMPRESSED
> +DEBUG_CFLAGS   += -gz=zlib
> +KBUILD_LDFLAGS += --compress-debug-sections=zlib
> +endif
>  endif
>
>  KBUILD_CFLAGS += $(DEBUG_CFLAGS)
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index f6f9a039f736..1f4a47ba6c1b 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -213,6 +213,15 @@ config DEBUG_INFO_REDUCED
>           DEBUG_INFO build and compile times are reduced too.
>           Only works with newer gcc versions.
>
> +config DEBUG_INFO_COMPRESSED
> +       bool "Compressed debugging information"
> +       depends on DEBUG_INFO
> +       depends on $(cc-option,-gz=zlib)
> +       depends on $(ld-option,--compress-debug-sections=zlib)
> +       help
> +         Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
> +         5.0+.
> +
>  config DEBUG_INFO_SPLIT
>         bool "Produce split debuginfo in .dwo files"
>         depends on DEBUG_INFO
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504031340.7103-1-nick.desaulniers%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw%40mail.gmail.com.
