Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNVDQ2FAMGQEQGZBHFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id F05AF40BF9A
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Sep 2021 08:24:55 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id l22-20020a05622a175600b0029d63a970f6sf1453035qtk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 23:24:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631687095; cv=pass;
        d=google.com; s=arc-20160816;
        b=sANlTfjOs2r0WVkFnkKVT/GIsX2E0QanuoZpOlyBgiNz6AcoCTZA/1BPOKoYgvcY4e
         UcDiFuUX8oCFurf/Nytgg+XgiO3zZB4UGbZWpcikjLYrjOMNBtGU2/iV5zPTFHVnK/xi
         WmIgzgEct3owxKOQGO28Ynz6p0qEkfLWg1su4J/1Igjm4tnGaIaQhDXa0HlA5GfEHcoz
         iC1dnFBHFCjiae+8TViu4Ex6OBORJjHkqVPMntsjqEbeDX2Crb51EFNvTr6B/a8x+gDG
         6vs3f5HIi9yhGFY4buVEUr9CScz414I8vTM7x39OgqkgORNB6O6cLk7nsHZFArN7/WK8
         Z2/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0ZimC8kkIKuocJ1hJMSySo4la4D8Libgvj7ckDFw78g=;
        b=m6KjzR48QOxFnnlWsljmVUqscX6HuhLyJ6qvcsrhjzMYJNWdvTfKl2kLoA5TGL0gVA
         erhszu0yWo2auH3A3sqIU8b29P/us58pwn0acL50mI7I/VsjgXihKYObrY5ABg4OJa8F
         oRoeVJVQ77PwkWNOx3DfBpYALnij4vxDSemQbzWkgQIXKZgcLnq8uj8Ysd3eCNwevR2l
         KK9GbbT3HpWNchYV3EOoK8FvG9/Y7VLfTjOS1i+R1JB3jmmpGF51PEE/E+UlM8997yoe
         wf1Sw2mTGzKT5vm3q6mSQNmQ/lEfzh375O1EqndmUYaQYKIeYSCGWJc8BstDHqxpmYlx
         QpDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IpmZwGI6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0ZimC8kkIKuocJ1hJMSySo4la4D8Libgvj7ckDFw78g=;
        b=EHjBi7Za9ZA5neA5g2SMi7JCoqLSwo7Uf/PzJ/xsQT1r9D6snwMcLwJ3Ww6Zn3jEZj
         fGCkEicqPHRRY59PRRpS4mORfHzh/T9GfCZH25nt6D4b8t5EcIM5SPDF+qkQmQ/Y30bR
         Pl00A6V0JnCR/dsnJNVTKJsLqRJbF2bXPB1s6Uux6vCH5WiqOSth43NLVKNv3gU7HSr5
         f1ln2kb65SBBaOmBRMWEgUNA6kyIL4yVXWo2Vg6pqFP4huMRGNItV5UjkcGuSuQ9KeMH
         jccUkOIKhwkFU9nl823ByvYhP+YgvzLA/EyZxu5T7TreSEIpTZdxErhe8OW6gwpIH/T9
         7ICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0ZimC8kkIKuocJ1hJMSySo4la4D8Libgvj7ckDFw78g=;
        b=ZiLGo1oq81JM6ymQB/IPGZlzKF8voFeTDVYlUOVi6vkBwr5nRC+RG9yOviiBF3BlAT
         f2B1uIQxYCchjEEhVBfh4k810wqJnqk+qBo++3mbEMlTTKg6gTUQoftzsijBv+L5fQYJ
         OJS264sV/ywbYRsL+mTbN1PF6BMFYtFtVLlrHJDeHG6rmLyF7+hNa/6qP+x4s0iwA9Ho
         /DGecnPxm9Zmb8159sPeaA8jx9OiCnRP2jtGj4GlGe8LhUNkuByb74lu8+EUAsYrg4lB
         s1hLQrU9GiVUmXwxajyrmROZrLiKb8oNVk6pPrcuAFypHSOr+b+S7xiiNo8h87k8k+Di
         yKcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Vn2ZpPv4X++w7kvF4t4k9BY+uSsQrGDukv/CJ9Tf4mhMVoIBz
	wwlKiF7L31n/+VD9KE7BHTo=
X-Google-Smtp-Source: ABdhPJyNLIyWuslrYfloNavZ/b1hjmeW5Vc7a3tbattHCnLWWrLrGRCoA/y48hCuiy6CiG3Rur52aA==
X-Received: by 2002:a37:f705:: with SMTP id q5mr8661650qkj.523.1631687094824;
        Tue, 14 Sep 2021 23:24:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4006:: with SMTP id h6ls864543qko.11.gmail; Tue, 14
 Sep 2021 23:24:54 -0700 (PDT)
X-Received: by 2002:a37:9f15:: with SMTP id i21mr8702796qke.16.1631687094401;
        Tue, 14 Sep 2021 23:24:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631687094; cv=none;
        d=google.com; s=arc-20160816;
        b=fYdmcPIa6OgJByKSTkDBzFV7ULqSIv0Q/9SzI/j8YWRm1dj/kpIkkw6e9DwK9Ujzg8
         LfCUyrSXnuyrGSeDHEto0PTeiZwK4/Jb1iy1MGOO6NeihS/1ihMvwf1m2X2DkkdmU/QQ
         uOdlohso9tOpAAc/bPgMqOsO0fixZteF3lUi85+cXi+zMjyaCvL8LFiucgxy5RoU1ULN
         v7mvQ7ZUwz3MJEoQqJoPu5P79ww8Sqmiprtkl4+lAyAH13cNCekfDJr/FEapRuZP7u3F
         uIy4BUA/US6BkPhEDa3V4qGpGp/BCFY+Q7Vicdkezx0mn2BRNsTpkrktrrKQ7ldgQqvq
         JLAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vuCBzZ9zBNkDaxH2jJ5BbxSUdPvdCFa3DgGVw8Quh9c=;
        b=KZBlFMRl2eUyaxs29P8kR72oAwjeX2odbVXwJIUTj352QbnILJei8J7CIG8Tp3dbWF
         oGhWcPUQ8bn2KkOmUQb/k4Di+lSY1jgtLJk9R7v1P585Vi+gx5wrjZ9tOjr3dJM6VRt0
         EJSBM/k4Q1EVfm6zNby3AwbhUx6ZeZRWeAGDplD+Ze8gYHqYgay4b0m9bVdU58n1Z/qP
         5eum/XX7Ypz/HALLEjlFSbdo+DsI7A+ETZRjYODig6IYuR8GGVvhOKk2usGuAWSwkqW/
         YjkDO0PZY+fV2biskfD9vEx80l8BKOJsDRzVs3usO0T/qw5mOuK96nGbenjnD56OFGZv
         SNHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IpmZwGI6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id u18si957781qkp.6.2021.09.14.23.24.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 23:24:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id d18so964669pll.11
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 23:24:54 -0700 (PDT)
X-Received: by 2002:a17:90b:1e06:: with SMTP id pg6mr6657056pjb.238.1631687093555;
        Tue, 14 Sep 2021 23:24:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u21sm13559568pgk.57.2021.09.14.23.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 23:24:52 -0700 (PDT)
Date: Tue, 14 Sep 2021 23:24:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v3 11/16] x86/purgatory: Disable CFI
Message-ID: <202109142257.7BAE8074@keescook>
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-12-samitolvanen@google.com>
 <CAKwvOd=OvR8iZogXhMxkbt5qT7jbhaARgk5NsCzhpkjoZ7yy5Q@mail.gmail.com>
 <CABCJKudRDcwfkSK205Pb__hzLWQPUFhbjUtFPbctdPAycSOKQw@mail.gmail.com>
 <CAKwvOd=q1xhn9OEyowWyMeDW8CbWW4=nRmdE1tHggjCZKr7xrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=q1xhn9OEyowWyMeDW8CbWW4=nRmdE1tHggjCZKr7xrA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IpmZwGI6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

On Tue, Sep 14, 2021 at 03:31:14PM -0700, Nick Desaulniers wrote:
> On Tue, Sep 14, 2021 at 1:30 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Tue, Sep 14, 2021 at 1:02 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Sep 14, 2021 at 12:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > > >
> > > > Disable CONFIG_CFI_CLANG for the stand-alone purgatory.ro.
> > > >
> > > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > >
> > > I kind of prefer the existing convention that has explicit guards on
> > > specific configs (ie. CONFIG_FUNCTION_TRACER, CONFIG_STACKPROTECTOR,
> > > CONFIG_STACKPROTECTOR_STRONG, CONFIG_RETPOLINE); it's more obvious
> > > which configs may introduce which flags that are problematic. This
> > > patch is ok as is, but it kind of makes this Makefile more
> > > inconsistent.  I would prefer we had the explicit checks.

Can you explain your reasoning a bit more? It seems like redundant
open-coded logic to me, but I do see this idiom repeated in the kernel.
And/or maybe I've misunderstood you?

It seems like it's better to have a single variable (like in the proposed
patch: CC_FLAGS_CFI) that has all the details internal -- no tests needed.

i.e.: instead of this in many places:

ifdef CONFIG_FEATURE
PURGATORY_CFLAGS_REMOVE	+= -feature-flag
endif

do this once:

CC_FEATURE_CFLAGS	:= -feature-flag
...
KBUILD_CFLAGS		+= $(CC_FEATURE_CFLAGS)

and only repeat a single line in for targets:

CFLAGS_REMOVE_target.o	+= $(CC_FEATURE_CFLAGS)

> >
> > The Makefile does already use DISABLE_STACKLEAK_PLUGIN in a similar
> > way, but I don't have a strong preference here.
> 
> mmm...DISABLE_STACKLEAK_PLUGIN adds to PURGATORY_CFLAGS. This patch
> adds to PURGATORY_CFLAGS_REMOVE.

CFI is "simple" in that regard; its options can just be left off. This
isn't true for some weirder stuff. Stack protector is a good one, in
that just removing the options may not disable it depending on distro
patches (which may turn it on by default), so both target_CFLAGS and
target_REMOVE are needed there.

(In the case of the plugins, yes, I think they could be rearranged to
use the target_REMOVE method, but I have a memory of REMOVE not working
there for some weird thing? Hmm.)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109142257.7BAE8074%40keescook.
