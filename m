Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBE7EXP6QKGQEHXYZUTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA632B25E0
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 21:52:36 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id k4sf954347ual.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:52:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605300755; cv=pass;
        d=google.com; s=arc-20160816;
        b=IL98XPPyWkhG4GK1dwPYmo1/m1QdTXdjYq9MmYwHz09Zgv2UK0axii/aOHzQgAGWWl
         n1t4PjMKuThW3aB0omSllpqvVbMB2+AK/eBfNgsk6XLewi2Mwri7Fv3fDwWqFaCPgWDV
         nkXQOwSd5aLYPVoHbF9cAXSBnGyRmiK2nQzU6sN14xfxwEwTJuTcqNXzKIOOkSPk3lXq
         x4CPyXOYdaDSyRtIUXIXjEhLxfg+dM5nnZN0bn7FgM5+yyHzs2GlzkC9WaliD/0GV8EJ
         OoM+3rZNSwVxhhL+bM7281t5wi03+WhHKea/JfO6bG6LmPeQhYygkQx3pnAqnfGmRrzK
         brsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ItRIUM5EjgJn3le2ym0Jc1n14ftrlEyB7y7JN1PH+cQ=;
        b=lFdgyYPLSMjCRAftanUudtYhm7uVhJOwGZ3PHsHVphr4PEfqemOkRQUfmQVK2yaSlY
         Xo7qGNHrq3irT5RgKq0VvXZO660MokRlWkKdOj9PO01ksyDlf0/C96pIVVscAW5Jv3C2
         jJ4k+MgGjKWq0+5SQuJ6OoIU0f3XqDC5Yw0DHDiWHO1iiNBjLPRgywivj07/UDZ9C5uq
         2ncJZbrsG4x6Sy0/b6IrO2CeKfFnEOZSC3MKeL3/irzPWnCqb7sDCsT3Ae4dUPXSxnpr
         velwFFIltuDs4YpEYTp6kqTt6gj8WiQzqgiPLD1s1ctagzpUgXTnlZZjNap1I8loMyyS
         yfdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Vja5qVPN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ItRIUM5EjgJn3le2ym0Jc1n14ftrlEyB7y7JN1PH+cQ=;
        b=XAYN8w03zLpGMX0SOWs3act/oolSjBTT9leVQU7XxXfYcB7mpD04xde9lxNSDBacyu
         /i0bG+jOGAO7cbqqKV8qvTqYc1ZlvA4OU9Kc7O6iXpp4Z3e6ngF8NRIO5Ir4Qg3mGNsE
         chusqEYlfrOwc0h15ntvywU9+p+SVTTAvjCcYQt/h2muaMBhjpnmLmgU/BabYeF960+u
         DU87JLElBYv5gYf34+J7krXjvAzvJVQgriSnocBBUbEOZC5sL58h9xwhnqTJxD6ZSdoZ
         SWbJn9mR8PtAA8ZisxTuXh6Q03nVMbHVKBiSDm80yci2KMtZ2DtU3E6BH5udtps33Hqy
         y2bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ItRIUM5EjgJn3le2ym0Jc1n14ftrlEyB7y7JN1PH+cQ=;
        b=IMMswdblYN7+K1mFI0Vt4ycNOezdRpCVUj+KPw5/DYnJawQdUpBlYrlNNE2R66jaml
         gCie8RMwZvP2Q8nHy8AJQlOYSuYsyT373qU3H/zyJd99MMWX+4Xp4c5TKkdhIZScJ/Kp
         T8waK+pkPILRKhz7drqUXqIvfBNEDfrLK81yfNBmJXseghkpd8F3d8DPCtrSz6UcFGzE
         QkI23SHyQvxQBV0KWHNVkhnKJqQBfdCp8gBcES//HOPKwDrT+Ys/00S6HVavzd1cmDl2
         IAyA2rnK987r7DVeF3G1YzPdBrnRMJP7aevae69T9q8J9q1PN4ucJat3E50mRb0Ui6t1
         OFfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UwRqFLLGdegKvfBSHi5PBCf7TFE1vwtVLdRDdPi8c6fn+4qK4
	v3htBHPvwhRNqk/oKstVgiU=
X-Google-Smtp-Source: ABdhPJyitL74FxrwcVtYcD+dZxSAjAJmEt4U3JBgaspDS4Qe/RYyeM+hccoPHdWmzg1STAncpS+dOg==
X-Received: by 2002:ab0:6dd3:: with SMTP id r19mr2268571uaf.86.1605300755649;
        Fri, 13 Nov 2020 12:52:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f905:: with SMTP id t5ls1079621vsq.0.gmail; Fri, 13 Nov
 2020 12:52:35 -0800 (PST)
X-Received: by 2002:a67:ce0e:: with SMTP id s14mr3006167vsl.13.1605300755215;
        Fri, 13 Nov 2020 12:52:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605300755; cv=none;
        d=google.com; s=arc-20160816;
        b=jw07bk7WWHXPc9ywma8heF3GL/y4GkIkoCCMfX0sIdNECtVAExkeL5YBCioZOmR6NJ
         IXVE5IIGO9U9hlaTioRjBXs95pQd8j9lJr0XyQ77I/MmfnfAzRV5zz5dNBID+P5n/H2G
         aLaJCGJDLuXhwR/mEJX4SbRe3Jf0GHBvn5BZDQgcMWGFSpLl8Q3YEqNT6Csy7rdCqWH9
         ODmMNHjESNHFzshFhEgKJlpvwaSSQcFVYnc2IO/B131O7yqAF0XWxw5iHKwm4XLzgf7A
         34nMoKAZeKSc8Pn6Pxjzx6bMwdpFVhVpEzVzYRRm1hqArMRIXT6EtYNMkW/nVosEumbF
         VXhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BjbZK0zeIm65whn17k5UcYS2uZ9Kdra7izOdoHD5fpw=;
        b=mhOn2H5XMKo7tOEodL7pji4TPcF/sCTLHC5MslzSmovHlHF56q8FR3vWJljpq85EBs
         ta8vCqWRf9S0i/gvObGUPas8c1EJ2xVc1jaGsDkx91fv6LR7WAe8Iwa1lt4AS6ktKKjV
         PlmbuQjaAyUKGbZCDTVfkUx1WoGoNie82X9M1TgyAdC92Dw21OOj5ElNCAD6n98epetR
         gOQX6flJ0w7mRNRYq7Gq/XtR2QJLZgxIl01zDVj7VJVBbesllKuzjQcZ5SUIhoZpGunY
         HNqCRVvIurGxyBcuoax5qZ8roZJMUMUVtvGTK6r93t8uIWWOMK7SraSrCTbCARqbaXUn
         dMOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Vja5qVPN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id k3si960904vkg.3.2020.11.13.12.52.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 12:52:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-6NjMwWGtNSa0dWipx0MBdw-1; Fri, 13 Nov 2020 15:52:30 -0500
X-MC-Unique: 6NjMwWGtNSa0dWipx0MBdw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E7A28015A8;
	Fri, 13 Nov 2020 20:52:28 +0000 (UTC)
Received: from treble (ovpn-117-69.rdu2.redhat.com [10.10.117.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6296B5B4A4;
	Fri, 13 Nov 2020 20:52:24 +0000 (UTC)
Date: Fri, 13 Nov 2020 14:52:21 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201113205221.jybsu3himgjqd3tq@treble>
References: <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
 <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
 <20201110174606.mp5m33lgqksks4mt@treble>
 <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
 <20201113195408.atbpjizijnhuinzy@treble>
 <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Vja5qVPN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Nov 13, 2020 at 12:24:32PM -0800, Sami Tolvanen wrote:
> On Fri, Nov 13, 2020 at 11:54 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Tue, Nov 10, 2020 at 10:59:55AM -0800, Sami Tolvanen wrote:
> > > On Tue, Nov 10, 2020 at 9:46 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > > >
> > > > On Mon, Nov 09, 2020 at 08:29:24PM -0600, Josh Poimboeuf wrote:
> > > > > On Mon, Nov 09, 2020 at 03:11:41PM -0800, Sami Tolvanen wrote:
> > > > > > CONFIG_XEN
> > > > > >
> > > > > > __switch_to_asm()+0x0: undefined stack state
> > > > > >   xen_hypercall_set_trap_table()+0x0: <=== (sym)
> > > >
> > > > With your branch + GCC 9 I can recreate all the warnings except this
> > > > one.
> > >
> > > In a gcc build this warning is replaced with a different one:
> > >
> > > vmlinux.o: warning: objtool: __startup_secondary_64()+0x7: return with
> > > modified stack frame
> > >
> > > This just seems to depend on which function is placed right after the
> > > code in xen-head.S. With gcc, the disassembly looks like this:
> > >
> > > 0000000000000000 <asm_cpu_bringup_and_idle>:
> > >        0:       e8 00 00 00 00          callq  5 <asm_cpu_bringup_and_idle+0x5>
> > >                         1: R_X86_64_PLT32       cpu_bringup_and_idle-0x4
> > >        5:       e9 f6 0f 00 00          jmpq   1000
> > > <xen_hypercall_set_trap_table>
> > > ...
> > > 0000000000001000 <xen_hypercall_set_trap_table>:
> > >         ...
> > > ...
> > > 0000000000002000 <__startup_secondary_64>:
> > >
> > > With Clang+LTO, we end up with __switch_to_asm here instead of
> > > __startup_secondary_64.
> >
> > I still don't see this warning for some reason.
> 
> Do you have CONFIG_XEN enabled? I can reproduce this on ToT master as follows:
> 
> $ git rev-parse HEAD
> 585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> $ make defconfig && \
> ./scripts/config -e HYPERVISOR_GUEST -e PARAVIRT -e XEN && \
> make olddefconfig && \
> make -j110
> ...
> $ ./tools/objtool/objtool check -arfld vmlinux.o 2>&1 | grep secondary
> vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with
> modified stack frame

Ok, I see it now on Linus' tree.  I just didn't see it on your clang-lto
branch.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113205221.jybsu3himgjqd3tq%40treble.
