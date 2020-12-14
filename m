Return-Path: <clang-built-linux+bncBAABBVV63X7AKGQEW3FEC2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F3C2D9843
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 13:49:28 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id f19sf11640662pgm.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 04:49:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607950167; cv=pass;
        d=google.com; s=arc-20160816;
        b=tRlfiRx2Yr9XOkRMfwCoy1jWK3DoyU3ZmoW5MThdEsNpYtSyFl0HjFZRq0prWjiAq+
         IGympXda+NwqeURjbx2uM/SIEjCl8qESvti6nyKS46gDXEGmNcqk8NrSnUYHsczbkJRY
         ASLdQi1S9Ns0DYYXQnnx6TUHWoGJ+4xgWNC3jdlHJoso8QwiH6zbY9x1jQvFVPO8bUjI
         LgikX5d5ZDicSi/B+GhBypEavi76RMYDFY1WUzTKOHR13bv3L32924mFn2TpGz/iwBBN
         Dbxcm+NKfTkVFxicMMDcGaOYjfe0CTLKiejaezP0xfSlcuxV3J9q23RPv5AzV5u6EjJe
         nB0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=wcadeTOF3XYbhHsiy/h8x96zkdEGkDBjOkmUaMWNwyg=;
        b=F4nJq/3FU8+UJUJxnln9FWAdG9aI8XwJuCqHQyEbzABL68Cl1gGXrsy5Lqo4vaOFuH
         rTNLuOU+cF1nluGx1BuMrP5Gtbps7Kaaw0GM95c3AdwY3OOC6cvtsOh59XBs6sckESHt
         zIRkuoi5XAK0tXJ4gSKPByNvI7GV5W6D3dqPz97qxSzl0g5lVwiPPe3cdX3bMENGBnRr
         NoyMXlJNTWUar2D5haZVXYopdDLmkU8frensTE+YlFSG0XpoEtR46Zj4hChCaOEDUidl
         p0GcBcJm/7UmYqP/4pd+UE94eyQXConiD4ofpRgZQeDvAd755iptmfo65+wCiuK4/EQ+
         1RHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ne8N9fUl;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wcadeTOF3XYbhHsiy/h8x96zkdEGkDBjOkmUaMWNwyg=;
        b=qLTLjEQxWGsZBpis0j5SXDgq0fJRK8865hvBy3BEmGdfB3F7gXI/9YB93H+BoHNS3p
         dH3ipSZ37b28RrszpJ//X90NV0KLzLVc/hmUvSk1Pi0pBtCNBDB6pAEb48HMm2Ju6mCq
         rZdJUf9x0oK+aVVwcYUaH6kCXqMq0Ln5b/CymgEmC5xJlXKP7DRExKWhBi6xig4zvdjv
         JV137IOe1azviqpvXZAOZG7PhnPVMV0dNFDDGvPWC/jN0OGn4At7xfE6OGV4JTzVmo9A
         +qAlDKXKoGcMIRErq9EWePtCkfZ95gStXQJ13T/EAuL3aVQlt1fxSW9mYFzvB4Ln2XHw
         /9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wcadeTOF3XYbhHsiy/h8x96zkdEGkDBjOkmUaMWNwyg=;
        b=iNMmEszT6hkGwrPb6Gw9pWa1A7L3n0zDd3O6Cb1r2cc6ez4V+EB2r0r6OmUw936FH+
         sVXweBOhR0PGmFCN9uLWsftHUOFRsu9/YWWb4kI1ym2rEQtoW4Pn+30ROl6t8nJGd7XP
         YBkPXkgtREPZwqk+k1c33+WR6isZJ6mE7HUFjEKej4+AK0LKkCar/ecZepMyafEh5Qt2
         VHG9QMuH0nkyz7Is5NEJZJFRvvexC30a4PJocsl0S3c0KYSH0opptBg+CNZjLxGjjdgN
         IPIqUm7gjsfBc/lm3Czd7vi6sUz8q6+hUlBLulSNGKx5gEduNcS39M3/yx+9BsHc0DLU
         zd1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sGgIi+zDLhxxouo5Q+pm49irrUpxo3ShcdGxwSTwvcf2+B5oH
	0V0m7m+WfcqmnyLh1nsR4Rc=
X-Google-Smtp-Source: ABdhPJxdNKG41kKKQiN+XaIeyHjwy+0fEvWgqcru6dSDK88QtFRrWLdPpJ8gAWGuaMja+INUs7YcvQ==
X-Received: by 2002:a17:90a:638a:: with SMTP id f10mr14546709pjj.191.1607950166911;
        Mon, 14 Dec 2020 04:49:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4947:: with SMTP id y7ls6518414pgk.3.gmail; Mon, 14 Dec
 2020 04:49:26 -0800 (PST)
X-Received: by 2002:a65:4847:: with SMTP id i7mr23807259pgs.223.1607950166364;
        Mon, 14 Dec 2020 04:49:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607950166; cv=none;
        d=google.com; s=arc-20160816;
        b=Y/c8w3cgW65yimg+1yjKjaycmfd/iyamH6Flvcfgfz7VpQOu9cERMmqXDZ1M35c5bG
         KQ83BtlQWXIyEOF8GlaoDM781nIJla029n396BQKmk9qW8V1YQ7re1HT7AH7VAKck2ug
         l1UNrusi9xJqH1mjPuQMarXJFEmbQmwauBwr8B7oFsj1tzDhwYCxxg3/cjpxV1p1KJcn
         VF95iEINxtyuc2hEWzEy9qOySP4+tMo775GUat52lRrI3+RT6cGti4h0p78qfW0uYH6a
         qt8pBieLXi8/ncgBx6b+JQQFTcuYbUlItVWzessADRNqsRVLmy7uKJTuiStM8HhYeufj
         E+4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jO5AguuLYtmRd28jnefTNr/gggPw0ai8s2gS3NhTgvQ=;
        b=qwV71yG3BPjEHtwkMyYVFnvK67fOurCoBn16379u7eIBz3z0cx3x6nK4pFvIOFCYYU
         Bkjl29OMbK1dfIGuxXQ4j3nlsDPM4AKsL6+Yoa13pWq1vQBGcQmMM7WbdJKhvJamFHdZ
         Vc0O9srqhNFbTd45Vd6IoRVAR4Ea/eroTHXoPWrxXZiEzmItrESBOIf2tgDvFz0R5248
         ArFhpi0xLrBr5GGXM/upO/mFkkkLkJf37dLou4Psq15aTlrXO1gU16Ag9+eFXCYdL8dV
         myiG0wSFCWHWUrhasFuw4jdgiXnNRR9gGjLidRv9PCbA08dHtnkol6e9K33Nypju0GR9
         J+WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ne8N9fUl;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y68si1280620pfy.0.2020.12.14.04.49.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 04:49:26 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a05:6830:2413:: with SMTP id j19mr10726115ots.251.1607950165001;
 Mon, 14 Dec 2020 04:49:25 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
 <20201211093205.GU2414@hirez.programming.kicks-ass.net> <20201211163748.b37gashl6an6misu@treble>
 <20201211164915.GA2414@hirez.programming.kicks-ass.net> <20201211174610.2bfprpvrrlg66awd@treble>
 <CAKwvOdkWU3qQ_m3v1xn1Mm6+obC202NWEaF8g_gz3oqeeLkMQA@mail.gmail.com> <CAKwvOdmVq2StZbKZ0eaLEZmrPMgRUJMZFso+2G8tLJA_Nd-swA@mail.gmail.com>
In-Reply-To: <CAKwvOdmVq2StZbKZ0eaLEZmrPMgRUJMZFso+2G8tLJA_Nd-swA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 14 Dec 2020 13:49:07 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2NudGg_i7AMMF67mcFy-UD3RZbUwdWOm5Wv0AUQ0nLLQ@mail.gmail.com>
Message-ID: <CAK8P3a2NudGg_i7AMMF67mcFy-UD3RZbUwdWOm5Wv0AUQ0nLLQ@mail.gmail.com>
Subject: Re: objtool crashes with some clang produced .o files
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ne8N9fUl;       spf=pass
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

net/xfrm/xfrm_output.o: warning: objtool: xfrm_output_resume()+0xdb4:
unreachable instruction
On Sat, Dec 12, 2020 at 1:42 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Dec 11, 2020 at 12:57 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Thanks for the patch!
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1207
>
> Arnd reported another objtool warning/error from another randconfig in
> https://github.com/ClangBuiltLinux/linux/issues/1209 and CrOS just hit
> this as well.
>
> I haven't been able to isolate the configs yet (Arnd has posted the
> full config: https://pastebin.com/wwwhUL8L
>
> $ ./tools/objtool/objtool orc generate  --no-fp --no-unreachable
> --retpoline arch/x86/entry/thunk_64.o
> arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn
> at offset 0x3e
>
> Is the offset 0x3e referring to the final `ret` instruction in
> preempt_schedule_notrace_thunk?  Observing insn_to_reloc_sym_addend()
> (with your patch applied), it looks like both calls to
> find_symbol_containing() with offset and offset-1 returns NULL.  I'm
> curious if there's another quirk going on here, or possibly a config
> from the randconfig that's messing up the special case? I don't follow
> the comment about:
> 119        * Hack alert.  This happens when we need to reference
> 120        * the NOP pad insn immediately after the function.
> 121        */
>
> Attached the object file FWIW.

For completeness, these are the ones I currently see using clang-11
and clang-12, I believe
I have reported each one in the past:

1. For each file in kernel/trace/
kernel/trace/trace_clock.o: warning: objtool:
__llvm_gcov_writeout()+0x7: call without frame pointer save/setup
kernel/trace/trace_clock.o: warning: objtool: __llvm_gcov_reset()+0x0:
call without frame pointer save/setup
kernel/trace/trace_clock.o: warning: objtool: __llvm_gcov_flush()+0x0:
call without frame pointer save/setup
kernel/trace/trace_clock.o: warning: objtool: __llvm_gcov_init()+0x0:
call without frame pointer save/setup

2) reiserfs_panic()
fs/reiserfs/do_balan.o: warning: objtool: replace_key()+0x3db: stack
state mismatch: cfa1=7+104 cfa2=7+128
fs/reiserfs/do_balan.o: warning: objtool: balance_leaf()+0xd80d: stack
state mismatch: cfa1=7+424 cfa2=7+440
fs/reiserfs/lbalance.o: warning: objtool:
leaf_copy_boundary_item()+0x2bc5: stack state mismatch: cfa1=7+248
cfa2=7+240
fs/reiserfs/lbalance.o: warning: objtool:
leaf_copy_items_entirely()+0xcda: stack state mismatch: cfa1=7+256
cfa2=7+248
fs/reiserfs/ibalance.o: warning: objtool: balance_internal()+0x3448:
stack state mismatch: cfa1=7+328 cfa2=7+336
fs/reiserfs/ibalance.o: warning: objtool:
internal_move_pointers_items()+0x7c1: stack state mismatch: cfa1=7+200
cfa2=7+192

3) unreachable instructions:
arch/x86/entry/entry_64.o: warning: objtool: .entry.text+0xb95:
unreachable instruction
net/xfrm/xfrm_output.o: warning: objtool: xfrm_output_resume()+0xdb4:
unreachable instruction
drivers/hwmon/pmbus/adm1275.o: warning: objtool:
adm1275_probe()+0x622: unreachable instruction
drivers/xen/privcmd.o: warning: objtool: mmap_batch_fn()+0x14d:
unreachable instruction
drivers/xen/privcmd.o: warning: objtool:
privcmd_ioctl_mmap_batch()+0x954: unreachable instruction
lib/string.o: warning: objtool: fortify_panic()+0x3: unreachable instruction
drivers/scsi/smartpqi/smartpqi_init.o: warning: objtool:
pqi_shutdown()+0x244: unreachable instruction

4) jitterentropy built with -O0:
crypto/jitterentropy.o: warning: objtool: tsan.module_ctor()+0x0: call
without frame pointer save/setup

5) unsafe_put_user() misoptimization
arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x4c7:
call to memset() with UACCESS enabled
arch/x86/ia32/ia32_signal.o: warning: objtool:
ia32_setup_rt_frame()+0x15b: call to memset() with UACCESS enabled

6) user_access_save()/restore() problem in ftrace
kernel/trace/trace_branch.o: warning: objtool:
ftrace_likely_update()+0x1ed: call to __stack_chk_fail() with UACCESS
enabled

7) sibling calls:
mm/vmscan.o: warning: objtool: shrink_node()+0x540: sibling call from
callable instruction with modified stack frame
drivers/spi/spi-rockchip.o: warning: objtool:
rockchip_spi_transfer_one()+0x2e0: sibling call from callable
instruction with modified stack frame
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
check_relocations()+0x68: return with modified stack frame

8) i915 GEM_BUG_ON() stack state mismatch (same as reiserfs_panic()):
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
check_relocations()+0x145: stack state mismatch: cfa1=7+48 cfa2=-1+0
drivers/gpu/drm/i915/gem/i915_gem_mman.o: warning: objtool:
__igt_mmap_revoke()+0x180: stack state mismatch: cfa1=7+48 cfa2=-1+0

9) kasan build, for each file:
     arch/x86/entry/vdso/vma.o: warning: objtool:
asan.module_ctor()+0xc: call without frame pointer save/setup
     arch/x86/entry/vdso/vma.o: warning: objtool:
asan.module_dtor()+0xc: call without frame pointer save/setup
     arch/x86/entry/vsyscall/vsyscall_64.o: warning: objtool:
asan.module_ctor()+0xc: call without frame pointer save/setup
     arch/x86/entry/vsyscall/vsyscall_64.o: warning: objtool:
asan.module_dtor()+0xc: call without frame pointer save/setup
     arch/x86/events/amd/core.o: warning: objtool:
asan.module_ctor()+0xc: call without frame pointer save/setup
     arch/x86/events/amd/core.o: warning: objtool:
asan.module_dtor()+0xc: call without frame pointer save/setup
     arch/x86/events/amd/ibs.o: warning: objtool:
asan.module_ctor()+0xc: call without frame pointer save/setup
     arch/x86/events/amd/ibs.o: warning: objtool:
asan.module_dtor()+0xc: call without frame pointer save/setup

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2NudGg_i7AMMF67mcFy-UD3RZbUwdWOm5Wv0AUQ0nLLQ%40mail.gmail.com.
