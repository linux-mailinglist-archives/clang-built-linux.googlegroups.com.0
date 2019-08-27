Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6WDS3VQKGQEIE36AOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 566329F520
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 23:34:51 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id q27sf71964lfd.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 14:34:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566941690; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wluu2rJYfGdhmEdISRHRCDudDWSCsTk3baIeH9wSPI9EfyKNYiLYwE7tYjuL7wVk6L
         ww3FCURdCoGImUp3gjC/Tly6KNBbtcaFXa+t4NeM33Otuc+56542Y9rr/0nynaLH6zbX
         dEEDRallmW9dRCQIwI5tqRRLYzdNPG0OZ5hNiukivL3ybHtx/aZcrQlXBdWrNZh9OGSe
         kgoPJ9VvUUF8ugIkNAhbRshfyeDUlsIwRE7tDHnfP8Xk50R7NFdI9G9dlql6DF0VjeAl
         bN1J5VTt4cevfOCsDQGgA7+vQwSmsZLWBzfGdpmogJLF9VtPBR8b9Yj3RYDpG9t6bP+J
         shPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=S1RWjaCH3XKTOrJjoPWrO2MKsHx8hXHDECiI/K0zq/0=;
        b=MBBmTxGWXGccXKDyvtczfQ/Lf72Fyc7tRqfaMhzCctr5GF+gmKTWpzUCiyoP9sGFVy
         xgaj4ipcEY/w6p4O7spjlrDyMQQxQ4kjb5SoznHMLoNkoK4OEqhOFj8Ri34CDacBpI4a
         72IiNzjfHU5T+cxoO3FD4rLpY8fodOQVekrPx5lz4kcO+Y7SMI2AYLs1Oa7Rb63uMPxD
         uOkv0ef2nwMETOzzYEYl+tISVvgUfmKKrQaHSMT84hvdbwwggjbD7ektffBmDsFkTimv
         8VQSWy7kDtObpzaCo/2+Der0ZIkqCSQDRXKKowMzCm3HR6h5RlatWkcrJpgHrjXgMFHB
         RFDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cqyny0s9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S1RWjaCH3XKTOrJjoPWrO2MKsHx8hXHDECiI/K0zq/0=;
        b=sqeUq8QuK1kQC3e3KeMPIXhb7LdNU+YqdrFfNkxKfCf6fV3aXZ9EUlCoMK8kBzcmGO
         KoDGYzgYABnJpPkDvIytYtIyD2MI18stszxroRdo241mg8K6425r3Pkn5M/zqhW+Sl5+
         MQqooulrs7gZcxJqKKW7Ix9+zpBc8co2dUNEtLhiAgSU5jcNQnetlXEX/rwq841mbePd
         +17VTBWdjNP0mhsZkofpsd3NLtBQm9XdYgKSZaLFUgBf1osDgXJcmluGe0jKcYvd8qGU
         ewEhAsf6QDkwPhAvWzTPv/j0Lx4vx90LzM9H0b+qLbw9g72GFd8DBvuzZpjJ38A+E5A3
         zm3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S1RWjaCH3XKTOrJjoPWrO2MKsHx8hXHDECiI/K0zq/0=;
        b=tvny9/nx8WOEBbbhegJm2krXSZU+twYbw71v3w0Q47/ELJg1wPbkvvElzCg/LAfnG2
         HaT/O5su6a1QMTuYSoCHZcPRnJhIlpud9oRE3bxdT28wBPTUsm9+I53YOVXbjVfHBYJ6
         odJHEcB22ltJ1yAqs+ETD+wc4Y8MsMdTzaFTJ6JbydBB6i0Z7SnAWUhBbddPxDdEx6st
         FhVPw9aMChBVu29YAN+7M5QpOEtz5BYaBatWGlUQNG3BIr78sqGkC3bMeZ9kZOJ/Jk4m
         dzxzX5X6yK0CM0U6q7KucUEtE5ZcfEMS0tmcZDcWQtl/EamEuwXJzuYFYnCTIsea4Mjf
         EU2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S1RWjaCH3XKTOrJjoPWrO2MKsHx8hXHDECiI/K0zq/0=;
        b=ssGNolH3bTk3c9OuljqO/aVHE56JapcaQRfs57xjfz6k12LcqdkcEqnCBd5mOaA4sm
         ZUdlg/HjDkHz6TqLm1bURf74CaRpGSN0ZLbgrcRDhdhU+f8DgsyLEa+CUD3+dGXglgMX
         O2N1Q46yK0XqWC5TXGqiaWj4lfSr6YF19zc/4GkSyY5k6bhnRbrFb66YHaw7NigSQnVL
         N1CwA+QoJd8CHLdiNfBOcGf8zn70S+V4X/weCC8dIH3BNxdL6cfer6nVidOEmIZ4I30j
         yVloXhDnfdiH+iHISJyHZvM/FMUC99lB/1UQnZSbz27ufMC8lEbQGHhkdlwJecUJsh9E
         X0IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7cLz7Dsj5bs5viZrFLwkd6yjU+1fYOfXxR+K5mqimKDjf5BqN
	BOr5UM6xPBJH0zAaNS3f8C8=
X-Google-Smtp-Source: APXvYqwjY4FoJbFNDIvhwuJqqSyjfppvGnfoAt7W77R3LnyIUGFjwbekdOd1wig1AifmmGhqDGD4ow==
X-Received: by 2002:a2e:891a:: with SMTP id d26mr240821lji.26.1566941690846;
        Tue, 27 Aug 2019 14:34:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9dd6:: with SMTP id x22ls29894ljj.9.gmail; Tue, 27 Aug
 2019 14:34:50 -0700 (PDT)
X-Received: by 2002:a2e:8591:: with SMTP id b17mr219238lji.200.1566941690342;
        Tue, 27 Aug 2019 14:34:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566941690; cv=none;
        d=google.com; s=arc-20160816;
        b=ZVyFvfQVj+mdy3jmeT8ptnCg9pzx7ugA8sDRUig3DQ6f0xvesvPkH7mZit+vKo70IO
         Fyc4QMFW42plHLj51SSogZ5Nm6OJLP0Q12vWsd2ylUvuocNz91w0hTIBg1WkGe9QOOFY
         dsyeOGwybGIza4C3BKyMGNdVDtMv5ACVwEelfHE+dYSLVFIcG6bHzdxloCzpz9nkJmaH
         8g2QZvqUf8AhoGhGtCOjbq5sNicqjnV6W8++PJFijIbzN8e6ggGNApFagCWafMAii96l
         tSpRdu1ByItVkJIkUWONfRb/8dMHKra5sMVijBJOz5PXHb2eW+5vcDeY16sK6/YGPOMN
         5cxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=X7Gmk5o9VsuM2I/A4OdM4iPlEY6vJ+afjmkhaM1iGLM=;
        b=Tqxl9wMuun9EbE8iFi2hIlzBtVyCiY5hDA6JLsToZhcxOXOEo8mym1ELawaIRf8UEs
         0K8Zk5KsUvr0jWp8DcKKBndhOmxqy0my2F9D1IUWVy+KZ416llX/QpS/CDQywI/ZAkaW
         tq9bhlna+hwd3o/pvDkDWo/r2r6o3aKFSUIaRvsafg6Un3Qj9WuqUA57AqMrrUTBdUd9
         g+Y6yw+6HbUqTc35x+Hv44qnLp1ZUFpZDq4Etw3OBckINMMeQI/+/IqfwvqDKneC4NcZ
         Jf8+4NRpAsk/EJjPJ5ZVpkCu3HF4B6TobkZFhdycDbyCKIp527c4+9wfwzEnEstqTqUX
         TmeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cqyny0s9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h19si26897ljj.3.2019.08.27.14.34.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 14:34:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id k2so307216wrq.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 14:34:50 -0700 (PDT)
X-Received: by 2002:a5d:480e:: with SMTP id l14mr290257wrq.96.1566941689543;
        Tue, 27 Aug 2019 14:34:49 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id h8sm188418wrq.49.2019.08.27.14.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 14:34:48 -0700 (PDT)
Date: Tue, 27 Aug 2019 14:34:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] kbuild: enable unused-function warnings for W= build
 with Clang
Message-ID: <20190827213447.GA26954@archlinux-threadripper>
References: <20190827103621.1073-1-yamada.masahiro@socionext.com>
 <20190827192811.GA24626@archlinux-threadripper>
 <CAKwvOd=7Jf13PDC9Q1FMhZUJQsq7Ggn=wRz5xpRY0YrU6tP9Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=7Jf13PDC9Q1FMhZUJQsq7Ggn=wRz5xpRY0YrU6tP9Kw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cqyny0s9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 27, 2019 at 01:58:05PM -0700, Nick Desaulniers wrote:
> On Tue, Aug 27, 2019 at 12:28 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, Aug 27, 2019 at 07:36:21PM +0900, Masahiro Yamada wrote:
> > > GCC and Clang have different policy for -Wunused-function; GCC never
> > > reports unused-function warnings for 'static inline' functions whereas
> > > Clang reports them if they are defined in source files instead of
> > > included headers although it has been suppressed since commit
> > > abb2ea7dfd82 ("compiler, clang: suppress warning for unused static
> > > inline functions").
> > >
> > > We often miss to remove unused functions where 'static inline' is used
> > > in .c files since there is no tool to detect them. Unused code remains
> > > until somebody notices. For example, commit 075ddd75680f ("regulator:
> > > core: remove unused rdev_get_supply()").
> > >
> > > Let's remove __maybe_unused from the inline macro to allow Clang to
> > > start finding unused static inline functions. As always, it is not a
> > > good idea to sprinkle warnings for the normal build, so I added
> > > -Wno-unsued-function for no W= build.
> 
> s/unsued/unused/
> 
> > >
> > > Per the documentation [1], -Wno-unused-function will also disable
> > > -Wunneeded-internal-declaration, which can help find bugs like
> > > commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
> > > mlxplat_mlxcpld_msn201x_items"). (pointed out by Nathan Chancellor)
> > > I added -Wunneeded-internal-declaration to address it.
> > >
> > > If you contribute to code clean-up, please run "make CC=clang W=1"
> > > and check -Wunused-function warnings. You will find lots of unused
> > > functions.
> > >
> > > Some of them are false-positives because the call-sites are disabled
> > > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > > unused-function warnings because it is intended to be a hint for the
> > > compiler's optimization. I prefer __maybe_unused or #ifdef around the
> > > definition.
> 
> I'd say __maybe_unused for function parameters that are used depending
> of ifdefs in the body of the function, otherwise strictly ifdefs.
> 
> > >
> > > [1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function
> > >
> > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> >
> > I am still not a big fan of this as I think it weakens clang as a
> > standalone compiler but the change itself looks good so if it is going
> > in anyways:
> >
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> > I'm sure Nick would like to weigh in as well before this gets merged.
> 
> So right away for an x86_64 defconfig w/ this patch, clang points out:
> 
> drivers/gpu/drm/i915/i915_sw_fence.c:84:20: warning: unused function
> 'debug_fence_init_onstack' [-Wunused-function]
> static inline void debug_fence_init_onstack(struct i915_sw_fence *fence)
>                    ^
> drivers/gpu/drm/i915/i915_sw_fence.c:105:20: warning: unused function
> 'debug_fence_free' [-Wunused-function]
> static inline void debug_fence_free(struct i915_sw_fence *fence)
>                    ^
> 
> The first looks fishy (grep -r debug_fence_init_onstack), the second
> only has a callsite ifdef CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS.
> 
> drivers/gpu/drm/i915/intel_guc_submission.c:1117:20: warning: unused
> function 'ctx_save_restore_disabled' [-Wunused-function]
> static inline bool ctx_save_restore_disabled(struct intel_context *ce)
>                    ^
> drivers/gpu/drm/i915/display/intel_hdmi.c:1696:26: warning: unused
> function 'intel_hdmi_hdcp2_protocol' [-Wunused-function]
> enum hdcp_wired_protocol intel_hdmi_hdcp2_protocol(void)
>                          ^
> arm64 defconfig builds cleanly, same with arm.  Things might get more
> hairy with all{yes|mod}config, but the existing things it finds don't
> look insurmountable to me.  In fact, I'll file bugs in our issue
> tracker (https://github.com/ClangBuiltLinux/linux/issues) for the
> above.
> 
> So I'm not certain this patch weakens existing checks.

Well, we no longer get -Wunused-function warnings without W=1.
Sometimes, that warning is just a result of missed clean up but there
have been instances where it was a real bug:

https://lore.kernel.org/lkml/20190523010235.GA105588@archlinux-epyc/

https://lore.kernel.org/lkml/1558574945-19275-1-git-send-email-skomatineni@nvidia.com/

Having warnings not be equal between compilers out of the box causes
confusion and irritation: https://crbug.com/974884

Is not the objective of ClangBuiltLinux to rely on GCC less?

The only reason that we see the warnings crop up in i915 is because
they add -Wall after all of the warnings get disabled (i.e.
-Wno-unused-function -Wall so -Wunused-function gets enabled again).

To get these warnings after this patch, W=1 has to be used and that
results in a lot of extra warnings. x86_64 defconfig has one objtool
warning right now, W=1 adds plenty more (from both -W flags and lack of
kerneldoc annotations):

https://gist.github.com/175afbca29ead14bd039ad46f4ab0ded

This is just food for thought though.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827213447.GA26954%40archlinux-threadripper.
