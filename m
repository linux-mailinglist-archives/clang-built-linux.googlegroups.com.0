Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3PD2L5QKGQEIA3UQLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA7127EF1F
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:27:26 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id f76sf1373009pfa.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:27:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601483245; cv=pass;
        d=google.com; s=arc-20160816;
        b=jL/RsyTVltTwmT2ZLBmAOBtlb9YXOcliIAx6woLdeYPv6/OwxJwMWwzgSnzlDU2bN8
         F3nZQtsRx5OO/RMAxuhj2e1LIyNTxULlh4Evu8YL4weM+T7XIYd9RKGamaY/K3ES5bxn
         xWbczFTsgFBhiG4TV+R4kSi71cjwCNCYUBT3+G3HdrPM/3N4Ix0B1zldkz5aXxPMV7c9
         2MCWVbxr69GIhl16Eu4Cyc571wCvfSArQQGSS5cNRoN31OSDZl3nwrfVwsjskZERguiB
         ctD6x5q0wdDwg7feaKAu4bvKs9S5t/RYoTM2tRF8g81z8nRyjmr1g1j7off0hNJTqSyj
         qGsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=CeAuu/J8GWSFVkPChR0JrLnp9oLnf9mSraidDg29BFc=;
        b=DPWZTGrmwtKckodDtv26Pydkz7oGqHxYRewGVhFrknqDqOxa8OiCL6iMe0CUx+Gfyd
         6L0m89MPWeMNztLWdjyvSvbrq+ROCEy4zy4D5UCJRNqxqB663qjmSsJu16MutMERVWEb
         wLiZABjZl8lnqj9S6fmvrcaWTt8FatNhqGZwms3TMi6jzU6uHzqgopOtCvG0/qUAeqKq
         gdei0rpirm0oFctOK6j1j27GD7Rp0jzfrWorIiIeTAtXBe+BDWfkOCKR8i9rLBoCACQr
         tNxZM9eFXzhkblCZgEvf9MRY7HZly7Jhh3QyUgnQQBSs4yVWaYZuKHz5zaan12nN6Kr3
         MnBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uOko5veG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CeAuu/J8GWSFVkPChR0JrLnp9oLnf9mSraidDg29BFc=;
        b=ARa5DglUJMvYiMUFmeQL0Lazjb7zs8aJNlZiSsYfEIAmevK23u03dLr+O/VXbyzBrF
         GSlCJETR5aQxkTevQ98MCgD5prsRiOEmu0F50ursk/MxigSQMZIOHX8l48LFh3zzbcS9
         eSs520ZJcOg67JTMOFnLnCOC1OotV/sKJDMoA2TlgL9UPZnYl+EUDWcC44zw1XbP7Mlc
         RwyJIlOhZLUsA6tzW13cxZOsEbqmQWqPDrbDUQbkQ3mrTgC0tAwpBVJbBcTnHu+NxvE1
         yH08SGKONNOJ7SDj11zaqFEKycTaq6uc4VIKZsMT7mgxjaVq8AjqU0EladhNcflJPuQI
         lF3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CeAuu/J8GWSFVkPChR0JrLnp9oLnf9mSraidDg29BFc=;
        b=q9NjfWqms1t9K44tDuploo1kIfNJeANCAkvPPNw0hRoUr2ZxnscocrH50FVHImyhFt
         /QjImf7OLgtku1Ly1+YGiOljuwmmnMzZArKaZ210TCuoxpnK7m75SiCqoCGqSx9mv8PV
         Cyp4c/XIRLgoJ5SVtjXnJbmfmFGIO/WlxMti1jROL6Gf2pIfISfbZSJuJMM98P9XuZyG
         wYmFY/d7ToLRmve9JTXdrF2eEeYqA5BnDlA8V52VYL+ldjalBoj6nyZshppeL9Rlbgtv
         vlGupCwevFjjbkfgj9nDGeLOjb2Rnn1oCpmiW0xENv7iErmmRpiQ4DvYZy04ikUWdeG6
         OmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CeAuu/J8GWSFVkPChR0JrLnp9oLnf9mSraidDg29BFc=;
        b=s8SG40ZFOiguMGQzEO8HfQFIZanfdw0ZrcuT+Rqlk+ODiyzygkI0I6nwazsIpbrTgi
         oQ42Bk9mgIKAJlDMe8GaREU5qc8sXbLtcWtbo/1dNoMlzy66mMPTVSqsyNutvJBGT6uZ
         WhABUJvT1qCuBG290swoUcMYBgqBrNdR+0JHdwoAdSfBc0U17Co07klJliCBzExAiUT8
         AcfsL+ZjHh14RZBhPoT0r86InLVz2s1I0fM9Eg2RwD1U9+pS7mny71LNU3zWF/MNiqKY
         39gWB00qY/rcoErx6X2IdxQxG1LNAXQ+Zg3cWWnVCqOvhKSZBOQk999Ohh/JxE+t6lk1
         Ap2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cVOiAKJMzbEa9My78RFO2bl1kF+vHePsvB7gJdtSlxC3iGGqr
	FK3ha5R9+kNRTeCzthNlSgM=
X-Google-Smtp-Source: ABdhPJwAqC0z0dHr4FnMqzPtmjPvp8HD7ioNdhdUen04PC6b4F+u0KqrDhqWF95Qsi/fKfEXPhc4TQ==
X-Received: by 2002:a17:90a:bf8c:: with SMTP id d12mr3350190pjs.157.1601483245164;
        Wed, 30 Sep 2020 09:27:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:123:: with SMTP id 32ls1269763plb.1.gmail; Wed, 30
 Sep 2020 09:27:24 -0700 (PDT)
X-Received: by 2002:a17:90b:a51:: with SMTP id gw17mr3382210pjb.118.1601483244557;
        Wed, 30 Sep 2020 09:27:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601483244; cv=none;
        d=google.com; s=arc-20160816;
        b=wrY7GuF5lJh4qCICdqUeixSKuFaGYc/vkcLYFB1qFVay+cYju4VOb9lSVIpOFuTr9C
         /EdbFMr37AsBjTmKVvD6rnqDhi2xVenWNWgPPnurfNm+DX7mD5gGokPAsOb3tHmwtLLF
         ox80bWAlTFzJqOeKolBuP1ExHHMdVk6z98820qA9t5ZKD/gVUAMRIArvPxH9ztoyCfP3
         7uS9O5YaVAwdIvo8mPD+mteZaxfhpCI2ju3O4F/yC2k050lV6CphAYrnS3iUKZbenS7u
         tE94C683yh0t9y5AA4LOS5PtCliCtcrN9mU1A1hQEetqJUllLnd3LXs7xaZGPcXgF1T6
         5UGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=earzXYgcHhW5P7q3Fe1nQFt0BCBrbypIUJ3jhj8eCtI=;
        b=a+LK1nFxLAwWgTxhy9UWCkG16Hekcdb3O554acrWey5ZJo9FWzQcDzB0VUjiRQCZJH
         TiMLyc2YGcBNPgl+5fs0oDFvSX57mW0WfkVjgdepjxj47l39usr77uyV2oQnH3yUx3Ew
         gjN8IqK1riE2Dxta82QUMn0qQA4+FlncXvOBm2HP73kaU47f/nS2GdjnDC97teWE7BeO
         4qRCoHY17g2fqvVXf1yvRzyF39LTXgClDsB/3oDqZPvNawTz7aQPK5/QNXV2tSOAyrn8
         Za5ElxnccHFq70K+bE93qO/fo5WI5XtvQlMg0xHAmTr6cQu72iqRafAM7sB5lmw3Rj5C
         PxXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uOko5veG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q125si221865pfc.2.2020.09.30.09.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id l126so1527046pfd.5
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:27:24 -0700 (PDT)
X-Received: by 2002:aa7:989c:0:b029:142:2501:3973 with SMTP id r28-20020aa7989c0000b029014225013973mr3508830pfl.56.1601483244237;
        Wed, 30 Sep 2020 09:27:24 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id q18sm3144759pfg.158.2020.09.30.09.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 09:27:23 -0700 (PDT)
Date: Wed, 30 Sep 2020 09:27:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Paul E . McKenney" <paulmck@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
	rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] srcu: avoid escaped section names
Message-ID: <20200930162722.GC236767@ubuntu-m3-large-x86>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929192549.501516-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uOko5veG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Sep 29, 2020 at 12:25:49PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> The stringification operator, `#`, in the preprocessor escapes strings.
> For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> they treat section names that contain \".
> 
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> Changes V1->V2:
> * drop unrelated Kconfig changes accidentally committed in v1.
> 
>  include/linux/srcutree.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> index 9cfcc8a756ae..9de652f4e1bd 100644
> --- a/include/linux/srcutree.h
> +++ b/include/linux/srcutree.h
> @@ -124,7 +124,7 @@ struct srcu_struct {
>  # define __DEFINE_SRCU(name, is_static)					\
>  	is_static struct srcu_struct name;				\
>  	struct srcu_struct * const __srcu_struct_##name			\
> -		__section("___srcu_struct_ptrs") = &name
> +		__section(___srcu_struct_ptrs) = &name
>  #else
>  # define __DEFINE_SRCU(name, is_static)					\
>  	static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);	\
> -- 
> 2.28.0.709.gb0816b6eb0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930162722.GC236767%40ubuntu-m3-large-x86.
