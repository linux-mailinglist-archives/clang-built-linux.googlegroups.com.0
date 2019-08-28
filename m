Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBW5JTLVQKGQEZB6VCDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FE4A055A
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 16:51:08 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id u16sf576368vsu.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 07:51:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567003868; cv=pass;
        d=google.com; s=arc-20160816;
        b=LCe8zDeguTirDkjeoyZaoVJBhkLT7Qe0TXkCkDgFW8w5y8OF9J78IJSfhh1TZuocHc
         /jc4mAFHt7v4yhJ/t5JoBOIpmjsRO7zOlw8J0ShUTsCcBQrLJYoMSR1gfgUGH+/qRG9q
         1nlztLlHG480obmci8nQbOUP76r+sPQNjrx/81JMpMlt47hjGQZ36C+dL5QV5Gm4lPfF
         NBWVJZgnFqHnie1KBjx0Xr2i+JKcEbMJVmhwP3bCuTxK+i0/iuFykro8kGyvHnc+jPxJ
         saO/6CIw7zz6O9gRZfQ61y5NoCEcfqF5cFrfHtWIBFBqJXJqmIGCtLbP3YS9u699sL0X
         xtyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cVy+eVXeviyeIxSF6hsYHHZarfTaoWJqEyzWXjXoQ3k=;
        b=ZdoriMpph9JVHI5edt5FlcHPcXJWPYrTHkvEW1Nxx8NGF/Ub8d00dBGujjXHOgB8md
         hX+LX8pCHZzQxtpcuaj3XcjpQPZ1QlRA0TEhn9yufDV/DEU0PdQkwbcp6LGEsZoJ5C2N
         wnAxlbgrgKYjnXADUztHEt8CKtk/rhYLyPVrdeQK32q6S9kL3tLa+AAmayFN+hyeYwTS
         O8dd7Mxq7shKSYp2Cuy38DS4rCKI0qumHBqnQpZy5kVW44IsP/hm8eFTpXYNSE8JyZKK
         TEKYw48m01v1M2vA4gRWawzPGjVE0H3A0j+ZKfctkUlJH3ZtfIe1i8bFXbF5UG1Zp1Ny
         OKhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cVy+eVXeviyeIxSF6hsYHHZarfTaoWJqEyzWXjXoQ3k=;
        b=GKob91Yo6IB5S5sxFGke28vYb/FOq2giSQr4ZZoRuw50fMKSWIll3wPqsUSIA1O3G9
         aRak0vPdOWlONV4EonYtLsT6CfoHx7WwaFaBh1tfR8Tuxyd9e526N9WbjMiJT6uK0mgR
         LYJoAt1rcSXi64cZNHjzurNRDPKpNz07tyL6jo3x8unqXyHhLWSqFG3srRFVYexKNrMw
         9PKJPbImLxMVHmDBhlD6EL9r28afVO7fF8zs6t/6i6XjH3x5znwHRw3Xv5QCAfUOXDn9
         oFG9E4E+fNpHU6fOC4UAsV4Nb2BNvLX+s9kEwFcoentCvlEUMvCxANzL9LJJZrCMdsjT
         m9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cVy+eVXeviyeIxSF6hsYHHZarfTaoWJqEyzWXjXoQ3k=;
        b=uPLIMYQmbLtz5xF6g7thUWMjHLr5I1fTraBkrkXAEHWhPCtSruid5LH23FCFYi0GfZ
         zU22QTcc+I7YAySI03+DgN/IxfXeXO7sTlI6hpmlYsJefpxIKLFpz/OZd+0nGZ/HvuO6
         Gi6HjfTTa6RUvycCq+sAGYFq0f9cVfz6HUhuCLR4joHMDa+RJDKQQMFv9DM5znHfKI6X
         4IP7i0tdaW4SaByYXS2CywrOC4WDfR5caTZJg9y6WbOL0rrRBy4l1In/mrkVyNj66CjS
         Pc+DY5X663apDB8GUYUN/5NAdp+Ls+Sk1w0jNv0geWYM+AeynlDzX9xaFFFnfXIBjACH
         N3hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWNKDNx0qAWfAy48AMup1ySRad3Lh8AKsva20aMepDFpNZM6qO6
	kTSYJsUvPkt2zgCAm22Y3KA=
X-Google-Smtp-Source: APXvYqxMJNS516L/gjSbW4wIaij/3H3ZJkjOZZP58tFCiOqVEOMN7/BnZBYsJ3fS/wd5xuASzaKQ0A==
X-Received: by 2002:a1f:5fc4:: with SMTP id t187mr2403655vkb.37.1567003867799;
        Wed, 28 Aug 2019 07:51:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3086:: with SMTP id w128ls342459vsw.1.gmail; Wed, 28 Aug
 2019 07:51:07 -0700 (PDT)
X-Received: by 2002:a67:f353:: with SMTP id p19mr2542615vsm.173.1567003867482;
        Wed, 28 Aug 2019 07:51:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567003867; cv=none;
        d=google.com; s=arc-20160816;
        b=IjbPT4yiKajaV8S0hUVg974KlroSvbEfr2jcuQiOHrQlYFDutCU7fnXiIOY5uql1jV
         UBZuavLy9ucKGrLRG3/AWqWLX5jlOJBhLHw3sjbCpY5a5XzIHI8nx7nxFRfsrPuCbBIu
         CHMI7XavCYKI8t+fGzS3S1pLbHXZzPhfOGEz+qQsovrVuDb9QlKKZfflI7NRPN3NMPUZ
         A10DOGaqAo7x2p75NPInHeBMlArDBxJFoCCfSfOnHx/upH2Xx6k4oRSVLYqYZJpAITqF
         qqaz2esRJTmwo2/qqL9d3YUC7KKiLJNtjHPnzfTKnaL4VYIaVDc7vq2xCkdFU0zeV0P4
         OMIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=4ux5njanrZ3fW0nZr4pP0LLNVM3QXbyzRbHChAX3HRQ=;
        b=ZMC6YGNlAbC4AxXt+9bgFU8LEbFy6w/ULYyraafHrDFe9jX0OHGLDzoBec7Lbb05HX
         RTSG/RRbdOVHZAz7sGyw7i4THTBUugYRl1cFkaas6jq0atjUf1sdtP5fMkEpoC6tsrp5
         E4VzW7Re1ROAXdfVIanDgOX1EvajH+PPn6t3G056h8DOYQ8oNe5xYJ/qNL5+X72YkeO3
         wYxO/TZugShLzo1qNczKh6JFwNWNagCjpMc6cFdIfMuQkuhdvFM6sCxNy6jcwL5NS4a1
         TKjWkLpuklElM6UOvPXtVEjuLblpMqv0f84Qk8ZI+ToxwL5sU1GWhzryXy38z2VWRAMa
         duCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id a128si158291vkh.1.2019.08.28.07.51.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 07:51:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6F106800DD4;
	Wed, 28 Aug 2019 14:51:06 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 369A95D6B0;
	Wed, 28 Aug 2019 14:51:04 +0000 (UTC)
Date: Wed, 28 Aug 2019 09:51:02 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190828145102.o7h3la3ofb2b4aie@treble>
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble>
 <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble>
 <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Wed, 28 Aug 2019 14:51:06 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Aug 28, 2019 at 11:00:04AM +0200, Arnd Bergmann wrote:
> On Tue, Aug 27, 2019 at 11:22 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > On Tue, Aug 27, 2019 at 12:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Tue, Aug 27, 2019 at 9:23 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > > > On Tue, Aug 27, 2019 at 09:00:52PM +0200, Arnd Bergmann wrote:
> > > > > On Tue, Aug 27, 2019 at 5:00 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> > Thanks for the description of the issue and the reduced test case.  It
> > almost reminds me of
> > https://github.com/ClangBuiltLinux/linux/issues/612.
> >
> > I've filed https://bugs.llvm.org/show_bug.cgi?id=43128, anything I
> > should add to the bug report?
> 
> I tried the suggestion to add
> 
> diff --git a/Makefile b/Makefile
> index 1b23f95db176..97f7bc4c9b4e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -755,7 +755,7 @@ endif
> 
>  KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
>  ifdef CONFIG_FRAME_POINTER
> -KBUILD_CFLAGS  += -fno-omit-frame-pointer -fno-optimize-sibling-calls
> +KBUILD_CFLAGS  += -fno-omit-frame-pointer -fno-optimize-sibling-calls
> $(call cc-option, -mno-omit-leaf-frame-pointer)
>  else
>  # Some targets (ARM with Thumb2, for example), can't be built with frame
>  # pointers.  For those, we don't have FUNCTION_TRACER automatically
> 
> from https://bugs.llvm.org/show_bug.cgi?id=43128, this avoids all the
> "uses BP as a scratch register" warnings as well as almost all the "call without
> frame pointer save/setup" warnings I also saw.
> 
> Only a few unique objtool warnings remain now, here are the ones I
> currently see,
> along with .config files. Let me know which ones I should investigate further,
> I assume a lot of these are known issues:

None of those look necessarily familiar.  What are the remaining "known"
clang issues which were found by objtool?

If you share .o files I can look at them.

> http://paste.ubuntu.com/p/XjdDsypRxX/
> 0x5BA1B7A1:arch/x86/ia32/ia32_signal.o: warning: objtool:
> ia32_setup_rt_frame()+0x238: call to memset() with UACCESS enabled
> 0x5BA1B7A1:arch/x86/kernel/signal.o: warning: objtool:
> __setup_rt_frame()+0x5b8: call to memset() with UACCESS enabled
> 0x5BA1B7A1:mm/kasan/common.o: warning: objtool: kasan_report()+0x44:
> call to __stack_chk_fail() with UACCESS enabled
> 0x5BA1B7A1:kernel/trace/trace_selftest_dynamic.o: warning: objtool:
> __llvm_gcov_writeout()+0x13: call without frame pointer save/setup
> 0x5BA1B7A1:kernel/trace/trace_selftest_dynamic.o: warning: objtool:
> __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> 0x5BA1B7A1:kernel/trace/trace_clock.o: warning: objtool:
> __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> 0x5BA1B7A1:kernel/trace/trace_clock.o: warning: objtool:
> __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> 0x5BA1B7A1:kernel/trace/*: # many more of the same, all in this directory
> 0x5BA1B7A1:kernel/trace/trace_uprobe.o: warning: objtool:
> __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> 
> http://paste.ubuntu.com/p/PyYNBK5Yx2/
> 0xC1CF60CC:arch/x86/ia32/ia32_signal.o: warning: objtool:
> ia32_setup_rt_frame()+0x205: call to memset() with UACCESS enabled
> 0xC1CF60CC:arch/x86/kernel/signal.o: warning: objtool:
> __setup_rt_frame()+0x597: call to memset() with UACCESS enabled
> 0xC1CF60CC:arch/x86/kernel/process.o: warning: objtool:
> play_dead()+0x3: unreachable instruction
> 0xC1CF60CC:mm/kasan/common.o: warning: objtool: kasan_report()+0x52:
> call to __stack_chk_fail() with UACCESS enabled
> 0xC1CF60CC:kernel/sched/idle.o: warning: objtool:
> switched_to_idle()+0x3: unreachable instruction
> 0xC1CF60CC:mm/madvise.o: warning: objtool: hugepage_madvise()+0x3:
> unreachable instruction
> 0xC1CF60CC:mm/hugetlb.o: warning: objtool: hugetlb_vm_op_fault()+0x3:
> unreachable instruction
> 0xC1CF60CC:kernel/exit.o: warning: objtool: abort()+0x3: unreachable instruction
> 0xC1CF60CC:fs/hugetlbfs/inode.o: warning: objtool:
> hugetlbfs_write_end()+0x3: unreachable instruction
> 0xC1CF60CC:fs/xfs/xfs_super.o: warning: objtool:
> xfs_fs_alloc_inode()+0x3: unreachable instruction
> 0xC1CF60CC:drivers/mtd/nand/raw/nand_base.o: warning: objtool:
> nand_read_oob()+0x18d4: unreachable instruction
> 
> http://paste.ubuntu.com/p/xCXyJR4Gx6/
> 0x99965895:arch/x86/ia32/ia32_signal.o: warning: objtool:
> ia32_setup_rt_frame()+0x1f5: call to memset() with UACCESS enabled
> 0x99965895:arch/x86/kernel/signal.o: warning: objtool:
> __setup_rt_frame()+0x57f: call to memset() with UACCESS enabled
> 0x99965895:drivers/pinctrl/pinctrl-ingenic.o: warning: objtool:
> ingenic_pinconf_set()+0x10d: sibling call from callable instruction
> with modified stack frame
> 
> http://paste.ubuntu.com/p/SFQXxh6zvy/
> 0x9278DEDC:drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.o:
> warning: objtool: x_tune_dvbt2_demod_setting()+0x7f6: can't find
> switch jump table
> 0x9278DEDC:net/xfrm/xfrm_output.o: warning: objtool:
> xfrm_outer_mode_output()+0x109: unreachable instruction
> 0x9278DEDC:net/xfrm/xfrm_output.o: warning: objtool:
> xfrm_outer_mode_output()+0x109: unreachable instruction
> 
> http://paste.ubuntu.com/p/9jW8yR6Tph/
> 0xE872D410:kernel/trace/trace_branch.o: warning: objtool:
> ftrace_likely_update()+0x6c: call to __stack_chk_fail() with UACCESS
> enabled
> 0xE872D410:drivers/hwmon/pmbus/adm1275.o: warning: objtool:
> adm1275_probe()+0x756: unreachable instruction
> 
> http://paste.ubuntu.com/p/qg4bxZbxwq/
> 0xA833B0C9:drivers/gpu/drm/amd/amdgpu/atom.o: warning: objtool:
> atom_op_move() falls through to next function atom_op_and()
> 0xA833B0C9:drivers/gpu/drm/i915/display/intel_combo_phy.o: warning:
> objtool: cnl_set_procmon_ref_values()+0x125: can't find switch jump
> table
> 0xA833B0C9:drivers/gpu/drm/radeon/atom.o: warning: objtool:
> atom_op_move() falls through to next function atom_op_and()
> 0xA833B0C9:drivers/gpu/drm/radeon/evergreen_cs.o: warning: objtool:
> evergreen_cs_parse() falls through to next function
> evergreen_dma_cs_parse()
> 
> http://paste.ubuntu.com/p/W3nq9bSHHZ/
> 0xFBCA4E34:drivers/gpu/drm/amd/amdgpu/atom.o: warning: objtool:
> atom_op_move() falls through to next function atom_op_and()
> 0xFBCA4E34:drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_opp_csc_v.o:
> warning: objtool: dce110_opp_v_set_csc_default()+0x2bc: can't find
> switch jump table
> 0xFBCA4E34:drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_mem_input_v.o:
> warning: objtool: dce_mem_input_v_program_pte_vm()+0x27f: can't find
> switch jump table

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828145102.o7h3la3ofb2b4aie%40treble.
