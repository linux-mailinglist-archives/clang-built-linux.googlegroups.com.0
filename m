Return-Path: <clang-built-linux+bncBCIO53XE7YHBBLPOQ6AAMGQEKY5W5SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A7C2F864D
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:12:31 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id 98sf6267280pla.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:12:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610741550; cv=pass;
        d=google.com; s=arc-20160816;
        b=TWesvf4XF34QHhFUyonWuHPpqAXAxODxBfa0XhtW02Y8VnPTO77d7OiASQTCzwHHEH
         6jXJ+4bXAOO71lqoNirV8E8oCLfJQkrRoAxnjX4cCosAhjrw11eh1KE5/tj8Tcj5/JQF
         n6qCxqY1qfiWGl7hCl/lxeblPE9wCnh47mSzuG8pvUwaWaSotOQ5oZHKceFNwhaOVr20
         P4A/dIeAFpE5jUDmZewqoVhhJ1aFQmb6v3WO6FCR1bpf4fJZS+DCvUXEMB7L1J0GOG3f
         QKszrwtMI3vvRlggKvoJZATHgPFfinoKv8nycnCK9bOTIwhDgnqllqmm8DNsbsGBACPm
         EYOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=8DZ3geVouu2a9bYdhnW65VovTMkdQZTO7BxtqG6kbuo=;
        b=p+8Dgy+85UFKnYu8BCMoz0qNxwxp8JOpdylA1JDdg2VZ3KMyZP/P0seLcM1AkWMOW0
         ye5490eXaN/GetUtksR65rn4hB7CsRTejModpLCHiIG2kbeE3Bh4DQhx/C1FTbZxFZ2U
         3Mtivt49TOPwW2vOL28qoaHbpqWQkc/DfuSNgD3SKqIvDcXqDAsHIoq1tY0aNjcPIXXm
         JJiRzt8MONZvhN9F2MpJcH4x1eMXjy99JHsQOEBq20ylKaL2c2Yo+kfj2Br/0GCpJp0U
         wKaJS6cxz1C6aFLorMvBpGsvr6MENEysn4InGXR6gpk3CUevO2HdUiOVZKTAj+1mKIkP
         IHdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G1axieAI;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8DZ3geVouu2a9bYdhnW65VovTMkdQZTO7BxtqG6kbuo=;
        b=VJzDbrBMUkAEeMxvixXKqH05CxS7yNGy/pl5/aU2GaN6ZIIkoazratjnKPOk7JrZNO
         zid7bO+qinGKaVu6ixMD8VYc+FSgexfer0UF2pSN/oLhDUUYPaaveEo5yoFeJ0qQWfh/
         mGgg24A781Z/WJ82td0JCfPjAKM8jGtPbeFt4Fl2vsAVhy2LDji3pHAXc4x1moJLhRR0
         s88z5xVUVSLW4mfX+N/RU3DvhQLgLkteVbN8ZpKRJ+yb7li43Eofq53g4TDhKEUYs6AV
         eyJpUF6smj+QaSCwS/dG2RNQheVL01rAJNmw8X5LDyQ5GN8O84mVcQy9+uBeicIIkWgI
         qoTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8DZ3geVouu2a9bYdhnW65VovTMkdQZTO7BxtqG6kbuo=;
        b=s/N6Czq1+RboHMdcE6dKt/xveTYoVoP3miSPGmrOrMu4gBwNJFC2ajaQTJB9PXbiWv
         Gbq32CO1A/M+fKZN9/1SffqUg9UfAa9jwkywAL6RROsyTyeYa6oObW0aOf5UgNBUVr7A
         veIGNX3XXnkfyLR1p+QRaHYFXREZnOIKE6ECygOVKnUng/ZSkaiQ79mCrXtBTzvDl17T
         jsan9lkVNphJkov/f9r9xD0Xd+pT9Oa00CUbwM9RQYm5SThumxdAyR3Sc9Ta6/BaAbAN
         ESQVBLWq+VVVt+Bs2rmoJwARbuQezwnXpiKh2w6KW5Avz82g4Q6A2e5bj0rDge9aC6Kt
         wJDQ==
X-Gm-Message-State: AOAM531kSo54/VLiLykSaV/AwAjCut5h41dTN9E4JWyuivAAqHU905gS
	jvA+4bVGlT+HMyC58dDPV48=
X-Google-Smtp-Source: ABdhPJwA9rO2SnqfaWrA4FWVq+ZnS7LE19eKzOtw9u2M9D7DFuGH1Z/TZ7YvJlXYoGj93x+zpdGubA==
X-Received: by 2002:a65:6409:: with SMTP id a9mr14284154pgv.171.1610741550023;
        Fri, 15 Jan 2021 12:12:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7614:: with SMTP id k20ls205613pll.5.gmail; Fri, 15
 Jan 2021 12:12:29 -0800 (PST)
X-Received: by 2002:a17:90a:4dcd:: with SMTP id r13mr12400907pjl.74.1610741549293;
        Fri, 15 Jan 2021 12:12:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610741549; cv=none;
        d=google.com; s=arc-20160816;
        b=S2MMZtrTyVT6z+TtCf2Fuv4yjvN/ipkufY+rwt0Zr8/shiY9uU5T2ZayCq6GnO5ECn
         SBkiQQP1HpWlwrHikHFK+ZjJ73Wv2XrohB+hSabFAmKbNC4DtIgifB46IYYfX0PZAJHb
         hKbZmAkE3LpDznLOYGl8IYU+RrlkOP0pcpd00XarOxabW/8vwdl7kdlAsJbCdN+c4ys3
         0S+XlEDk2eWYDKRrBeOvdLlHnKGShQjRwAqvwWPHM0wlvSNB1Q1cmGVoKCcCyFwJ/H1g
         ThbUt24Awr6RRrcvfUqMOm6dl0dgC08CzXM+P2J/E/KByxYaZgksSn7r31pBdbPTC4tG
         e1DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=sgKqk97F3LXGs0WSJk0LyPnfv9O5wcmbABf8xVSL5kI=;
        b=Q1pgHq0DOj1Hx2N4QptNZEtdEJm9G/zcU9F71zGkZYATICj4cWtbjGtbNppbTSQcnX
         QCA+YIxQTYt8utsMDAmjNZEp+rR8mBKAbWXTUSGFEe9oB+GLRK/meC5tra+WqTi0ZlWm
         MJe+Ek4gVuG9kFxAo3TXFNXip46Y+1/Pe4fMHcysQSzrj4sxe1lPQsPiDd9SNSbQChak
         BQkcytdpFAv3+ucpFt6XTunn/9hJ5rMVbYn8mFuJWci3jvHFMYbBZ0zgm8NmFCtb422v
         dQG7EuD9fU4MAHhmNOWxRAfXaCiDavslRXdnBXTB+GPPZg71TPl/ZUP/MZKG8V/JjJju
         ZNJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G1axieAI;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com. [2607:f8b0:4864:20::72e])
        by gmr-mx.google.com with ESMTPS id m63si522751pfb.3.2021.01.15.12.12.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 12:12:29 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) client-ip=2607:f8b0:4864:20::72e;
Received: by mail-qk1-x72e.google.com with SMTP id b64so12908644qkc.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 12:12:29 -0800 (PST)
X-Received: by 2002:a05:620a:a9c:: with SMTP id v28mr13984822qkg.107.1610741548418;
        Fri, 15 Jan 2021 12:12:28 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id v5sm5700419qkv.64.2021.01.15.12.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 12:12:27 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 15 Jan 2021 15:12:25 -0500
To: Arnd Bergmann <arnd@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	Platform Driver <platform-driver-x86@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <YAH3KY0I2AWudkc9@rani.riverdale.lan>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <20210115182300.GD9138@zn.tnic>
 <20210115183203.GA1991122@ubuntu-m3-large-x86>
 <20210115190729.GE9138@zn.tnic>
 <YAHo3ZEMu+6mESZA@rani.riverdale.lan>
 <20210115191833.GF9138@zn.tnic>
 <CAK8P3a39vtF8GvRVQtEYssc+GvX-75j9-4pwXj4qhc7LK2RgNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a39vtF8GvRVQtEYssc+GvX-75j9-4pwXj4qhc7LK2RgNw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=G1axieAI;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::72e
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Jan 15, 2021 at 08:54:18PM +0100, Arnd Bergmann wrote:
> On Fri, Jan 15, 2021 at 8:18 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Fri, Jan 15, 2021 at 02:11:25PM -0500, Arvind Sankar wrote:
> > > That's how build-time assertions work: they are _supposed_ to be
> > > optimized away completely when the assertion is true. If they're
> > > _not_ optimized away, the build will fail.
> >
> > Yah, that I know, thanks.
> >
> > If gcc really inlines p4d_index() and does a lot more aggressive
> > optimization to determine that the condition is false and thus optimize
> > everything away (and clang doesn't), then that would explain the
> > observation.
> 
> One difference is that gcc does not have
> -fsanitize=unsigned-integer-overflow at all, and I don't see the
> assertion without that on clang either, so it's possible that clang
> behaves as designed here.
> 
> The description is:
>     -fsanitize=unsigned-integer-overflow: Unsigned integer overflow, where
>      the result of an unsigned integer computation cannot be represented in
>      its type. Unlike signed integer overflow, this is not undefined behavior,
>      but it is often unintentional. This sanitizer does not check for
> lossy implicit
>      conversions performed before such a computation (see
>     -fsanitize=implicit-conversion).
> 
> The "-68 * ((1UL) << 30" computation does overflow an unsigned long
> as intended, right? Maybe this is enough for the ubsan code in clang to
> just disable some of the optimization steps that the assertion relies on.
> 
>         Arnd

That does seem to be an overflow, but that happens at compile-time.
Maybe
	AC(-68, UL) << 30
would be a better definition to avoid overflow.

The real issue might be (ptrs_per_p4d - 1) which can overflow at
run-time, and maybe the added ubsan code makes p4d_index() not worth
inlining according to clang?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAH3KY0I2AWudkc9%40rani.riverdale.lan.
