Return-Path: <clang-built-linux+bncBCIO53XE7YHBBL62ZT4QKGQEXI74GQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3EB2422E1
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 01:43:44 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id k7sf254544oih.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 16:43:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597189423; cv=pass;
        d=google.com; s=arc-20160816;
        b=F1zZ5LlqGvUnqri425s1IFncUZ1BfrR070clyuPOyUKebjO00GbH4GtqK2uddcPObt
         rBl+S4dXnq6c1E5fbY3OWRIQSvY6KivucqbbIQHX/H1HZ0ZShsQzry+e2LWCK2Nksnh+
         jPhYzEvuOpejlPeCPWa7mW0Ov2RcedvR6/vJNtHle//Nuyxh21qBCUJ8SD0BLy+8HTex
         4hQr28ETOnv/xJVmwMXo0mXGJhsX6SW5i6vRLmdq+P2QPToGphM//frV9vs/AC908u5d
         1Q7fHflmGr3W+sKfI0QZ4hcJ/XYiPoYMDgIK57XloCpso0DERDYdZzoCdCIu+CZoN77r
         M/gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=HEjR/eYZ8TJIKdi1eAQoj9vQ502HRoW1RKJf9BqAJiw=;
        b=uAX3/W0mH7sqGFA/lzfY+8EQi0jWrrnHpHzy9ZM3qV9EI4b76UFb14sncT0fL4G7rY
         3ETpCCCKCbIqqcF8wHUREuIUNFoozqdRCy+iyXKxlfa1tvuUbfH8cHxL3V5VDrA1CXE4
         XrxWZ1/FbvD1xd5Pmb8iku7jExl1Br0mcdXLEbrPZY50dz2xkql2I4nZBw12MzgeM9dK
         cWXeos82ZxWRQrXRbO0sIhVfNZTxOG/X+mJsbyM2e2irWe4Qt1V0Ur6o325iIW/+APtk
         oNCCO5iI7EA9y1aedwArnX+ok2iuQDZMOnB6RVSViebf1A1XQCIiZZHekXmfVxMavLDi
         dn4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yby0aUts;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HEjR/eYZ8TJIKdi1eAQoj9vQ502HRoW1RKJf9BqAJiw=;
        b=LD/Ty0csR/QINbRUQ5g4ruC0lUKED4wM3Nncv3z2yTUUdMwHMDkMnciUXUIJ37ZIvw
         Bt0PwS/kqrTvzAfzLFGkPzw443+/8pJHFdvKvmXlrjeJZM8MkRE9ceycTF267KJY65b/
         iWlDjl8OfgyuKKrnSG/6SQsUA0nPS1VDTB/btGtGtTANnWUwNS30Nf33z3FvoF5ucgOv
         k5I78YnSHnU8Sx/fjPd+UQ48PlSBnmWx4zmJNdbPsSx6DtpQb4BZJAvz269Np1miNTqp
         wUI0+3kZqMkWjI82ozvxRJVdGEjefxmOAwNBKAKGbxT/NAMN5H8hBBB5g0Ti97wcNHei
         B5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HEjR/eYZ8TJIKdi1eAQoj9vQ502HRoW1RKJf9BqAJiw=;
        b=DiCRXt/kB2L6wwnAT/x1GIjxVUY/rctwcnTrJZwi4PbyTNHQ/06yq/1d07KxOmIEu7
         fxBA80LkfQh6J1e466o8T/FHOqlrVCV+JkXhZRhP0qDiPD7HwWnsTHNezKGVeQsDCNXG
         NFbKHz8SBQjnJUgdImrp5oOYWRAriLTAmE4OZJevAsfLgBLUZ0TCVerBiMMsquwcSGOh
         VjZPRO8Vgtl0mZTl4p0IVBoGJsI7ILG8BUz2KDyJmMVT9xXcF9lt/YG3GHJyoUpfuLsc
         sZJgDtTATuKo9SbaH6S3iHx2roPJahjT2raZ0Bz9Fid+QXvHcZ5EcozL4V/Hy1gRt2bS
         M2YA==
X-Gm-Message-State: AOAM5300Hei92TZ0tbY0O4NovShle0n8B16OViMXzSzBQaYBv/wwq926
	0YQ1j13YjYCAtLSbtfnrKX0=
X-Google-Smtp-Source: ABdhPJycfeq2Rh4tQQJD88RYhfIHbv+ASxd6yWRpf+14gZ+YXcBSeMPYzRzZT3MCy8BlY51W/0MVQA==
X-Received: by 2002:a05:6830:1e4c:: with SMTP id e12mr6869542otj.193.1597189423756;
        Tue, 11 Aug 2020 16:43:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:546:: with SMTP id i6ls76219oig.10.gmail; Tue, 11
 Aug 2020 16:43:43 -0700 (PDT)
X-Received: by 2002:aca:7583:: with SMTP id q125mr5657104oic.142.1597189423447;
        Tue, 11 Aug 2020 16:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597189423; cv=none;
        d=google.com; s=arc-20160816;
        b=I3Jfz7q+Nfifh02Kn1Oto6tUcZ8qkjY9GJEZi4M0ChY8Fggpr5xCCqiNNQMFiefuhn
         /M5I0MAGNqJ7H8hJoHPNWXHGBPksoADutQtK9DH+o5c6LCdCx6ar/h0QVmySUWXafnha
         qy5caN0WdOp2jmlUOy47e0wQ1GQTl22gglG0UqU9CxGjrhFHTPXtEQKs68Z5tOMXM+lJ
         /X9526ibWWlqktAN3uhUPYBXHTcTXQtTBa/1HNlKsi3nrPLkxf4+edCi8hfLFVy7QRAM
         S0hUsJK27PisorF7m+khxCpd/+SX/7dSLIiItxsZ4deCx7aTjgMTNlqb4lZpu1x4l6ew
         Zb/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=vVYy/T/u6izyIYXA6EUbzp0+LeJ2m23WS7/Kot+WNrE=;
        b=vD1n7ql5oNPbk/ecJmHJIcVUk7jY3Qkb+oDi693exAhqIBvTnONSQEgSfqq1FV7Wkc
         5HYQyqaVFM3Fo5K9RdmsJ5IG/2Bwmy0Bk0xgG/FV7cafdLL9BVB0WyipaHpR7TALVjci
         TOsQ0Ald6LdeGBXjGYps0ERuuklgqFzQZyvraLF9tTlA22Flp9rUXTQzVI4n+GUpY2/C
         dOdU30odbHLvAksFs7n3ZjDI1+/jUX5cNZxkeR1PnOFUagJr/f7WjzHd6nzevhVzU7hz
         Jqw5ywzmYDV/H4if2G3Q2DRRC+9lnj/0/e6ngrP434DJPBs7AsrIt1BDAfXMtGBdeOC3
         PG7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yby0aUts;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id c5si12289ots.0.2020.08.11.16.43.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 16:43:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id b25so266294qto.2
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 16:43:43 -0700 (PDT)
X-Received: by 2002:ac8:428f:: with SMTP id o15mr3499525qtl.213.1597189422871;
        Tue, 11 Aug 2020 16:43:42 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id x57sm424168qtc.61.2020.08.11.16.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2020 16:43:42 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 11 Aug 2020 19:43:40 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] x86/boot/compressed: Disable relocation relaxation for
 non-pie link
Message-ID: <20200811234340.GA1318440@rani.riverdale.lan>
References: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
 <20200811173655.1162093-1-nivedita@alum.mit.edu>
 <CAKwvOdnjLfQ0fWsrFYDJ2O+qFAfEFnTEEnW-aHrPha8G3_WTrg@mail.gmail.com>
 <20200811224436.GA1302731@rani.riverdale.lan>
 <CAKwvOdnvyVapAJBchivu8SxoQriKEu1bAimm8688EH=uq5YMqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnvyVapAJBchivu8SxoQriKEu1bAimm8688EH=uq5YMqA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Yby0aUts;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Aug 11, 2020 at 04:04:40PM -0700, Nick Desaulniers wrote:
> On Tue, Aug 11, 2020 at 3:44 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Aug 11, 2020 at 10:58:40AM -0700, Nick Desaulniers wrote:
> > > > Cc: stable@vger.kernel.org # 4.19.x
> > >
> > > Thanks Arvind, good write up.  Just curious about this stable tag, how
> > > come you picked 4.19?  I can see boot failures in our CI for x86+LLD
> > > back to 4.9.  Can we amend that tag to use `# 4.9`? I'd be happy to
> > > help submit backports should they fail to apply cleanly.
> > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/179237488
> > >
> >
> > 4.19 renamed LDFLAGS to KBUILD_LDFLAGS. For 4.4, 4.9 and 4.14 the patch
> > needs to be modified, KBUILD_LDFLAGS -> LDFLAGS, so I figured we should
> > submit backports separately. For 4.19 onwards, it should apply without
> > changes I think.
> 
> Cool, sounds good.  I'll keep an eye out for when stable goes to pick this up.
> 
> tglx, Ingo, BP, can we pretty please get this in tip/urgent for
> inclusion into 5.9?
> -- 
> Thanks,
> ~Nick Desaulniers

Another alternative is to just do this unconditionally instead of even
checking for the -pie flag. None of the GOTPCRELs are in the
decompressor, so they shouldn't be performance-sensitive at all.

It still wouldn't apply cleanly to all the stable versions, but
backporting would be even simpler.

What do you think?

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 3962f592633d..10c2ba59d192 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -43,6 +43,7 @@ KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS += -D__DISABLE_EXPORTS
+KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200811234340.GA1318440%40rani.riverdale.lan.
