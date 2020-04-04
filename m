Return-Path: <clang-built-linux+bncBCS7XUWOUULBBGOHT72AKGQEUSEXLMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0496219E242
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 03:32:11 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id d10sf7997171pjz.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 18:32:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585963929; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHEldHdb7d5WlUegZ9METjpL5TuVpxCudfU2M5XzydryqgnmxspcinqXIctWVJkF4t
         pbh8CjEz/l3ftFLgTNRpWOpBRuiQjgb4udhV0tsC5iTW8WVkPQyTTAisFC53l+yHfEgx
         +pJO/0EvCE25aQNQl3d4cBYHp1EvfxjkY9oAidoxgJDEL/Kv8q/7PE8BSOxX8YEqP0AZ
         /wouyS68/TQe2qJPYmNnubX5FjYQDLPZfjyVR8dRUFhxQspgOB/eqsxX8AfBKjVyffHh
         R5EnsRMm1BhJ3Mu6jAsRSvtedBXYhXWwkawlj3Arp0ioXcEfQbuN0oEWCwtbsLSXVAin
         VIVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=LHAvjBpCTGT80ZKerVhbeIL/hjy6hbAGQu6hjDDeBhw=;
        b=ky8asbfXU2eIYzNMLGP04lfeDHg1+uhecSGR4Q6zSqWGDKdJ6HrmOPD6fpwOLPqs60
         ibXTaJ8hLSaxy//m+aqpseTJiPXYe1YtduZyZumZu2n4CmWjuSQVRAh24c8m4VBDwJ1u
         b7jTID0dmZWutzVLn7xnR2mzzf2v+Gqzorw9LBxRazHGVl8lcacOx4pIw8ESVJrV/Pvf
         GskDl/wEoJ9qY+N++QP7woLyWfhpZ4ic9S4FTLrYiNwmNCw422qFRQ0xOc30agpCaM1/
         9kPWkT8gelYSW1JlCA2P8FR7+k0czuOnxe5nIHQ51NfJI28dHcbMSSnpWZ080XaXlk8z
         ZNvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ja47CkiT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LHAvjBpCTGT80ZKerVhbeIL/hjy6hbAGQu6hjDDeBhw=;
        b=cPGGYZDCUFvIEzZawJOBKPcUMOMjnL1uPXZCYMpjQx4hxSn2KnDEzJjHgqrsOrscB7
         uNEFHfDKPi7a72SGaZmi54XolEmjWUYDSHPzltqWEjQx0BiP6doq5YJ4Nf3BH835hNGR
         +cxz3+R4pBwSOsky5lj8JSNviVMMPvrFC+JjuI/LQ4foJHFSJRwJ4obEuJ9cWu/lJPYO
         SVILxbAhQyvPgWyu96b+SRNnqicig64TVLC9i5PLAp0ExxClsPfllGGNhCL4UhIxvLUH
         fA7hnNrRfR3wvz5j47/sHiO2k852OlFh6oT4S/gGEixdCasKZcRBfZG0AD31ilVCnzBX
         vRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHAvjBpCTGT80ZKerVhbeIL/hjy6hbAGQu6hjDDeBhw=;
        b=Uj4ntrAIeKzyvFikb9OtIKBExK4Qdmh3r8fSgUBBQb1nOoDugKOOFBWG9HsniiOmD7
         xayiz2oLO5M9QLU3pOsJ+PeEvEBNrkEXkTRz8O6KN5+UKrxCQ7WpUTRhpI7hODm6BjG1
         lMUqaRutrKAMoSDf5SVgkkP7PDJlhh7ZT3PkbP3UoSk/Ze6FnHP6qUhbih0BSIqUFbCi
         iyrKrMxbeUCRuGSCFi6z3qnE/H0R86H2p6H6hUHIwZMkH07h05Su28ppQvElGL5bUa+t
         JzPqmkitWnRIg183CynyW9imN9APzNlbUcGTaD9CXWK1BXwUEzxdw4jncEX6fNIJiyD6
         JQcA==
X-Gm-Message-State: AGi0PuaMBW/3nJrG9DKQI8ud3/nL0iqmv2WqPw6jQ82afdXwnpiPGwbY
	suu05r24F9lnSeifSiU1qsE=
X-Google-Smtp-Source: APiQypID8p6iNGRp5sFBj9S6090WQzh2/x3cXc0mAYTM+eZ3efdHEP0JJv/b+Bcj1JV5OaXZYiPF6A==
X-Received: by 2002:a17:90a:224e:: with SMTP id c72mr13076454pje.175.1585963929423;
        Fri, 03 Apr 2020 18:32:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls7570844pjo.2.canary-gmail;
 Fri, 03 Apr 2020 18:32:09 -0700 (PDT)
X-Received: by 2002:a17:902:343:: with SMTP id 61mr10681453pld.332.1585963928892;
        Fri, 03 Apr 2020 18:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585963928; cv=none;
        d=google.com; s=arc-20160816;
        b=lHtd0xEU0Y+Mf5I1/jLDzvwJNVnu4i2o4m/VbAhnU8BkrhJumz9lth3elS9jQgJ8bv
         WQwHICoMcaX7cMHmfJosf6nm6zT3mZ7FhR6iRphHfDativ04LFNHjayfeiLzScImgB3t
         5idXFZPeQkNA1j4ayZApMcS0W+xmrGfQWMCDO17RGv8+EJlMTZKS83MAmc2MV4ZC6rDx
         TBTrAUyADdVoD+fPifC90pzn93BG/aS8Cfw7Y1IfUu6wlIOlJWtVFT7UIzNEo5OuuV5F
         Uo5IRyOgac8xgwoQMLvoohsYd4zXZYThl8EU+hI4BkubeIslQUVBEtGcYUplUUzdiT2i
         4Y5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9xhp+//28oDzNfxNQ8aWCT3GL1ZGz7mGwimDQvekNlA=;
        b=wYvO1jo+5VzE62Ei2EWw5m9GV12ZixDZrjgtdE5wYPq1xuvG/C83+mwMxvxRBOUBtX
         q/5zYZKYpyRI2I6P7MO9ga0mvPUw7OFQAt4XlRe43T4bhk6KeUzZPT/D/INbNdAV2MEm
         5JY7koSXDqnPGTGzhsXuLYtL1xX1opS9CwTcNWbKKkU5fVs/SA2v34YS046wXbzD5/O4
         V7CUwzij4FHxt0bQY1Hf73buFwhV1aHp7DWJBfASxhAB58pVDZh6ArWrofbnySUOnYxL
         orRzajgyb+RqDWmRsePWGy+gBEDpT4HFWSGCvr1k5Ph23WXg1GEObrMWNcMef/1AkmaP
         yhbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ja47CkiT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y1si162493pjv.2.2020.04.03.18.32.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 18:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s23so3488341plq.13
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 18:32:08 -0700 (PDT)
X-Received: by 2002:a17:90a:8909:: with SMTP id u9mr13182748pjn.149.1585963928162;
        Fri, 03 Apr 2020 18:32:08 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id b2sm6535943pjc.6.2020.04.03.18.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 18:32:07 -0700 (PDT)
Date: Fri, 3 Apr 2020 18:32:04 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-mips@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rui Ueyama <ruiu@google.com>,
	George Rimar <grimar@accesssoftek.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	kbuild test robot <lkp@intel.com>, Philip Li <philip.li@intel.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
Message-ID: <20200404013204.p53fteofnppvf7pe@google.com>
References: <202004032329.oBqXCsfi%lkp@intel.com>
 <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
 <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
 <20200404010210.GA13010@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200404010210.GA13010@intel.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ja47CkiT;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-04-04, Philip Li wrote:
>On Fri, Apr 03, 2020 at 12:20:58PM -0700, Nathan Chancellor wrote:
>> On Fri, Apr 03, 2020 at 09:37:57AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
>> > + Fangrui, Rui, George
>> > The below errors from LLD look new to me, thoughts?
>> >
>> > On Fri, Apr 3, 2020 at 8:42 AM kbuild test robot <lkp@intel.com> wrote:
>> > >
>> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/urgent
>> > > head:   59d4dade8ccbaa299f5f5dcd775f7a9b7277fb5a
>> > > commit: ae1177617ed17157f29959b0fe4d60f532a5b36e [4/5] workqueue: Remove the warning in wq_worker_sleeping()
>> > > config: mips-randconfig-a001-20200403 (attached as .config)
>> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
>> > > reproduce:
>> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>> > >         chmod +x ~/bin/make.cross
>> > >         git checkout ae1177617ed17157f29959b0fe4d60f532a5b36e
>> > >         # save the attached .config to linux build tree
>> > >         COMPILER=clang make.cross ARCH=mips
>> > >
>> > > If you fix the issue, kindly add following tag
>> > > Reported-by: kbuild test robot <lkp@intel.com>
>> > >
>> > > All errors (new ones prefixed by >>):
>> > >
>> > > >> ld.lld: error: section .text at 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
>> > > >> ld.lld: error: section __ex_table at 0xFFFFFFFF82089160 of size 0x27B0 exceeds available address space
>> > > >> ld.lld: error: section __dbe_table at 0xFFFFFFFF8208B910 of size 0x0 exceeds available address space
>> > >    ld.lld: error: section .rodata at 0xFFFFFFFF8208C000 of size 0x480F81 exceeds available address space
>> > >    ld.lld: error: section .data..page_aligned at 0xFFFFFFFF8250D000 of size 0x2000 exceeds available address space
>> > >    ld.lld: error: section .got at 0xFFFFFFFF8250F000 of size 0x8 exceeds available address space
>> > >    ld.lld: error: section .rodata1 at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
>> > >    ld.lld: error: section .pci_fixup at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
>> > >    ld.lld: error: section .builtin_fw at 0xFFFFFFFF8250F008 of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __ksymtab at 0xFFFFFFFF8250F008 of size 0x145EC exceeds available address space
>> > >    ld.lld: error: section __ksymtab_gpl at 0xFFFFFFFF825235F4 of size 0x12378 exceeds available address space
>> > >    ld.lld: error: section __ksymtab_unused at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __ksymtab_unused_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __ksymtab_gpl_future at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __kcrctab at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __kcrctab_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __kcrctab_unused at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __kcrctab_unused_gpl at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __kcrctab_gpl_future at 0xFFFFFFFF8253596C of size 0x0 exceeds available address space
>> > >    ld.lld: error: section __ksymtab_strings at 0xFFFFFFFF8253596C of size 0x40CB3 exceeds available address space
>> > >    ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)
>> > >
>> > > ---
>> > > 0-DAY CI Kernel Test Service, Intel Corporation
>> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>> > >
>> >
>> >
>> >
>> > --
>> > Thanks,
>> > ~Nick Desaulniers
>> >
>>
>> This is an open issue on our issue tracker:
>>
>> https://github.com/ClangBuiltLinux/linux/issues/786
>>
>> Note that this is a mips-randconfig.
>Thanks, we will temporarily blacklist this error.

Reproduce for a clang/lld developer:

make -j$(nproc) ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- LD=ld.lld O=/tmp/out/mipsel distclean malta_defconfig vmlinux
(Requires mipsel-linux-gnu-as and clang in PATH)

I have noticed multiple problems.

% file .tmp_vmlinux.kallsyms1
.tmp_vmlinux.kallsyms1: ELF 32-bit LSB executable, MIPS, MIPS32 rel2 version 1 (SYSV), statically linked, BuildID[sha1]=ff348ad92c80e525b3f14149e57e8987de66e041, not stripped

In arch/mips/kernel/vmlinux.lds.S, VMLINUX_LOAD_ADDRESS (from load-y) is 0xffffffff8010000.
GNU ld seems to allow 64-bit addresses when linking an ELFCLASS32 file.
The addresses will be truncated to 32-bit. This behavior seems error-prone to me.

lld does the right thing by erroring out. I do notice a display problem
of lld -Map and I have a patch to address that: https://reviews.llvm.org/D77445

For 32-bit linux-mips, the right approach seems to be make VMLINUX_LOAD_ADDRESS fit into 32-bit.
However, my Linux-fu and MIPS-fu is not strong enough to do this :/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404013204.p53fteofnppvf7pe%40google.com.
