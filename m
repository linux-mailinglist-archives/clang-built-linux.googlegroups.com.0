Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBOOS3VQKGQE2YUCX5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5929F5AB
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 23:56:22 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id v133sf170791oia.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 14:56:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566942981; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rach8eqFKl3lzhi8Kjiyy3WLENOL6MpbPvWpu2IbJaLWwN3WXxC9W2KMnM0kCSuCYe
         c5oym3gS0rCbRZWTBJXL54pkWuPXHtAWImJw/OKNySFGeBtMuSXVFOVk8D2FoRQitKPM
         AFfkxCk8siD3V4dXwef2Dt+tb3r3qh1mx38HvKOZtc/wwJbDCphJdjXe+eEYOJECcRGL
         UnpiWe70l4TGHVrNX/NfEsXEy0LK2NXbJXb6YNZwxvtY+Dl7BiftiDktSygH+cs0B1u+
         HcR2iSdVzAvl/BuYxjQKwkkF0RHkf+D4KsmKyltq9mCnADvQ2XC/hgk+P6/gCu91kGGx
         zbvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aphJYOF7LxUXyYoGUs/jf3dt7QqIwsP1X0QF6C4srMs=;
        b=qAksMiVr5xmsorjWEQAHXEMeP8RuQh0uQ3+L3aR7boiZRRdSWI/txoN9E1JQxyZQx1
         BJVNRwsW51CWkqNa+v3UQ5E8bbwik7yd27WwHa3wlh2jcmlCpRmGavtnsU8kETCQhdCd
         3xCsyvu6MKOeHO9YAPZB6o3s6OPAUkfiYW6jt7m713TePjPxMJgktv5h6cE5xORcExu8
         VaiE6/I2cgOfqf06yGbhJyhz7IOMPDcxz6DhF4us8o35FqHfYcOSavb4Ht42K41w14So
         tdoZHln+tzYfRCytLV28PKUVlxlMnSaRwh/ea3jSz9urQhGvkOeWQAgEB2HL+XsUvMj9
         7xAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BNoJCtJR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aphJYOF7LxUXyYoGUs/jf3dt7QqIwsP1X0QF6C4srMs=;
        b=RiE+or40zEpZFfmtthizrQKMgnB6zJ85DLk3lHhFLCQz5FS3EIqxo7Sv/1Vrjeivo2
         5bBhDexmao0uYShoVKLgIJKqpaGA+PHybE77qKh8F17YhQfFCNswxckOgZXiCL58KTMs
         JRypgAZE5/1bIfN0TBqoAL6lQWXq8vz3BozmIRdhWd6h2PRj2QYOpExjKfEqUDTNm2Ry
         7n1fuzD15Yg16P7D6eoHi3HLPw8lMrMk/8xhw4o7YumI6x946ZxgpsGVFADhtjPVmjYu
         kuO8KnZ3QVD/Jakh5KtwuYw1wxBcmFGcH4WIdCjYPtaROFLHdJCA/Qk06nsmC0FWwiJp
         M2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aphJYOF7LxUXyYoGUs/jf3dt7QqIwsP1X0QF6C4srMs=;
        b=MNcStdHG7JbTDpDjqz2+xf0AgENAyH4Mr6hQWeR8RvSzieGYvcTrZU/wlkpdveww7v
         EuFbMMlDiNB6kDJq3swgBReCZXx0Zv+Rkp4T34RtGPDR4Ec/q2JDbPXjO1H953TdC3qs
         S/cpvoCDN9qmc4znPoSZ7p/JsKmNAxAZPlAVEL4sGgszhuN6xdpAQBHcIopL2SUXhxRZ
         ujqpLkybtOZBiS+0T2GHmR/kPvs6TtbzwwSGhnkOeA30KYwf9Ww43cLeo3gK+sZfK15w
         clSE9VBr/PJ/giZGVl2fwzRmrnRICgFUfO6oUjeC0NJeUNcDBVerallUO26CRJh5XGn3
         NKig==
X-Gm-Message-State: APjAAAW3HlNe6auk+ScxYYkX53tGbMMrk6ptYEXuENCqFTN+bsK/OREe
	6dPj6VAIThJeJ5KLMbdoC1M=
X-Google-Smtp-Source: APXvYqzeWU+VooXzTPsvpP6VR+dtnsc6UoTLuLgo6t3Oss87xYl0NDrE/XGls+wkvdPyeFPCq6RI0A==
X-Received: by 2002:aca:c355:: with SMTP id t82mr644227oif.99.1566942981590;
        Tue, 27 Aug 2019 14:56:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6d15:: with SMTP id o21ls13416otp.2.gmail; Tue, 27 Aug
 2019 14:56:21 -0700 (PDT)
X-Received: by 2002:a05:6830:4a1:: with SMTP id l1mr701588otd.248.1566942981355;
        Tue, 27 Aug 2019 14:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566942981; cv=none;
        d=google.com; s=arc-20160816;
        b=fQ+a091lKD+qUuAEGSV5Ou2dSJkj9NMLbVxQNDJyT68z5xKEt5GV+muvWyzBS21W5j
         MMUT6NtuuuYOwk6+67rPz1Iub5JRuG5jt8qt5VcpTVe8zAh9j9ZOB8uI0uVFs1utPjMw
         InXZ6DPac0hS8MabLBf8XvIxM6ypmQWkojgOlAibWJwvgTwf1nLIX1DsNfCjEjbZUrqM
         oVVX8jhCCdYIY8b0AkJbGdI196u9UywUmMDanWi3EJSdL1ff2Es3fd6Pg+Jesq/SUydG
         YVVykqgmYclVrswBHVukIFJi8hPKpT2DBLyKuHq1+xvgnxGWxrgV1xBim655Efw5BjJI
         llZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cgrXiX6w+iXAJx451uKI5IvGXQ8JzxadwvN8II0tDoE=;
        b=t454qUJTt+kKHQYJpzALL/RjCIM/Qlc307OIzrC9CG0FISC4Ftk21qCZEsvrDJv2pp
         FdFBsFT70tmgM0Kz+D2rXTtImGEeZTmQHVPb8ks1MshOtjeifZ4S1NB99bNQm6uOJkoP
         VdKeps1A00ng9k7NyXd/1SonjujY8dUvmnvbykLdZE4FUPhNVyL8gsc7aEjMxuKCfzZc
         Mi8S6WKsMU7AlDD629/GINcN+EGvz8iGHaYMHWM26W0qUIO76rr/5iPr0Ro1row4/NhV
         3wv/WP8n530swwSo5rfljaM2oKhVJgMrDZy7sEms8HEo9jgsaVv38x3e0OLGd8JVF2Pl
         v9gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BNoJCtJR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id p23si42240ota.2.2019.08.27.14.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 14:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id d85so274816pfd.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 14:56:21 -0700 (PDT)
X-Received: by 2002:a65:690b:: with SMTP id s11mr573264pgq.10.1566942980152;
 Tue, 27 Aug 2019 14:56:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190827103621.1073-1-yamada.masahiro@socionext.com>
 <20190827192811.GA24626@archlinux-threadripper> <CAKwvOd=7Jf13PDC9Q1FMhZUJQsq7Ggn=wRz5xpRY0YrU6tP9Kw@mail.gmail.com>
 <20190827213447.GA26954@archlinux-threadripper>
In-Reply-To: <20190827213447.GA26954@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Aug 2019 14:56:07 -0700
Message-ID: <CAKwvOd=pQm7ytZSJeRzXoWwzouDADOYkO8S_+zSPtXOAO3Jc5g@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: enable unused-function warnings for W= build
 with Clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BNoJCtJR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Aug 27, 2019 at 2:34 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Aug 27, 2019 at 01:58:05PM -0700, Nick Desaulniers wrote:
> > On Tue, Aug 27, 2019 at 12:28 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Tue, Aug 27, 2019 at 07:36:21PM +0900, Masahiro Yamada wrote:
> > > > GCC and Clang have different policy for -Wunused-function; GCC never
> > > > reports unused-function warnings for 'static inline' functions whereas
> > > > Clang reports them if they are defined in source files instead of
> > > > included headers although it has been suppressed since commit
> > > > abb2ea7dfd82 ("compiler, clang: suppress warning for unused static
> > > > inline functions").
> > > >
> > > > We often miss to remove unused functions where 'static inline' is used
> > > > in .c files since there is no tool to detect them. Unused code remains
> > > > until somebody notices. For example, commit 075ddd75680f ("regulator:
> > > > core: remove unused rdev_get_supply()").
> > > >
> > > > Let's remove __maybe_unused from the inline macro to allow Clang to
> > > > start finding unused static inline functions. As always, it is not a
> > > > good idea to sprinkle warnings for the normal build, so I added
> > > > -Wno-unsued-function for no W= build.
> >
> > s/unsued/unused/
> >
> > > >
> > > > Per the documentation [1], -Wno-unused-function will also disable
> > > > -Wunneeded-internal-declaration, which can help find bugs like
> > > > commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
> > > > mlxplat_mlxcpld_msn201x_items"). (pointed out by Nathan Chancellor)
> > > > I added -Wunneeded-internal-declaration to address it.
> > > >
> > > > If you contribute to code clean-up, please run "make CC=clang W=1"
> > > > and check -Wunused-function warnings. You will find lots of unused
> > > > functions.
> > > >
> > > > Some of them are false-positives because the call-sites are disabled
> > > > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > > > unused-function warnings because it is intended to be a hint for the
> > > > compiler's optimization. I prefer __maybe_unused or #ifdef around the
> > > > definition.
> >
> > I'd say __maybe_unused for function parameters that are used depending
> > of ifdefs in the body of the function, otherwise strictly ifdefs.
> >
> > > >
> > > > [1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function
> > > >
> > > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > >
> > > I am still not a big fan of this as I think it weakens clang as a
> > > standalone compiler but the change itself looks good so if it is going
> > > in anyways:
> > >
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > >
> > > I'm sure Nick would like to weigh in as well before this gets merged.
> >
> > So right away for an x86_64 defconfig w/ this patch, clang points out:
> >
> > drivers/gpu/drm/i915/i915_sw_fence.c:84:20: warning: unused function
> > 'debug_fence_init_onstack' [-Wunused-function]
> > static inline void debug_fence_init_onstack(struct i915_sw_fence *fence)
> >                    ^
> > drivers/gpu/drm/i915/i915_sw_fence.c:105:20: warning: unused function
> > 'debug_fence_free' [-Wunused-function]
> > static inline void debug_fence_free(struct i915_sw_fence *fence)
> >                    ^
> >
> > The first looks fishy (grep -r debug_fence_init_onstack), the second
> > only has a callsite ifdef CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS.
> >
> > drivers/gpu/drm/i915/intel_guc_submission.c:1117:20: warning: unused
> > function 'ctx_save_restore_disabled' [-Wunused-function]
> > static inline bool ctx_save_restore_disabled(struct intel_context *ce)
> >                    ^
> > drivers/gpu/drm/i915/display/intel_hdmi.c:1696:26: warning: unused
> > function 'intel_hdmi_hdcp2_protocol' [-Wunused-function]
> > enum hdcp_wired_protocol intel_hdmi_hdcp2_protocol(void)
> >                          ^
> > arm64 defconfig builds cleanly, same with arm.  Things might get more
> > hairy with all{yes|mod}config, but the existing things it finds don't
> > look insurmountable to me.  In fact, I'll file bugs in our issue
> > tracker (https://github.com/ClangBuiltLinux/linux/issues) for the
> > above.
> >
> > So I'm not certain this patch weakens existing checks.
>
> Well, we no longer get -Wunused-function warnings without W=1.
> Sometimes, that warning is just a result of missed clean up but there
> have been instances where it was a real bug:
>
> https://lore.kernel.org/lkml/20190523010235.GA105588@archlinux-epyc/
>
> https://lore.kernel.org/lkml/1558574945-19275-1-git-send-email-skomatineni@nvidia.com/
>
> Having warnings not be equal between compilers out of the box causes
> confusion and irritation: https://crbug.com/974884
>
> Is not the objective of ClangBuiltLinux to rely on GCC less?
>
> The only reason that we see the warnings crop up in i915 is because
> they add -Wall after all of the warnings get disabled (i.e.
> -Wno-unused-function -Wall so -Wunused-function gets enabled again).
>
> To get these warnings after this patch, W=1 has to be used and that
> results in a lot of extra warnings. x86_64 defconfig has one objtool
> warning right now, W=1 adds plenty more (from both -W flags and lack of
> kerneldoc annotations):
>
> https://gist.github.com/175afbca29ead14bd039ad46f4ab0ded
>
> This is just food for thought though.

So if we took just the hunk against include/linux/compiler_types.h
from this patch, we'd be back in a situation pre-commit-abb2ea7dfd82
("compiler, clang: suppress warning for unused static inline
functions").  Hmm...

I would like to minimize the number of Clang specific warnings that
are disabled in scripts/Makefile.extrawarn.

Masahiro, does your patch correctly make -Wunused-function work for
clang at W=1?  It looks like -Wunused gets added to warning-1, but
then -Wno-unused-function gets added to KBUILD_CFLAGS after `warning`
does.  Will that work correctly?  I'd imagine that at W=1,
KBUILD_CFLAGS for clang will look like:
... -Wunused -Wno-unused-function ...
which is probably not what we want?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DpQm7ytZSJeRzXoWwzouDADOYkO8S_%2BzSPtXOAO3Jc5g%40mail.gmail.com.
