Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB77PYT3QKGQEZGJE3AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9714B204426
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 01:00:16 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id j75sf3349437vkc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 16:00:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592866815; cv=pass;
        d=google.com; s=arc-20160816;
        b=IwRYrsHvHfGFUBMS+NDqxRtz9JWCUhM1iTKsgMiCWzvfDXGzaOsVPAc2KxhiKsKq5i
         S9O/nwV2VIMIUvZDthHByXyyMNC9npzZbVNK+mJoHQ+3LvvhnrigkVKabq8WqLJCNJxx
         iG3uVyErtA2+0s48Hb1XVBoERvnOZJ/NqglM1B3rNdJs0VwjpGOEJds+RapdsVK/+0Wr
         g8dMqYCN12dJUPJguLSdBxTPLwdJ6lBPviTKAsBmh3sj8p1iQa73WRJlS8+Bpy/KfYxq
         k0vOgcoHP6+BW4S7uCvxiSMe0aaT2gGSg4z2JPGpTcDBFviFtruVsjk63nV1jH0kLau0
         qm4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y9BEwYiBvNUzD7FyWpZNYA9KCr2PjZGBG6wfSAa4YZg=;
        b=HdKz3plQf4LGPf3/DooelL7XkcyVcQYqALfsV7qs8Ndn9zW77pPIb61Dv58FhBw+qk
         iIBzuUZJSn87C5YLvrXWdF+eslHfS6p0lplSDYrof6Jv5JZs8AI/QnLfPPdEVYACO3NI
         qCUwrDkj1kVqeL0RSaUw9Jx3T9f8BS7+jYMTAUNr186ys22pSo0RWKeniUcd1sFOKz5K
         5F5JTNpXWceMxJ7cK7s/rkabP3dduUpqgSfzDV0AlqsPGLbmvAsWQLPAurrU+cvw3tRS
         xuEh6ZieLJe+2pZ8smNsEA8i0Kyz+HKCI3TPLWJ/gB5kkt2vG9odcTHKl1TscEUBDcia
         Fn5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DEgcNUgm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y9BEwYiBvNUzD7FyWpZNYA9KCr2PjZGBG6wfSAa4YZg=;
        b=K8UZemI58oyBgXhDuNTtrm0AyvzCYG0uEYL8to0z6i6hDclbHo6wylgvJqSTWuFteJ
         Obz3P1IVgcI5gB6gjL6n+ZwjEFRGDYUaZyQz3CqxeK+ZCHx33PFtGv6sE7Wipl5gUfdY
         IA2dhelZpsxeJyJ3EYVWiB+ScUbwsTXjB9yGAPyZS7SWHbQZztbx+b3oHDb4hJ89wJ5j
         bRwCld1/vK9fV1HLMVFDdJZzYVr4U9apgcZonPaGSaGiqZ0uFsYmMfSOqVh5WO2NNTu4
         YQPM8RJ9Z5DB597LZkVO6n+BwBdCvGDRpYsnWvhdnk2z4oHWYC2nlRwTdKj6GnADNAlo
         ll8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y9BEwYiBvNUzD7FyWpZNYA9KCr2PjZGBG6wfSAa4YZg=;
        b=OxJpOkgyzG1wBNTQFxDSosQTMsKQzbS97iwDOUIuBALxk5hOKJ6KsoUiwSu8CYliHl
         bwJIVh1Va8XKXIk7L5vtjBbvzG2kZ7i99C0nZpfU7ur1frvkCzP41YPvekuKx4QukWTX
         TUKn+HW40Pg/QIJtvwApLZnEik4Op9bdIG77MEbSwksEQ5GSOcDNuYh27CcDbT7ZqPwP
         ku3CfIyR2bA99SZRt+kUC3LRfod8bSsGtHeJvV0P5menySP3/BO+jMG+n+SvHslJ9nVP
         k9E5Nvb9+sn6j0VVFNdNcwuYaKKw1Dberi4pXDgwfWBXfi85Mignai9AWikR7HTRBbSa
         j2oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hrsEPD+p3aTpAlAMW58317c8idq26Br8rPqoA+m5FXee7e5+p
	AlDv1t8jwxC9uk13T9TbRUY=
X-Google-Smtp-Source: ABdhPJwreAg9K+kvzVOEVyU9wbxBWvH8qrG2f+21F6h5jo7vXktbYyUCsaMhIzk4IjvRZxd2rjRvFQ==
X-Received: by 2002:a67:f615:: with SMTP id k21mr17467558vso.0.1592866815695;
        Mon, 22 Jun 2020 16:00:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:15eb:: with SMTP id j40ls142691uae.9.gmail; Mon, 22 Jun
 2020 16:00:15 -0700 (PDT)
X-Received: by 2002:ab0:1057:: with SMTP id g23mr12856077uab.117.1592866815435;
        Mon, 22 Jun 2020 16:00:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592866815; cv=none;
        d=google.com; s=arc-20160816;
        b=KzlmEbuIWCQ9MyKdj8dcKlmOR0W7DdSaU+4LzhktYNMN7INwlfrBKD7p5tL8aR6yc/
         F3lK8Xyfnr733mtf2Wv1bKERQYTKgwNtgxZW8eYomFG44ppJGpYMO7rPynkyakpB1UQ9
         hQKSJbQiyqac9rx7AsIhFxnckXUnOx0wstdx0E+Y7BSSuByJMOdK2vbbMKRmMcb4/Vxa
         ndha+s676YkJB0BYIahNg3miEb4VFcWljttNZTFJzuKBRfbAALHCgiP8oZGt6FyQgJIT
         5fqLWkWX+8P2IK6wCVEZ76WEGgDDyOIh77NumGI3UhY3PbIGFpGFD/lcIfLSUvLklW4u
         T/OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=83TCNCBjNohNVrqhGduE8K74z3IQ6/Lu6H9fSwHcKBI=;
        b=zejQnoDOD9O/vrf3H220hYzDO4GLWzD0MM+TkaSD7qSIziHLglEtTll2VqK24vghT2
         CSIA281sOS6Mq4Bs02TZlwUUY1vpwd4cxCR6Pmbg/dFdHaNhnbjImTsDbdtXH7XbeuPv
         QYKtS5Ws6mxM8EllXmmSl0UOqHvxcrK8ra2C5+Qy2EdgE+Ee0+IRuvhKk1GOyaQ8f1k2
         jCm8O6oDKApncpszFXpy1mfj181fkNf/Ot4yh4RoIerjIhOUeIIi7ORxfNWpS2eRYLRZ
         iB4nc68O3UD7zWUyJmYEkOeEKqrBB/wBOz/q5b2HeldDeQ7xOKhXKiWugzqd2LbztdCC
         smRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DEgcNUgm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q20si1659373uas.1.2020.06.22.16.00.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 16:00:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id l63so8920345pge.12
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 16:00:15 -0700 (PDT)
X-Received: by 2002:a63:df56:: with SMTP id h22mr14511327pgj.140.1592866814612;
        Mon, 22 Jun 2020 16:00:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v7sm14485890pfn.147.2020.06.22.16.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 16:00:13 -0700 (PDT)
Date: Mon, 22 Jun 2020 16:00:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] x86/boot: Warn on orphan section placement
Message-ID: <202006221600.81F5586@keescook>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-4-keescook@chromium.org>
 <20200622220628.t5fklwmbtqoird5f@google.com>
 <202006221543.EA2FCFA2FF@keescook>
 <20200622224928.o2a7jkq33guxfci4@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622224928.o2a7jkq33guxfci4@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DEgcNUgm;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 22, 2020 at 03:49:28PM -0700, Fangrui Song wrote:
> On 2020-06-22, Kees Cook wrote:
> > On Mon, Jun 22, 2020 at 03:06:28PM -0700, Fangrui Song wrote:
> > > LLD may report warnings for 3 synthetic sections if they are orphans:
> > > 
> > > ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> > > ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> > > ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> > > 
> > > Are they described?
> > 
> > Perhaps:
> > 
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index db600ef218d7..57e9c142e401 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -792,6 +792,9 @@
> > 		.stab.exclstr 0 : { *(.stab.exclstr) }			\
> > 		.stab.index 0 : { *(.stab.index) }			\
> > 		.stab.indexstr 0 : { *(.stab.indexstr) }		\
> > +		.symtab 0 : { *(.symtab) }				\
> > +		.strtab 0 : { *(.strtab) }				\
> > +		.shstrtab 0 : { *(.shstrtab) }				\
> > 		.comment 0 : { *(.comment) }
> > 
> > #ifdef CONFIG_GENERIC_BUG
> 
> This LGTM. Nit: .comment before .symtab is a more common order.

Adjusted.

> Reviewed-by: Fangrui Song <maskray@google.com>

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006221600.81F5586%40keescook.
