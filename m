Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6VH4LUQKGQE22BAZWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D232973526
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 19:23:07 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id x83sf20552800vkx.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 10:23:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563988987; cv=pass;
        d=google.com; s=arc-20160816;
        b=VaAc+oqgX/Tr6disJId7Jul1EregpBtzeLRjrwaXt7IdifgGr59tjnkcm++sXqpNKH
         DILf0wTaIErar8LS5wSblb7QA3sg/wVvurfSdCIFBz9xv7xDdDaLs23sGyDM0Cb1E4pB
         QTi6QDQ8V8mY+RcdpGbhPfxvqFV3AqGsjpudbq/RGQv/iemwQxkbd9KplXUNX9HGdLJu
         taZBgskgeuZW3nQSmcISGEVXHIhExSVKJcvqaUUgxRF3Yvnz83GPZOLwnv/FF8j9TKAi
         VFYHq1sf7ZdR+u8d6O68xP1o3MJ0OQet6K+6LBdtjsDUkBTj5pi/NqwijP0RIbez/nc7
         p8Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8rIgRjXJRc+JgMUvpy+HYdXiaFcq/qQNxjp4MOio0YQ=;
        b=CX/nlIKaRTv/28E31uR0x6l68IWwqtL5o0j+Dr8+bLKex6dCA4PRO+RsUANNVHVfQu
         bA8YUgF46y/vzizunKeEkVtgxnM/15nazuRURwX2xU9IDn/7XjTGYbtjXKGrf2zz7+fw
         GbtUZ8rq0SNOZsGRmDAdjQIJk5c509IWW544fv7+fEg/OuG+Ix1MDnAmFjgXmUmP4DMm
         6efhSRpbm0VpvbrqNdM+DKQIExKd0YYwapRqQTL/JadrCzSZhOtM/IJyQYm+x/GOgWGV
         LBp6PWaW/W13xnMdAXiqhFxZqBCtYKrmbgV/l7KmSNHehKhH2NQy74+/KLYF1aMrGBpB
         fGrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mwmzPjwa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8rIgRjXJRc+JgMUvpy+HYdXiaFcq/qQNxjp4MOio0YQ=;
        b=iFHOLUVnVnJQc33KplX521p9H6tC8kuwcBS7Q8ryX1JFJI+BzyI+zfjKljwS3SQLrq
         O1W03/xUbpz05EtZjgxiJkJcZGgcnyMEWkQ83GcNTrqRu1TE3GVGgUcviwjBq/vE6AO8
         Et9NuVXRG8O0PMnlulSv24MCYpqhlv9uk6Cls0O512ANrXGwpbHnRASJNncNNJQBku4j
         8vkEeyGRIN5ffWWZa4WT/IKC+o4fefODQgWZCWMGXvEY3IzzyPLdEapQYx6mZCjIQ+bt
         GFF8HOVo914O2EfumAQ6o/cAleYocCsQbvLp3EqORWUOxXQ6koKDEbnew9+0AyTI/8vO
         rK8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8rIgRjXJRc+JgMUvpy+HYdXiaFcq/qQNxjp4MOio0YQ=;
        b=Sc/5y34aLnNLrYVxlgM6rjH+1ymKGkRdowGr3H3AvEj5QKDUY0vxTMmi3Vy9Ii1hnH
         /fu8akwKRvTFCBa/CuIVlrG3vr984JcJcoFcJ0Xs5HEixH2NMRu6/6GQ2UAEUW8fvxzK
         J22A0ebfkHgJ6exoPy9yezYyWZszLct9hD0ts0l/MJHti/neEQ0af/zaAZexN0vVj6Vd
         ejhuUsUFa5k1JZNN1b5/d6v+3KMx4RcXWEmAJB5MVPhIJuul0qrkV5t7IuZ8RVjEod9S
         ZJY2xJPezlcQc1JKLdj1Wan3iqV6bgHYTOk56pBF0FAG9kGcbB+XWel5JIJuWObA2OWo
         J5yA==
X-Gm-Message-State: APjAAAWl6Nu13A4QMuwo/xqnThX8iHUDSfYAWFsyZx7xTm9qPgZd0v3P
	3LRgShJb0kL4kRS7xChxi4U=
X-Google-Smtp-Source: APXvYqy+SXkSU89XON+2JmQ6xsP29AjLK2CUfuPi/RHrzjeZLNngAeAvKKz31YRqz7rlEyGOqBtSuA==
X-Received: by 2002:a67:c994:: with SMTP id y20mr52924908vsk.231.1563988986931;
        Wed, 24 Jul 2019 10:23:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c886:: with SMTP id v6ls6034428vsk.1.gmail; Wed, 24 Jul
 2019 10:23:06 -0700 (PDT)
X-Received: by 2002:a67:eed3:: with SMTP id o19mr47963474vsp.225.1563988986548;
        Wed, 24 Jul 2019 10:23:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563988986; cv=none;
        d=google.com; s=arc-20160816;
        b=qBI7hFxXjUzWtg9wZ4TLHt9cNB86e4I0xQ4a0gWJBNXK7UaxEuhuO+9YCZiW6yOqYb
         4AZ4cKqJGEzp7bgn6G0ZhPgLlLPp3JD9PoLuCE8tSm1j3wUbV+EpEpWEdGqd8b3P6vNU
         nAJNxvTyO5YxTAFfRx/Qm99L+6uXzjvrRk4XI2KBqfcCjiZpOu2DjmXVFBZzMakUYL+i
         qB+dlAS7QY/UtKGRdNCpA7vmr8Eu9gwwRJa/ssMp82p4sXfg95PrxJntCz4GqGDp2Clz
         /y3mTOi/Uy4ZdvAauZukb+2yAR0cIUwBCf7SBE25Qow7r75qEY54UwmsTTXAVM4X+O5X
         I9cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g65bq2BEnljTH4aMgkIZ1B8Lg7IURCua+lyIxVKScJY=;
        b=uRqMPWsg0w35/QylzHg9kAnqcTMYKi20NHvVtT4v3Tg82+rIC/SRXFkNXmT1jweoV8
         YqIlIeXgOGiUmPwteWNqLIn1xVpivC2imksjfk8W+9QqElLfCXpWIycWdQYdMD4Azvbp
         6raRY5MbxHvs4cs+1PrFW53se4hEGC3scwQZy/oXa1gLMi56Um/i6qAYpgNk9AWOwFT2
         XF8zOZgHAk4dM5yN/uTAOeNxWsEJXbwv4MOM6AX1K8AKx1y/GgiopoJow1FbDaw0Ciaw
         nvEW3ilcBROcSYSUO2OCuPOtVt4gOLPoqWoaHAIqu8pcPFxJnfrE/tL35OXN8p/a14Zi
         Eqtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mwmzPjwa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id k125si2540504vkh.4.2019.07.24.10.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 10:23:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id f5so12733133pgu.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 10:23:06 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr51141254pgg.381.1563988984995;
 Wed, 24 Jul 2019 10:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de> <20190724023946.yxsz5im22fz4zxrn@treble>
In-Reply-To: <20190724023946.yxsz5im22fz4zxrn@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jul 2019 10:22:53 -0700
Message-ID: <CAKwvOdk7d2UupG66Zt0zN_NB0xQOaCWBvMMWY_N_-uejw69-BQ@mail.gmail.com>
Subject: Re: x86 - clang / objtool status
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Peter Zijlstra <peterz@infradead.org>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mwmzPjwa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Jul 23, 2019 at 7:43 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
>
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
>
> Looking at this one, I think I agree with objtool.
>
> PeterZ, Linus, I know y'all discussed this code a few months ago.
>
> __copy_from_user() already does a CLAC in its error path.  So isn't the
> user_access_end() redundant for the __copy_from_user() error path?
>
> Untested fix:
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 5fae0e50aad0..41dab9ea33cd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1628,6 +1628,7 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
>
>  static int eb_copy_relocations(const struct i915_execbuffer *eb)
>  {
> +       struct drm_i915_gem_relocation_entry *relocs;
>         const unsigned int count = eb->buffer_count;
>         unsigned int i;
>         int err;
> @@ -1635,7 +1636,6 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
>         for (i = 0; i < count; i++) {
>                 const unsigned int nreloc = eb->exec[i].relocation_count;
>                 struct drm_i915_gem_relocation_entry __user *urelocs;
> -               struct drm_i915_gem_relocation_entry *relocs;
>                 unsigned long size;
>                 unsigned long copied;
>
> @@ -1663,14 +1663,8 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
>
>                         if (__copy_from_user((char *)relocs + copied,
>                                              (char __user *)urelocs + copied,
> -                                            len)) {
> -end_user:
> -                               user_access_end();
> -end:
> -                               kvfree(relocs);
> -                               err = -EFAULT;
> -                               goto err;
> -                       }
> +                                            len))
> +                               goto end;
>
>                         copied += len;
>                 } while (copied < size);
> @@ -1699,10 +1693,14 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
>
>         return 0;
>
> +end_user:
> +       user_access_end();
> +end:
> +       kvfree(relocs);
> +       err = -EFAULT;
>  err:
>         while (i--) {
> -               struct drm_i915_gem_relocation_entry *relocs =
> -                       u64_to_ptr(typeof(*relocs), eb->exec[i].relocs_ptr);
> +               relocs = u64_to_ptr(typeof(*relocs), eb->exec[i].relocs_ptr);
>                 if (eb->exec[i].relocation_count)
>                         kvfree(relocs);
>         }

Thanks for this patch.
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/617
Fixes: 2889caa92321 ("drm/i915: Eliminate lots of iterations over the
execobjects array")

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk7d2UupG66Zt0zN_NB0xQOaCWBvMMWY_N_-uejw69-BQ%40mail.gmail.com.
