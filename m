Return-Path: <clang-built-linux+bncBCS7XUWOUULBBEUX2KAAMGQE7ITE3FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id B29FB309005
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:26:27 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id y34sf7405494pgk.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:26:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611959186; cv=pass;
        d=google.com; s=arc-20160816;
        b=dgdMlRcvMVYil3pk7vvXEj1Y8lgeuzGad6PST6RoLAEiM3U4dNFGj6IaAX2H2wIMg+
         iO6dqReMNoYfLHjz7GeKHeHhKtxKscfjPlC1N/R5P7i0CqzWFgSF0arEXGXlk+DR2IRL
         aG1EwPSUDqxMEgLOUqbSQQiWOCPpQa7Os4Xb6seZLXQLOnbYCvZKXOfVko4nKZVBdHEI
         /JCG54HDh4eRkPxgNRNGa9ZtUbJDCpGRmUC+r32qO/UkHGSgSHOEg2Q+Jr3sva/ARd1Z
         q1c4Hxqi6BIwrcu2HuNniA8Lz3JmO/ZV3sDUs3HF3cbNku1Dw2LSxqm7FWXXK4hGe6VF
         rftg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7cLiCfsoiWRKYdeIsqgHlAYPBUJrmCjLs4VhRUrm2Ls=;
        b=JvjybOXv5aP2pnPbOP9JYARXgF9Sg+vy5wHOMUmjBH1PA2cvTqgsxSe6nL7Wp7FGrK
         Cg/0p+j5tLSKYNibqFPY22Oc/n+xuBnqv8aBg5bb9uZY1OTSw/x06afKkRwhFB2Xn9X/
         o9hO2x7xtkvajvRvF3IjY4l49VEbhGosYhJy5atPv84Ljpuu+GvSDRk29ngisnHENbiL
         monDjPnldTpC94iAMkZuUkMoXNpFAP/rmxLCWSIY5gElCBZH+ZdS8RQhDljWS+pFYkcW
         ZYorNWcPxujtY/auk0AKKUAwFdlXoE5WNndcc4n/Xl9AaEt+GAaR6s7fQe866Gnr5p49
         FXDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KGAzyVpW;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7cLiCfsoiWRKYdeIsqgHlAYPBUJrmCjLs4VhRUrm2Ls=;
        b=J6UWA7zjoDlnzVwSmiawDWSrMSfVH2VSdN8JHLwJabIQG9E9P48ivWuAukX7AoZzdz
         ofEXWPb+mXQSzrs+UzYzNmzdcJHc22uXKzny/fHuF8KWznZt2oGGSO9q6NWAUyBjFH+o
         J9ajPBwBVmWpVSyqfO/zYE2A8QD9T6oq1gSEksLtrVIvkXsAjJspcaWnxJDojO6y6TJU
         p05K6QMPkESwupwjePDk3awLb3VGFk4X9YBGLkQCJmPmddcq23Qi76cRG+gzHj6ccdZe
         DFZ9fwM2NoGDhxq1dClo0TTmqUy4AjZ1ICfG7RVx1KFnS+hLXBYhGZ518aVaOuJvp0yD
         26kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7cLiCfsoiWRKYdeIsqgHlAYPBUJrmCjLs4VhRUrm2Ls=;
        b=QELko1Fns/hmsJsPeK8NFvnlfyZZpO4Guw7aQVVP3QS/UX6BfGYhNO8BtMVlAtTG4N
         eTl/uaz2K97/2azvLHmZRE5I9v+DaQR2YPLEdLYyf/Oti8liIuGk76paYLg0mqtDob49
         kviADv0m7P+YVfLAXeJLTofnxqVIsFe4o0da6mUZZnSlPrFivZBXdr52GHra5Zbq7yZW
         zkaDiM1lF0kdzB1xCknldrYhfVS4LSCspOwNSZfW+9FV+ajpIu1piw6ZRuoMPqEeL4na
         kqPmu6rQXnWddPZk/t8QNFKSIZwx7y1otmnHn0HRWT6Sf8cO4leNMyLJrmXD1u8LFk0K
         KY2Q==
X-Gm-Message-State: AOAM530x9b4e/4aRwSJx4bRwrh+Lj1phrh7Mc07z9nE5J6x1QNKQS9Fo
	uGwK1oDX9MrY/aMugKAznVM=
X-Google-Smtp-Source: ABdhPJyn6hsX5pELisqKzNh8CPaJSfgaue/l1tQpZuckqbv1JGmrg0VNPxKrfBUdWEIOe22WQrVafg==
X-Received: by 2002:a17:903:22c9:b029:dc:9b7f:bd13 with SMTP id y9-20020a17090322c9b02900dc9b7fbd13mr6124532plg.67.1611959186408;
        Fri, 29 Jan 2021 14:26:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2311:: with SMTP id d17ls146470plh.6.gmail; Fri, 29
 Jan 2021 14:26:25 -0800 (PST)
X-Received: by 2002:a17:902:8503:b029:dc:44f:62d8 with SMTP id bj3-20020a1709028503b02900dc044f62d8mr6125236plb.34.1611959185805;
        Fri, 29 Jan 2021 14:26:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611959185; cv=none;
        d=google.com; s=arc-20160816;
        b=I/Vu3foFJ9rA6x+QuKHjtdxnEZ5M+e5UXyDPU6fUvdeyuzbZZkB71bzeFlRSbNHhbl
         U36FgQcD0L6LxLVhfcGXQwo95S1OyOcbRlu5z9RoS6WwIAbuVMwIueSxHAyuymgWCO87
         042h2DNkYN5dO9WIDcVDiUCV10lwQ2zosMvVT5AAtyaW5t8R+RkgehR1PKW/AihI+7GE
         B8x1uLFoO6uH88Wy/VMd3yXt2NDKf5mpYZch5ckIyMdsRdHpsKgSZf3TRP2k9j8Jb7EX
         2ZlyKUWXN7IDk71/372hUrtE9vYaQI4rN3W4Clc2q8lP5lUeHadUNRzks9IBnmios6Py
         TatQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KoBDqtjDlbxiC4Y5Oo0HNYjQu6zWwxrxrRXcym8doj8=;
        b=z9t/OaUiaH+rTWaUvWaSDJw9MYQ03X50xqFPy4PBCKCpxgFlaWyMEF3qS9OGwoBE+5
         WvkVBtWarwPaXEW6JcO/Ti2aITAmlRvaPeNu2a0Lt84jusigDacGPj6YGKEOewzlnTLG
         rbG9LB2kBIovhjHW9ka1hfkq0CByRaZ+7a0TmpsgnbdRv6ZQUXH9uLEIa6gEnne/O2iH
         y6xl2GyFdmWG2I1nb3sCrvZXK2wVSeBNN/+8Jznk/JST2cXNIvE2WOjgNRsP3IPYiJou
         FK3zIE/AN+liSGWTDjX5xsQyjH4hPD8Sb/WX/RQ19qaCQETGvcRBNpvfivS5qQOsikKk
         bhPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KGAzyVpW;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id r142si590206pfr.0.2021.01.29.14.26.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:26:25 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id d13so6126448plg.0
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:26:25 -0800 (PST)
X-Received: by 2002:a17:902:f68d:b029:e1:d20:8641 with SMTP id l13-20020a170902f68db02900e10d208641mr6146970plg.81.1611959185358;
        Fri, 29 Jan 2021 14:26:25 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id v1sm10440701pga.63.2021.01.29.14.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 14:26:24 -0800 (PST)
Date: Fri, 29 Jan 2021 14:26:20 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ilie Halip <ilie.halip@gmail.com>, kernelci@groups.io,
	clang-built-linux@googlegroups.com
Subject: Re: Minimum supported version of LLVM
Message-ID: <20210129222620.7y6sg25fwcr3zhx6@google.com>
References: <20210129212009.GA2659554@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210129212009.GA2659554@localhost>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KGAzyVpW;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62b
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

Hi Nathan,

Thanks for starting this topic.

On 2021-01-29, Nathan Chancellor wrote:
>Hi all,
>
>I am starting this thread to spur some discussion about our support
>model for the minimum supported version of LLVM and how that might
>impact bumping the minimum supported version of LLVM/Clang in the
>future. I am adding what I hope are relevant parties (individual testers
>and maintainers/lists of CI systems). Feel free to add anyone that I
>might have missed.
>
>Some history:
>
>For the longest time, ClangBuiltLinux as a project rejected the idea of
>a minimum supported version as we did not have as many resources for
>testing or a good idea of "what works" and "what doesn't work". After
>Linux Plumbers 2020, we decided that we would support from clang 10.0.1
>on, which resulted in commit 1f7a44f63e6c ("compiler-clang: add build
>check for clang 10.0.1").
>
>The problem:
>
>I would say there are three different levels of support:
>
>1. CC=clang: Compiling with clang, GNU binutils for everything else
>2. LLVM=1: Compiling with clang, LLVM binutils, GNU as
>3. LLVM=1 LLVM_IAS=1: Compiling with clang, LLVM binutils, and LLVM's
>   integrated assembler.
>
>We have started to address these different levels of support in the LLVM
>documentation in the kernel:
>
>https://lore.kernel.org/linux-doc/20210114003447.7363-1-natechancellor@gmail.com/
>
>The issue that has been coming up more recently is whether or not the
>minimum supported version of clang (the first tier of support) equals
>the minimum supported version of LLVM (the second and third tier of
>support) when it comes to inserting workarounds or disabling configs
>that are known broken.
>
>Some considerations:
>
>1. LLVM 10.0.1 has a few issues that are not present in LLVM 11.x that
>   will or have required workarounds in the kernel:
>
>   * https://github.com/ClangBuiltLinux/linux/issues/732
>   * https://github.com/ClangBuiltLinux/linux/issues/1187
>
>2. There are still outstanding issues with LLVM utilities that prevent
>   recommending LLVM=1 for some architectures so committing to a minimum
>   supported version might mean we would need to insert more workarounds
>   as time goes on. For example:
>
>   * ld.lld for MIPS big-endian:
>     https://github.com/ClangBuiltLinux/linux/issues/1025

[Facepalm] I know really little about mips...

>   * ld.lld and llvm-objdump for PowerPC64 big-endian:

>     https://github.com/ClangBuiltLinux/linux/issues/602

LLD has removed incomplete and legacy PPC64 ELFv1 support and may never
support it in the future.

>     https://github.com/ClangBuiltLinux/linux/issues/666

Yes, this require llvm-objdump 11.0.0 (display style issue).

>   * ld.lld for PowerPC64 little-endian:
>     https://github.com/ClangBuiltLinux/linux/issues/811

This is due to GNU ld and LLD's different -z notext semantics.
It is not relevant to LLD versions.

I have a bit more decription in
https://maskray.me/blog/2020-12-19-lld-and-gnu-linker-incompatibilities

>   * ld.lld for RISC-V:
>     https://github.com/ClangBuiltLinux/linux/issues/1020

Not relevant to LLD versions.
R_RISCV_ALIGN support may take an extended period of time.
In the meantile, users can use -mno-relax as we already notified the CI
maintainers(?).


Other relevant commits between 10.x and 11.x:

LLD
https://github.com/ClangBuiltLinux/linux/issues/1186
https://github.com/ClangBuiltLinux/linux/issues/951
https://github.com/ClangBuiltLinux/linux/issues/953
https://github.com/ClangBuiltLinux/linux/issues/773
https://github.com/ClangBuiltLinux/linux/issues/812


There are some commits between 11.x -> 12.x but they are less concerned:

https://github.com/ClangBuiltLinux/linux/issues/1260 (R_PPC64_ADDR16_HIGH)
https://github.com/ClangBuiltLinux/linux/issues/1186 (only with LTO)
https://github.com/ClangBuiltLinux/linux/issues/1141 (the input was already corrupted)

>Questions to address:
>
>I believe the first place to start is answering the question is there a
>minimum supported version of LLVM? Is it LLVM as a whole or one
>particular utility (such as ld.lld)?
>
>If there is a minimum supported version of LLVM or ld.lld, is it the
>same as clang?
>
>If there is not a minimum supported version of LLVM, do we insert
>workarounds for issues that we know are fixed with newer versions of
>LLVM or do we just tell people to upgrade the version of LLVM they are
>using?
>
>If we decide that it is worth defining a minimum supported version of
>LLVM, I would vote that it be LLVM 11.0.0. If we decide that that
>version should stay in sync with the supported clang version, then I
>would vote that we update that for Linux 5.12. Taking a look across
>various distributions:

I vote 11.0.0 as a minimum supported version, too. I don't maintain a CI
system. Note LTO/R_PPC64_ADDR16_HIGH would be better with 12.0.0.


Note, LLD needs to be newer than Clang if you use LTO. Newer Clang may
emit bitcode files not recognizable by older LLD.  If the bitcode files
are older, it may need IR auto upgrade. This serial process may take
some linker time.  Old format + new linker also gets less testing.

If you don't LTO, an older LLD usually works. This combo has very little
testing because most LLD LTO users use lock-stepped Clang+LLD.  Some
utilities llvm-nm/llvm-ar/llvm-ranlib understand bitcode files.  While
the format is stable it is the best to make these binary utilities
lock-stepped with clang+LLD as well.

>archlinux/base:latest: clang version 11.0.1
>debian:stable-slim: clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)
>debian:testing-slim: Debian clang version 11.0.1-2
>debian:unstable-slim: Debian clang version 11.0.1-2
>fedora:latest: clang version 11.0.0 (Fedora 11.0.0-2.fc33)
>fedora:rawhide: clang version 11.1.0 (Fedora 11.1.0-0.3.rc2.fc34)
>opensuse/leap:latest: clang version 9.0.1
>opensuse/tumbleweed:latest: clang version 11.0.1
>ubuntu:18.04: clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)
>ubuntu:20.04: clang version 10.0.0-4ubuntu1
>ubuntu:latest: clang version 10.0.0-4ubuntu1
>ubuntu:rolling: Ubuntu clang version 11.0.0-2
>ubuntu:devel: Ubuntu clang version 11.0.1-2
>
>I am not so concerned for Ubuntu and Debian, as there are updated
>versions of LLVM available from apt.llvm.org and OpenSUSE Leap is
>already unable to build the upstream kernel with its version of
>clang. Everyone else should be unaffected by that bump.
>
>Hopefully all of that makes sense and spurs some good discussion.
>
>Cheers,
>Nathan
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129212009.GA2659554%40localhost.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129222620.7y6sg25fwcr3zhx6%40google.com.
