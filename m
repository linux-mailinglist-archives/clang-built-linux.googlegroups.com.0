Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVVIYL6AKGQEV4JDQIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id D32CC29533A
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 22:04:39 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id x11sf1835804plo.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 13:04:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603310678; cv=pass;
        d=google.com; s=arc-20160816;
        b=ihd3e7H0xowGeQ2Veo7SSF/h1dmcQagpLGEZZHysPnoA3irjxYMjqjNEBq0JEef+tO
         H5hSfPlNqNgHxg3r53Awm6mRhsYiNsdhxoole8Udh0h/sDWfo8hcVszVQnK1bAl4PS3d
         F0TZmGrbEatZqlldE3W/3VB3Y83Z9bkJefDBccmY+jolQ0vRqN7BDPFtasy2RDjaEbj6
         Zc96mtQhEdQeWTW0brKPybl3XHrWBL9fpRNM8JKsha7DJ4XxO39SB7udl6QAL+v9m7B1
         pqVafgJXqCt43hB3grq7L2byzcQ1SYc8vAAZH8kM8nRy3HPfCZpkVtc3tdFKCphIvv9c
         gfgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FsoG4rs3sCN70QRGTSmsRPkxrPHlYsQntQBdl2Pjoi4=;
        b=IndYSgw1200Ch3tI7oqsTEpO413C4ilBC9mAP/RJ52h6snJL9z2KFE8P8funNgQIFW
         5SrNM96qSb5tlC+H5+uAWAMhcCPovz3uHhVoa0kxFml/YYJIPuZQgYQDJ91eaXjBP7n9
         XCJntA1ds5ZFiQItw9FUcpFQRyCpxHOdwaKND2+iDGV5d2b5fRZEUWT1Bk5elE3u1SYo
         n+VULS2XEOMqVpUI5g410NtZRRTMayVoJ/YHUolOBRHiGdNS03MGDfm9LKe2ZLdVhBHW
         i/1Lcq+z2Ieu6teOAGbtU429/eZUCJwVS7l3twJgVj6VKBMdZSUVALthzrqzOzZFWwuk
         eSkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gd9gv83u;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FsoG4rs3sCN70QRGTSmsRPkxrPHlYsQntQBdl2Pjoi4=;
        b=Cc1IEsoUSO+q30NWEHRyw5Tn/rRZ5c18+lV65uZiW0tCm4uyE3/F/tUWVT08/7g0/2
         ncB2TZRIe7lTpy64xId1is7hxRIDBuSYFO8YhC1vsd/DpI7kO5Ry30DU+MBO034Qut1E
         Ts+DgiEjXvTmqfgzZHbdhcPng39jQUESJE0F8+Y4mSh0B/G39hxT0DUD95We9yvrfdOv
         h4zR5KtYJ4Jq7u3kLKsR3m+tIo5woONWNFIWu/nyLzRprDCmBuaQ3VV73tuJIKJfiIg8
         HlPrW2iETdy9Wn/fq7pES82L0KvXdT9RpDItEDlbOT44dwtWsiWcxZF/Pg9ZYwV+HBh9
         xytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FsoG4rs3sCN70QRGTSmsRPkxrPHlYsQntQBdl2Pjoi4=;
        b=tqWM9g1zlUVhwoNUwp57uvx/vnBhXDk+rm1jpO3SLzU1sQ3xu8KocfbhOFtc81LtDx
         8yIGrxkysowWDpNMZH3+kpxaZi1JWjROb/zJ6QppLadeGyyxAxp/Jw0oF4qZ1hFRe8fv
         o2qEGC/KKptykfwSbXkg91Jd5O9FsvtWCCSDFpL2dDPkVRPxcQgqartTWeu2V+l7sBLE
         9qGF+A/dvJKnDZX4/t5fdXx+VVAly8H1xXF3I+545l6oJs9TxWhtaXOQ2+EA6vGhhsIS
         aQrDrUwOIF2v4lpG8m5M4FfzQbCnG7nKSfoCyVzgU0BlGPSv0xacbfwmDjBN9yRl/bu5
         7HgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xll5KxHccqce/xv5iAumDUp3Hq7l8MsFE9wPht1gaGSttzdf5
	aMXsf5iOCQnxvYSU2eiKySA=
X-Google-Smtp-Source: ABdhPJx6aVUzesJj4fFw+ihoN/Ky4cZSIqL61+7Jpe5rgOGutDeDvVjWMTpoOxbsu+pcrw6msVNrVA==
X-Received: by 2002:a63:1c4e:: with SMTP id c14mr4674683pgm.98.1603310678528;
        Wed, 21 Oct 2020 13:04:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:562:: with SMTP id 89ls268856plf.4.gmail; Wed, 21
 Oct 2020 13:04:38 -0700 (PDT)
X-Received: by 2002:a17:902:8e8b:b029:d2:4276:1df0 with SMTP id bg11-20020a1709028e8bb02900d242761df0mr5197313plb.62.1603310677973;
        Wed, 21 Oct 2020 13:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603310677; cv=none;
        d=google.com; s=arc-20160816;
        b=asI5thrzcUF4vx4bmHwq9wwZgWzKWnDMdTA9As/GXs0bnQtbzm0h1/3TPCnT55f3f6
         +DhWxqH0UJgG6WQjtdTOJL60NWAt4/+RbRvu/lrwlPfzRjKfonCVcwnAhb/3zgqxcvWr
         RwVVuzmyJNsRIiyXvdf3kvWdv6e8Wm5tETftyA1GPttvzBClt04I3uOTN8EPOgFnXHHk
         E0McyPOkg5qJHOdg5LoL0wW8BqcMKdnfkXmXr+VtTlIO6rX3R9CNkgGgD8gIkKXuqmSE
         qavbnDpw1EDCpGiE1tXthKi2m3O9T3MZl33jXAP3dt4uRqR8bgRyA12fjvGuORnuLWGj
         eFDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MyV1gJcxFAQQ3ezKzLWjL48pP/r6NIsOLeLTCnNX+6g=;
        b=iZhxwLb36pxhNyKN1V0ub3kXrMo/XYOKN+lL2sYZoKJb7qesHk7KemGzXp5vIiDBRI
         Q8ldNGXJJmViICiEOfjN4iclXLmnK5FpfOwc05GdI8kZc7edW+kAiMpCMZzzEVacC8Kh
         JuWLBa7jz4AaIDSoGNhbmE/p8Pm0E/xlfCPxnyV1PZ+L+O2UQeCVR5wakPYnmGpSFdtM
         5Us0z2ZbmKR6tn8IIAQLajQdFVU/MGrtTveLqZpmQp2wri3lIN5MKn4cqwCohgABLGpr
         t2wvnHHZZPBysAsXnp5PfGuptmFciiJYC/v+kXpnnkwzd/sP8GB7db7yovAJua8DE3Cu
         lKlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gd9gv83u;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id cl2si375841pjb.0.2020.10.21.13.04.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 13:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id e15so2136485pfh.6
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 13:04:37 -0700 (PDT)
X-Received: by 2002:a65:664a:: with SMTP id z10mr4742041pgv.171.1603310677590;
        Wed, 21 Oct 2020 13:04:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n18sm3102678pff.129.2020.10.21.13.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 13:04:36 -0700 (PDT)
Date: Wed, 21 Oct 2020 13:04:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>, x86@kernel.org
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
Message-ID: <202010211303.4F8386F2@keescook>
References: <20201005025720.2599682-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201005025720.2599682-1-keescook@chromium.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gd9gv83u;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

[thread ping: x86 maintainers, can someone please take this?]

On Sun, Oct 04, 2020 at 07:57:20PM -0700, Kees Cook wrote:
> Under some circumstances, the compiler generates .ctors.* sections. This
> is seen doing a cross compile of x86_64 from a powerpc64el host:
> 
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/trace_clock.o' being
> placed in section `.ctors.65435'
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ftrace.o' being
> placed in section `.ctors.65435'
> x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ring_buffer.o' being
> placed in section `.ctors.65435'
> 
> Include these orphans along with the regular .ctors section.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: 83109d5d5fba ("x86/build: Warn on orphan section placement")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
> v2: brown paper bag version: fix whitespace for proper backslash alignment
> ---
>  include/asm-generic/vmlinux.lds.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 5430febd34be..b83c00c63997 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -684,6 +684,7 @@
>  #ifdef CONFIG_CONSTRUCTORS
>  #define KERNEL_CTORS()	. = ALIGN(8);			   \
>  			__ctors_start = .;		   \
> +			KEEP(*(SORT(.ctors.*)))		   \
>  			KEEP(*(.ctors))			   \
>  			KEEP(*(SORT(.init_array.*)))	   \
>  			KEEP(*(.init_array))		   \
> -- 
> 2.25.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010211303.4F8386F2%40keescook.
