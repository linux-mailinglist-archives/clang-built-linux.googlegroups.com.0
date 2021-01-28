Return-Path: <clang-built-linux+bncBAABBBHVZSAAMGQEHVSVSDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1FE308116
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 23:28:21 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id gj19sf4310374pjb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 14:28:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611872900; cv=pass;
        d=google.com; s=arc-20160816;
        b=VnGAuUlVmQFlhNS1U8kObFvQiKecc4NVFtLGP6zWKAhsUAtu9puXKEGAlwvI/PRyBk
         dT4Y8oC+JvF1BlG1oKpyIcrO6L4bHEiSRAO08oN32tRqq46exCiTIIfYIHnnmyzoB920
         0SggWdFrqYn9dqXPIpj5XsipgB7XIL0oK6FGbCFAKLxAMQnXXADwBKK443WHYliJRC+S
         rOiNLXNJUpWmLpdiwvAe+tMYXKCWnJdwl357aVs0s1tkSypEpapXtAgF5hUrzo3hQ2Lf
         30HPttsQ8Z7qMnxy12MjatekfPuFqk1PVdkQhB9B2YpLyB8o7D3+RUQ+rvY8HtC4o29y
         WN9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=k+kpzkEhENSi1/8Uxi5nOtg6CdSxOUybH8FARjrWmZE=;
        b=G5Jkpk7sZjtyo+sbY52xnT4UILQCApinmZyaFmHDu/B/jzZI2H3wXDX/5O8a8Z4i0a
         ODP93TPTnn5lg3bJ2cmpLgUnWb3TuGbttbTrj8xfUOn46uFYMT9TD80BWEPgo6mZHRpD
         7h4x0rg+AqVb0U2ea4MfMqR/b26J0qpjp+FxrVAjK62e7yhpSJAIfWdMEuifzeEmfipe
         9izpAmJQSlIcp8a3Yv3/37hlmnlYLlgwYrk/nBd14j8xjTkR7Ou2xJJmUOcHKIoINH0A
         mxQm4e7jcM5m4D9eRlzAimljUIKUnZa8hEFjiMHPcenWUbCgGfhNYkxMsExBtOd/5ZqX
         r4SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fFGk3Pqa;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+kpzkEhENSi1/8Uxi5nOtg6CdSxOUybH8FARjrWmZE=;
        b=f0hzFMz9qpDmca8ET7Iv996lh/lD/lNnlQut0tStiuF4JSCAcqwjK+cnfPTyzt+sH5
         sn+iBuVBCya9bnKWR3a9Biax8uwOO1un4xMMekUa/0b3Lew5DQfnUxFIOMY4H7TmUfai
         UfnJzaWC965ePFU68Tz2RVksTbTTNBpKhdAxm2JBAbunB3jgfh1rtEheKdz029TAICJU
         5lMoY8gfjZhNltoROdhMNEqcaVKs8pkp50xi4ReNQLZdLbQuDdM/YCyC/mzFNyauC3Nk
         l3DyzmRWpyCtmtZ6aCJb/OkdfAk3Uppn5ySsx//nD8aYw5tGKSMrmAkWnAb66H/A5K97
         hYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+kpzkEhENSi1/8Uxi5nOtg6CdSxOUybH8FARjrWmZE=;
        b=MnpZ+iftumPVrI4MyhtF8iIfpwfCZVLew6sO7ZQe2N2A1oe0TKEqJvRtGqL+gZc/Dc
         xI4an6fADbFOlwzJ8mdA7z0xb/7j0HRA7+L8/eGLaxW1naaXfcCfBiOLAdXNmcxUehmu
         wEDg+DTXLSGGh40F5oUCvX2PkP+On140LMtHOZ9T/++sl236+B9TzTlHRzvfqLG289H8
         IHvW5dHTWUxUIuNkyLOdUKn8j4mEk2Y3ZadtPsV2JRLUJKr/0bGICmGZL8K9NNPGbtKG
         1P4bCKCEgEs7+ab8hOj8Qs0lGdJHaeuL/Fne7Gg3IDDUoE7I5pYlL9IlizYMeGrCJQ4Q
         hvbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hHCHu4VzOzM1LDCH1DvAzlBCF+LtRfWSZQlaE77wCby2EdzQJ
	RKa3BfLhfFFQdDreCmgj/1A=
X-Google-Smtp-Source: ABdhPJySfwT/0pUvD06fgTuxNHyDpBLPIWqDy2ofOCPGcZ4beITyYeowFitv52XXhA/pCZOFleKutA==
X-Received: by 2002:a17:90b:46d5:: with SMTP id jx21mr1494017pjb.67.1611872900393;
        Thu, 28 Jan 2021 14:28:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:19d8:: with SMTP id 207ls2750832pfz.5.gmail; Thu, 28 Jan
 2021 14:28:19 -0800 (PST)
X-Received: by 2002:a63:cb01:: with SMTP id p1mr1530517pgg.406.1611872899769;
        Thu, 28 Jan 2021 14:28:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611872899; cv=none;
        d=google.com; s=arc-20160816;
        b=rYpQOKoa2Q1OTrEzpiMnm/iX4WajViOiSLtK7BVnIGwLkKzg1wKIXuyu2z52cbMcEP
         LwPXV9+eqfbsL9frKlk2d4rcCFAgqX2SI4SrJLxjZZzvtlFwJb2A6/9pZ9DfeTM7/NaJ
         thRSYcdh1bOvPgtYHHrx8PSoxv7eNaqC4LJZw1OBeiV+X09KprgeWVbTg7zIQML8BpCD
         TcnKmWmUsDl9e3QTss7IwZgYRwXVAjV/jldt6w6PIUOYcHjyDf5d4xRuwlUDyNH4Zyht
         iKu5jmfwzOQRyYWfQLzc0Rokdw589zeaDtdyoNgH1u+QQrl1D6TtMes421c6DKos9NCg
         hjEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wD6Dlv8eBGohbWt+EVG41HDH+t/pTKQy9Zdn8yrDnLg=;
        b=0irqQhqdV+51II1I45NqvD6mZj/u/MxFUNvUXxcIsMfqPCDPDlVNhpBMXGLEaZ+clp
         MDduhUo5DBP6qS9Lxx0pWefEeoikjLF9BoPvmzTo8s1feus/BCDmQrq1Kd4HiTgE090o
         /z9gvpT0BfRw/esv/522O4qx5Rm9O1ICOe3Ci4orNaQ2u6YnTAwk+uxPo+rflLofizAH
         Q8UAvdnI/VwPVvVkmBK+R4BPTKtEtknk3sQW33FAvQG0uciMA5U0znyfhnajuQAkq52w
         YSo0mP7LafTw2+w7D6nJDXhecoJWmCiw9OHCPcjiSg1wHLBBsL6sMUkgTXl8GqgerDbU
         eZCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fFGk3Pqa;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l22si571023pjt.3.2021.01.28.14.28.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 14:28:19 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 623D064DE6
	for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 22:28:19 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id n42so6791372ota.12
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 14:28:19 -0800 (PST)
X-Received: by 2002:a05:6830:139a:: with SMTP id d26mr1078337otq.305.1611872898629;
 Thu, 28 Jan 2021 14:28:18 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
 <20210128193422.241155-1-ndesaulniers@google.com> <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
In-Reply-To: <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 28 Jan 2021 23:28:02 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0CTUh=4h=U6S5A_tqHxYEyO52HTropAV9mKh2hwJvi0g@mail.gmail.com>
Message-ID: <CAK8P3a0CTUh=4h=U6S5A_tqHxYEyO52HTropAV9mKh2hwJvi0g@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: kprobes: rewrite test-[arm|thumb].c in UAL
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fFGk3Pqa;       spf=pass
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

On Thu, Jan 28, 2021 at 10:03 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> On Thu, 28 Jan 2021 at 20:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > @@ -468,15 +468,15 @@ void kprobe_thumb32_test_cases(void)
> >
> >         TEST_UNSUPPORTED("strexb        r0, r1, [r2]")
> >         TEST_UNSUPPORTED("strexh        r0, r1, [r2]")
> > -       TEST_UNSUPPORTED("strexd        r0, r1, [r2]")
> > +       TEST_UNSUPPORTED("strexd        r0, r1, r2, [r2]")
> >         TEST_UNSUPPORTED("ldrexb        r0, [r1]")
> >         TEST_UNSUPPORTED("ldrexh        r0, [r1]")
> > -       TEST_UNSUPPORTED("ldrexd        r0, [r1]")
> > +       TEST_UNSUPPORTED("ldrexd        r0, r1, [r1]")
> >
> >         TEST_GROUP("Data-processing (shifted register) and (modified immediate)")
> >
> >  #define _DATA_PROCESSING32_DNM(op,s,val)                                       \
> > -       TEST_RR(op s".w r0,  r",1, VAL1,", r",2, val, "")                       \
> > +       TEST_RR(op s"   r0,  r",1, VAL1,", r",2, val, "")                       \
>
> What is wrong with these .w suffixes? Shouldn't the assembler accept
> these even on instructions that only exist in a wide encoding?

I don't know if that is a bug in the integrated assembler or
intentional behavior, but it may be easier to just change the
kernel than the compiler in this case, as it also makes it work
for older versions.

FWIW, I needed a related change in a couple of other files:

diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
index 6acdfde56849..3ced01d9afe4 100644
--- a/arch/arm/lib/copy_from_user.S
+++ b/arch/arm/lib/copy_from_user.S
@@ -60,7 +60,7 @@
 #define LDR1W_SHIFT 0

  .macro ldr1w ptr reg abort
- USERL(\abort, W(ldr) \reg, [\ptr], #4)
+ USERL(\abort, ldr \reg, [\ptr], #4)
  .endm

  .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
@@ -80,7 +80,7 @@
 #define STR1W_SHIFT 0

  .macro str1w ptr reg abort
- W(str) \reg, [\ptr], #4
+ str \reg, [\ptr], #4
  .endm

  .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
diff --git a/arch/arm/lib/copy_to_user.S b/arch/arm/lib/copy_to_user.S
index 485fa3cffdbe..a6a96f814720 100644
--- a/arch/arm/lib/copy_to_user.S
+++ b/arch/arm/lib/copy_to_user.S
@@ -34,7 +34,7 @@
 #define LDR1W_SHIFT 0

  .macro ldr1w ptr reg abort
- W(ldr) \reg, [\ptr], #4
+ ldr \reg, [\ptr], #4
  .endm

  .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
@@ -77,7 +77,7 @@
 #define STR1W_SHIFT 0

  .macro str1w ptr reg abort
- USERL(\abort, W(str) \reg, [\ptr], #4)
+ USERL(\abort, str \reg, [\ptr], #4)
  .endm

  .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
index e4caf48c089f..7b980a1a4227 100644
--- a/arch/arm/lib/memcpy.S
+++ b/arch/arm/lib/memcpy.S
@@ -15,7 +15,7 @@
 #define STR1W_SHIFT 0

  .macro ldr1w ptr reg abort
- W(ldr) \reg, [\ptr], #4
+ ldr \reg, [\ptr], #4
  .endm

  .macro ldr4w ptr reg1 reg2 reg3 reg4 abort
@@ -31,7 +31,7 @@
  .endm

  .macro str1w ptr reg abort
- W(str) \reg, [\ptr], #4
+ str \reg, [\ptr], #4
  .endm

  .macro str8w ptr reg1 reg2 reg3 reg4 reg5 reg6 reg7 reg8 abort
diff --git a/arch/arm/lib/memmove.S b/arch/arm/lib/memmove.S
index 6fecc12a1f51..35c5c06b7588 100644
--- a/arch/arm/lib/memmove.S
+++ b/arch/arm/lib/memmove.S
@@ -84,24 +84,24 @@ WEAK(memmove)
  addne pc, pc, ip @ C is always clear here
  b 7f
 6: W(nop)
- W(ldr) r3, [r1, #-4]!
- W(ldr) r4, [r1, #-4]!
- W(ldr) r5, [r1, #-4]!
- W(ldr) r6, [r1, #-4]!
- W(ldr) r7, [r1, #-4]!
- W(ldr) r8, [r1, #-4]!
- W(ldr) lr, [r1, #-4]!
+ ldr r3, [r1, #-4]!
+ ldr r4, [r1, #-4]!
+ ldr r5, [r1, #-4]!
+ ldr r6, [r1, #-4]!
+ ldr r7, [r1, #-4]!
+ ldr r8, [r1, #-4]!
+ ldr lr, [r1, #-4]!

  add pc, pc, ip
  nop
  W(nop)
- W(str) r3, [r0, #-4]!
- W(str) r4, [r0, #-4]!
- W(str) r5, [r0, #-4]!
- W(str) r6, [r0, #-4]!
- W(str) r7, [r0, #-4]!
- W(str) r8, [r0, #-4]!
- W(str) lr, [r0, #-4]!
+ str r3, [r0, #-4]!
+ str r4, [r0, #-4]!
+ str r5, [r0, #-4]!
+ str r6, [r0, #-4]!
+ str r7, [r0, #-4]!
+ str r8, [r0, #-4]!
+ str lr, [r0, #-4]!

  CALGN( bcs 2b )

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0CTUh%3D4h%3DU6S5A_tqHxYEyO52HTropAV9mKh2hwJvi0g%40mail.gmail.com.
