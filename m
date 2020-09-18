Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQ6NST5QKGQEUKBWJUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D4926270841
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 23:29:40 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id i128sf4444050pfg.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 14:29:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600464579; cv=pass;
        d=google.com; s=arc-20160816;
        b=qH5GH0SVc+kipA+Kbhog5PtQNIhbQfnXsG7/GzU9w8tkDxMGWVkwy0VvGRWRxgly0U
         SkEYCb457KtdLFHnmM1m8/ffTMocKxs5lfBwoi3fov70nHrNCJV5Fpl9Eri7pjuQKYf9
         iKEqnqV7NGvj0Y2YzCSSt/tPh7daBpzu2QwIh1nOm/SGE/V1+JzoIUiApY6x8gs1SAWf
         VP9cc1CdSMCv/TgKtjlnvXgcdGNkSxgrHAw1CXywfgFGRiuj2rSQjvQoONvF+yOqwnOb
         /zkklF1UlDeUWcpCkAXFZpGQGPqWyAj6N8UEPC0jbNacq/z8EemX6kMUo+6FTx24onYe
         l4sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=d4MP+J7J8OxuPCcLCTcqHzN9Tn3oflrwZ54shOmg8Og=;
        b=HL31JJ4yGlPZ21+WF5567wYSljKNF85TJjCZFWA04znm9iuH+YXgFoVrMTSk638o7j
         b/8euJXIG/Ix8h7sPZBeeEge/BYrxIFKOFcRrf9306O2zDu2jIpCgrC+IkgcxxuQU0n7
         s3jSsa7JC8qNTjZwVpZHIohYbcuenvEUHGxUslvNeyrYp6PbEh0sKq449/nY5K08VbXS
         UvxRgJ5j8udClWTMJF9Hn8eBxxwAKcu8w9Yjs7yYtcKG2I5Lk8hK1y6YtmPqHWkKfu8O
         +yiTsapA49NavUZQDmc0kG/aZ93h3Vwb2G/sEStV7qh0J3KHAQPn/+Gp6jjhTxQZuuAK
         dzzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="W+/RKJ9p";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d4MP+J7J8OxuPCcLCTcqHzN9Tn3oflrwZ54shOmg8Og=;
        b=mBftm1Xg7T643ZlFM0xBUMKTBDPzibQbjHF1P0LiD8Z3y1qfHTUXqL207o0rMXW3jY
         tozny0ujBYRcQ4IOKMd38uCdqLAzvNTeXZPiIbD+nV6ZprNGUS3i/RKYUzLR+qQcSw30
         JBAqFPgSQM8lkN1FJVTm7TEAeu/hSlecdjwKkcEEBxXckSCJp5xDC0jKBfff87FKLIQs
         lPPGkUePjFbYKcozkdHIICz8JaNR5bWw69vKMKDYJ6nlbXTWXZWKWLaKXOWcoMC9nmGJ
         ALRYej884FK4r46JwO0BZNIMYCbhuFp4t2FmTm1Jwq8QI5RSRX/3XvaZ/Kwl4KRHd7M/
         Ht9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d4MP+J7J8OxuPCcLCTcqHzN9Tn3oflrwZ54shOmg8Og=;
        b=gldlZtfZtgULTyMv+AlQF4p3BeWse56tsz+dBo4ESYrOYSXGclCwATOE4ajAHTAcPO
         AVCbJ1VMinjdp6/fnn0+vbGObKixt/Lt3Rkk8oex7rZnd2wtsDdShWfcH9Oh1ReygGNN
         G4NzksvotoVX9rYmVh9f9F/KtN3rKESzX0XOa4lH+zdfKOfgVHyfs+q1lAh7U1u1IH0y
         brFsaDyFxLzkTVbb7AJps5UQFtZzuL4lpp2OKzR6zrYa961VUqGy1eJFuzkW9lKWqlvt
         pjwBo6Sp52yC31IRqdsUGwDWZDMnKaUpnaBAhz1p+s1BEkuosacGJdyMHEqx4OlZ++q9
         hvZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531a4BmuTSiCbxFmvCnMNvxZGH53mwylTLgdSSFPzgsPbW0RXH6Y
	eRp+EUjDBvNGwwEIegtpblk=
X-Google-Smtp-Source: ABdhPJwV5Dq8Hss/y6IJN8+K/YHGWyJJ9/R6MI+Pm5MfBuYDjUAS1QFbb8Ofb8bDxjWnyDyr/Av9ig==
X-Received: by 2002:a05:6a00:2db:b029:142:2501:34ed with SMTP id b27-20020a056a0002dbb0290142250134edmr16895992pft.70.1600464579537;
        Fri, 18 Sep 2020 14:29:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3855:: with SMTP id f82ls2590434pfa.10.gmail; Fri, 18
 Sep 2020 14:29:39 -0700 (PDT)
X-Received: by 2002:a62:8f42:0:b029:13e:d13d:a12a with SMTP id n63-20020a628f420000b029013ed13da12amr33346276pfd.18.1600464578997;
        Fri, 18 Sep 2020 14:29:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600464578; cv=none;
        d=google.com; s=arc-20160816;
        b=uyREAgk9iVlDeLH8AIhi3qxKtC+MOqQs337O6NpLhgswH+da5tpuYD5YWJecFPw//1
         mvK2EYME6gR160mSnvwjBo0ICeV0860B30DvXAqIhBH1r6bdfcWm6ObMgvbGIvF8ekLh
         Z0AOcJX3sBpYMI435wcLDMhN+7FJC6zJRJ4OEYKu+QYxaa/IXKmfnK4pHNM9b6duXBKt
         rAh1tktrpJqYGKP+9c2MXWbYQGhXtXcg8Z9A71RJBq7/Z9l1q6hJ+EJ2812Ja0bCUsH/
         /+KyJaeRRVL/hmkhXEhbmAZFCZMP+q6GYmy74kI+kFSNI992v0MfMrvDc1J6lFl9YI4i
         i+Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GaeOhHfh8L1DCmfaELuYzcrF6n6HIXLIYRNTzqsV79Y=;
        b=DFQkevOmn4J0tGMjq5Ob/p8ulBOICf1GlXGilgSRCiGjE8GA++FrTl9AA9F/yi/vCf
         LEUAFRQnnMrUdl1hW9B8q6weGzBTxrxTqKzzvb9pppdb3V4frhQDBSZl/IUXKbkulxxZ
         s7QLbrVyBjJJquM9fS6O6DRQD7BmDXnLwne5ncHbtvYZnm7/GJEcFubr8XL7ny9bJFe7
         pMFGuUv6aDp8NbiJzT2vOeQr2syozCWkZF6CedXn52o6DqPPS28gwFpgHl7NUJkr4/R5
         /xvopRjVPwOEdoyrLfB4ZJf/COOW8t8fBaDkinPAVca49N7uOqrKji5VlTX6QPVHRjQ+
         fthA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="W+/RKJ9p";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id mm16si354118pjb.2.2020.09.18.14.29.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id q12so3636767plr.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 14:29:38 -0700 (PDT)
X-Received: by 2002:a17:90a:ad48:: with SMTP id w8mr14636473pjv.179.1600464578722;
        Fri, 18 Sep 2020 14:29:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l188sm4167409pfl.200.2020.09.18.14.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 14:29:37 -0700 (PDT)
Date: Fri, 18 Sep 2020 14:29:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v3 17/30] init: lto: ensure initcall ordering
Message-ID: <202009181428.3C45B57DA@keescook>
References: <20200918201436.2932360-1-samitolvanen@google.com>
 <20200918201436.2932360-18-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200918201436.2932360-18-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="W+/RKJ9p";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

On Fri, Sep 18, 2020 at 01:14:23PM -0700, Sami Tolvanen wrote:
> With LTO, the compiler doesn't necessarily obey the link order for
> initcalls, and initcall variables need globally unique names to avoid
> collisions at link time.
> 
> This change exports __KBUILD_MODNAME and adds the initcall_id() macro,
> which uses it together with __COUNTER__ and __LINE__ to help ensure
> these variables have unique names, and moves each variable to its own
> section when LTO is enabled, so the correct order can be specified using
> a linker script.
> 
> The generate_initcall_ordering.pl script uses nm to find initcalls from
> the object files passed to the linker, and generates a linker script
> that specifies the same order for initcalls that we would have without
> LTO. With LTO enabled, the script is called in link-vmlinux.sh through
> jobserver-exec to limit the number of jobs spawned.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks for the update; using jobserver-exec looks much better for
controlling the build resources. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009181428.3C45B57DA%40keescook.
