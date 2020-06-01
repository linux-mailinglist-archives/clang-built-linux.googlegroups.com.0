Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBB25M2T3AKGQETCR4DQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8F41EA64B
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 16:53:33 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id x3sf5468305pgl.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 07:53:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591023212; cv=pass;
        d=google.com; s=arc-20160816;
        b=TyHpFDkOMu3r8ThLPCrme8Nm5E6ulf/XwoVpthTWoKDkbwYqHHB40s1CIn1KiAaMQh
         bDd5bW/hyeoup2Ft8w33ST9ISA+8gdk2WEjAT2MdDUrLjDA6fujq/Q88yli3C6xw0gQx
         TBawTCGGEg7+YQ+pSMknIBnymdVbX5OMVDiIPfxQl1Qk8oWGPcrKlRynRr8LQvim8hj6
         pR5c8RZJdWwPgr9tU7uuxid4llEb04HerVFpcotn7j825MenM9Z9XKoeFp0FesIvIDkG
         iWY6L0RACBZeLPg+0RdU5iEN5JY9ARDOos6R3OzI0Jai4tRZKQfVwzn5woAQKEQsOrhY
         3DzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1nuX2/2gqLw0jAWTqBWpDMrmXWtzto/FDL1h/6rflhY=;
        b=KymHXWzUkjZEgfkqDNffRLNXD2NpzaoTlbWPb/D1OUCY8rSUGR9WqTwPyTsuoMq6oT
         lF/ViIqkXRkLjmcX7j1G0WKrFixS2rExp5+fCGW/egdI5aWW5yWRCc2TF1wGpKmj2Ihk
         U6iK+m41hdSYjN2UlcOPl8NX4W6SKYv0L0+5utrNZDQ2m/HgAlXUr8jwFjA+9szWhwC3
         4Dka1MEDREmLa5/1CqPwtxCSJw9x2HgJ20ogUxhV+7B2svlm18s5JicN1ZW+J6ndlXmp
         wJb2zva44oaEd2AAC+tlbukn5/RGk8QrZDOp6YJComNR69CGw7DFHxOTwcahAuP0REEO
         vIag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HqupUkw8;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1nuX2/2gqLw0jAWTqBWpDMrmXWtzto/FDL1h/6rflhY=;
        b=efVyLUO0QPtGZQKjn6DBzk7+dAD+e4mXWDdG9eeQZDnOPFz+rkztYwovHRdEMTzkQv
         9kUaRLoWQkkbi5jUCiiyTk60e/4qc+MJW98nQQHGTjJDapPZqVcABqL1ePS3YuBTPiMG
         d9L2UfpAHODgBF8378QpPpeSuor/Yt64z2USSGdJPlO6JQcexs2cREcAUiImlr7CRxfq
         bmyHFj0HcODuFmZdDeofRrM08/r14hH4ybySFaJ04OsrFRGq7pcwoHUg/SeQF6QibahV
         5xdC3+yYAt0Grl0Lfov31pzQpxMG0yqsOIAVCQ/uHaKtkTPLGU6g2UX0Qmay2enjp1a9
         asZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1nuX2/2gqLw0jAWTqBWpDMrmXWtzto/FDL1h/6rflhY=;
        b=VjJ7EiOE4ruy0nhKO+zwMXoddTnTdNrA+LwHFAfDAsOMnDI8b+lNc8GNockiBkIECS
         A1XHILh7UuvDUd4rjS9xpde5/JecimAFA7s2IEGDDkeTMTIfaOj/P/NZCK1tjX0KLP9P
         N0ChMw4NX8i3miks4psXZbSern6+isCtzSjbGMZ1WrZTBcnjN+6/PQfB5M1qUcjUMdNn
         5xtDJ91Ya1XnupdIUyhqD9cV+lGGdqsXZJeI3CTKAhBPqiouDL3U0YLC5LmRo9t/SGVb
         eFOGK1NIKOEaT1FnyRnczUuO/a82ftx8ptobnPaDgjD0ufVXjshjAv12Lm/QAOHB/HwJ
         2bGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533siUKVQ27pDax77LX7MEiMhZgrmV3pQOoh3Q+BUHe2zFDSnjpm
	0ASjP49Th8hjThtqv/lQi78=
X-Google-Smtp-Source: ABdhPJxXFjYOzViF/5IMjyEVZ5xVzREphchWbBASf0/fSnYjqy9BzZTeO6a/0ba9Q7n3dh5mwpzRsw==
X-Received: by 2002:a17:902:aa01:: with SMTP id be1mr20247731plb.63.1591023211798;
        Mon, 01 Jun 2020 07:53:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8548:: with SMTP id d8ls1754368plo.11.gmail; Mon, 01
 Jun 2020 07:53:31 -0700 (PDT)
X-Received: by 2002:a17:90a:31c:: with SMTP id 28mr24905166pje.2.1591023211331;
        Mon, 01 Jun 2020 07:53:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591023211; cv=none;
        d=google.com; s=arc-20160816;
        b=VE83uzqwJpfcpNbJZc7DAERs051ckKtzRlZb2h9JjWgv95qRSybuJkFYcggEyM8Vxr
         p4mmRTyOBxEgd4jHP2LFEaywK8++TjV4M949aNUa60zEzoN5Hf56tk6QNlrXlM8fGkYc
         T6xf+PcpulxAtkucFpPv/MXz99J5TIlrwxjF9Rr7z8FGzV9Ka5yX6cO1p4/PfmG7h6QK
         /KSYXDuKpnQiVmiFL5M7484fgoJyMQ9ooaPlEXkbgMr5qXqAEO7DVQcYX/6UBNiwPphl
         RKxz/ADnEh4oggZsefpTp5s7eh6j4y/Glh5d6aEELrXSTXEibvnX2xaCOwxUi2Z264Hg
         ENhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Y1U4XzKRwVI9PeTiFTQtrqJhiUysL9gSBJXCv1DF17Y=;
        b=VdNi/DENTf9EcX88JGvuwYWLCrw3sOGyRcVpt3gr5wjQ+ZBwi56YfxhdFL0QT/XHJM
         x63DyaJ4SwMPtVDTiY7a4DUFVaYysrDal0WfS5AtEUbEU9xTBkGBIiVyUxuf5EpBNm8B
         IEU1j4SDjx7cYIn/3orimwmDwZ0VlWk26jRj6jHJ0DXTmlRQ0gg78/bl7DrFKhZ0FQB3
         QYBby1pULUCW15q0JuaVkWJCi8iAoHlZBK4JdtTtJsEh4a+7nykA+HXe1ujFLb9ecyG6
         jgjd6ETng8vubFoyNKAF+NRk0RPgNO90jKY2iEr3HakgDBGzMdyRX5OB1eRZvdDIyzLX
         cLkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HqupUkw8;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a1si1102632plp.2.2020.06.01.07.53.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jun 2020 07:53:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C89062065C;
	Mon,  1 Jun 2020 14:53:30 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id AFDE040AFD; Mon,  1 Jun 2020 11:53:28 -0300 (-03)
Date: Mon, 1 Jun 2020 11:53:28 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Quentin Monnet <quentin@isovalent.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 1/3] tools compiler.h: Add attribute to disable tail calls
Message-ID: <20200601145328.GH31795@kernel.org>
References: <20200530082015.39162-1-irogers@google.com>
 <20200530082015.39162-2-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200530082015.39162-2-irogers@google.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HqupUkw8;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Em Sat, May 30, 2020 at 01:20:13AM -0700, Ian Rogers escreveu:
> Tail call optimizations can remove stack frames that are used in
> unwinding tests. Add an attribute that can be used to disable the tail
> call optimization. Tested  on clang and GCC.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/include/linux/compiler-gcc.h | 8 ++++++++
>  tools/include/linux/compiler.h     | 3 +++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/tools/include/linux/compiler-gcc.h b/tools/include/linux/compiler-gcc.h
> index 95c072b70d0e..cda555b47d3d 100644
> --- a/tools/include/linux/compiler-gcc.h
> +++ b/tools/include/linux/compiler-gcc.h
> @@ -27,6 +27,14 @@
>  #define  __pure		__attribute__((pure))
>  #endif
>  #define  noinline	__attribute__((noinline))
> +#ifdef __has_attribute
> +#if __has_attribute(disable_tail_calls)
> +#define __no_tail_call	__attribute__((disable_tail_calls))
> +#endif
> +#endif
> +#ifndef __no_tail_call
> +#define __no_tail_call	__attribute__((optimize("no-optimize-sibling-calls")))
> +#endif

Added this for some retro-computing old distros when building with old
clang versions :-)

- Arnaldo

diff --git a/tools/include/linux/compiler-gcc.h b/tools/include/linux/compiler-gcc.h
index cda555b47d3d..dea7378ad646 100644
--- a/tools/include/linux/compiler-gcc.h
+++ b/tools/include/linux/compiler-gcc.h
@@ -33,7 +33,10 @@
 #endif
 #endif
 #ifndef __no_tail_call
+#if GCC_VERSION > 40201
 #define __no_tail_call	__attribute__((optimize("no-optimize-sibling-calls")))
+#else
+#define __no_tail_call
 #endif
 #ifndef __packed
 #define __packed	__attribute__((packed))

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200601145328.GH31795%40kernel.org.
