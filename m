Return-Path: <clang-built-linux+bncBAABBYNX2KAAMGQEPTQFKFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0339E3090A2
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 00:36:02 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id k7sf4735631oom.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 15:36:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611963362; cv=pass;
        d=google.com; s=arc-20160816;
        b=ONnKA1evUq6JvVXXg4XglSFUagjO01tU8g1XxLm1uz3qG9kmkO5mqq9bhlNZDeTmYY
         Gdchu0R7CflZ26CcWdEzZngaM2JyHgTZRErmf/1+BLdBmN98817piY1usHqXVBFtwXy8
         JcOy/iEnHt/HhLdSjqWjctGsM9XEd78eetcGNRDQsUU0LXl3U1yUzdidm7W6NSSV6wTA
         QjIw5UQ/Xizv1yL95PwsltdlMIR46d1qg58eb5WX91jTy3+IhQOORuXf/FwyEL+o5u3Z
         9XGTza0hx3WabFTlKmBCGDyirtxgTMMCylLQIsBuxuoIDsgjzT3Kkikv/cyHutDeV0Dw
         5B0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JURbP4VEjUZTuZIh9Zsv3eQdBSJWWWApuH2tUyN0SAY=;
        b=k0UC8S4yqjO28OwHSA+UWQhNUFAHdl97CMYQ5NBNdnNVOs+jmcuX1IC7hujb75GxEw
         EKKb2v9g8ZU+qUqu31Z39P13uDQIWDPCINEZ6WZMdfsZIo6p2S5aIPG7FneFCXVmUX6m
         3KvvKMg8HjkzKlQCVVTTeRLYcQ1u9j+/LstMhewrFKk5hCRwSSbhc4BW9OkX5ZrPBfDF
         me6/GYCByEXpfbiYocMFRK4b5FyYYeXIVGl8WRA3SYh1Hi/qijFG+iYadap5qQqcBY6Z
         rDrY2G2hU5B/iugfq8TaGHcGfL7xIzwuKyAnEtr3aN/MaM5+v5ZrTKffSdIyv27EA58E
         0n8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Nk7Iqyx+;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JURbP4VEjUZTuZIh9Zsv3eQdBSJWWWApuH2tUyN0SAY=;
        b=ecdO3A6p2v99wrCSd+CsxuJhiS7ArQnskGQnJIFAh664uSvyO13pT6lsIYY3YYcl6N
         yCqjbsYS9ODAabmYjHG8gqcqC5iNu1aYpuXCNbBtqwNGFoOz2fWMEdQeLz2VbO3vqd3Y
         G0/3TS1fedUJC7XGqTjmFUl2RPUtYcEcHQ0TO5+SdHI40+54BpH3KypSoSEjKJGl0XGs
         zpzF+wRVl3TtLx5Ss/GeSPo0CI4eewDbeL83dag475/WRTcN/YDWqScNUJ9LAMqSPYJR
         4hpsF82sRQCg8I8dD1vOywldwHqFYp7RGo97EG6AMa15fDEbtacwHXX1RkLqfnhUVAtK
         CNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JURbP4VEjUZTuZIh9Zsv3eQdBSJWWWApuH2tUyN0SAY=;
        b=VDl+69b/wGurj7yLUh4zPIcMdjHRPznFEtNjR6njsOLOTn/WpjUOyJ1ODzaTotsQsM
         FXd9GCFU9mFV4HiY7GelXkKLJnF2iBm+SQlxmn54rHkfHo+Sb0vKmXYlVfF/JYWmB91c
         Pm6sAJM3AQDG+SdZgVlIR5lO1ffnHfN4jRMAlGf7wKlNlhEd88VMpZ7uhnZLJ0wD4yFn
         VpUV8bPxKsC8s+F9W7nl9ph+jTYeXJektGoedM/QltH7SJ6snEXp7ZEI+LFASFt97DmJ
         nvaylFRRRnqAFmMCNa6x+erf6ak9MQPCmKXyqKzWuhbeR+jfrixINKAoXOvDg366j5Cp
         iJ+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306UFuyxXHXNMyz2Yenbihva8ombZSzKkZ6/ic0rt6/BL+U4XQC
	AGR6wWgSzWCXoNJIf3zu8uA=
X-Google-Smtp-Source: ABdhPJwnNe0xXbmos9fmxGyRjYa8fnBYVpUCmBBPCqS+uP16Tl5QWkXdmGRNaJU5mSG+9+LdYbI7nA==
X-Received: by 2002:a9d:4e04:: with SMTP id p4mr4441196otf.150.1611963362000;
        Fri, 29 Jan 2021 15:36:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:b1c5:: with SMTP id j5ls665414ooo.11.gmail; Fri, 29 Jan
 2021 15:36:01 -0800 (PST)
X-Received: by 2002:a4a:858c:: with SMTP id t12mr4749082ooh.20.1611963361644;
        Fri, 29 Jan 2021 15:36:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611963361; cv=none;
        d=google.com; s=arc-20160816;
        b=JERtgkrpjjZ9am0ABnLTHhfDaD1m7O+K94dUgRlEhsLG2HxFdiyblRMcYGIzKAN2vB
         obw2d5JFfCO8+gN11ulKPTTr70jBLa+D6qWEiN+xDU7HudFAb/zLuswv4QIq6Nabd2PX
         fM3lZpAq+S6Ur6/UJY0nkGMU4s7ZAxf2rTaoWMFN0lNTKjBUgR2y5wEyLiDSHaypJhb8
         M9JPw8za1qJ2wdeKjxVIkcnRWBmN9ZU3VNi+TmyclCJIGEwnLgUdOiUoJIeJTcckasPr
         Z6gDkj5+zCiMMWfcOst/90sutLDixSfUD7iBgeB2Qudq/jdp28djeBxLdSqoNOIYb40L
         bkQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XUIUMULOQFbRmhS4z038Hiuv3d7xR/DV15kNdtPJUV4=;
        b=wHb9On3PqKzUj7aQ6+s6LXPdy83x4aI1QMCsBTnUK5G+r3tmA6Meb6Vi96WDuO0pqz
         ttJ0CDH767H47lRxxD1WQzBZP9sz8DVN+pbeCsSutMqQxJmK9Js2Zp2y6csXQ4q4Y8z+
         bTDfKGhgACEVNN4o/CrqflNeJA0kuBdsBpNRaSxaH2CXqeQiP4cTnEe1IZg0xwKKtr1N
         2TXeyESr75FIpSKSkMMptZVnKYAj5EcQHRm9qOShaBfmzgvXW4V2AcJoWSkJvCTrDV53
         faB0BS0TO+J78y4ubIRzi3l+zKueJVV84dpwwM0HwoX+JGpi5tVjEwERYFNw60fxNnVx
         EBlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Nk7Iqyx+;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g62si530059oif.2.2021.01.29.15.36.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 15:36:01 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9BE7064E02
	for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 23:36:00 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id d7so10303774otf.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 15:36:00 -0800 (PST)
X-Received: by 2002:a9d:741a:: with SMTP id n26mr4401434otk.210.1611963359866;
 Fri, 29 Jan 2021 15:35:59 -0800 (PST)
MIME-Version: 1.0
References: <20210129212009.GA2659554@localhost>
In-Reply-To: <20210129212009.GA2659554@localhost>
From: Arnd Bergmann <arnd@kernel.org>
Date: Sat, 30 Jan 2021 00:35:43 +0100
X-Gmail-Original-Message-ID: <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com>
Message-ID: <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com>
Subject: Re: Minimum supported version of LLVM
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ilie Halip <ilie.halip@gmail.com>, kernelci@groups.io, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Nk7Iqyx+;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Jan 29, 2021 at 10:20 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> 2. There are still outstanding issues with LLVM utilities that prevent
>    recommending LLVM=1 for some architectures so committing to a minimum
>    supported version might mean we would need to insert more workarounds
>    as time goes on. For example:
>
>    * ld.lld for MIPS big-endian:
>      https://github.com/ClangBuiltLinux/linux/issues/1025
>    * ld.lld and llvm-objdump for PowerPC64 big-endian:
>      https://github.com/ClangBuiltLinux/linux/issues/602
>      https://github.com/ClangBuiltLinux/linux/issues/666
>    * ld.lld for PowerPC64 little-endian:
>      https://github.com/ClangBuiltLinux/linux/issues/811
>    * ld.lld for RISC-V:
>      https://github.com/ClangBuiltLinux/linux/issues/1020

What about armv4 support and big-endian arm32/arm64?

I had disabled lld for those in my randconfig builds last year
and did not expect them to get fixed. Has this changed?

I think pretty much by definition there will always be corner
cases that require a newer version than the minimum, or that
might not work at all.

> If we decide that it is worth defining a minimum supported version of
> LLVM, I would vote that it be LLVM 11.0.0. If we decide that that
> version should stay in sync with the supported clang version, then I
> would vote that we update that for Linux 5.12. Taking a look across
> various distributions:

I agree requiring llvm-11 as the minimum starting with the following
releases makes sense. The last stable release is still fresh, and that
can be built with llvm-10 on many architectures, but requiring llvm-11
now would probably let us remove some workarounds and stop caring
about things breaking in the future.

In the long run, I think we'll want to support more versions,
so if the current stable kernel (5.10) can be built with three versions
(10, 11, 12pre), the next one (5.15?) would go with four ones (11, 12,
13, 14pre), and the one after that could build with five ones
(12, 13, 14, 15, 16pre), all depending on actual technical requirements
that will come up of course.

We probably won't ever want the same 7+ years of old compilers
that Linux supports with gcc, but I would certainly plan on more than
just one or two year old releases.

I'm actually more worried about the reverse: as there is six year
long-term support for kernels, do we expect to be able to build
the oldest kernel with the latest version of llvm at the end of that?

E.g. would a linux-5.4 that today can be built with clang-8 through
clang-12 allow being built with clang-8 through clang-21 at the
end of its life in 2025, or do we assume that LTS kernel users also
have to use old compilers?

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a19%3DZdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg%40mail.gmail.com.
