Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMO6WP3AKGQERDQ6FJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4CF1E1FA1
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 12:28:03 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id b7sf1091106ooj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 03:28:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590488882; cv=pass;
        d=google.com; s=arc-20160816;
        b=nUhU9tfkWYmuZL6KDO0y2mzlL/JE2hJlQeNlHR5B24M3TPMQsy974v1NvZ+kRr+2JD
         2BPbcVyQ2B3CcNIGhpfIFPSia3vx/PbDYXwbeNr9nAEX87LcdwUifEp4tdwWRA8Hq+ZH
         Z8hrWBQL9KduxdO5n8Gk9xJyKaDcntVivT0NXXdN481kHexiAfMv7h2t02f495ahvKTw
         1KvlHNKWiM1xwMPCiw8JB1jEVCAEEOsPQcDhwFc162/JGhD4lYBS21NJOir3IXQqk2sn
         XY0tbfozbXzosqFVj3+2OMBrttjhC1o7AyI6aNBlgZwECQwFzxfp7JV1se4NzHsNSeBC
         f7hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=LXoUfapNWcsU5FVzYVp6EICd1Zz7HunDOvqqrWnL+5k=;
        b=JaYxFkd6ci7H8/vh2Zvg4eCjsW/DxJ8SdIGmGuDo30KmM2vrILbWftlkrVSvdpKGg/
         FfUMXVCl691gVMZTRPahBxG/V6jR1gxP12K3gwwPcbNKoue2Ux0Yd6MSJBsecb5YZG4E
         AMFw6t82dwJHC/xXCg6T4HYnqlwdSZA4jHg1mpqNQGqYQr+AssuhgoSPZ7AfSet8upfR
         uueGaQIfvw0p96RRkl0vIzO457r+2jLwPeRtaGjX0ljRbD6s9kytF1MCc5FhiasC9cOu
         H29gza/euObBXMlUP4DEtxhqCljE8kCDZofShEMLfMf92sntV5zG2tZ09LXrrGI6YNha
         WvyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="d4f/9aYr";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LXoUfapNWcsU5FVzYVp6EICd1Zz7HunDOvqqrWnL+5k=;
        b=QSlIuraghw7x7mmVidUg51+BpSm0kG7ZivF74UrwHcB8HI8GIO9HTM3JHIPC5/cx5l
         OpoCSqf+hnmfVPCmNT7uql9R0pmn28MzdXybMo5dhRJL9h9J9m7vYihqWb/QmSSC14Ft
         Oy6UxiWbWiph1ajfryBveWL6YywgQ75pijxcYLmbNQKLXbYFcN1w8YffA1lCV2hp6XT2
         1/PXzG/bu5sq7pIl0NW8aLj0ValHoTdut6E9dA4wWbagz46TOB/Brr/uQaxoERZW+laE
         4tZfrb/mxE0FU75VNXgcp85TWVeE4N6AdnyIAwjTZhx3SWpZ1nbXpSLFm5mwxpnYfcXQ
         QWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LXoUfapNWcsU5FVzYVp6EICd1Zz7HunDOvqqrWnL+5k=;
        b=J3Un/NNhXJjkMyFA+6+ew3La0nnAnTO6RKcdYvtzrbCNMCXOMOhpbhyEw+p3prsw9Y
         ac5eRLqAoD75DsLwnUjiVcrqkB3CIUBkV1DUCYw9Z9Lmd7BScvepB9o0c1a3D37e3sNb
         BSrDDvC7bQVmE9SbMwYDqPL2DO2qFCWbSNzyOPDpfkF4pAgvzvkjoj//d9v/ipAXbZXb
         RXa5TeETwn95gY31dRj/q0Xt1fMLgw1+UxpSeWh51M4ysi1WZeM/Yg5pgtludft9bFZi
         cZjxu/jtNbYWnpaEBSyHQJJ3cgNLbd18+o5PinL7SEjbjxBs5xPWRE+RV4F5lh+rsalB
         092A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MeGENLQAXJWC30H16j5uQk41noVPKT5+eozf1gYo4YTfx4E0Z
	ghKe5Ta9S62eJka31mfupuQ=
X-Google-Smtp-Source: ABdhPJyLL0CNUDAg8ZqdKnYKyXnYKg1xZIpocXm9DnJDH3bogUOtP/C/D42oND6+pwZt0U4HQQjy+w==
X-Received: by 2002:a4a:a741:: with SMTP id h1mr16684323oom.0.1590488881881;
        Tue, 26 May 2020 03:28:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:6510:: with SMTP id y16ls594197ooc.1.gmail; Tue, 26 May
 2020 03:28:01 -0700 (PDT)
X-Received: by 2002:a4a:831a:: with SMTP id f26mr15887251oog.72.1590488881561;
        Tue, 26 May 2020 03:28:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590488881; cv=none;
        d=google.com; s=arc-20160816;
        b=RNpNWJA6Rut8yzgVh7T5aVWITXz/VvaGOohRzsaEBE1r/InCq4dYQrLtCfgoCgFUmK
         6xboObJ3ZInbN0h3P+jBlJJHxHeA0jrTaa6QRJ2vzYiK38/IDBEMk2AAwtG8BYKAmy1Q
         DqQOreZ9LFh758wAXEItViE0HnRLgAKjQ97kuhlOKy26u41UXmO2ZVP90tOggpxmbHLF
         KAivXzptN65epp7LfKeViOuwSdgy+KmZCpFpY24u4hv/waRrUyUhjm3b9tl4Od9s9Ezh
         SYOiwFcVcdMFZK/54q1Ghc0KKajvhqegDD505TGA6lkPDwx09zymdFRRXhiNseMyOwXA
         8L7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=qnm3rcWAxInWSd7vhesNxTx/sKbpy8dqFftwYTjfELU=;
        b=RgRSLB+DPYLwEKe6TNEREdQmrlJdd/i6aaRbTiAiGWZZvHQsomqkyF5zjPWupa6pTn
         DEkX0W3937/vQNFBnEKYZsrfjWHJ5gxoGp5+46AENsiexxN347uEEyrBl1rE6uJvtojA
         8szGl6HjsC0AWjPBDqmQUErQKZFkVFsjKBDj8YNq4VNr6tL5pLTlj/yQ2cll7vKjJ9hV
         AVDzJGj5VbteB+2d++INSbXv7mn1LB1IkPqDGgvKciT/0HWsJn3qB84m0mV9UnLdQzif
         rnS8D6PCvwhZ9zV3AcBt8fyfvzCw5Wd0MHnQejzxDMhHHt9P/aivM7hkxUIfdG+IIQCK
         rWXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="d4f/9aYr";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id e20si1344660oie.4.2020.05.26.03.28.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 03:28:01 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 04QARVda028397
	for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 19:27:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 04QARVda028397
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id u7so11486485vsp.7
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 03:27:31 -0700 (PDT)
X-Received: by 2002:a67:f3c3:: with SMTP id j3mr294296vsn.155.1590488850516;
 Tue, 26 May 2020 03:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
 <20200521220041.87368-1-ndesaulniers@google.com>
In-Reply-To: <20200521220041.87368-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 26 May 2020 19:26:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNARtO5Pr2nxpoORSHDFWHbjP0waOmrn_TZ+rXhmYm+TORw@mail.gmail.com>
Message-ID: <CAK7LNARtO5Pr2nxpoORSHDFWHbjP0waOmrn_TZ+rXhmYm+TORw@mail.gmail.com>
Subject: Re: [PATCH v3] Makefile: support compressed debug info
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>,
        Nick Clifton <nickc@redhat.com>, David Blaikie <blaikie@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Changbin Du <changbin.du@intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Anshuman Khandual <anshuman.khandual@arm.com>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="d4f/9aYr";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, May 22, 2020 at 7:00 AM 'Nick Desaulniers' via Clang Built
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
> Suggested-by: David Blaikie <blaikie@google.com>
> Suggested-by: Nick Clifton <nickc@redhat.com>
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>



Suggested-by seems strange to me, but
I decided to not be worried too much.

Applied to linux-kbuild.

Thanks.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARtO5Pr2nxpoORSHDFWHbjP0waOmrn_TZ%2BrXhmYm%2BTORw%40mail.gmail.com.
