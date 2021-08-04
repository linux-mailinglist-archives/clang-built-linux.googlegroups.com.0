Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBBP4XVOEAMGQEUHVNS7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7913E069E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 19:17:52 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id q13-20020a05600000cdb02901545f1bdac1sf1055879wrx.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 10:17:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628097472; cv=pass;
        d=google.com; s=arc-20160816;
        b=lhZ+n71iDDDDoaB/Cq0nFqNWks3gogUF+bFnzkHwTNEmYemQTaZuYvjRpJd3KujRKv
         tFUNmc1qYo/js0kRvRXEkVVEgEQca8VrwOHm3CVyATKmqotwHNzLxIhhmMkPGDojh4lr
         2V2KS0qxxyfIwG5QzqE7DerR3lnonrleLFlHKqyayUbla/aWANtMQx9PZyBz9RqeMPY2
         NNlX9ZdSL2akzVlHDruWQ0Vh6LAjlimh0NsikGQcz2uylQgksAMsuLNI+fD7PFsWjKQc
         1BPRH2bF99dsSiQvSOmi4OV/AueW42++eDBB1CZnd+zFwKvM/+kmSuxoW26JnaGvxRx1
         UT/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=P1d9BJRkGNDp1zWaHctgnihPWw9Rh9TX7Ze10yIkTi8=;
        b=wGpwGcK6zXfscMEpO0wfVy23WLRJi5mqE5G6P/qtsaJ7btB56bAwZemy029wi8xZWe
         LTZJ76xi/l5lebAD5zYVCdZ4H3zsiFFhUQzMs5jVAbHumRDa6mmFrEyS9kwgwvmnDebN
         d5KHsL3vkDJluCOSuWqgHMUL7thyXfO/iuTZgBVxeXa/dXykY+co4SXD8PSwhtdRVjMI
         MSg/ZnEvxeyXw45tuwiop4gl9SxLk6lgHvfSdt4Vod9sNsYwYRvM7AWoZVAmaGflAImI
         9B+Z0FJNCyy5vIy98FnkUKGGlupuL4+K3s1I36UAFpGEf4yHFC2JxgE7+OeBqEZF0OWO
         CKAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zi+J54b6;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P1d9BJRkGNDp1zWaHctgnihPWw9Rh9TX7Ze10yIkTi8=;
        b=IOmSWgOApHMUZRcRaj2F4b0bHYcqurKdj1Z/DLG9QU+k19E9ooARXXYHgp0c1mu93t
         7dC9kAMy8dbkW6Yls3OGr1ik7dKbOUZ2fAHxJOsfgyX04I/iohKVK3eDqsvm+tr+dWqg
         TOVOCqdeU0Ow3Oo+qq5PsbYOtNwQez/M62IL34Az/Abak/2jPKyhk6fGs/10amnCSIlB
         7chJQNnB7tRr7RYitCOOcj926wUnXuGsQzTnwzSwN4l7XB4vypa6tHkFvR1yQDBjzGzE
         XqV4+aC0l7m3xKiuO5I0bs1KijHz6Z71p/RvKvEdTc+9TYOJj3lEjcayGa8SWEOrdtPz
         y37Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P1d9BJRkGNDp1zWaHctgnihPWw9Rh9TX7Ze10yIkTi8=;
        b=cnuFF10Vnep/8nfKr3APLKai/16fgig0orslECS4jfVoT0gKnKHvKNEGo70Ag+HStc
         9RG4zlwkLuLnRr3yyjlIqqUgZB/J875hELRGZJsxAdBjYgCCR4tqEmlQALoit5f8wOOp
         MFFQ33gcmhwFcrJvvdCPAgkQ1sm1B+r9PWs1fhfnzgJLcUpxZYE4JbP0Y9J3eX4iAigb
         mZ0K7YybiPSlNlxl9u89NWoSA/1J5XPnQyq2WRpQB5haaHiKHacLSONBpnFg7PHW05a3
         UcRpGE4D5L6XtPVFoONum5MuRXjkSQoL2bVyXhdwC0ewtx9Gx8PeKS8wnqQ+Fi3VGSzD
         B4zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P1d9BJRkGNDp1zWaHctgnihPWw9Rh9TX7Ze10yIkTi8=;
        b=SYN49AalW6yLMOF34FEwld3SpWmIHyE7ljAm38FStIzkCLtB6/9JGfr1RWvMJsgZMA
         bu5v3+W3gwCdAJrhATKW9kEgs1DRAbA6yVejPgy0oQ9OlCeaSEq8Xv9kmeirkaw6V1hX
         fD3zj/svk/AJVmJI9oCAByklIx0VZ1u/ezhFbp7uOmR8ag3icKZ7NuyH7xsyn0Al02mP
         JY2syC7IGLeJn5alMg8SfuTCTKxMOw6PJbG+HrLgADJnqUgWgq27zDqufE7EB5GGg5T+
         sq8RU4PD3ucyQxCCnJ77Dc2/fnJPu/tWLsrO3+tUJ7GCIEpWkSG/KwO2FvqKS/QJyPIu
         g3MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kbNRm/29rVDpCug+buGGpx7aeIHuhFiVAZKuZwYIQC47+51Kv
	SdA/g4JpzWgxd4SEQGa7078=
X-Google-Smtp-Source: ABdhPJyrONrm9GyJTNTcnCnrteq5SQpYozOs52uZSbmVrDl/Xwz8DI6Pj7vCyjY3F1fOiOzQcrX5gQ==
X-Received: by 2002:a5d:5750:: with SMTP id q16mr436243wrw.9.1628097472067;
        Wed, 04 Aug 2021 10:17:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:510a:: with SMTP id s10ls1324249wrt.3.gmail; Wed, 04 Aug
 2021 10:17:51 -0700 (PDT)
X-Received: by 2002:adf:ed51:: with SMTP id u17mr425188wro.416.1628097471204;
        Wed, 04 Aug 2021 10:17:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628097471; cv=none;
        d=google.com; s=arc-20160816;
        b=0jj5gJbsqnpThuKQa+mlfPQvp2WopZoXgVyjbg11TnwGeUkEGFd6yjvnIRExAAIcyg
         A7atDOrN1vt+3YIXhfrMA0LrFsIXGqaELvF52C8hQZLRKgq0MoSBm7DisjjH57hxhjM8
         9RqpnXfL0fTuZKqLER6+qBx40QL1yYdWr8lbXdVdvHW+Y512kx/j913zpgqmEBNV/MD4
         Ki2YiZf5yvsYEy9I0mNDWXtBvOYSguyR6L9I2OJZAYszLyNnFK/dbAX0jJZLWV+tRCFe
         O6rt8EcWuu3HrJ0rCAV5NepF0W3U9eoRMTAm87DTNWIHrSSwzT9OyTaRcyouMcrqjbNY
         Jy1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5Qo9QHnK3biCSTh8bimTB9CTycQIbbuDw05aJ2yEchU=;
        b=rC43T2IHBzJ+2bMI9nFRoyvi1oHaBeH4eyzmz3GhQZjK+PA1sSXnqZjxRb6oybSz/x
         UHmF7to0fx+Y3Or6dqq2gf7QfPb1wb7BhWcMEN+o/xHDfCmxXGDN/XauUP3UKUFRAYtB
         OGh1GEVLUbJwYMf+uk6+H+TpKhhGEW9IEAPs0Ga/IG42BZYbBlzXFlL+ne96DKI3FpXY
         LucA9lVGXRUerGXZVj+iJSjphb4ggioZ1Nsn4HNceDFiTSyVdKpIcFFmyLUQr+355Vmm
         W9fZzYH4M/EvxsymJyIK19G+Eiad4T7FwLY8M+hvNvPBF60ywPMppc/IARMFZeB1qKGY
         hWYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zi+J54b6;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com. [2a00:1450:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id u2si213870wro.0.2021.08.04.10.17.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 10:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) client-ip=2a00:1450:4864:20::62f;
Received: by mail-ej1-x62f.google.com with SMTP id yk17so4762378ejb.11
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 10:17:51 -0700 (PDT)
X-Received: by 2002:a17:906:d153:: with SMTP id br19mr302615ejb.166.1628097470629;
        Wed, 04 Aug 2021 10:17:50 -0700 (PDT)
Received: from pswork ([62.96.250.75])
        by smtp.gmail.com with ESMTPSA id u4sm835516eje.81.2021.08.04.10.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 10:17:50 -0700 (PDT)
Date: Wed, 4 Aug 2021 19:17:49 +0200
From: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Jessica Yu <jeyu@kernel.org>, Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miroslav Benes <mbenes@suse.cz>, Stephen Boyd <swboyd@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Joe Perches <joe@perches.com>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v3] kallsyms: strip CLANG CFI postfix ".cfi_jt"
Message-ID: <20210804171749.GA5563@pswork>
References: <CABCJKudYRiK0KcMHGHeBFcr+Smwa9EM+NFeBpMo_ePqK+zHz0w@mail.gmail.com>
 <20210729205317.25685-1-treasure4paddy@gmail.com>
 <CABCJKuei==gaaKw0qH1WkshcRyUbqdS_WGRWr6anYAew1HHT2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKuei==gaaKw0qH1WkshcRyUbqdS_WGRWr6anYAew1HHT2w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Zi+J54b6;       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
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

On Tue, Aug 03, 2021 at 09:28:23AM -0700, Sami Tolvanen wrote:
> Hi,
> 
> On Thu, Jul 29, 2021 at 1:54 PM Padmanabha Srinivasaiah
> <treasure4paddy@gmail.com> wrote:
> >
> > Clang CFI adds a postfix ".cfi_jt" to a symbols of extern functions.
> > For example this breaks syscall tracer that doesn't expect such postfix,
> > so strip out the postfix from the expanded symbol.
> >
> > Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
> > ---
> >
> > Change in v3:
> >   - Modified commit message to indicate fix is for Clang CFI postfix
> >   - Rebased on recent patch from ndesaulniers@google.com.
> >   - Fix is enabled even for CONFIG_LTO_CLANG
> >
> > Change in v2:
> >   - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
> >     extern function name.
> >   - Modified the commit message accordingly
> >
> >  kernel/kallsyms.c | 21 +++++++++++++++------
> >  1 file changed, 15 insertions(+), 6 deletions(-)
> >
> > diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> > index 5cabe4dd3ff4..67d015854cbd 100644
> > --- a/kernel/kallsyms.c
> > +++ b/kernel/kallsyms.c
> > @@ -174,7 +174,8 @@ static bool cleanup_symbol_name(char *s)
> >          * foo.llvm.974640843467629774. This can break hooking of static
> >          * functions with kprobes.
> >          */
> > -       if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> > +       if (!(IS_ENABLED(CONFIG_LTO_CLANG) ||
> > +             IS_ENABLED(CONFIG_LTO_CLANG_THIN)))
> 
> This is redundant. LTO_CLANG is selected for both LTO modes, so
> there's no need to also check for LTO_CLANG_THIN here.
>

As my setup is little endian, couldn't verify for below condition and 
was the reason to add such check. Sure will remove it.

       " select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
	 select ARCH_SUPPORTS_LTO_CLANG_THIN"

> >                 return false;
> >
> >         res = strstr(s, ".llvm.");
> 
> However, we should probably check for ".llvm." only with LTO_CLANG_THIN.
>

Thank you for the input, will regenrate the patch with suggested check

> > @@ -184,16 +185,24 @@ static bool cleanup_symbol_name(char *s)
> >         }
> >
> >         /*
> > -        * LLVM appends a hash to static function names when ThinLTO and CFI
> > -        * are both enabled, i.e. foo() becomes
> > -        * foo$707af9a22804d33c81801f27dcfe489b. This causes confusion and
> > -        * potentially breaks user space tools, so we strip the suffix from
> > -        * expanded symbol names.
> > +        * LLVM appends a hash to static function names when both
> > +        * (Thin/FULL) LTO and CFI are enabled, i.e. foo() becomes
> > +        * foo$707af9a22804d33c81801f27dcfe489b.
> 
> That's not quite right, the hash is only appended with ThinLTO. I
> would leave this comment untouched.
>

sure, will revert it.

> > +        *
> > +        * In case of non static function symbol <funcsym>,
> > +        * the local jump table will have entry as <funcsym>.cfi_jt.
> > +        *
> > +        * This causes confusion and potentially breaks
> > +        * user space tools and some built-in components.
> > +        * So we strip the suffix from expanded symbol names.
> >          */
> >         if (!IS_ENABLED(CONFIG_CFI_CLANG))
> >                 return false;
> >
> >         res = strrchr(s, '$');
> > +       if (!res)
> > +               res = strstr(s, ".cfi_jt");
> 
> And add a comment about stripping .cfi_jt from jump table symbols
> before this part.
>

sure, will add it

> > +
> >         if (res) {
> >                 *res = '\0';
> >                 return true;
> > --
> > 2.17.1
> >
> 
> Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210804171749.GA5563%40pswork.
