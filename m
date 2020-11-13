Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBHE6XT6QKGQEHUVOG3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A562B28D4
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 23:56:29 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id m64sf7707370pfm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 14:56:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605308188; cv=pass;
        d=google.com; s=arc-20160816;
        b=mnKSm+8S1/hHkoMDYqxpwuJM+Fg9jYUNtFl/W0r2kGro1pDbNGe/iuLxDEcneHAuGx
         TlOUoNA4NISLag9BuPA1pSQIbjrFbawkJnj6ot13+WG1Smjy3Onz/dQGvQbJ0eEyCcdj
         hkQzQx8QR8+YHB+e6Ofqjl7hNa+Cppyz/UzbBWRCr/rKmJgEuDNT7NyGIr0+O/zblqdA
         m6f+Vlax36GrrbWVJXmc70/Vz7I5EFKQAhqHYwfn+cSx05cgooAUiIBUDeZU1TBzwGoO
         HlzmopYccLuWCQhlK3WkJ8hlrLu2/jvBibzZAphCYZEDMGKtBYzF1LSJOM7T7dLtnmwx
         vicA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kI8Ls7cfcoI9YdXjDMGctCUUvQmsqUDuf4mq1Sg5R9Y=;
        b=dxe7us3I9avF7A+i0yr4qkgTAA0gJy6rg82HuAzI6ZPcO4HeWIg3PVz8ew8NOp/1Pf
         6LWBK8GpJUIw1bKcxsrae59vTdRSql65JiswRPu9ElRf6sgSl4h+UVAY1o2RDJVMehng
         xst0ajrSRx+5gvS0+5vj1GBFEvmykhzIxRRVAP2PybnyiaQIjqxVux/VDjjab/NIITLI
         h7TSX6Bm2pb5DcHj+W+pbRsnH49+8yjbo2irVBkRdhyMgLMNIAcYbYneL7xqst5Rae6K
         Ko4cTjwo/GeuaveOYNYSYtASbYpqbxfV48bT77MoIlCnvl6jqvYNnfFe5y06WNBw4VW2
         mNmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ppzw/oOl";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kI8Ls7cfcoI9YdXjDMGctCUUvQmsqUDuf4mq1Sg5R9Y=;
        b=IlScu75rP7yNZxPOrpOZQfZsYr7BsTKQRv9WUAfhC9H9YD8Jjy5N2bQiPVrxtBT+5d
         KvnA+gd7g7C9lhqgZ8lvB4JCT+KyVIXZ2PD4Q/RC7bNVS9e+Dajm4FJhj8iPOlZhcrj5
         5xk5L3tBf9Mv7pxIte1Agm6x2jlTGv5faVvC/DHekJkqPUvKz/bUST8j2K2u/HkBGixW
         MtWX1rtW64NxwEJg8p0F92p3Zd3Y9PnDCA7wK+fGiG37ZczQjR4D1BsVLfHqyDp5gwLV
         pIfSRfx6+VanzeKvpkqwOJnJbPW2xeNIlADUz/naMSZJEwWwzJImA2CFvvCpFu8vlPcj
         MI6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kI8Ls7cfcoI9YdXjDMGctCUUvQmsqUDuf4mq1Sg5R9Y=;
        b=ayozxGC9Cz3mFOXmnkzsMYWjW7++MFWpOcKvjer8H6kvuwNvKqEkLNPVIN6aaxfrIZ
         DatOzOmE0isxSSw5fft4xLm2ZizZEbAnuBqHezPP+CZmG96gCOCDEAfrrFafVEtC1BG7
         3QiCeB68mVpVbM41Am4MzJA13KrH/KSP34qRBgkVh9jaYsNN+U+rp8YKlae2ZviC4bf5
         myrjQYowTqZ4/NSBvPyAOsLcijQmt9GaHah9N+f9uQqY2cbSW2RjtgaV0MASuv9zJqR8
         q2HHQIlCF2j5COXZ31K7ZTKdXOGROgluPyZqjRXUtmjanqbeqfcouHZIyY1FXpcgTSvC
         Piag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324tifXqQcbbjE2NEO/vmndltNFIfg8UYouKu5wVTB6nmiCBhY0
	s9x0IHbz9xIXxtb0fBMhRRw=
X-Google-Smtp-Source: ABdhPJysKX7ZkGcgeRbAmRt5VbZ7TUHyguxI5rxCnWP7jlXh/ZfTsdw4JiQIYl8jQgqZj05e85+JxA==
X-Received: by 2002:a17:90a:b118:: with SMTP id z24mr5328552pjq.108.1605308188669;
        Fri, 13 Nov 2020 14:56:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b56:: with SMTP id a22ls2579906pgl.6.gmail; Fri, 13 Nov
 2020 14:56:28 -0800 (PST)
X-Received: by 2002:a63:3c5b:: with SMTP id i27mr3820581pgn.268.1605308188090;
        Fri, 13 Nov 2020 14:56:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605308188; cv=none;
        d=google.com; s=arc-20160816;
        b=fRWzRuX16uADZPcbvH0rW4s8s8/jjdPvrJ8KBuZmsHIUKF0+kTNKB3YWGurKyOvb6F
         TkON8jhDCyi8XOgrV1YVKW1GRU73xgikHYzGdskxBz2V9mgkfJwF75bh3zq2BORUVFXp
         LbwxiYdqXNGCLaATauZfuR4GfeM9BycW8qfxSifM+z+cbk47fXoLl+f2XRmeAkmpA47i
         M0VSsBH3ZeDTiBujIdtDEXbBbaqGutJkEzvLcZ+ASlWEgW2reRcSOkIJfAA+9e/iFec4
         vvM96P+lNYGEadMYqgr3zHU+BLUsnhB1utNr6Ip48D/KXCcarFxUJPXEFOF7XioN78kO
         pv2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PXuUO/jzK6PC0ArsPRfFmIFBybv98p5k0ll08mBK9vw=;
        b=kexv872V55iHn+JeqpYWohIs9r6vCJrKXn13bqgdHxbLA+Q0ZACKb3stX1pPRv3Lad
         cL2/EybSIp7Z2w4Ae7kSmiF/AD0K1lIAKWjk6cL8CuBeHwfyrbGxB52D8UelC9HfGXQK
         QJhMPVfvBCBmuY+HL7ZSYvSGMu473ZCFXvYFlTmtwiMaFeTEF7KULl3SSbo1ljJi2zL/
         66HftQU4gPbSMdywHZjrqsDrIfcqRL+dI4TN0eQxVnCU0dcnZBHwpYPXZ+/YJXoQ5A03
         5BltbIsccOI2KGbgkVY5iucobZS+2gvL++//RNLihIS1ic0XL7AMwc2YOsSNA9RVHdyS
         OryA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ppzw/oOl";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id bd7si569015plb.0.2020.11.13.14.56.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 14:56:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-562-gA0AbIuzMxWJynkYsYRo7A-1; Fri, 13 Nov 2020 17:56:25 -0500
X-MC-Unique: gA0AbIuzMxWJynkYsYRo7A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C331A87309E;
	Fri, 13 Nov 2020 22:56:22 +0000 (UTC)
Received: from treble (ovpn-117-69.rdu2.redhat.com [10.10.117.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47C611A3D6;
	Fri, 13 Nov 2020 22:56:16 +0000 (UTC)
Date: Fri, 13 Nov 2020 16:56:14 -0600
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
Message-ID: <20201113225614.ry73o4knb6mvv4dq@treble>
References: <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
 <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
 <20201110174606.mp5m33lgqksks4mt@treble>
 <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
 <20201113195408.atbpjizijnhuinzy@treble>
 <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
 <20201113223412.inono2ekrs7ky7rm@treble>
 <CABCJKufBEBcPPrUZcAvh1LXX_GwRG1S1sg2ED2DPZ53MPy_VbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufBEBcPPrUZcAvh1LXX_GwRG1S1sg2ED2DPZ53MPy_VbQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Ppzw/oOl";
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

On Fri, Nov 13, 2020 at 02:54:32PM -0800, Sami Tolvanen wrote:
> On Fri, Nov 13, 2020 at 2:34 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Fri, Nov 13, 2020 at 12:24:32PM -0800, Sami Tolvanen wrote:
> > > > I still don't see this warning for some reason.
> > >
> > > Do you have CONFIG_XEN enabled? I can reproduce this on ToT master as follows:
> > >
> > > $ git rev-parse HEAD
> > > 585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> > > $ make defconfig && \
> > > ./scripts/config -e HYPERVISOR_GUEST -e PARAVIRT -e XEN && \
> > > make olddefconfig && \
> > > make -j110
> > > ...
> > > $ ./tools/objtool/objtool check -arfld vmlinux.o 2>&1 | grep secondary
> > > vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with
> > > modified stack frame
> > >
> > > > Is it fixed by adding cpu_bringup_and_idle() to global_noreturns[] in
> > > > tools/objtool/check.c?
> > >
> > > No, that didn't fix the warning. Here's what I tested:
> >
> > I think this fixes it:
> >
> > From: Josh Poimboeuf <jpoimboe@redhat.com>
> > Subject: [PATCH] x86/xen: Fix objtool vmlinux.o validation of xen hypercalls
> >
> > Objtool vmlinux.o validation is showing warnings like the following:
> >
> >   # tools/objtool/objtool check -barfld vmlinux.o
> >   vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with modified stack frame
> >   vmlinux.o: warning: objtool:   xen_hypercall_set_trap_table()+0x0: <=== (sym)
> >
> > Objtool falls through all the empty hypercall text and gets confused
> > when it encounters the first real function afterwards.  The empty unwind
> > hints in the hypercalls aren't working for some reason.  Replace them
> > with a more straightforward use of STACK_FRAME_NON_STANDARD.
> >
> > Reported-by: Sami Tolvanen <samitolvanen@google.com>
> > Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > ---
> >  arch/x86/xen/xen-head.S | 9 ++++-----
> >  include/linux/objtool.h | 8 ++++++++
> >  2 files changed, 12 insertions(+), 5 deletions(-)
> 
> Confirmed, this fixes the warning, also in LTO builds. Thanks!
> 
> Tested-by: Sami Tolvanen <samitolvanen@google.com>

Good... I'll work through the rest of them.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113225614.ry73o4knb6mvv4dq%40treble.
