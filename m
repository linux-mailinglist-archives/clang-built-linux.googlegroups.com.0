Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUFGV6BAMGQE2ECMU3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF9E33989D
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 21:47:12 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id j6sf8196501lfg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 12:47:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615582032; cv=pass;
        d=google.com; s=arc-20160816;
        b=MeHKEHFelshnaK9xgiRABLfwtTceV2DLCrpX7xHcbS4Iv8OuAizIDP3sHtS0QbJLri
         LwcO1Zcl1al97xWKMrJCLvXZZq7sHKpgaybUlvGhDjFA3ErUT6IOe0pA1JUkUFBsOGTH
         8SCZlNK/X3S+iwYSZhQMCe/0P4lfmBlmOoWZ3voCvyeDQRdqtb8IAC23aqFmueg6OFdq
         015j68IPFlT39L1jaB2O1RbefXRCkkzBXw7P3Yydw9kvgSIjjwYbiXJabcPLwfUclPUv
         Zdhuvd5Kd5I34KXzeyhZsaZAf+at6uN+K1GE9zDKFIlTAV0XYBuqJXTe9jnWmHXKS98s
         dPBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cyDSmOyT+8FIDWxYavLAYk/JZa2XBjCnH+JpR0svJXk=;
        b=PtKvi40Z/A6l6+tlSgIQYopQCnWjC79FbZ+xnfBhC6wniyn7f5JcNuuGzoWUn5cDBk
         3wXurqFewtVCHAj/FcHzmTzcIHiWfadDdSe276s5mWPh6kpLU09iEubZa4aSBqdIwpIG
         j0R/9PfVjTDr9mfzqfxjOtGVO5eh/Ft0lL+Hc+0EWPpm2rnSPZJMd10djNhZb6u9G8CF
         UPof1e8dPt3rP6LnMu0b5mE/al2u+eY2eMkF5l79dbrXavFfiZSCw4QCtEMt3MKXMjdi
         kxhjvZh8g1rrsGVsgaECfwA4GEoBaZLhhpFTWsC2zFP2tNwOjn+LHhojcHjG1Vb+nE+5
         ycUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VcBFGxzD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyDSmOyT+8FIDWxYavLAYk/JZa2XBjCnH+JpR0svJXk=;
        b=IyBbqaxBSl7wF2lA9+doJZcumAu/yDbvx1of7MDiC4c3ZjB6AEdlcD7O5yk/TE/c1Z
         BE/VrGs1Q1J+sc4JKEeuStOErFkzhHNEN2ezIQ5p6jLJSCZYy60T9oanzsFs+L/M/cuY
         IHdHxkChbT3Yu7/qlUZb7TMd6L7u8ybstUbEyrObkjeHkZ3+OA6RotuDHf8N36zHNPkZ
         pUAz8q7GD7WQJ/P4ZT+Q+yqYlMejfH4ylahY/EztBKhxVVnLwkC0IqigphrckxIvdLlG
         qJvnXkNynN8G+SXXEbfJW63zUR7WI/ZL9Ls1dToOKGIz3owdHYLdER+s5Ge0fR9Z18n9
         y71Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyDSmOyT+8FIDWxYavLAYk/JZa2XBjCnH+JpR0svJXk=;
        b=B1UqMbNR38xWY9t1TLek3w8i/Ymthfa4il+D9xtekqLgEwwp+hB+Bo/YR9DwXSg3YH
         GL2UPcwbBuqc/eQ3XpD+kq65U4FR1Ig1D9bI3WNkws+ZJZHe8wqhA4e8dUF/loyR4aj/
         719SSNomamiWMqETENnoRN4KPEobnfWO0HJp7ZZu+KB0qR1Jc9OL11+ZEkcM8/QJc9wh
         J20TvZn8lrALB0wQHk8pUtiuCvUv3bjR5VO3W/YuqEcW++igWV1KvpJHx2sjcKcFONtd
         V27S1VEbOSj8jMcQ/CfmksTsOsE7buG2nosrwCo767ASrmt/cnuUwkxpC7MmhU9bmAOB
         R6Rg==
X-Gm-Message-State: AOAM5306oE/eGsFWkVoh8Xd2bEcplpDOUKF69EcVrd1tTGy/74TMUwP4
	sT6oNVmt7ZpVYPtJNpglXE8=
X-Google-Smtp-Source: ABdhPJzz+94A8DlmbBbJ5JSUJeyHxYx10nhS6bauD73cJeSYC993SBgdTiiP0blMzQb8IOBH/oZGSw==
X-Received: by 2002:a05:6512:74a:: with SMTP id c10mr588889lfs.586.1615582032473;
        Fri, 12 Mar 2021 12:47:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8915:: with SMTP id d21ls2243472lji.1.gmail; Fri, 12 Mar
 2021 12:47:11 -0800 (PST)
X-Received: by 2002:a2e:9855:: with SMTP id e21mr3329611ljj.26.1615582031419;
        Fri, 12 Mar 2021 12:47:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615582031; cv=none;
        d=google.com; s=arc-20160816;
        b=mMmCc0gI8a2U2urSkkUiW6H+RuNDA1/wdCfa4fPh7Sm/yeMSyUl/OAZ2F0g9e2+JY+
         umSAb0nF4WmItVQ24XISWwIvdS/5fC1k6aqaw6UEpqSLGiLB7NqXKHpz/5/lJyQYQWnY
         Eu4UURbq6igqw8hAwBIleRwtOvT1DEbm2iegBEB7X6Vp8fE6WoPHWgA78aI12+HyoCXQ
         jtVqjrHqQx8lmQir46uHYNgRHpHI/HSgvWWQsX6aTZHTdt1QNNjco3KLQ+VMxqveD1/C
         hG0c4uy/57Wb6wqXfT9ZUiB56eA1cYaDi+fUL7lTzZFjcyBhYGHJ8hDdK3CdErpwHbiL
         uKqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eaZZDtgJKtJuTQZ70dB17OMUn4jwhN/FkKXLaIUfrP4=;
        b=Cp4eP/+1ry1kArY7ZwUsutYHLhTiwNTGQr9yZG+UQe8zsNoE0kz83w5XoneHjsvyco
         WDZjRwejVz5zzr7gUarWB4Eetz/co1wQksq22I+RZgRzci7TUvR7CLq0f+klQLFhNoX7
         FrGMquu/fqIy5fhKFU6eIBBSFeRkXhUnG3L52D0Xz+kgjdb5CaOCJWgFM4IRBflO6CL0
         mhwQk9BA2tl7qwquDwtZw4l+WXdJCg0IZB6mP4u1NM6IxL0hhT7/qbyFNV1G9Vwz8p9z
         fnsECKH/0TGKweIMsnXiAKMbBVnP+6UuJwuaKjvFRoHuOO44fA6UPqWt/3rKRgg5z4TQ
         0vvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VcBFGxzD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id q3si314540lji.2.2021.03.12.12.47.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:47:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id r20so8956269ljk.4
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 12:47:11 -0800 (PST)
X-Received: by 2002:a2e:5716:: with SMTP id l22mr3395441ljb.244.1615582030947;
 Fri, 12 Mar 2021 12:47:10 -0800 (PST)
MIME-Version: 1.0
References: <20210312192139.2503087-1-ndesaulniers@google.com>
 <20210312195815.2hnhuyk3qo4p7ysr@archlinux-ax161> <CAKwvOdnTVobEoOR2n41qsGMZ50ZYBa8zOvV+Lek86r84racidA@mail.gmail.com>
In-Reply-To: <CAKwvOdnTVobEoOR2n41qsGMZ50ZYBa8zOvV+Lek86r84racidA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Mar 2021 12:46:59 -0800
Message-ID: <CAKwvOdkRcYrmC9xRc=NoMAzSbwQ9xhJHFQCaVB4t1cqObCi5qw@mail.gmail.com>
Subject: Re: [PATCH] gcov: fix clang-11+ support
To: Nathan Chancellor <nathan@kernel.org>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Fangrui Song <maskray@google.com>, Prasad Sodagudi <psodagud@quicinc.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VcBFGxzD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Mar 12, 2021 at 12:14 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
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
> suggest is certainly easier to review to observe the differences, and
> I we don't have users of the latest Android or CrOS kernels using
> older clang, but I suspect there may be older kernel versions where if
> they try to upgrade their version of clang, GCOV support will regress
> for them.  Though, I guess that's fine since either approach will fix
> this for them. I guess if they don't want to upgrade from clang-10 say
> for example, then this approach can be backported to stable.

Thinking more about this over lunch; what are your thoughts on a V2
that does this first, then what you suggest as a second patch on top,
with the first tagged for inclusion into stable, but the second one
not?  Hopefully maintainers don't consider that too much churn?

>
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
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkRcYrmC9xRc%3DNoMAzSbwQ9xhJHFQCaVB4t1cqObCi5qw%40mail.gmail.com.
