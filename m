Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIPOSP4AKGQEPAMKAMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7612C217AFB
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 00:28:50 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id e6sf30843426qtb.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 15:28:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594160929; cv=pass;
        d=google.com; s=arc-20160816;
        b=SixXguK4vnND/sc4Nwau602bvAVaU/WjFH9s3xht01fsbLjYyoC1w5kmIfAx57RQAR
         mV5pxu8vyDobpgm/JILEtkPKaWmKeYU2KpV7o+znIy6enFwBM3KVD+e0ObxdqDF7Ya+M
         N/NFMRpmDMnkUNaRB+rjnM8l0hxfRcSXmC7ALXSeiKxR4In15y0SQgLaGFy9zkAXcptZ
         7R+FBbMTNWBt0Ous8ca5GBSxKAsVari95dW5EanxLWEtQ+/xRtGopjMUGyZ+6rgVXQ9o
         M4AT2mNPytD0W8OdxTmgcSMPqNlV5BVew26Jo0XbSEievOI/GGWQ4xQUsgCBBN884akY
         k3JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=nieJKDGPlJL5q4sBA34YrPwVxJyEW81nGKImH2pcUC4=;
        b=fekt3Ag4lJnBlDbFcCk/bD8df/RXjWaTZWQXpJrb6Rb2CbqWauuRtbTOPu15U42GLY
         b7YGKom6jchrQSgzFPflEnaw8426rye5MECfI1UeSCqE3wTqVrqE0Wkx0d6ex/6+h+F2
         5mAkj9K/X0BZF/TZF0ZumN3L1g3RB7VArkV49oQVzrtgZiU+b000sI74mjKbwUYac8CS
         lxOkXm2RQ/JvuUk48P80JZix9NaEO7Xxj3fFJCoZWoe1YHkP/z7Hr3zapiP9HPUbXoE8
         aVueEZkTS4yomlAtYal7c+5F161LZf1QweHl/8TAA9lMbHnJHF2KUboq18EViWPQWYUv
         Qfmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EFyeuQkD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nieJKDGPlJL5q4sBA34YrPwVxJyEW81nGKImH2pcUC4=;
        b=GUPm3TBanxVLMKCgLO/xc9l2ntE6SU5PHI1qI+5CXcvKMUijcJu9Akl30kGrGGNct0
         6XKVHgKovfFyqiHwWv5oFLEdre5L+m8Elq6aMLrcNB9m6AZj1qYAH/jmdcLCZgK1lGh5
         kD9ttQ8fMsBJDveoeTuhSAQ0X2YZFg8PX8RTRgo4+Ehn94stxc+1Sis59WVWqCses90K
         ZpcEGi3cSWuQbYT2MuPFKxLFT7fOvKhYaei5XcATEu/cYSycXTtld+n2n8yLTCyjVrP5
         eg6mKMCWaCzudBCk5fx+fQmkrZeyFJ9qFvmBZNt3pRCWzWXuaqosyMK07bP9jGVLgLE5
         4oFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nieJKDGPlJL5q4sBA34YrPwVxJyEW81nGKImH2pcUC4=;
        b=DiVD2j97PmIjbYXvCXFaNhbqMmIEqg97kzGPNKhBeNRK8GWxzCtqo/BbBmBcj7qRYo
         s331C81JirooVZBmH42VfJg4JNCesvVLf+xkBzSuNkFQqsZQHxCvrGudL6ZPTdTU8PsZ
         naXifRCsCUBLSPziQ3DId6Z/5eNDa2GON00z1SXBIN/jzatDwxhCqILlVCyCCHb+iDHx
         FptjuGs3QYEK3NHqfwMj1dDWpEuEIURKFrHyqx2uf/KSo+05gM0PagT6sKLtWEAnvLRO
         ohZdM6uIH8ZJ/10A6Plt7k0cEffZ1uK0dhYZFwWjZsuqnmJ4HC0Ls4OuFr+HAbxCnDcq
         8OWg==
X-Gm-Message-State: AOAM530Bod0onwymOfZnSEQuWFothG2X+SStupjCKUFxwFPOOyVCDsgz
	c0KTAG1/4VoTOsERbCS43es=
X-Google-Smtp-Source: ABdhPJw9XrR9mzdvKeQg7eh2weRBn2fnyPB0ND0wwkza+MhIf6Oh3xxVVIGQ1BVoATYe+uN+8mhSpg==
X-Received: by 2002:ac8:4788:: with SMTP id k8mr5771617qtq.120.1594160929293;
        Tue, 07 Jul 2020 15:28:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:df8a:: with SMTP id w10ls26772qvl.4.gmail; Tue, 07 Jul
 2020 15:28:49 -0700 (PDT)
X-Received: by 2002:ad4:4732:: with SMTP id l18mr52099484qvz.208.1594160929004;
        Tue, 07 Jul 2020 15:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594160929; cv=none;
        d=google.com; s=arc-20160816;
        b=0FLHWIZ/ItDmsq3GDRUYO/OPary/SNP/meRbIWAsXlPfQUhqkfqr2RXC/ljK9GNKeZ
         oM2JPiBgRqmpcaHvKnl53s7dzPml1e8tbRRfpgtdUF+Y/plIQ7aDIrKcDQhu/LFG7eJA
         uGy2u7MiLrBtuFlADOB9eKcdpgx2MO2jSfdKjBIPz/Xnb78K+r9ut9mNc1tTpYTVxbyo
         g5FcHvJ1mXDGXrvrEuuHNfKE4uzqTX+43kER09sx13aqYXnJarNy7WQxej1FOu1MStMy
         csiOaogrAboXVUAks0QTn4dKkFuN+EkBJx6RGPVHiK7hS1+zIw/PV04QBqaKc2ygAXeW
         9A+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=67WFP8sFpxBV0Q6zt49ttZRypFn5LSnvwu3RrIXkUbY=;
        b=b0Wj3EUSBPflCtNRsAYmcoVKGai2Ue6I0DeeEiS4pPL0OWYGV7HDHILrSY6pmGhGwI
         TBrmHKt+dXJQGn96giUsAJ2phdIfXX39cOy7hqi1z7I+7QVIBzAxDJl4i9r/HamFwpt9
         PAHCTiXXnUNluDhMYNFeprwT+7zO/fF93nGimOntLD6L4RXl9rlOHIqrmilR6HIJ09+8
         6wPJ6z77T75ZuhUVamfbGgT3ZjZkVWluiLoHK7jEjpFEQHXm4UYq4BsDFJFkfPDq9CUr
         AkVrRbYGvmaxuBsCctBMVvkG6QgnODd60wFL7O40hIIcKSYBkm+wO4vUs2rS7t+/lg4K
         26CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EFyeuQkD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id q14si1363802qtn.4.2020.07.07.15.28.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2020 15:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id t6so20690924pgq.1
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jul 2020 15:28:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr51614670pfu.169.1594160927699;
 Tue, 07 Jul 2020 15:28:47 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Jul 2020 15:28:35 -0700
Message-ID: <CAKwvOd=1q5u6-pKy3udbZhgzyCLgswVddqAhCWdAJHUWU8+v1A@mail.gmail.com>
Subject: Linux Plumbers Conference registration now open
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Behan Webster <behanw@converseincode.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EFyeuQkD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b
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

(bcc a few internal mailing lists)

The Linux Plumbers Conference for 2020 has been set to take place
virtually.  The conference will start on Monday August 24 2020 and run
through Friday August 28 2020.

The registration fee is $50 and you can sign up:
https://www.linuxplumbersconf.org/event/7/page/47-attend
If you need financial assistance, please reach out to me discreetly
and I'll cover your cost (assuming I've seen patches from you that
help) out of pocket.

I'm working on putting together an LLVM Micro Conference, though it
hasn't been accepted quite yet, I'm hopeful that it may.  I've
proposed list of topics:

LTO and memory models
Optimizing kernels using profiling information (PGO and AutoFDO)
Clang and building i386
Clang and boot testing s390
Continuous Integration
Improving KernelCI integration
Improving 0day bot integration
Using tuxbuild
Setting up CI on the LLVM side for Linux kernel builds
Cross LLVM/binutils testing
Coordination with GCC developers on GNU C extensions
Improving compile times with Clang
Feedback session; what's working, what can be improved.
builds of LLVM for kernel.org
Barriers to in tree Rust support?
clang-tidy and clang-format
how we might rewrite genksyms abandon-ware using libclang
Unresolved from previous meetup:

Improving our home page
Status of each architecture
Call to action / how to get started / Evangelism
Improving Documentation/
Maintainer model
Minimum supported versions of LLVM
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D1q5u6-pKy3udbZhgzyCLgswVddqAhCWdAJHUWU8%2Bv1A%40mail.gmail.com.
