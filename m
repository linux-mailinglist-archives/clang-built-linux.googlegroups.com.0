Return-Path: <clang-built-linux+bncBAABBLVART6QKGQE63KCQMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0A52A6EC5
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 21:33:51 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id q16sf15587576pfj.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 12:33:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604522030; cv=pass;
        d=google.com; s=arc-20160816;
        b=JUkuIV13bX1NiZcTpCrmb4pUToM38sHsYk80W2Lse46ZQsNZg3T3pI1IfBfep258fR
         GMGjNMmzA9OnydvH1dB0jVVpFeH4bB5oSNKTIN2u2y/R7hVWnFVgwDspdCKsrC7cZS8u
         ldHd3yehS6hxJTQQwWUyHA1pTMBU7hPzTujcJJVzvsEs+Xin2+s3s/ys2jbbH4dg/pvD
         FBk9r9CUkTmshhECrps9CxhuZL/RnZq3/CDyHU+RJM8jqu90svJyHNIkuIB96JDhvg50
         TR3tR1CJ/dIZW8GWPanChTG4xHOrDv2iH0t+8r99qsdqDUJu22Lem+lSUcLkn3HWGhXY
         JdhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jmfqosK0eGb7vbc6qcshaXibjm4/Rg5z18vpvzxpsow=;
        b=G4vvdW8KCV0xQlAeqk8M0ycxt5upiXaH2wr6g61Yt+uHkxK10uBXyXsvauC8CzRV4R
         4BLaMGclXu4+i+nh6pm3iHHLv3xlivPQMzgx65vFJoGcHHwsgKm6vdk5fzD7XzLyKU6/
         NpJBTHcWnuyHDu5noe8uFCYsMPnNGkCQqMQ49sLvnBcQ2DgxzIuTFgn5jKIiEio3YUVu
         latE2aGDApXoWgD62/Vg/Eb+2vptyvwxWDM5sbrRpUsJ48OpNc0DaIDzth+YgyUf+7bx
         25+kyxO8pnT+rLpFiavf6MQi7BPorvTRG69jZfmN5EsaaeODOgnqRHLADPwVA8eerG2k
         KzIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zmfGPfjJ;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jmfqosK0eGb7vbc6qcshaXibjm4/Rg5z18vpvzxpsow=;
        b=cp8c3bUKJUYJRniwOS3u2xOkIBCgiisbzqdL77rBJ+clzzkM9Apno5lsRYJaTi7ZlM
         fBjZH7Wyvsge0Sh/lHryU0LWghmy7O3Z/kq4Ej4IvKYpv6jcRNplRHO+7eGJWwzsVXgU
         oFwW5wSrA8NzD0RPyszcl2AdQTAxNSlUIIFqgf6jebWKTKp3DgOirP2iJknqfUZOPaj0
         q63wtOnBk2SkYQQVg5dME7pyTYfOq5fHvDOWkL1fsxyXiB0+qgApRGGSIOyCw51n3mA9
         Kh/BPzruCFhmHaEYS7MSUtPplwc+nA7maq6o86+JE8EYEhc6i4UYkqVrmznfSOhNLUqS
         w1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jmfqosK0eGb7vbc6qcshaXibjm4/Rg5z18vpvzxpsow=;
        b=dFGoEOgTinL0kvgGRYjsn+GNlmsC4tEDO4dySNQFpIZSqJPH0BuJe8g3Oc1KBtqh2i
         K5MCBgSr2sWlUfxEEGohSMxwiN14KFHMoCYZgaj4lccF0NZkmaA+CwMto2IgSoZZiUmR
         lu5zWBB6TTB9Fq6qHju5M5niCl8QqjmmnV+0VbIFU5LXj+jP/2eEC4/q7TNsPsqkhQ/L
         8wXSPz/QGZAnLcYFxXtVuoLGjdiCzf/onb24JRWeAm3QhnN/qijCFTLeX0ACeGE2ntjr
         yvkR8rw/BDc5tB0/Aiz62a9gkkr0jYUSOsGU4AgFgkUz7Uuf1jZ43eLT/GTrypF2aee8
         9R8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eSgU9GG5Oob26kqGpmjEmK7XsQ0UvLuHnlIznnZq+saec85bM
	45Zg4GMIlKL79kNe3i7zHGs=
X-Google-Smtp-Source: ABdhPJx9+zGzmBBbcLHqerYweW4JecDny/JA0Ts8pwdYeAQQWtdMLPjBhQFRYzPeEfOs1JpTPX3oUw==
X-Received: by 2002:a65:51c8:: with SMTP id i8mr23302960pgq.142.1604522030491;
        Wed, 04 Nov 2020 12:33:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c395:: with SMTP id h21ls1153137pjt.3.gmail; Wed, 04
 Nov 2020 12:33:50 -0800 (PST)
X-Received: by 2002:a17:902:d695:b029:d6:a255:ae32 with SMTP id v21-20020a170902d695b02900d6a255ae32mr25184495ply.43.1604522029967;
        Wed, 04 Nov 2020 12:33:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604522029; cv=none;
        d=google.com; s=arc-20160816;
        b=thAcFZkHvoVk3WyRQCpUxMyTcQSeeV/AdK0Ykkz2uf60kcVbZ8wM1l0yFOr3g+B12G
         QU1JPLpu21+Lywh083J9Dz5kBHEpFbz1n7q/PjejMupJR4EWijdFkmb28h3NysAwJbJl
         7lfMGjpBxnySxpK7rmIY7C3jp3wFka1Q042xBplhR3KeyGbs59oVwutu5XRBXJ9rr80R
         +Re0/5MzncPwdiSnpMEvTfQ1TSeWgjbaomsy0SpvkLUHfkS+YrKeeKGKoLZhbQpFfbV1
         FZ3pIeKJbPkUnCVnA+ZZZW+XPAs0bS7WU33OkJmK76V2NraG9YGznfMbhOGaF2bU+3/a
         XKNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CZCTrrJFxyZ8/PLPm4eaZ9VGQQc9UELFVeSk2ZHbeGU=;
        b=BIhuW5xIG4dBpWyvvxHy/IPyN3wv7yEVQmP8iI8E3tOdXF/yDZsHHr6Ojj/q+MsOpl
         8MHfsra35Ju0N+B9sKk3u/PZ0tcehRgEnK0p7lKAqdrWaVDUUFmy2YAJvdw/ubVOC6tW
         ZPOfH1DBOgZrYgcvB/f0DxHrZJcdRrzztQtYSwrM2zDaWurTADQb4nB+JGkj+N28/RHD
         luFIwJdYWll98mbd7jgqI1a383sN94BjVqIGOoUG2RCPQzL2dirwXadNPOR9RkGZb4hZ
         JRYhCZbkf+HRga7Vo/AvbT2xDru2BbZK5Xuvmleixo/1YXb8slRy9WoxXJ3/ORSmIPR5
         gw6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zmfGPfjJ;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cc22si216290pjb.0.2020.11.04.12.33.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 12:33:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (83-245-197-237.elisa-laajakaista.fi [83.245.197.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DAF77221E2;
	Wed,  4 Nov 2020 20:33:44 +0000 (UTC)
Date: Wed, 4 Nov 2020 22:33:39 +0200
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, stable@vger.kernel.org,
	Chen Yu <yu.chen.surf@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler-clang: remove version check for BPF Tracing
Message-ID: <20201104203339.GA692084@kernel.org>
References: <20201104191052.390657-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201104191052.390657-1-ndesaulniers@google.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zmfGPfjJ;       spf=pass
 (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jarkko@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Nov 04, 2020 at 11:10:51AM -0800, Nick Desaulniers wrote:
> bpftrace parses the kernel headers and uses Clang under the hood. Remove
> the version check when __BPF_TRACING__ is defined (as bpftrace does) so
> that this tool can continue to parse kernel headers, even with older
> clang sources.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")
> Reported-by: Chen Yu <yu.chen.surf@gmail.com>
> Reported-by: Jarkko Sakkinen <jarkko@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---

Thank you, resolved my issue.

Acked-by: Jarkko Sakkinen <jarkko@kernel.org>
Tested-by: Jarkko Sakkinen <jarkko@kernel.org>

>  include/linux/compiler-clang.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index dd7233c48bf3..98cff1b4b088 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -8,8 +8,10 @@
>  		     + __clang_patchlevel__)
>  
>  #if CLANG_VERSION < 100001
> +#ifndef __BPF_TRACING__
>  # error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
>  #endif
> +#endif
>  
>  /* Compiler specific definitions for Clang compiler */
>  
> -- 
> 2.29.1.341.ge80a0c044ae-goog
> 
> 

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104203339.GA692084%40kernel.org.
