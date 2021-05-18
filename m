Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3FARSCQMGQEE7VVTCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CB4386E8E
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 02:55:10 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id f19-20020a056a002393b02902d8b0956281sf4477788pfc.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 17:55:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621299309; cv=pass;
        d=google.com; s=arc-20160816;
        b=qRYeoNZvPCTElXAG720i6MdHW/xz0QJHwR1DIUrlGNeiSB6S7vXx2uNVZBogoLmWmN
         X/KvbeGDZ5WNGuquGqyFfz+dx0jLOGQGKQL0/C7zb/8ZdoVEpaJdfFxxXTbdyUZxgtY5
         hOxJKv1yAZOgKB/sy63xp6yt4ku1ngLqGG+MM7jyLHE8Fj+jdeUuGKvaQOYvzxy0kr4R
         leVUcbzKmDn0k9jEu6ihwFF6iBI549aXQHNYwgv74OXkU4l9PXc7JSsL5LfRi+NguRjf
         Yw8WwRsUrSUxoz4ivG+vwRHJyS+6hWfd1X9XOz0kJHtZ6LsQv2NK8ETRZgS695g401Lz
         J85A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PnF1KJVP+cU882TQJLfUDD8e/Mm85TKursqnJeS7ymA=;
        b=HJ5fYri0t38oS4wBjJrCxM27DUfDWW5UtOvvJzykEvPfDqpsShNSF2jP6+PcdDKghg
         cC1GaMjQ5ehIINxdJuKQxAVmjUoOcpJ7TjL5TNnl304YnxmU5JJWn8ZFPRddbbhmkW5I
         7Si+Sl+9gWdVl90s/vHEy/q7vZmJAWwFux7fZdh469wKRdAPB4xlJRl4Zdz846VOmoTI
         SPig7EcS8xIXLW84frN3i3uRM+Tv6GhnTKaczQRckcQhnFqmHLg5QS7CeoIYYfQqjB/z
         uSzm1FWtkPS85+ymoycgo12nbsYYTQsS+EHVe1VK3/jQYLtAfmAbF5p5NbOmPpsgBScs
         cafw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sfT2fMRt;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PnF1KJVP+cU882TQJLfUDD8e/Mm85TKursqnJeS7ymA=;
        b=Il4bkSOMLWMGIUL21tthZJP4Vb4aH/QLlKblGUxdootvF4/4p2IKZvkqOf8IOMdSJU
         iuPYCKAIb/06KOQzqbDa2o0xepymy2H9G2yMdG9GpyBJrYpAU+OdhU97vPM9gTJE4YkI
         zCec2EY4wS8FOC5hufSX48WUeyNy4iqxmUiDqgTucZ+wlRxD2weiEE7TOc1fudGK99l0
         4vHwW8vsbScLbZslerd51NvqZKPXAVE2ZWuyqvb3ZaonUCHmSJx8ljqHietJSSfPWEnD
         IMoHWeSXC1UjIdbzGGEzZ/Y1/Qx9T1eaTexBOGQ6stB+TCCGfzKgwpZ7K8KDYMK6E3UB
         RTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PnF1KJVP+cU882TQJLfUDD8e/Mm85TKursqnJeS7ymA=;
        b=Eu6Pl44Yxekvz/5mdfZ8xGxAZjQi68yC9C/KFVYTWp3RTTopibv3xHTmb+qBW480jP
         k8lS5qP9JiESqc2BoUI5GkxRkOv/JSgsy1lxTRRaAaa+d0bePJXGnGQtf0HPlAJjC8Nj
         5gSXorUUJvZgCwv5TmYzlfitd2oEiI+V/mTnQvPl+PKWVXc6WPspMhgeccsITyh5HZvJ
         r9uBmLbUsRJnyBRAJ59ajijZFkqDH6rVKALGfAq5hyvkUaqUsepNPlWest81X+kTEG7s
         ndny97tqMIgNh0R51+H5uPaanOQ3TU5lgWqAaoP/h5mXnh3/XGK0QVDCzYYcVabi7k3/
         tkVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302aPcM6XSWM4JvdUv/pRAybzg4e9jFNHbVm5rDlGwc7RzWhRc8
	DJD3mdQhG6RcFDyWibWGv+U=
X-Google-Smtp-Source: ABdhPJzf234j+DHMRCBVDde0oFq1LUsdZmVWG47alXX+kL5CCxbTtjJ2ItC/hrrleZQ9vy6VXa2IVQ==
X-Received: by 2002:a63:550d:: with SMTP id j13mr2277511pgb.204.1621299308956;
        Mon, 17 May 2021 17:55:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7208:: with SMTP id ba8ls10117905plb.10.gmail; Mon,
 17 May 2021 17:55:08 -0700 (PDT)
X-Received: by 2002:a17:90a:8547:: with SMTP id a7mr2455231pjw.86.1621299308445;
        Mon, 17 May 2021 17:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621299308; cv=none;
        d=google.com; s=arc-20160816;
        b=GejLpy9k7gudAsTNxaIOu8bJ1rhlewzCSPASwQhyo4VC7UvXgep79k3oLWFQURPgFK
         eL4I2RhvA+mqvwxiPLZsBV4dOVw7XpQKEIQFrXah7HbmZ4B4BSj6lKh4BG/vJHajpqzM
         LoLxNPEz/R1XBxAI1Q6f69sK0kfAHE1w85FdOjuxbvb+rdde1mNfqe6LoiEcNIKLBRjM
         fDZ1J1A0HaKbRjO/TpSaW3HC6+i0d2AcUENNctP+7KPrRYFumwT1g3/EbRGa/rGgbw/c
         fuP/wQ6XDQxc+MyXpgJaKmRFxrQ19lkIKfFv6KVtXD5k+sbIHsx8ISEOJsbnvQgVCn1c
         Ys7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zKBri9GWbUYGRKMT0rCVGy1M5YmTXPFgm6WrwDF9iq4=;
        b=Q9OdIDTiWEVKh+XeQAzz6AfOiDJMxYfnKU9w2zelib3h7IdKRW+NgxhsX+6YJtTo5u
         wFmmFJkMMDL39T1SG0C10x7U10DiryqF9yPT6TlZnEDW9brQsjOXGXCSNSjICjnWjUM8
         /MJosz9A44FIxYpSBfY8OMb6p+mmt3pyMFPHtWTo5SoycNL12zK+zOzAgvqbZC6mJVoY
         fcKy2ILqXGilzGtYLqmbyfzCGI9BI5Dsx/zVe/2DT2MMhDLlfXcagqMEE1jbs3/uSZCe
         TksTt+ya2cJJ6mXWyhvdaXfQAMRVmoN789vjpApwpuPofESNXu4HBYppHovIJgYR+OQS
         zv7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sfT2fMRt;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mu11si1523953pjb.3.2021.05.17.17.55.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 17:55:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 467DD61090;
	Tue, 18 May 2021 00:55:06 +0000 (UTC)
Date: Mon, 17 May 2021 17:55:03 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Next Mailing List <linux-next@vger.kernel.org>,
	lkft-triage@lists.linaro.org,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Arnd Bergmann <arnd@arndb.de>, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [next] x86_64 defconfig failed with clang-10
Message-ID: <YKMQZ0MutUeMD4FH@archlinux-ax161>
References: <CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com>
 <e6ee5c21-a460-b4f7-9d0a-e2711ec16185@kernel.org>
 <CAKwvOd=4wux6NG_6tF6C_xjU0ps+Fh5hfW5a_0U+xcPgL+XJYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=4wux6NG_6tF6C_xjU0ps+Fh5hfW5a_0U+xcPgL+XJYg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sfT2fMRt;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, May 17, 2021 at 01:39:46PM -0700, Nick Desaulniers wrote:
> On Fri, May 14, 2021 at 1:54 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On 5/14/2021 11:12 AM, Naresh Kamboju wrote:
> > > My two cents,
> > > We know clang-10 support is stopped, but our build system is still running
> >
> > For the record, we are still building with clang-10 as that is the
> > minimum supported version for the kernel.
> >
> > > these builds with clang-10. one of those observations is,
> > >
> > > The LKFT build failures were noticed while building x86_64 and i386 with
> > > clang-10 on linux next-20210514 tag.
> > >
> > >    - x86_64 (defconfig) with clang-10 - FAIL
> > >    - i386 (defconfig) with clang-10 - FAIL
> > >    - x86_64 (defconfig) with clang-11 - PASS
> > >    - i386 (defconfig) with clang-11 - PASS
> > >    - x86_64 (defconfig) with clang-12 - PASS
> > >    - i386 (defconfig) with clang-12 - PASS
> > >
> > > Build log:
> > > ----------
> > > make --silent --keep-going --jobs=8
> > > O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=x86_64
> > > CROSS_COMPILE=x86_64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > > clang'
> > >
> > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > > eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=4+120
> > > cfa2=-1+0
> > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > > eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=4+104
> > > cfa2=-1+0
> > > x86_64-linux-gnu-ld: arch/x86/kernel/kprobes/opt.o: in function
> > > `arch_prepare_optimized_kprobe':
> > > opt.c:(.text+0x798): undefined reference to `__compiletime_assert_251'
> > > make[1]: *** [/builds/linux/Makefile:1272: vmlinux] Error 1
> >
> > Thanks for the report. Our CI also reported this:
> >
> > https://github.com/ClangBuiltLinux/continuous-integration2/runs/2582534773?check_suite_focus=true
> >
> > My bisect landed on "mm, slub: change run-time assertion in
> > kmalloc_index() to compile-time" in -next (I have added the author and
> > reviewers to cc):
> >
> > $ git bisect log
> > # bad: [cd557f1c605fc5a2c0eb0b540610f50dc67dd849] Add linux-next
> > specific files for 20210514
> > # good: [315d99318179b9cd5077ccc9f7f26a164c9fa998] Merge tag
> > 'pm-5.13-rc2' of
> > git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm
> > git bisect start 'cd557f1c605fc5a2c0eb0b540610f50dc67dd849'
> > '315d99318179b9cd5077ccc9f7f26a164c9fa998'
> > # good: [9634d7cb3c506ae886a5136d12b4af696b9cee8a] Merge remote-tracking
> > branch 'drm-misc/for-linux-next'
> > git bisect good 9634d7cb3c506ae886a5136d12b4af696b9cee8a
> > # good: [294636a24ae819a7caf0807d05d8eb5b964ec06f] Merge remote-tracking
> > branch 'rcu/rcu/next'
> > git bisect good 294636a24ae819a7caf0807d05d8eb5b964ec06f
> > # good: [cb753d0611f912439c8e814f4254d15fa8fa1d75] Merge remote-tracking
> > branch 'gpio-brgl/gpio/for-next'
> > git bisect good cb753d0611f912439c8e814f4254d15fa8fa1d75
> > # bad: [b1e7389449084b74a044a70860c6a1c7466781cb] lib/string_helpers:
> > switch to use BIT() macro
> > git bisect bad b1e7389449084b74a044a70860c6a1c7466781cb
> > # bad: [bf5570ed0654a21000e5dad9243ea1ba30bfe208] kasan: use
> > dump_stack_lvl(KERN_ERR) to print stacks
> > git bisect bad bf5570ed0654a21000e5dad9243ea1ba30bfe208
> > # bad: [4a292ff7a819404039588c7a9af272aca22c869e] fixup! mm: gup: pack
> > has_pinned in MMF_HAS_PINNED
> > git bisect bad 4a292ff7a819404039588c7a9af272aca22c869e
> > # good: [93e440dd0e482b6cde20630d58016a451fb2b431] ocfs2: fix snprintf()
> > checking
> > git bisect good 93e440dd0e482b6cde20630d58016a451fb2b431
> > # good: [f32aeffdb407b6390ef17ccac87e1a1a76663354] slub: remove
> > resiliency_test() function
> > git bisect good f32aeffdb407b6390ef17ccac87e1a1a76663354
> > # bad: [2c9b936dae88dbdbb28666a741c87b08abb1b755] mm/page-writeback:
> > update the comment of Dirty position control
> > git bisect bad 2c9b936dae88dbdbb28666a741c87b08abb1b755
> > # bad: [597da4750c8e8f5f304419f3c66b713a88f3ebbe]
> > tools/vm/page_owner_sort.c: check malloc() return
> > git bisect bad 597da4750c8e8f5f304419f3c66b713a88f3ebbe
> > # bad: [0ec3603432be3abba93ee7aa512cb6d83dd1c291] kfence: test: fix for
> > "mm, slub: change run-time assertion in kmalloc_index() to compile-time"
> > git bisect bad 0ec3603432be3abba93ee7aa512cb6d83dd1c291
> > # bad: [ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51] mm, slub: change
> > run-time assertion in kmalloc_index() to compile-time
> > git bisect bad ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51
> > # first bad commit: [ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51] mm, slub:
> > change run-time assertion in kmalloc_index() to compile-time
> >
> > https://git.kernel.org/next/linux-next/c/ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51
> >
> > It looks like LLVM fixed this in
> > http://github.com/llvm/llvm-project/commit/6aabb109becfee37126ff7db3d41a41b5779f359.
> >
> > I think this happens because arch_prepare_optimized_kprobe() calls
> > kzalloc() with a size of MAX_OPTINSN_SIZE, which is
> >
> > #define MAX_OPTINSN_SIZE                                \
> >         (((unsigned long)optprobe_template_end -        \
> >           (unsigned long)optprobe_template_entry) +     \
> >          MAX_OPTIMIZED_LENGTH + JMP32_INSN_SIZE)
> >
> > and the optprobe_template_{end,entry} are not evaluated as constants.
> >
> > I am not sure what the solution is. There seem to be a growing list of
> > issues with LLVM 10 that were fixed in LLVM 11, which might necessitate
> > requiring LLVM 11 and newer to build the kernel, given this affects a
> > defconfig.
> 
> If we can make the compile time validation done instead at runtime for
> clang-10, that would be preferable. Then when we drop clang-10
> support, we can revert that.  Looking at the diff, I think we could
> reinstate parts like so:
> 
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index 9d316aac0aba..4c13e2cd415c 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -412,6 +412,9 @@ static __always_inline unsigned int
> __kmalloc_index(size_t size,
>         if (size <=  8 * 1024 * 1024) return 23;
>         if (size <=  16 * 1024 * 1024) return 24;
>         if (size <=  32 * 1024 * 1024) return 25;
> +#if CLANG_VERSION <= 100000
> +       if (size <=  64 * 1024 * 1024) return 26;
> +#endif
> 
>         if (size_is_constant)
>                 BUILD_BUG_ON_MSG(1, "unexpected size in kmalloc_index()");
> diff --git a/mm/slab_common.c b/mm/slab_common.c
> index a0b8ffeae4ae..ecb6104b9dbb 100644
> --- a/mm/slab_common.c
> +++ b/mm/slab_common.c
> @@ -799,6 +799,9 @@ const struct kmalloc_info_struct kmalloc_info[]
> __initconst = {
>         INIT_KMALLOC_INFO(8388608, 8M),
>         INIT_KMALLOC_INFO(16777216, 16M),
>         INIT_KMALLOC_INFO(33554432, 32M)
> +#if CLANG_VERSION <= 10000
> +       ,INIT_KMALLOC_INFO(67108864, 64M)
> +#endif
>  };
> 
>  /*

I adapted that patch as below but unfortunately, that did not resolve
anything:

$ make -skj$(nproc) LLVM=1 LLVM_IAS=1 O=build/x86_64 distclean defconfig arch/x86/kernel/kprobes/opt.o

$ llvm-readelf -s build/x86_64/arch/x86/kernel/kprobes/opt.o | grep __compile
    10: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __compiletime_assert_251

I did suggest another change in the original patch thread:

https://lore.kernel.org/r/YKC9CeAfw3aBmHTU@archlinux-ax161/

Cheers,
Nathan

--------------------------------------------------------

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 9d316aac0aba..c55c09544538 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -412,6 +412,9 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
 	if (size <=  8 * 1024 * 1024) return 23;
 	if (size <=  16 * 1024 * 1024) return 24;
 	if (size <=  32 * 1024 * 1024) return 25;
+#if defined(CONFIG_CC_IS_CLANG) && CONFIG_CLANG_VERSION < 110000
+	if (size <=  64 * 1024 * 1024) return 26;
+#endif
 
 	if (size_is_constant)
 		BUILD_BUG_ON_MSG(1, "unexpected size in kmalloc_index()");
diff --git a/mm/slab_common.c b/mm/slab_common.c
index a0b8ffeae4ae..bd3fa2ed7e43 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -799,6 +799,9 @@ const struct kmalloc_info_struct kmalloc_info[] __initconst = {
 	INIT_KMALLOC_INFO(8388608, 8M),
 	INIT_KMALLOC_INFO(16777216, 16M),
 	INIT_KMALLOC_INFO(33554432, 32M)
+#if defined(CONFIG_CC_IS_CLANG) && CONFIG_CLANG_VERSION < 110000
+	,INIT_KMALLOC_INFO(67108864, 64M)
+#endif
 };
 
 /*

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKMQZ0MutUeMD4FH%40archlinux-ax161.
