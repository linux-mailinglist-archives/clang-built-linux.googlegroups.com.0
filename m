Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJGUUDXQKGQEDODKO6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2775111373E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Dec 2019 22:50:30 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id m13sf537170pgk.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Dec 2019 13:50:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575496228; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmiKzSDRqmB8t/GIDxUg8HmT5bDyNFycahwvx8gb0/0vgDxiPeOoytNbVuskvbYpZg
         Yt5klwGnOt5oO+Q0EYHtFSjCeZLGWx3FIDzREwHTJ54PyS8/J4755cUlP8Wa2iMH+1ud
         EvlA/RmAyqyFW93a/7NrDIO/uGb6zwOGy9fbx4qgYSEFtURJn3hfohVTJ6KDtYUdDWRt
         bxwJ80WW1nR0mnQo7GaGiBMNpyLlaZNkZcVAILAwuXUvaYUgbaiO+qHr2AI4pQulxhvv
         rbQ7vLYAnmmhmkJcy76kgRGf0I7tlC7sqRYYx/GWMRjJn7lRfzp9jgur317oJkP8Uecy
         mz4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oracAYLY+hf9b9jqjLCnpuzRqgG+AxNltR6gwJKKnEc=;
        b=YTH2af3zJyFs9NSRrqMAUtAYymmB2dDEA+GCq8FI0hVSOPJTw5ichWDJLCgXKWH1s6
         nEhjDw06/oCLkT+oMV6OklPBWlH8Hsv2Ww3ZQYJ/pH74PVjFY2QUJpu1qnsDgTY2Qb0D
         AkuTXYVm8BWSiPMNDj2BEZaG/Eaerx8qCfEJbnPCg3b99ogrSsaAXh4To+qQWldXA+ec
         VUEBpG/qur0xKUiQsRd/zpPWqEPhM+gDxdd5IQTOW9A+CTlob88h7ZyZ6c1zjyFOVpZa
         gOEK7fO65fLYoP/PrkmId+ilMEC8LAeVoxgWaaNXDRIHl69kcxagGarw8cquUkJXjVt2
         clUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EragXHvP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oracAYLY+hf9b9jqjLCnpuzRqgG+AxNltR6gwJKKnEc=;
        b=PVpJTTuOhLVJykHmQE+EHMzJTLOAoK4t6+1AZgd4CqlEdKXECtDwiML7bDFfu5+3kh
         61OF045Cr7ZpXWAgiaQz9tGjDGb48ikpnfXSbnVqgEqZf9H68DtOJzeqEtJhaUavv+M7
         qyUaHKFr6RBaVq3b3MM7LFF/rWse2Wz2Skq+4H6lK/cu5fiqjbusT8qYDfIEti0zKa6q
         ZBxc3MGv3nBcgjsSc5h4OwVOjSmqnskg2Xcxh+9oVxEJJmcP34MmRPOby1o4CAWX3blD
         5B3GD6gSXDJeK53fl7XkVSFcqTCJbuaIKCYoDCyj+MVDdae0xg0XJH8qNywxHdm8zuXd
         vy6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oracAYLY+hf9b9jqjLCnpuzRqgG+AxNltR6gwJKKnEc=;
        b=jZU6I8gHAOQ0KB6TAevNpAiugFngq/0c8Cv4HaspHU6ZX/Zq41QAz6SsdZ7jBfgDu9
         rtxYqssGIDaF+ThAkKQNNUpBf1Sqzmb8PCWl0Br1oS1i7l/BeD8t2aW/CebWWpyExNXg
         apz1WCvLpX4dbOT1L8RESuRHKdslfG2m9Qj5vSczauecBu/PPJGRx7zKyqLnsVy9euTC
         h2j9ELxmu9838Ax2tVb78nQ1E5tgyR0TQJlSDjFk61x1H74s/ZCxV72bMz5SXkqft/jO
         hFXggdio9TgbCLmZF3xeK8FinKcqKo7RcghJuB+9de9DxzsrwWJ89HnaXx5W3FXA6WuX
         +Bkw==
X-Gm-Message-State: APjAAAUQ1JM5+QFn+ZUIX+zsgveA9D337LQQ0qoQO4jkgdmJY9Dt5in3
	9wXY9/ORVsQY9uthiQzdIew=
X-Google-Smtp-Source: APXvYqytGdO8uf+bw+4SeudWFKJi9y2e9wOb9eZSnnO5vJ/cwfZVqeSRYcvZICV5B3K7gS1Cugv1IQ==
X-Received: by 2002:a65:6381:: with SMTP id h1mr5839888pgv.332.1575496228312;
        Wed, 04 Dec 2019 13:50:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:208:: with SMTP id 8ls194227pgc.16.gmail; Wed, 04 Dec
 2019 13:50:27 -0800 (PST)
X-Received: by 2002:a63:1666:: with SMTP id 38mr5934989pgw.325.1575496227843;
        Wed, 04 Dec 2019 13:50:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575496227; cv=none;
        d=google.com; s=arc-20160816;
        b=QEuf++r5Ku/0JooyJJEjbmCzfeA5qf5IZy8teVwWQjqnDoepBxF/VSZCpTwyaua7P4
         AdUSxE5sAP/bFgdtRgucYym3OTYLCtTpW3bgCBNlvgCvV0BcYESIt+rDsfcMuRhNCTJd
         jcdqt4pd6Z+xN2IzBKNcLizXFCM3d0etFBiP1H6sY6BaNkUOnf1HyMfjm+o7Dy6fSkiH
         KtI8ZgxkfzogLYlHYnwOCE4VYSj08EE1kcBul6uSLL7GEmF4nMvcwrhN/vrJxNkCRVpY
         6CQE4pjOdpiypl9+/PYPx59aMcG3R1wvSN7JbIypAp9IHj8+CSWB/ubGK8EcmkhsMwRy
         Y95w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8JpUhZ6Je57CfDO98t9eoV/RXEOrzy/gqzixyJEl+oo=;
        b=dw953bLymaaSvqNC6HRQHjR21u9kkst5xWtkMS3WSB42mbWZ1fikSeb0SF9zrqvwOe
         sZiNMwLoJlG1Ud9+M8gzB7Nxv+i88lFIxydeTP1vPvThU64flg1BPMbX4JUZfFhzeVyw
         11kDeoRJDAOsMyvcQcZI57MkqwRgyf/nitRPJnw19EDKyyVcSRiFsy2aE/ygxZ5fAAM7
         1v9lbjKHnk/JDpTW95H2cUTirlXVtVgaMJWm4Dl85KmXEpBeSvxe1TbdhLGMRuutAQGf
         hAh7SZWSsY5LsHpsL4Za9ZbMgByrnIQbQDOvGlb75UIMc7lWKJHIGdbfmjB+AkvHnV0q
         vHtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EragXHvP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id b22si341501plz.1.2019.12.04.13.50.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2019 13:50:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id k13so505944pgh.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Dec 2019 13:50:27 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr3527631pgi.263.1575496226929;
 Wed, 04 Dec 2019 13:50:26 -0800 (PST)
MIME-Version: 1.0
References: <CAAzmS68Lzq+nm2Uf21+53qrAVkwrSH8ZbVDTUb6E9h5X6EAJOw@mail.gmail.com>
In-Reply-To: <CAAzmS68Lzq+nm2Uf21+53qrAVkwrSH8ZbVDTUb6E9h5X6EAJOw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Dec 2019 13:50:15 -0800
Message-ID: <CAKwvOdnjeEQgOGX64UMnth9JA3A5DOOPkp9T7bXZArOqFta87Q@mail.gmail.com>
Subject: Fwd: notes from clang linux meeting
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EragXHvP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d
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

Thanks for the notes Steve, links inline.

---------- Forwarded message ---------
From: Stephen Hines <srhines@google.com>
Date: Wed, Dec 4, 2019 at 1:31 PM
Subject: notes from clang linux meeting
To: Nick Desaulniers <ndesaulniers@google.com>


ARM32
- Panics in seccomp calls from ChromeOS and Raspbian.
- Exception table entries are sorted at init time or possibly at build time.
- Nick needs help setting up and building ChromeOS.

> https://lkml.org/lkml/2019/11/22/1885
> https://github.com/ClangBuiltLinux/linux/issues/282
> https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c36

- Looking to move all kernels in R over to Clang (including 32-bit
ARM, which is why this is important).
- Mediatek issues with truncated relocations when using BFD linker.
Serial driver doesn't load, so logging doesn't work, which makes it
look like it doesn't boot at all.

> https://github.com/ClangBuiltLinux/linux/issues/325
> https://github.com/ClangBuiltLinux/linux/issues/773

NOP-based function patching
- Nick asked Will Deacon to write up more about this feature request.
- Similar to some other patching mechanisms in the kernel.

> -fpatchable-function-entry=

Shadow call stack and CFI
- Bloated kernel images (40% increase) due to LTO+CFI+SCS, but likely
a bug with increased debugging info.
- Potentially an issue with .eh_frame being retained.
- There are tuning flags that George can share to help with code size.
- Work on staging ThinLTO in Android.

LLD
- Mergeable sections with explicit section directives.

> https://bugs.llvm.org/show_bug.cgi?id=43627

New -Wmisleading-indentation flag
- Being tested with the Linux kernel as an input.
- There might be some false positives.

> https://reviews.llvm.org/D70638#1768200

Outputs not easily supported with label constraints in inline asm blocks

> https://reviews.llvm.org/D69876
> https://reviews.llvm.org/D69868

Linus wants Fedora's Clang to be able to work out-of-the-box for
building the kernel.
- Tom Stellard (at Red Hat) is release manager for 9.0.1, so we could
ask him about status here.

Discussion about -mfpu=softvfp+vfp flag
- Can probably drop this flag.

> https://github.com/ClangBuiltLinux/linux/issues/762

- Dima working on dropping need for GNU binutils.

> https://github.com/tpimh/continuous-integration/commits/no-binutils

- x86 builds, but doesn't boot. dmesg exists, but serial driver might
be broken. Need to fix some warnings.

> https://travis-ci.com/tpimh/continuous-integration/jobs/262842159

- Check assembler for some supported options.

Dima has a pull request for replacing ext4 builds in the ci

> https://github.com/ClangBuiltLinux/continuous-integration/pull/221

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjeEQgOGX64UMnth9JA3A5DOOPkp9T7bXZArOqFta87Q%40mail.gmail.com.
