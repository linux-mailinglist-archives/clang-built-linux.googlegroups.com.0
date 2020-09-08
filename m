Return-Path: <clang-built-linux+bncBC2ORX645YPRBP7J375AKGQEW5M3B2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD472621C5
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 23:16:48 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id q16sf378123pfj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 14:16:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599599807; cv=pass;
        d=google.com; s=arc-20160816;
        b=EV7rgpXcnCC4y3XQBc8QW+JB2ezS6gMeFiIToT18+C/HkyzIGLi34A80bHrQ2OOzMK
         WjtFJIkocU1CB2GXj4u+3F8d7ZVI7PAtlKJ4NgWW1PFWTqGvJJftyRDarJG13AyxAFbA
         7AHbKxfTYWXGNEQp1HOifV1+hwn/07eSpgl4loX6SfWCAWTXjU5wssLHYF6PfzskBJkL
         T8SOWCEwG++Zl0hQE0LO2py6L0iSSRdRq+i32VUQ+1RifJ1+xdBGwh/jGPpie/zW398Q
         AgFvyBK66ab7SYXJVdH+EdpMWAOD1scKxTSd9AXrVdCDeczYqXl4VaO7L2QX2TO5CidV
         ahkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FWTyOpxuQWLF6pOxtWgHu5Gv2kl9mnCYw8C38QFpefI=;
        b=jGcJ1ORLgDfEWwGH02UAuJPJC+oZmMOkRtVwgpekCm5yxBJgHS+CXOuAeteNTYi+8b
         LBQN3iWxg+jRs+YEvkGHqI/Z2c/AN7Ct0xT5sC49k/ZSYQUrFrXYl1ynlfoNyqRbdWbi
         YIGTaDXJudtsBawYHeiUc7EXptto7LrpGikkIS2cDqvy8wkjbEYfHCiDQ7TQHK+vtSNR
         qV730KQ628SrjsAnAn/XtfawMAmdljifNXd6pfWJ6DblANpKzOKXFxd2+Ck2QwOII08D
         qvxz9OpkUCMHKDWk3tatt/cZTs+hzPU+oq77LofQrlzVFkUP5HtiW5KYOr1E25Q9LvC5
         SxMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sITCjv2G;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FWTyOpxuQWLF6pOxtWgHu5Gv2kl9mnCYw8C38QFpefI=;
        b=Bcad6pfCSiV53g+AnphDKf1MWytZuBoAHm5OOQKGpnNsqBlZdiW8eiqhKgSvsKH1Xz
         7upVrxFYtSmwo4FpfvWhJ+GQMDhG3SXebWxK6EaEGLFsVQiuLF4yeyS+Ku41PCM1ufjv
         3MPmx2+fn/k14B4/u1u/MDd4wGVyWf72NHhNXhvvojJw/3UsfN5PcdfdB/9gR5eiQNUT
         ZsMcKIRpeGEEFFJg/8a17NklDn0Ki4xAlFdbiPxaF4qABbJdfubpDexWcbwiripnnxXc
         XbrsNu4h8oe81f/HKZNNpt5jBumh3rAKENNMDl+9ZHdFcSP3+se6EnS2o97jdbHswBsp
         6H2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FWTyOpxuQWLF6pOxtWgHu5Gv2kl9mnCYw8C38QFpefI=;
        b=RxqFiK0cnaTulzqCOjaWucKEhJViuD8ld4vbipXFdTvi4Se2eho3eDJyU6061B9+Zj
         6NQSJSi5YlxtW14WCWt0VLtXsXquFD81f7hPg77cfyw49d1Igm4mYbIyA0tP+yW4XoUE
         //8pDICvEyDLK+a1++McC6uXpcBK0J1XhfaNbQ4NT4Vlrsu87LDMfu/hTil2jwyeKNqy
         TPzeMtYoX+IJ3o4ej8PxPl+rDDvtHVEGAW4jkWN+P+uAevn1xrUw95z1caDKsf6bhUAA
         G+Z3bYKSBw0t7zPQ1LDe2OatbVo9V2Z4+Qm6wjsrV9wpuGyAuMi6sdl+zEcf+tOlxMOt
         3gzA==
X-Gm-Message-State: AOAM533c0xJQSaGWtPknKs5CDScTkcY8q8nEc2vxo2VG5wnIG2joho4w
	Tp9pTp4cVn2x7ZGwVgz/5EM=
X-Google-Smtp-Source: ABdhPJx3zV0Rdy7CYeO42h8jmzpq82LPwfLflmmg3dCNtyyOf3/gGX6hKxXib8m4yD5Ofasuuft+4g==
X-Received: by 2002:a17:902:bf0c:: with SMTP id bi12mr568458plb.58.1599599807337;
        Tue, 08 Sep 2020 14:16:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls238134pjs.2.canary-gmail;
 Tue, 08 Sep 2020 14:16:46 -0700 (PDT)
X-Received: by 2002:a17:902:9881:: with SMTP id s1mr416475plp.13.1599599806635;
        Tue, 08 Sep 2020 14:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599599806; cv=none;
        d=google.com; s=arc-20160816;
        b=OJsDWABIJX/XOduTbLi31IEuQ01FobXxFlpYvIxYBYWnV38JDIK6ghKxDtuh981ez8
         lQC0flCfU7q4WkKHuKEmBKNc9R7p+vqnvg0lm2cPyKiW4rE2t9iZDw0hO+UVUzGTBJVE
         EkppNddhlbKdFSJGctzYzODkfeEmK5VABmCFOtVgOIX9plM4X8hQuub0p4/tOlpQ/1Mo
         6odZjgqHwsBPU6JvC0SOSNpDCwqmYIJdH+N6zsaFWtb7dddkBQgsEiBpQLE3xq04rYz1
         2BcZ82i6wL50nmQoT9qZNTPTEpQWagCbIYXPyZQUUCtuG6RLdRWRvod4hCt5lQjGgmwU
         Nb7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2efFs7I/aVceVr/UA1FiVN+0BylwZxjeaszZFFD+TI8=;
        b=lWCao8G19B6us/iZjAGmh/BWsR3TWAtMtuN9cbkKByOJbzvQvVfduEjb8AXxYHfKHp
         EjxxDybx9s2tKafZDx+hCxyU42k5L3koJSzUx/1HmAPEtK3qP1J/nLe39EQP7yDHmGyb
         XVWJ/pyi6WwWPT0p3C6QdWTiybGDVoh/AC81sZRpYK9Gb/akMRMVidePHKNxp9ydXJdP
         RX36ZGgl0WVOIje6j/m9vhBEOd/EnlXwWvkAnVy9PggPD1ar5Z/KX6DxLBDIXKM9O4Q+
         NEP3kQzzuF5O7hs6tGUJ4mZIPVJlwoqKwORw30dudRKI+D2ADQr30LhGtGc9jagQ/6Rn
         UfEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sITCjv2G;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id lj12si47379pjb.0.2020.09.08.14.16.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 14:16:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t7so239508pjd.3
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 14:16:46 -0700 (PDT)
X-Received: by 2002:a17:90a:f486:: with SMTP id bx6mr641742pjb.130.1599599806032;
        Tue, 08 Sep 2020 14:16:46 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id 137sm315259pfu.149.2020.09.08.14.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 14:16:45 -0700 (PDT)
Date: Tue, 8 Sep 2020 14:16:38 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 15/28] init: lto: ensure initcall ordering
Message-ID: <20200908211638.GC1060586@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-16-samitolvanen@google.com>
 <202009031532.CD2A5F372D@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009031532.CD2A5F372D@keescook>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sITCjv2G;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Sep 03, 2020 at 03:40:31PM -0700, Kees Cook wrote:
> On Thu, Sep 03, 2020 at 01:30:40PM -0700, Sami Tolvanen wrote:
> > With LTO, the compiler doesn't necessarily obey the link order for
> > initcalls, and initcall variables need globally unique names to avoid
> > collisions at link time.
> > 
> > This change exports __KBUILD_MODNAME and adds the initcall_id() macro,
> > which uses it together with __COUNTER__ and __LINE__ to help ensure
> > these variables have unique names, and moves each variable to its own
> > section when LTO is enabled, so the correct order can be specified using
> > a linker script.
> > 
> > The generate_initcall_ordering.pl script uses nm to find initcalls from
> > the object files passed to the linker, and generates a linker script
> > that specifies the intended order. With LTO, the script is called in
> > link-vmlinux.sh.
> 
> I think I asked before about this being made unconditional, but the hit
> on final link time was noticeable. Am I remembering that right? If so,
> sure, let's keep it separate.

Yes, it was noticeable when compiling on systems with fewer CPU cores,
so I would prefer to keep it separate.

> > +## forks a child to process each file passed in the command line and collects
> > +## the results
> > +sub process_files {
> > +	my $index = 0;
> > +	my $njobs = get_online_processors();
> > +	my $select = IO::Select->new();
> > +
> > +	while (my $file = shift(@ARGV)) {
> > +		# fork a child process and read it's stdout
> > +		my $pid = open(my $fh, '-|');
> 
> /me makes noises about make -jN and the jobserver and not using all
> processors on a machine if we were asked nicely not to.
> 
> I wrote a jobserver aware tool for the documentation builds, but it's in
> python (scripts/jobserver-exec). Instead of reinventing that wheel (and
> in Perl), we could:
> 
> 1) ignore this problem and assume anyone using LTO is fine with using all CPUs
> 
> 2) implement a jobserver-aware Perl script to do this
> 
> 3) make Python a build dependency of CONFIG_LTO and re-use scripts/jobserver-exec

I'm fine with any of these options, although I'm not sure why anyone
would want to compile an LTO kernel without using all the available
cores... :)

Using jobserver-exec seems like the easiest option if we want to limit
the number of cores used here. Any preferences?

> >  # If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
> >  # .tmp_symversions.lds
> >  gen_symversions()
> > @@ -74,6 +84,9 @@ modpost_link()
> >  		--end-group"
> >  
> >  	if [ -n "${CONFIG_LTO_CLANG}" ]; then
> > +		gen_initcalls
> > +		lds="-T .tmp_initcalls.lds"
> 
> Oh, I think lds should be explicitly a "local" at the start of this
> function, perhaps back in the symversions patch that touches this?

It's already local, that part is just not visible in this patch.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908211638.GC1060586%40google.com.
