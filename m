Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBYFFWX3AKGQEQADB6LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFE01E28DB
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 19:33:20 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id n9sf10079325wru.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 10:33:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590514400; cv=pass;
        d=google.com; s=arc-20160816;
        b=gM2rPu0tEm6FqbEJpENIXEoZnEqWa6C7qAQz/eaG07zz+GcYtyCoI/Cw6rbSFYSQKw
         OoO8kT0mkjhQch2r7qcBX7e7VjIGH5Ht1oWQ+TKBRBadsk01t+9NZRkaTjb2yAC6hG8r
         bhCNMMqXUpsGPvWRkHKqvrZ9WqYTMZ/MVrs/2j9zD6uJ4xA/40F4h/vSy+vcReq/Fo5R
         lP/7tUvXKWEHKlf5hG77e9+N4MFqRqGrJFxS0EmRuajS8ONEh9lidU8lEZ3/yXf1ODk+
         jz3c5n88oe59VlrYAVlXZwXgzbNbcIUJMiookWgQT7rWf+2anCdHn7rWQxEQ8AmwyLLN
         ol3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=whigwuE7K/xK+3hCHwJaCwC1L29G8HbcfDRsmPwp1CE=;
        b=lND/CGGVUeOO7QHdnrNToRJBeJ5qjO+FSVkcv3/8X9h7dcPfBWeDWGtKzsm7f57/Uh
         8FQ8WC2oDFKDSfenyPdkS+vLkX29oPXSv40FqyPWObSymg+b+WKnnHFUjttWT+npRfpO
         tIsCRs3Uh1K5kK/ok7a+6MXe7kROpxAmYNrrCKFR2rRk7YNB4gvKMn/awzO9mMdVxqxO
         j1UuRnrgw/qssWaKiOLhT13oBrzNxdDm/hTcW4PFuN5z5sC9xeaWxrobY0Mc4Bku4XX6
         SXQULmDCgRqt5e1/jHCwBz2jyIT8Mnh5oREILRGxRj8XvaeTFnQ+tMerHT+pp0u6y0K8
         p9Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vNOLZx+V;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=whigwuE7K/xK+3hCHwJaCwC1L29G8HbcfDRsmPwp1CE=;
        b=MPO9MpLTf4mnmi3KksALMsPVVCB0QFXy/SIE93xNdJ8vLrppoQ8ygepjhv4/Dxns2S
         ziEQja8qAp6T435+BkKhqPzmXzVzJ9w511/q7RM3yk4vnulY/cNhtzWA8/1/3UDvSoQs
         kZXit8XQH0nld9qAW5ZLawTeYHL1lp8odLgoyAWiKnjQSEjTiuSy5kROUcMGW6VLEkSU
         pvhxk5sHw+wg7vMCY4JibsaB9yYj9s8PyJMQsmfBIqQ6SvmrEt194/wIayuDIQg6CEgS
         qvsS8Ld8QAMXeKggpZujmPFvi9VwpApebnm4q/chaCfFl97CcD5WQeMIDk1Anz6xXTdQ
         fvUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=whigwuE7K/xK+3hCHwJaCwC1L29G8HbcfDRsmPwp1CE=;
        b=t8OSR7YiDIKc5ll05CQO+ljK9omGijIptW1nePMaExS4gn2BR/BHMdNoI0V8mP9AUQ
         TZUWBUvy0OfKIMazIjDB03vo9GVDS9ZKQ051Zwycb9RVigUKSRJy2jug9uXBc63V51wf
         XMKtGWqQw8EeI6+fbiM71DRa5d/8Ku3ZCxaydotuqZ+CM22RrVXTHtVN2ZIoE2HIXhL8
         Pve8pD5TBu8uWTr+w8jQ4vLHDS43eyVKCEsfvDrBmeSER0bxh9eOkRFhaIRR37rs5FjO
         dJRrlRipHTV5ybJlQgy/EmJjF/ciA5DPfu6M8kFW1VhmeiZotD9KF2PI+uoaUvrxRuYy
         omNw==
X-Gm-Message-State: AOAM531AnZ/r0Vcn32TKHqtOEvNFJ5UxTNQtuUsrgp+Yw7hS6y8yTqU7
	1BtrxxLOgAWXJt39imqPMzA=
X-Google-Smtp-Source: ABdhPJzgiqW3pFZHLr0kmLXvbGV4nkU2M5t0m+vh/S+qJl48XntRd3zkq3GAeAfHC5+1yBkCLxodrA==
X-Received: by 2002:a5d:4c81:: with SMTP id z1mr5168117wrs.371.1590514400154;
        Tue, 26 May 2020 10:33:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5224:: with SMTP id i4ls478411wra.0.gmail; Tue, 26 May
 2020 10:33:19 -0700 (PDT)
X-Received: by 2002:adf:eb08:: with SMTP id s8mr21189187wrn.361.1590514399551;
        Tue, 26 May 2020 10:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590514399; cv=none;
        d=google.com; s=arc-20160816;
        b=hcwfsH/RvSKRnCxCz1znxJfuVJYJsruSWDixUcPFtwD2PTtUMyb8RRwCLloGDR8K+a
         6CS9oml+CzFD+wvEBOZGCDRE0VG+DMkQZe7lgA4aBiEK9Im6UP3NaFY1eJ8GDHOGyYDP
         JJhCg0FONaE8aDC1ZV6+lYv43irJ7+D9E8arixO2IQ56fBB8VhkXb1p8hNS6jzJzr0ly
         UwQO5Fxvxy/B6luTUE8CnVvgnmEeOcD+Zo64ehW1CdwQzWXxCDXvklyvxgEwyRvsKFfN
         oC+Hy9EIv9dCgrfrLmfeQMveDbCkHW0GIgJK1gWB5mogT2s6u9u4CdqarOKlXGnBtL8d
         kfNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sys0Nh8QzHuS5xSYWpqlM7xhUHriFZcWSU4k6Houjjc=;
        b=XeImal2HJdSZjX6FzfnwYsPpqL/JMrhs9WhhQhRP4RAEruEuRBdGlKLQlyCJH35LRi
         v+g+FZ9E189GGMiGSvMV1SSGkYn+DWpAqXljyKkNfK+FAQn8wFQ0z3pkHSQyv7w+RPB9
         FtcHG1CNjKeipvR7lRTBvHLYyHmG6kkFRvL3U0o7LO9tERCh2DuSyndvc5VVNAqYXq9i
         2UR3PcG0tOyFzidGu4IMlttF+VFLaN8X5nZBXOhF0kNEp1AGQTlgxXBRgDHIRr/3LKyY
         DeRCBDplIWiu8WK4ky5xXgHa0iDkU+FH22R+XmOiqGCrLkuZXXWUJjLDCWmjM4FxngS4
         phGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vNOLZx+V;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id f16si33431wrq.5.2020.05.26.10.33.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 10:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id f5so363276wmh.2
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 10:33:19 -0700 (PDT)
X-Received: by 2002:a1c:4d11:: with SMTP id o17mr267995wmh.37.1590514398940;
        Tue, 26 May 2020 10:33:18 -0700 (PDT)
Received: from google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id e29sm525252wra.7.2020.05.26.10.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 10:33:17 -0700 (PDT)
Date: Tue, 26 May 2020 19:33:12 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement
 expression
Message-ID: <20200526173312.GA30240@google.com>
References: <20200521142047.169334-1-elver@google.com>
 <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
 <20200526120245.GB27166@willie-the-truck>
 <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
 <CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vNOLZx+V;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::341 as
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

On Tue, 26 May 2020, Marco Elver wrote:

> On Tue, 26 May 2020 at 14:19, Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Tue, May 26, 2020 at 2:02 PM Will Deacon <will@kernel.org> wrote:
> > > On Tue, May 26, 2020 at 12:42:16PM +0200, Arnd Bergmann wrote:
> > > >
> > > > I find this patch only solves half the problem: it's much faster than
> > > > without the
> > > > patch, but still much slower than the current mainline version. As far as I'm
> > > > concerned, I think the build speed regression compared to mainline is not yet
> > > > acceptable, and we should try harder.
> > > >
> > > > I have not looked too deeply at it yet, but this is what I found from looking
> > > > at a file in a randconfig build:
> > > >
> > > > Configuration: see https://pastebin.com/raw/R9erCwNj
> > >
> > > So this .config actually has KCSAN enabled. Do you still see the slowdown
> > > with that disabled?
> >
> > Yes, enabling or disabling KCSAN seems to make no difference to
> > compile speed in this config and source file, I still get the 12 seconds
> > preprocessing time and 9MB file size with KCSAN disabled, possibly
> > a few percent smaller/faster. I actually thought that CONFIG_FTRACE
> > had a bigger impact, but disabling that also just reduces the time
> > by a few percent rather than getting it down to the expected milliseconds.
> >
> > > Although not ideal, having a longer compiler time when
> > > the compiler is being asked to perform instrumentation doesn't seem like a
> > > show-stopper to me.
> >
> > I agree in general, but building an allyesconfig kernel is still an important
> > use case that should not take twice as long after a small kernel change
> > regardless of whether a new feature is used or not. (I have not actually
> > compared the overall build speed for allmodconfig, as this takes a really
> > long time at the moment)
> 
> Note that an 'allyesconfig' selects KASAN and not KCSAN by default.
> But I think that's not relevant, since KCSAN-specific code was removed
> from ONCEs. In general though, it is entirely expected that we have a
> bit longer compile times when we have the instrumentation passes
> enabled.
> 
> But as you pointed out, that's irrelevant, and the significant
> overhead is from parsing and pre-processing. FWIW, we can probably
> optimize Clang itself a bit:
> https://github.com/ClangBuiltLinux/linux/issues/1032#issuecomment-633712667

Found that optimizing __unqual_scalar_typeof makes a noticeable
difference. We could use C11's _Generic if the compiler supports it (and
all supported versions of Clang certainly do).

Could you verify if the below patch improves compile-times for you? E.g.
on fs/ocfs2/journal.c I was able to get ~40% compile-time speedup.

Thanks,
-- Marco

------ >8 ------

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 5faf68eae204..a529fa263906 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -245,7 +245,9 @@ struct ftrace_likely_data {
 /*
  * __unqual_scalar_typeof(x) - Declare an unqualified scalar type, leaving
  *			       non-scalar types unchanged.
- *
+ */
+#if defined(CONFIG_CC_IS_GCC) && CONFIG_GCC_VERSION < 40900
+/*
  * We build this out of a couple of helper macros in a vain attempt to
  * help you keep your lunch down while reading it.
  */
@@ -267,6 +269,24 @@ struct ftrace_likely_data {
 			__pick_integer_type(x, int,				\
 				__pick_integer_type(x, long,			\
 					__pick_integer_type(x, long long, x))))))
+#else
+/*
+ * If supported, prefer C11 _Generic for better compile-times. As above, 'char'
+ * is not type-compatible with 'signed char', and we define a separate case.
+ */
+#define __scalar_type_to_expr_cases(type)				\
+		type: (type)0, unsigned type: (unsigned type)0
+
+#define __unqual_scalar_typeof(x) typeof(				\
+		_Generic((x),						\
+			 __scalar_type_to_expr_cases(char),		\
+			 signed char: (signed char)0,			\
+			 __scalar_type_to_expr_cases(short),		\
+			 __scalar_type_to_expr_cases(int),		\
+			 __scalar_type_to_expr_cases(long),		\
+			 __scalar_type_to_expr_cases(long long),	\
+			 default: (x)))
+#endif
 
 /* Is this type a native word size -- useful for atomic operations */
 #define __native_word(t) \

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526173312.GA30240%40google.com.
