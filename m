Return-Path: <clang-built-linux+bncBAABBEWYS73AKGQESLFWDXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3B31DC55C
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:48:52 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id v203sf2609940oie.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 19:48:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590029331; cv=pass;
        d=google.com; s=arc-20160816;
        b=B8NJLyOcz2lIG9/BjS1jCxvXZi+0bP05LOBnYGdkImj+XZqzT7xNBbXc/EWNAh11vx
         9SGiUjxiEvsZN7v8Lr85eNZdA5qNZjvZAeHbKrenZu/iMLjyAfO7jSHyL8XVPiWfxk5U
         6lOoJqfhkTTgX/7GVtt43Zz1jg2pMjyWJ+vJ120GE4RMUbZ8BsnCIEumF75BENCGtXlk
         RhzaBUU/Fapl7m3K5bPWXs3WCmt2e9LZ9XgX7fUzqSEvVF3RpCxWmZoknA6hfZMdMGne
         /7m54npiGcY9w5qFQ4YQnzDsj6eUYgdEaLzjFH4pLpYK17jwekiQ7HW9PyNKIRPhO9g0
         /jBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=o8+oaVaxPkCiWwAfAoSgwoz62rrA0FqW/cVYPr0v3eM=;
        b=cc/A6j9HIhtgIWuLlQuamlT000vluDgeifEZvcoiakFpjxKjgWOVe/xL6lmVdLM8Z+
         ueWJYzri21f1HBYbzbiaYUJ0YDouda50IKeV+zHA8nW0UBeDbd9yhyDKku//5lTA9D3W
         6Bgv877OU+4lqpZ3JPxbdMqQsUdLTbWsmkwAo1xp3P32l7uKjMRhfG6Ouf908oH0ibJd
         epq97lbimkchtl6LaRdX8jNYlO0f28S+yc0V58qTs3tp0wSqEahmP3uhuSGOHNua2aVE
         YtTxdlcX9q+GGq0q71xItT/DCKQCyGGhWZWwbGUv+mIyb+8QMVu0SX6I+P9Er24pF9kl
         O1BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=S+RecnEu;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o8+oaVaxPkCiWwAfAoSgwoz62rrA0FqW/cVYPr0v3eM=;
        b=EVlB8K5sScCNDSTDE2HVfmVy6GOCGepSbfm3qImd2uZICKwDlCwRgKkTH3E1Pmy0LW
         0xFyG0ZidoxxhIBUnV65F8vfeAbqzCK9vHMBPRtuEe5C7co5tF7mZhERgqvQrbRX7Hvx
         KElvMB5mkj7WZOj5273Y7T55QlBLxaz6zh72/7GPH3TJjuEt69vslRa3JDBdyLrXW8LD
         fPtc6Nul/mrfaEPL/dMPu1J2VZhnd4bjraubKf5w5TsV0TRKYk2TUpKR38/tL0ogTC/J
         O9vor/uDK3On7zBynWJRD3qGCnShBbJe/Bnq5gGqg6odLwHiHJreZDnptt7Rhz+xHT5S
         DHTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o8+oaVaxPkCiWwAfAoSgwoz62rrA0FqW/cVYPr0v3eM=;
        b=m9qtwUiDNTt5HW+pBVG1sbwbMU6iQgamQHGxvDFQzhIhDpP+x6Anbca49Nlcu/8Iwr
         UG7vlVqiA2rPj30GPaiAYuIu2rNeK72s6ZRmoHNIpsTd74zzxAdTdN48wlO17SZaNn4f
         yeOaisWnxPSLieZt1PZj6YvmK6elcl3BINHJvUqqXu3kVZ7+hroG6LH6/OyUlqxfB9t4
         Io4cl2PYasSIMih3VJkhTardKOvrtAsl1MIOF/WK3eDcyBhBIFSm++Kx/mCFTl3LPoRw
         jzKn5zddzgFnKmNzuNwEeQFlyJ85RG4ZxNwrNxuWOKhUb8Nzhop3TUhLso6lpZmpnA8A
         IBlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PqFcbilcSg7tUoyXNomd0w3IzJcDC3IapOXdAdh0sCNjZv2dv
	ynIDsq4vk5zURdQR7FFCZDE=
X-Google-Smtp-Source: ABdhPJyMjtgfwiwW2hkc5l4Js3Wa5nxY/BjZqSl1Ktm+9F7g/G7nZsrbwVoT0oPuooHdLHlnYqOY7w==
X-Received: by 2002:aca:f185:: with SMTP id p127mr3226984oih.120.1590029330947;
        Wed, 20 May 2020 19:48:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9d0c:: with SMTP id w12ls46234ooj.2.gmail; Wed, 20 May
 2020 19:48:50 -0700 (PDT)
X-Received: by 2002:a4a:2511:: with SMTP id g17mr5692557ooa.24.1590029330585;
        Wed, 20 May 2020 19:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590029330; cv=none;
        d=google.com; s=arc-20160816;
        b=DfLwXMrxylsCkjpylJ9XaVhh+Q6esrK3DF6e7PA8ihR20Re0V5knpDmKjk6ifyQIUM
         uCnYGbOBraYvyBntnSVbbm2aXI0sIe/ZkzD0acwMKibvkOZ4JM2RK8C4vHTHZVE4buIc
         5kYq0dDpLISqXITttiGk06GcQEgNBhI2bseM+eAhqLDnqQMKdUe9JNnpVeGIiFAvP7SR
         k96o2UuzoMg5NSxrtz2Pa8Z138tIz3zV6B1BhDOkke3Ozg/0EM2YN6UMPljPHr+/Cn56
         NR9rOBDxYB5VUiflhHsKaCJEhQmV1pxks/D401S+n78LhS4JISkEvmf84zvY+Ezt30Rj
         ddJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=+1pPHahrtwrCs5XxeEk28u3oetsrJ5xJvorudmks/Ak=;
        b=mXLhbDhm1gbGQk86JuiI8xVk/Dg/GQy0b9fhLGgGyDKnJacPY0nIZFYY0fw0gyT3+Y
         V+Izz+No1+2dtMLP3jS6Hn0NawYDlwuJuxJJ2VzA7cHV63EDbd3CuEgrUjRK1ErQZYSQ
         6eLENbGa77QkgWnv/2ij0VJFHwEJB3q2CFHvs3bjmcBPat72zCqlC+6SAM9D7PRUdWwe
         jwgoxQ6X3iYN24X+eLMEMQaX4Yr2wVDTWIu1q7ydJF8E5wU0RGtxMd/lNSz7NFCsoyi9
         Q/9L3KNxlj3/i27DUwyNQzEgnLKm1oNUjun3F1lCml4EW1ceaR73d/QhpMip89BUHldV
         1LrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=S+RecnEu;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id e20si352088oie.4.2020.05.20.19.48.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 19:48:50 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 04L2maUL010924
	for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 11:48:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 04L2maUL010924
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id a37so2096708uad.0
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 19:48:36 -0700 (PDT)
X-Received: by 2002:ab0:7298:: with SMTP id w24mr5868586uao.95.1590029315782;
 Wed, 20 May 2020 19:48:35 -0700 (PDT)
MIME-Version: 1.0
References: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com> <20200520193637.6015-1-ndesaulniers@google.com>
In-Reply-To: <20200520193637.6015-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 21 May 2020 11:47:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS_PMz9r3e1UcuM+r18JC2KeM2RqGOms1u3kVzN_N1MmA@mail.gmail.com>
Message-ID: <CAK7LNAS_PMz9r3e1UcuM+r18JC2KeM2RqGOms1u3kVzN_N1MmA@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: support compressed debug info
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>,
        Nick Clifton <nickc@redhat.com>, David Blaikie <blakie@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Changbin Du <changbin.du@intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Anshuman Khandual <anshuman.khandual@arm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=S+RecnEu;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, May 21, 2020 at 4:36 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
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
> For x86_64 defconfig + LLVM=1 (before):
> Elapsed (wall clock) time (h:mm:ss or m:ss): 3:22.03
> Maximum resident set size (kbytes): 43856
>
> For x86_64 defconfig + LLVM=1 (after):
> Elapsed (wall clock) time (h:mm:ss or m:ss): 3:32.52
> Maximum resident set size (kbytes): 1566776
>
> Suggested-by: David Blaikie <blakie@google.com>
> Suggested-by: Fangrui Song <maskray@google.com>


Suggested-by -> Reviewed-by

https://patchwork.kernel.org/patch/11524939/#23349551



> Suggested-by: Nick Clifton <nickc@redhat.com>


I do not know where this tag came from.

Nick Clifton taught us the version rule of binutils,but did not state
anything about this patch itself.

https://patchwork.kernel.org/patch/11524939/#23355175


> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>

I do not see the source of this tag, either...



> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---

 snip

> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -225,6 +225,21 @@ config DEBUG_INFO_REDUCED
>           DEBUG_INFO build and compile times are reduced too.
>           Only works with newer gcc versions.
>
> +config DEBUG_INFO_COMPRESSED
> +       bool "Compressed debugging information"
> +       depends on DEBUG_INFO
> +       depends on $(cc-option,-gz=zlib)
> +       depends on $(as-option,-Wa,--compress-debug-sections=zlib)

This does not work. (always false)
You cannot enable this option.

The comma between -Wa and --compress-debug-sections=zlib
is eaten by Kconfig parser because commas are delimiters
of function parameters.


Please write like this.

    depends on $(as-option,-Wa$(comma)--compress-debug-sections=zlib)





> +       depends on $(ld-option,--compress-debug-sections=zlib)
> +       help
> +         Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
> +         5.0+, binutils 2.26+, and zlib.
> +
> +         Users of dpkg-deb via scripts/package/builddeb may
> +         wish to set the $KDEB_COMPRESS env var to "none" to avoid recompressing
> +         the debug info again with a different compression scheme, which can
> +         result in larger binaries.

No. This is not correct.

CONFIG_DEBUG_INFO_COMPRESSED compresses the only debug info part.
The other parts still get by benefit from the default KDEB_COMPRESS=xz.


The numbers are here:


CONFIG_DEBUG_INFO_COMPRESSED=y
-rw-r--r-- 1 masahiro masahiro 209077584 May 21 11:19
linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-26_amd64.deb


CONFIG_DEBUG_INFO_COMPRESSED=y and KDEB_COMPRESS=none
-rw-r--r-- 1 masahiro masahiro 643051712 May 21 11:22
linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-27_amd64.deb


CONFIG_DEBUG_INFO_COMPRESSED=n
-rw-r--r-- 1 masahiro masahiro 112200308 May 21 11:40
linux-image-5.7.0-rc5+-dbg_5.7.0-rc5+-30_amd64.deb




For the deb package size perspective,
it is better to keep KDEB_COMPRESS as default.

The main motivation for changing KDEB_COMPRESS
is the build speed.  (see commit 1a7f0a34ea7d05)




CONFIG_DEBUG_INFO_COMPRESSED has a downside
for the debug deb package, but we need to accept it.









-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS_PMz9r3e1UcuM%2Br18JC2KeM2RqGOms1u3kVzN_N1MmA%40mail.gmail.com.
