Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP4XV6BAMGQEIMHYG3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFB4339814
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 21:14:55 +0100 (CET)
Received: by mail-ej1-x637.google.com with SMTP id gv58sf10565200ejc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 12:14:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615580095; cv=pass;
        d=google.com; s=arc-20160816;
        b=L9YZ+DMcK+EAoAb3ooA2vq9ezJlnw4fDF6WWuH42YtgDuZbHbN8i0+iQZMOCa6h/Ic
         gxiTYZPY7PkcK2jLZGRgXD07QgPLp7JHACVQjhk50MGm9gh0rm/EzKhHt8sPEr/Oxm9q
         tehZ7z+Ifi8nk6T3a20Rm81nB0FAeWhy59ElHrIPc7pfkAnXBzzMweIodbViVrP+EjGN
         2vdBoj+s5Hhb1k5pHhWgYx8SnGe6ZUROnescZQOvPH5ejpkrOXMpNuxk1jCxotzjsthG
         R9PgwhVq7C7qNl//dMvLx+4u3ecUH9GYkta0fMoFjNXhphP3Qii1cUq90UMiY66QpMkA
         b6Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GysBFFlhgcBcrGvt9rouiwfa1o1/UJPXpMKC5hTPouA=;
        b=DRxSVRlva98vRDs7WCoLZD6QmBBwWUYqZzvPoxVRBvvXbtcQF8L3rKPy+9NgnWbOAg
         MCQpZ2Rmx1u979euwk/NHUnOrzM4UbLa+uMVyjY3IoD3uoRyebes25KPp+jRH/uG9gDV
         ktNRaHpa+dPW1OARZjKAFNOYlcgw3qOj1PolcSJq1fHTjYGNEqNQDXuGS+ZMot2iAI8c
         qKz8PjsTaCOcCg9QmjyRaVlmyTawfLQJ/DSDWi5XRuCYElKE6SmgCYSkjCEo3nHtMyWJ
         EHHhynZPSTQ34TyyC2BcictNhB7cya7JELBxsKxJUMh0kR4pgL6xABo0ZYcRPKKpIr6A
         Aeow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FH2ccx7L;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GysBFFlhgcBcrGvt9rouiwfa1o1/UJPXpMKC5hTPouA=;
        b=nz3QbZ+5BUAx6OdwN2LAB7gpJsN2TvKEz4Kt1qsyoy3emRXoioBR+zpmJVVB909R56
         UcKZ5O9q5ZCv2AJcTrSNm4TqmFeSwtl0D8JZw2d8QUxkM2EFJC57PN6D/ZEpGXgQctjY
         d82Ezu5UTlrj1ljbxx8BkfMfmmg8enini0AnEpA4LKs2zELsqzPc8B/A6NJGvNFfO4Dq
         zz5VhEJEO1jYODWDvFjPrSQLJtFf4Fd9QVYFT0AskwUGevnaXqcPp7mIwSe/BORfSP7S
         hFd8Vv68WTOhHL4NWVETCo1CxNyZZaUVXH3fGAh5fzABHHvveibG7B+9F4sEF4cHux5v
         L/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GysBFFlhgcBcrGvt9rouiwfa1o1/UJPXpMKC5hTPouA=;
        b=BXp+aa1Cx4rjZtFkMcCSX2Ne86wmmoE15ibgAnudAHMDyN4lAZlXQShkaC4A3TUcvp
         NrHfML34nyoK4CPd5livwfTgGzxi4sMO9bIm/f2eJMyYAbwrUSv/K+eHciqpwyNv9rnC
         f/0oedyLEnSy/Z0wg+nZo3MKgecSocPBXVPhwv6/zjPNkV+Oeyt7h9HrQ8BX8ZjnHWXo
         mHUMP3Sm7eUMBmOk02El70FzIC7ttg8GaM6YaAl/HVlL6HlWDWpLQI4vPkRQ4skP2ReW
         uCq5HjCSWcSatixsXNHMn9ZkyAVOWiwwPajno6L+d9CuLOx3j2I1i6Y13QQHNDAr4S4u
         Fx7g==
X-Gm-Message-State: AOAM533evpAvxCCdYcIfzODswJ5mSqWGK/mpzaDpcKzH2j733sHiOTiP
	VuL0yaJ+rStlRo9CFT4Ha1c=
X-Google-Smtp-Source: ABdhPJymahWfW7m89DL/wiXcQ74mjtlLZ+Ty0gwPfhqXD/Wjb61/CMXKYClgHFsD0LywnedeoY1v+Q==
X-Received: by 2002:a17:907:10ce:: with SMTP id rv14mr10682401ejb.56.1615580095462;
        Fri, 12 Mar 2021 12:14:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:41a:: with SMTP id d26ls2738830eja.3.gmail; Fri, 12
 Mar 2021 12:14:54 -0800 (PST)
X-Received: by 2002:a17:906:495a:: with SMTP id f26mr10269192ejt.271.1615580094602;
        Fri, 12 Mar 2021 12:14:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615580094; cv=none;
        d=google.com; s=arc-20160816;
        b=X46S2x1vyFpES9gsMCo72+CsIvCINWurTqdI3a02toWljtfWXmd2v3Ekmulv3YvR4D
         wBdccojtOqmB4rVwQ7KtbHTSqcuMRtaFzmp7MFZiK5mjQXP4tH6KBgGEIZpoDMu4Ib8k
         /DiQUXgV26NJaI8WenXFFurcglzreOkUHKUr62MKeq+O2LroHpmViHZZ3xP33vAKXJGZ
         x0BkN+o6m+DkRDHnXpma/Rv0MZbO79CWsdOMZBGTxjVd8GlC8m2PGQnietu8nZm772OO
         vcy6K1Wkl49KWelm4iW9riVfIy8fd03EzRq+Ia7tT0qRZFWQqeAClnWH1j4BECpmGN4L
         1SkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0qU0gl5uKQ0B+uAaqmPScMXDjNGZ5YlPDwsCmS9RV+0=;
        b=C9mIBEXOqaJ/XW5Qc7fc3VnOqvlBsR861x64nOUAJe8o+odm6f8rNHKcXQGT7dgfnr
         al49ugheAuviQYlub8UKHPrYh/BGfrhepvhN9mlfGeYbOD58TDLidrJdWgsxdPX/ZNxl
         g/7sq8qv5G5gRVeSI3mRMAhVItqyqYZLbff36V4bdMEMooAg8N9W8rDiAlOn1ZEg7eez
         GlOoReUQ4VKNT1u/ReT2M9s505TnlYsnU50OqWs0DxQeq/UCGcKQ47G3HkXVldz84nZL
         A1/pKAbOVNbY2LXro5SaL0/X3Ptg4BoPsWsH0uB5RxOLpQyxvauuIOO1FocILHDLRiBm
         9KrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FH2ccx7L;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id df17si308270edb.3.2021.03.12.12.14.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:14:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id u4so8799669ljo.6
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 12:14:54 -0800 (PST)
X-Received: by 2002:a19:5055:: with SMTP id z21mr511114lfj.297.1615580093852;
 Fri, 12 Mar 2021 12:14:53 -0800 (PST)
MIME-Version: 1.0
References: <20210312192139.2503087-1-ndesaulniers@google.com> <20210312195815.2hnhuyk3qo4p7ysr@archlinux-ax161>
In-Reply-To: <20210312195815.2hnhuyk3qo4p7ysr@archlinux-ax161>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Mar 2021 12:14:42 -0800
Message-ID: <CAKwvOdnTVobEoOR2n41qsGMZ50ZYBa8zOvV+Lek86r84racidA@mail.gmail.com>
Subject: Re: [PATCH] gcov: fix clang-11+ support
To: Nathan Chancellor <nathan@kernel.org>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Fangrui Song <maskray@google.com>, Prasad Sodagudi <psodagud@quicinc.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FH2ccx7L;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Fri, Mar 12, 2021 at 11:58 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Mar 12, 2021 at 11:21:39AM -0800, Nick Desaulniers wrote:
> > LLVM changed the expected function signatures for llvm_gcda_start_file()
> > and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
> > or newer may have noticed their kernels failing to boot due to a panic
> > when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
> > the function signatures so calling these functions doesn't panic the
> > kernel.
> >
> > When we drop clang-10 support from the kernel, we should carefully
> > update the original implementations to try to preserve git blame,
> > deleting these implementations.
> >
> > Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> > Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> > Cc: Fangrui Song <maskray@google.com>
> > Reported-by: Prasad Sodagudi<psodagud@quicinc.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> I can reproduce the panic (as a boot hang) in QEMU before this patch and
> it is resolved after it so:
>
> Tested-by: Nathan Chancellor <nathan@kernel.org>
>
> However, the duplication hurts :( would it potentially be better to just
> do the full update to clang-11+ and require it for CONFIG_GCOV_KERNEL?
>
>     depends on CC_IS_GCC || CLANG_VERSION >= 110000?

I'm not opposed, and value your input on the matter.  Either way, this
will need to be back ported to stable.  Should we be concerned with
users of stable's branches before we mandated clang-10 as the minimum
supported version?

commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")

first landed in v5.10-rc1. Does not exist in v5.4.y.  The diff you
suggest is certainly easier to review to observe the differences, and
I we don't have users of the latest Android or CrOS kernels using
older clang, but I suspect there may be older kernel versions where if
they try to upgrade their version of clang, GCOV support will regress
for them.  Though, I guess that's fine since either approach will fix
this for them. I guess if they don't want to upgrade from clang-10 say
for example, then this approach can be backported to stable.

>
> > ---
> >  kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 69 insertions(+)
> >
> > diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> > index c94b820a1b62..20e6760ec05d 100644
> > --- a/kernel/gcov/clang.c
> > +++ b/kernel/gcov/clang.c
> > @@ -75,7 +75,9 @@ struct gcov_fn_info {
> >
> >       u32 num_counters;
> >       u64 *counters;
> > +#if __clang_major__ < 11
> >       const char *function_name;
> > +#endif
> >  };
> >
> >  static struct gcov_info *current_info;
> > @@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
> >  }
> >  EXPORT_SYMBOL(llvm_gcov_init);
> >
> > +#if __clang_major__ < 11
> >  void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> >               u32 checksum)
> >  {
> > @@ -113,7 +116,17 @@ void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> >       current_info->checksum = checksum;
> >  }
> >  EXPORT_SYMBOL(llvm_gcda_start_file);
> > +#else
> > +void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
> > +{
> > +     current_info->filename = orig_filename;
> > +     current_info->version = version;
> > +     current_info->checksum = checksum;
> > +}
> > +EXPORT_SYMBOL(llvm_gcda_start_file);
> > +#endif
> >
> > +#if __clang_major__ < 11
> >  void llvm_gcda_emit_function(u32 ident, const char *function_name,
> >               u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
> >  {
> > @@ -133,6 +146,24 @@ void llvm_gcda_emit_function(u32 ident, const char *function_name,
> >       list_add_tail(&info->head, &current_info->functions);
> >  }
> >  EXPORT_SYMBOL(llvm_gcda_emit_function);
> > +#else
> > +void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
> > +             u8 use_extra_checksum, u32 cfg_checksum)
> > +{
> > +     struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> > +
> > +     if (!info)
> > +             return;
> > +
> > +     INIT_LIST_HEAD(&info->head);
> > +     info->ident = ident;
> > +     info->checksum = func_checksum;
> > +     info->use_extra_checksum = use_extra_checksum;
> > +     info->cfg_checksum = cfg_checksum;
> > +     list_add_tail(&info->head, &current_info->functions);
> > +}
> > +EXPORT_SYMBOL(llvm_gcda_emit_function);
> > +#endif
> >
> >  void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
> >  {
> > @@ -295,6 +326,7 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
> >       }
> >  }
> >
> > +#if __clang_major__ < 11
> >  static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> >  {
> >       size_t cv_size; /* counter values size */
> > @@ -322,6 +354,28 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> >       kfree(fn_dup);
> >       return NULL;
> >  }
> > +#else
> > +static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > +{
> > +     size_t cv_size; /* counter values size */
> > +     struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
> > +                     GFP_KERNEL);
> > +     if (!fn_dup)
> > +             return NULL;
> > +     INIT_LIST_HEAD(&fn_dup->head);
> > +
> > +     cv_size = fn->num_counters * sizeof(fn->counters[0]);
> > +     fn_dup->counters = vmalloc(cv_size);
> > +     if (!fn_dup->counters) {
> > +             kfree(fn_dup);
> > +             return NULL;
> > +     }
> > +
> > +     memcpy(fn_dup->counters, fn->counters, cv_size);
> > +
> > +     return fn_dup;
> > +}
> > +#endif
> >
> >  /**
> >   * gcov_info_dup - duplicate profiling data set
> > @@ -362,6 +416,7 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
> >   * gcov_info_free - release memory for profiling data set duplicate
> >   * @info: profiling data set duplicate to free
> >   */
> > +#if __clang_major__ < 11
> >  void gcov_info_free(struct gcov_info *info)
> >  {
> >       struct gcov_fn_info *fn, *tmp;
> > @@ -375,6 +430,20 @@ void gcov_info_free(struct gcov_info *info)
> >       kfree(info->filename);
> >       kfree(info);
> >  }
> > +#else
> > +void gcov_info_free(struct gcov_info *info)
> > +{
> > +     struct gcov_fn_info *fn, *tmp;
> > +
> > +     list_for_each_entry_safe(fn, tmp, &info->functions, head) {
> > +             vfree(fn->counters);
> > +             list_del(&fn->head);
> > +             kfree(fn);
> > +     }
> > +     kfree(info->filename);
> > +     kfree(info);
> > +}
> > +#endif
> >
> >  #define ITER_STRIDE  PAGE_SIZE
> >
> >
> > base-commit: f78d76e72a4671ea52d12752d92077788b4f5d50
> > --
> > 2.31.0.rc2.261.g7f71774620-goog
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnTVobEoOR2n41qsGMZ50ZYBa8zOvV%2BLek86r84racidA%40mail.gmail.com.
