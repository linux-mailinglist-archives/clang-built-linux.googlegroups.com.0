Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBLGE3L3AKGQEKEB2QAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8361EC24A
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:02:05 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id h143sf18411960ybg.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:02:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591124524; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9qvBqHH5myST0irpM1QGLWcZXGsPRNjpZnbytvGT/KnkhAuq62Nz/RmVG9XwiN2e2
         CSwZ+j/rx5cyym9pmV/5UxwwO18/nSPqRilvBIjq6NiUi7Biuu9uooCy5jxcuOoRB0H6
         g5fEwwmZxE8362jF/vSzRgJwWydr6DKFc6s5bcBXIC7wfPb6Izyw/Li6AHxBjsyMLZNO
         10xEMPeZRW7gehhUYgBt1fJ8tWfeEbf9C/W4Fy8kc6zVykE8MVbF1sbgbZ0QoKUVMj6R
         kkYh9qUXM68s9B64H1wUI6i1kVBT9RFfVIpgts1rdIywgHeNMJtnMezbDS5+WfK6dKgz
         a/FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kFywhg6xwrp1IBW5fG9hGHkh5vPeYGmCxpThLSDGXkc=;
        b=NQdSUWYLmD9NSCcICfRvC/bSN6uElr7Jayzjjh56Z/HmAANn7VV/hkPXT0XBSH9ak6
         +e60dQ3ST24lxoVvuRUzO0WhJaqQm/sSWefCSHLu7B3OT1YZC+dJvy3aLJE01Q7z4pey
         2cwpioWY/3NkywQLh+mvtEEIQAkYFU+WRL+5ri+dCfPVRhA4NcNiCoWni2M7ePk4mzOB
         JMMiUYpUNdwBEPdOSfuA0FaiMNb0f8HKqIgSMhOsv6nuQ5bfiSZQG4BucM/E8i7Iu4em
         Zh+PmofDf+chL4//jyrmAlzTtKpEDFxt917zq3664sALoWu0JoAnXXPeIHWviPHlFfE3
         HFfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vrumBDaB;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kFywhg6xwrp1IBW5fG9hGHkh5vPeYGmCxpThLSDGXkc=;
        b=nB3aQTuYxGvS0hFj+/ZITcFYGfIeI7Rsg6gvVkYO07tQawt6zVrtb9VeBaqB3zqUf/
         33K7N74E6jLqmSzGqze/vdeS8KqKcWZNZlMLTYiGzebALR3EX8A2frGdZtSrD41ooGyl
         vZfuIIgs/N65DubkdJhUThb+G1X5wlm4/sGJX+mrJltbNkU/8ZJKWl5onv4wdxipvly4
         SWDkv6113rf8hHgX5OvaXAXeREehsz8NdUeMjenduR2pfK76LCoYlOx+12laUY7gJFvO
         UaI0IVfchDJSAKmZamnf4oYXXcfOylwnaIEp9QNaee9FEebXiNGjmMnAIW0jBz3NPmDv
         j1Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kFywhg6xwrp1IBW5fG9hGHkh5vPeYGmCxpThLSDGXkc=;
        b=ONfAaKpGbcwHQiKxoVvgPxVQX3tU2Y1nVIZL5zUBS1KGkkYFKxSJve/yNLFsR2ulu5
         6dxkQIib6VnHOjPlnXs4VQFx6nNfiMOdEE3t+ZH+Qoo3fOeKEVAaz3GCJBr5YPlG/tNo
         nb6XQ2CEuvOxCrZd/KFD5IGylnw/XHqOTaHyrUBDIV/9nPCFFDoxop1sZPa26BoL5Sxi
         yqI2qUFpoQ2Yrdl9LbI+ozs6AQcsqScUeqCBd5gQDsuAceYjVfekvUXijcETsgYZ+oor
         IY/e99qfrXYvPalCZIAPiFURRb8A+3PP2Pdoedp+sCRumbdWMyVVl6YyfkbKd+F8XDlH
         tN1w==
X-Gm-Message-State: AOAM531BSW6oNuVZrlH37PYSyFe19rDarLtivyP0ybHhPwzj4bgelhxa
	8un5usqUMJ1rmd3QgJo5fiM=
X-Google-Smtp-Source: ABdhPJyRu3K5jr1VcRD3cfhaeIjLlDinCcQuYhF2yx6y9MJZBL9UtSEYs4fpnIgPCtSX+QbAAp1Y3w==
X-Received: by 2002:a25:df4f:: with SMTP id w76mr40096137ybg.90.1591124524249;
        Tue, 02 Jun 2020 12:02:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:102e:: with SMTP id x14ls237958ybt.8.gmail; Tue, 02
 Jun 2020 12:02:03 -0700 (PDT)
X-Received: by 2002:a25:244a:: with SMTP id k71mr50325385ybk.143.1591124523909;
        Tue, 02 Jun 2020 12:02:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591124523; cv=none;
        d=google.com; s=arc-20160816;
        b=WBM1zuhK18zzJEB02QfgTyN8CRINa5sCff/SJt5NYA0I2XjuwQggftR8uBIA/Q/h0g
         rHpo1+VDfFGDwqZiP0GH2E4xP83deJ1A6er5gLRyaX7LwOypcE9Rfy7OJLfuAHQqIDjV
         5jTLv9FTcJ8vxEj/yNoT4izOsfcuhD+QShAmRqBaYBSRWN3ELCz59KuioXajGsG3EN/c
         h8Nv1E1xB+uiivzZjQLrX9LvtgIp43PQ4MTjrto9hmwss/B6WRAI0pmM8m9rTgqfKCkx
         LzKzDdqsnRgPI/n4iNyLjPnmlrIA7SoHINxu1scOa2HW0iPB39Ku6es5PTqHlQWPf5nB
         P91w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fQp0wr55zKHTmcfSyP/aceC1T2FCV6dcgdAfq1cn0oY=;
        b=dxwIAcMylzECsdqXgxSP5cGQHB07OvgvgdSCeHsJNxoTQZ6x/WnkhJcIT0GUZYm1gD
         RYPahiFQRB9ZnV3Gpo2O4lBkkmKopTcjlR9arsN/FIZSpByRbxjCjUR7YQLemUUxxki2
         XgsVMxqRK5ExZKVNJ1EWqpDaEF7+43CoETKT0a97khzgVEB4tK8gY7fI2lytGwUSAKk3
         JL7DGzM7waQu3k1JjE16Omq47/P8li0NMoitIz+eWhwulZaj7eYf0NnK/EZuPfLTfN11
         Szr0OXFMN4W8iV/h6LG9tPra4VWwi5UZgN5xJCbvvom81o0TPtClyrFxQwZ4URAv+4KI
         tGXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vrumBDaB;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id n63si279764ybb.1.2020.06.02.12.02.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id a137so12994859oii.3
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:02:03 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr4030323oih.70.1591124523224;
 Tue, 02 Jun 2020 12:02:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
In-Reply-To: <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 21:01:51 +0200
Message-ID: <CANpmjNP0jh=pwm5quCsXo75cfemyyJ=32vCUpEE5UygJ9g7R9A@mail.gmail.com>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN
 and UBSAN
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vrumBDaB;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 2 Jun 2020 at 20:57, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Jun 2, 2020 at 11:44 AM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
> > have a compiler that does not fail builds due to no_sanitize functions.
> > This does not yet mean they work as intended, but for automated
> > build-tests, this is the minimum requirement.
> >
> > For example, we require that __always_inline functions used from
> > no_sanitize functions do not generate instrumentation. On GCC <= 7 this
> > fails to build entirely, therefore we make the minimum version GCC 8.
> >
> > For KCSAN this is a non-functional change, however, we should add it in
> > case this variable changes in future.
> >
> > Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
> > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > Signed-off-by: Marco Elver <elver@google.com>
>
> Is this a problem only for x86?  If so, that's quite a jump in minimal
> compiler versions for a feature that I don't think is currently
> problematic for other architectures?  (Based on
> https://lore.kernel.org/lkml/20200529171104.GD706518@hirez.programming.kicks-ass.net/
> )

__always_inline void foo(void) {}
__no_sanitize_address void bar(void) { foo(); }

where __no_sanitize_address is implied by 'noinstr' now, and 'noinstr'
is no longer just x86.

Therefore, it's broken on *all* architectures. The compiler will just
break the build with an error. I don't think we can fix that.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNP0jh%3Dpwm5quCsXo75cfemyyJ%3D32vCUpEE5UygJ9g7R9A%40mail.gmail.com.
