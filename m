Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB47DXT6AKGQEMRMSW3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B6F294281
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 20:52:36 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id c21sf1595222pfd.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 11:52:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603219955; cv=pass;
        d=google.com; s=arc-20160816;
        b=kklHhQnZLL39vkIWWQwAniTllWQPBUBq+l+flhP6sU5EcqdrFjmjutb4+Bj5JKWlPm
         iRUq77zOCriQ2SSw86h4UhFxIxKquJHUBQToESvelsZzHNyVMjX0YQ1hY4qXtvW4QSzu
         Xfln6ZiZHTOZIqHBgTnIYx7TOozH0tk8hMqETDQ5f7wAWkpdXea0+u3zKDFzPuAuaJU/
         z6bDo8WXnEsuJ1gsH3s/7UTf92GO5mm8gBqzoosImURIuu5Jh9V+nBVxB5sNpXpBiMxP
         oniXGPLiJ8OCmiv6ORsKGTMQ5AM/DZe/+TBRreppeFAYUPjJtutWU4eRZb990rbJ7HYJ
         GXow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=htC1xJZ05MiMYcbEXenJK0W8OANoxLfcjvwHQ7noN6o=;
        b=KdOvDZhmYSmbrWMoapSHbCsZoUyptP05JQU1kDz52Ot5c2wUiR2Rc2PtJuVW8u93nH
         Ku18s9ysEZ6EknUDukKkN4hixyAIsbn9f9W2yTrgtnCQiPYVsqS6UWplWsorMR6nq8aX
         +90Nhe90Cb0Q3O390EG0YMf8f7YFp2C14IyBCEceXhLy9Bvwfmd3+eCo0zruFmpfk5xY
         csmKgTzu+A1erGRp1WT8P2uTTA3GO39fGjaJs35Qn4Jfsyvl5w5KFf4rvqbdzSCu1pzX
         8o5BecER6O4xAG1L+0thoeUIA0oASlyPpWdAWwzR89wScyfm5CL1SRbTwG9TAWXwii//
         WNKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KRf3NvWH;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=htC1xJZ05MiMYcbEXenJK0W8OANoxLfcjvwHQ7noN6o=;
        b=bSP2QDW5f80nFdOUj//Z17ayLLiE6QUPRkt9kQfabnuWxYRJIBij0xg4qcx6QMu5dt
         7Lb9DNzr/0nlFI6uDj0/HSJbtZzWlLOTu9+2/EtNJG84H/PwaTxHXlZ5ZJYJfAtxrmR8
         vUIC0OjfRG2IvE1Xb+BanM0fUMBgNh4PmftRAEOMRI2ftC7TNSnrn+bHq5T9Jbi9qkA4
         IBeucp182VBuH/ZVzXWDRZSYi/JWI0iYhJR+3bfMZZjZBJuWaEFz3CPCnEsFcW86IL8h
         +dPAXJe8LTEBbOGuKOjZGPvXi5h77a6N4oB+SQ43bo8kalT/7ytVv8M+N3LZbFt3Z1YK
         fTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=htC1xJZ05MiMYcbEXenJK0W8OANoxLfcjvwHQ7noN6o=;
        b=kWpVN0NQqqBTtdtfInYzLBzx2baTrqDcC15up+T/eoFFnvH80jd1T0N/5wuKoOjR2y
         t6M5uma4TpQC6VFv2sCpXQFA8YWicrYaF/UA7E0xc1w5KQdCPn6TmZ7fYMGStZY1hmNG
         J6INFPmKzPu/NHJtVxErn7UecrINZYy31Q0ammHYVK5gzTEObLA+NgVIKDPmgIP5lHEw
         uEw0U6m6dXKZnMkr2d0YzXDy1xoLPwX6ez3DJ9DaYNDGCRe5wrLXPOxEGCMzXhXqwzoE
         4IOA+SoCV6VubE1q3BOByZH3snFbd/tEbdxHxfPnKKgx+uzTC3burZK3nIDhvoNiKb7H
         kNUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DEqi0AnHGyxjLOkJTXIbSIG8MW11wGv1ZTqTffHcasRbU21yh
	FE7vuRLs26CB+OaIYMuNe9I=
X-Google-Smtp-Source: ABdhPJzmpDe2Dau1pCKP9AOk6L3x2oyMi9NDUzSEkT3q9mZQSOo0GAq1qWZCGgJ66ll4Aezqj3vajg==
X-Received: by 2002:a17:90a:a394:: with SMTP id x20mr3903580pjp.213.1603219955192;
        Tue, 20 Oct 2020 11:52:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8810:: with SMTP id c16ls1091087pfo.10.gmail; Tue, 20
 Oct 2020 11:52:34 -0700 (PDT)
X-Received: by 2002:a63:c84d:: with SMTP id l13mr3831991pgi.3.1603219954599;
        Tue, 20 Oct 2020 11:52:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603219954; cv=none;
        d=google.com; s=arc-20160816;
        b=MQc2MOWGzwNwYyaj3ijexycMa7BGAoLqakFpPDo+iMWlqYQy3G1ZGxydgcIfMgh/z3
         7T+tOKf+8el+wclGpQaoAo0rbEl+ow9oXkxltXTldwwYus91msnSpmH96ytI5fySz3ju
         naUcc/SBIs/wbG0Al5Rou/AxkwWTgbaBnRhA6xOZCR4RwFvw7g1taX30Em1Q3m+UGuZc
         XyyLFVK2QB25PugY6NGBaokK4tlo6ojmPr6CXDeXMfFk24nLQAefbS5pANyMqh6RVoy/
         ia4HVMZH+s3ULDa/V3Em5gXtKPQyrfPYhT4nQfOf/2HWjvNVYowakridbC0F0V8GePkL
         Qt0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oyUoHsRQhW9Pp4iIO9savPkdYtOE6vEjDDEEmlMww18=;
        b=iD5CD8aeQdLSrAD/HlzEs27d3KPj8pRQyPJ//SrJJi6JHGsYOVcZFQQT4fpqTFIV7V
         Hn7umQVVhe88xLimrTAw4rQO2LemQzUFM/14qfTuRDoOZxyt5ug5p8wIztpbTrFS2qaU
         mOfJ0ME0TUDCnnsioQP2BCst7zscv8j7/iqPU94gxnUAZTTPgN/aay7ww3RwkWWw9HUu
         icd0yZcxlJHhLxtYx76atdzTO0kPwjyyeGCNzzAxEXeA2D7Svqb17EqO42NVP1KlcyvW
         CmJ19QWjgDqjriToORivrb9aRO2+FKj6FJ2W3wWp99tte6aNa5cJU3+YvPYzhd0A93iI
         r9rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KRf3NvWH;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id cq16si197863pjb.2.2020.10.20.11.52.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 11:52:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-K36-fE2_MKaUTN0-WM3Zrg-1; Tue, 20 Oct 2020 14:52:29 -0400
X-MC-Unique: K36-fE2_MKaUTN0-WM3Zrg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9055257050;
	Tue, 20 Oct 2020 18:52:26 +0000 (UTC)
Received: from treble (ovpn-120-130.rdu2.redhat.com [10.10.120.130])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7FC65B4B3;
	Tue, 20 Oct 2020 18:52:20 +0000 (UTC)
Date: Tue, 20 Oct 2020 13:52:17 -0500
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
Message-ID: <20201020185217.ilg6w5l7ujau2246@treble>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KRf3NvWH;
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

On Tue, Oct 20, 2020 at 09:45:06AM -0700, Sami Tolvanen wrote:
> On Thu, Oct 15, 2020 at 1:39 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Thu, Oct 15, 2020 at 12:22:16PM +0200, Peter Zijlstra wrote:
> > > On Thu, Oct 15, 2020 at 01:23:41AM +0200, Jann Horn wrote:
> > >
> > > > It would probably be good to keep LTO and non-LTO builds in sync about
> > > > which files are subjected to objtool checks. So either you should be
> > > > removing the OBJECT_FILES_NON_STANDARD annotations for anything that
> > > > is linked into the main kernel (which would be a nice cleanup, if that
> > > > is possible),
> > >
> > > This, I've had to do that for a number of files already for the limited
> > > vmlinux.o passes we needed for noinstr validation.
> >
> > Getting rid of OBJECT_FILES_NON_STANDARD is indeed the end goal, though
> > I'm not sure how practical that will be for some of the weirder edge
> > case.
> >
> > On a related note, I have some old crypto cleanups which need dusting
> > off.
> 
> Building allyesconfig with this series and LTO enabled, I still see
> the following objtool warnings for vmlinux.o, grouped by source file:
> 
> arch/x86/entry/entry_64.S:
> __switch_to_asm()+0x0: undefined stack state
> .entry.text+0xffd: sibling call from callable instruction with
> modified stack frame
> .entry.text+0x48: stack state mismatch: cfa1=7-8 cfa2=-1+0

Not sure what this one's about, there's no OBJECT_FILES_NON_STANDARD?

> arch/x86/entry/entry_64_compat.S:
> .entry.text+0x1754: unsupported instruction in callable function
> .entry.text+0x1634: redundant CLD
> .entry.text+0x15fd: stack state mismatch: cfa1=7-8 cfa2=-1+0
> .entry.text+0x168c: stack state mismatch: cfa1=7-8 cfa2=-1+0

Ditto.

> arch/x86/kernel/head_64.S:
> .head.text+0xfb: unsupported instruction in callable function

Ditto.

> arch/x86/kernel/acpi/wakeup_64.S:
> do_suspend_lowlevel()+0x116: sibling call from callable instruction
> with modified stack frame

We'll need to look at how to handle this one.

> arch/x86/crypto/camellia-aesni-avx2-asm_64.S:
> camellia_cbc_dec_32way()+0xb3: stack state mismatch: cfa1=7+520 cfa2=7+8
> camellia_ctr_32way()+0x1a: stack state mismatch: cfa1=7+520 cfa2=7+8

I can clean off my patches for all the crypto warnings.

> arch/x86/lib/retpoline.S:
> __x86_retpoline_rdi()+0x10: return with modified stack frame
> __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=7+8
> __x86_retpoline_rdi()+0x0: stack state mismatch: cfa1=7+32 cfa2=-1+0

Is this with upstream?  I thought we fixed that with
UNWIND_HINT_RET_OFFSET.

> Josh, Peter, any thoughts on what would be the preferred way to fix
> these, or how to tell objtool to ignore this code?

One way or another, the patches need to be free of warnings before
getting merged.  I can help, though I'm traveling and only have limited
bandwidth for at least the rest of the month.

Ideally we'd want to have objtool understand everything, with no
whitelisting, but some cases (e.g. suspend code) can be tricky.

I wouldn't be opposed to embedding the whitelist in the binary, in a
discardable section.  It should be relatively easy, but as I mentioned I
may or may not have time to work on it for a bit.  I'm working half
days, and now the ocean beckons from the window of my camper.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201020185217.ilg6w5l7ujau2246%40treble.
