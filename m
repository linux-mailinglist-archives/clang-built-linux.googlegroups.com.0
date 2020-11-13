Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB4OIXP6QKGQEZFKUKHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id C92DD2B24F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:54:26 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id x11sf4278478plv.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:54:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605297265; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvwbvzsUpr7XPS/VxDFvFZyrT5OJQgUBBs3lUlWo1eKGI9eYSvBRGv91tWWkbx7Kcb
         puHNlYUkCGgUjAj4UcPpLLLnwf28/6O89fzgpHmNDMVrL6nhnePS9Rx0/FYrf8frVr1m
         bq/sT2PC9ghQLr38LcW4LuvqFJ9Mz/qAbnlO6EcWGi+wi2N803uTHa89eRVekHsP81xk
         +QOt5LcsAdhwpVV2MMVmcUoKCdyOI4TLoRloorFL66v60GhMgfumb9u0MoHvoHAySg8n
         cd/Dt+K/Crk3rl6S6W5U3/Nw5zFZOIkLioPzuAGg02lYrBkNl+Q6MgQSYVbH02ayOc6d
         PhVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YoZjZgiXbnnZqYlsOrXADtq8E5CFjZPSAc/F6INny3I=;
        b=zJynVx1IfpnIg3Xop0Yw7aTkdrul9j432j/atN85xT9aCI4IVGu56s0yvOYTcLaMGn
         XTXHiTWl+sSatQen6Z7WfbysW/iH1gqvIVLf6J1PgL3FLTp/CGM7matIImhS1DM0qLbw
         y5NaJUSJkpeT/6Qh0DDrpVuvvyaIDzsi2FAdOYogeyqSfnzGjaq77skwjQwecAwOqas+
         5T7WHMhq82Cjj3BtOzLAv7bOvlPmfVLoFkNLAKNyXopzQANH8IB1EcJVYBzb9YQwxkxQ
         fJPrx6o3U3yMMwfpi+NVgbVbTHuskssgeANmEv74fTNfTU/4Pps+rxJVSq7ke6isr4ss
         G3iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="cggOs85/";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YoZjZgiXbnnZqYlsOrXADtq8E5CFjZPSAc/F6INny3I=;
        b=MsY8Ag7Q0Z4xMXqIgoLicAns/eNKVXo16K0JZlT9dO9VobFPhNonCLFbVnzxTZ9Iwy
         0ycORNP14Gl5BEL0fDx59jSi3tm/WSat86/C57D0WqNOJGOfY+ieCWUOZUFcpxBAxK2h
         qu0fVVVNiaJuYfK0K05noaU6AD28LeJapaEdbiA4zCwccNDlvQMmeGLkgbJYlcxREcUQ
         k2omldc7RWG3CqAM64Nj03XIPlB67/9vIUEaJm/jjaBgSHQk7bA4L0eojAmb43oq453n
         N+3vAwDP/B+BuosGUyuhQ6MZCEIfWWE4SZ+Yg1cD3PMH7vkoqEq09LwGreFnCxUHHJob
         fXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YoZjZgiXbnnZqYlsOrXADtq8E5CFjZPSAc/F6INny3I=;
        b=dDXeYPQLeecWd7BrECBJKBegCHySzRrjimHWaCKO70MB2BNHM5Pv6T4GKDkiHUHU/m
         Jcgv6uW7WeoWCnihUcHyrqM9Yo14BYR5mEu2qKGJuG+hM8qNRy3abCIA5g0A+MzG+ALx
         0UTGLBCwUQoClKoLrLQ+LH+MJk0uwYIEBCe6oR0Q+rmJJATebTQh7Hj1n+lHa3D4O0yy
         7SGjefGqwy7HmISLmhHK81AV/dtKxolcPaSxPuPW7bjdpe6dXNafRfbb8ANaQKqqeZ3C
         nm9n2M7XzcXJtYRf8psvPCpG5eq+DwwZZbyX/PE9vtHgXWAFFKy1cg/CH2vQM8zwZcWa
         4pjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GcZLp88PX+pfl3/AC9r8I49DdryPo8plCrsRIzeJ1Y6sGP/JC
	g9+/MqrAGvctxGJv8j4tgdQ=
X-Google-Smtp-Source: ABdhPJxY5ACeddEjbjCYKE1oCTVbz3MotZVee0N5FE+5+jQ78VWpFg2ejjGT3Wc2Kz8fbiY5YVMFlQ==
X-Received: by 2002:a17:90b:154:: with SMTP id em20mr4651251pjb.114.1605297265522;
        Fri, 13 Nov 2020 11:54:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls1482245pjs.3.canary-gmail;
 Fri, 13 Nov 2020 11:54:25 -0800 (PST)
X-Received: by 2002:a17:90b:1106:: with SMTP id gi6mr4942258pjb.70.1605297264919;
        Fri, 13 Nov 2020 11:54:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605297264; cv=none;
        d=google.com; s=arc-20160816;
        b=MVP8fTyXRJoHEH9qzCJ1f6lVgiSxJiJxIVAiRpQt1DptHjmeGGJGnN6ZC5PFPirLsE
         jLYIJWKY9oZaWJysHi6YnAhg0VqhevnXYJZjOFmvwG9gBZUpjd+1QRm52tGenAjW6ZOM
         kJNRr8Wd8VeN4dqeDT7cO2PEyUnk+3tYxGD+vO3ceUvu/69H5AHKCpo9OIU3x3tIh51x
         w9zUza/Ocv9RHWnZgPTFY9bonnq0A75RfxfrfKMSjdjaxUPFPuEs3dJfUfh3tWhhRS7C
         OVyUJAMAWxKExwOM3OIXZkYtIl9kiKO6ksT69kpQR7zdID73P1PD1/DXgG0eLzaVDYfD
         gV/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yYOZqfS1DftClANj54I945kAOQfBrrvPepHj2JAwlgE=;
        b=WjOmiar3E2nviYiZUfJMXFLYR4hLZkifBb+oZv8SPG5W1lrFqRqoGYGJemcqUZCOVB
         GVwUxFuZkEs1y3spZe9FZbvi8hBBypZDTyuz19HMzjYsv6mWJAbIFod3CwR4FiNYea5z
         dsrvF+J8/2KXBXdR99zqWvhtRoqGKFIONszKQlTr+EHKp4t7H7Zgg1tE/fwE7vlqYUWg
         i6wiIbVS5AHK4uKXlP/Jv4B83wbIhZ5JFpuGPRmnlcWRCVDuiTY8UzPr4jfachi9b+s/
         1nrFbtNaw5MfJJq1O+EL4eMC/f348PiowicyBR5AOfTwcoRho0FIfXb6yUfum8mRZx3d
         u5GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="cggOs85/";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id i5si1352721pjz.1.2020.11.13.11.54.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:54:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-o3eHZUV6NbaT1cJ-TJ4RWQ-1; Fri, 13 Nov 2020 14:54:18 -0500
X-MC-Unique: o3eHZUV6NbaT1cJ-TJ4RWQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F5778730A8;
	Fri, 13 Nov 2020 19:54:15 +0000 (UTC)
Received: from treble (ovpn-112-111.rdu2.redhat.com [10.10.112.111])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54ADF62A16;
	Fri, 13 Nov 2020 19:54:11 +0000 (UTC)
Date: Fri, 13 Nov 2020 13:54:08 -0600
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
Message-ID: <20201113195408.atbpjizijnhuinzy@treble>
References: <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
 <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
 <20201110174606.mp5m33lgqksks4mt@treble>
 <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="cggOs85/";
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

On Tue, Nov 10, 2020 at 10:59:55AM -0800, Sami Tolvanen wrote:
> On Tue, Nov 10, 2020 at 9:46 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Mon, Nov 09, 2020 at 08:29:24PM -0600, Josh Poimboeuf wrote:
> > > On Mon, Nov 09, 2020 at 03:11:41PM -0800, Sami Tolvanen wrote:
> > > > CONFIG_XEN
> > > >
> > > > __switch_to_asm()+0x0: undefined stack state
> > > >   xen_hypercall_set_trap_table()+0x0: <=== (sym)
> >
> > With your branch + GCC 9 I can recreate all the warnings except this
> > one.
> 
> In a gcc build this warning is replaced with a different one:
> 
> vmlinux.o: warning: objtool: __startup_secondary_64()+0x7: return with
> modified stack frame
> 
> This just seems to depend on which function is placed right after the
> code in xen-head.S. With gcc, the disassembly looks like this:
> 
> 0000000000000000 <asm_cpu_bringup_and_idle>:
>        0:       e8 00 00 00 00          callq  5 <asm_cpu_bringup_and_idle+0x5>
>                         1: R_X86_64_PLT32       cpu_bringup_and_idle-0x4
>        5:       e9 f6 0f 00 00          jmpq   1000
> <xen_hypercall_set_trap_table>
> ...
> 0000000000001000 <xen_hypercall_set_trap_table>:
>         ...
> ...
> 0000000000002000 <__startup_secondary_64>:
> 
> With Clang+LTO, we end up with __switch_to_asm here instead of
> __startup_secondary_64.

I still don't see this warning for some reason.

Is it fixed by adding cpu_bringup_and_idle() to global_noreturns[] in
tools/objtool/check.c?

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113195408.atbpjizijnhuinzy%40treble.
