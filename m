Return-Path: <clang-built-linux+bncBCIO53XE7YHBBWPW3T4QKGQE3FQDZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id E32DB24505A
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 03:33:14 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id f197sf4881649oib.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 18:33:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597455193; cv=pass;
        d=google.com; s=arc-20160816;
        b=UvCfgjkMhF41XqnRlPOShFp0TBfmPX67tkkYLbqMmpeFVu3x6cmQhA8SfEDtLUuh4b
         dy6BTUMVDH49blxJsQPCje0TSw/mjYcE5CAQ/NjVbk038KQffNRniU19HhNPBmv6vV7Y
         LQg/oRbWyA5Dnmat0cGb15Q+rMO8Ei1/tjWaf8/heQUy09U5mhl00xianC6lI8N0Bfjs
         3L5gvpwcPF7wrZ74Lgh6+1fqTp5QQ+fw3WO4oIe28MunKsl4qp01Eav3dgKyzpiLVRce
         IyXFSe9XAiric2SG0WpXlFC2vpWq5HEdu/H5ICnYLktwQ/9o9hUEslA0SDiDKoXsUdBG
         o9ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=e4OVamimJ/KSErAq3ieXarda5uw6ns+vJiT46cOR0Ro=;
        b=sqkP9rNI4ylarVc7kzYGHwN2Qv1wFFl3E0hrED+1Sv3RGkNy7CISbOvYlQ7nUxkVje
         5AfWlXJ3rdSI/2sz33s4BaTTJQ6LxwqFNdgvOF/Gangh9jIG83uPh9DP55v9N/Z0r2Xt
         zQi3SyuWhIWz2b2BSRFwbUvx6eTL3e0794BRrs13T6HaI5rHrsdcCHmo72YXUsiiyIIu
         J+wvIcypCLkhKQDXdt3O0PQ+v4X8zoCNaHRS4KgdQP+COm9pnjCsMXNRG8WYYQXhmwM3
         Kx5KIYBryJ0WMQBRyBto2eH8h3nR0A0V+MSlL3m77TQKklv0jDav90W9LHmlloO/by4l
         jiKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bI9yTul+;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e4OVamimJ/KSErAq3ieXarda5uw6ns+vJiT46cOR0Ro=;
        b=mR9WiZ7Co+fJPmcL7ucylvrY/KJtxumiC9j+5QSgFJ9MURu6zNDe0FPMFmB2vdjwOG
         EYijMifwjANMoPAP1xPU5B5P0O7T9ZdGBpyQWBbVw2QyK0Deom6wyYHyRxK5H9FoEsHh
         P6BJZLNhYH+l+fh+7RNaa3F7z04G72oYpz74AzUy8osAyN+0XJTAjgMl6NIf7GXuIWtF
         q3CcixUJ7MlYUU0vu7ItbYWATtY0vkGvgZwAGVuWm0Sif9Fa3Rgj0m3zfmja+NlG1Cai
         t1fg/zNf1hGM+DJC+UDQRiV4404dvakSQygv9I/KU7NjIWKpmsDlKLUNTCvmyypIjrh3
         7xIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e4OVamimJ/KSErAq3ieXarda5uw6ns+vJiT46cOR0Ro=;
        b=EVscQkYJbhShyiMS7ljPQ6EIJltqt5a45sIq+xccrYmJ9TX4ZCod/fAyJsvhWpXY9n
         8wUdi202XhvZc6J4vlgYyf0eOgg7cf1U7p4CIq+QhoriOUjHXwWW/g/QuRP9yUHlMRK3
         dgkfH1F0p10rCkrYmSagTWL6nhYT0pGJ8i1cz+PLr8o5vs5FCYtXySp6KlevI/iY+Lvj
         h3UcsUxPD3/J+SD2od2BDl1OOTn61ovIqxLaRmtcKbAL4Ef28Lo1pPryRwkHt5QLSzDe
         +TSKEuPf0XVMlpZ6trCuIa1NfgoJWnyuq/D2uLTAmOOEIYDetRJampLMlLPJ0NDpvUil
         8ccA==
X-Gm-Message-State: AOAM530octIpc9hWQ5Bo+MkCe6E2wS92/cFg5TE4uOHqz9qCD6OQUF/u
	Kk8xBPGZzR5+QRYV0A7Fpi4=
X-Google-Smtp-Source: ABdhPJxP1yH6okkiqgtSKATDbzFX/+P5Uw6J9oJYQhWRcY+yU+0pwhLDIPzzffBiuvWzByOLf2aRnA==
X-Received: by 2002:a9d:2787:: with SMTP id c7mr3958851otb.29.1597455193642;
        Fri, 14 Aug 2020 18:33:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2103:: with SMTP id i3ls2400492otc.3.gmail; Fri, 14
 Aug 2020 18:33:13 -0700 (PDT)
X-Received: by 2002:a9d:7684:: with SMTP id j4mr3970888otl.266.1597455193344;
        Fri, 14 Aug 2020 18:33:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597455193; cv=none;
        d=google.com; s=arc-20160816;
        b=He5UwF9FEvp3T78nWFYUOKOp2JkPpvAIM+licviD/8nS5QqF6jZNOoORYBWKd72M5F
         28t7fycllcAjBdD0Yweb+LXoQHgddUpVwFH5Cc4tPRYX8ZQ71wG7DB5Ss7Ed9GrN+qtZ
         dn9Ga4z0FM72wjLYtw7yS7EVpGsp4MKeE8FfwInbkNOlij5BvNVzxMznoIsEpiNuuHiR
         zmD5ZYpHLAVrMPM3ebxgd4nfC8WLrpOg+Vj3sMlW2QBM5DefidyKChbdrAYChtBjLHl7
         bVHGKY9B1Y3PpzAGsZnCipqI8EKaB6fTb0MHp9L9EW8zpK9I+4o+mHTByIZ8MZf8vO8u
         yUKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=vJ/jVWhGTXG1e9E+PiLPXFME4LoN6xMadImJ1YD9YHU=;
        b=APlhojP7Ps8DDHfa6kdJfEml8Pxenb7Jw9VG1BeASlC9LPFs3hLrL/kpSnQWu+139I
         dIDY+2bZkt3W+P4bHIkUbbXGJsSuBn6T87+r3kMOv7djEdclx5iyZs5qt+kAW/B71/lz
         QR0aIh9wCnjw4BjCudvQ7g5WfYoq0xf7tg+0m8NKpCaMPMP+mZzduSdMnGI66Y19TqpF
         At5XmUe1YHrg2M46gi14pLtlGmyh28tK0Dqpu7+a7CWzvT+kZvffrXsJwuHcDnl8fZvl
         oF+08KqtNQ0DeR5ssZQkBZIAOfxVgAzwyawG0wyfPJey8Snq61HZgmjsDBZN1en1VDb1
         O7JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bI9yTul+;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id m19si695395otn.1.2020.08.14.18.33.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 18:33:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Received: by mail-qt1-x829.google.com with SMTP id d27so8366468qtg.4
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 18:33:13 -0700 (PDT)
X-Received: by 2002:ac8:7405:: with SMTP id p5mr4604950qtq.308.1597455192803;
        Fri, 14 Aug 2020 18:33:12 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t69sm10061523qka.73.2020.08.14.18.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Aug 2020 18:33:12 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 14 Aug 2020 21:33:10 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	=?utf-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>, stable@vger.kernel.org,
	Sami Tolvanen <samitolvanen@google.com>,
	Joe Perches <joe@perches.com>, Tony Luck <tony.luck@intel.com>,
	Yury Norov <yury.norov@gmail.com>, Daniel Axtens <dja@axtens.net>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Dan Williams <dan.j.williams@intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] lib/string.c: implement stpcpy
Message-ID: <20200815013310.GA99152@rani.riverdale.lan>
References: <20200815002417.1512973-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200815002417.1512973-1-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bI9yTul+;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::829
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

On Fri, Aug 14, 2020 at 05:24:15PM -0700, Nick Desaulniers wrote:
> +#ifndef __HAVE_ARCH_STPCPY
> +/**
> + * stpcpy - copy a string from src to dest returning a pointer to the new end
> + *          of dest, including src's NULL terminator. May overrun dest.
> + * @dest: pointer to end of string being copied into. Must be large enough
> + *        to receive copy.
> + * @src: pointer to the beginning of string being copied from. Must not overlap
> + *       dest.
> + *
> + * stpcpy differs from strcpy in two key ways:
> + * 1. inputs must not overlap.
> + * 2. return value is the new NULL terminated character. (for strcpy, the
> + *    return value is a pointer to src.
> + */
> +#undef stpcpy
> +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
> +{
> +	while ((*dest++ = *src++) != '\0')
> +		/* nothing */;
> +	return dest;
> +}
> +#endif
> +

Won't this return a pointer that's one _past_ the terminating NUL? I
think you need the increments to be inside the loop body, rather than as
part of the condition.

Nit: NUL is more correct than NULL to refer to the string terminator.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200815013310.GA99152%40rani.riverdale.lan.
