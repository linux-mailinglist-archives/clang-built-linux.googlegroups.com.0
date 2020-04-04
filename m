Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBGESUL2AKGQERHK434Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 622B719E529
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 15:18:18 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id t10sf9959733ilf.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 06:18:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586006297; cv=pass;
        d=google.com; s=arc-20160816;
        b=mSclR/2JMBdD8eVKi8YpGyRz/zckXvWHdor9xtlG5VVLHWHAcadoQi5Va/J6ZMzQw3
         9S+OiUmfLSt1IaMi27BXzxJO60Ho/r33Mc8JMNZbRKvYnkYarz55ywGDt/1VLSMC0jIH
         XO8fwD2fgMvghjC4RTiNSRnEBH06OqtCjtVsBpsb/q6sRguDB2M2hECJGC7IRHrs784X
         iWPwyS3hOAEPk7RQRMLuv3bhBUVlflcDaTQyag8D9Dx7SO4ndhz+5vqPXAfhSSmxqKAU
         KJWD3ic+0TunH9Vj3lCdIiqCNHYrM6xluYOCwA5xVnh1UgmCs2mzWBhh8qMiSgFXToen
         RasQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=7Y9axkNk2vKRV+7hfhxWiMaFWWNxZrdEpTNlJJFgFv8=;
        b=MMbMaLEjO97Q+6SlgmgNa1aw++Lnrop1IF8vl62kSuxi/UMYzdTKF2cps21u2ZCkbK
         gwonwISByxcK3x0gQALOL78Q3u0cn6JxhIYFf/043U9Q9ksGqY7LVry6pX9Z0OHL8L0N
         PzSVC9WLttms9HxYZcts3bHQDyUIYXt4aNZrmgE1ynHM56eAol+JqwSVGHGHC0rAIhxH
         bLVfI+qoMOpwaAfRHdaeAh9jN3z6aMhwq+qwbGtkQJKXxUkQP+0rS72KhrAheWIRa9hA
         Vd2y66fZ5baY8xd7rMI/18N11gt5Zgn9BeY29HBiPft0jPiJjMahxw3JmvPORXOv7Iuw
         A0cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=mail header.b="Ty/YGshp";
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Y9axkNk2vKRV+7hfhxWiMaFWWNxZrdEpTNlJJFgFv8=;
        b=H9eaM1NsY+DBKaafBEfFwWH80LrpNXZcWji1P1KHsfKQy6n5zQfkHmjNYKXqDFJm6a
         VDlxu5b7fGZEx1SG+WK1qt1ERRsJHKkdoZaqtRI61+FIz1tir4Nddq5djVNcVZbIA0/K
         z/cX6/z/Z6tpo/LY3s9++ldjGCJsGqsDObJahVXRkCS+6gPBZD9AR2mzfhteZJeaaw8B
         dfFFDZc+VaaTRhqUSQrcub11l1czb0XhlYOOwXKgsrZjIfUiqC+dru4LMC8R3DHD8AlR
         i6h/8I/YCdQnTBIXb8d6QK7NPAZ+q9QskAgpEa1tezyBLjEIiPYcLoyMqcn4crl/pZaU
         S96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Y9axkNk2vKRV+7hfhxWiMaFWWNxZrdEpTNlJJFgFv8=;
        b=JxUIg67v6c9oD0BuLbIuiTvSNUIpw/PhANip96oQXQpu94T+6T1ub+MC+MPLTzuVAX
         y/TNsk7Mg/zHQL2uJKXuHQrBagwsxtm5Zz28w9DX98xlMdJHT/mF6BwBpE7hHE1A1xdF
         AOpkJ85hc2PKKIsnQHDGn0WVcNOqdQx34c70pzuEzTH2jk0eDGseR/6wgsoj2bX+JPLg
         HOLc/IGb3Wx1f2K+lFt3jW3eaFMhQs9BA+O+5yGX2E5S0NYEdQVDtmsnIXxX+tC0LfW8
         P1HZ64TEBOgW8irXsXQRlZGka/ktOQBhUFfKZjtwtRfxzfw2sYqv7oopT8jJTBrHoFai
         /csQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZeU3A25UbjLhKIdsc9fXUs21mX6vZTeUPNaM5b4oRBt624H2JW
	V2YNtHZiBTqXnbc9RBY6LkM=
X-Google-Smtp-Source: APiQypKQXp1iClxK7SG1sAYRu6HdTtRXmhGlRvaIODktOzeAXtYr7kafW5TSteyQh9/htqSzgkl9eA==
X-Received: by 2002:a02:7b21:: with SMTP id q33mr12749835jac.24.1586006296784;
        Sat, 04 Apr 2020 06:18:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:1cc6:: with SMTP id c189ls2441790jac.8.gmail; Sat, 04
 Apr 2020 06:18:16 -0700 (PDT)
X-Received: by 2002:a02:304a:: with SMTP id q71mr13313244jaq.131.1586006296355;
        Sat, 04 Apr 2020 06:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586006296; cv=none;
        d=google.com; s=arc-20160816;
        b=urGJ7UVtlqBoyfDoVkcPKCtPSm/DpBQuJvwm3wdmKwe4axQ6WZIsfph4GRHUUtS2sd
         Tn0/mv+xyYRGpu0qp9Kn1ZLwxmGQ/XMqF0ZIvM3fJdHppYmx9ITshWIzyX9BnHBF+2Vs
         a5FDSPaQNlzQv5Mq5vaquo5c8eT0I9a01x0EY+CdPj3qtEtMxPA0dE/gSa+XIdJ0BW+4
         R3ePWNC6I5VO39WnyJrwuY4X+LoD2Rb+Wbwj8bcTrwZ6uwA4AUh+QaUYU24xGBaXGFPv
         sIKRcvwJeiH5zmcFIjsiYKEnrcIP5ftlxu6272ayzF+IcZKelQHe6qkLp+4sJLPCNY6s
         ZPKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=M5XBaodP3z4O/JdISCaQsd6Zd50hxPiItNQG8SxouHA=;
        b=WMnjo+PgwydGgDbDUziCoIi1C+uPVTMLBOXGQUcDMncm9yssRNfJ4tRvPeB/Dvvirr
         UT4H8IxsINXKUHKkl+ZvQTvM9SP0QaJ1Tz7xvLpO+5z8n5JeysDZekoypw47fIpgqy24
         zAqbmFEEWTe5Vvoan54D0NN5UXRuW51iLDSTfgVQAM9cQ+0F0DkO2GId8oHPDi3Kzi5I
         XyUK1DV/IJfiisKq/+fY6XVW0P8dJBfKjgaNwFnhldU7///nE5zHf0A0WklOkvq1YKlk
         bOK65VWvr5wZOVBkkmZf9oQB2+o+hQr5b0Q781pYxckPFh2uU9y3aIu3KOIbXZQ8mz4w
         lw8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=mail header.b="Ty/YGshp";
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from sender3-op-o12.zoho.com.cn (sender3-op-o12.zoho.com.cn. [124.251.121.243])
        by gmr-mx.google.com with ESMTPS id t13si817899ilk.5.2020.04.04.06.18.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 06:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) client-ip=124.251.121.243;
Received: from flygoat-x1e (115.193.87.168 [115.193.87.168]) by mx.zoho.com.cn
	with SMTPS id 1586006137577447.17997068119337; Sat, 4 Apr 2020 21:15:37 +0800 (CST)
Date: Sat, 4 Apr 2020 21:15:31 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: Fangrui Song <maskray@google.com>
Cc: linux-mips@vger.kernel.org, Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Rui
 Ueyama <ruiu@google.com>, George Rimar <grimar@accesssoftek.com>, Sebastian
 Andrzej Siewior <bigeasy@linutronix.de>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra
 <peterz@infradead.org>, kbuild test robot <lkp@intel.com>, Philip Li
 <philip.li@intel.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
Message-ID: <20200404211252.3540251a@flygoat-x1e>
In-Reply-To: <20200404013204.p53fteofnppvf7pe@google.com>
References: <202004032329.oBqXCsfi%lkp@intel.com>
 <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
 <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
 <20200404010210.GA13010@intel.com>
 <20200404013204.p53fteofnppvf7pe@google.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-ZohoCNMailClient: External
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=mail header.b="Ty/YGshp";       spf=pass
 (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as
 permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
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

On Fri, 3 Apr 2020 18:32:04 -0700
Fangrui Song <maskray@google.com> wrote:

> 
> Reproduce for a clang/lld developer:
> 
> make -j$(nproc) ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu-
> LD=ld.lld O=/tmp/out/mipsel distclean malta_defconfig vmlinux
> (Requires mipsel-linux-gnu-as and clang in PATH)
> 
> I have noticed multiple problems.
> 
> % file .tmp_vmlinux.kallsyms1
> .tmp_vmlinux.kallsyms1: ELF 32-bit LSB executable, MIPS, MIPS32 rel2
> version 1 (SYSV), statically linked,
> BuildID[sha1]=ff348ad92c80e525b3f14149e57e8987de66e041, not stripped
> 
> In arch/mips/kernel/vmlinux.lds.S, VMLINUX_LOAD_ADDRESS (from load-y)
> is 0xffffffff8010000. GNU ld seems to allow 64-bit addresses when
> linking an ELFCLASS32 file. The addresses will be truncated to
> 32-bit. This behavior seems error-prone to me.
> 
> lld does the right thing by erroring out. I do notice a display
> problem of lld -Map and I have a patch to address that:
> https://reviews.llvm.org/D77445
> 
> For 32-bit linux-mips, the right approach seems to be make
> VMLINUX_LOAD_ADDRESS fit into 32-bit. However, my Linux-fu and
> MIPS-fu is not strong enough to do this :/

Hi MaskRay,

Could you please try this?

--- a/arch/mips/mti-malta/Platform
+++ b/arch/mips/mti-malta/Platform
@@ -6,6 +6,10 @@ cflags-$(CONFIG_MIPS_MALTA)    +=
-I$(srctree)/arch/mips/include/asm/mach-malta ifdef CONFIG_KVM_GUEST
     load-$(CONFIG_MIPS_MALTA)  += 0x0000000040100000
 else
+ifdef CONFIG_64BIT
     load-$(CONFIG_MIPS_MALTA)  += 0xffffffff80100000
+else
+    load-$(CONFIG_MIPS_MALTA)  += 0x80100000
+endif
 endif
 all-$(CONFIG_MIPS_MALTA)       := $(COMPRESSION_FNAME).bin

Thanks.

--
Jiaxun Yang

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404211252.3540251a%40flygoat-x1e.
