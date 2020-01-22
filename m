Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBFGBUHYQKGQEEXYZK2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DB68C145824
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jan 2020 15:47:49 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id 62sf5380024ybt.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jan 2020 06:47:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579704469; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZryjTYDVjaSbzuaxnNQoGqnqxUBS0n1M26fKihV51t8hSPOF4C1jgKrhUQ8gFnjP10
         F/pOAGJYqBoeke82ONH2u75di8PuJF8oVMnH/NdK4jgVcVA3bQKI3ATgrqBw+bVJK85v
         4tB0ziC/DYhxL8r3qpYavklcG1TIrQRlMJSp7lAzVz9zRfOwdedaG2xTA+svTRIzty8q
         /1LoSGDqMwlaG2AbuurwGyutl+YCR+h1WZo5HltmmKWV6byGXuY6UE5iQTf+dVklTpJg
         CXeZZj+NTAAztvSXcWWs/R/QV2KS6ZW3SKIoJLAjYpD7Znz49xSkIIq5M1KFNfYqNebA
         w0og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GESTMa8OJ6GDJmjzvarFaLfUo9SiqEOFW6hT9tEn9Nw=;
        b=OVwOc5IYfdnmfxWT/HCyKpVz9KBi1hYRy+vQkBFaSHVdY4oU8GbNokh1t7AL+LCc8+
         Zl5wYtlytK+eqW5bz9psLYqNwqyuP+0queynQB89m71p+nd0VhNjeix10KktGTfW9ta+
         6KBW3e3bcBYWLUz6TyCo3Jf0yN+ojjoS899Pb31lM2y4vJJY2+6N4FacG3Rn67idQktO
         CdrSySZfCE3lEDnxmbMY5OUDC78zSlrp1njH7QsT6oBPfc42YheB5rA55zNz6HWvVNo7
         l+tX5Za23ty7bFBE/9hDw9NiJgysjczviEjd6/RMx9C76HiLCPTy7QseRpH/CXjc7ejT
         dJpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gQ0JHEXz;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GESTMa8OJ6GDJmjzvarFaLfUo9SiqEOFW6hT9tEn9Nw=;
        b=CJCVKsKKvXnEuDWjnczeTMxT4xDQb1+9O1MaLKMvloEWCcfQaUONmPBEANGMBoLVuI
         Wde5K7T5WOo9GDBA8hD35Dj6Bk3Jufz/keu8zOm3qdpid5iy7wYCZ7eGUAbVkZ1h5Pns
         6a25YolLio9Tii0BX+ipGnH2pbIgyGS3uaCBU1g1iNEQnJWmnTh6ZlJYNclXpgewZFdT
         q3i5hu9GoX1ho7IgC0pCmQE7jET4+wR+SaxhqjzLKdLco8J7bGfpv2vUE2uKi1PXPzqn
         MWTmAGvb5akpkYlfPtKhFytjjRsf1jmZjk1q/nCUJirXq4+sxmRSp84lk1F+s1fFvKyk
         Yimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GESTMa8OJ6GDJmjzvarFaLfUo9SiqEOFW6hT9tEn9Nw=;
        b=ONAb/D5SGGpEO+qnSN7xekiQh7xRSjDPcNw7ZM3Wi2PlTbTNaIK/6MIxVwdwS/ymRS
         wekpJM8nhUmtn/f4tZ/M+7+ZRah6I7Gn2ap4rFZjuuRfW+1UZkskrpwDMBNfgZNBMmyW
         ylz54X9SxUkX+mN54c6280wFlf0Mi83zd8kvqDO//XntQ0C45ypZzoiUTYwlRjvKnmCp
         LfXsWh9Iz52xgavFsQs6EJ7jSCTXvYrVVz6e2NAlW7+Jr0dwe3ln3qMcy2ui+vhhLtRC
         7q9Y0RmCs1mMRpUPmxBRxIwFmSJF018CcntP+KhOjuCtacY1DI7cE/sSb8K2JAe7YGkv
         cRWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhLnljsUoJsYRz4sr4NKtOc7HQUodZve2dXT/e2dsvJFpwKSQX
	QYI7wlWpIsZYoPQXuIZaIcg=
X-Google-Smtp-Source: APXvYqxOy9LcoNjF3K27mYvn7rIrahpZPuGLuvY6GjDSiNzwC98M4an33aqhrSZ6jedB+qYBgug4mA==
X-Received: by 2002:a81:2782:: with SMTP id n124mr7548393ywn.444.1579704468787;
        Wed, 22 Jan 2020 06:47:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:df8b:: with SMTP id i133ls6488369ywe.7.gmail; Wed, 22
 Jan 2020 06:47:48 -0800 (PST)
X-Received: by 2002:a81:4ec8:: with SMTP id c191mr8033157ywb.139.1579704468383;
        Wed, 22 Jan 2020 06:47:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579704468; cv=none;
        d=google.com; s=arc-20160816;
        b=DT/gbXI+96uUaWqYirKVrfUgHTfJCnT2Yndjxetm1FLrFMMdCAL8EqNvMDGZQUNACo
         eQmYtmsEPRQjvXIh4TcEwZsygu/GFz/mHHRkFQO252ALnC9NTkkeS5Zum2v9OYdQp691
         XI9TMUpOK71p4OuM4OM0q2i4UFbox38H+Lfmy30XjKXeoIvc/s6J2RaLcoMGz8h3IBG1
         Je/MWqxIUAkZv0RHpJlfpsTff3X/5vlzuEVZHhsYfkXPbSTXlpTzPHv83aikkRBl55hb
         v9+HmbqjXrsm9LcXOyY+ksu5kLX/NRYcE7nk6KiRjd8Hr4qwgJwlqayd0+jSgXdQVNNI
         /AmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZNNH4JfDvF28ZK9W6a0PZaLA4/MdLBOeLw5KlquD4Ng=;
        b=JlYucEBdQyd6PC/hNXl/g/c9nvlRu+yrrK5hkxSt3uBXhNlQmZmWP9IYKvJbnImGpj
         bGNjb9HARIGbyLh09J0MdJmHdKpH+Hlca1Mxi93NtWyTTGQPWZAjuQPTC0oE9EcoccNQ
         QFAunVqW3JMB47mmFzJhsltIUjaz49tuIUfOG1/rqKSrlQp+OSH45I3o/hldp4fBgwHH
         H2Z7e2yM3811EQNjchDszCVM+okldySIj7WPmhNzvkPMEjdqbO1UYrOjS2u7lwc1iUfx
         NfERmaBUlncN/ol6+LbHmPUDjvyoYhJcttmB8JmesT8oiBoDNgURVV5dHXstMVfy0s6S
         cLjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gQ0JHEXz;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si2230710ywa.4.2020.01.22.06.47.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jan 2020 06:47:48 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AB3D921835;
	Wed, 22 Jan 2020 14:47:45 +0000 (UTC)
Date: Wed, 22 Jan 2020 14:47:42 +0000
From: Will Deacon <will@kernel.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Julien Thierry <jthierry@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200122144741.GA16622@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
 <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
 <20200121103101.GE11154@willie-the-truck>
 <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
 <20200121180632.GA13592@willie-the-truck>
 <20200121183009.253yh6aehvnvxoew@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200121183009.253yh6aehvnvxoew@treble>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gQ0JHEXz;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jan 21, 2020 at 12:30:09PM -0600, Josh Poimboeuf wrote:
> On Tue, Jan 21, 2020 at 06:06:34PM +0000, Will Deacon wrote:
> > On Tue, Jan 21, 2020 at 09:08:29AM -0800, Nick Desaulniers wrote:
> > > On Tue, Jan 21, 2020 at 2:31 AM Will Deacon <will@kernel.org> wrote:
> > > >
> > > > On Mon, Jan 13, 2020 at 07:57:48AM +0000, Julien Thierry wrote:
> > > > > On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> > > > > > The 0day bot reported a couple of issues with clang with this series;
> > > > > > the full report is available here (clang reports are only sent to our
> > > > > > mailing lists for manual triage for the time being):
> > > > > >
> > > > > > https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> > > > > >
> > > > >
> > > > > Thanks, I'll have a look at those.
> > > > >
> > > > > > The first obvious issue is that this series appears to depend on a GCC
> > > > > > plugin? I'll be quite honest, objtool and everything it does is rather
> > > > > > over my head but I see this warning during configuration (allyesconfig):
> > > > > >
> > > > > > WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
> > > > > >    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
> > > > > >      Selected by [y]:
> > > > > >        - ARM64 [=y] && STACK_VALIDATION [=y]
> > > > > >
> > > > > > Followed by the actual error:
> > > > > >
> > > > > > error: unable to load plugin
> > > > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> > > > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> > > > > > open shared object file: No such file or directory'
> > > > > >
> > > > > > If this plugin is absolutely necessary and can't be implemented in
> > > > > > another way so that clang can be used, seems like STACK_VALIDATION
> > > > > > should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> > > > > >
> > > > >
> > > > > So currently the plugin is necessary for proper validation. One option can
> > > > > be to just let objtool output false positives on files containing jump
> > > > > tables when the plugin cannot be used. But overall I guess it makes more
> > > > > sense to disable stack validation for non-gcc builds, for now.
> > > >
> > > > Alternatively, could we add '-fno-jump-tables' to the KBUILD_CFLAGS if
> > > > STACK_VALIDATION is selected but we're not using GCC? Is that sufficient
> > > > to prevent generation of these things?
> > > 
> > > Surely we wouldn't want to replace jump tables with long chains of
> > > comparisons just because objtool couldn't validate jump tables without
> > > a GCC plugin for aarch64 for some reason, right?  objtool validation
> > > is valuable, but tying runtime performance to a GCC plugin used for
> > > validation seems bad.
> > 
> > I'm only suggesting it if STACK_VALIDATION is selected. It's off by default,
> > and lives in Kconfig.debug. I'd prefer that to "cross your fingers are do
> > nothing differently", which is what the other option seems to be.
> 
> I don't know what the right answer is here, but keep in mind that
> objtool is on by default for x86, so don't be surprised if that
> eventually happens to arch64 too.
> 
> Short term it might be ok to disable jump tables with objtool enabled,
> or to disable objtool when clang is in use, but long term we'll need to
> figure out a better solution.

Oh, absolutely. No objection from me fixing this properly in the long
term. I just don't want to be in a situation where STACK_VALIDATION is
silently ignored in the meantime.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200122144741.GA16622%40willie-the-truck.
