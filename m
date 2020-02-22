Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7VDYPZAKGQEKDJH4MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AFF168D09
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 08:02:24 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id c2sf2352160pga.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 23:02:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582354942; cv=pass;
        d=google.com; s=arc-20160816;
        b=egYO+QvjU++3YeLH4wgFEqPbtKCue6BdIOAXj6X3mO047s+2O2WEIWV12OJAy/EMXZ
         v19o3n8TfkFoto+528cS6/+rb/zQSMqBg2dR3t4jk2OL3TgfGegk3EH7uVcRp3FeXW+k
         iuzTKG97tgVdQLnzC9Hys8lXF1IJTTyGwGEU4cZM8raauxbuzDk1UGuyoKaQP1gK0MLX
         lAhsBh6TForXTH8RroWfbK/p467G4+PebBWY64UseUA2w+z/TAF88uckD/oWVitIKd12
         qRSsyPIRTUsrgm6ShzReFD1Yb4oX0OtZHeLsgfKoKajzNCKmXznTRTi/Ogl1OurBUxWh
         cvKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=YkKjTbXOYtEwDdTpcVSgqi7KMMh7zGNK11oIxlqUG9s=;
        b=am76JNesNyd/RuvV9wYjUa0gkmYGSnjrFSh5UKQZnM0yx4U1xjsYS4pEX8A2SOCK0j
         lUWL+bLEUV8xdBy7P1pNVkDYCqeu1nRaYShs6YsCLhRNzmFsizkhSLlZPOeJkIsmb4u4
         uvO4eyQZPtJJPalgFJ6a0mvb+yVQnbS6f7zXWEfAwWP7clPwpIN8InvO46NL4sjIxfxU
         jnf/4Wi/Vf7ycsjABD2foJN3ufWOzTyL0lhVa/5M27gNkYVUV16IGGrqwIASDU6urkms
         PrVZOo6w0HRr5UeqC+wgiiNIxJ3g7nAbqtLvOuXeH70crbehsV71gtceTwWDyZq+2yo+
         GDdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cdNs98hU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YkKjTbXOYtEwDdTpcVSgqi7KMMh7zGNK11oIxlqUG9s=;
        b=p47hQYhbHLQRl1nLSJ92vkIPkOb1tYDe6b+Kg+uCP8Am6R+EwwpCLuado2zwsAhBRx
         mT7UNRpPfJ4y3sHr7LRbbxSonLEU4bf6b6ZuVU4bWzefh9INdri2AjIkUqQEcQh0YZQ3
         E46uDsZmx1Bqm3quRvBGpCEb1WOl+k7Wgy6l6n3ZMHUxYoWDoqGy/Xs/c/HVOObp+udJ
         nEQvUSfQGJhscimfY44VU1aKG82DFJC8Aao9lyXE4iGBrWjjMhS/RhXpd8iNgKKlvZ6j
         LePsTVFxEuPAQ0KwCqT+jHmi8hk15OZh473YCBgVJCrIeQL/dUeWK/SuPXSsTk7uO/Ja
         TFiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YkKjTbXOYtEwDdTpcVSgqi7KMMh7zGNK11oIxlqUG9s=;
        b=Jboty4RHK1dmfpQDARnszya8UnNE0X5fjxgDPtdv419MKdeTHM9kZGmsq+Yox1Gko6
         S4+zhLdjCPKMOJm1t2/yDYkQpODYriMxVblXe4f4SwL/F12porQ/y714Id7SIpxtCKcC
         sDHBKFmIqCnFSRCelxH+fb2T841O+eHBf4bNfjIAFnTxoQN5Sf9asGhbJbEbef199tGP
         yu2yci7ZRwVqvOAdEigeoPjAjstCGkrqu7KGcZ4PH/AdDFSKHZsOL0tu+A5Dl6X2oOlg
         A+DO/bEJaJAwM9CURXXJaN+AU45+M8LGOy/eIxQx9OxXwJBmJj2OLkNfirztWXBWiQdj
         elZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YkKjTbXOYtEwDdTpcVSgqi7KMMh7zGNK11oIxlqUG9s=;
        b=BcgLT4jd+aD6OhY3234ee2jzPSPyEc3VQpWDvqSXIDq2xBFpF265Yh3FbMFr8b7482
         NngYkZ06YHdWu9d7E72N2aM/ERo9X70DNZgBtjG56ABtqFBNjbD7BD8owO16Lo6aYU37
         fUdCl5XLHrmfNa6qWc/0nAyaAK6Xg9Y99YkUp/0/W2ylqKgk0HWIgvVVlceBwWq1PKJ6
         dggbiVc0U1fbFP60d6BrANvoxrlfgLR+GlxSHQ85dKwjP+8Tqrl0HzK5WrDMe903komB
         VRKe6P4oT93KA5VsG1DFfdbKgLPcdtqrxb52mgWaxK6mCcGWjLEBZiNaHFKaljZA1xzA
         Pj/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZwmc3x0gRAr8Vq/XEvZ59zkOH1Ngl3IO8weQaDrC2ctgzLyGt
	1qGm3nHAiWwR+U045qGCSiU=
X-Google-Smtp-Source: APXvYqymlGcEcrkMLgTrs1OP/j+ObV4KBimBXIx9uB+VCPkwVMdY6FjPnC+rKIiFfWmlY+PIwmDqtw==
X-Received: by 2002:a17:902:fe93:: with SMTP id x19mr40735420plm.155.1582354942276;
        Fri, 21 Feb 2020 23:02:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6644:: with SMTP id f4ls1503402pjm.2.gmail; Fri, 21
 Feb 2020 23:02:21 -0800 (PST)
X-Received: by 2002:a17:902:8bc3:: with SMTP id r3mr41184092plo.220.1582354941714;
        Fri, 21 Feb 2020 23:02:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582354941; cv=none;
        d=google.com; s=arc-20160816;
        b=sq3cuD+V5G2TIfIUXRVfM0w+5KXlfLbe6aNS5FP1Meeprke2CMWiue8K5pPB3KyCN1
         EgkMkCLa1vWxX8+5epvFYXN15Vy5LWVBkwB7FMxDUIV45w0mJ1FsvaPuYTK+mOyRz8f3
         Kj+45ai1Sf/QSDrMNNnZOIt4HRCrCMagMPbR8CS+CSdqgCjuSsqyNj7yTstki2wiDkIn
         s0YDQoardQ5tQHA9wz9Bdaz7HVLMJKimOsPZsgtohPA9LB0D37Mz9NOYQtxOFqJA/jLl
         a2uNhOOWScx2HU1yVEJnD8f0tZd0yyvsTmz5usgNoSfKtG7Z/P6qd/2l85X4W4aoaFyU
         Grug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wp8VhtMOgSbmaayvgbvSF3iGsyK4mtaSOsHdOnwnL5c=;
        b=vFwQ85ApOyCmQ05FXNRwDbSNTZSgH6HlO4iWuXleFdHRPIupy6nuCnZgNqM/Xu+vCQ
         t3dtRpPoDmfqUuRMm+fQ5+RjEImKYlryNLHgLGDOREM6OvnejTh7MRcUwxmrqR6mndSj
         9S8lNrTiHwmuuIica7B7Ns70SM9JFkRIgrmjDVDbsyYffzEKp+NF4O9fQwZHFIi1VWDO
         eUgnSuwB6fiq1otfY/H+KmweMVx2MYfUxFjPZm6kvrjpTglHzlO+Y0LUiw5VaT6OR6nY
         7t46RHnSUo5eQegE4aNjhBkHUkcTtwoZeQ1d4y8u/qF1/6DlchpQj2iA4PMll/3gl96b
         k3qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cdNs98hU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id j10si308402pgg.2.2020.02.21.23.02.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 23:02:21 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id q84so4001030oic.4
        for <clang-built-linux@googlegroups.com>; Fri, 21 Feb 2020 23:02:21 -0800 (PST)
X-Received: by 2002:a05:6808:3ae:: with SMTP id n14mr5256926oie.63.1582354940912;
        Fri, 21 Feb 2020 23:02:20 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j13sm1743835oij.56.2020.02.21.23.02.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 21 Feb 2020 23:02:20 -0800 (PST)
Date: Sat, 22 Feb 2020 00:02:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222065521.GA11284@zn.tnic>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cdNs98hU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Feb 22, 2020 at 07:55:21AM +0100, Borislav Petkov wrote:
> On Fri, Feb 21, 2020 at 10:08:45PM -0700, Nathan Chancellor wrote:
> > On Thu, Jan 09, 2020 at 10:02:18AM -0500, Arvind Sankar wrote:
> > > Discarding the sections that are unused in the compressed kernel saves
> > > about 10 KiB on 32-bit and 6 KiB on 64-bit, mostly from .eh_frame.
> > > 
> > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > ---
> > >  arch/x86/boot/compressed/vmlinux.lds.S | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > > 
> > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > > index 508cfa6828c5..12a20603d92e 100644
> > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > > @@ -73,4 +73,9 @@ SECTIONS
> > >  #endif
> > >  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
> > >  	_end = .;
> > > +
> > > +	/* Discard all remaining sections */
> > > +	/DISCARD/ : {
> > > +		*(*)
> > > +	}
> > >  }
> > > -- 
> > > 2.24.1
> > > 
> > 
> > This patch breaks linking with ld.lld:
> > 
> > $ make -j$(nproc) -s CC=clang LD=ld.lld O=out.x86_64 distclean defconfig bzImage
> > ld.lld: error: discarding .shstrtab section is not allowed
> 
> Well, why is it not allowed? And why isn't the GNU linker complaining?

No idea, unfortunately I am not a linker expert and the patch that
changes this in lld does not really explain why it adds this
restriction:

https://github.com/llvm/llvm-project/commit/1e799942b37d04f30b73f6a9e792d551dadafeea

CC'ing Fangrui as I don't know George's email and he is usually
responsive to ld.lld issues/questions.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222070218.GA27571%40ubuntu-m2-xlarge-x86.
