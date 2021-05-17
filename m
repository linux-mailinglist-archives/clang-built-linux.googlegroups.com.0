Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHVJROCQMGQESTWRTMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7D1386B8B
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 22:39:59 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id z14-20020a2e964e0000b02900e9ad576f5asf3594326ljh.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 13:39:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621283998; cv=pass;
        d=google.com; s=arc-20160816;
        b=CXNLdKsCdKNrmjgQZVEH+QDMN4EE9CeATkJWoC8jmjOMRGK2SOfme0TqXlDKHGw4yw
         NjI/G82rpnWbOmgv3alw4dYdIuvexRS6mhRnI1coiPhhuohducvjVeo2wXiy07RJS0sb
         imUCsiZWDMQX98pqTtw10wYmc1T+3Q8AAWy+h8LZMPMk9ZoYeOTXjHbMmKrCcpnLoOhX
         mjGgPv1xlFPXdzuY+cv2ytmx1ly75pOzSE6xDyTBYvwiDoiaDDeojV0iI7FdbJWel0El
         it1A/Rwqqn4qqf3wUF4QL0hs0xQRohjGw7Apdc1sNuSMLyNY4WRqhItC1Sy7HobiV/O8
         5Ddg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Iq35+QeQbeyTOU0HGVE3yClyhdC7iIubvaIZjQ7uZnA=;
        b=ADxxijuVjxq9CfiicYQvhfk8qNTJwYv+/bP16N+nBI9xILFPN1V/7CtBuswN6o/v0F
         rzFfgtmg2Ygkmsb/QnDUhPbqsyqUd+XFwAGR54YP/4EKxZM65XA6228HUBLqo+wFCa0F
         Teoj4e6DkuLgBeuTwAAi1z8GakbB5LHY/rdFST1/EnSV7keDq/3K4ZGEGanVHW66MIuj
         VgFVz2ALLHjYAKXXVTqpgu1kpiBjm80taDuAdmIovZf4GVer69zzlkTo7tTgkYlS5/k+
         RWNB+PslO4YnBLwdw2VUrna18T8NsC7EhuyzbdWnwII2V4rgvBVUKNarNNISY1CT3AoS
         5kaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NrIz577D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iq35+QeQbeyTOU0HGVE3yClyhdC7iIubvaIZjQ7uZnA=;
        b=SVOR4XUPRbYA4zyjhLkwzyIN4MOdlVKV3ngIGxXgnsmOsbAdZuWPNomJ1ukdVLRM2f
         xft5jAn7iHmcEW1euQR8+5ZQSVUicO3ueOK+ww9wWpwIqkVVp1yV/u1Mi7J9qiJ6oR4Z
         v+Y1AQrJEzQwqa56QS2ThroNjzqAeVrD2XPtE0GLSX4ozIwTgTXli9tG4K8KeyTczb+B
         ziDfiu+ErAUPWbV9+VSLjR2ynYUVb6f930XJmgyj+OfDbetqJ6CiyVAsvFDG2Ea+woed
         kuIkztWMDsLXwoxvdJeQ7E/ELBeTMU7pnXGX3qNx1sfIJ9ieWFZR7QiS4EhSYXuN7ZdV
         TfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iq35+QeQbeyTOU0HGVE3yClyhdC7iIubvaIZjQ7uZnA=;
        b=FlaPBHxPkGkpjf8ejYCqT6VkK3BT1oz3ZtKlvRU3Yk4ra5L8TREwzRmIoHSH3enKrM
         Zqrmp+WZBXoiZUvOFEGAiPCfayS47CT88bQ77uaGnji0VdqDQkwaDr4llfgZNkcplOBU
         S/PRG7FgufM3FyYjzvUTULRf1VEOSkPoJNfGHcyVgNXf5rlT2LbalpKWq8gvlLdOcMvz
         igANscl8PhElkCFj4pt3vL7JAL8VRf3Pbmr6qQm6wfdm5hQvi2Th4uxRTw9VS1Ukgsqd
         M95RF2hjOMPOcGmYu6Ms8n5TLw9gFJz40Li53dFqVP16fyyosy55yvpHotobzEaRfS9L
         Hk3g==
X-Gm-Message-State: AOAM532el9MSdbYd9nHT1M/8Ry+ERNRZUi4RCP5TIoz5iv0yvC5bB+jb
	oCWBqGWUPrV+qLpPNEUGgoM=
X-Google-Smtp-Source: ABdhPJx9uLfK/UF+cNKlK0ECvP8eoQnQ8f4qlEjhrJ/bGZ/PoqvLQkqB4zhw5ZCZoYwNdj52hDod4w==
X-Received: by 2002:a2e:a792:: with SMTP id c18mr978777ljf.179.1621283998639;
        Mon, 17 May 2021 13:39:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5592:: with SMTP id v18ls1739029lfg.0.gmail; Mon, 17 May
 2021 13:39:57 -0700 (PDT)
X-Received: by 2002:a05:6512:1292:: with SMTP id u18mr1115545lfs.488.1621283997480;
        Mon, 17 May 2021 13:39:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621283997; cv=none;
        d=google.com; s=arc-20160816;
        b=LH6T14vL6vvjAelZCWTlPqWJNRXrcogWewdjxeelEZL6s777VQnW/nqrBySSCaCiQN
         GixBn9VdoMs7nKmfL5Er6XHbtk5yZtXJmrZg2ujLPX2uJi5Z/cqwSVD36sveIsMmYqEa
         guPLgj2Z/ejtC3CrzUWBoNff0wlt1SeQXUEol2PnKs17oxWfqm/7FbbJtAwyRg7C9ab0
         iBg74QmNWgTpJY41kqB2NhQV7xYOg71B9kPtUI2MGoHQJiSBXda5hgHUCFRYA9cQM4vg
         i7NUZuhRm1YwNgnx5PuAPnPeeb+CJbljD2xncL4CIeRrBxisK9p+ousAZmd2dBK7HLQx
         4UpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eWLNFGlfwzWOozc88A/wtY40ed6i6D9kMoBVlA8pWdI=;
        b=hc0V5ehLWqLZVxkCx3cUOLgWL/DDftn9p4hRSd3jZoRDIKlh5KM7FiZK7kSc/DUhu+
         jJVyn6ign6FPpvrOnHRqO+f0GLuGKzJHKZxWOM3tUbjAAi9IGi/N49mbr2E25B6SQYrx
         W2y0U/GeBB3eQniZPe0L3qzWvYNCichlnctOgkefQTWF4ICqUy4A8tN4sMRB3xXl/X/B
         CIvhlZ7amdiF7n/kSZH6za2UAvs7oORZT6QzUvmqCm1R+7HNJ/fvREHBhVz/lApGvmGH
         FTc3zbbLIF+DoseasTnn3RZcdoRwXRInLRwbOiY8Bf6x1GPfMfxMawpWI7PYLLb8EHn/
         jTqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NrIz577D;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id o20si585386lfu.5.2021.05.17.13.39.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 13:39:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id o8so8923676ljp.0
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 13:39:57 -0700 (PDT)
X-Received: by 2002:a2e:b710:: with SMTP id j16mr948049ljo.479.1621283996770;
 Mon, 17 May 2021 13:39:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com>
 <e6ee5c21-a460-b4f7-9d0a-e2711ec16185@kernel.org>
In-Reply-To: <e6ee5c21-a460-b4f7-9d0a-e2711ec16185@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 17 May 2021 13:39:46 -0700
Message-ID: <CAKwvOd=4wux6NG_6tF6C_xjU0ps+Fh5hfW5a_0U+xcPgL+XJYg@mail.gmail.com>
Subject: Re: [next] x86_64 defconfig failed with clang-10
To: Nathan Chancellor <nathan@kernel.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>, 
	Hyeonggon Yoo <42.hyeyoo@gmail.com>, Vlastimil Babka <vbabka@suse.cz>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NrIz577D;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Fri, May 14, 2021 at 1:54 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 5/14/2021 11:12 AM, Naresh Kamboju wrote:
> > My two cents,
> > We know clang-10 support is stopped, but our build system is still running
>
> For the record, we are still building with clang-10 as that is the
> minimum supported version for the kernel.
>
> > these builds with clang-10. one of those observations is,
> >
> > The LKFT build failures were noticed while building x86_64 and i386 with
> > clang-10 on linux next-20210514 tag.
> >
> >    - x86_64 (defconfig) with clang-10 - FAIL
> >    - i386 (defconfig) with clang-10 - FAIL
> >    - x86_64 (defconfig) with clang-11 - PASS
> >    - i386 (defconfig) with clang-11 - PASS
> >    - x86_64 (defconfig) with clang-12 - PASS
> >    - i386 (defconfig) with clang-12 - PASS
> >
> > Build log:
> > ----------
> > make --silent --keep-going --jobs=8
> > O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=x86_64
> > CROSS_COMPILE=x86_64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > clang'
> >
> > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=4+120
> > cfa2=-1+0
> > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=4+104
> > cfa2=-1+0
> > x86_64-linux-gnu-ld: arch/x86/kernel/kprobes/opt.o: in function
> > `arch_prepare_optimized_kprobe':
> > opt.c:(.text+0x798): undefined reference to `__compiletime_assert_251'
> > make[1]: *** [/builds/linux/Makefile:1272: vmlinux] Error 1
>
> Thanks for the report. Our CI also reported this:
>
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/2582534773?check_suite_focus=true
>
> My bisect landed on "mm, slub: change run-time assertion in
> kmalloc_index() to compile-time" in -next (I have added the author and
> reviewers to cc):
>
> $ git bisect log
> # bad: [cd557f1c605fc5a2c0eb0b540610f50dc67dd849] Add linux-next
> specific files for 20210514
> # good: [315d99318179b9cd5077ccc9f7f26a164c9fa998] Merge tag
> 'pm-5.13-rc2' of
> git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm
> git bisect start 'cd557f1c605fc5a2c0eb0b540610f50dc67dd849'
> '315d99318179b9cd5077ccc9f7f26a164c9fa998'
> # good: [9634d7cb3c506ae886a5136d12b4af696b9cee8a] Merge remote-tracking
> branch 'drm-misc/for-linux-next'
> git bisect good 9634d7cb3c506ae886a5136d12b4af696b9cee8a
> # good: [294636a24ae819a7caf0807d05d8eb5b964ec06f] Merge remote-tracking
> branch 'rcu/rcu/next'
> git bisect good 294636a24ae819a7caf0807d05d8eb5b964ec06f
> # good: [cb753d0611f912439c8e814f4254d15fa8fa1d75] Merge remote-tracking
> branch 'gpio-brgl/gpio/for-next'
> git bisect good cb753d0611f912439c8e814f4254d15fa8fa1d75
> # bad: [b1e7389449084b74a044a70860c6a1c7466781cb] lib/string_helpers:
> switch to use BIT() macro
> git bisect bad b1e7389449084b74a044a70860c6a1c7466781cb
> # bad: [bf5570ed0654a21000e5dad9243ea1ba30bfe208] kasan: use
> dump_stack_lvl(KERN_ERR) to print stacks
> git bisect bad bf5570ed0654a21000e5dad9243ea1ba30bfe208
> # bad: [4a292ff7a819404039588c7a9af272aca22c869e] fixup! mm: gup: pack
> has_pinned in MMF_HAS_PINNED
> git bisect bad 4a292ff7a819404039588c7a9af272aca22c869e
> # good: [93e440dd0e482b6cde20630d58016a451fb2b431] ocfs2: fix snprintf()
> checking
> git bisect good 93e440dd0e482b6cde20630d58016a451fb2b431
> # good: [f32aeffdb407b6390ef17ccac87e1a1a76663354] slub: remove
> resiliency_test() function
> git bisect good f32aeffdb407b6390ef17ccac87e1a1a76663354
> # bad: [2c9b936dae88dbdbb28666a741c87b08abb1b755] mm/page-writeback:
> update the comment of Dirty position control
> git bisect bad 2c9b936dae88dbdbb28666a741c87b08abb1b755
> # bad: [597da4750c8e8f5f304419f3c66b713a88f3ebbe]
> tools/vm/page_owner_sort.c: check malloc() return
> git bisect bad 597da4750c8e8f5f304419f3c66b713a88f3ebbe
> # bad: [0ec3603432be3abba93ee7aa512cb6d83dd1c291] kfence: test: fix for
> "mm, slub: change run-time assertion in kmalloc_index() to compile-time"
> git bisect bad 0ec3603432be3abba93ee7aa512cb6d83dd1c291
> # bad: [ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51] mm, slub: change
> run-time assertion in kmalloc_index() to compile-time
> git bisect bad ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51
> # first bad commit: [ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51] mm, slub:
> change run-time assertion in kmalloc_index() to compile-time
>
> https://git.kernel.org/next/linux-next/c/ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51
>
> It looks like LLVM fixed this in
> http://github.com/llvm/llvm-project/commit/6aabb109becfee37126ff7db3d41a41b5779f359.
>
> I think this happens because arch_prepare_optimized_kprobe() calls
> kzalloc() with a size of MAX_OPTINSN_SIZE, which is
>
> #define MAX_OPTINSN_SIZE                                \
>         (((unsigned long)optprobe_template_end -        \
>           (unsigned long)optprobe_template_entry) +     \
>          MAX_OPTIMIZED_LENGTH + JMP32_INSN_SIZE)
>
> and the optprobe_template_{end,entry} are not evaluated as constants.
>
> I am not sure what the solution is. There seem to be a growing list of
> issues with LLVM 10 that were fixed in LLVM 11, which might necessitate
> requiring LLVM 11 and newer to build the kernel, given this affects a
> defconfig.

If we can make the compile time validation done instead at runtime for
clang-10, that would be preferable. Then when we drop clang-10
support, we can revert that.  Looking at the diff, I think we could
reinstate parts like so:

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 9d316aac0aba..4c13e2cd415c 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -412,6 +412,9 @@ static __always_inline unsigned int
__kmalloc_index(size_t size,
        if (size <=  8 * 1024 * 1024) return 23;
        if (size <=  16 * 1024 * 1024) return 24;
        if (size <=  32 * 1024 * 1024) return 25;
+#if CLANG_VERSION <= 100000
+       if (size <=  64 * 1024 * 1024) return 26;
+#endif

        if (size_is_constant)
                BUILD_BUG_ON_MSG(1, "unexpected size in kmalloc_index()");
diff --git a/mm/slab_common.c b/mm/slab_common.c
index a0b8ffeae4ae..ecb6104b9dbb 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -799,6 +799,9 @@ const struct kmalloc_info_struct kmalloc_info[]
__initconst = {
        INIT_KMALLOC_INFO(8388608, 8M),
        INIT_KMALLOC_INFO(16777216, 16M),
        INIT_KMALLOC_INFO(33554432, 32M)
+#if CLANG_VERSION <= 10000
+       ,INIT_KMALLOC_INFO(67108864, 64M)
+#endif
 };

 /*
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D4wux6NG_6tF6C_xjU0ps%2BFh5hfW5a_0U%2BxcPgL%2BXJYg%40mail.gmail.com.
