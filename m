Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6OE6T3QKGQEGA7MZFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A642116FA
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 01:55:39 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id y73sf9896935pfb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 16:55:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593647737; cv=pass;
        d=google.com; s=arc-20160816;
        b=htuvEZ3d8ZBohZ+3G1VieFmwMTPy3/pMMZ2DXtg0spfL31RYWqVfWRyYlMuXYO2NgH
         VFFRcCRpccwCeF+5c5Zf/DF+BHIqDcB02+rbZTcB/F3+y6s6PzMhjwPHL6sqle4ry8qv
         4txJXdvhNG2ZePOBlicJ/nlXyUSOvmxcke85cqYtx6YXfo0hDjLtX31JN+It7vClHtl2
         DlXBKQb+Vriw4amKvFg9x6yHvH8yA125eFcPPM4U00mX2I4/0hCKJpsPOoLYmGxa18hX
         VCVQvy1AjKUeNj9EREywaB8OR87pBRJwL/RLtN4dgK4NXs4vBF82ct65KFp7x0ZuEP5q
         RoyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=RaJg3vWObWn1MFSMVIoUBhgc6cehj2CfUXyJl9Jjbv4=;
        b=fbE7XopDCI6sCe9MD7JIzYCci/j6AFsbiCr2gT7Sjw047d0fG56LZuiYY27zcMp0Ow
         ScXLwHKBQ0EragD3LTwGGaWTM3dLTShNREAYLykIMhj2dGJCD55M/LaqBO1FZiYSf3n4
         nIYP8fjZvOVbog8OjKM7eJrfLYjSXADue/Rl+Cs68wQwOIdyWKAvSeAMyVPDtS3iXKev
         OOH8EfBf+6l8dzVt34o8fnvim2BBQvf2EKTZ5uFzMslvowmnS45A73Hpu/YM3EIZD2GX
         S+V15yWKiFgB31XehgQGpNNb4x/HW+wZZaGShGPAdHnkYB+/A9IXVRZk45KLQ+i9vtBR
         9C6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eaGGmaeO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RaJg3vWObWn1MFSMVIoUBhgc6cehj2CfUXyJl9Jjbv4=;
        b=KQL/GMipq8UYamlbTc1hM4RGfGHOAfXEE5laJTD/WoGk5QpdPAE+0amkhy12dNBeNX
         jvPu7HaVGrYCXXCCju/NLTxK005zbfK43T4T8VW2xS04tCf/bjrjY1ET1F+7Vp+UM1HS
         MuOwWMVK5AZhmis6YFibFUjqPZqIrwgNEATOF9DlUMoYvjnI5SohmV50J2ptgAl4laTv
         hTOkW5TXLvE64pHBq3p8FNM+d38foRAcnwbGrwkFzVgUPKH0v/TrCUsTlCcGLzQdIFDx
         wSQFtnDIdoG//h0CzZ9jQ9XFqH/cRgIAV1LNNsDpCrtTXWwNz7SERUufualgd29F+te2
         z9ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RaJg3vWObWn1MFSMVIoUBhgc6cehj2CfUXyJl9Jjbv4=;
        b=EawXv3YYzwswYshwR2wWN5dFnbBm3vhiJI7ku/xVFkgTxBPWVJ/Mk0jCQYsqN3aRGk
         ZSZRJzXZW0a4Wzfs4HVNPZAVnDBXnTu9RrxN+zvfne809ZzEh3d4GGQYm4veG8Rlbjg4
         Gr22hrSfjoFES1qcYMlIu5N0BTBF5m1M+5oYT4lMLBxHzup10/mhPxSJn1Ua0fB3TT5F
         VE4I9q+ilAk7ciPsITXgNX3xxA7waOvV9PncE6eP923bvAv00/IlHgcbNBLqxEePKvqI
         eEOTXembH6IF3G6GjURDjNkgCnq1K9eeDnfktEjZT6A2acYGI6DEcmtGfu62UdUYzQoV
         Ydig==
X-Gm-Message-State: AOAM531tuA7DG9/AGSWktcqAW4SaHKUwBA2Rh6LCrq85z4rgOwL+f7GM
	nFnbjKy9o4or45v24tmbpbc=
X-Google-Smtp-Source: ABdhPJzLK/l23/mwNzAGgKA4n/hGrSWlh4B7fmwvPQ8OtPWcxF6Cu3OC4QATdTy4v0TX9wzSGZioPQ==
X-Received: by 2002:a17:90a:b891:: with SMTP id o17mr15105786pjr.202.1593647737629;
        Wed, 01 Jul 2020 16:55:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:658c:: with SMTP id k12ls1574353pjj.3.gmail; Wed, 01
 Jul 2020 16:55:37 -0700 (PDT)
X-Received: by 2002:a17:902:c408:: with SMTP id k8mr24991670plk.279.1593647737182;
        Wed, 01 Jul 2020 16:55:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593647737; cv=none;
        d=google.com; s=arc-20160816;
        b=U//Hrt1gDA/8bEfWLQpMCY2XOJDtUUJBKU0dQxB9AFWP0igIyCIs7d4RkcS3fSk89w
         XpcHDGZgEMcWwGle8KPo9UTRjK9WYxWeJmBCVDO7zEI1Pn/LaI/KysShssJh0sdXBJbi
         X307lQVcgAWLBWD4r4BLogzOJa+0RlmVhSb56nEHiq0lx28fCjBmye8KFrxx9O7pwBPZ
         JkJ/xqnV7bt2kLLf8Thu3qZ2YaxLYT8fEhFIYkUO4iZUZWyt+AjlUl2POGVgiSaXe04s
         xRixg8R7/KqH0+c/8oM5udIC8jibktX2nR+b6mPkDwzlYgb9Ev+bKaKjVNViR7Qc0O9L
         J00Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=+BUkt5ZmfDL0h0ul4h2VRiFjbCQVQUZp5QkHbp83KaY=;
        b=vagWoHDBWy0tyyrkPf8djRbarvxTFVi3Q/iPKBJ8+HFzD46Sl/mEin+m09qsqNXT1x
         p4pN3kjGN6CkrSATnWzN5OuaosRVuWXC4cwvZYNZ0LglEAXnAXP1duO5hmZp4Z2fjhE1
         nEq0xiRPv14MDHEjdk1jBxqIBsm1ZnkUjSBvwuEHhIucRjuVv8d/qDj4F5dNdYpCs+Es
         dqBsWODbfBA4XVf8yTrNc7SLRVY43HJGn9jseaFGJvSw7YXhQJRlb04OtxpNpDnd0M7k
         BUj+axmSvlPKhXSkB+tmYqwNN6zdNXoJ/Wlzgn8ZJKK/inGmOsHbRu1QwNOden0Og+DN
         BTyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eaGGmaeO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id y19si308192pga.4.2020.07.01.16.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 16:55:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id bf7so1213143plb.2
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 16:55:37 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr30417487pjb.32.1593647736534;
 Wed, 01 Jul 2020 16:55:36 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Jul 2020 16:55:23 -0700
Message-ID: <CAKwvOdnb14gJDC1ngzvLzNtzLGiz6wt_wAWxCj8OEAW0y_df2Q@mail.gmail.com>
Subject: Clang built kernels
To: ikey.doherty@lispysnake.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eaGGmaeO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630
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

Hi Ikey,
I saw some tech articles about Serpent Linux/Serpent OS, and the plan
to build the kernel with LLVM.

I wanted to proactively reach out, say hi, and link you to our site
[0] and bug tracker. [1]

We have some patch sets that we use in Android and CrOS for more
aggressive compiler optimization that may be of interest for your
distro that we can point you to:
* -O3
* AutoFDO and PGO profile builds
* LTO
* CFI + SCS (security features)
* Polly

Upstreaming these is a goal and work in progress, as we consider out
of tree patches technical debt to be avoided.

One thing to note as well is that we enjoy collaborating with GNU
toolchain folks, and in no way want to harm our relationship with
them.  We still think the LLVM toolchain has a lot of catching up to
do in many ways, but are happy to engage in friendly competition to
the benefit of the users of LLVM and the Linux kernel.

Best of luck on your distro!

[0] https://clangbuiltlinux.github.io/
[1] https://github.com/ClangBuiltLinux/linux/issues
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnb14gJDC1ngzvLzNtzLGiz6wt_wAWxCj8OEAW0y_df2Q%40mail.gmail.com.
