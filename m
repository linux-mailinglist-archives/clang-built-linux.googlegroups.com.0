Return-Path: <clang-built-linux+bncBCIO53XE7YHBB4HNQ74QKGQEQ43EOEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id E45E523278F
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 00:23:45 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id i9sf6917402otc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 15:23:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596061424; cv=pass;
        d=google.com; s=arc-20160816;
        b=JM9d5cHaCnb6dpaTi+Yja38X0F6+qSa+h3tuQ8HCZkr1MsMRJHT+bvVeFRSVL2Nvfz
         FqozR7gxD6ckhuE2nD1oIr+U5jXyZ/q6AVS1OAmN+nYbEJwdToHfTU2DavoFfE3q+UeG
         4qNvkC/9Iuh4s+/s2dDonV0uz4CArjCjcFPdgTqIPTSQK1avnMfCAn/lHcsAyi31JybJ
         JYNP6C49kCE2BoSTygGJY90P2jgd3WjbIX31XhbjNqF2XTqQqA/LU1ZOxcX5EhDmf6dF
         RVyzKDWuG/7JMD9uVSPT4pE3uS+WXEHhVg09/0VEuh+Uxf9XxHXnjqsu/0n+lrZeG0dt
         r+Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=NnipcUUv+LIMV2V9xi8cXtOtHSM5XoVRFQ3RXDdRczc=;
        b=xoxR4SKuJUYEsYEFj8In17bgc8piG5Cdq8wwNGbUFlRNedSVaktNgz6uXMT+2lZtT4
         P1nRWUzUtRMJrwfeelNy1a7Z5Nz6JYFSv4yRgWSDndpUqpu/AZ1umSjH5le580L8mrfp
         +f7LaNUAcdoWuqVWNbOF3dCtc5Q0Nzi8cF9pmajvNleR31MCvphLe/+hpCJlJlqbvvGZ
         VdNgZutJe4zq1kwddSaDRqFjrWsTQCxL6OdeU5O8n/qHcVQwnE6+qXbFXS6/qdExzA+V
         0ZDWJtcCANiFlJFCYJWUNkgMKHJK2LbeUzoFeoaJ3qmdp3fBN+n1ojCQvepW3VBgnVED
         nNAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oQp6rQ8Y;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NnipcUUv+LIMV2V9xi8cXtOtHSM5XoVRFQ3RXDdRczc=;
        b=Q0mybn3kejVpTfeF/5YnKjOzWoZtIuBeKG6iPzmTXRfthIDH1wpTaKtgh7hStWMlsk
         Owl0MFRwhtjEOaeoaVWF9uAgFCXEzytrc/EpBNc7iJcp0XcDy/2iH7BXZJ1H6tnz/V4e
         bHaSiGCR50l/IWnqDi4Swk8MlOZgG5A6F2Lpx7ZVXf2kXgRHhIvqZXN4HPCaRyO2L6di
         3eubATF4l9hIxu1GVAqkxmJctQyU5FhLKmbJBHPGjrcM7fFv7YHJlgBhDhxvKTmnwG1w
         VT/Eoi6AtxnctrQKHoP2Tg3Sz2GdJfHXbbJ8gZda8AppMET9MhdfD3zT2J2QiTbyYJcX
         XMsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NnipcUUv+LIMV2V9xi8cXtOtHSM5XoVRFQ3RXDdRczc=;
        b=mZaOyLe9Cj9xLoJncDiIhaA8bEHar60AHVT3vTHS3HSl6KwjyYgJfK3yeB6NlFajEl
         jy1cY7l/H7OfyAA2gYTQHHeVBfine6/fHx6vi/3LB9P5gwpt7NiscRbkKd2MNY7tajsE
         9OOLo/GOq0WVa+tV6CqV28jGbK4l381aM+iWWlbk/YxVqx5geoj+XIFqwnCBxjtvP2v1
         uxPoHXMLoDBE2lVNJdhyM8GeLCSwtAlTeDBUOtEIoTurMAP7mpiLRpupw5tg9V9Cl5Tw
         M8i70ANDVemaHQSgY5ZnR9W3NW64OBQWb3PHu+k/MH7/B6Uqn2m3BjaVer/Y+abQRfsc
         +QSQ==
X-Gm-Message-State: AOAM532or6+N1Jile1yD37dyNcOFs1fu6E64wCPV/E9pTl5VU8SkQf3K
	xiD0Y3bIlv+UrTac3QjLPYU=
X-Google-Smtp-Source: ABdhPJwD/C460rHUnDmdpxUyrCw3/Pq+ZWOqVNrMyTzCVJHJ6ASKh5iMSX8YRkEf3w/vbpFwtRUnVg==
X-Received: by 2002:aca:3c07:: with SMTP id j7mr9246546oia.143.1596061424461;
        Wed, 29 Jul 2020 15:23:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4f0b:: with SMTP id c11ls224330oob.8.gmail; Wed, 29 Jul
 2020 15:23:44 -0700 (PDT)
X-Received: by 2002:a4a:c299:: with SMTP id b25mr6947ooq.35.1596061424119;
        Wed, 29 Jul 2020 15:23:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596061424; cv=none;
        d=google.com; s=arc-20160816;
        b=d0yjYHezqxC1bc1PzDghEdSMFtMjDa2aods3ykFgFwSA+pBcpzaEbTXeTK0LZjtrsb
         mwdFX/w4cdQr/V/aA/Q4hAsQv5sz0XI5W3h1ZcWuetM+6OL5M2ID7aPGBAbmqVrQeDef
         8BnqxRMweTQCvZLjdCp1YrLG72WAYJ470c7q5n+29M1KUEvqF/qurx3uAq9C1OfbUCDs
         Pw9JH9TyRy5dm4ErUllMzzs0GIXZ/acesp1pLGt1nfgsuDPczN5uM1tzQumVuJB6Q52F
         J0G9Y0evPv51dh/vUODtIk3SIlkfi9EZ3qTqj7TynRWxd0DIr73UvgHmIDALlk42TCNF
         /gHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=6YCAc5J78Gb3CL6JITqJCex4PtmMFXj1bpF2ImMkMxc=;
        b=vAvQfDoNNNwrPoZ+s4w2tr4CH9d9xGD+TWFq/9BKAjfJQlgxRsPeyDHWnFRDjpuks9
         /dlCN3aTpLlu0sjXoZ7BIfi2KqZIJJn8ta4BxYOaamS9mrMV4QQOLauE2zVI1uxtt+kt
         MCs/V/LYrN5PtMr45NIVfVjTqB1kMszNxHZsB6l5Zv7QReN+dcVEQXodDj1Aztl62Jb2
         y439/lJ6UvNtJOB6DWjujdeBrzIizYX4y2pxa9+O2vWsf7iyyXdeAjArjvkcdyxn4dLF
         ScLf5QXOwy2YMGlUhHXlcJqVr8mrWIFQy5118BEgr4qDarAZe/QM/NhaMj6zQrQzBWc+
         x+ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oQp6rQ8Y;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id c142si216504oig.2.2020.07.29.15.23.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 15:23:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id d14so23843474qke.13
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 15:23:44 -0700 (PDT)
X-Received: by 2002:a37:74c:: with SMTP id 73mr33611992qkh.468.1596061423588;
        Wed, 29 Jul 2020 15:23:43 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id g61sm2865166qtd.65.2020.07.29.15.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2020 15:23:43 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 29 Jul 2020 18:23:41 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH-next v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
Message-ID: <20200729222341.GA684483@rani.riverdale.lan>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
 <20200717201801.3661843-1-nivedita@alum.mit.edu>
 <202007291502.18DC4C0F@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007291502.18DC4C0F@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oQp6rQ8Y;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
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

On Wed, Jul 29, 2020 at 03:04:43PM -0700, Kees Cook wrote:
> On Fri, Jul 17, 2020 at 04:17:54PM -0400, Arvind Sankar wrote:
> > Same as v5 previously posted, but rebased onto next-20200717.
> > 
> > v5: https://lore.kernel.org/lkml/20200715004133.1430068-1-nivedita@alum.mit.edu/
> 
> BTW, some bits of feedback on process:
> 
> - please don't re-use version numbers, this is confusing :)

This was a special case as there were no actual changes in this version.

> - please fix whatever is happening with the "In-Reply-To:" headers, the
>   threading is extremely hard to understand (each patch isn't a reply to
>   the cover letter, and everything is a reply to a single earlier email)
> 
> -- 
> Kees Cook

I think this is because I'm passing --in-reply-to to format-patch.
Seems like I should specify that in send-email instead, hopefully that
will fix the threading.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200729222341.GA684483%40rani.riverdale.lan.
