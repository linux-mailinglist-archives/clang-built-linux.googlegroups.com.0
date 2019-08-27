Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2VSS3VQKGQE3G4A3DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C329F49F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:58:19 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id z2sf354981qkf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:58:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566939498; cv=pass;
        d=google.com; s=arc-20160816;
        b=LXWuP8xF2pA5SsH1oZvpO6+Zwnnqx/PDFx6m81tI3B2SkY3E7aWFxNFvXROXAtbSbr
         ZlRf86D3KiLP/LLzUtrOzeo+l4ABncRYdreEKBh8SBZzzjc5w8Ow/OEBOSvn2ri2Ovw6
         WlNAAefofPZbmj/UkbW0Dbl3GfB19HFDX3VBNJdxKAHC80RuOZg42LHUIzZ8NC4G2n3l
         AM7mevci/kh3sSFTjbcN3cwlUV7EAVmJkJYld4QvZtWHhIv2qf4rQ6f7v4PHPCW2o06J
         hlBP/hyyI88HLf3tkBzwrncTXjNGP2UJzzOppvH7POqogC9zR/hU7ZXm1UCdZhGjWgY6
         D/2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iizCVQ9kQcuYHG5XOd8pjl7e+40NLowvu908d2kp5Qs=;
        b=P0QzLEDGrW9BVhqXAyf+4aNT7W/azP71Qc5/chdmqsDY/sF+6kf7ncI6wjwYEuG0d8
         XLuvD1jxcte4Y+S3V+vhXbISaepT/hdPxlHBiwe3gos9rim4HO5EjmF9vqfi98wZ9iuN
         3S45T5NsyagmAFOPS0KK1GaQB3eV2nTRRHEnwfmua6EJ9ypUGf0hUTNfA0TgLwI5EPbG
         HIc24VX5qXliIke5oshOQlgf/+9UbmhiyKr0sX+y5s+1aQNJH+a8GVG08KnUxvxATi2y
         /cpXdwQKxN0cTPgnlt30F8phoVZQlUgHXRss8Kj8Geo1pwe236NjROkanyFp/D1CI8OZ
         jdFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bXg67KvM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iizCVQ9kQcuYHG5XOd8pjl7e+40NLowvu908d2kp5Qs=;
        b=dJZs8rhOyIZhd7IJOPj3tgLmSyClQ7fLuuSEtXDomQ3hK2P67GXtY69aA9ZwKVIKkS
         Xor3QSRH5ji9l3ewXKiymMw9WbBbK2tto6rryfXaE82XbPzHF7HK+C4SVjUyzxErQznb
         ycht8RtKWEJeWXQf9MUlV+WtU0s2v+SDtaTTnKCsTu5P9rFJTooC60/jp4tFngXMTgXK
         OfnnV/b/hftXMcsX/0V6Xz0/7OTpxqwq4bOHB9MF2F0L8nud0UBzkrNuARflkaZdU4WC
         VkG0X3EnZyCkyJPTijrxTZQkGhvOdTDImbDMlX/WIaWytZeiU1e+91IIAedYzkzoygbq
         mHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iizCVQ9kQcuYHG5XOd8pjl7e+40NLowvu908d2kp5Qs=;
        b=OgwHBRpXASvYPdsDnydbguRVDGjAcOqvvrlpMO3IrTiokrbFjNW5+7VLMrtI7szosH
         g1i/9hxGNUmweSOJpzzXyex4CqrF5WyIQLUOkGL/wszVxWHjzWv5+886TbM6zsYmAp81
         jePgzx/rOCKM+vNSmnKss8vebz573/xGahPVzllMZf6NXcicZ6JAboFnHqX4530BHeg2
         2zwuySCJ4REW+j3MfzxOdxZn76zcjKzVMMyqnwvWiMEc7pv40WXMm3GImaGWSfVf/F3E
         e6b4Yez6MVg7gD/Kseq9oSwsaiOUh35uMizyeCWxtqR+COP68fd57YZQnX6p7KPE5xAl
         I0tg==
X-Gm-Message-State: APjAAAX7bH6n2Gb0ayT1EdBGVCmPRKHkptcnZSvXB8mvgQyiJ2ra3tW1
	yO6FVecvT6rDcZg/mPnmlVE=
X-Google-Smtp-Source: APXvYqwFDLm09xzJGxKeMcvgQYbYf9q18R+w7caNYyhZyWQmaEpJeR93bDyZj0xvLE19j2/Xsd/qpg==
X-Received: by 2002:ad4:420f:: with SMTP id k15mr473712qvp.187.1566939498433;
        Tue, 27 Aug 2019 13:58:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:670e:: with SMTP id e14ls87748qtp.5.gmail; Tue, 27 Aug
 2019 13:58:18 -0700 (PDT)
X-Received: by 2002:aed:27d5:: with SMTP id m21mr869664qtg.153.1566939498206;
        Tue, 27 Aug 2019 13:58:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566939498; cv=none;
        d=google.com; s=arc-20160816;
        b=ShRhR3kq/cAPWov0G64pNfIg78fcP6t0CCQvlf/8NJW22SJBrFpySRtKrjD9FBTSfi
         nrw+VvIHZjap0LgmtqPIYBgIkBmkOQ94cEFqCHqwUBRImAq+suD0j4n9hDAGpSA+RStL
         NX04zE11HwAvlVQMPbfIb3LOgKEsNeM7eyMP1Wps6BNOYFNUgdR4qeUJggiuuEylS4b/
         l60iLQ9sFoR7C/6NvFeTenxhnXtVjaX8rZlOzBA8Y27Ao3XRi9zbVBZLYsiZ5/I1UeJM
         0QN7b9Ycuwo7VPIre8DB+qYoE5ygYqBiuPUoaZHq3mgU3w69gJejO3dg0S8BHTbxKAGK
         zBYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TXjsSAJv8McRWlbUcLkirZ2NM0D/RICs3+Zd+E1Xf+I=;
        b=mpZqp0Zm244tp14kvzdpncyYFRtBGMf/eJRo8oApikblxuoV2Oq1SZU0SdvWQ6b3hc
         Nwx6ucXCdTtP0p9dMtKowwFpMQ0iSVdQNTxDhSxzJ/i29KiYzCt+fhGEgneXUR6bPQcr
         9yq3biFC+w5R8XLmhvvXHf6mz6No0Kgxpp1yNkj9Q+ns542IZtT1P33d3cU/JX9Hnt3O
         jsBGVn7xVBSe/MlmoD45+0gaMKbVnrLNmf1H6ixsc1xyTE8IIoBa19fGMUltX5FmGPN5
         7ahgy7B+FcPk3KzI5EiDEoXg61jjokAWYJ1cRGlWM+iblt45d/y2RPuU78olSHVDBMkF
         8jYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bXg67KvM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id c79si31759qke.4.2019.08.27.13.58.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:58:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n9so147662pgc.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:58:18 -0700 (PDT)
X-Received: by 2002:a63:61cd:: with SMTP id v196mr330561pgb.263.1566939496499;
 Tue, 27 Aug 2019 13:58:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190827103621.1073-1-yamada.masahiro@socionext.com> <20190827192811.GA24626@archlinux-threadripper>
In-Reply-To: <20190827192811.GA24626@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Aug 2019 13:58:05 -0700
Message-ID: <CAKwvOd=7Jf13PDC9Q1FMhZUJQsq7Ggn=wRz5xpRY0YrU6tP9Kw@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=bXg67KvM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Aug 27, 2019 at 12:28 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Aug 27, 2019 at 07:36:21PM +0900, Masahiro Yamada wrote:
> > GCC and Clang have different policy for -Wunused-function; GCC never
> > reports unused-function warnings for 'static inline' functions whereas
> > Clang reports them if they are defined in source files instead of
> > included headers although it has been suppressed since commit
> > abb2ea7dfd82 ("compiler, clang: suppress warning for unused static
> > inline functions").
> >
> > We often miss to remove unused functions where 'static inline' is used
> > in .c files since there is no tool to detect them. Unused code remains
> > until somebody notices. For example, commit 075ddd75680f ("regulator:
> > core: remove unused rdev_get_supply()").
> >
> > Let's remove __maybe_unused from the inline macro to allow Clang to
> > start finding unused static inline functions. As always, it is not a
> > good idea to sprinkle warnings for the normal build, so I added
> > -Wno-unsued-function for no W= build.

s/unsued/unused/

> >
> > Per the documentation [1], -Wno-unused-function will also disable
> > -Wunneeded-internal-declaration, which can help find bugs like
> > commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
> > mlxplat_mlxcpld_msn201x_items"). (pointed out by Nathan Chancellor)
> > I added -Wunneeded-internal-declaration to address it.
> >
> > If you contribute to code clean-up, please run "make CC=clang W=1"
> > and check -Wunused-function warnings. You will find lots of unused
> > functions.
> >
> > Some of them are false-positives because the call-sites are disabled
> > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > unused-function warnings because it is intended to be a hint for the
> > compiler's optimization. I prefer __maybe_unused or #ifdef around the
> > definition.

I'd say __maybe_unused for function parameters that are used depending
of ifdefs in the body of the function, otherwise strictly ifdefs.

> >
> > [1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
>
> I am still not a big fan of this as I think it weakens clang as a
> standalone compiler but the change itself looks good so if it is going
> in anyways:
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> I'm sure Nick would like to weigh in as well before this gets merged.

So right away for an x86_64 defconfig w/ this patch, clang points out:

drivers/gpu/drm/i915/i915_sw_fence.c:84:20: warning: unused function
'debug_fence_init_onstack' [-Wunused-function]
static inline void debug_fence_init_onstack(struct i915_sw_fence *fence)
                   ^
drivers/gpu/drm/i915/i915_sw_fence.c:105:20: warning: unused function
'debug_fence_free' [-Wunused-function]
static inline void debug_fence_free(struct i915_sw_fence *fence)
                   ^

The first looks fishy (grep -r debug_fence_init_onstack), the second
only has a callsite ifdef CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS.

drivers/gpu/drm/i915/intel_guc_submission.c:1117:20: warning: unused
function 'ctx_save_restore_disabled' [-Wunused-function]
static inline bool ctx_save_restore_disabled(struct intel_context *ce)
                   ^
drivers/gpu/drm/i915/display/intel_hdmi.c:1696:26: warning: unused
function 'intel_hdmi_hdcp2_protocol' [-Wunused-function]
enum hdcp_wired_protocol intel_hdmi_hdcp2_protocol(void)
                         ^
arm64 defconfig builds cleanly, same with arm.  Things might get more
hairy with all{yes|mod}config, but the existing things it finds don't
look insurmountable to me.  In fact, I'll file bugs in our issue
tracker (https://github.com/ClangBuiltLinux/linux/issues) for the
above.

So I'm not certain this patch weakens existing checks.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D7Jf13PDC9Q1FMhZUJQsq7Ggn%3DwRz5xpRY0YrU6tP9Kw%40mail.gmail.com.
