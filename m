Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG6QVX2AKGQESUSPJWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADB119FBA8
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 19:34:20 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id z8sf740816ybi.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 10:34:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586194459; cv=pass;
        d=google.com; s=arc-20160816;
        b=y9/w4XZFZSIOACrO2ccLEwN4V3hINljJs5v1H7+RfZU9SGlX6GRHdLYidtkE8nb4uJ
         vK5J0bBjvX8qyTiMji3qZVkGmiDa3Bb21w9/HQxgMISFw0EElU/xVCWR6bTQI3da29BC
         DhpsNL2T/XfwJAvBlhQfDSFQmDmykLR3lHvB3MyP0Gu1MyKtq60jy//P8WdIqf0D0mPf
         aH+GsFK8WhW3UUNP7/GkOXhy7ZzLYH4OsP4X5MXBGfd13Aa0C1+dqAZ7tqaphYTfKGBa
         ZJ1nanKTEE1GfY3jd1fwgvyi+kwbv94/mOyk74QHdsAeTHrtST5yl0pLR09Hr3cI9zC3
         PYcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X3XeMUD5xq1cgqq/qKobOiV6NVqElVLGoEXkcnNu8og=;
        b=URhZ64+CETiu9+aYU/I4Ti1MZZC1i6D5350IEqWglQttc4I6/W3EqRGibOHHXvRKh9
         CNJhfqZ8ptFoOQoMqQ/rKLoCJtUAE4e8NVb2E2NnVlC6ImHlJCiRVcOlgQexN2xtNVyC
         OxRFAlDktNItZ081sn7+6S/uhoYiJNHXaGE+EAANsPSy9SByzn1Ma36H/7Pa38YIzrN/
         tvqJQyHonBkVx11xQMsIk3qTXy9NwYdhIe1JqWZIL6k2PdgqiK6OFPBqdal3/HQm/zDu
         O9NkhXX+33qqgo+tWzyo4OTgTznaZR9H7Yd0/qv7lu+ZJtF3krg2ZNVoqFYFkCnbeVYJ
         /rEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MQCGMhsl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3XeMUD5xq1cgqq/qKobOiV6NVqElVLGoEXkcnNu8og=;
        b=lpT381os+0lf9sVx4ZQ1xOO1UDjfqOUVAFKiQdTqtKjZwXvKDvr5fI5+vUTxw+/iyi
         gMvEsSxLutsTkuYlDl8cctunlDkgaM2HAhGzu3n5IWEmvRNWTnrZ0HtSAiMHdBXGcLAj
         ra+9zKVkGE0wWIMGpGasT+Gfn0B0jbCq5tUKB/d+x0u7TxqilgyPihOdvnHlWTRvCU5r
         TZlBMh0F5wXrFlxviZS0PyQhaONHq14X6b3cLXnz4hSX/Yhnhv5PCe4Fna+na/EBsFAA
         K8nmdpE2sdtUr/8Aksy4Q324LVfY2QQZso8kXXkQ0AxlSAdqchlqP3RhqMC/1cr5IwY1
         /gTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3XeMUD5xq1cgqq/qKobOiV6NVqElVLGoEXkcnNu8og=;
        b=tUNwxeiAu6DEO2qdUwZnVfgD9sAZq1V379HW0yivc9EJidiFG20j16ACM9SHXoaPsp
         wkoZjxgWI3mDKrtdhjPys9ZUmeR/pDYic6KFoAguUtuH5NKTMbHmjA0lOJj0hHIyx99s
         VcSp0r6yX4CytvEYoaInJFaG6OcMuKbqRmHHuESIUqVk7jRkOpaWrxIc+5SkLYIwjQPk
         FHaZy3B7SH2V7ztnjLL6ETheW/yGb3YOq3Ms122f2OBnNVbyHpypUobEZZP29XKZFXoi
         aEqYqC++dn4ImBwTXn8pM55HurYX8KwL1RYg1oTAvU5xvAMGwWojAyKUu08JXxlYcXtB
         SEIA==
X-Gm-Message-State: AGi0PubtA9BsblEzNZQPf7pSlxfKFGobsutem4hEbKrBIvqJwgR2kvLR
	REpMBhWqXdFVXpDHaBhiUb4=
X-Google-Smtp-Source: APiQypKorGQ6Nl7bdAZX0E6I/rgAFKnuqt4lqFUBwh/VeY3oONaq+3wslW+ctEtGkpPZKu9R1La2mA==
X-Received: by 2002:a25:8883:: with SMTP id d3mr38642037ybl.217.1586194459610;
        Mon, 06 Apr 2020 10:34:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d6c8:: with SMTP id n191ls94392ybg.4.gmail; Mon, 06 Apr
 2020 10:34:19 -0700 (PDT)
X-Received: by 2002:a25:e7cc:: with SMTP id e195mr38901550ybh.271.1586194459234;
        Mon, 06 Apr 2020 10:34:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586194459; cv=none;
        d=google.com; s=arc-20160816;
        b=zD9LxJlor8rxjieZU6MZxYJ7HztTxZ6nh1So7W0Bmd1AjbhkL69UuYKYyFNKhvllep
         d9AuYg4kxyCZs5kDD64w7itqwdtnznqP0r7BJOyLxHqJaQ+gWzsEKUyd1zQpmcCSUsBr
         EUMd4s8yPAmCgoSVUl0L9vzR9wRldW4Nc9wZV3/UwykJFAAsObI7lz6XWsVaEFmRHNg4
         BCXaWZCH8TeEyX8NV6EeRWbDGwD6hwSAEp2B+9im/5LlZx884ND7q3scm7t8hwv2yim/
         5LY0lnP2GlmEBORfE7soBUE+Bd/5VwGVL1fThAjvqWKJrFP0PbEWQ7274og4e57NqShh
         a22A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iTnt6rhYcfPaF8VxFCcDjmb8zA/fEtWzdbsn94r3j0Q=;
        b=eBXJrGc2HUPmM7pvPG16BIgIFGWBUH0wD2viiovNkpgpmG4c5tqWZgYCFpUtue/ELB
         OUgSb38ijUQvBJgMaGj673in1TRr8uvL24M4uRm/3u5EeTH5hRzYhIOLyL5tMHGO+CLO
         u6pmV9FycV/BGkBc9SkuUy73c1pNtluGlvereZGnsLqdFbT1sXxjrrjgBU6EHzAMIfNo
         69KK9VJkgqnGqYqsXN8DHEWAHQHahIVAQ8+GFQei7tbF1uH4WXoE6rYo6MsE+DSUwshE
         HrBNVk3r9V9Z7BAOzrMErXx6MppUc2jg3xNysCZOU042r6QNlOMXU32cXPTSVtEhQmZj
         vnDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MQCGMhsl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s10si57623ybk.0.2020.04.06.10.34.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:34:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id fr8so122879pjb.1
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 10:34:19 -0700 (PDT)
X-Received: by 2002:a17:90b:3783:: with SMTP id mz3mr300858pjb.27.1586194458092;
 Mon, 06 Apr 2020 10:34:18 -0700 (PDT)
MIME-Version: 1.0
References: <202004032329.oBqXCsfi%lkp@intel.com> <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
 <20200403192058.GA41585@ubuntu-m2-xlarge-x86> <20200404010210.GA13010@intel.com>
 <20200404013204.p53fteofnppvf7pe@google.com> <20200404211252.3540251a@flygoat-x1e>
In-Reply-To: <20200404211252.3540251a@flygoat-x1e>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Apr 2020 10:34:06 -0700
Message-ID: <CAKwvOdnS8MvEp7aqqswTjP_Mo5=+=+SziPoZ4knuuyQ6rWottg@mail.gmail.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: Fangrui Song <maskray@google.com>, linux-mips@vger.kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, Rui Ueyama <ruiu@google.com>, 
	George Rimar <grimar@accesssoftek.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	kbuild test robot <lkp@intel.com>, Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MQCGMhsl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Sat, Apr 4, 2020 at 6:16 AM Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:
>
> On Fri, 3 Apr 2020 18:32:04 -0700
> Fangrui Song <maskray@google.com> wrote:
>
> >
> > Reproduce for a clang/lld developer:
> >
> > make -j$(nproc) ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu-
> > LD=ld.lld O=/tmp/out/mipsel distclean malta_defconfig vmlinux
> > (Requires mipsel-linux-gnu-as and clang in PATH)
> >
> > I have noticed multiple problems.
> >
> > % file .tmp_vmlinux.kallsyms1
> > .tmp_vmlinux.kallsyms1: ELF 32-bit LSB executable, MIPS, MIPS32 rel2
> > version 1 (SYSV), statically linked,
> > BuildID[sha1]=ff348ad92c80e525b3f14149e57e8987de66e041, not stripped
> >
> > In arch/mips/kernel/vmlinux.lds.S, VMLINUX_LOAD_ADDRESS (from load-y)
> > is 0xffffffff8010000. GNU ld seems to allow 64-bit addresses when
> > linking an ELFCLASS32 file. The addresses will be truncated to
> > 32-bit. This behavior seems error-prone to me.
> >
> > lld does the right thing by erroring out. I do notice a display
> > problem of lld -Map and I have a patch to address that:
> > https://reviews.llvm.org/D77445
> >
> > For 32-bit linux-mips, the right approach seems to be make
> > VMLINUX_LOAD_ADDRESS fit into 32-bit. However, my Linux-fu and
> > MIPS-fu is not strong enough to do this :/
>
> Hi MaskRay,
>
> Could you please try this?

Hi Jiaxun, can you please send this patch?

>
> --- a/arch/mips/mti-malta/Platform
> +++ b/arch/mips/mti-malta/Platform
> @@ -6,6 +6,10 @@ cflags-$(CONFIG_MIPS_MALTA)    +=
> -I$(srctree)/arch/mips/include/asm/mach-malta ifdef CONFIG_KVM_GUEST
>      load-$(CONFIG_MIPS_MALTA)  += 0x0000000040100000
>  else
> +ifdef CONFIG_64BIT
>      load-$(CONFIG_MIPS_MALTA)  += 0xffffffff80100000
> +else
> +    load-$(CONFIG_MIPS_MALTA)  += 0x80100000
> +endif
>  endif
>  all-$(CONFIG_MIPS_MALTA)       := $(COMPRESSION_FNAME).bin
>
> Thanks.
>
> --
> Jiaxun Yang



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnS8MvEp7aqqswTjP_Mo5%3D%2B%3D%2BSziPoZ4knuuyQ6rWottg%40mail.gmail.com.
