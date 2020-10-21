Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBJ4AYD6AKGQEZEEVSRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F94294A91
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 11:32:24 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id g184sf1297237qke.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 02:32:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603272743; cv=pass;
        d=google.com; s=arc-20160816;
        b=VvBTkL60CMRgmyKJAQK5vEHkxFBJaPbwcFTEtZBke7vGr+uUSqZIY2Qpy2h/rna3AX
         R1Gk9m2VA3oFNaE/q2V5CiGe8U+4yl2830Oj+xlDI840qttoIVVP1zJSWsvWi0FiL7rd
         ryNZnzHxBQr8gevOhyiWyWZ6MVmmJkEcdJcwPiT4i8j0isDzybWcfzI/NdLvMJ2TkcIm
         d/h5yCAKCwXuJxlcn48QkMyxhypQW1OX+h20xX2lDcE8s3jB2Etv5em4hAAnsoR0VZ0q
         feqfFnYlC1ewYy6IgQwhhLCBhqWw+ZO9lJauZAjIMegE0GrnWXedCH1T31h7thNMRB16
         BWpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8DacQLRbyIQj9xgf6heyfdNxfn2wF17Mjgr1XjDhltk=;
        b=QzwwgSUAswbnWmFdwJmYLUf7i95Xux6LOPz47xo2Rfy5XOGk5DEjzmRaX7sgf5IbjM
         f7WJhWUNONV0ptvI3VnOPgNFD8lofH1Hm+g5h6JyLG8TUgwtxqbZ8EdV8Ueh0veTAeDV
         BAlle/KVUR4ed5fSYnY930gIvmWAiHcsuwMwSNLvg+xTaMn+/HhSi11rRLsUU9nzckDp
         6mkEm85IOr5H0ttj5B651P6Rw5b1E5Xkp/Lx/oX2H6qo/NlwFrd3tCHYSePrKwzHzC48
         +wlV57wJOnns7Zj7/KgWo5zz722B/v9kGts9g75r9EcUjiKJndke95RurHz+ID+jIOZf
         9izw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=Lre+lL+7;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8DacQLRbyIQj9xgf6heyfdNxfn2wF17Mjgr1XjDhltk=;
        b=XBUIylRhRLBIY2p8xOMVgIjjBwmsKMAYFQ+ZBq9+W9M5nLtTOM5jSZInQHJgAT9BWG
         OEC91CgyxYZ8Bulc+pEPiG5sfMHhnpg6nlStIInSDfQJ4XtDz281gzuNijc72JENKnNb
         EBJtI9nHLn0cKMaCVL518dSyzBAv5THKBk2Zx+axCO6YGjP7wpTowt9I12W4tHYfNAFq
         aYedxh/aqDgtcFQyzkeb5zdehwXk0cRkrdN3lqb65TORulZ0tdPla5XyepCNuk/dHrOK
         BJTf7im0tJs2WsGAKrYm2VasZWSPhNtIyV1jE68uQH5eZ3I9CJh5ZJ2ZiyIEJi7VDe4G
         egdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8DacQLRbyIQj9xgf6heyfdNxfn2wF17Mjgr1XjDhltk=;
        b=Q9UpjSXHCnSFzCZ9EYXEkYjY2EoddN+u35oN53kHmaj0clX9W/yd6wylFSm6K5q7Jr
         s8cRKoeWKGifa/eJ0bnX69AJJ1gNe6YnF1lAb5S/MUAOplj4SuIvVCrOtNxmN2HCn1BT
         h0wa7ZEFHLy6rwAHuFyj/E9PJVX6WysHLkWQ7v+pNCfO7rEEcz12afwEAWP0z04u4jsV
         vq+IGkK/xo+2JwYrCteSvpy0MKxJIRYEYJXvBhr8ZkP1/OJRwh/Zdk2T2fkP+V1tNWvd
         JG3JIKgfLTmMOli5RSo1PV56HD9/T8dhs/LBYiJ4lyjckP/gfNhXpF++BEvBa+6kxxEm
         CuPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AnHD1jCOJ9Wb7PYrpfUZr0B915q1XtAh4OaA/Wx0L01CCof/0
	EMXEo1nQ9Cave4qYz9O4kMY=
X-Google-Smtp-Source: ABdhPJzcX59CnqS9yVyrK0FFusUAypvz5TWvDOdFZPbFhz9g7mANkXOPDXPG8V6o+2Nil0v9J1wltQ==
X-Received: by 2002:ac8:5141:: with SMTP id h1mr2120008qtn.139.1603272743383;
        Wed, 21 Oct 2020 02:32:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:71cf:: with SMTP id i15ls1779753qtp.7.gmail; Wed, 21 Oct
 2020 02:32:22 -0700 (PDT)
X-Received: by 2002:ac8:2dfb:: with SMTP id q56mr2216138qta.79.1603272742833;
        Wed, 21 Oct 2020 02:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603272742; cv=none;
        d=google.com; s=arc-20160816;
        b=rTxfzvweewLJPs4iIe0YBcORUQjsP3RmWx3POb8mC6yDmW/sxiXdhroshmAoLN3Ny7
         WiIrrQoq6vaq0UfbDRJV6sFZT2kaiBsk2982p2+eHjbzwIeIyxTcVjQNAqwq3UnxsYuP
         iepj/8WqhgKub8DRM7BQVe+NfUfe2KSdYrUKYnuZq9o7VaeenVs9mF0hQntAsf+eSHf8
         lbJKASzFxMyokzKv0hhA15YneBtBCIa/g2bk7f5bnuEnthdEcx4EYWdywr3ILhjQe8Kp
         TFaG86S09v5hSqBFT/gfOTNaAOMYr9x4eryZamHnRKUaB4epIQ1BiZk1JiPPnrsbHDj4
         xPxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uqvkvvjoE5FAn6/BMAIUZQ+MmjJn2kzB19jYobhFRX8=;
        b=zw5UKrXbtqJHz/bNHSWA13VUJut/x1EGfD1LDjq6WQkC0Fp5uAa+AAXCBxus9CHeJh
         5R8Wu0O6BXsjDbEl38LL8miFSmuGmFIdzI/3Z6j57rJ0KFC2yDEI2cRXwgPG2xyBqEzz
         AquyDnn/Wbf57lvUELjFymrA/TSwwfGOh3d4S3vv+K7l8GEfFu7nHBGh04/U21OTL/Ew
         KwTQoUhRy2Rrhja9Lwi99p20jh8WkB+NGKXBwsSkoJ57KEd6ovfutXrC4F8dlNScwqeb
         BWsjPIcf1gF5688hq/YYpUWLzQvIwzC9o3RJa61eHxC3cwbud9jkgbizWg3AYPd/vkcs
         N45A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=Lre+lL+7;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id h18si103055qkg.3.2020.10.21.02.32.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 02:32:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVATf-00084o-G7; Wed, 21 Oct 2020 09:32:15 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id DD6EF3035D4;
	Wed, 21 Oct 2020 11:32:13 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C5308214ECD61; Wed, 21 Oct 2020 11:32:13 +0200 (CEST)
Date: Wed, 21 Oct 2020 11:32:13 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Jann Horn <jannh@google.com>,
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
Message-ID: <20201021093213.GV2651@hirez.programming.kicks-ass.net>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=Lre+lL+7;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Oct 21, 2020 at 10:56:06AM +0200, Peter Zijlstra wrote:

> I do not see these in particular, although I do see a lot of:
> 
>   "sibling call from callable instruction with modified stack frame"

defconfig-build/vmlinux.o: warning: objtool: msr_write()+0x10a: sibling call from callable instruction with modified stack frame
defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x99: (branch)
defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x3e: (branch)
defconfig-build/vmlinux.o: warning: objtool:   msr_write()+0x0: <=== (sym)

$ nm defconfig-build/vmlinux.o | grep msr_write
0000000000043250 t msr_write
00000000004289c0 T msr_write
0000000000003056 t msr_write.cold

Below 'fixes' it. So this is also caused by duplicate symbols.

---
diff --git a/arch/x86/lib/msr.c b/arch/x86/lib/msr.c
index 3bd905e10ee2..e36331f8f217 100644
--- a/arch/x86/lib/msr.c
+++ b/arch/x86/lib/msr.c
@@ -48,17 +48,6 @@ int msr_read(u32 msr, struct msr *m)
 	return err;
 }
 
-/**
- * Write an MSR with error handling
- *
- * @msr: MSR to write
- * @m: value to write
- */
-int msr_write(u32 msr, struct msr *m)
-{
-	return wrmsrl_safe(msr, m->q);
-}
-
 static inline int __flip_bit(u32 msr, u8 bit, bool set)
 {
 	struct msr m, m1;
@@ -80,7 +69,7 @@ static inline int __flip_bit(u32 msr, u8 bit, bool set)
 	if (m1.q == m.q)
 		return 0;
 
-	err = msr_write(msr, &m1);
+	err = wrmsr_safe(msr, m1.q);
 	if (err)
 		return err;
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021093213.GV2651%40hirez.programming.kicks-ass.net.
