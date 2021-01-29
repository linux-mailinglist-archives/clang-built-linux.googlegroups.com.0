Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDHY2GAAMGQE4CURB5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB42308F28
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:20:14 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id z6sf7327952pgg.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:20:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611955213; cv=pass;
        d=google.com; s=arc-20160816;
        b=nj6RKwfX/VEZtwndHUk52tA3r3vfFy9vfOppiAOx8u+3yyAv+9VqtpI0UV/V2IB5dX
         HKffyuErRJgW2qgPCZn1v+lSgkr33oAgZYz5HjMO2Y21x0G8QwQ4bEsl4FqNVxdGC1BJ
         OEdO+DhDnUkiyXKQ+g308ttgSjKhjvJ5+OghURndRb4limKGIaSELf5CuRlI5UDQ1xS6
         G+DM54KiBuMvQcl5fXDlvICjwUlvR9AnK2gU/4am4iT+WmI8ud9xEY15PbWoSei6kLms
         BXyI+itbqwL/2W+sE5ZBV6svEUExQgNtyyAaev/lzff5CcTL/ONfX2X/JI2HWEZh3NFs
         ZBAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=cF2sHxi/QUlba2Rb8HydM2ruEz+RoSqmFxPbj+rCkws=;
        b=d/rMNapK7e/5LA68/H5Zldl6lOc+C/K6jzPkbnJZ2p2I/JUDX/fwIMyevtVA661XM3
         q0SwcVra6o6TrmBW/MqNmGGXqUmh9Lbw0CHmm4VoLPQkfcQmNK+qrWstLjUDZUdWsPvk
         MqilV4U6POuoB/7q+aUbMT1Z8HZmT+qdvEMK9Rg4iAJVn4x/Jy/k1Cd6Rk9IYsS0vqZ6
         XnRZRxkhlh4Imvo6pthc+7E/VPlzzdoCmsaB8R02T49tS3v91BCRBEeaSJCUXPuCF8Bl
         RmTVy8l5xWETKx5cnlDwjMHsC56jps9PF0tL5A9mY+xmMFWB8BNhicpUnlHry3coooB1
         iNiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DrNy9oLJ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cF2sHxi/QUlba2Rb8HydM2ruEz+RoSqmFxPbj+rCkws=;
        b=gU+MtgA1rER5x6xyG4rExipEERwqNq7Ar9IBDAnoNlIVhexKK+HVyAYBqsYOmasDk7
         8+jBaiCHjg7K8/MnqpgegusNiLiWFMCp8cLAwBJKyvIzRfLcXeu5cQLSgzewaaBTa6GV
         jNhh1E6bZLZewov1d7Dxg7zT2J4toPdgaFX8vM7FlPafuzh5ZBt6GxABCf/DuiK1PE95
         v4QVg3UQJNti+iLJlBxnll67eIRiITaXV96ZrBEzpQOlmEnv4UXps6jSFB+wTfPmxZ19
         GKTf745sKyVHxTVwX6F3ki5/awO+ssZEkR2Q6bYHf6Mu9Pu8CjZ4Kr/p4P5bXk2owc51
         3Y/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cF2sHxi/QUlba2Rb8HydM2ruEz+RoSqmFxPbj+rCkws=;
        b=PioKE1dTTgCDfaDA6ZMF7sVwy8KtUjGFQPdbutQi+++rFcIMAsjuQ9uGcTTIbunDsa
         S38V9Z98jPYjOqbgjQzndWqrgXuuJhM5yiE+hPmblLOQCQPaXOjvabsTbfUePxUULZgo
         2vWWGp662cXioZT/KPMJU66qF54nvfLtZKeI+jwMM49inoyRsntJTx+wnUiO7IhyzrpU
         6mnFuTQJTAScljjJOUjxSV4UzvK/Mo7y2WjNQZEeH6BADGvjagYUFmMdsADpdj3fO4Fa
         UAzfL7g9mzkf1gD3s9vE1buhItsZje20pH7iN5gKGjK0xHo1P9LkTLZ/+TG1VRT7HZSC
         /vyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532f86iAVt8DrkxK2KpfWy1SgiVWZMHGyr+AaNtJowzxo7AsWtaH
	/+b/xRs3UoKUTYK30b4DEpU=
X-Google-Smtp-Source: ABdhPJxW+l/WmxK03XwkN73T3SlhfkIjbLv/kfK8UcURxohvyAz/knX9rAmgZnfMDdeEyRN3O63Npw==
X-Received: by 2002:a17:90b:949:: with SMTP id dw9mr6524640pjb.20.1611955213102;
        Fri, 29 Jan 2021 13:20:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:88c7:: with SMTP id k7ls4092780pff.4.gmail; Fri, 29 Jan
 2021 13:20:12 -0800 (PST)
X-Received: by 2002:a63:e109:: with SMTP id z9mr6443806pgh.5.1611955212441;
        Fri, 29 Jan 2021 13:20:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611955212; cv=none;
        d=google.com; s=arc-20160816;
        b=nYAfL8mbXsQq8BYK3T6jt1xjaK5xEAofLebMhbuxIDuG5UN+r/JJTLmJ1neVYGiMbY
         RCQz/zFSziGEY611D6LobSQT/19F6ockfPqsN8d8rKNMmj2T7pnlKFmUIjy8KTvVtwXs
         F5AqoAqxq2SfuCsfbzr8hOaBrUkJ810EULLkoA+pn8i+qfM63dnZu3QeZ1WkKKJpCNC3
         8AkuKjcm5nI/HAFV3b/6UcuyKYK+rkVSQ6YxtL4y2vYyM5B/7CP5Cm8FGHaQC458ohy5
         d7ylZGLZW4XCfAh+6KFjy7jt3DMxM6iaPIeSqaXWzKRa5uIc6Wl2RVTjiW9/KIqQt4Sr
         1oJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=/B0YlrkSTl6mjjZab0kVzFbOadp+auMFCS5mTZRWo0Q=;
        b=vGYjsabtO8eHdwP+Ueyzi3l+A3ke/1OVyxlyP+yKL94XYejHbKVlPaxBxdvMtgqphk
         kVdm5+4D3RotheEMlXzXJvs4TaoCWrSxMFKnjCZrSfQnpNc8lmfDC615YkufrNiwrqll
         h2Q3XtmGulgFm7C/6FxBr7awZDA+Js6QTUH/D8QzujBUvfjD7WcVi7/Fntu7iCa3bCNd
         xVWXIkYZSpZgusE/4zhvMkuhowBViSC6taUD9JtzCh65uXB8p6+CrDvG7rpJxjdA+jp2
         wOuoWoeczqu51jcMHJaT86TVrzJdwdVhJDSyG05/jdQe4N9plQUsyEYp9TDBb+OEAWHI
         ptLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DrNy9oLJ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d7si356439pjg.2.2021.01.29.13.20.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:20:12 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E956764E06;
	Fri, 29 Jan 2021 21:20:10 +0000 (UTC)
Date: Fri, 29 Jan 2021 14:20:09 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ilie Halip <ilie.halip@gmail.com>
Cc: kernelci@groups.io, clang-built-linux@googlegroups.com
Subject: Minimum supported version of LLVM
Message-ID: <20210129212009.GA2659554@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DrNy9oLJ;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi all,

I am starting this thread to spur some discussion about our support
model for the minimum supported version of LLVM and how that might
impact bumping the minimum supported version of LLVM/Clang in the
future. I am adding what I hope are relevant parties (individual testers
and maintainers/lists of CI systems). Feel free to add anyone that I
might have missed.

Some history:

For the longest time, ClangBuiltLinux as a project rejected the idea of
a minimum supported version as we did not have as many resources for
testing or a good idea of "what works" and "what doesn't work". After
Linux Plumbers 2020, we decided that we would support from clang 10.0.1
on, which resulted in commit 1f7a44f63e6c ("compiler-clang: add build
check for clang 10.0.1").

The problem:

I would say there are three different levels of support:

1. CC=clang: Compiling with clang, GNU binutils for everything else
2. LLVM=1: Compiling with clang, LLVM binutils, GNU as
3. LLVM=1 LLVM_IAS=1: Compiling with clang, LLVM binutils, and LLVM's
   integrated assembler.

We have started to address these different levels of support in the LLVM
documentation in the kernel:

https://lore.kernel.org/linux-doc/20210114003447.7363-1-natechancellor@gmail.com/

The issue that has been coming up more recently is whether or not the
minimum supported version of clang (the first tier of support) equals
the minimum supported version of LLVM (the second and third tier of
support) when it comes to inserting workarounds or disabling configs
that are known broken.

Some considerations:

1. LLVM 10.0.1 has a few issues that are not present in LLVM 11.x that
   will or have required workarounds in the kernel:

   * https://github.com/ClangBuiltLinux/linux/issues/732
   * https://github.com/ClangBuiltLinux/linux/issues/1187

2. There are still outstanding issues with LLVM utilities that prevent
   recommending LLVM=1 for some architectures so committing to a minimum
   supported version might mean we would need to insert more workarounds
   as time goes on. For example:

   * ld.lld for MIPS big-endian:
     https://github.com/ClangBuiltLinux/linux/issues/1025
   * ld.lld and llvm-objdump for PowerPC64 big-endian:
     https://github.com/ClangBuiltLinux/linux/issues/602
     https://github.com/ClangBuiltLinux/linux/issues/666
   * ld.lld for PowerPC64 little-endian:
     https://github.com/ClangBuiltLinux/linux/issues/811
   * ld.lld for RISC-V:
     https://github.com/ClangBuiltLinux/linux/issues/1020

Questions to address:

I believe the first place to start is answering the question is there a
minimum supported version of LLVM? Is it LLVM as a whole or one
particular utility (such as ld.lld)?

If there is a minimum supported version of LLVM or ld.lld, is it the
same as clang?

If there is not a minimum supported version of LLVM, do we insert
workarounds for issues that we know are fixed with newer versions of
LLVM or do we just tell people to upgrade the version of LLVM they are
using?

If we decide that it is worth defining a minimum supported version of
LLVM, I would vote that it be LLVM 11.0.0. If we decide that that
version should stay in sync with the supported clang version, then I
would vote that we update that for Linux 5.12. Taking a look across
various distributions:

archlinux/base:latest: clang version 11.0.1
debian:stable-slim: clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)
debian:testing-slim: Debian clang version 11.0.1-2
debian:unstable-slim: Debian clang version 11.0.1-2
fedora:latest: clang version 11.0.0 (Fedora 11.0.0-2.fc33)
fedora:rawhide: clang version 11.1.0 (Fedora 11.1.0-0.3.rc2.fc34)
opensuse/leap:latest: clang version 9.0.1
opensuse/tumbleweed:latest: clang version 11.0.1
ubuntu:18.04: clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)
ubuntu:20.04: clang version 10.0.0-4ubuntu1
ubuntu:latest: clang version 10.0.0-4ubuntu1
ubuntu:rolling: Ubuntu clang version 11.0.0-2
ubuntu:devel: Ubuntu clang version 11.0.1-2

I am not so concerned for Ubuntu and Debian, as there are updated
versions of LLVM available from apt.llvm.org and OpenSUSE Leap is
already unable to build the upstream kernel with its version of
clang. Everyone else should be unaffected by that bump.

Hopefully all of that makes sense and spurs some good discussion.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129212009.GA2659554%40localhost.
