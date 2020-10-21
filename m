Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBTX4YH6AKGQEVCS3DMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4E329523C
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 20:30:39 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id j129sf888636vkb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 11:30:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603305038; cv=pass;
        d=google.com; s=arc-20160816;
        b=B9pwRjTbB4myLuTUkiil/qF5KS1Omn0HNDCPbwl2kx7RktdFFUfC/u3Hpc4/EVu0IF
         9lniHxdHJADFsBsfrMEUMlrArOruSS/PC3TLbWPMgQMY3VVavdjB7mTN+WG7986EDd12
         oG7OdAKS+wQDl0J3xZKtsuRj6dg3nbtjhngXraob05VpKXGuDBzs4YtyeNXF+WvQkgVY
         TUJviQapu7HgXC7P7P1t6kMQY1FI3ql4PdWKeY5xblzlm5mgoD7foQ0BTU9i7weUZuv8
         ZfWZK2fmutTOj1KeqeVUZZYxQoXOWYPaHJdBSQSA7BIpcm+nUXQQIBgRGpPyDtNy5ovl
         K8Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=00Fo8oVji2TCCTriw75t9HUUEEACxCgskcf9SFhZxrc=;
        b=okiOTqWlCwJgjIly+oC0RO9AYmgBsDWeF5ilPCcf0vwd0PznMomdHYE7japzTnjH9n
         8NHjVNzMQ5RHEkPzpVmUHrG+zk+hjYRrZkIKotfOLtHb1MOseKTBCIn2UWby37Vou9wg
         /AIDZ+yjlo/VRWlRWBVqcDTMX+Oh76uEhRTQtiUCnCcxxqBprkhvJy6r0W8wDSzXZuCs
         DBeHqx2YtLpJB84YuUUmAEiH7P5IsFr3YKiB9nzVEix6NrgmCRo8FCu+SOL/KqgJ5e8m
         Ljsf9aA0jhrRhY2tbA6q4l+ZAcKJPT/THUM7aNyXodEEn1aIWKhbFGlnXbBsF/Hh5PUM
         /e+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XHIwdzkN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=00Fo8oVji2TCCTriw75t9HUUEEACxCgskcf9SFhZxrc=;
        b=WgYiyhcgi2FKP56HgmGSYBFhpwkB6uYBwzIYJvh9SDtm3CCYph8ojZmCKnNn2fPCf+
         oVeJ4U5hfXvycdaQUKhC6cAdrttlA3DpLSuuSyd5bst3xkZ22ljxOnOzmffGCTlofPMj
         6SgWDm4OihXJ35ZAeGOABEvFcrdBSI2LU9sccuMjzbjKSkKwijQ9ARh0g1hEiMEcoVtb
         MbJ3wd8ueoKy3e2drrejFA9btYsAzzjVp2xoy5ZEWo77X4GYkbdpMpSxGdaSPOW3LPDF
         yDJOSatAp0OdhcXlnbWuoJNLjK4QCJ0o5TWN8mSSppBjXeGNNx/FPDhUl9LfjxXZcFxJ
         OGag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=00Fo8oVji2TCCTriw75t9HUUEEACxCgskcf9SFhZxrc=;
        b=rzbdAi+4IAHOtQ99X50VibqMUfaWrHi6EJh1JyIRXRXH4u59BoloINwWzYO6hjAMa3
         VWyrr3MDHSFKQFI6nh5IOXD4POz/FcWHtmHKqu5Qw+O5J6etOltEU0Kx26DlYt16MNAM
         y6m6lEt/HIOb62597yB0585VZ7iXptFKNfPVBxVafKyhrPMMFVEfGjkTMbzybrVUc5rz
         QuR0/1Oagb/5TGPOKzabVAkrXtWHkCtRZHQWfA4znNQc2ybg8E2Mhf2C1/lAtv+G5mfv
         gCYwQP1u1Cjt3WmVvwdic3yU0DjfHiqIHWy8R7pedkQ0y2DT7c1ZlBP9I5qYzmIUO/c6
         NxQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IB5b1a+0iUZJ/cj8l0G5zKfW0n7Vv3w8/ZtGqgr6Okogsj7TQ
	GPki45Q2AJw/72w7RF+dewg=
X-Google-Smtp-Source: ABdhPJxpobpQ700X36Z69TOI+gOhK3TBPydzJWP2bw1oZUukOOAf1cGFHw1gWAJZkZGuigdepL8kIw==
X-Received: by 2002:a67:f88f:: with SMTP id h15mr3608532vso.26.1603305038393;
        Wed, 21 Oct 2020 11:30:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ff04:: with SMTP id v4ls110624vsp.0.gmail; Wed, 21 Oct
 2020 11:30:32 -0700 (PDT)
X-Received: by 2002:a67:7d0e:: with SMTP id y14mr3222111vsc.52.1603305032882;
        Wed, 21 Oct 2020 11:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603305032; cv=none;
        d=google.com; s=arc-20160816;
        b=MJ8mlvLrbiZLL3J1I3qoHi+Hk7qbn0zOFDKKScSaIkiRw3i/Fl+XN5TIHez5woi8PQ
         jY3ePWixljG54333LIHdLi4De99At1P9yxxLmZQEwgAQeD1np9duvru+MECq10xJZH/8
         +OwdF0wQxu25Z9RGCZ24pprpZ4KHJqgnwgAa6pzikVu5dcXYh/CRfL9l2plE8xVKr7pP
         XnvOac1rGC5yyVO7rGuepA/rZ0OLgYfHGmucj16VVfWG0sAr+EOui66QArnOM2RmBlow
         fWxIhISsUNm9eMtStn/8G4iMEjueg6VxvoaI6eJFJ0iRtJPoPfegXUN0J7GTWIWfJVYC
         LqbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SWk1HmGPS11z1lVFpxCdMWGo2d19IWvUVpCVt8eeJUo=;
        b=hVfg5TtRpFow8Zhmef0JZwchExJjMciJ//w3Lmn7wlVw0oQtPkp4QQ/PCR/bQWFc8K
         BLf4ByHQYtnR6DXFwGRtGAAMBrB7a2mDjHCvMHf+57AaxBzGRotruKK+XLm+VB5zzSPh
         /VMijqC9dSMTxYJvCFMssKppgvX+rLEVclkHeeGzZqTnaOYusyInI/NAxNuNpsFk2Lt0
         73qR+U1HNSh9qKnixEBtFVj/djVowUnk7NpZZ1ph7C5/rwg6KDHb1LMJ3zM3YmX3NxXG
         906Q+sHrrhhaMdleViFsB1HUgp5MCHUiYjCIWXBQkFGxdoJvwfKe/ZUNpT5uECDDw2Nh
         7BXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XHIwdzkN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id v3si118415vkb.2.2020.10.21.11.30.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 11:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-267-ts4ydIjKNra8FmPa6CjVIA-1; Wed, 21 Oct 2020 14:30:26 -0400
X-MC-Unique: ts4ydIjKNra8FmPa6CjVIA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51CD0101962B;
	Wed, 21 Oct 2020 18:30:24 +0000 (UTC)
Received: from treble (ovpn-117-195.rdu2.redhat.com [10.10.117.195])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 912706EF42;
	Wed, 21 Oct 2020 18:30:14 +0000 (UTC)
Date: Wed, 21 Oct 2020 13:30:09 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Jann Horn <jannh@google.com>,
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
Message-ID: <20201021183009.qbvhz7hsrm46vksn@treble>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <20201021095133.GA2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201021095133.GA2628@hirez.programming.kicks-ass.net>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XHIwdzkN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Wed, Oct 21, 2020 at 11:51:33AM +0200, Peter Zijlstra wrote:
> On Tue, Oct 20, 2020 at 01:52:17PM -0500, Josh Poimboeuf wrote:
> > > arch/x86/lib/retpoline.S:
> > > __x86_retpoline_rdi()+0x10: return with modified stack frame
> > > __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=7+8
> > > __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=-1+0
> > 
> > Is this with upstream?  I thought we fixed that with
> > UNWIND_HINT_RET_OFFSET.
> 
> I can't reproduce this one either; but I do get different warnings:
> 
> gcc (Debian 10.2.0-13) 10.2.0, x86_64-defconfig:
> 
> defconfig-build/vmlinux.o: warning: objtool: __x86_indirect_thunk_rax() falls through to next function __x86_retpoline_rax()
> defconfig-build/vmlinux.o: warning: objtool:   .altinstr_replacement+0x1063: (branch)
> defconfig-build/vmlinux.o: warning: objtool:   __x86_indirect_thunk_rax()+0x0: (alt)
> defconfig-build/vmlinux.o: warning: objtool:   __x86_indirect_thunk_rax()+0x0: <=== (sym)
> 
> (for every single register, not just rax)
> 
> Which is daft as well, because the retpoline.o run is clean. It also
> doesn't make sense because __x86_retpoline_rax isn't in fact STT_FUNC,
> so WTH ?!

It is STT_FUNC:

  SYM_FUNC_START_NOALIGN(__x86_retpoline_\reg)

  $ readelf -s vmlinux.o |grep __x86_retpoline_rax
  129749: 0000000000000005    17 FUNC    GLOBAL DEFAULT   39 __x86_retpoline_rax

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021183009.qbvhz7hsrm46vksn%40treble.
