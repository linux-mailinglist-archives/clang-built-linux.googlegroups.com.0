Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJGLV6BAMGQEP6KKN4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5371333996F
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 23:05:26 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id dw22sf945260pjb.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 14:05:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615586725; cv=pass;
        d=google.com; s=arc-20160816;
        b=UlK1xXTp9vC6kSsSPpXNOyjNG0/NTUmfwAGPXt+j08JbcZkV+1PEI2zzOXCsNBZ15h
         +3pl5mj1G3OJ3Oh+c++99Vs4i3+o9joBg+5WPs/K1bWeuYTCY068dzVaRaSQMLzeDqAh
         HLzmZxsAoghs+TiExao2Er+SOzVaF0hH5oKHYRs/PONa4r9N4vL2HsqSqtKOptL2qLWt
         6bowT6tPTAC18/bZfhdml29TL3y7X7J0Z3qr2qic0Wxp9xorECLyAr2QIAc9O+aEmW+u
         oil9Kn+q4sph147fWk/TWkwnJNFAed0EFTtS8cKfC+H4WyVrARYYBuI+NGYiQiQFn1KJ
         tJaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9NCXt8vG8m1PA1YFnMJ28J7VeJm63MuQnnEVc70qPFM=;
        b=k+CaM7MPcwJj4BbmFc/kxfLHtnbxFkexwjn2jTm58VxG/0HKeYmXRV3IJhfJFYfR29
         JQA/4BoIwYkg/iEBZ/kgN2z95Pf3EXP+y7DR3JsgzZroNCbwuO4MSOs/TYJvBBbTthj8
         1fTrNc3Ad5ruPGZ/byVrwopZRUvr9QSG/4mMeYRWgid26WLxMpNOT8sxhawwmStzfYjg
         LK7Z3WiPt1H/PydEd9Sj5ymne7FheSxMBIs81z4OlUs4OEJeVS9C8adewmySoNq33pt3
         hp8IicBRUfY16cTk1mcuxqOGJdhwtbdK/6ajJM+9BiLVWfjagUNQDAQ1dzV8lulNdp6O
         gXgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hGAAr6Ej;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9NCXt8vG8m1PA1YFnMJ28J7VeJm63MuQnnEVc70qPFM=;
        b=KHcbS6DtHz/CB7VvQpUaYO9+sxqHbwUjcfznQnyu1dB8woPsC+CbkaLdWf8pcnQi6W
         H0WhK214hHn5E/mN/xqJWADfibkjMCW+aTs/P8vRoc9HKszDbDnOlIMSPlIXIddue9xc
         pEau2yWnRKp/eCkQg3AOEW2JWzzE6bwoEr5VrBNdPSPMbBNWlsEfKpKYoVnrUaR8xRIW
         Y67Zl6v3BkcwOzDFZBMlFVySEtmhUmlhnLWyAdBStgngYdyo4JGRBIRx3UbRjv/+Vykz
         55txm4et7dui66+3WDF/w1AFpRLwOF+6y4aGt4A+eHAxIFK3YQDFVmwk1cuBuWwd52UX
         z3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9NCXt8vG8m1PA1YFnMJ28J7VeJm63MuQnnEVc70qPFM=;
        b=jzdF0Wtc37RUtP5ioK0BJMW075LGmz8ciVHndnzbcZKoLeTnD46W39ycPwc/TFCimg
         kX0B4SF/0rNvO3+k+tTMOh9MuBILL7WfHHtLliekrRUaPrhlwdTaK1srnAoACOx8Db5T
         I9xpXN1Ako9GIyuKb4jkzn+if0imGyDIeYmi3ZvpnpBKB8cbUYm+XDZw+HeqXPspQGPG
         0l1ysFESSKfNE776suTvRkWQfE8r0rkS47uMS+CHgc97/zaL19xxvLgFJjGiskPigGwS
         Zzdx29rwk8kyYQG41mK8XWlaLIqPd7zM66mZojJQ7qZHRKq+rJLNj9sOZWFIwtjOmv1w
         F7JA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KmM29UERsZsWngopO5UwE3VMfc9ayuLRmsqOAsMZ1VXiUr+rB
	8Ph7QAaewVY+yh7kNSW+n1I=
X-Google-Smtp-Source: ABdhPJwxVjV1AzgoitFewW8u2xFFaPpaCzir0AVUm0lmbzQV97okVi189qZQPTn62LILLice/zJqZQ==
X-Received: by 2002:a63:557:: with SMTP id 84mr13819192pgf.82.1615586724796;
        Fri, 12 Mar 2021 14:05:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c8c:: with SMTP id s134ls4227344pfs.6.gmail; Fri, 12
 Mar 2021 14:05:24 -0800 (PST)
X-Received: by 2002:a63:7b4e:: with SMTP id k14mr13500360pgn.261.1615586724247;
        Fri, 12 Mar 2021 14:05:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615586724; cv=none;
        d=google.com; s=arc-20160816;
        b=PW0g4kXeyIYGTQ7E7NmWbaXvbR02hPl3qSauT20UVvm5Tx4ztdWlRKcEmVhrfl4G5J
         ifviCPpt7A4bcjVrroMGhQdUa8OlrVfqsEZWVtCDwNELV5WavFc6ck4LnO036VtlgVra
         u01a1lM6EY6I/96Lgz1I+RNRcSInMOLZbXtBCXuqqx34ItcDOa4E6D3W0vJMq8BwNCqc
         nyK3SNlbER+B/b01aCC3v8K5+t+bsaG1mtlOmP30S+1qIU60kYhw9/lecfNfm0YBdW9d
         Z1gVIs93h9arz8DxRQAGwqVIwMcLkoBG6uDrCeCDtXgAbihfstmG9CEjrpu3sdI5jxEb
         5SdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NiqWLrPnFcwArvleuY4Y9mPv9HqeddOBPafEjPq8uGs=;
        b=dfUpKgNX575NGPXEfTxoxD49dX5RASZf0WLUKabSm3mDrkw3XmMgj09GMg7Eie5eO5
         8NpbXFbwX3CMQpfcajPa6ja4lsKFod3cyEqcW02CbvUTuqZA+lN6T9KSjcaTL/sxAJTy
         CAG71qWLHcjBydr+donXwDoDhRpXIlbcYniaeIkEDYdRB14SmgEhGdBT0+E3/ugNXiQv
         fjt/2JsC55wmAD8L5jo9NliDNpArphvJR9TQKBGiDhln4x8AX+3bZu2TCNCufL3mcTi8
         hah6pUzTfHZJX100L1vrqMUwvmeNCZ/o5+ATE/86Eo8HmocFcaFxAPNaMxbH7PCp+0Mq
         /ipg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hGAAr6Ej;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e8si354815pgl.0.2021.03.12.14.05.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 14:05:24 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C38D64E38;
	Fri, 12 Mar 2021 22:05:21 +0000 (UTC)
Date: Fri, 12 Mar 2021 15:05:18 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Fangrui Song <maskray@google.com>,
	Prasad Sodagudi <psodagud@quicinc.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] gcov: fix clang-11+ support
Message-ID: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161>
References: <20210312192139.2503087-1-ndesaulniers@google.com>
 <20210312195815.2hnhuyk3qo4p7ysr@archlinux-ax161>
 <CAKwvOdnTVobEoOR2n41qsGMZ50ZYBa8zOvV+Lek86r84racidA@mail.gmail.com>
 <20210312205151.orzr7hxhxngnftxi@archlinux-ax161>
 <CAKwvOdmV5co+mMSBbnnXyBXiwOha=S987PMA68Xe9jP8gJYkdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmV5co+mMSBbnnXyBXiwOha=S987PMA68Xe9jP8gJYkdw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hGAAr6Ej;       spf=pass
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

On Fri, Mar 12, 2021 at 01:57:47PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Fri, Mar 12, 2021 at 12:51 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Fri, Mar 12, 2021 at 12:14:42PM -0800, Nick Desaulniers wrote:
> > > On Fri, Mar 12, 2021 at 11:58 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > > >
> > > > On Fri, Mar 12, 2021 at 11:21:39AM -0800, Nick Desaulniers wrote:
> > > > > LLVM changed the expected function signatures for llvm_gcda_start_file()
> > > > > and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
> > > > > or newer may have noticed their kernels failing to boot due to a panic
> > > > > when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
> > > > > the function signatures so calling these functions doesn't panic the
> > > > > kernel.
> > > > >
> > > > > When we drop clang-10 support from the kernel, we should carefully
> > > > > update the original implementations to try to preserve git blame,
> > > > > deleting these implementations.
> > > > >
> > > > > Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> > > > > Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> > > > > Cc: Fangrui Song <maskray@google.com>
> > > > > Reported-by: Prasad Sodagudi<psodagud@quicinc.com>
> > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > >
> > > > I can reproduce the panic (as a boot hang) in QEMU before this patch and
> > > > it is resolved after it so:
> > > >
> > > > Tested-by: Nathan Chancellor <nathan@kernel.org>
> > > >
> > > > However, the duplication hurts :( would it potentially be better to just
> > > > do the full update to clang-11+ and require it for CONFIG_GCOV_KERNEL?
> > > >
> > > >     depends on CC_IS_GCC || CLANG_VERSION >= 110000?
> > >
> > > I'm not opposed, and value your input on the matter.  Either way, this
> > > will need to be back ported to stable.  Should we be concerned with
> > > users of stable's branches before we mandated clang-10 as the minimum
> > > supported version?
> > >
> > > commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")
> > >
> > > first landed in v5.10-rc1. Does not exist in v5.4.y.  The diff you
> >
> > Hmmm fair point, I did not realize that this support had landed in 5.2
> > meaning that 5.4 needs it as well at 5.10.
> >
> > > suggest is certainly easier to review to observe the differences, and
> > > I we don't have users of the latest Android or CrOS kernels using
> > > older clang, but I suspect there may be older kernel versions where if
> > > they try to upgrade their version of clang, GCOV support will regress
> > > for them.  Though, I guess that's fine since either approach will fix
> > > this for them. I guess if they don't want to upgrade from clang-10 say
> > > for example, then this approach can be backported to stable.
> >
> > If people are happy with this approach, it is the more "stable friendly"
> > change because it fixes it for all versions of clang that should have
> > been supported at their respective times. Maybe it is worthwhile to do
> > both? This change gets picked up with a Cc: stable@vger.kernel.org then
> > in a follow up patch, we remove the #ifdef's and gate GCOV on clang-11?
> > The CLANG_VERSION string is usually what we will search for when
> > removing old workarounds.
> 
> Sounds like we're on the same page; will send a v2 with your
> recommendation on top.
> 
> > Additionally, your patch could just use
> >
> > #if CLANG_VERSION <= 110000
> >
> > to more easily see this. I have no strong opinion one way or the other
> > though. If people are happy with this approach, let's do it.
> 
> Err that would be nicer, but:
> kernel/gcov/clang.c:78:5: warning: 'CLANG_VERSION' is not defined,
> evaluates to 0 [-Wundef]
> #if CLANG_VERSION < 110000
>     ^
> kernel/gcov/clang.c:110:5: warning: 'CLANG_VERSION' is not defined,
> evaluates to 0 [-Wundef]
> #if CLANG_VERSION < 110000
>     ^
> kernel/gcov/clang.c:130:5: warning: 'CLANG_VERSION' is not defined,
> evaluates to 0 [-Wundef]
> #if CLANG_VERSION < 110000
>     ^
> kernel/gcov/clang.c:330:5: warning: 'CLANG_VERSION' is not defined,
> evaluates to 0 [-Wundef]
> #if CLANG_VERSION < 110000
>     ^
> kernel/gcov/clang.c:420:5: warning: 'CLANG_VERSION' is not defined,
> evaluates to 0 [-Wundef]
> #if CLANG_VERSION < 110000
>     ^

Ah sorry, CONFIG_CLANG_VERSION.

> Did we just break this in commit aec6c60a01d3 ("kbuild: check the
> minimum compiler version in Kconfig") in v5.12-rc1?  So I'll keep it
> as is for v2, but we should discuss with Masahiro and Miguel if we
> should be removing CLANG_VERSION even if there are no in tree users at
> the moment.  (I guess I could re-introduce it in my series for v2, but
> that will unnecessarily complicate the backports, so I won't).  My
> fault for not catching that in code review.

Technically yes, but the {CLANG,GCC}_VERSION macros are not portable
because they are only defined in their respective headers, resulting in
problems like commit df3da04880b4 ("mips: Fix unroll macro when building
with Clang").

Cheers,
Nathan

> >
> > Cheers,
> > Nathan
> >
> > > >
> > > > > ---
> > > > >  kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
> > > > >  1 file changed, 69 insertions(+)
> > > > >
> > > > > diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> > > > > index c94b820a1b62..20e6760ec05d 100644
> > > > > --- a/kernel/gcov/clang.c
> > > > > +++ b/kernel/gcov/clang.c
> > > > > @@ -75,7 +75,9 @@ struct gcov_fn_info {
> > > > >
> > > > >       u32 num_counters;
> > > > >       u64 *counters;
> > > > > +#if __clang_major__ < 11
> > > > >       const char *function_name;
> > > > > +#endif
> > > > >  };
> > > > >
> > > > >  static struct gcov_info *current_info;
> > > > > @@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
> > > > >  }
> > > > >  EXPORT_SYMBOL(llvm_gcov_init);
> > > > >
> > > > > +#if __clang_major__ < 11
> > > > >  void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> > > > >               u32 checksum)
> > > > >  {
> > > > > @@ -113,7 +116,17 @@ void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> > > > >       current_info->checksum = checksum;
> > > > >  }
> > > > >  EXPORT_SYMBOL(llvm_gcda_start_file);
> > > > > +#else
> > > > > +void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
> > > > > +{
> > > > > +     current_info->filename = orig_filename;
> > > > > +     current_info->version = version;
> > > > > +     current_info->checksum = checksum;
> > > > > +}
> > > > > +EXPORT_SYMBOL(llvm_gcda_start_file);
> > > > > +#endif
> > > > >
> > > > > +#if __clang_major__ < 11
> > > > >  void llvm_gcda_emit_function(u32 ident, const char *function_name,
> > > > >               u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
> > > > >  {
> > > > > @@ -133,6 +146,24 @@ void llvm_gcda_emit_function(u32 ident, const char *function_name,
> > > > >       list_add_tail(&info->head, &current_info->functions);
> > > > >  }
> > > > >  EXPORT_SYMBOL(llvm_gcda_emit_function);
> > > > > +#else
> > > > > +void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
> > > > > +             u8 use_extra_checksum, u32 cfg_checksum)
> > > > > +{
> > > > > +     struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> > > > > +
> > > > > +     if (!info)
> > > > > +             return;
> > > > > +
> > > > > +     INIT_LIST_HEAD(&info->head);
> > > > > +     info->ident = ident;
> > > > > +     info->checksum = func_checksum;
> > > > > +     info->use_extra_checksum = use_extra_checksum;
> > > > > +     info->cfg_checksum = cfg_checksum;
> > > > > +     list_add_tail(&info->head, &current_info->functions);
> > > > > +}
> > > > > +EXPORT_SYMBOL(llvm_gcda_emit_function);
> > > > > +#endif
> > > > >
> > > > >  void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
> > > > >  {
> > > > > @@ -295,6 +326,7 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
> > > > >       }
> > > > >  }
> > > > >
> > > > > +#if __clang_major__ < 11
> > > > >  static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > > > >  {
> > > > >       size_t cv_size; /* counter values size */
> > > > > @@ -322,6 +354,28 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > > > >       kfree(fn_dup);
> > > > >       return NULL;
> > > > >  }
> > > > > +#else
> > > > > +static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > > > > +{
> > > > > +     size_t cv_size; /* counter values size */
> > > > > +     struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
> > > > > +                     GFP_KERNEL);
> > > > > +     if (!fn_dup)
> > > > > +             return NULL;
> > > > > +     INIT_LIST_HEAD(&fn_dup->head);
> > > > > +
> > > > > +     cv_size = fn->num_counters * sizeof(fn->counters[0]);
> > > > > +     fn_dup->counters = vmalloc(cv_size);
> > > > > +     if (!fn_dup->counters) {
> > > > > +             kfree(fn_dup);
> > > > > +             return NULL;
> > > > > +     }
> > > > > +
> > > > > +     memcpy(fn_dup->counters, fn->counters, cv_size);
> > > > > +
> > > > > +     return fn_dup;
> > > > > +}
> > > > > +#endif
> > > > >
> > > > >  /**
> > > > >   * gcov_info_dup - duplicate profiling data set
> > > > > @@ -362,6 +416,7 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
> > > > >   * gcov_info_free - release memory for profiling data set duplicate
> > > > >   * @info: profiling data set duplicate to free
> > > > >   */
> > > > > +#if __clang_major__ < 11
> > > > >  void gcov_info_free(struct gcov_info *info)
> > > > >  {
> > > > >       struct gcov_fn_info *fn, *tmp;
> > > > > @@ -375,6 +430,20 @@ void gcov_info_free(struct gcov_info *info)
> > > > >       kfree(info->filename);
> > > > >       kfree(info);
> > > > >  }
> > > > > +#else
> > > > > +void gcov_info_free(struct gcov_info *info)
> > > > > +{
> > > > > +     struct gcov_fn_info *fn, *tmp;
> > > > > +
> > > > > +     list_for_each_entry_safe(fn, tmp, &info->functions, head) {
> > > > > +             vfree(fn->counters);
> > > > > +             list_del(&fn->head);
> > > > > +             kfree(fn);
> > > > > +     }
> > > > > +     kfree(info->filename);
> > > > > +     kfree(info);
> > > > > +}
> > > > > +#endif
> > > > >
> > > > >  #define ITER_STRIDE  PAGE_SIZE
> > > > >
> > > > >
> > > > > base-commit: f78d76e72a4671ea52d12752d92077788b4f5d50
> > > > > --
> > > > > 2.31.0.rc2.261.g7f71774620-goog
> > > > >
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmV5co%2BmMSBbnnXyBXiwOha%3DS987PMA68Xe9jP8gJYkdw%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312220518.rz6cjh33bkwaumzz%40archlinux-ax161.
