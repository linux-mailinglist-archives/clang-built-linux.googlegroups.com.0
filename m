Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLHPUL4QKGQEPE5KIRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D3823B233
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Aug 2020 03:19:42 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id t11sf15824882pfq.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 18:19:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596503981; cv=pass;
        d=google.com; s=arc-20160816;
        b=grMwSkuRBmnmuIFug6ooonoPT2YwgHEU8TsA9du42/9qeWW/3Zbt7WjjqmUpyCxW7Y
         hsnJD0sdxk7pXEvE0dbOPtk9gTYSKqbcuNceIw5GLsWH3aQHXwPqDk+Kgg/SxS262uHc
         taK+JSu+O9VSTaDIY+r3cWRBtmhGOF1IsQVhB29mx0Dh1DjyTMqqrV2eKoFJOFusTNhZ
         vaMaSxEzQAaXCSGk3Fx51mbuTB6Gum9FankfelELhdeqnOAF5wFdCpZ3dk+W2HZhnaYq
         ioL48frD+sidYNboVon0RsKx1g3K7LCUkDA6p4o3I2ibGXjP8Jroj/zGpSQmhFeYykK8
         nnkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=r7m1iApMh9joLs2lqla2XfbeodaPECP1iDzJPitSK1c=;
        b=nW0w9/R1CVF0nP4943ayvvF1rC3pB/vQZT7qjXg/3nZLLeNEfAN8NtpGkVBJRYNiOZ
         30GNDfbg8a9dOfZ+0K5fcwREBUamLeDRNEZ2H0o2jewL1pGgSztmY6mU6iaU2CDzqoGL
         MNFcWALEpeudDDQVRn66lZoe6kpOFI7X8DDO7i5B4Z5LeZ4CA/qLyDsOuLy14V1yc4dS
         I6zJf8lskOWb0DjUx6N2ch8aAShr/ccDi4ShTZXDEFDp72fsRDBvaoIuGsYEA9wHT1Cr
         KwrDuBf9pyYmePktmRW9XyfibRAU+GPc6Y80yw2meu+UNErIsLeHATzv1mwYw0tRMRhC
         a8Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lCrMugQU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=r7m1iApMh9joLs2lqla2XfbeodaPECP1iDzJPitSK1c=;
        b=IknN9diaYUzTrgUI1C8g6IPhIxGlZnoOBAniOCywh/zLjZky36/rUX1px4Rh5T/kc3
         hLM/jZlpp1lEmsllAZAwkbKWE5baAia2LEOGusQYATFlMnaiEIk/8UoURCmtUz0zBxO6
         0wdsEhcjFtEzFKRPtbGBYLXtRWzte7jGqVEh4G7cbUp80KH/FbBM+Rxj57o+uo9ttF5z
         yN+1evcQyap33DlulBQWqg0brlnBiH5oTaB6keDIwXcaF+57OqRwhLtV4bKyy81vA0Iz
         RJNZfup7p3Gnv3jwn4OIXDNPK1QZ7/XLzH9L5+dxm4NdrqIfh4B9XZU7OuEaCx7RKe4z
         Pu8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r7m1iApMh9joLs2lqla2XfbeodaPECP1iDzJPitSK1c=;
        b=TEYVMJbxbtm24+pVapWa0A/r4QOVFF6gQkkvv1iMA5tdrdBwNh/FK6bqKK/lrpC6wk
         QDbp1gojmu0RSJB4ovJ3Co+KoDqvnzHQhP6xmtZOYlRipNHVfhMFZpXr1pZALB7B2emG
         wd/4RDujI45717B0Ao4jEHzbjlfHrymndrSC7OELNawfWC781z0TtpJxZ+skE6Ok1MhJ
         dUBSVly9fnJFI65dEGJeaDGVBSveFzL23yielIjOnqMKANcmC6q/c5qiGyLhwgHtV0xF
         zC2UIGbTatUDArDmawX1VW8ReWMU7CwdP/JpGNQqYJJMytxPeMMvXVHNbZWOIAFjwrlF
         hhxw==
X-Gm-Message-State: AOAM531b0Wlp1mwIPUFVU+WNdwtd43vJxrkSOfKVNKUs2NSJgBns3TY2
	GX6OPhprWdD75oiqSS5NZ5o=
X-Google-Smtp-Source: ABdhPJzyAuoL5uJqaEGJPG4GMOMO3re/4oi0CYJG0YxGjk54r3Mho+HMf4P3CgaNyOv6rYbmoN8PAw==
X-Received: by 2002:aa7:9344:: with SMTP id 4mr18592385pfn.30.1596503980886;
        Mon, 03 Aug 2020 18:19:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls7408938pls.5.gmail; Mon, 03
 Aug 2020 18:19:40 -0700 (PDT)
X-Received: by 2002:a17:90a:4e89:: with SMTP id o9mr2073257pjh.178.1596503980398;
        Mon, 03 Aug 2020 18:19:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596503980; cv=none;
        d=google.com; s=arc-20160816;
        b=Y0ryWZhAK7ccD8V0pQhgezvTeV7ZbWSFPbc3CD6NAuvnnBpzgpNtmh6C84k0L+JnGE
         5vRcbJEH3lm65x1JiaV+L3204b520eq97+1EcGw9xYmx3pRqXy2m2nI8YEg9DVWjr0gh
         qPE8gKXCXqkS/oPVaftQ0a2lQn8dmuLWfyttbplNXy+4KjRDAWWlKXvicmmUoJHggdrJ
         pdw+Ws76vNTs9FvMRG1K1/ov3rIK/yxMUawMbH0kkriLYMv1b/vdUp1VMu4Zqs4AO0XI
         LtxIDwz0hIGm4MkAJ5vM4CjIpnGHJvLlxOtOZreGoZScDnUg0XjhKKh91W0nvNoKKniQ
         1+ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yLe9ughSSWWsyDhsI7ztPaWolRKsxiUjg5w5lMi5jv0=;
        b=VpNDk4CYdFo45n1o2vWFqfBZfXagqSu1YgX4jT3dliCD/QWwTfuRgNgkBZ2UVZM5W0
         EPr3rH6w9QeB9N//LL6nbdd8z1G5le1fVwuiPMdkcpHHd6yWWjRckYoMsv8J7e0nlQoZ
         tnBDQTrWFEPCAMcgwnHGBgFRCj9HlHONh97+2ul/5BGUoCPx0O5pNlHBDlJsLD5zPyIl
         GkBbmQ0kiSNvzZ+/+KOzn8hG7/e/MOMTSi3qAFejrx5Q45SWnO8tYmL98ncLmBnQ4qHf
         9psSK0dnDyHDFEPFRyeDO9WXqTPCanvlNhTPO9pKcGhqIzdFaXzh5waCXnRmw+DIGFnN
         S5GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lCrMugQU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id g18si1173339pfi.1.2020.08.03.18.19.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 18:19:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id t6so21201197pgq.1
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 18:19:40 -0700 (PDT)
X-Received: by 2002:a63:454d:: with SMTP id u13mr16807380pgk.309.1596503979605;
        Mon, 03 Aug 2020 18:19:39 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id q82sm7823264pfc.139.2020.08.03.18.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2020 18:19:38 -0700 (PDT)
Date: Mon, 3 Aug 2020 18:19:35 -0700
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>,
	Kees Cook <keescook@chromium.org>
Cc: Andi Kleen <ak@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <20200804011935.b4asdxdxwvwic7js@google.com>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
 <20200803190506.GE1299820@tassilo.jf.intel.com>
 <20200803201525.GA1351390@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200803201525.GA1351390@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lCrMugQU;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On 2020-08-03, Arvind Sankar wrote:
>On Mon, Aug 03, 2020 at 12:05:06PM -0700, Andi Kleen wrote:
>> > However, the history of their being together comes from
>> >
>> >   9bebe9e5b0f3 ("kbuild: Fix .text.unlikely placement")
>> >
>> > which seems to indicate there was some problem with having them separated out,
>> > although I don't quite understand what the issue was from the commit message.
>>
>> Separating it out is less efficient. Gives worse packing for the hot part
>> if they are not aligned to 64byte boundaries, which they are usually not.
>>
>> It also improves packing of the cold part, but that probably doesn't matter.
>>
>> -Andi
>
>Why is that? Both .text and .text.hot have alignment of 2^4 (default
>function alignment on x86) by default, so it doesn't seem like it should
>matter for packing density.  Avoiding interspersing cold text among
>regular/hot text seems like it should be a net win.
>
>That old commit doesn't reference efficiency -- it says there was some
>problem with matching when they were separated out, but there were no
>wildcard section names back then.

I just want to share some context. GNU ld's internal linker script does
impose a particular input section order by specifying separate input section descriptions:

   .text           :
   {
     *(.text.unlikely .text.*_unlikely .text.unlikely.*)
     *(.text.exit .text.exit.*)
     *(.text.startup .text.startup.*)
     *(.text.hot .text.hot.*)
     *(SORT(.text.sorted.*))   # binutils 5fa5f8f5fe494ba4fe98c11899a5464cd164ec75, invented for GCC's call graph profiling. LLVM doesn't use it
     *(.text .stub .text.* .gnu.linkonce.t.*)
     ...

This order is a bit arbitrary. gold and LLD have -z keep-text-section-prefix. With the option,
there can be several output sections, with the '.unlikely'/'.exit'/'.startup'/etc suffix.
This has the advantage that the hot/unlikely/exit/etc attribution of a particular function is more obvious:

   [ 2] .text             PROGBITS        000000000040007c 00007c 000003 00  AX  0   0  4
   [ 3] .text.startup     PROGBITS        000000000040007f 00007f 000001 00  AX  0   0  1
   [ 4] .text.exit        PROGBITS        0000000000400080 000080 000002 00  AX  0   0  1
   [ 5] .text.unlikely    PROGBITS        0000000000400082 000082 000001 00  AX  0   0  1 
   ...

In our case we only need one output section.......

If we place all text sections in one input section description:

     *(.text.unlikely .text.*_unlikely .text.exit .text.exit.* .text.startup .text.startup.* .text.hot .text.hot.* ... )

In many cases the input sections are laid out in the input order. In LLD there are two ordering cases:

* If clang PGO (-fprofile-use=) is enabled, .llvm.call-graph-profile will be created automatically.
   LLD can perform reordering **within an input section description**. The ordering is quite complex,
   you can read https://github.com/llvm/llvm-project/blob/master/lld/ELF/CallGraphSort.cpp#L9 if you are curious:)

   I don't know the performance improvement of this heuristic. (I don't think the original paper
   cgo2017-hfsort-final1.pdf took ThinLTO into account, so the result might not
   reflect realistic work loads where both ThinLTO and PGO are used) This, if matters, likely only matters
   for very large executable, not the case for the kernel.
* On some RISC architectures (ARM/AArch64/PowerPC),
   the ordered sections (due to either .llvm.call-graph-profile or
   --symbol-reordering-file=; the two can't be used together) are placed in a
   suitable place in the input section description
   ( http://reviews.llvm.org/D44969 )


In summary, using one (large) input section description may have some
performance improvement with LLD but I don't think it will be significant.
There may be some size improvement for ARM/AArch64/PowerPC if someone wants to test.

>commit 9bebe9e5b0f3109a14000df25308c2971f872605
>Author: Andi Kleen <ak@linux.intel.com>
>Date:   Sun Jul 19 18:01:19 2015 -0700
>
>    kbuild: Fix .text.unlikely placement
>
>    When building a kernel with .text.unlikely text the unlikely text for
>    each translation unit was put next to the main .text code in the
>    final vmlinux.
>
>    The problem is that the linker doesn't allow more specific submatches
>    of a section name in a different linker script statement after the
>    main match.
>
>    So we need to move them all into one line. With that change
>    .text.unlikely is at the end of everything again.
>
>    I also moved .text.hot into the same statement though, even though
>    that's not strictly needed.
>
>    Signed-off-by: Andi Kleen <ak@linux.intel.com>
>    Signed-off-by: Michal Marek <mmarek@suse.com>
>
>diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>index 8bd374d3cf21..1781e54ea6d3 100644
>--- a/include/asm-generic/vmlinux.lds.h
>+++ b/include/asm-generic/vmlinux.lds.h
>@@ -412,12 +412,10 @@
>  * during second ld run in second ld pass when generating System.map */
> #define TEXT_TEXT							\
> 		ALIGN_FUNCTION();					\
>-		*(.text.hot)						\
>-		*(.text .text.fixup)					\
>+		*(.text.hot .text .text.fixup .text.unlikely)		\
> 		*(.ref.text)						\
> 	MEM_KEEP(init.text)						\
> 	MEM_KEEP(exit.text)						\
>-		*(.text.unlikely)
>
>
> /* sched.text is aling to function alignment to secure we have same

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200804011935.b4asdxdxwvwic7js%40google.com.
