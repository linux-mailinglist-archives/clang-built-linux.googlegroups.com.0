Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBJUFTHVQKGQEUCARTXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6D19FDC0
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 11:00:23 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id u196sf627815oif.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 02:00:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566982822; cv=pass;
        d=google.com; s=arc-20160816;
        b=fxyxkPxRkDIWcdt0s1FcTgOsFmhGYvIIJYg7oVfD4Q5s+JFdhTIw7mACsFnrYf/DKl
         WItNsgJgh7n1rU8hkGINRNri5TL4JwzXJFYmA7Zc9HjrxOSPNjTr/NIM/rX3OX4TeSOG
         i4S8EPVj7ebY9KfeiJQGB/NrFJAUPpgqwywno4ZLYlxww6hctv/Cd2g6zcBNX9ihV2xz
         USpwOWqbkbpFsO0t1CVY2X6uz8NPFAkZoh6Jh6YQb9ASTfHLkyHl0ttXJOvBW4Vda1tl
         SNbNyvrlSTmFqmVekPvBm0+9JjmwIocIGunKmmL478DjTwr5WHfAjA8eSKBx9+8iw24D
         DnPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ENS1XkBWvi+aLJK+eaB8zdN+ZDl9KAQXTS/b9/B0Zyo=;
        b=PK+gLz+3ttJzoYIaSZrcjKU+e9pEP+KPEjWVCBctw9A69sFpNkgVL85h25tMiZwPBl
         qIE/6n4UGqBaxjTwBwAh5nD0MwJT0ZHd6jPLDFsH201+GjtG39xEAqxvdkCF7Y5kO5vT
         20GTYzzkr55GrNEfyXm1WncxM2csWdbAtxPmX6PpaP4AyDucBc7n+1+dJ17Mln3MqpL7
         rf2VX4KQDp5Xc1/jGW9Kv2am/v+ZGbZQ5SEfArdIZHjuB2Z5i86XDEOeYeHcW5GkI5CZ
         EM8a6Y1bhmIRqVf0XaMy+Zcv8SJy3afOAng5GUibmjb3pWQbRATw4lq+AZTm9uBg+GTe
         g5lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ENS1XkBWvi+aLJK+eaB8zdN+ZDl9KAQXTS/b9/B0Zyo=;
        b=eBIb6B6BaWIGWv5TtIN20bAKijHzsc0HYfaY72oTy49mQOVmT3fSqp9+rxZ0dHxrb0
         ykwDJEpJdoT9uvmsTCeCs/0NQVyDtEU4Elf7FHoUEBVmf7/SiqVOF1HN74ggg4+xf6nM
         KGm621E3qqmivpPFSIJZlA9PvDsuY+N28+sf0U3zKBVrOaV7EonYPOvgZBm+062q82Ah
         KTaHIlXQfgfraYMKJeyiYRFsIUe/T5h3Kfefw+5isaMjbgydJQs5vauMsYaBjkbMYq2G
         eiV5snPam2sh/weYZbtzab9es4QfMwWJQq5P74H7jTvP272Qc9PJNzRXGOEh5lMelXwH
         u4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ENS1XkBWvi+aLJK+eaB8zdN+ZDl9KAQXTS/b9/B0Zyo=;
        b=QEE1IO1U8qpQyyfidVFehleRGFAKmTekCLIwa0mIw+7mQN0woDzwFpjJ+TjzEjGG3r
         tWyg7cHWjCkIYJB8U2cM9LQEHbmF4xImNKfW37AoJ6F3NFEkwAA6k3FOkr8+jbWrUu7E
         ygXJ5CFF76sL4GvNLYh3sRf7z7NxCJAepmOQv4kgZBTQ8doNdbJqfzdMFbMq0C+99zsI
         +71Ac3xqpHMMu0DAUamMOVFD1pL/JWEwPDEIxrcu6M4+DNdrSNRXL96mdsw9i/KxI0nP
         nRUxqgcOfV/FL0rwnBmeFlfIjSism/2Lg81BWkoWMYkCzU1C+/LO8mHFZzjrOJZTv7Tr
         EQsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3mJ4r2MYlODlT2OUQ2XJ9bve4v5i9hoYLwU8Upqj8VD6QS1ui
	xlMAHRLa3jysqS+EFiZ3onU=
X-Google-Smtp-Source: APXvYqxXSsxt3/GVcHFGt7a03AXw+P5e2lYJRRW0s7JungJqxxsJA0o4eRYJWFgD5BbWKTCG/sTuiQ==
X-Received: by 2002:a05:6830:14ce:: with SMTP id t14mr2404693otq.316.1566982822286;
        Wed, 28 Aug 2019 02:00:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6250:: with SMTP id i16ls284134otk.1.gmail; Wed, 28 Aug
 2019 02:00:21 -0700 (PDT)
X-Received: by 2002:a05:6830:1015:: with SMTP id a21mr2414969otp.232.1566982821968;
        Wed, 28 Aug 2019 02:00:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566982821; cv=none;
        d=google.com; s=arc-20160816;
        b=m1KBsSHPwvo8SSA/It6Vzq2bDtfqL4HZmZMSSFeBLZadqilmKRkeTRnpwjcLEi1Vz5
         rM0U6HBpMtgKjIXIs8j3y/K3g3XouD2p9+eStXFwWd5qumn8HqPwfIkBo4TMYWyStjEl
         S4iQjp4n/Gb1+veFEjGooHdfrQ+bgiZboXt2J2uypPmILC1hxS6xJtZFoLkmTlcIUDiL
         ptjn9iEAgwzL21DbMAc/VRn2GuBw8KRnbO8KfGQvUBoGy1fR49/E3TlABVrywCFESS0E
         v8jK0ZCwIFhuSnJWV7Ho4eVJ/VlOVaPDh0dUODfVZvy3vq3WXC5caT+YObv2+mEWNzOA
         FrOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=OUW305HffLjg7EH9ex82HE6wB5d1znsqD2HU0SvH2s0=;
        b=z4p6XbRtJrnkfdIcd8UBlKEQAXHC+dQJOPvUpPBblbnqIpg5/MjEH4dj3/2rLJh7sX
         TxvDeL1fitFyjSyDqFrjWcA79rUD4TEI+0ATNLc48ksu6kbWVO06Un+m6f4wrrjoHgOn
         2FNXBpFHGzicVka5Qs7jtNElDayOeBoETnqvmFtU2cehoSDhc0K/8gOL3qQFFFIM1CrL
         jYeHXF6m/ymRj8130oriEi6D4IQfazuRkUllsAAvGLL3P9tD3/xDwWkjka/p04hnrad1
         i/b/h6fInRtjmrRY2dw7PaNV7p8sFVZcNlmuxFhUEPupbjIFltqkB2npS+DBAUXHFt/c
         TLAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id p205si102367oic.1.2019.08.28.02.00.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 02:00:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id y22so1699724qkb.11
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 02:00:21 -0700 (PDT)
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr2720341qka.3.1566982821079;
 Wed, 28 Aug 2019 02:00:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
In-Reply-To: <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Aug 2019 11:00:04 +0200
Message-ID: <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Aug 27, 2019 at 11:22 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Tue, Aug 27, 2019 at 12:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Tue, Aug 27, 2019 at 9:23 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > > On Tue, Aug 27, 2019 at 09:00:52PM +0200, Arnd Bergmann wrote:
> > > > On Tue, Aug 27, 2019 at 5:00 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> Thanks for the description of the issue and the reduced test case.  It
> almost reminds me of
> https://github.com/ClangBuiltLinux/linux/issues/612.
>
> I've filed https://bugs.llvm.org/show_bug.cgi?id=43128, anything I
> should add to the bug report?

I tried the suggestion to add

diff --git a/Makefile b/Makefile
index 1b23f95db176..97f7bc4c9b4e 100644
--- a/Makefile
+++ b/Makefile
@@ -755,7 +755,7 @@ endif

 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
 ifdef CONFIG_FRAME_POINTER
-KBUILD_CFLAGS  += -fno-omit-frame-pointer -fno-optimize-sibling-calls
+KBUILD_CFLAGS  += -fno-omit-frame-pointer -fno-optimize-sibling-calls
$(call cc-option, -mno-omit-leaf-frame-pointer)
 else
 # Some targets (ARM with Thumb2, for example), can't be built with frame
 # pointers.  For those, we don't have FUNCTION_TRACER automatically

from https://bugs.llvm.org/show_bug.cgi?id=43128, this avoids all the
"uses BP as a scratch register" warnings as well as almost all the "call without
frame pointer save/setup" warnings I also saw.

Only a few unique objtool warnings remain now, here are the ones I
currently see,
along with .config files. Let me know which ones I should investigate further,
I assume a lot of these are known issues:

http://paste.ubuntu.com/p/XjdDsypRxX/
0x5BA1B7A1:arch/x86/ia32/ia32_signal.o: warning: objtool:
ia32_setup_rt_frame()+0x238: call to memset() with UACCESS enabled
0x5BA1B7A1:arch/x86/kernel/signal.o: warning: objtool:
__setup_rt_frame()+0x5b8: call to memset() with UACCESS enabled
0x5BA1B7A1:mm/kasan/common.o: warning: objtool: kasan_report()+0x44:
call to __stack_chk_fail() with UACCESS enabled
0x5BA1B7A1:kernel/trace/trace_selftest_dynamic.o: warning: objtool:
__llvm_gcov_writeout()+0x13: call without frame pointer save/setup
0x5BA1B7A1:kernel/trace/trace_selftest_dynamic.o: warning: objtool:
__llvm_gcov_flush()+0x0: call without frame pointer save/setup
0x5BA1B7A1:kernel/trace/trace_clock.o: warning: objtool:
__llvm_gcov_writeout()+0x14: call without frame pointer save/setup
0x5BA1B7A1:kernel/trace/trace_clock.o: warning: objtool:
__llvm_gcov_flush()+0x0: call without frame pointer save/setup
0x5BA1B7A1:kernel/trace/*: # many more of the same, all in this directory
0x5BA1B7A1:kernel/trace/trace_uprobe.o: warning: objtool:
__llvm_gcov_flush()+0x0: call without frame pointer save/setup

http://paste.ubuntu.com/p/PyYNBK5Yx2/
0xC1CF60CC:arch/x86/ia32/ia32_signal.o: warning: objtool:
ia32_setup_rt_frame()+0x205: call to memset() with UACCESS enabled
0xC1CF60CC:arch/x86/kernel/signal.o: warning: objtool:
__setup_rt_frame()+0x597: call to memset() with UACCESS enabled
0xC1CF60CC:arch/x86/kernel/process.o: warning: objtool:
play_dead()+0x3: unreachable instruction
0xC1CF60CC:mm/kasan/common.o: warning: objtool: kasan_report()+0x52:
call to __stack_chk_fail() with UACCESS enabled
0xC1CF60CC:kernel/sched/idle.o: warning: objtool:
switched_to_idle()+0x3: unreachable instruction
0xC1CF60CC:mm/madvise.o: warning: objtool: hugepage_madvise()+0x3:
unreachable instruction
0xC1CF60CC:mm/hugetlb.o: warning: objtool: hugetlb_vm_op_fault()+0x3:
unreachable instruction
0xC1CF60CC:kernel/exit.o: warning: objtool: abort()+0x3: unreachable instruction
0xC1CF60CC:fs/hugetlbfs/inode.o: warning: objtool:
hugetlbfs_write_end()+0x3: unreachable instruction
0xC1CF60CC:fs/xfs/xfs_super.o: warning: objtool:
xfs_fs_alloc_inode()+0x3: unreachable instruction
0xC1CF60CC:drivers/mtd/nand/raw/nand_base.o: warning: objtool:
nand_read_oob()+0x18d4: unreachable instruction

http://paste.ubuntu.com/p/xCXyJR4Gx6/
0x99965895:arch/x86/ia32/ia32_signal.o: warning: objtool:
ia32_setup_rt_frame()+0x1f5: call to memset() with UACCESS enabled
0x99965895:arch/x86/kernel/signal.o: warning: objtool:
__setup_rt_frame()+0x57f: call to memset() with UACCESS enabled
0x99965895:drivers/pinctrl/pinctrl-ingenic.o: warning: objtool:
ingenic_pinconf_set()+0x10d: sibling call from callable instruction
with modified stack frame

http://paste.ubuntu.com/p/SFQXxh6zvy/
0x9278DEDC:drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.o:
warning: objtool: x_tune_dvbt2_demod_setting()+0x7f6: can't find
switch jump table
0x9278DEDC:net/xfrm/xfrm_output.o: warning: objtool:
xfrm_outer_mode_output()+0x109: unreachable instruction
0x9278DEDC:net/xfrm/xfrm_output.o: warning: objtool:
xfrm_outer_mode_output()+0x109: unreachable instruction

http://paste.ubuntu.com/p/9jW8yR6Tph/
0xE872D410:kernel/trace/trace_branch.o: warning: objtool:
ftrace_likely_update()+0x6c: call to __stack_chk_fail() with UACCESS
enabled
0xE872D410:drivers/hwmon/pmbus/adm1275.o: warning: objtool:
adm1275_probe()+0x756: unreachable instruction

http://paste.ubuntu.com/p/qg4bxZbxwq/
0xA833B0C9:drivers/gpu/drm/amd/amdgpu/atom.o: warning: objtool:
atom_op_move() falls through to next function atom_op_and()
0xA833B0C9:drivers/gpu/drm/i915/display/intel_combo_phy.o: warning:
objtool: cnl_set_procmon_ref_values()+0x125: can't find switch jump
table
0xA833B0C9:drivers/gpu/drm/radeon/atom.o: warning: objtool:
atom_op_move() falls through to next function atom_op_and()
0xA833B0C9:drivers/gpu/drm/radeon/evergreen_cs.o: warning: objtool:
evergreen_cs_parse() falls through to next function
evergreen_dma_cs_parse()

http://paste.ubuntu.com/p/W3nq9bSHHZ/
0xFBCA4E34:drivers/gpu/drm/amd/amdgpu/atom.o: warning: objtool:
atom_op_move() falls through to next function atom_op_and()
0xFBCA4E34:drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_csc_v.o:
warning: objtool: dce110_opp_v_set_csc_default()+0x2bc: can't find
switch jump table
0xFBCA4E34:drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.o:
warning: objtool: dce_mem_input_v_program_pte_vm()+0x27f: can't find
switch jump table

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0nJL%2B3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q%40mail.gmail.com.
