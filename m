Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBG4M3P4AKGQESCJUKVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 27165227D47
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 12:40:29 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id k4sf1982728pjs.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 03:40:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595328028; cv=pass;
        d=google.com; s=arc-20160816;
        b=plk2EAh7UhmwQN0q+AqmavZs+xXS0SeISCiv23uFY9mkYDl3Gi27nngsLs89BWyAlW
         CCR4KiK8ZbWM/LrIBH2qBrANk18+5DrRTmeMcJaVDVKEr9VFQvO4O0ld9SmcC/7UmvVh
         /J7GI5ygmgwbcoQLF3n5v3b8MZI73aJR+q1yA5dGaBiNC9DYN8pSc4e/BXLmm6F9gIqf
         C4jDeJy2FaJS3R+KHXPTmbwaVQzHAYF8ysOIdvY1sGjHpgD0cBPhuC9L8XPyS4C69Ojm
         QDQkm+FinrogMp4xh49IpK06x6BaMvc0kixG1+Bkv7KvAMBgwJ/qbH/6iviS8mCaQg2k
         ojtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zTKNL1Fwkf7McqCFIZ2h2OURtR2UMYORDZi8hk06O7M=;
        b=ONwIrPUwfj4lcUaxv9voeCv5DB3mT/NAz8PyNBEc5Pz+4U6cqPJ6z54OHIqs1jCIte
         T1fJrZDxSM38rUKICDaiNC5OFjfbwpTV3UEl0wIw4gX55ssJK1uThXlrkwR4Kze9K+24
         F7/4tRmgI/ecGKmHXvbNSjIUPoScqKDyL8GZLxFEZwJq3FXR71c7yEt2udqez5bB3634
         Jcp8iJ3HdQ0ERxzUxOrnXSOLhWwnFaOap+sAj4acPdaaITmDc9aYV2+/2Ts6iuCv0Mf9
         z3bZeFK8AC20M9XEndNZQG8gTw/UdEvwJDh4GQVB1EC4ClzL4EXHDhPGnvqtVoOZ8BjY
         Wj9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xWdL9ZvX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zTKNL1Fwkf7McqCFIZ2h2OURtR2UMYORDZi8hk06O7M=;
        b=RCc8coJrCqqOxP7wHNYhmYsZo/mXj8igM67SSwxrioYfUCwvfPEVH8mhQdpEtckXrL
         GGMNFI8KN7Q71yzEHH9NLCnXXi2WQ7BEdjg7LUV1li5zW0EuC6DYJavYeWkxq6Tsr44J
         fFh0NUjt20h7iSBM/AWrJbtpDyskwDUHOkQqQ7lQpH9ZQfsPcpz0TKTXHnRHnKTd4L3W
         EoGpsSdW6zIly4EU10flTLuZ0uvRR7hTXU18nSSMBMxzCZ3sv7jApPeAUaUqA+a1sfqz
         BpJ1Q6/47bprbeGa/EQuYbHpM7Bex6k7QzOp1NwKhkDRfxzBl/ifMUGcj1EfMKHjORHB
         4VTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zTKNL1Fwkf7McqCFIZ2h2OURtR2UMYORDZi8hk06O7M=;
        b=f1fOgld8WFZ2IlxsNEtiFb5P1org0CzuUJSWlWztiyA305ippcDuVtFyhzEfM2IMeo
         +SyRKhO3dfUS8hCSYAy6tzYJfWCy9lLZP3/BAnTDZIBt5vBXNd2BtNl0NuVygoCyOG73
         dRvXhx93hEzsN7TxD9+RPhoIMg5c92X9QPMJXeoSGxOBtJVoGxCfEUZLoW5C5KIOcULK
         e7m9woOb/i1iCZIygrgAtrM5sUX0J/tjwLJP0ZDcwBQrwkq+6RGL/NC4CtMrPZV2Wyoe
         Sce4rvvm0/sBR1zA3mVum++rcYODy5nnDdQzQkpcH0c/dvux1pMe67c3K4/Jq73xT87h
         Tgbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JmvG4h6Wn1yVasXAMM/86Tp52RHiXJ8MmjzMZS96OqBk16BoH
	XtQnVqm7bHvrmahPf41HCOk=
X-Google-Smtp-Source: ABdhPJwCYn1uKiAE7fjsQJt2I/8rxfyRkdBkqFOvOnp2OauoOoAylSRj27LyybbP1i8cXEW7JkcIbA==
X-Received: by 2002:a17:902:c082:: with SMTP id j2mr22057328pld.285.1595328027752;
        Tue, 21 Jul 2020 03:40:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff08:: with SMTP id f8ls3945350plj.1.gmail; Tue, 21
 Jul 2020 03:40:27 -0700 (PDT)
X-Received: by 2002:a17:90a:3770:: with SMTP id u103mr4423202pjb.102.1595328027360;
        Tue, 21 Jul 2020 03:40:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595328027; cv=none;
        d=google.com; s=arc-20160816;
        b=zUUWCf7nCSPu1bOVoUxGBo1Wsv9JFokuqP3GlCaL7hMIOAyDnzrbkaqra5ni9XNVIP
         XXaKLBIrAGohWiLjidDpmrfZNWz39VkQlzDkOFN68qiJ8Hsi7/MttDwRWTIEuIecfSPl
         uRlxV2DDuNo9v5JDnM4j5jlWmPAecUItgkMxZMLuMKbtT5XFVn2WP5hQ+m66Ul5GF7hX
         Ov/LDra5BoQT+fDi4bNn7PI+uj1iS+v7aC5NPcMUSFeTmr+WP9HEtR0VQxeGjwtHWfFn
         XC5+QkXAY7A/qbaurjpYQxEWqq1rH37GhbzkBtdJFwmWYnHgkpHLgbii7qsk+0IeLTXm
         zoYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OKNqun5EO+A2xphsF+6iq/2ntWNNto0satwPEPqRqig=;
        b=vab7hWAhpcRJ8kA5sh6kQwg/XefYOqV4+wVE5bPRTWZUOEIPIg36l5g2I1agt+bQPV
         fQd7jdRcpkAan3htoGZWiR2VbLkFBaJ+Hv/U5RB6JIYDsgpEPzHf0RNa1/UOyZFXyxS2
         lK8oCxslfScIvAYBUdCNyxn6+AlfQ5wGHrSnzmLxAPx92dNg0GUlASIKLoA5ekcISihy
         8JJvJSjkaiIDGaoB/Oqjr37CHhqg934RLR6Ahg50xF/vLLVzEZkSSOe5Na8TuFGngFY+
         mCdYkCd3iD7AuE7m2cI3N5Li81tgDbfyLfR5JfHGd5YHLPJba+g+E2AH6koSgx1jcUX2
         b4bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xWdL9ZvX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y20si839553plb.2.2020.07.21.03.40.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jul 2020 03:40:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 42B0D2065F;
	Tue, 21 Jul 2020 10:40:26 +0000 (UTC)
Date: Tue, 21 Jul 2020 12:40:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org,
	Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
 cross compilation
Message-ID: <20200721104035.GC1676612@kroah.com>
References: <20200721041940.4029552-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200721041940.4029552-1-maskray@google.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xWdL9ZvX;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Mon, Jul 20, 2020 at 09:19:38PM -0700, Fangrui Song wrote:
> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
> GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> /usr/bin/ and Clang as of 11 will search for both
> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
> 
> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
> 
> To better model how GCC's -B/--prefix takes in effect in practice, newer
> Clang (since
> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
> instead of /usr/bin/aarch64-linux-gnu-as.
> 
> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> appropriate cross compiling GNU as (when -no-integrated-as is in
> effect).
> 
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> ---
> Changes in v2:
> * Updated description to add tags and the llvm-project commit link.
> * Fixed a typo.


<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721104035.GC1676612%40kroah.com.
