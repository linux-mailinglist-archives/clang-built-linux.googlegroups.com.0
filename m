Return-Path: <clang-built-linux+bncBCS7XUWOUULBBL7PYL2QKGQEZNQL5HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6371D1C4B26
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 02:47:44 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id c89sf600701qva.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 17:47:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588639663; cv=pass;
        d=google.com; s=arc-20160816;
        b=V005UvRmvlGHagHRtSeOrmeqn07BYxfgyfESvrYi1IvX1+lRTqwXQhB/JldOcQPnrw
         wHT+VnQBVMr24wRU57aQP1FdGhOrg+z921ZUjieBhVohY3lFnfSIzyeKymXOxwxh1Sr1
         m+/rJFEGdpOAo1dpXr+yrg4OYpNhoqOPrEtTekZuhq83wXlFfves7wqpY/n9Cmk+3nrK
         KiJmwJctf06cHfAirVcUO58xuvWbiFRm4yJ/5krsfsAq6/rUwtWwxsA/bFt52DNQY92n
         gNN3UHjpy21FeYzjvorhyWrJizLF1L80SglvPWI8rbPrJjPXnYx6FduesSj5ZRb4cJtX
         lvSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=WgDWQDtfBHlwYLfsLoUWdcct0mUezCm3RbJLb1Q8jiQ=;
        b=ece8uK6Q78DbeU8AAwlSIROxCQaYWKRqnW2scoUbw56dmpb7SiL4I7uy8ujWiPhmbP
         0zcjLshtM8mI6JFyw8N63xv6lWVhRBiOrwDoVvmFaO2K3dmgIysrPCvknR4sTqTkWX5s
         838nujJdLnr+k0/VLCBuEOljlCrPK83dQo70FxLucUP75J0LVT9v9xpTIJghSMLp9duf
         Uvk0E7Mjtr5juHs8OBzUpFdwHNm2StAR5mq+vUWEU3Eky0qXzGlGzEerv8aDc0ukOFxP
         CwqhR2nHPO/oXLRZiCDTuO7P5b8R5FLAHNCnWUrkXHbCh8Ml345a5o8e2+thu2Hpl4Ys
         pIIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KJUmanRl;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WgDWQDtfBHlwYLfsLoUWdcct0mUezCm3RbJLb1Q8jiQ=;
        b=qXiOEIxTCWuVkIM1oZUu4fMLBOZz89ykpVoLCkd62wdBxSR0mrUwbrJTVcxixcftCR
         tRd3we2dCfxXxQ9tGA9xwIiBziesZaPLfUkyW7Y7yyR0xNkBaiNBcb9RjyF9jCNnw7Oo
         VOnLeTsylwvTg+48bCqJCUnRmQnNn+iiM5HXK5/VWXFNRUMTWgBbt/waU48WvnXC8bGp
         IZiIw5JeaZcaHMGTN3LeyziWqqCkox4tcpDnnoikn8p3zXINIg1jYPNddmHPysI9+JAq
         PXNp6Tk1iDhOPpwisDrgi64m7X6lXu1iiJfXnrO7J9PlAodMMJZQl7Aa563WnQoJwyic
         py5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WgDWQDtfBHlwYLfsLoUWdcct0mUezCm3RbJLb1Q8jiQ=;
        b=YO742ntxCpn6p3m4t+fWKfR51Qp4MexVbeaV8PCQCzXNueR1xsG5vBaLHb82YFO/L+
         27mmffI2lLAnoeHoSiZ3r5uXa/eV6qEQknxE4GULxa6+zX2cOn7ZLT6j1kgNanZnsxEe
         K+sWvHsUsgFMo1x5YJaEj44arO2c/+6WETzYbHgIBcOxx7C1xroOibtul9Kwzvlx+pKg
         wXECMKrAqnRFEy335WjOl5gQgOqI3trY5CEzUgNLkfKJi1BJ/5KNQFelWXcjZKlvPTN/
         1XWWYYDpGzMqxjWTLP3k9D/uaBb3j2ynHSRLEEq/xoZNynOplGQLcUD3H72fIbN0MwJP
         v03Q==
X-Gm-Message-State: AGi0PubG51LgOahJqjSITlfzbHirWbok++0kMb3n8amS1SfOZBgi0Pq/
	WCSvczT8+nvXi5NSF6nl+jA=
X-Google-Smtp-Source: APiQypIY1+5ZmtZC//5iulo6hZ+pxyrbj/AZI6vMjirB3/NX55fS6s12gHmDN0/9fYzYRHxwCgEgVQ==
X-Received: by 2002:a37:49c6:: with SMTP id w189mr1062871qka.444.1588639663301;
        Mon, 04 May 2020 17:47:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:891:: with SMTP id v17ls562240qth.8.gmail; Mon, 04 May
 2020 17:47:42 -0700 (PDT)
X-Received: by 2002:ac8:19fd:: with SMTP id s58mr129511qtk.354.1588639662791;
        Mon, 04 May 2020 17:47:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588639662; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3wac00QbWQta+0OxttEcjhPoY1x925A8l3WQ5qkrrWq3F1fsVM4DGBhpUvbHTK2W/
         X1iLFI5PGdsm/SnlIhkc6WWYcbRWZ1l4nyiNBgc8eZuGrEB+lA5WJB442E3RPkMsE1ad
         esYrugcHIm7BqbSUQJc8I5O+qB5Y4Rhr25pWu7/j1r2gYqueXmphvn5C7WtrCG/hxwei
         a6eZx9GsSViN32wDxmNY5I6Q0zxTj8et/yfX3TEJWvN/HPMsz3ODfC81yJM4ZJe3/1cw
         pwSDRSc3MhwG0clJ5wMcHiZTQtcCbyXPNM3k/fzH/oKRHhsFYaNuRYI6QCafQrkM/wOu
         srmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7Hv8FYkIIgHaMpc0l6U71Q1YcuTc0hBo/riFkGviInU=;
        b=E0aRS/9yPsgfHZGTQPDgKR+DAzyY+PLbiNa+FBS7xRPyz99J4OHMpEJD+4FvqD0FdV
         87z95LYmeThEf5tnk2Xr8dMO0ZQtKZ/QWMBealcjs35ZFSzAZFa1Rls8AtmQKOc10XA3
         Pzi1DWJWyi6ShWMYkgiqGOqyvZt5Ohz8zj5UKppxDJOaOEyS05Al2DOL6T+oT5d6jRwO
         ej6LnvvryelCeFTdtXQd36Xw38vVKQVHHiQcCEgew86q0z27lkCV2Gyn2tEMc10+M0PA
         /mtn4p5PDyW8oSWpSohXM33IDCXvCDM5JjLWNf3bTIlQcyYMnBEZJ9JqXtKEFVvQKYKP
         Tqfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KJUmanRl;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id e7si66756qtc.5.2020.05.04.17.47.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 17:47:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id s18so225825pgl.12
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 17:47:42 -0700 (PDT)
X-Received: by 2002:a63:5a41:: with SMTP id k1mr861073pgm.424.1588639661583;
        Mon, 04 May 2020 17:47:41 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id i8sm269103pfq.126.2020.05.04.17.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 17:47:40 -0700 (PDT)
Date: Mon, 4 May 2020 17:47:38 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sedat Dilek <sedat.dilek@gmail.com>,
	Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changbin Du <changbin.du@intel.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Krzysztof Kozlowski <krzk@kernel.org>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
Message-ID: <20200505004738.ew2lcp27c2n4jqia@google.com>
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KJUmanRl;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-05-04, Sedat Dilek wrote:
>On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
><nick.desaulniers@gmail.com> wrote:
>>
>> As debug information gets larger and larger, it helps significantly save
>> the size of vmlinux images to compress the information in the debug
>> information sections. Note: this debug info is typically split off from
>> the final compressed kernel image, which is why vmlinux is what's used
>> in conjunction with GDB. Minimizing the debug info size should have no
>> impact on boot times, or final compressed kernel image size.
>>
>> All of the debug sections will have a `C` flag set.
>> $ readelf -S <object file>
>>
>> $ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
>>     vmlinux.gcc75.uncompressed.dwarf4
>>
>>     FILE SIZE        VM SIZE
>>  --------------  --------------
>>   +0.0%     +18  [ = ]       0    [Unmapped]
>>  -73.3%  -114Ki  [ = ]       0    .debug_aranges
>>  -76.2% -2.01Mi  [ = ]       0    .debug_frame
>>  -73.6% -2.89Mi  [ = ]       0    .debug_str
>>  -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
>>  -82.9% -4.88Mi  [ = ]       0    .debug_ranges
>>  -70.5% -9.04Mi  [ = ]       0    .debug_line
>>  -79.3% -10.9Mi  [ = ]       0    .debug_loc
>>  -39.5% -88.6Mi  [ = ]       0    .debug_info
>>  -18.2%  -123Mi  [ = ]       0    TOTAL
>>
>> $ bloaty vmlinux.clang11.compressed.dwarf4 -- \
>>     vmlinux.clang11.uncompressed.dwarf4
>>
>>     FILE SIZE        VM SIZE
>>  --------------  --------------
>>   +0.0%     +23  [ = ]       0    [Unmapped]
>>  -65.6%    -871  [ = ]       0    .debug_aranges
>>  -77.4% -1.84Mi  [ = ]       0    .debug_frame
>>  -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
>>  -73.1% -2.43Mi  [ = ]       0    .debug_str
>>  -84.8% -3.07Mi  [ = ]       0    .debug_ranges
>>  -65.9% -8.62Mi  [ = ]       0    .debug_line
>>  -86.2% -40.0Mi  [ = ]       0    .debug_loc
>>  -42.0% -64.1Mi  [ = ]       0    .debug_info
>>  -22.1%  -122Mi  [ = ]       0    TOTAL
>>
>
>Hi Nick,
>
>thanks for the patch.
>
>I have slightly modified it to adapt to Linux v5.7-rc4 (what was your base?).
>
>Which linker did you use and has it an impact if you switch from
>ld.bfd to ld.lld?

lld has supported the linker option --compress-debug-sections=zlib since
about 5.0.0 (https://reviews.llvm.org/D31941)

>I tried a first normal run and in a 2nd one with
>CONFIG_DEBUG_INFO_COMPRESSED=y both with clang-10 and ld.lld-10.
>
>My numbers (sizes in MiB):
>
>[ diffconfig ]
>
>$ scripts/diffconfig /boot/config-5.7.0-rc4-1-amd64-clang
>/boot/config-5.7.0-rc4-2-amd64-clang
> BUILD_SALT "5.7.0-rc4-1-amd64-clang" -> "5.7.0-rc4-2-amd64-clang"
>+DEBUG_INFO_COMPRESSED y
>
>[ compiler and linker ]
>
>$ clang-10 -v
>ClangBuiltLinux clang version 10.0.1
>(https://github.com/llvm/llvm-project
>92d5c1be9ee93850c0a8903f05f36a23ee835dc2)
>Target: x86_64-unknown-linux-gnu
>Thread model: posix
>InstalledDir: /home/dileks/src/llvm-toolchain/install/bin
>Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
>Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
>Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/9
>Selected GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
>Candidate multilib: .;@m64
>Candidate multilib: 32;@m32
>Candidate multilib: x32;@mx32
>Selected multilib: .;@m64
>
>$ ld.lld-10 -v
>LLD 10.0.1 (https://github.com/llvm/llvm-project
>92d5c1be9ee93850c0a8903f05f36a23ee835dc2) (compatible with GNU
>linkers)
>
>[ sizes vmlinux ]
>
>$ du -m 5.7.0-rc4-*/vmlinux*
>409     5.7.0-rc4-1-amd64-clang/vmlinux
>7       5.7.0-rc4-1-amd64-clang/vmlinux.compressed
>404     5.7.0-rc4-1-amd64-clang/vmlinux.o
>324     5.7.0-rc4-2-amd64-clang/vmlinux
>7       5.7.0-rc4-2-amd64-clang/vmlinux.compressed
>299     5.7.0-rc4-2-amd64-clang/vmlinux.o
>
>[ readelf (.debug_info as example) ]
>
>$ readelf -S vmlinux.o
>  [33] .debug_info       PROGBITS         0000000000000000  01d6a5e8
>       0000000006be1ee6  0000000000000000           0     0     1
>
>$ readelf -S vmlinux.o
>  [33] .debug_info       PROGBITS         0000000000000000  01749f18
>       0000000002ef04d2  0000000000000000   C       0     0     1 <---
>XXX: "C (compressed)" Flag
>
>Key to Flags:
>  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
>  L (link order), O (extra OS processing required), G (group), T (TLS),
>  C (compressed), x (unknown), o (OS specific), E (exclude),
>  l (large), p (processor specific)
>
>[ sizes linux-image debian packages ]
>
>$ du -m 5.7.0-rc4-*/linux-image*.deb
>47      5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
>424     5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
>47      5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
>771     5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
>
>[ sizes linux-git dir (compilation finished ]
>
>5.7.0-rc4-1-amd64-clang: 17963   /home/dileks/src/linux-kernel/linux
>5.7.0-rc4-2-amd64-clang: 14328   /home/dileks/src/linux-kernel/linux
>
>[ xz compressed linux-image-dbg packages ]
>
>$ file linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
>linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb:
>Debian binary package (format 2.0), with control.tar.xz, data
>compression xz
>$ file linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
>linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb:
>Debian binary package (format 2.0), with control.tar.xz, data
>compression xz
>
>[ file-lists ]
>
>$ dpkg --contents
>linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
>| wc -l
>4395
>$ dpkg --contents
>linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
>| wc -l
>4395
>
>[ file-lists vmlinux ]
>
>$ dpkg --contents
>linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
>| grep vmlinux
>-rwxr-xr-x root/root 428588312 2020-05-04 06:15
>./usr/lib/debug/lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
>lrwxrwxrwx root/root         0 2020-05-04 06:15
>./usr/lib/debug/boot/vmlinux-5.7.0-rc4-1-amd64-clang ->
>../lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
>lrwxrwxrwx root/root         0 2020-05-04 06:15
>./usr/lib/debug/vmlinux-5.7.0-rc4-1-amd64-clang ->
>lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
>
>$ dpkg --contents
>linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
>| grep vmlinux
>-rwxr-xr-x root/root 339341456 2020-05-04 12:24
>./usr/lib/debug/lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
>lrwxrwxrwx root/root         0 2020-05-04 12:24
>./usr/lib/debug/boot/vmlinux-5.7.0-rc4-2-amd64-clang ->
>../lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
>lrwxrwxrwx root/root         0 2020-05-04 12:24
>./usr/lib/debug/vmlinux-5.7.0-rc4-2-amd64-clang ->
>lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
>
>[ conclusion ]
>
>As you can see there is a size-reduction in case of vmlinux/vmlinux.o
>(debug) files...
>...and my linux-git directory in total is smaller: 17963M vs. 14328M.
>
>But the resulting linux-image-dbg file is much fatter: 424M vs. 711M.
>XZ-compressing the gz/zlib-compressed vmlinux (debug) file results in
>a fatter linux-image-dbg package.
>
>For a usage of vmlinux (debug) in a VM scenario this might be nice but
>seen from a debian repository perspective not.
>
>For the sake of completeness:  I have just installed and booted the
>"normal" linux-image debian package - not the debug packages.
>
>Thanks.
>
>Regards,
>- Sedat -
>
>> Suggested-by: David Blaikie <blakie@google.com>
>> Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
>> ---
>>  Makefile          | 5 +++++
>>  lib/Kconfig.debug | 9 +++++++++
>>  2 files changed, 14 insertions(+)
>>
>> diff --git a/Makefile b/Makefile
>> index 981eb902384b..313a054e5dc6 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -825,6 +825,11 @@ ifdef CONFIG_DEBUG_INFO_REDUCED
>>  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
>>                    $(call cc-option,-fno-var-tracking)
>>  endif
>> +
>> +ifdef CONFIG_DEBUG_INFO_COMPRESSED
>> +DEBUG_CFLAGS   += -gz=zlib
>> +KBUILD_LDFLAGS += --compress-debug-sections=zlib
>> +endif
>>  endif
>>
>>  KBUILD_CFLAGS += $(DEBUG_CFLAGS)
>> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>> index f6f9a039f736..1f4a47ba6c1b 100644
>> --- a/lib/Kconfig.debug
>> +++ b/lib/Kconfig.debug
>> @@ -213,6 +213,15 @@ config DEBUG_INFO_REDUCED
>>           DEBUG_INFO build and compile times are reduced too.
>>           Only works with newer gcc versions.
>>
>> +config DEBUG_INFO_COMPRESSED
>> +       bool "Compressed debugging information"
>> +       depends on DEBUG_INFO
>> +       depends on $(cc-option,-gz=zlib)
>> +       depends on $(ld-option,--compress-debug-sections=zlib)
>> +       help
>> +         Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
>> +         5.0+.
>> +

linker option --compress-debug-sections=zlib require binutils >= 2.26 (ld-option)
Assembler option --compress-debug-sections=zlib also require binutils >= 2.26 (cc-option,-gz=zlib)

>>  config DEBUG_INFO_SPLIT
>>         bool "Produce split debuginfo in .dwo files"
>>         depends on DEBUG_INFO
>> --
>> 2.17.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504031340.7103-1-nick.desaulniers%40gmail.com.
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505004738.ew2lcp27c2n4jqia%40google.com.
