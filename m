Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBUUK2KAAMGQEFH2SDQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 68893308FB5
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:59:47 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id j5sf8751266ila.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:59:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611957586; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgo1qMshO8EBEmnxzHMEED+ftWQF7qsTkwbWa3mwMJrtepHSsQgAFi6I4xWn+FU0g8
         UYr60DRhdoeT6uDs8KfMLKhb/NBLquBekhH3h83NOi7VdRa57WigGx33tK6Oop0Lcp1W
         7rc3Yt4IaFfSFvPQfEFKKyXvqmqSliRq4cI+/vCX3NEZgpgd2ctDCi5vrXnaqMrJnP4g
         fhIrFuNTYWpaxQApVAP2QZBzOuo72bwXQUy9zD4h2B4SaOhhpozTB9wdNYvcwXnVmAME
         HlzRD0uR9Qxe4l3isGy1oOZQWNmu30WrViawcJwN/BO0H7IFgGnpMbpsF1kxmVwChTom
         ZA4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:reply-to:sender:dkim-signature;
        bh=kNGD9rgZ0l8F9QegpivngGrRIWsVQgPO/OlcfrSY0+4=;
        b=auYtZDPBc6o3TTQXnvf3ilaLNzzgpq/uPYDXbhOrngdSmH+mhEWNlh9guqAkVOvyXB
         7RpvmrrzKArjyeNiKwdqZJ8QPl74PRk6S4ouN8J3mIRk+U1B0aac1NHKf6HJjHbLngFs
         2qwaA6f5/pS53kcEceCDuJUbBIX4j2I0g9sNt6Lmm96FqQXRt+T5H15HDmY+dYEJ0nJr
         3C0r2CcHhVfwryupi7MIEVdgANuhNJBhiYGbuxSVtTw7HFhQ41IWy3VO7eAcUakg+Wb9
         5xNEecy+VsaP/vvzXRPt85pTSbvhKnz0l8nnF3NRIlSItV3YtJeS0XvG0ijjx/iydOk+
         5onQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VELGJjPz;
       spf=pass (google.com: domain of tstellar@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:reply-to:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kNGD9rgZ0l8F9QegpivngGrRIWsVQgPO/OlcfrSY0+4=;
        b=d89fU5ydZSWcpMWChxJcUbT8c6jKG10SQaoRDgL7rFVLqBlVogYX2JBTNpwfurBjYk
         bX76KIbO2j32J3tfKNHuNNVMDmVFpKT1DbURkH3bQYUswd5GpgpOGRGCQoxJ28l/XC8d
         545sdVPiZLOHWJVDjCamO1rO+vszC6sbo/B9/PU7xVIBWhTA6rLKrLFKhDt8yl3Cvso2
         v39kKzGJVB24NJRsiSTiFAxqk4uhvwdUxQATiUN+EsoC5XLt1GvC+YChPg665ZMzS9mc
         3ydbC2zZWEzHuT/hpZY/6k+LLbcFQRvkXSTctTZut1v5wQxf1CW9kG8GcDkY6X+PHp92
         ZJpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kNGD9rgZ0l8F9QegpivngGrRIWsVQgPO/OlcfrSY0+4=;
        b=JNFRqUbv0CeLCsRbYAsgFQUtWrQiVElC5tQZ2AeoVHGEVfHb8EdgUVyLz77T3n66cO
         PIFKI9gsUwJPYbOl57m6KiYlWP8oGWPveiKr8k5W/lHhaoMu9XIeCGqEfDGEvGahZyRN
         bAhRelSqBLV37yTndCj5MHUOAMEoiHpE6hzXGWZ+2gk9LGliZx/qaxTGa4SyheQk8bD/
         2pW2jGiPEnHpDW2L2HMrfyAZhd96P1Qw3iBDZp/FANbwxyA5hHCTofmpHhYCD7w039yy
         O7hVST8TKzD8juibMHVmlYsGy6ve9OlC5GV/2vnNWaQTj8qCgjOGiJwrffpOC/vqix6j
         H2ZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ibdg8KKQsmhJWX4rgFw/uvzTauogz33H8sRxrzF+11hkJgCP+
	uDCMfG0JnZv0+xfJwCNiup8=
X-Google-Smtp-Source: ABdhPJy9N2ybFLNbuaZzsQ7bm8aA7PbHph0eljp0VMvXwFyX7v7t4qYzabi3WOdeAzqMBtUth5AwlQ==
X-Received: by 2002:a02:c6a8:: with SMTP id o8mr5544984jan.119.1611957586425;
        Fri, 29 Jan 2021 13:59:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1687:: with SMTP id f7ls1279676jat.11.gmail; Fri,
 29 Jan 2021 13:59:46 -0800 (PST)
X-Received: by 2002:a05:6638:2694:: with SMTP id o20mr5494083jat.132.1611957585979;
        Fri, 29 Jan 2021 13:59:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611957585; cv=none;
        d=google.com; s=arc-20160816;
        b=Bg70OEgenr8LSHJrnQuB5J6p8Gd1j/NaLn17qfl7VXoATtDDOaHiNbYSY9ZgHnM0oM
         QQbgH8yUSk8zgZpIpGLhIaS04DOhjlzD2haG2FCIAioyllgdnw8RoLj+fm++341nENgf
         WNtPEbnd99uh79RMorjpzqXQt9lZtk8Guu18l72R1zp8x+88Qt2icw9Rjp84FAWyPkdr
         qZDgMB9joqjjU/SehJNeAxpyZ51od20bMZmHllX96T6vfRygwIg3MnV+OSZzrLo1L5zj
         ErAzl/U7OaJ/RJ7YkN7BJWqcsTMSnAJVMtAfhU/eMBGhVvdYC1wJcgUa9hW8rwFNPZGF
         n1aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:reply-to:dkim-signature;
        bh=9h63ZDO9g0/ToSgRJPmZMP2JGNWf0biye/HO5sj8Vt0=;
        b=Tnz4cqlrBWiXJmjlQSZjMcJ647pwAqdq7fOpw30B2z1FQQh6aoryFszY5xCvWk4HB/
         H7J3IljES7eV5IcIxBT7Ll7dy8+vQsp8pQL7TMk4ncsg090eiX3lt3CRg1Tv3Q9k+P3O
         cm6R3mQx95o87lNU3o2DODENl/NHIXIk8kTpz4lXoTjcVuRuzrx8Xe1J4tVsaARsxIHS
         U2Cj6+DpxdupJkuWL9T6xS9ToEYBetLa9PEUAHkDjF5cM8sX4upPyBOdtXJ9gaKVj4XA
         f/wqzCVXTtb+k4eq+7vmTclSdvO7kUhbGzhf/51MhtsXrx6hY9gEv+QtBwygkHvf6J24
         QB+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VELGJjPz;
       spf=pass (google.com: domain of tstellar@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id y16si131592ili.3.2021.01.29.13.59.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:59:45 -0800 (PST)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-516-CPS5sBaaMiaZpuYUA2VX3g-1; Fri, 29 Jan 2021 16:59:41 -0500
X-MC-Unique: CPS5sBaaMiaZpuYUA2VX3g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46C1810054FF;
	Fri, 29 Jan 2021 21:59:39 +0000 (UTC)
Received: from tstellar.remote.csb (ovpn-114-179.phx2.redhat.com [10.3.114.179])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 284346F986;
	Fri, 29 Jan 2021 21:59:38 +0000 (UTC)
Reply-To: tstellar@redhat.com
Subject: Re: Minimum supported version of LLVM
To: Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Kees Cook <keescook@chromium.org>,
 Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Ilie Halip <ilie.halip@gmail.com>
Cc: kernelci@groups.io, clang-built-linux@googlegroups.com
References: <20210129212009.GA2659554@localhost>
From: Tom Stellard <tstellar@redhat.com>
Organization: Red Hat
Message-ID: <0422fd4f-a706-219d-d8d2-066541fd24b1@redhat.com>
Date: Fri, 29 Jan 2021 13:59:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210129212009.GA2659554@localhost>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VELGJjPz;
       spf=pass (google.com: domain of tstellar@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 1/29/21 1:20 PM, Nathan Chancellor wrote:
> Hi all,
> 
> I am starting this thread to spur some discussion about our support
> model for the minimum supported version of LLVM and how that might
> impact bumping the minimum supported version of LLVM/Clang in the
> future. I am adding what I hope are relevant parties (individual testers
> and maintainers/lists of CI systems). Feel free to add anyone that I
> might have missed.
> 
> Some history:
> 
> For the longest time, ClangBuiltLinux as a project rejected the idea of
> a minimum supported version as we did not have as many resources for
> testing or a good idea of "what works" and "what doesn't work". After
> Linux Plumbers 2020, we decided that we would support from clang 10.0.1
> on, which resulted in commit 1f7a44f63e6c ("compiler-clang: add build
> check for clang 10.0.1").
> 
> The problem:
> 
> I would say there are three different levels of support:
> 
> 1. CC=clang: Compiling with clang, GNU binutils for everything else
> 2. LLVM=1: Compiling with clang, LLVM binutils, GNU as
> 3. LLVM=1 LLVM_IAS=1: Compiling with clang, LLVM binutils, and LLVM's
>     integrated assembler.
> 
> We have started to address these different levels of support in the LLVM
> documentation in the kernel:
> 
> https://lore.kernel.org/linux-doc/20210114003447.7363-1-natechancellor@gmail.com/
> 
> The issue that has been coming up more recently is whether or not the
> minimum supported version of clang (the first tier of support) equals
> the minimum supported version of LLVM (the second and third tier of
> support) when it comes to inserting workarounds or disabling configs
> that are known broken.
> 
> Some considerations:
> 
> 1. LLVM 10.0.1 has a few issues that are not present in LLVM 11.x that
>     will or have required workarounds in the kernel:
> 
>     * https://github.com/ClangBuiltLinux/linux/issues/732
>     * https://github.com/ClangBuiltLinux/linux/issues/1187
> 
> 2. There are still outstanding issues with LLVM utilities that prevent
>     recommending LLVM=1 for some architectures so committing to a minimum
>     supported version might mean we would need to insert more workarounds
>     as time goes on. For example:
> 
>     * ld.lld for MIPS big-endian:
>       https://github.com/ClangBuiltLinux/linux/issues/1025
>     * ld.lld and llvm-objdump for PowerPC64 big-endian:
>       https://github.com/ClangBuiltLinux/linux/issues/602
>       https://github.com/ClangBuiltLinux/linux/issues/666
>     * ld.lld for PowerPC64 little-endian:
>       https://github.com/ClangBuiltLinux/linux/issues/811
>     * ld.lld for RISC-V:
>       https://github.com/ClangBuiltLinux/linux/issues/1020
> 
> Questions to address:
> 

I think it's going to be difficult to support a minimum version of LLVM for an
extended period of time.  The reason being that upstream only 'supports' a
released version of LLVM for 3 months (i.e. 12.0.0 is released, 3 months later
12.0.1 is released, and then there are no more 12.x releases).

My recommendation would be to support 2 versions only: the latest released
versions (e.g. right now this is 11.0.1) and the latest snapshot build from
git.  Any version older than that is just going to continue to accumulate
workarounds in the kernel, since upstream is no longer fixing bugs.

If you want to try to support more versions than 2, then I think it would be
worth starting a conversation with upstream LLVM about what it would take to
extend the support lifetime of the releases.

> I believe the first place to start is answering the question is there a
> minimum supported version of LLVM? Is it LLVM as a whole or one
> particular utility (such as ld.lld)?
> 

I would recommend using the same minimum supported version for all of the
LLVM sub-projects (e.g. llvm, clang, and lld).  Most of the time users have the
same versions of all these tools installed anyway, and toolchains that mismatch
versions of clang and lld don't likely get a lot of testing.

-Tom

> If there is a minimum supported version of LLVM or ld.lld, is it the
> same as clang?
> 
> If there is not a minimum supported version of LLVM, do we insert
> workarounds for issues that we know are fixed with newer versions of
> LLVM or do we just tell people to upgrade the version of LLVM they are
> using?
> 
> If we decide that it is worth defining a minimum supported version of
> LLVM, I would vote that it be LLVM 11.0.0. If we decide that that
> version should stay in sync with the supported clang version, then I
> would vote that we update that for Linux 5.12. Taking a look across
> various distributions:
> 
> archlinux/base:latest: clang version 11.0.1
> debian:stable-slim: clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)
> debian:testing-slim: Debian clang version 11.0.1-2
> debian:unstable-slim: Debian clang version 11.0.1-2
> fedora:latest: clang version 11.0.0 (Fedora 11.0.0-2.fc33)
> fedora:rawhide: clang version 11.1.0 (Fedora 11.1.0-0.3.rc2.fc34)
> opensuse/leap:latest: clang version 9.0.1
> opensuse/tumbleweed:latest: clang version 11.0.1
> ubuntu:18.04: clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)
> ubuntu:20.04: clang version 10.0.0-4ubuntu1
> ubuntu:latest: clang version 10.0.0-4ubuntu1
> ubuntu:rolling: Ubuntu clang version 11.0.0-2
> ubuntu:devel: Ubuntu clang version 11.0.1-2
> 
> I am not so concerned for Ubuntu and Debian, as there are updated
> versions of LLVM available from apt.llvm.org and OpenSUSE Leap is
> already unable to build the upstream kernel with its version of
> clang. Everyone else should be unaffected by that bump.
> 
> Hopefully all of that makes sense and spurs some good discussion.
> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0422fd4f-a706-219d-d8d2-066541fd24b1%40redhat.com.
