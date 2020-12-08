Return-Path: <clang-built-linux+bncBCRIZROPVQPBBNXIXP7AKGQEEOW2DEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D056E2D2180
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 04:34:15 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id w11sf6472872ooi.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 19:34:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607398454; cv=pass;
        d=google.com; s=arc-20160816;
        b=dqyu/pvBxwFqr8hV6yiH+XkcfBzjhcxWTGTc9DS5Sxxo4qBWRIcUrcXR7C0mpw3QsQ
         P81STjTgB3QL8VFY4NW1RVnnTR+PafOfEgKRXbovJzNrjtvyiJDFxThzGOEoXAY1bFt3
         3jwoMlwU5QoQDxRISHRLPgDEtChi3QJj8KTI35Va/wZpiKgs1VNDXS1aehgcemBk2L5N
         z3gFqmobYP/OXSxIIqN2OayIVuev6XRZdGFO8cU3+jl+xD0oz03wozXXIhWToBDLG2l7
         yQ1hwBGfpWQ8dYUmYCBsUPPQdBt2Tp5MhRSp7zWQJccRQg7fy3eLOy7KzcDXCygxJqHH
         4FGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6FWJYIRzonD44qUjyFQVQaL+ZmzMKX+mazQttQn1PDg=;
        b=uzxYVw3/4yWTKmnmXUeXCarCsVI31EcH5DhMcMfsZxn5wbPpb4p4o0DRM+DnbmwbzU
         LFwT5sbkatiLCqyR3plpPiwd5bcvToJlIknEaVqlVa/tPZ+So3i0siriqDB03WPJuNuO
         oaIb447hIiaa1sm/4hNIB2CwbP+Qj2+eSMp22bQnDyXmkVW0jSHX+pOPdbsF1gb8YfNF
         /UMHumB2LLUQ9whyoMe7u5hVpJjVFhhLtsmNdbbfwH+diYgyL+XAAT5y7kbYq48n8Lnw
         LRuz6rEORHLVbMywA2mqXn2tuY5pITVTIoz+IoexgYVF0O4ofAQeKHYxyYaKqx6RNRcw
         sFLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ywBeHhJR;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6FWJYIRzonD44qUjyFQVQaL+ZmzMKX+mazQttQn1PDg=;
        b=iGEaMi2jCOwzE+iobmQ+e/FCDr81SsMQC1lMuVirDkPLTQuuycRFmLNFQyh9lT37cT
         kGSTO7GyvVGMxEBytcqnFXsz2D3VZY1fyPgSQBu7VnJjIlsqiVRKzMZPdijZXErxJLjD
         QgsF8yZPHmvqGR5c2b0JRl7634tKbkkDwAARSvRJ3m6CLoBql8vzP0/Vt1dq77teZxOs
         08zU/BomrDVlnGe77/rmOuA4zJ1vvcuDThuidh8K3tHUIjHgE7TL/5U53AeCpAMG/TcN
         CSAbtH8iQihEDIU+zsIzXdflFFqiWPJWTSSx004B2NTVTO4YDJ6d/sDxS5EgpkK/F1fW
         Tdvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6FWJYIRzonD44qUjyFQVQaL+ZmzMKX+mazQttQn1PDg=;
        b=b/S3BL68DTAEzAlnSKJRXxA3qFKjTFDO54OKmJERJoTNY8MgUU9WN8vexOSdgwl+cN
         NRjOXc0oBTFPk6Uc4T4hsLQOOWrFpg4lyOa4ZVihd+XrhnuWOGiu/diY9lgfXXvmPtR0
         jFgHf4FOXMbdhisHyKxdZBK0OvWY1G6gTkP+uRf157uKy1sX38m5xnaGbDLbWfF4SjA/
         Q9/AC2X061I7N9Gj8Fkb9xU2Ssk8u7seC6bD/TMPFuHAsYUAocL2AY8yuDJ6vaWflPBr
         gBKH5GbbudpHbcehkFLU8uZWV8IxGci4D/tqEo0nfgZtGy/7shwtUDNNunPL09/OOscq
         NGbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Pv74vperyS0aOIKbvFl7y7iMJ7eTAcusR96192A9n++u09zsh
	a/zLNfXQqzHLtECSQksC3BU=
X-Google-Smtp-Source: ABdhPJzUxXc3HgKF6gSNrP7rZyOJuvyT20lTIhoDYylhqdO3v19k3KppPUCBwu/7eN38AjjxbSMxZg==
X-Received: by 2002:a05:6808:991:: with SMTP id a17mr1285174oic.167.1607398454719;
        Mon, 07 Dec 2020 19:34:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66da:: with SMTP id t26ls75948otm.5.gmail; Mon, 07 Dec
 2020 19:34:14 -0800 (PST)
X-Received: by 2002:a05:6830:1213:: with SMTP id r19mr15542490otp.269.1607398454280;
        Mon, 07 Dec 2020 19:34:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607398454; cv=none;
        d=google.com; s=arc-20160816;
        b=tZbS9zixRbcLWhyD85nft+fPRnlGNb6PivHFmPpo14mfns/kYDaRUbselfv0PJ5rPw
         H4GeaiP8DxDXsnXczlm/ohbzbZSjwYHUr8lEZR9vmDZSKXrJ1Q6KznHQHhUJPMG9NVI/
         57jeJdjq1lqTbqxpeG93bL99zv8CcA/uCux+f5R6g6H6W+7frrEhtjxNMhBZvqkwbItW
         cQpFftZWrC3nfiw3HeE31SV6N+fkyK+MsVTEUCrnnwKo7qmYCwe5LfZa2OXBLhgGnoa0
         qR8tEDypM6JGbdX8rpJXHxlX3auCeEwCVO7BmlNu4Btqz1RcXRPmDofbHwcOmk61XB/m
         8gDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TKrS8yAnU5ZnJwHWqJZbig3q88wZa+4g2igNoCNa8Qs=;
        b=XLSm5EyJCyxaR5ROG/rQ7F6BhjsBMaAr5pKzjWkGcqIo8r8R2Q54I0tnf1w9QQWYjd
         phdFv9d7DZuvYctouI1oaNtsmRJyS2zOxSBDOkmOmpDby4WzsLHbgtLSIp2DfUNOb65m
         OvSv2q2G5gIC68LVE286p5f4F1XapwC6bmYlz5ifgITeuKWSmVYDBKLgPjnYe9n+5k2r
         DjPTv1O3GwG78CaSw/XSl+XWhcwi2Mv3hYljvXxOl+udBlIBz63+FmHevNs6NH/5is6y
         oKjRK5Qe4cfrEuQ0szZh0y2DDd9D7kUyQCTv3rJ6qUyAheADekfDdLik11pS+OmnLDM5
         2teQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ywBeHhJR;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l23si662547oil.2.2020.12.07.19.34.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 19:34:14 -0800 (PST)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id c12so5456006pfo.10
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 19:34:14 -0800 (PST)
X-Received: by 2002:a17:90a:6f42:: with SMTP id d60mr2098291pjk.44.1607398453506;
        Mon, 07 Dec 2020 19:34:13 -0800 (PST)
Received: from localhost ([122.172.136.109])
        by smtp.gmail.com with ESMTPSA id s7sm14732139pfh.207.2020.12.07.19.34.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 19:34:12 -0800 (PST)
Date: Tue, 8 Dec 2020 09:04:10 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH V4 3/3] thermal: cpufreq_cooling: Reuse sched_cpu_util()
 for SMP platforms
Message-ID: <20201208033410.475u3tlfplfouqtp@vireshk-i7>
References: <c0d7c796be7df6ac0102d8c2701fc6b541d2ff7d.1606198885.git.viresh.kumar@linaro.org>
 <202012030227.bGtZchYO-lkp@intel.com>
 <20201207094419.lakxblzsono3nqpf@vireshk-i7>
 <CAKwvOd=YZtQOVi3oZTa3_BkESRP-z551sEbcNU5feQuiXpn+gA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=YZtQOVi3oZTa3_BkESRP-z551sEbcNU5feQuiXpn+gA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ywBeHhJR;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 07-12-20, 11:59, Nick Desaulniers wrote:
> I can see in the top commit
> (https://github.com/0day-ci/linux/commit/17f0c7f4372070206925c3a10ec0e7a09d03615e)
> you've modified __cpufreq_cooling_register to now call
> allocate_idle_time. -Wimplicit-function-declaration is observed when
> calling a function for which there has been no previous declaration.
> Let's look and see where or under what config allocate_idle_time is
> declared, and how a randconfig might expose the missing declaration.
> (The first thing I suspect is transitive header dependencies, where
> some intermediary header changes what it includes based on
> #define/CONFIGs, or calling a function before it's been declared).
> 
> It looks like allocate_idle_time is declared in the same
> commit...while it's defined twice (once for CONFIG_SMP, once without),
> it's not defined when CONFIG_THERMAL_GOV_POWER_ALLOCATOR is not
> enabled, which is probably what the randconfig has tickled.

And I was only looking only at CONFIG_SMP to see why we couldn't find
a definition here :(

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201208033410.475u3tlfplfouqtp%40vireshk-i7.
