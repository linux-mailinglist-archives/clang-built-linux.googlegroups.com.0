Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT6M7X7QKGQECS5LQPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4972F5497
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 22:29:52 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id b26sf1072618oti.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 13:29:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610573391; cv=pass;
        d=google.com; s=arc-20160816;
        b=06UHU3RUbS7wiqa0/Xk0MAif7DvyQzU09ayCtR8cKSI6KvqdRMxIilov9630dOnnHT
         ebwK5+DAl1IKd7CbrXWI04FUG5ByJrnFgpkXA7Bk87+oEuXR/KhZD5V5c3MF9JeBZ8XU
         Mq25ruwbzU3wzJ8egJC9oscBCnXS/ljvXohmnRTpZpSektdS/nYHJiTAt+LEs8t0t+En
         S0FpvyJc+fVyFUc0gyfxFCGh+q9lU524PKrkZTtirEnsBdJQ2O9690mhRHPolplUKTVP
         3f0MzmDcSSLIGhCbDzEAKkxh+fC9MBCFbLV8Q7vct1ZSSKzSRgEWQ8YIoErikRufXCfj
         IZBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=bKhbIkrQ0rJ4CNAp0N9UnaDMsW+QmYZdSJ30A100QC4=;
        b=uM5hTI7r96gARLAKdFVjW9IxvkBDd22eGX7GgZf5lNDRUqrA4E8c4os7z7V1+5t0Hw
         PsjQT76i6JIy8dkL5FqZDchMospM2xNywhh5J1lDNyfS7CjfTxFrh/j0ycNLonLnP+Gv
         /FTnmpnO2UmyMgid7h2xDuHHBFAK6TMOvuKfM076phtDrJtnLyQiywueprgg9TqPWL88
         ehoUHWcadGajruUg3W8cErJwe2cgjsrUfVtpi5s2Dvb3Tr324xoIEqaaUyJvmdsItPnA
         Evg6JyA3FGjz1+M0Yvjr4wnf+IR5FJ0dC3oijeur20LGlUhJ95iBzXy/KdMICs3KJNVO
         6V7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VixkwrJN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKhbIkrQ0rJ4CNAp0N9UnaDMsW+QmYZdSJ30A100QC4=;
        b=VYnOBywdlSS7XN+O1ro1e56IFefmO7hozmQ6YYCzWnIL40HkF62nZbsgSUFgSHJW4V
         4Yc/TCUctUB2XzQlMMTFjIm4GW3/pUIypiYVTD/IyvqlZkSxCX6RB6HrGrCL64Yc04iM
         QP6RMiLG9FwVLJXBq43UVQcTUh4gOFiW6g9dhfV1/ANP4EosXc+jpEtlu+aOzLW0vd6L
         0eukd3+bsDfdTQmKxygheF6o2OZa+OwdrqxOQ1L1Dv+kqLBE7GS/JztWZcWIqJuOXzfh
         HrbwGvd5noBfXkmjngFGereINn237Us0QKo+Rz+/a7PpJXvv8cpcyMsB1mETZX73rD2j
         rHQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKhbIkrQ0rJ4CNAp0N9UnaDMsW+QmYZdSJ30A100QC4=;
        b=Zwwa+a/eQO+ZTksRir8gtPjDCTQZIwlQMvKwPpSZS91otG5S+4FwI/E4BUCKAQkUC/
         1xrGfTzzmsZrUusA7Y961WVPA6tFhIdW47w6PA3xG5We5pze13bZY9l1acH7zeycwUd9
         VH/fJcTtKzcBUqxQ1AcVMOdJluUFJ5bdVfcgKlN01F3hN2RVZpAUL4LlzeKOkdY/Lnh8
         /V0CQAQGlRkMjAETGLyFcXqtX/6QsYk4sl4OA/juZfOKHY4bvdpBhGQoWZfnTZIWMO77
         OUaH05/bGxZ2kL/1vDLISdWZPRG31H6adkoKglbL0J+reSS0xjtdR/B4sjQEwp1yzD+3
         KIAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bKhbIkrQ0rJ4CNAp0N9UnaDMsW+QmYZdSJ30A100QC4=;
        b=XsV3FkQeK+zU3OYqz+TXJwUGfy61qtAszjnYZcbq9OkLDW+7A/EtpXvX7xBTa86wTV
         6fQP8pOgmAi2FsCWuYFiasDsCNF/m1IkEKakUeBRRN9bpTdMh9O/0zwpxbhWHu/dElWy
         m1p+k12VMljNtLXe41UNbfNHXNhZoGWdOlENQyhYtO8gRpCaHRJNw5QW1Qgroc2itvOq
         J22HvfrxJBoa2dYVnzJi5IK/wt9G364xDCO8MRbxVSlVKVGIN9An9XSPADnlikIRbYDr
         Z5Gk4w6Bx6pxk39OZljSJGsPIfZ4zWDrAh3FevPNOWc1AoM23ttb4YESqsL9YtkfgjPu
         /KgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306KF8NGgVtrZ7kSshYys5ukqZ1sOpDPwKaGQzLLxzl90ob8/U/
	vY6wnLq6Yplz5fPBXhx0xzI=
X-Google-Smtp-Source: ABdhPJxvphavSwmKHSwHX38I5w1d5mT8jZIE6tkUbwHhZOe+LMkMiZn/o8Un57uiEnvMfaDRGdfNug==
X-Received: by 2002:a05:6830:717:: with SMTP id y23mr2645600ots.268.1610573391800;
        Wed, 13 Jan 2021 13:29:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls894026oic.0.gmail; Wed, 13 Jan
 2021 13:29:51 -0800 (PST)
X-Received: by 2002:aca:cd02:: with SMTP id d2mr759141oig.79.1610573391419;
        Wed, 13 Jan 2021 13:29:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610573391; cv=none;
        d=google.com; s=arc-20160816;
        b=iV2hom3CrHQJwdUWpP77A7Shd1762/L8os/zia2I7tC0UBlkhE+P5tlMLp3i5la/Tm
         Myvw6bamBDA/jgtoeTKQc40LH0AKvJoJ8HAvuxChw73bBGnorBT0L3P2QQxdPrqWKxKi
         epZ3/T3ki5HzfTfDG0mxL44PqWmYA/zR/8d9VHdi4E1ove+zKHegMeUsqpz2KnBD4RjD
         KxrWIBT2vfJoNG5cdiKN4tb2iXh5utUMsGRtZdSubT4rkDNcoyJN/JuoJtHTShNnPbpH
         VY84LMtJqr1VfcS1wlgGQN+Pr1OqvMvq/va9lohrmfRifGSaKJUOCBREvc+jat7I+mHt
         Egug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=lStjb4ExczUbzNWAFTeoCu7jyeu5OZNN14OU0idRgcs=;
        b=Idum6v/kCpLWRX4wigG2vdYTKxwYPZvivKMMstRsiZFy9Lm2HfItP+whk/qvQE2jC/
         MWAGYbqLWTSnO8YMk+IKbtC3Do7KObNPhW9K09SYWBvpSbSX/N2HEQvGmBBRHJVQcNIk
         rb/LrMhFI6g9lCqWQReKnCQrbLN/YK2JkFic7YiMd+/eGzBAafkkjPhYtJb9EXRIDFFl
         5ek7+UYk3dOvSEQG8IUnLnoa6qDxRoXwLpgTOVZYF1xLJ47g9qRttndQ+9mRjB30Iz6o
         7X57vkZkmPc20AB2Fg8z7EYBkGcw7qjzigblpO77iXAbhPvpBEF2L5waq/DlwZa0REb6
         ts7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VixkwrJN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id u25si269685oic.0.2021.01.13.13.29.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 13:29:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Received: by mail-qk1-x735.google.com with SMTP id 19so4189525qkm.8
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 13:29:51 -0800 (PST)
X-Received: by 2002:a37:584:: with SMTP id 126mr4058744qkf.332.1610573390783;
        Wed, 13 Jan 2021 13:29:50 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id c14sm1740403qtg.85.2021.01.13.13.29.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 13:29:49 -0800 (PST)
Date: Wed, 13 Jan 2021 14:29:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ndesaulniers@google.com
Cc: android-llvm@google.com, clang-linux-fellowship@google.com,
	clang-built-linux@googlegroups.com
Subject: Re: Clang-Built Linux Meeting Notes - Jan 11, 2021
Message-ID: <20210113212948.GA1894897@ubuntu-m3-large-x86>
References: <000000000000e3155b05b8cea419@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <000000000000e3155b05b8cea419@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VixkwrJN;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jan 13, 2021 at 09:15:52PM +0000, ndesaulniers via Clang Built Linu=
x wrote:
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>=20
>=20
> Jan 11, 2021
> ------------
>=20
> PGO patch:
> https://lore.kernel.org/lkml/20210113061958.886723-1-morbo@google.com/
> Regressions!
> Arm: https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-lar=
ge-x86/T/#u
> Modules: https://github.com/ClangBuiltLinux/linux/issues/1250
> Ubsan:
> https://github.com/ClangBuiltLinux/linux/issues?q=3Dis%3Aissue+is%3Aopen+=
UBSAN

I did also add a 5.11 milestone to track breakage that came down during
the merge window.

https://github.com/ClangBuiltLinux/linux/milestone/2

It probably would not be a terrible idea to do this for LLVM 12 since we
have that branch point coming up...

> CI back online
> https://github.com/ClangBuiltLinux/continuous-integration2
> CKI: https://gitlab.com/cki-project/pipeline-definition/-/issues/1
> Linuxconf au
> Thoughts on mixing matching + still supporting CC=3Dclang even after move=
s to
> LLVM=3D1.
> https://linux.conf.au/schedule/presentation/107/
> Dwarf5
> https://lore.kernel.org/lkml/20210113003235.716547-1-ndesaulniers@google.=
com/
> LLVM_IAS=3D1 enabled for 4.19+ for aarch64 in android.
> Objtool IAS issue: https://github.com/ClangBuiltLinux/linux/issues?q=3Dis=
%3Aissue+is%3Aopen+label%3A%22%5BTOOL%5D+objtool%22+label%3A%22%5BTOOL%5D+i=
ntegrated-as%22
> Llvm-objcopy cros
> Gentoo build system runs as root
> https://reviews.llvm.org/D93881
> Polly
> https://github.com/lazerl0rd/tryme_redbull/commit/c2da3277cc0143c1351b9e4=
9f15e918041c9aef1
> Reliable stack traces for arm64
> Objtool: https://lore.kernel.org/linux-arm-kernel/20200109160300.26150-1-=
jthierry@redhat.com/
> 32b LLVM_IAS=3D1 arm
> Likely usual issues with CC=3Dclang and ARMv4
> S390
> Looking great, just need qemu fixes to get merged and packaged.

A step by step guide to play around if people are interested:

https://github.com/ClangBuiltLinux/boot-utils/pull/28#pullrequestreview-564=
574983

> History tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/
> =E2=80=9CClang LTO Support Looks Like It Could Land For Linux 5.12=E2=80=
=9D: https://www.phoronix.com/scan.php?page=3Dnews_item&px=3DClang-LTO-Linu=
x-Next-Queue
>=20

Cheers,
NAthan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210113212948.GA1894897%40ubuntu-m3-large-x86.
