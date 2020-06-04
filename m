Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLEX4T3AKGQEKVRW5HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF8D1EE70B
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:56:45 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id s4sf4142790ilc.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:56:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591282604; cv=pass;
        d=google.com; s=arc-20160816;
        b=OprjD0A3Wr4D5WU7pF/1aDd43iO/EW7PhAeeSgQog37qo1hVsI+jK0bCXTjLfwOU7d
         qaBeRKXyAdgzMylRvIyc1LMro/lMKMh1YnGn2FG1JZ8Ikxkt1/vkJ4//i2yP1XXB39BZ
         +hV6CgK5Ohew2J0bMm77pWIDlNF4KMT4aEgP0e4FuL4q2UxKivsgFJ4SwdXr8RBA3CM/
         939ig6Ic6mNShhp0cyHQ08vJjfPKrlZxGIPWTRzT2ySruAbMM7rCRnj1pspIzjj/WkDh
         cnElv1jtbClaxPOqbaum1DYbKcy1c+2JEk+FG4Ynm52mLq+GQWYhfvvXzZO6v87TD2mW
         p11Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1+PnfqXK48t1D06y2elL++qYA1shMFZh7/kSx2yLOZw=;
        b=tjdsal14WGF3fJZgVYzFlq/nm2Ep5UElm2zCCS5pgSlAXXanCCX+cw0Ie/jGLYrQSQ
         NwhDI6OnIYwm9fEnAse6oCCO5AD9bhaL6j0l8srHL4Sb+5GAKl7XMIPc4SPxSG188Gy1
         OCaBIZMC39BG3wnDDM9iHZr+t0Lfd2ync15yZrsk9WGGd+MiMx1hCTC+blIYc5pulvO6
         isO4jO657MUeYtc34s1kz79pOYNL5G17Fb3GA8Y8hYFXy3V6xfwTZFDF/gqaPOFWlK97
         G5deLLOcCvaXwABYJUBnaAvUIBq4qVfpICM0Rl4Sjlb/DuTVQrAPrLMNq0IZy1VnU/1t
         /uBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S90pbrXY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1+PnfqXK48t1D06y2elL++qYA1shMFZh7/kSx2yLOZw=;
        b=fTUx9yEN9sKNK9xBfAVlo1Wvyl2Z1SOxX4RTzZfnjXWjb+Qr0+T49j8VF0G13nmAoX
         JGIs4UE/rQUK6O3r+is3VxEC+KCkdj+a9/kzb93kOtRiJeMSLpLk8FZRhSMkjqkpqorG
         j2Rfht8qgTnZdfksN3i6YVmA0jrMK78BYZYxmYoSNrWykaVQDaIqCv8xfPV8rwoRQCG7
         26hRCGE6myCfSd/0PsjZFE7+JzZkO5JC7r71lM26MJ3u9GViu/sTTYK1MKubNt8wTL1W
         SI1Tu9VFUu81VhZTZy8hMQuOec+P6NJtYe/IkG+nRMLIIflBZ2GIskgj+Dx39CTzPj/j
         pXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1+PnfqXK48t1D06y2elL++qYA1shMFZh7/kSx2yLOZw=;
        b=I1EQZA98jl+F7bsz7LLOQ4bi0ndLV4VyGWpLqkPU9wE4tNDOzDwvwHvDlGmxYnCmha
         u+HtXgADBva1mqKJHKilRvdJYhQfmTBGZcG1taEyVWB/Ym/+9DrwceKWCe9cSfFaQJFt
         bPJyuDzKD+7DO44+LsHgBXQMTA0IG/GAfWsYjU5IwRCavQscIwKcGpI88L/5Q5Xe7j1U
         mabj7L3TYnhNvtT+tF3Uoby8tB0rSNJH7Y+pIQgsr1pxUb46yXG17ApeJm3kH4ouiv8U
         jWLZhayU80JiloZDx7O0AMTX3FjSu5Pl9G5pa/Zyn1SQMsOY8DXWdQvghZCjaUVTXsMN
         DMGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gWValPMq+Cjx4EcXPLovhaaP1myaTmPjnDM8eIyxxaGlgXxoi
	sjsjIoJWTM9S7QPFHYcYbSw=
X-Google-Smtp-Source: ABdhPJxJ38vtp5w+9bVRO6sAE/6RApjlrLrsxIUcn7a3/XCcSijybgPrYLy3F3NceZ2fT6ucNK0y/g==
X-Received: by 2002:a5d:8e0e:: with SMTP id e14mr968812iod.17.1591282604056;
        Thu, 04 Jun 2020 07:56:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c9cd:: with SMTP id k13ls1690810ilq.2.gmail; Thu, 04 Jun
 2020 07:56:43 -0700 (PDT)
X-Received: by 2002:a92:9e51:: with SMTP id q78mr4204972ili.128.1591282603233;
        Thu, 04 Jun 2020 07:56:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591282603; cv=none;
        d=google.com; s=arc-20160816;
        b=mDUXemZoj+kZ9JUlieYzpPYbkKZ5weBpW/vREuyGLjs2XOlOyden4AY+HA1SU+p/B6
         oo8iiGITSdTcyv+LXnk0el65xuDMAZ61EjupDnehsBdiU6MZgoJVX2FZbaW0G1/b9ye1
         9GbTCivXVmn1+uhXxiGGxP2dP18oPl3JSj0ca/e2uFsiwoy0m7sMFVtHGcuBj27o5loZ
         eCNWhvv3Df4QBdFFDxNjyU8RZtrpL9hHFqhEkPzBFw7YcHIovDPJLKlv5RL39+68w6nf
         E2HCpQa6LAKh4Q1vz03oRqpjNEAas/1sVPLMF6jiP+ICu0KduGz9aY6RBqhnKA3KWjqL
         dqGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=B0VRWP1UqHBzaSQ/0VAH8ROzdZmpnLpk8DQEvJRbm6g=;
        b=znZSgjKXg4tMPyiZ7BR/MpHHu96bSTKrffkoD3r9O5LRWf/Q/6J3GuBy2hfNVLlChs
         QZIGJcWOOTdfE0+/CdTDDYNy9hRosjy9MgXOj69RTq+nNukXwOAEnpkvRoRdQoePOE+b
         bZuOVQMhJrZzbRql8u/EQ1J+JMKUklhsirFJALS11GTCN7EDfMkpQX01oPoKts8ihrlr
         O7M6QD/s1+reixOT0GHROo4sfk/GWTuwlC8LyB8APD/I5aN//hmYpd/xmu96PtRg2I2e
         b0Mx4zI8ZAPWhbkuRSqZotCkTQels5gymmdb32TsdsO+4i+kh09ZaB/7ARXVfDXQ/Omv
         hAfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S90pbrXY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 29si93750ilv.5.2020.06.04.07.56.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:56:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id h185so3371994pfg.2
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 07:56:43 -0700 (PDT)
X-Received: by 2002:a63:de18:: with SMTP id f24mr4660948pgg.415.1591282602661;
        Thu, 04 Jun 2020 07:56:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y10sm4390985pgi.54.2020.06.04.07.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 07:56:41 -0700 (PDT)
Date: Thu, 4 Jun 2020 07:56:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	Network Development <netdev@vger.kernel.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, Linux-MM <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
Message-ID: <202006040745.525ECD1@keescook>
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de>
 <CANiq72kLqvriYmMkdD3yU+xJwbn-68Eiu-fTNtC+Lb+1ZRM75g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72kLqvriYmMkdD3yU+xJwbn-68Eiu-fTNtC+Lb+1ZRM75g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=S90pbrXY;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jun 04, 2020 at 01:41:07PM +0200, Miguel Ojeda wrote:
> On Thu, Jun 4, 2020 at 9:58 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > but if we ever lose the 1 then the above will silently compile the code
> > within the IS_ENABLED() section out.
> 
> Yeah, I believe `IS_ENABLED()` is only meant for Kconfig symbols, not
> macro defs in general. A better option would be `__is_defined()` which
> works for defined-to-nothing too.

Er? That's not what it looked like to me:

#define IS_BUILTIN(option) __is_defined(option)
#define IS_ENABLED(option) __or(IS_BUILTIN(option), IS_MODULE(option))

But just to be sure, I just tested in with a real build:

[    3.242160] IS_ENABLED(TEST_UNDEF) false
[    3.242691] __is_defined(TEST_UNDEF) false
[    3.243240] IS_ENABLED(TEST_VALUE_EMPTY) false
[    3.243794] __is_defined(TEST_VALUE_EMPTY) false
[    3.244353] IS_ENABLED(TEST_VALUE_1) true
[    3.244848] __is_defined(TEST_VALUE_1) true

and nope, it only works with a defined value present.

diff --git a/init/main.c b/init/main.c
index 03371976d387..378a9e54b6dc 100644
--- a/init/main.c
+++ b/init/main.c
@@ -1406,6 +1406,34 @@ static int __ref kernel_init(void *unused)
 	 */
 	pti_finalize();
 
+#undef TEST_UNDEF
+	if (IS_ENABLED(TEST_UNDEF))
+		pr_info("IS_ENABLED(TEST_UNDEF) true\n");
+	else
+		pr_info("IS_ENABLED(TEST_UNDEF) false\n");
+	if (__is_defined(TEST_UNDEF))
+		pr_info("__is_defined(TEST_UNDEF) true\n");
+	else
+		pr_info("__is_defined(TEST_UNDEF) false\n");
+#define TEST_VALUE_EMPTY
+	if (IS_ENABLED(TEST_VALUE_EMPTY))
+		pr_info("IS_ENABLED(TEST_VALUE_EMPTY) true\n");
+	else
+		pr_info("IS_ENABLED(TEST_VALUE_EMPTY) false\n");
+	if (__is_defined(TEST_VALUE_EMPTY))
+		pr_info("__is_defined(TEST_VALUE_EMPTY) true\n");
+	else
+		pr_info("__is_defined(TEST_VALUE_EMPTY) false\n");
+#define TEST_VALUE_1 1
+	if (IS_ENABLED(TEST_VALUE_1))
+		pr_info("IS_ENABLED(TEST_VALUE_1) true\n");
+	else
+		pr_info("IS_ENABLED(TEST_VALUE_1) false\n");
+	if (__is_defined(TEST_VALUE_1))
+		pr_info("__is_defined(TEST_VALUE_1) true\n");
+	else
+		pr_info("__is_defined(TEST_VALUE_1) false\n");
+
 	system_state = SYSTEM_RUNNING;
 	numa_default_policy();
 

which means a few other __is_defined() users are not correct too...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006040745.525ECD1%40keescook.
