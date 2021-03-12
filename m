Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3NIV6BAMGQEWNBVF4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8F43398AC
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 21:51:58 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id p1sf13952446pgi.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 12:51:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615582317; cv=pass;
        d=google.com; s=arc-20160816;
        b=grQT1U2cr/xLQItEt/oB7F0sVANZwzc5cNDM/lki1RpJm4NyiW2gUkjadZ8QDQmSd/
         5JPdjfzpmtVCQ0PrKPqH1iQWYR4RjZ0k9qlKFJKwkaAA9ATjN/PKDj+V8pRLob+nSf8e
         fnewRuELzvtqGt8U6NUoUs5WOSKNnEjQDbLHaoypNAZCV3VyXTcbgeYi1xNEGu3ZiVLo
         wrsH/iK9Xv6BFid2Ex03b5p4l1OF/V+oRRCg9zpflBx48f2tLfPZWucXhbvdohn1qKls
         PO0YH3lM1/6nrCbcQAE9KmoOc3GEYM+zK9bMSNUKOv2ns7MZ7PiZfeiB3K/UBaQZ8ovs
         PfTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z6/QJ0MI/lbDXMIzS2wVrHOAHkrNKDk4t63+s/4xstk=;
        b=uWNd7tg41F5npx42HZuTnIRq4djks/88MTNPDe557Iq2H/2+BeJDYK9gsvFn2X+xui
         6S6PZDCkvKEsI79th/Nk8PcnErh7RnLNXR1wlrBglpcsPMOt3UNN7g/YLGNlEeMiYQb6
         MBOjaQOEir221N5BQC4Tc3rQjJkDNzuUItQQRYJrjQCmuwzAkj3BsvvdsNn9m1iOPFbm
         8LiQlVX2RCXsDvhzc1+e9sPPyawmY96i7vtNmxmeJl0BIrrb7D8XvUriAqy71Ls8uS6W
         cjnL9luuaqqPclnXwk8eJpwHilGq7aeLVJKwXbOULm8ZsUcgABocCMdakf4vJbNPzBz/
         wN8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fJxryTk9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z6/QJ0MI/lbDXMIzS2wVrHOAHkrNKDk4t63+s/4xstk=;
        b=hOYmpewwy1JkcAVZHh8Zy+Pu1zHL5iVTCeVczhI7NUlCD9orE6v3QQ/XmBFJOWA5hy
         csPzwh2Gwn6dROQdk5+rcRaPY+1bvHXcrgGFuqSN99v+u/5xWVPAiHe0ZkiHfY1as/QM
         5rPd/JgcfTjuT7D0zVrc9CsoB9Ea5wAe6iZegskBzT4Ss4uANBX/x+bghjdtPhVmrgZH
         e+5yEyzXFqyV8mLkOovwRDl+HqVwnhOpppJw10kBNchfZ/aw1Gbp2AI5ff02qRAOA6lp
         UZlpZaXRBDvNpmis4j/IF/c9GVVk8r3Fn9TgZZD+OmAG1X5429lnFXGTkOsYc4eCT0PO
         cGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z6/QJ0MI/lbDXMIzS2wVrHOAHkrNKDk4t63+s/4xstk=;
        b=piWKitZ7AHoKXfLrPHj1tk/F6KIF44ROqCJuS3R3kFK9qZqiySiWM38WqsitnO2EkY
         ozrh5TlAR311zgNWBfRbvkbaCFU62FyNHfTw2A6SN7sQXox7Sa+QcUDBpsoXWN/FoRiu
         ENXAFfdpHLmzQ/dBDc6FS6zdxKfdaYFC31HRlosAx7dnO7HhqZ9h6iKxLLzPHSkgSc1V
         0gC+IsEtMqqYAP68nOd/19ZjNiblDzDBI1jErvFIKa9OVd1Grw/B2Bf8rRntNI+5Cmee
         OC829FmtseSGlKDAZdi1+VVrpYAUamxzEhHcN4MIDL3R4JdTvfl+sUTYbA4anLokDBbC
         3DbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Eze6d3RSW0PfJGbC06NNICh7WNbbWHYK4XPVwiz5JBqz72y0A
	c7oQ5n7VhhScLP8p+/O8g64=
X-Google-Smtp-Source: ABdhPJwyRm4Tjgq9PPTymeObPKlH7TBScI8C1DaaB43TWk3jYbf3NWqGNCrnx2z3/0dJl/3OrZbtaw==
X-Received: by 2002:a17:90a:aa8e:: with SMTP id l14mr168961pjq.14.1615582317477;
        Fri, 12 Mar 2021 12:51:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:778b:: with SMTP id o11ls5496298pll.0.gmail; Fri, 12
 Mar 2021 12:51:57 -0800 (PST)
X-Received: by 2002:a17:90a:9e7:: with SMTP id 94mr115557pjo.117.1615582316967;
        Fri, 12 Mar 2021 12:51:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615582316; cv=none;
        d=google.com; s=arc-20160816;
        b=ez27LfCMNrn7leByVqNtVOHp6c1CC0DM0wnciXMtDlTZZ7RZgiXUOKnTMe2j0taMM6
         hbnRXJJYMpCQXQyhteIX35PMwpRqqKaTI6pQmYc02LsAQ+i0/fFrIaAHDBPdQ7S7Vf1d
         JSqw34JmXIicfs3sqodmmaQOPBA2OgxDThHwBgsWp9QSw8w7Ij9dhYhg9MreUyf5yK78
         w3ltQ9Oa9DrGdyVCCTrFt1iQnsztnnK1As1kU6Rra+qMSrrx/nvD1P9r6BpSGACECu88
         EsrkGnsMhpyNBlVMSTODEctQJ7Leo8k/gNb18DgaxWifXOPhmosOlXClBbTVZHySFiAg
         ZEAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wVSvRIvSzrL3K6aJgZm9jmvPaaOljEyK5+D5G5fF3k8=;
        b=NhmuSsjFS1BE2L3TCgV0cfyNg4uMwsab5Y9ZHKl/AJ1bLfB8unRv4G71oCthwHXCW8
         liHs1V9hfo+nboDdwddjIp9auEcvc3U8N0p1rJO3yVk8f6ZoEDWXTAAIc74RKgucwXS5
         MIUmv6NIxddvrRk1Gm4Sth/gsdKSXK5Ir8zgXBP8DqbDBF32WgWVwVtwneqFxi7HY9GY
         KmLIHxMM0l4TJojVlHH1Vz+c1s+OVUc4FBo3M9RadtvDebHeaemt4U4rCy+2TAtNWjPb
         TQtR6Q8HAXdnGkdaONSoP4C3Hj/BAw2SYcD5+Mdj7EbZI5W2yYIufgxIPZFxhGRKbDcg
         xK7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fJxryTk9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si432289pfr.4.2021.03.12.12.51.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:51:56 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 390AB64F80;
	Fri, 12 Mar 2021 20:51:55 +0000 (UTC)
Date: Fri, 12 Mar 2021 13:51:51 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Fangrui Song <maskray@google.com>,
	Prasad Sodagudi <psodagud@quicinc.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] gcov: fix clang-11+ support
Message-ID: <20210312205151.orzr7hxhxngnftxi@archlinux-ax161>
References: <20210312192139.2503087-1-ndesaulniers@google.com>
 <20210312195815.2hnhuyk3qo4p7ysr@archlinux-ax161>
 <CAKwvOdnTVobEoOR2n41qsGMZ50ZYBa8zOvV+Lek86r84racidA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnTVobEoOR2n41qsGMZ50ZYBa8zOvV+Lek86r84racidA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fJxryTk9;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Mar 12, 2021 at 12:14:42PM -0800, Nick Desaulniers wrote:
> On Fri, Mar 12, 2021 at 11:58 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Fri, Mar 12, 2021 at 11:21:39AM -0800, Nick Desaulniers wrote:
> > > LLVM changed the expected function signatures for llvm_gcda_start_file()
> > > and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
> > > or newer may have noticed their kernels failing to boot due to a panic
> > > when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
> > > the function signatures so calling these functions doesn't panic the
> > > kernel.
> > >
> > > When we drop clang-10 support from the kernel, we should carefully
> > > update the original implementations to try to preserve git blame,
> > > deleting these implementations.
> > >
> > > Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> > > Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> > > Cc: Fangrui Song <maskray@google.com>
> > > Reported-by: Prasad Sodagudi<psodagud@quicinc.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > I can reproduce the panic (as a boot hang) in QEMU before this patch and
> > it is resolved after it so:
> >
> > Tested-by: Nathan Chancellor <nathan@kernel.org>
> >
> > However, the duplication hurts :( would it potentially be better to just
> > do the full update to clang-11+ and require it for CONFIG_GCOV_KERNEL?
> >
> >     depends on CC_IS_GCC || CLANG_VERSION >= 110000?
> 
> I'm not opposed, and value your input on the matter.  Either way, this
> will need to be back ported to stable.  Should we be concerned with
> users of stable's branches before we mandated clang-10 as the minimum
> supported version?
> 
> commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")
> 
> first landed in v5.10-rc1. Does not exist in v5.4.y.  The diff you

Hmmm fair point, I did not realize that this support had landed in 5.2
meaning that 5.4 needs it as well at 5.10.

> suggest is certainly easier to review to observe the differences, and
> I we don't have users of the latest Android or CrOS kernels using
> older clang, but I suspect there may be older kernel versions where if
> they try to upgrade their version of clang, GCOV support will regress
> for them.  Though, I guess that's fine since either approach will fix
> this for them. I guess if they don't want to upgrade from clang-10 say
> for example, then this approach can be backported to stable.

If people are happy with this approach, it is the more "stable friendly"
change because it fixes it for all versions of clang that should have
been supported at their respective times. Maybe it is worthwhile to do
both? This change gets picked up with a Cc: stable@vger.kernel.org then
in a follow up patch, we remove the #ifdef's and gate GCOV on clang-11?
The CLANG_VERSION string is usually what we will search for when
removing old workarounds. Additionally, your patch could just use

#if CLANG_VERSION <= 110000

to more easily see this. I have no strong opinion one way or the other
though. If people are happy with this approach, let's do it.

Cheers,
Nathan

> >
> > > ---
> > >  kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 69 insertions(+)
> > >
> > > diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> > > index c94b820a1b62..20e6760ec05d 100644
> > > --- a/kernel/gcov/clang.c
> > > +++ b/kernel/gcov/clang.c
> > > @@ -75,7 +75,9 @@ struct gcov_fn_info {
> > >
> > >       u32 num_counters;
> > >       u64 *counters;
> > > +#if __clang_major__ < 11
> > >       const char *function_name;
> > > +#endif
> > >  };
> > >
> > >  static struct gcov_info *current_info;
> > > @@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
> > >  }
> > >  EXPORT_SYMBOL(llvm_gcov_init);
> > >
> > > +#if __clang_major__ < 11
> > >  void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> > >               u32 checksum)
> > >  {
> > > @@ -113,7 +116,17 @@ void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> > >       current_info->checksum = checksum;
> > >  }
> > >  EXPORT_SYMBOL(llvm_gcda_start_file);
> > > +#else
> > > +void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
> > > +{
> > > +     current_info->filename = orig_filename;
> > > +     current_info->version = version;
> > > +     current_info->checksum = checksum;
> > > +}
> > > +EXPORT_SYMBOL(llvm_gcda_start_file);
> > > +#endif
> > >
> > > +#if __clang_major__ < 11
> > >  void llvm_gcda_emit_function(u32 ident, const char *function_name,
> > >               u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
> > >  {
> > > @@ -133,6 +146,24 @@ void llvm_gcda_emit_function(u32 ident, const char *function_name,
> > >       list_add_tail(&info->head, &current_info->functions);
> > >  }
> > >  EXPORT_SYMBOL(llvm_gcda_emit_function);
> > > +#else
> > > +void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
> > > +             u8 use_extra_checksum, u32 cfg_checksum)
> > > +{
> > > +     struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> > > +
> > > +     if (!info)
> > > +             return;
> > > +
> > > +     INIT_LIST_HEAD(&info->head);
> > > +     info->ident = ident;
> > > +     info->checksum = func_checksum;
> > > +     info->use_extra_checksum = use_extra_checksum;
> > > +     info->cfg_checksum = cfg_checksum;
> > > +     list_add_tail(&info->head, &current_info->functions);
> > > +}
> > > +EXPORT_SYMBOL(llvm_gcda_emit_function);
> > > +#endif
> > >
> > >  void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
> > >  {
> > > @@ -295,6 +326,7 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
> > >       }
> > >  }
> > >
> > > +#if __clang_major__ < 11
> > >  static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > >  {
> > >       size_t cv_size; /* counter values size */
> > > @@ -322,6 +354,28 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > >       kfree(fn_dup);
> > >       return NULL;
> > >  }
> > > +#else
> > > +static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > > +{
> > > +     size_t cv_size; /* counter values size */
> > > +     struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
> > > +                     GFP_KERNEL);
> > > +     if (!fn_dup)
> > > +             return NULL;
> > > +     INIT_LIST_HEAD(&fn_dup->head);
> > > +
> > > +     cv_size = fn->num_counters * sizeof(fn->counters[0]);
> > > +     fn_dup->counters = vmalloc(cv_size);
> > > +     if (!fn_dup->counters) {
> > > +             kfree(fn_dup);
> > > +             return NULL;
> > > +     }
> > > +
> > > +     memcpy(fn_dup->counters, fn->counters, cv_size);
> > > +
> > > +     return fn_dup;
> > > +}
> > > +#endif
> > >
> > >  /**
> > >   * gcov_info_dup - duplicate profiling data set
> > > @@ -362,6 +416,7 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
> > >   * gcov_info_free - release memory for profiling data set duplicate
> > >   * @info: profiling data set duplicate to free
> > >   */
> > > +#if __clang_major__ < 11
> > >  void gcov_info_free(struct gcov_info *info)
> > >  {
> > >       struct gcov_fn_info *fn, *tmp;
> > > @@ -375,6 +430,20 @@ void gcov_info_free(struct gcov_info *info)
> > >       kfree(info->filename);
> > >       kfree(info);
> > >  }
> > > +#else
> > > +void gcov_info_free(struct gcov_info *info)
> > > +{
> > > +     struct gcov_fn_info *fn, *tmp;
> > > +
> > > +     list_for_each_entry_safe(fn, tmp, &info->functions, head) {
> > > +             vfree(fn->counters);
> > > +             list_del(&fn->head);
> > > +             kfree(fn);
> > > +     }
> > > +     kfree(info->filename);
> > > +     kfree(info);
> > > +}
> > > +#endif
> > >
> > >  #define ITER_STRIDE  PAGE_SIZE
> > >
> > >
> > > base-commit: f78d76e72a4671ea52d12752d92077788b4f5d50
> > > --
> > > 2.31.0.rc2.261.g7f71774620-goog
> > >
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312205151.orzr7hxhxngnftxi%40archlinux-ax161.
