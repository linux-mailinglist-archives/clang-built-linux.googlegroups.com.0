Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWHZ3D2QKGQE3UB3UEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 485E41CBDAF
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 07:17:13 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id y4sf1922328wrt.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 22:17:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589001433; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQT0aquCgIJmb+u8ghItsfD7TMhokSi0I1CeEmVswNr6Lry8nGKGg3KTzLrmq/G37w
         CfYL5e4oLZOES94RXZBFRDKNS3obgOhVmlfCK5HVfNBSXPKSi7+GV8+1brVuht6TL7L1
         elNIStJ1gGtDbCe3MumoRoXFg14M0Aqn398+uc47HFJtzJot5HB7nVyQ8xQ4/TGijs9J
         z4SeRYo0CQgJ9uBe0iUJzlpANwGiHFv7regTo4wAlnqy16LIWrvbIs+SvrXyp/v5+qGq
         mA00FWKgH/CVt5mGoWbCLcp3vgWKiWWnqJ27/ELrWmQCEADyo7/+el06R+3nbdD+w0Tp
         CBGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=k+WsNuxvrkROvKpftmDUBrBENlPSd/Vr6Vz/VlNLOjY=;
        b=HlEfQ13c1JzPkk6jQiIVCiYl22VVp1lE4TX/9gB2+mPAl6AlAObhe9x/2lxqssF4lh
         cQXpsgOyc64doj8yhqgLIvrHZMJUDVGQOQiglp52DKUEF5RXVhJ8LZuNU/e3ECGBWZap
         nLkOqHH69MSAqcw+8ZIoe/79t4kfjENc96KcF+XpA+v6SavPL+ppZOD2OmEW/4aKfm6E
         /6Owcd4+ym/ZQRkT5NV2+X6qLW7ndLjCRTV+CeEt8RthtRylorAY1HvBfZ5QfWWcaPny
         1ryZTQdR9fpadr3hIjTlub2/eHnccIwcNuvZOBufETibfkyYEGhiYAtG9oD9rLlo+Pik
         +3Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mSD5QP/G";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k+WsNuxvrkROvKpftmDUBrBENlPSd/Vr6Vz/VlNLOjY=;
        b=K6T6+ZL/bFV0xcXZ360Z/HgpfpwD/Le+1bLqP2/9Sj2x+EvUjtqmVv0kotfe20LnG3
         aBGblmDFgZQKgdt8skztAiiEpbYEGg5PoD9YA9+0UGtsT636DQDw+EZ1WBXP6bjbraxd
         eDuytJXVlw08Nqh9HnJAvsKc8gnue1Rj7qKs7Ei5CaVshboXogrC+YmBMPUBzVH6Uvf0
         eeHchtEZ1/MiJcbQrKlPq6irUstMp+hPR/8F+q5B6NfcsXOvjr8PCLm76ZqnSlUs0Hwa
         o6kcTbcVZVNpNHRpOhTvvEBaAUwvasFeYMPnYNHyyme8NFrJ6xbayNgbs074c3xqJ2Ya
         +7YA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+WsNuxvrkROvKpftmDUBrBENlPSd/Vr6Vz/VlNLOjY=;
        b=j6df260ff4OnlywNumBmGC9EAJ76snbfUuX24BeMvMLUNzVsaUmL4y7vMEribt1zj1
         UsBbDYBs2iOTzRFnLFVlq5o9yLjvvpdOP+V0h0LeMrLoF6mLgQaRHw1IZQZiYitcSVo9
         8gPT4+QrCsqpxJWuKbN8E47NkWthk6qWLjkGAzUmsCcRio7wX2nEo8v0VebO0qBzSYez
         UDxrxKObEQVmuAokbKy/oG3pxVYvE3k1GvmznT4e1rG0Mhe8WKXgxfAaRf6jHPD8PI8s
         MlyiLoEmzEaZ8NE+q9vE4ABAVJuRmbitQga0g0r31f3IvRzJwyPNPo8cz6tL30xeNVsV
         ljgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+WsNuxvrkROvKpftmDUBrBENlPSd/Vr6Vz/VlNLOjY=;
        b=YUGYaKCDOu6ZqccSCFAvhaMnO+CVZCOrJty5aPqGQ70aNDn79hIQRnpRK9+FwWVgLd
         +b3i/mQGEEE2uwuq2UlmrQMFho4kq5XNTu98WeGfpOjVvdfQOtx2Uk1fJ94xiU3f+NQA
         zalYC6Bo4SarV2daMP2Koaz79dWeiCzL0nKFVlwRwhvmg6BxW6Tsjab3OjAwlkjHRFVT
         reqeUTOg2viwLJ2aJa/6z8BV4YRcMv0oiN5y7wZfWCAIxl3+irgt3Er56l8MeE7bTeqP
         tIk7uuvfl6KLVEqUfwOTBdFXL/0PTH30soUVYzQ6/kRRXTHEQzh9NculYxWoRgWzcFts
         /6vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaFiqt9gXlKnEjoSNLJ9nHrVLVEQCqpaAXeGK9RO27RueNeI+ok
	AU2eSe7V3Q/PL9uKrojsnxk=
X-Google-Smtp-Source: APiQypIgGkqz07HAKd0ORuLMRFp6L923GDW42Vvc/2K8GaIaL0z2tDk4JxasFArhzYMJyklu1iuBeA==
X-Received: by 2002:a1c:9d0d:: with SMTP id g13mr20511830wme.102.1589001432973;
        Fri, 08 May 2020 22:17:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4088:: with SMTP id n130ls23159092wma.2.canary-gmail;
 Fri, 08 May 2020 22:17:12 -0700 (PDT)
X-Received: by 2002:a05:600c:2945:: with SMTP id n5mr19413282wmd.148.1589001432292;
        Fri, 08 May 2020 22:17:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589001432; cv=none;
        d=google.com; s=arc-20160816;
        b=AXUq3x+f86kcEjWn9t0re4ffcam1RQ+La/Atfa41tGii7n1k8smfZZFQaLd4Fy1t5p
         6Cs+oGPcaHs2ALwTL54gOZHny+i9FpO4R9r+1baa25vZKJoYa6Aciury9LaobWizcG1C
         04vEeHowRkqOL9qQyQvh9sZVDAuiIof9MKbLqdMMl0ZN9tw4mGGPPsen2lJH2Rh7wSMv
         5mJV91tw5HUkbF1Z/COMYh+YD7ww8xktsa1nHQ9j69D9/QIYkn/g8p77UT4AO4SuWWIN
         8IxUGvDPzXzE3NVcMek/s3FPR8N8H2SLA3KDFRA6K36IDD3IKuRwNQcSMQ0iyVav3AGc
         he+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dfo9KoH2D4yfZrFFN82AGm1Z1RVplWs9/lnb0VGTJLg=;
        b=eydOoOMzStWJVTlhnbySlIataoqK4sGrD6S4dCooQEUKamPKWCAD7lpJi3R7f0VQTt
         ypuP+RxiQGFEj3ybQpLUnQjbJd/Z2XM6Kv/leSheNILkkpE1EvqAZzbQ8IOwQsUfi9xl
         dHmxYamQhfQhjktvC2357BMVprfiu1/FRl/cx4JDT9g2ZfTZb+8L4ZMRv2OBsu9OOjsz
         n6rubahbRF0xf/W8nTQW6S9ksUm1CY4p9uYmcVaKtjkq6ui1nQl+KR+Ye0FODuZaKfOI
         dxyBpdX6Y7TG4MLNROIWUue8dNbMti+Cp3vP5gnh9x/4c1t/E+4ImHMZv8oM1lOK8Vr/
         IQZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mSD5QP/G";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id a22si186881wmd.4.2020.05.08.22.17.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 22:17:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id z22so3117095lfd.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 22:17:12 -0700 (PDT)
X-Received: by 2002:ac2:4c3b:: with SMTP id u27mr4006793lfq.212.1589001431708;
 Fri, 08 May 2020 22:17:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmG04V9VPtfGKhWYQ6t3YP5OHXUGJsK=+0b4ZZPVrSuaw@mail.gmail.com>
 <20200509040516.GA1158@Ryzen-7-3700X.localdomain>
In-Reply-To: <20200509040516.GA1158@Ryzen-7-3700X.localdomain>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 9 May 2020 07:17:00 +0200
Message-ID: <CA+icZUWPceVKrT1v1PLnBAuGv2g_QEvCWC5U82pLVXOckzdjsA@mail.gmail.com>
Subject: Re: [INPUT NEEDED] Linux Plumbers Conf 2020
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="mSD5QP/G";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, May 9, 2020 at 6:05 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:

> * More focus on stable branch testing
>
>   We focus so much on getting the master branch of both repos working
>   but I do not think that we put much stress on the stable versions of
>   both trees, which are ultimately what most users use. I have tried to
>   fix that this cycle and LLVM 10.0.1 is looking to be in a pretty good
>   spot against several distribution configs.
>

Here, I am testing with a slightly modified Debian-Kernel config.
llvm-toolchain 10.0.1 looks like a good "stable" one - in combination
with Linux v5.7-rcX.
I can only speak for Debian/testing AMD64.

>   I have been working on a framework that tests several different
>   configs in tree as well as distribution configs to try and shake out
>   as many bugs as possible. I am not totally happy with it but it is
>   coming together:
>
>   https://github.com/nathanchance/llvm-kernel-testing
>
>   I'd like to run that against LLVM 10.0.1-rc1 and reports the results
>   to let it be known that we care about the quality of these releases.
>   I will eventually start testing the kernel -rc releases for the latest
>   stable (5.6) and LTS (5.4).
>
>   I know that KernelCI uses distro binary packages; I know at one point
>   I did a survey of distros and what version their clang package was. I
>   should do that again to see where things are currently.

I encourage to build and test LTS kernel-releases with "stable" llvm-toolchains.

> * Evangelizing LLD
>
>   grsecurity put out a rather interesting post about using LLD with GCC
>   for faster kernel builds:
>
>   https://grsecurity.net/faster_multicore_linux_kernel_build_testing
>
>   It might be beneficial to talk more about that and start getting
>   people into the LLVM ecosystem there, instead of through clang.
>

Here, I had some early runs with Linux v5.7-rc1/rc2 showing that the
fastest build on my system is done with:

Debian's gcc-9.3 + ld.lld-10 (selfmade llv-toolchain built with tc-build)

Fast and slightly reduced disc-usage compared using gcc-9.3 + ld.bfd
(binutils 2.34-6).

I am here on a Samsung sandybridge CPU laptop.
A build with llvm-toolchain v10.0.1 runs approx. 5 hours with "make -j3".
Thus, I cannot do a lot of testing and provide detailed numbers.
So, I am doing currently tests from RC to RC - from week to week.

To convince people and for ourselves we should look at "numbers".
Numbers means to me:
#1: Build-time
#2: Disc-usage

I suggest to test these combinations:

#1: gcc-9.3 with ld.bfd
#2: gcc-9.3 with ld.lld-10
#3: clang-10 with ld.bfd
#4: clang-10 with ld.lld-10

...and optional ...as Linus started to switch to gcc-10 (post Linux
v5.7-rc4) and gcc-10.1 entered the stage of Debian/testing:

#5: gcc-10 with ld.bfd (start with recent Linux-kernels)
#6: gcc-10 with ld.lld-10 (start with ecent Linux-kernels)

[1] https://git.kernel.org/linus/9d82973e032e246ff5663c9805fbb5407ae932e3
("gcc-10 warnings: fix low-hanging fruit")

People also might test with clang-11.
Personally, I have no experiences with llvm-toolchain-11 and currently
no big interest in this.

> * Evangelizing clang
>
>   I have a fewer people who are very anti-clang for various reasons,
>   including licensing, code generation issues, and lack of speed. It
>   might be interesting to try and come up with either rebuttals or
>   other good reasons for using clang, such as different warnings and
>   point to bugs that it has caught.
>

One ex-colleague of mine - a openSUSE maintainer - refused to look
deeper at LLVM/Clang due to the licence.
Nevertheless, he encouraged me in my work in ClangBuiltLinux.
I cannot say how to convince these people, but such things should be
on our radar.

As a new topic:

[ More documentation ]

I have here a lot of small "howto#s" which I collected while my
working with Linux and llvm-toolchain.
A "knowledge base" on specific topics with examples?
Maybe something like "stack-overflow" - FAQ?
I have nothing in my mind and big experiences, but spent a lot of time
in looking through the Wild World Web when searching for answers.

"Share knowledge aggressively!"
( Nick Desaulniers @ ClangBuiltLinux Meetup in Zurich 2020 )

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWPceVKrT1v1PLnBAuGv2g_QEvCWC5U82pLVXOckzdjsA%40mail.gmail.com.
