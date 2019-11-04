Return-Path: <clang-built-linux+bncBDV37XP3XYDRBOFYQDXAKGQEU5V5JNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F89EE031
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 13:40:25 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id y23sf241134lfg.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 04:40:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572871224; cv=pass;
        d=google.com; s=arc-20160816;
        b=mVD5qinexW0n11s2vX+6h+Kj4vzLy0paGO3xR0cQeOAB521sK5aL6mOg+rlHfyaaiU
         aH3MmmKGWu9AQqpYW290KrSWCK8Ma93/IZdUpAK+WSHSnW0shWhm/tYPt2W4pYox/Mpx
         kte9GETjnE+e6bTsjFdvSwhOn2o9+7kqifCCjcyOu1DWGtpkcv1oBE/VWO1Bua6a9AIN
         LNQm5HO7ha+R5/99dIDTSanHgT2SXu0XCRoBAtOF+rh46nvXb881RFb6bYs3fW1LxlNA
         ujmAObccaIXcx6/6k8nfwqWZAbLlKp0unv1XBx3572+CgIOEsPhtxWNZ6xB5Pb4ymrS1
         bSkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Q/3pCX0SiHKoSFwqCodUoRuT8v2jwHNO+3hYNCEELFY=;
        b=TcQnjJEutRgcduNBsa9MfeeD6+DUR/Zk47vxWgQ+KJNySN/x+FZt/uwS+1MvVsdCQ1
         rpo9a3MYDgCWjvru8E6oFMG/5vUHnaMDa/js1iN9BlBeJsQvZvYgXVcclSNIA1AV/7lK
         DR0VStfkoSiz0dX2h8bGfJigb3/zJwmzM4rJDolym9odX/72+OhW/e/snaOyd5gKe4kj
         CNQr6a11TpjaGBo+xWOtcO5VqIzbD2Z82gm+1R0zy30V53vtk5QW4OKSRRSywhspd8Zv
         /RnUJZ7l/6bd2ehyWdAYbAXhQU+OS4YNrRZfnYP2Hw3RsYas/FWeYnJO1OAmlJyaBuro
         w3mA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q/3pCX0SiHKoSFwqCodUoRuT8v2jwHNO+3hYNCEELFY=;
        b=rDApNEUsAc1avxxYMads+V4m3DONORxYLzH0bk4iBQOhaztpOsT3PHp997HqfSHRMF
         rP47l1px2UDjeRflQ+f80fcLynAsTdo9yuc8UaoKzM8Bx1TKzxo6RedY0uhwu25QTUl2
         n7hiAvADisAihoO/AaE+g4x3A+PIKbq0BbuwmDJ+c6pCRj8AAgVrXVvT8IRd5hrFZC2e
         AfvYgN6ML15gFbaZL7NypFMItnwEVWdoyHk2YFUv+2sPQZ0K/+3hh+pHu1W6NUPNm+df
         BmMMz7flj0qgiASrl8tKEbhp0VEt5rBNW4kN6f7+37wgUGzIU+jcJPDNnnsETFW7kmPB
         X5Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q/3pCX0SiHKoSFwqCodUoRuT8v2jwHNO+3hYNCEELFY=;
        b=F2yHwgoLywd92TIbk4/p8GGPlyJKg1O31vUd7jvH9N8SbFEoRzgIzjl7maXx0NBdUx
         ky6IZxDuQvUp+XBoNhXAxrlDxEFSJXeuxl+aH20YLqwwwiJxgSnOOfXR3xAE8gc8Z7wi
         mSEwEp9J+IXaDOT/if/rSbMOLGwlP6YlfxEzeL+iRPQMYca1KRJ0NBCaKPv06xra/rqD
         ahV1Txz8Wjwz2Wm2pxaxifT0AFoKQ4sbGHU9G5T0H8u225uPXvhzG5UnNTd6XpDO3HI3
         8DW6DSFRE0PMYdt8FDQ9TnxABAYNrIbPBmcvp9XPIieGFzkxp6z2zkc1t+sUsxKi51Ws
         X9bQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX8ZGOLeo6OeJHV755IIed53XQZBIh8qwDdjBb8vD5lecFg69ME
	oFh/6NmOVfn6tDxKvgT00qM=
X-Google-Smtp-Source: APXvYqwMalBsyxbdFrAda8g43gip/ldddDKGS2e2OvKBQXfPgNaJR71pNbNh1zkTysHqNbtXIsT2/w==
X-Received: by 2002:a19:148:: with SMTP id 69mr17812890lfb.76.1572871224668;
        Mon, 04 Nov 2019 04:40:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9581:: with SMTP id w1ls1803753ljh.16.gmail; Mon, 04 Nov
 2019 04:40:24 -0800 (PST)
X-Received: by 2002:a05:651c:331:: with SMTP id b17mr18685481ljp.133.1572871223994;
        Mon, 04 Nov 2019 04:40:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572871223; cv=none;
        d=google.com; s=arc-20160816;
        b=JDq2meRc0DeYqd/0+YKEJ2xacqtLrfo8452zU+fmoNFt7Suw9WiSlhMDHZE2110V47
         m3UrSBOOVICRnLG2yzncZm0EbXIjhx9tiM6UDEd6zTp5kBP8uYdabMy7xjhcmLffitzb
         4G8KNbLL/+yKdRAJ+KZ6XKueSutULw3tuDDLDudej/CDD9JMWp12GkVd5BNcPs01Vmdi
         tUVabHLQuuF014swf55Vujpd5JafW9ckSQsTeMrVDApse5hh0jTU4UncRQpF2++O8gwG
         uAIq82Em2us+f6nNYX2lp0NFkjD+25sMLbH3EYRnnUovgJQhpCp169/ZX7OrfR0REmD/
         Wmdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=gVwxd6gXmsI/0fesna6+VRlXqQtNr5Dn0DolZYtnA/s=;
        b=zqp7OUbVxfTQlYBih7wBDKt6xTB9fQ6HjSvRtft9nzN+A2/vLluuf9tDCE8jEDXHk1
         eb/fjxDVoJ0x/8PNht5XfkuoFSJOt0pJF0A23Z5ooTpFEigMrIYHByssT5TE2UjPm32M
         8wsWpJB3oIZNaVx3IcbiS8cYnhkPXgsIvvLElQ+jfC0MeQCOUKP2K4+ht8S3Zf0+e1lY
         JxYs4zbhc05KrmWj2nUMifGIbArtq1aoutQh+p2H0t5aHRpY0I0QFFtaP0ebsCPo5Yuh
         NTTdHxveJX5rnqUFV69ziN+ewJ3uxVJKkODhxAjf7GxypwNOg86dXcOsONiz0M9pxQXZ
         VjkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s4si1376299ljg.1.2019.11.04.04.40.23
        for <clang-built-linux@googlegroups.com>;
        Mon, 04 Nov 2019 04:40:23 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7EE251FB;
	Mon,  4 Nov 2019 04:40:22 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 433CB3F6C4;
	Mon,  4 Nov 2019 04:40:20 -0800 (PST)
Date: Mon, 4 Nov 2019 12:40:18 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 07/17] scs: add support for stack usage debugging
Message-ID: <20191104124017.GD45140@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-8-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Fri, Nov 01, 2019 at 03:11:40PM -0700, Sami Tolvanen wrote:
> Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
> also prints out the highest shadow stack usage per process.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 7780fc4e29ac..67c43af627d1 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -167,6 +167,44 @@ int scs_prepare(struct task_struct *tsk, int node)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_DEBUG_STACK_USAGE
> +static inline unsigned long scs_used(struct task_struct *tsk)
> +{
> +	unsigned long *p = __scs_base(tsk);
> +	unsigned long *end = scs_magic(tsk);
> +	uintptr_t s = (uintptr_t)p;

As previously, please use unsigned long for consistency.

> +
> +	while (p < end && *p)
> +		p++;

I think this is the only place where we legtimately access the shadow
call stack directly. When using SCS and KASAN, are the
compiler-generated accesses to the SCS instrumented?

If not, it might make sense to make this:

	while (p < end && READ_ONCE_NOCKECK(*p))

... and poison the allocation from KASAN's PoV, so that we can find
unintentional accesses more easily. 

Mark.

> +
> +	return (uintptr_t)p - s;
> +}
> +
> +static void scs_check_usage(struct task_struct *tsk)
> +{
> +	static DEFINE_SPINLOCK(lock);
> +	static unsigned long highest;
> +	unsigned long used = scs_used(tsk);
> +
> +	if (used <= highest)
> +		return;
> +
> +	spin_lock(&lock);
> +
> +	if (used > highest) {
> +		pr_info("%s: highest shadow stack usage %lu bytes\n",
> +			__func__, used);
> +		highest = used;
> +	}
> +
> +	spin_unlock(&lock);
> +}
> +#else
> +static inline void scs_check_usage(struct task_struct *tsk)
> +{
> +}
> +#endif
> +
>  bool scs_corrupted(struct task_struct *tsk)
>  {
>  	return *scs_magic(tsk) != SCS_END_MAGIC;
> @@ -181,6 +219,7 @@ void scs_release(struct task_struct *tsk)
>  		return;
>  
>  	WARN_ON(scs_corrupted(tsk));
> +	scs_check_usage(tsk);
>  
>  	scs_account(tsk, -1);
>  	task_set_scs(tsk, NULL);
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191104124017.GD45140%40lakrids.cambridge.arm.com.
