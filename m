Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ6HV6BAMGQE7NWIU4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 59057339960
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 22:58:00 +0100 (CET)
Received: by mail-ej1-x63c.google.com with SMTP id fy8sf10689149ejb.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 13:58:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615586280; cv=pass;
        d=google.com; s=arc-20160816;
        b=BEyHoVKWsM5srnJCwjCVQEPZ3h5UOuClSzRc3w70ZTS/ZlJOvuAWc20RuMEfw2V2gn
         ydZbUrgvrbhBCeEdaYvwjhl+fXQLENxNMPcZxDnnATcVc0bPXWMrLmjWYK9C5wO73Hyv
         tQhxR3+07OlAGrpNKxLtP8Q3zO6sMwsrWcjcAJ/N+O5xAF+OoFeWi/qLYYeXLxg+z/3j
         bjxYwnFf2RoHw1EbDaZ4LmpW5U627rZYOYclkl+XjJ7OIAPtaBZUxaAFEF9L/b/InkKD
         9LZbONkimRjzpHyedS/0x/kpE3w9CzyAOMqHd4GGMzC4vXXvCpwpanV69D6ng6qGg+w7
         yzlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uEEzdwYsdahuCf6YqQEBgfKD2AYWdPl8RDO6UB/t1w8=;
        b=le9AWiJZeawPm4NCHI6OV4CZHqkP85PBEwvDaRoflWOXlOfn6+DK8DgLjESVot6i0T
         MXwYml2h+qi2v+8vHJBPc+KtpnasR1d7EkyL09QFFW2LHeyLj2uWREhXMRE6PolojzK+
         bZNnSaSqVB16InhEz9fmq3OsH4x6JSXYpFzMhDbZSeXu+7F6pmm3PooPoxR8o90jufYX
         +1nHq3hHD/Qrqk8xfco4+gWV9nuqkonvfw+ZNJLlscNJw1gdxQVQfvLt2a28FrEfz0NC
         zIxQJ68qnq4IHWW1x1Pg08mbLUTJjhEo/3NYskF5bXAfKI4UlqqNW3GOd6bYGzRaYhsc
         /TuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jHfz0v9R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uEEzdwYsdahuCf6YqQEBgfKD2AYWdPl8RDO6UB/t1w8=;
        b=dT0yadk+tmPppbYdeN214D/PTVLi/KO7wc9a9DM2mR+WQSSCxZyZdy1k7N4OYYIPwa
         SpsfcEOezq7cgxU7DgrZXLL4pqUqXdpwLs4hHROowGu4pbMREmk2r6ZxX3ZSI/5jqEPp
         omcVh3I29QDIakoGO8l/3bjBPStJGUF5mBfkBOOl7OJH99hJMohVP6OnCfOkd6LGCCQm
         CLHfIWNJYhvcODH+NwdGlKmFv4nIG3IvgmHDj0F1sqwu2RF55+Lb1VXDyhAuvoBnJlDy
         7q9HBeh/zNm+EqWr5d+dY9AGViL1pfQ3k6/ae1AqWZwTVJhZ2RNkTR1hQ6pvUKnisx9C
         OasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uEEzdwYsdahuCf6YqQEBgfKD2AYWdPl8RDO6UB/t1w8=;
        b=CDpPWCmncv2LGPcdygoJuSwX6nEpo0XhzDeIdcC8TgaF/oFFSOQTnGDDCpSNsHAueX
         s4SALxszJvvbKmPO58JaD7huk3PlZuKkTIuoHm+dswqWtf+Tm96DqcwRj4V8x/JenD4U
         X6yvjGYiU0BWu+VfE8giNgEW+v6rltxwRoC7mRrAJ7s73Sdeuc284BVcmZ9zNYlCXz1P
         sg3EHWYCEvlJ3itW6OvCjVevQtjGircbvI1rg4YZVAzl/gSrhkMRnIfVGqTH8Mlap6f1
         orT5TTVriKkJugn3y9WL5072mCxprXGtJaaqDoq5C6XEDyIVuZkwH54mk2Y4fqPJidaq
         SC2w==
X-Gm-Message-State: AOAM5333zAfehrT8W6pNx29+q90q7b3vB56o4LwOpVbCoA1lMD5d9W2U
	Aa8i2nNXY9wmGStxHYe9Txg=
X-Google-Smtp-Source: ABdhPJyEKQHljJXXpdi1CTI83zLdRAvnIkxb41axfPrKCR2Mx6NWbjakXITNZJq5JOLx90/RcK0bYg==
X-Received: by 2002:a17:907:33c6:: with SMTP id zk6mr10557345ejb.228.1615586280086;
        Fri, 12 Mar 2021 13:58:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:97c6:: with SMTP id js6ls2862281ejc.2.gmail; Fri, 12
 Mar 2021 13:57:59 -0800 (PST)
X-Received: by 2002:a17:907:98f5:: with SMTP id ke21mr10917381ejc.552.1615586279168;
        Fri, 12 Mar 2021 13:57:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615586279; cv=none;
        d=google.com; s=arc-20160816;
        b=kmNR4uw7kN6vbKx7Kj9b48hiySaBLoiJULeckXxLyW7i4TG/HDdmM7wcyjmGuZOjre
         ghVBOrrjUPjzYA2GIphaF5nY25byLmlDdACb09PEtKk0t5SxKYO8eLC1Exf4UNYGH0aO
         PzNpQxL+Zcwcj5nqvDlv2pvFcPZgt/f8JOG46iWYK2KBLv2gAFtLAjxh2z8Xaor7da9+
         HsOB1elnMtuLsEqf27uS1PUwXQkRW0Y5U7Gxoe6S3pKcFp01NKrMvLYCPpxEHC9etT8U
         jMG3ubyXLfNd6eLRLj2znjB2XKixBsrCWBYfw9ZIU4HD3B46CRoI1HMAeI2rkc4UuRDR
         CQrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Gu04lr85q8k7l/nV+stOfSlk/c2VzR/95HNq8gRDx1w=;
        b=H1YvYPs7ig39xfcVfOBzVHcS6eciZ6P7hoHAcJieKKjOuQVHC53y8WkLUxxqa7tQec
         ZUE/ulMBfOmjv+Um5/pYEr0MUUTPQfJcj+eJUryFZqhzsXX2xBXCpGS327INXd5CSyvE
         yTM4JmBZ2Dv9c1PF32ii5f4z/dUQOupsPh0Qmv7vKnclxFtrjA+3P/m8E6UR4Afjs6sg
         jylrLMDt4ZSlRjpyVFqUvkWnvrWJAuB+Ur++NaMM9F+V1VeEMVjycwjpIFHl5GJSyGMJ
         5q8zF0f3KaOlMukdQwV2q+WrQxqfDLBk4s3pcxJnvBYxyOa5xAQM8r4b9UxcFd0XPu+6
         3u1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jHfz0v9R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id w5si238358edv.1.2021.03.12.13.57.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 13:57:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id f16so9148155ljm.1
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 13:57:59 -0800 (PST)
X-Received: by 2002:a2e:b008:: with SMTP id y8mr3360296ljk.233.1615586278411;
 Fri, 12 Mar 2021 13:57:58 -0800 (PST)
MIME-Version: 1.0
References: <20210312192139.2503087-1-ndesaulniers@google.com>
 <20210312195815.2hnhuyk3qo4p7ysr@archlinux-ax161> <CAKwvOdnTVobEoOR2n41qsGMZ50ZYBa8zOvV+Lek86r84racidA@mail.gmail.com>
 <20210312205151.orzr7hxhxngnftxi@archlinux-ax161>
In-Reply-To: <20210312205151.orzr7hxhxngnftxi@archlinux-ax161>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Mar 2021 13:57:47 -0800
Message-ID: <CAKwvOdmV5co+mMSBbnnXyBXiwOha=S987PMA68Xe9jP8gJYkdw@mail.gmail.com>
Subject: Re: [PATCH] gcov: fix clang-11+ support
To: Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Fangrui Song <maskray@google.com>, Prasad Sodagudi <psodagud@quicinc.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jHfz0v9R;       spf=pass
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

On Fri, Mar 12, 2021 at 12:51 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Mar 12, 2021 at 12:14:42PM -0800, Nick Desaulniers wrote:
> > On Fri, Mar 12, 2021 at 11:58 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > On Fri, Mar 12, 2021 at 11:21:39AM -0800, Nick Desaulniers wrote:
> > > > LLVM changed the expected function signatures for llvm_gcda_start_file()
> > > > and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
> > > > or newer may have noticed their kernels failing to boot due to a panic
> > > > when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
> > > > the function signatures so calling these functions doesn't panic the
> > > > kernel.
> > > >
> > > > When we drop clang-10 support from the kernel, we should carefully
> > > > update the original implementations to try to preserve git blame,
> > > > deleting these implementations.
> > > >
> > > > Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> > > > Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> > > > Cc: Fangrui Song <maskray@google.com>
> > > > Reported-by: Prasad Sodagudi<psodagud@quicinc.com>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > > I can reproduce the panic (as a boot hang) in QEMU before this patch and
> > > it is resolved after it so:
> > >
> > > Tested-by: Nathan Chancellor <nathan@kernel.org>
> > >
> > > However, the duplication hurts :( would it potentially be better to just
> > > do the full update to clang-11+ and require it for CONFIG_GCOV_KERNEL?
> > >
> > >     depends on CC_IS_GCC || CLANG_VERSION >= 110000?
> >
> > I'm not opposed, and value your input on the matter.  Either way, this
> > will need to be back ported to stable.  Should we be concerned with
> > users of stable's branches before we mandated clang-10 as the minimum
> > supported version?
> >
> > commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")
> >
> > first landed in v5.10-rc1. Does not exist in v5.4.y.  The diff you
>
> Hmmm fair point, I did not realize that this support had landed in 5.2
> meaning that 5.4 needs it as well at 5.10.
>
> > suggest is certainly easier to review to observe the differences, and
> > I we don't have users of the latest Android or CrOS kernels using
> > older clang, but I suspect there may be older kernel versions where if
> > they try to upgrade their version of clang, GCOV support will regress
> > for them.  Though, I guess that's fine since either approach will fix
> > this for them. I guess if they don't want to upgrade from clang-10 say
> > for example, then this approach can be backported to stable.
>
> If people are happy with this approach, it is the more "stable friendly"
> change because it fixes it for all versions of clang that should have
> been supported at their respective times. Maybe it is worthwhile to do
> both? This change gets picked up with a Cc: stable@vger.kernel.org then
> in a follow up patch, we remove the #ifdef's and gate GCOV on clang-11?
> The CLANG_VERSION string is usually what we will search for when
> removing old workarounds.

Sounds like we're on the same page; will send a v2 with your
recommendation on top.

> Additionally, your patch could just use
>
> #if CLANG_VERSION <= 110000
>
> to more easily see this. I have no strong opinion one way or the other
> though. If people are happy with this approach, let's do it.

Err that would be nicer, but:
kernel/gcov/clang.c:78:5: warning: 'CLANG_VERSION' is not defined,
evaluates to 0 [-Wundef]
#if CLANG_VERSION < 110000
    ^
kernel/gcov/clang.c:110:5: warning: 'CLANG_VERSION' is not defined,
evaluates to 0 [-Wundef]
#if CLANG_VERSION < 110000
    ^
kernel/gcov/clang.c:130:5: warning: 'CLANG_VERSION' is not defined,
evaluates to 0 [-Wundef]
#if CLANG_VERSION < 110000
    ^
kernel/gcov/clang.c:330:5: warning: 'CLANG_VERSION' is not defined,
evaluates to 0 [-Wundef]
#if CLANG_VERSION < 110000
    ^
kernel/gcov/clang.c:420:5: warning: 'CLANG_VERSION' is not defined,
evaluates to 0 [-Wundef]
#if CLANG_VERSION < 110000
    ^

Did we just break this in commit aec6c60a01d3 ("kbuild: check the
minimum compiler version in Kconfig") in v5.12-rc1?  So I'll keep it
as is for v2, but we should discuss with Masahiro and Miguel if we
should be removing CLANG_VERSION even if there are no in tree users at
the moment.  (I guess I could re-introduce it in my series for v2, but
that will unnecessarily complicate the backports, so I won't).  My
fault for not catching that in code review.

>
> Cheers,
> Nathan
>
> > >
> > > > ---
> > > >  kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
> > > >  1 file changed, 69 insertions(+)
> > > >
> > > > diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> > > > index c94b820a1b62..20e6760ec05d 100644
> > > > --- a/kernel/gcov/clang.c
> > > > +++ b/kernel/gcov/clang.c
> > > > @@ -75,7 +75,9 @@ struct gcov_fn_info {
> > > >
> > > >       u32 num_counters;
> > > >       u64 *counters;
> > > > +#if __clang_major__ < 11
> > > >       const char *function_name;
> > > > +#endif
> > > >  };
> > > >
> > > >  static struct gcov_info *current_info;
> > > > @@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
> > > >  }
> > > >  EXPORT_SYMBOL(llvm_gcov_init);
> > > >
> > > > +#if __clang_major__ < 11
> > > >  void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> > > >               u32 checksum)
> > > >  {
> > > > @@ -113,7 +116,17 @@ void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> > > >       current_info->checksum = checksum;
> > > >  }
> > > >  EXPORT_SYMBOL(llvm_gcda_start_file);
> > > > +#else
> > > > +void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
> > > > +{
> > > > +     current_info->filename = orig_filename;
> > > > +     current_info->version = version;
> > > > +     current_info->checksum = checksum;
> > > > +}
> > > > +EXPORT_SYMBOL(llvm_gcda_start_file);
> > > > +#endif
> > > >
> > > > +#if __clang_major__ < 11
> > > >  void llvm_gcda_emit_function(u32 ident, const char *function_name,
> > > >               u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
> > > >  {
> > > > @@ -133,6 +146,24 @@ void llvm_gcda_emit_function(u32 ident, const char *function_name,
> > > >       list_add_tail(&info->head, &current_info->functions);
> > > >  }
> > > >  EXPORT_SYMBOL(llvm_gcda_emit_function);
> > > > +#else
> > > > +void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
> > > > +             u8 use_extra_checksum, u32 cfg_checksum)
> > > > +{
> > > > +     struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> > > > +
> > > > +     if (!info)
> > > > +             return;
> > > > +
> > > > +     INIT_LIST_HEAD(&info->head);
> > > > +     info->ident = ident;
> > > > +     info->checksum = func_checksum;
> > > > +     info->use_extra_checksum = use_extra_checksum;
> > > > +     info->cfg_checksum = cfg_checksum;
> > > > +     list_add_tail(&info->head, &current_info->functions);
> > > > +}
> > > > +EXPORT_SYMBOL(llvm_gcda_emit_function);
> > > > +#endif
> > > >
> > > >  void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
> > > >  {
> > > > @@ -295,6 +326,7 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
> > > >       }
> > > >  }
> > > >
> > > > +#if __clang_major__ < 11
> > > >  static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > > >  {
> > > >       size_t cv_size; /* counter values size */
> > > > @@ -322,6 +354,28 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > > >       kfree(fn_dup);
> > > >       return NULL;
> > > >  }
> > > > +#else
> > > > +static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> > > > +{
> > > > +     size_t cv_size; /* counter values size */
> > > > +     struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
> > > > +                     GFP_KERNEL);
> > > > +     if (!fn_dup)
> > > > +             return NULL;
> > > > +     INIT_LIST_HEAD(&fn_dup->head);
> > > > +
> > > > +     cv_size = fn->num_counters * sizeof(fn->counters[0]);
> > > > +     fn_dup->counters = vmalloc(cv_size);
> > > > +     if (!fn_dup->counters) {
> > > > +             kfree(fn_dup);
> > > > +             return NULL;
> > > > +     }
> > > > +
> > > > +     memcpy(fn_dup->counters, fn->counters, cv_size);
> > > > +
> > > > +     return fn_dup;
> > > > +}
> > > > +#endif
> > > >
> > > >  /**
> > > >   * gcov_info_dup - duplicate profiling data set
> > > > @@ -362,6 +416,7 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
> > > >   * gcov_info_free - release memory for profiling data set duplicate
> > > >   * @info: profiling data set duplicate to free
> > > >   */
> > > > +#if __clang_major__ < 11
> > > >  void gcov_info_free(struct gcov_info *info)
> > > >  {
> > > >       struct gcov_fn_info *fn, *tmp;
> > > > @@ -375,6 +430,20 @@ void gcov_info_free(struct gcov_info *info)
> > > >       kfree(info->filename);
> > > >       kfree(info);
> > > >  }
> > > > +#else
> > > > +void gcov_info_free(struct gcov_info *info)
> > > > +{
> > > > +     struct gcov_fn_info *fn, *tmp;
> > > > +
> > > > +     list_for_each_entry_safe(fn, tmp, &info->functions, head) {
> > > > +             vfree(fn->counters);
> > > > +             list_del(&fn->head);
> > > > +             kfree(fn);
> > > > +     }
> > > > +     kfree(info->filename);
> > > > +     kfree(info);
> > > > +}
> > > > +#endif
> > > >
> > > >  #define ITER_STRIDE  PAGE_SIZE
> > > >
> > > >
> > > > base-commit: f78d76e72a4671ea52d12752d92077788b4f5d50
> > > > --
> > > > 2.31.0.rc2.261.g7f71774620-goog
> > > >
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmV5co%2BmMSBbnnXyBXiwOha%3DS987PMA68Xe9jP8gJYkdw%40mail.gmail.com.
