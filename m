Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP46UT2AKGQEYRFLZ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BCE19E7F9
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 00:50:40 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id a9sf4648236uan.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 15:50:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586040639; cv=pass;
        d=google.com; s=arc-20160816;
        b=RmDI8KDJJGNoiQUDgSfouj7XXhFif0pXoL/ACo36AVK6kHfxY6C+8hsSJFp4+sNDcJ
         0xHo6+kGwaWIqC/jFBjYYByUXpEWxBaGPx5X2GPWIZByndIdgYd0vOsBWHsuj+ZA/J82
         UV4GIO2PsHHGydwEruoYtMtJiurD06+Vy4XAT1bb+bDqHyuW+iNrbDw2zd2MD7Mq8F9+
         Mx/CJwAIHOrylfaTsfmQog9TmEvK1STa5eCSvVxMVVgY0ZOQDX1U6jmOpYUly1VOyBNd
         odkd2+tQkQRSwAtaUrlDen1RBjDiQ7ldBsJcFNe6AaHt9+cJqTHSprb55dpZlYd8jBOG
         oFUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qQA+3W83GbisWQGSEAniLYjQIUrMljQ0cE4Z6jFJHrY=;
        b=Yf6RYWMK5oPp19aE8nT2Jod7ni3YoV5Fa0Xhcq0uD68WdssmId41Ke4L8dLMlC33IU
         VQSmEp6zzlW02IUY07t+udZJcdgIDxKoBU1MhwO+wRthmLD+LbN2qq9RnH2eja4p3bkV
         d3mZKLDS5L2l+dmgiYApxDc18zQfyjtu5JQr93xg/lEq+aoh5u2jINmRNisR04CBJfVW
         upMfsgWgZ4KyuyW5YPBLfPTFvqWsS99tAA3jgT2UXDSsN+38fa8oQzhxVF4ZMMvll7lb
         Ikcb3JBXfGtF2OpA6QIyvdX5jui+HSYFL5nHeLpAkc9TBTNLBq68fJzz/NlV4zdRN+4s
         IXDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GjML8U5N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qQA+3W83GbisWQGSEAniLYjQIUrMljQ0cE4Z6jFJHrY=;
        b=Z1c+2KpwnOlNn1WEDwDk5dxY42QQDMomy6B14AYH/KUFvyeigVfim2VHX3mzkyVN+H
         tSupuY2g2gXf6pMy9NFGsQPh4JPZbdFlYOcXGzESy7M3TjQvH32kTDKkqc1dTAiNTaNI
         nfJD81H4mG12C1/0WfIDfPup2lrsTKEskowOG8DL+/G02qV7d5s5N0PM8t7KW0HFJIG3
         Fbt4rjO9NAKM14Kb6R6JU+pk3RdZ/7AM0tMgmqJH/j4un9OfsOtQYRx1DJ1pa8qTun2f
         xoMwhrtz3qXH/nz1/YRIG3/ArHEBAl2O1rBlcttOUJ/OP1U9NwuWsnl6gKBwRIsATBl+
         Bjaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qQA+3W83GbisWQGSEAniLYjQIUrMljQ0cE4Z6jFJHrY=;
        b=U0osZPBjYEbISnMpI7v0R6u492fQWE7ldHA5enNEqzcqTvvysYNa8MAp/pMaABkyoq
         AMoaHZ9ql/zevMmIlh8VDhs0O6sGA5NWC1po788VSObTRZXKiHfg7x8U0p8wBcTqQgsU
         UbXMWaFAdJuSXP6G/WVaEDabHsvAv/geQGjkNWJk/AU1BTex4sgtR6RfGBTh+x3kCb93
         TXy6Idd33w0IaaLmjYs2hGjVC9Mz0IAPj6/1NEmrYe/k2T80FHvGnp9GlUsPNRwBkNUc
         NSpdwoFjj6IxL4r3YdHLe0RuDmpV5dvL+FFqNwY6/K5EFsAiLCLpo0QPuV74O0mWayMQ
         46Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qQA+3W83GbisWQGSEAniLYjQIUrMljQ0cE4Z6jFJHrY=;
        b=k1mTj12iu1gJwbmIj35v//cYdl6khSnVfT7E3a3UpFSQJsthWP2iMXaf331UELl3zF
         +DWLaqPiB0jREjAIq0qXKzDnLukCFegyF2DgWG7KCru/UJj96pd6S0FFJIAVh8IDKho4
         XLEhX7BwzjbNLMwHcoknBG0Dh9ggdEEzRnW+QCS8omEkIxmuxpi4xcEfg9K4dT/l9K93
         qUMtFGT8kZMzZ6s/UZEiUNQkVuOAeQ3uBIA3LqNRSDkBM7BtgeQEemN1FglCqS07HDlw
         mFt8XSSb5P/QUwm+bCNKN/c4+Fft5GyQsW/TCXelA+fB6hnrY8yq0xDIhNMxenO+hEJT
         yWHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYU/plouLOPX0w2Bq2THIcLLtPN5BBP/8scmf2nhgHI8itJAeVA
	YfKZOyixIDsC4kiNGO3xV5Y=
X-Google-Smtp-Source: APiQypJD3ElTVjsV9m4zaxHQ+ZXJ48oXfaBciviz5jZUpgwouqD5S3Q5j6YH+3DPPtXwmAYemqhRZA==
X-Received: by 2002:a1f:3210:: with SMTP id y16mr10981810vky.89.1586040639727;
        Sat, 04 Apr 2020 15:50:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:8e:: with SMTP id t14ls1779518vsp.5.gmail; Sat, 04
 Apr 2020 15:50:39 -0700 (PDT)
X-Received: by 2002:a67:f3d3:: with SMTP id j19mr11692526vsn.190.1586040639074;
        Sat, 04 Apr 2020 15:50:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586040639; cv=none;
        d=google.com; s=arc-20160816;
        b=ijJGuouwIQIhkb/UhncbYESOHmzjNZCmnj9PbPiecAzqxj1xja0S1ieSxLJPBE2zo5
         yBybeSALfXNV9FrB3TRgMLajQSOgugWKBTkN1Y9BM2IwXDiAN85iVBGXtYGpgV1YrDEy
         M4PSXW3uT6uP78nNpE6k7CSvybxfsxd3iA5BgPe0W95za+NCfVewvmZpclHiAYWxAsMg
         9NtnmhaAcV6GXP4oRlU2hD/7lDZIZrdEzJaFTq6Z8A8MiqfKCYenm/OScBCWJd8cCTlA
         yvF+vcEFVB4zdqD8RBBoSNKiC1TgQTlHn+yAXLZ8t+dtWj1buCFSJK0Q4OEW1jlRWPnM
         RQaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QlGS9JyX8iCTAx/m9fGGWb+D9lnYRdPinBIcwJqWSDA=;
        b=QbyKiuMM28DdEllJbjPbNV4QA9QRx3MSVeBkH1Tb1JC00b48q2h3NR5GcucA/NFXv4
         ksU8tcwEY6htNl5WWfLYYfqJmnsgnbl1Xq3ubcRad7Tn4liVx5gfditN2CN1mK8TQiqF
         /hiOT4GpcQu3oTUXViqKkQvUmiFejP/vIWx8+yhtiRmO1HKxbNHnmULpZpl/JPvvc1eq
         R83CyIUxfm3PIQf0niTi23/n/d2oBvuAHdbvMW9Yv9JlxVHTrPT0HL610zbNRK7j8xbO
         SnvAVDbEPqhhud0lVa5v3fcGxplN1o0fgDSUoopFlidpbbIOgkbGElqaF181qVnOheh2
         ktyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GjML8U5N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id d20si939958vsf.2.2020.04.04.15.50.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 15:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id x11so11404945otp.6
        for <clang-built-linux@googlegroups.com>; Sat, 04 Apr 2020 15:50:39 -0700 (PDT)
X-Received: by 2002:a9d:178a:: with SMTP id j10mr11731075otj.182.1586040638463;
        Sat, 04 Apr 2020 15:50:38 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q12sm3262874otn.43.2020.04.04.15.50.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 04 Apr 2020 15:50:37 -0700 (PDT)
Date: Sat, 4 Apr 2020 15:50:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: Oleg Nesterov <oleg@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>, tglx@linutronix.de,
	mingo@redhat.com, bp@alien8.de,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Marco Elver <elver@google.com>, Brian Gerst <brgerst@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] x86: signal: move save_altstack_ex out of generic
 headers
Message-ID: <20200404225036.GA12416@ubuntu-m2-xlarge-x86>
References: <20200324220830.110002-1-ndesaulniers@google.com>
 <20200403231611.81444-1-ndesaulniers@google.com>
 <20200404160100.GB26298@redhat.com>
 <20200404170604.GN23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200404170604.GN23230@ZenIV.linux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GjML8U5N;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Apr 04, 2020 at 06:06:04PM +0100, Al Viro wrote:
> On Sat, Apr 04, 2020 at 06:01:00PM +0200, Oleg Nesterov wrote:
> > On 04/03, Nick Desaulniers wrote:
> > >
> > > --- a/arch/x86/kernel/signal.c
> > > +++ b/arch/x86/kernel/signal.c
> > > @@ -416,6 +416,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> > >  	return 0;
> > >  Efault:
> > >  	user_access_end();
> > > +	reset_altstack();
> > >  	return -EFAULT;
> > >  }
> > >  #else /* !CONFIG_X86_32 */
> > > @@ -507,6 +508,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> > >  
> > >  Efault:
> > >  	user_access_end();
> > > +	reset_altstack();
> > >  	return -EFAULT;
> > >  }
> > 
> > I must have missed something, but this looks just wrong.
> > 
> > reset_altstack() should be called when __setup_rt_frame() (and
> > unsafe_save_altstack() in particular) succeeds, not when it fails.
> > 
> > Nevermind, Al has already suggested to use signal_delivered()...
> 
> FWIW, I propose to do is the patch below (against the current mainline);
> objections?
> 
> Don't do sas_ss_reset() until we are certain that sigframe won't be abandoned
> 
> Currently we handle SS_AUTODISARM as soon as we have stored the
> altstack settings into sigframe - that's the point when we have
> set the things up for eventual sigreturn to restore the old settings.
> And if we manage to set the sigframe up (we are not done with that
> yet), everything's fine.  However, in case of failure we end up
> with sigframe-to-be abandoned and SIGSEGV force-delivered.  And
> in that case we end up with inconsistent rules - late failures
> have altstack reset, early ones do not.
> 
> It's trivial to get consistent behaviour - just handle SS_AUTODISARM
> once we have set the sigframe up and are committed to entering
> the handler, i.e. in signal_delivered().
> 
> Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
> ---
> diff --git a/include/linux/compat.h b/include/linux/compat.h
> index 0480ba4db592..f614967374f5 100644
> --- a/include/linux/compat.h
> +++ b/include/linux/compat.h
> @@ -461,8 +461,6 @@ int __compat_save_altstack(compat_stack_t __user *, unsigned long);
>  			&__uss->ss_sp, label); \
>  	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
>  	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
> -	if (t->sas_ss_flags & SS_AUTODISARM) \
> -		sas_ss_reset(t); \
>  } while (0);
>  
>  /*
> diff --git a/include/linux/signal.h b/include/linux/signal.h
> index 05bacd2ab135..28fe9cc134f7 100644
> --- a/include/linux/signal.h
> +++ b/include/linux/signal.h
> @@ -450,8 +450,6 @@ int __save_altstack(stack_t __user *, unsigned long);
>  	unsafe_put_user((void __user *)t->sas_ss_sp, &__uss->ss_sp, label); \
>  	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
>  	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
> -	if (t->sas_ss_flags & SS_AUTODISARM) \
> -		sas_ss_reset(t); \
>  } while (0);
>  
>  #ifdef CONFIG_PROC_FS
> diff --git a/kernel/signal.c b/kernel/signal.c
> index e58a6c619824..4cfe0b9af588 100644
> --- a/kernel/signal.c
> +++ b/kernel/signal.c
> @@ -2769,6 +2769,8 @@ static void signal_delivered(struct ksignal *ksig, int stepping)
>  	if (!(ksig->ka.sa.sa_flags & SA_NODEFER))
>  		sigaddset(&blocked, ksig->sig);
>  	set_current_blocked(&blocked);
> +	if (current->sas_ss_flags & SS_AUTODISARM)
> +		sas_ss_reset(current);
>  	tracehook_signal_handler(stepping);
>  }
>  
> @@ -4070,11 +4072,7 @@ int __save_altstack(stack_t __user *uss, unsigned long sp)
>  	int err = __put_user((void __user *)t->sas_ss_sp, &uss->ss_sp) |
>  		__put_user(t->sas_ss_flags, &uss->ss_flags) |
>  		__put_user(t->sas_ss_size, &uss->ss_size);
> -	if (err)
> -		return err;
> -	if (t->sas_ss_flags & SS_AUTODISARM)
> -		sas_ss_reset(t);
> -	return 0;
> +	return err;
>  }
>  
>  #ifdef CONFIG_COMPAT
> @@ -4129,11 +4127,7 @@ int __compat_save_altstack(compat_stack_t __user *uss, unsigned long sp)
>  			 &uss->ss_sp) |
>  		__put_user(t->sas_ss_flags, &uss->ss_flags) |
>  		__put_user(t->sas_ss_size, &uss->ss_size);
> -	if (err)
> -		return err;
> -	if (t->sas_ss_flags & SS_AUTODISARM)
> -		sas_ss_reset(t);
> -	return 0;
> +	return err;
>  }
>  #endif
>  
> 

On next-20200404, this makes the three objtool warnings about the call
to memset() with UACCESS disabled disappear and does not add any new
ones.

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404225036.GA12416%40ubuntu-m2-xlarge-x86.
