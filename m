Return-Path: <clang-built-linux+bncBC2ORX645YPRBDOXXP6QKGQETITB33Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD1F2B254C
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 21:24:46 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id t70sf7403861qka.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:24:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605299085; cv=pass;
        d=google.com; s=arc-20160816;
        b=hKybkqg80Q6GdcIpqZKxG0K3eRdU2zIlz4PvH/Oe0EkH2FFRkGK83A46FxcILpqqzv
         3am9H1i0ktnruLhlZr5HJTcBdl4P3sEyUrraRBfLLwFHxNzGEmRg4+DxsqsYqX4xlLQO
         F9vvRj1G0nLGeQUAVpQqvV0HTVe8r1XpvFqDsSNSuLKD3poEBRSRxQvKPT21GhiZzW/B
         lxLdizr3UAFjg0cyxS4hVV8wRd3DsENtKAM3JbwqTfGs6X/Ehy4RV3t7ephSwe72s6u0
         NfPbms1gnGaU5gG4XKkBI5TrcCZ8Xs5X7Ggk3Fiy2a8I5QZVNm3sUuODrn4MDFAmV+QX
         UcDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OKLH7HP6jrk5rpmAiAEv+E4HXN+mtiP50kx9bVaULo0=;
        b=cj5zQ4sGdDkZKWzgcoACZa0BOtBRzbxRODzANIgJ96lhPuXg4wkIw5XJKtzlbaASa2
         +thEy1ScoELi+Bb64CfqO9Kaey593zoNFjna5yo+u4XmenMqqsLpYbN2LmZULKQWo0Oy
         kKLUBA5Dyu3A7WoiLosITCVkku1+Kc8iGxufsGGQnKvijf13XgJ+6rwtjRR1SOKK82oy
         TEuk4z8NkYbn+pNftcZ/IL4lJ/iH0qhJZE+RS/pA6MWssVvICOF9sBs4rS7RBKvJ0c+Q
         vWuI6MTjsRp+pHz4Vajyk9Bi56/WSFmTzbpoEkQoCl5LDP1xXxsE+RaYh3IgRb5IZkz8
         w2Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="SBgav/T3";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OKLH7HP6jrk5rpmAiAEv+E4HXN+mtiP50kx9bVaULo0=;
        b=oUjtDPRKGURl5Z4slJd8DjFJf94kjBfuLOXroOvG5y2K1UHTo2Wj3omeP2N3vvsfu5
         ycHjscRlkGdBnsKCbyi4jy0r5VIFqnmdiBro716UJ4dntlXPm4W1IdMGlWCQv7LFh4ni
         uw0IG8bR++aq3sAo512II/qx6oekBRZ3W9Qd9xf8ZGip6xGphQQnov2r8a29sUKuaUFN
         gbdCayWdL4x5cuXWn7btSMbrJs4+aejEEEsTuDXKZkmwpCKanPgNR+VvSyxCMLE9cfcf
         isSKEUJbpvZXma4e+6uSN2UmBgfwQ6MmrypfIfMVRUq12TzH59L0etIMG2bwhGGhUyxD
         Y2Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OKLH7HP6jrk5rpmAiAEv+E4HXN+mtiP50kx9bVaULo0=;
        b=C7uCRhLY0IpEEk2uGvRfhGUPGroXKiSlbp4vBTZYCoBVmg9yqMZ9zQcbEc0pXWkWc7
         GQBMNIuRzOnKmVM94C23pQQykDRkYlP0Iq2A4JXGzuo6hNveCukDtKnD3gRpsJ7Noz5F
         YUxQWX5+AktwAaBBKphE81izEpkvjN6PyIcKlutP6FDk2AuIHa249Mv3pkSPXdGPGR8e
         f0a8PcDmN7NDu0IR1vEw1hNs9y5fj8z5yHz7yNuKk0ZhFgmIxlS2oT/IDj7HqJohkdfA
         c0z8oC2caphvtPHyVIG2gICQD+h1Re7rzV6WVgq6CKvmt7zi4IkbrrAGt8+aA17w29DF
         5AkQ==
X-Gm-Message-State: AOAM530i+TmhQM3hVbjfKItVMln/6Ld8PqDIDljqmAHQidvfs2jTuyee
	+rt5Dt2QocTDofJOcXksTVU=
X-Google-Smtp-Source: ABdhPJynnLR+xKZnB3Bm5FEg56FNPaFBM+lJppl5JbJuDKVE4p8+R7QpxCRO9Qkmdpp4hu6vG58+eQ==
X-Received: by 2002:ac8:7316:: with SMTP id x22mr3739100qto.386.1605299085527;
        Fri, 13 Nov 2020 12:24:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:baaa:: with SMTP id x42ls1758901qvf.9.gmail; Fri, 13 Nov
 2020 12:24:45 -0800 (PST)
X-Received: by 2002:ad4:4673:: with SMTP id z19mr4191547qvv.60.1605299084980;
        Fri, 13 Nov 2020 12:24:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605299084; cv=none;
        d=google.com; s=arc-20160816;
        b=SrGolniGBDNwBpP8X6tv6Wi6NCmHTZKbXUDIZAF4oTwsyK+NCWi0xZDKz/Oiku9/M7
         Tl9XNz6lTyYdIW5D9N04v6cElwRb4ut/yycj2767Mh4+U8YKvB0REvPWXP8YRAezs/El
         K7xzMoLu9pvX7XBsBmHIOB9+0XlsQQogquJAXz0/KVNLGw4Iy6fd6odbYMRUMvpOXuVV
         m1rpxyLnIBj7PiPstb+eRT7YSgtvc4sdKVoBo7OMReSeJN3JckCDMk5U3WTnUbu0/swv
         X/gZ9+ljF1yEfUdXRTR3XuyCcYxkuFdDjbDA0H5Taajn8NrAK/t16JF9CwsOToNEa/4h
         9XbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mU6UeGOfRQMRJwnHmGX5EKrd3fAZtibGBHai3RFBnJQ=;
        b=vdJ9Gl+43P60yAlnS1BUsKpqYcliAc8NF1KLTg6Hr0j/VaRp77ZWoVGTPlKyQAce/z
         zH+jf661pzbG6K8QIIjLU3foCOBMKHBjqKa+WgbCbYCzkopwkOoLTb4zxnaoOOSbCiMu
         Zm6LvO6t5cukHAMgKl6MKH7b9z5svsGC233Jx4QvtrRW6z+HiBqn49RRjnNCNTb3a94k
         NilyENsKeCM7D62yh5FZEsWCMj+wr2L5Qx8m8OB1Akpof0SUQfFkCXvoA8uT7eHpqLPb
         KkF+ekHsJFC53rpY/FJk0dS+ABbFe0eSXuPOSZzD955r3cMbaGYozpc9mW5JuDA2gpHc
         +ptw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="SBgav/T3";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id s190si682361qkf.4.2020.11.13.12.24.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 12:24:44 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Received: by mail-ua1-x943.google.com with SMTP id q68so3406486uaq.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 12:24:44 -0800 (PST)
X-Received: by 2002:ab0:6156:: with SMTP id w22mr2653091uan.122.1605299084290;
 Fri, 13 Nov 2020 12:24:44 -0800 (PST)
MIME-Version: 1.0
References: <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble> <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net> <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com> <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble> <20201110174606.mp5m33lgqksks4mt@treble>
 <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com> <20201113195408.atbpjizijnhuinzy@treble>
In-Reply-To: <20201113195408.atbpjizijnhuinzy@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 12:24:32 -0800
Message-ID: <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="SBgav/T3";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Nov 13, 2020 at 11:54 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Tue, Nov 10, 2020 at 10:59:55AM -0800, Sami Tolvanen wrote:
> > On Tue, Nov 10, 2020 at 9:46 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > On Mon, Nov 09, 2020 at 08:29:24PM -0600, Josh Poimboeuf wrote:
> > > > On Mon, Nov 09, 2020 at 03:11:41PM -0800, Sami Tolvanen wrote:
> > > > > CONFIG_XEN
> > > > >
> > > > > __switch_to_asm()+0x0: undefined stack state
> > > > >   xen_hypercall_set_trap_table()+0x0: <=== (sym)
> > >
> > > With your branch + GCC 9 I can recreate all the warnings except this
> > > one.
> >
> > In a gcc build this warning is replaced with a different one:
> >
> > vmlinux.o: warning: objtool: __startup_secondary_64()+0x7: return with
> > modified stack frame
> >
> > This just seems to depend on which function is placed right after the
> > code in xen-head.S. With gcc, the disassembly looks like this:
> >
> > 0000000000000000 <asm_cpu_bringup_and_idle>:
> >        0:       e8 00 00 00 00          callq  5 <asm_cpu_bringup_and_idle+0x5>
> >                         1: R_X86_64_PLT32       cpu_bringup_and_idle-0x4
> >        5:       e9 f6 0f 00 00          jmpq   1000
> > <xen_hypercall_set_trap_table>
> > ...
> > 0000000000001000 <xen_hypercall_set_trap_table>:
> >         ...
> > ...
> > 0000000000002000 <__startup_secondary_64>:
> >
> > With Clang+LTO, we end up with __switch_to_asm here instead of
> > __startup_secondary_64.
>
> I still don't see this warning for some reason.

Do you have CONFIG_XEN enabled? I can reproduce this on ToT master as follows:

$ git rev-parse HEAD
585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
$ make defconfig && \
./scripts/config -e HYPERVISOR_GUEST -e PARAVIRT -e XEN && \
make olddefconfig && \
make -j110
...
$ ./tools/objtool/objtool check -arfld vmlinux.o 2>&1 | grep secondary
vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with
modified stack frame

> Is it fixed by adding cpu_bringup_and_idle() to global_noreturns[] in
> tools/objtool/check.c?

No, that didn't fix the warning. Here's what I tested:

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index c6ab44543c92..f1f65f5688cf 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -156,6 +156,7 @@ static bool __dead_end_function(struct
objtool_file *file, struct symbol *func,
                "machine_real_restart",
                "rewind_stack_do_exit",
                "kunit_try_catch_throw",
+               "cpu_bringup_and_idle",
        };

        if (!func)

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w%40mail.gmail.com.
