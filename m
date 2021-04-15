Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB5MO4GBQMGQEIN35X7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6C8360B47
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 16:02:31 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id d130-20020a621d880000b02901fb88abc171sf2745086pfd.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 07:02:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618495350; cv=pass;
        d=google.com; s=arc-20160816;
        b=rSMNhZfStxBhCAx7+Is6K1mt8ZqBrbPzzhP9vrAHLqNNtUPznmnJJKV3BSvE7rX9oi
         S3ZA6UzthRf/pdMK8bkNbzI56NdB1CeBDjLXV7uT4SjzED17nfFozuWbWGW2EdPbsuUp
         YBqaWwpRDjRFNsbCsIGkldrO4DM5fOSL+r5xCNHrDee4WylyBupWy0NvDd4RiDeEEBxM
         IRvNHZLQ9Lz/3myhFoo515nUjViA2ByegRfHIIaE+XxMYzDkol8IMC56nxOpSY5ksH20
         xk9dZYqZV+RXRJo+6TH++TVB0HzXC6Fx+FsWOhk5NgMX0+Qn5IOjsaXLrWNn3eB3ajaW
         zPcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2hTJ7s71z6JBYTquF1apEP+Ch9xgXxpT0T5MT0JN2Jg=;
        b=WvJ5hAwQhBi5iqnAVIIOvP6/rFSg+NrhJwIZerDx3uV4uoC7SoSg5IcRsE0r76i8MU
         lrIdvEp4BvrGIy5wV1idJ7eUjUHBiZ6RO5SgQ45fXMAZEFmRxFK4d0GhFzvh0tTMqFh1
         yagQcj6Dj9OLw3ilNjPwObbjVjFslu9FAmwwua4XOAm9YjwoXZsz9knxmLiY+qzN62X3
         T6Ol6rEkl98NfqdfQNAAe+d5vA5TACX1XlOSTJfFPb6dUDGmmQHa/GT9bhgzBKnw4M83
         ZMcu+fNzKukFvD8QCdpRo0iPQdVt+kleXnWbnTDZAbszlFHCjadavj6GMWJ327kRacmO
         8EUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2hTJ7s71z6JBYTquF1apEP+Ch9xgXxpT0T5MT0JN2Jg=;
        b=VthN1eVH1PCnYNnBxbGlG9TvJGnCnqYAYIPyfRcyfUUntqD8AI8nsdQ8YgYKP0x3pP
         8HRmm8o38wKDHeb0uog89ROy2VX4eSXGBMKaYv0k5E1boIGb6+tZ6Uaz1cYC+M3O//yM
         lVEVACn57ONpohZ9ESfUFpn4+PJp/Ez4WykDIcJVreiKbwbAP9xX6i1j/c+zJFZF6wWv
         FFLPQ4+Gn6aH56N4GsTf4bp7rEGX2CZP/TyZRzFLcAyhVdmN4vKA+qpNeSMbqTLWZN3d
         CYjZsiFREu8ukSJurcMcIHfAicOteCFvWpX4MfKee3YWmIyBMmAjfdeoKpQzlLpsJqzg
         T0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2hTJ7s71z6JBYTquF1apEP+Ch9xgXxpT0T5MT0JN2Jg=;
        b=rW8jqr23q1X8J0QJUGBthgAmgi0ogeLp2D7sxMcFg3W0HfXeiSid3G88Uvwb7XavAx
         bUBjmjhCXP/hsdry8mvJFYfy/vNSm5xa0JPxKBs8943kltb15hV8/KhP3Xlo5CRwEdLs
         yVb7F73y6thV/JsbSEvwLrcSSwjwZbZL06sREWq+Q6pPEM2KUGMac/H94IJAUuP1AHQo
         4zJ4qsrFqFyrn9mC4oLZ16ivDZfRAk7qUZKAv7PPvbA6aqcPdEauU7YoZ3ssRalzjRY/
         IdznXbgXT2s1ctk/JXAVND0gVL5z9WZSd0b8SQnQkeYqFVRS2MUjZU5HyWJNrsZk95aA
         B7Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y73unrArMiZbYPYUtRSJVU70U9OMT5I8w3JjJ2h9bxSROVQA2
	whX+e6XC2vTSCJqTqoy9yLk=
X-Google-Smtp-Source: ABdhPJwC9hAzvVWUn8pktQolu3zRlD3E7RNLWwL+pEzxEz0TsYJQVjkpyMhbvbaUfVyVSCD8cAbUTg==
X-Received: by 2002:a17:90b:ed8:: with SMTP id gz24mr3999291pjb.98.1618495349979;
        Thu, 15 Apr 2021 07:02:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9558:: with SMTP id w24ls2139886pfq.11.gmail; Thu, 15
 Apr 2021 07:02:29 -0700 (PDT)
X-Received: by 2002:a65:4281:: with SMTP id j1mr3614198pgp.348.1618495349310;
        Thu, 15 Apr 2021 07:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618495349; cv=none;
        d=google.com; s=arc-20160816;
        b=sXLuPF74FiDg9TMcViOnA6Nb3F9fAMrsTCS7rByIfn3fKbF4M1tG1GWoFBHnmypy+Q
         kdL44GwD+kLjUyKffOXO58XwjqzuRurNIIvY+VSWIpOngJWcqeBt9i1WVF/0plMXkj+o
         SpnUkg6kqTU0wnnLa3ZF2UVG9K5wg5iWL/nur93VOLXIgKrgadjj/YIbep5cGdvPQTpG
         DFR1A6PhKkvbcIDRyC0b55RntRUUM+QApD2mvNfkmp9T23QSV3aiz4yVKqVRBo9z8z7N
         hSyBdtHn8QCwQmNUBRVxXooA60UZoF/F6l7+3GcIH8QvX9GqjwAMvEECH+oQ84gSX6XV
         26Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=QoS87p3gdI5k36J8iEUf0PZ+3JBb3aFVZjo7rgNQxys=;
        b=t2lM4RENKwyKK//2f8Z6aSLI5iAb5J6VFjH0fFcGcMSP8K5yu17LwzwbT2R+/GmlzU
         pqlojDtJ6QKV1P3Z3whRY/MJHXupn2bSLH6Ka2ao0TBydnln5E4WtFWwOPGp+bQLk7bM
         aNYgykyvZRyzZYEqcbLXCoo0KFLXbpGGzMTovKCEZovrDZCbVs/6ltidJCBGDKYx0Eif
         o2dF8L0hY8gU1h6eaY9aU/XOljm0B4znj9VRr/1nqwx5xXD2IWX71paZxtsLvpZie29D
         MCZukJjHpqDSRApud8n2Jfa9DoGWJzS1Y+iLnEIZ5M0NymRENiKYN1UpRVxKAv5Y3ySO
         jOOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mz7si1109078pjb.0.2021.04.15.07.02.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 07:02:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 953A6611AD;
	Thu, 15 Apr 2021 14:02:27 +0000 (UTC)
Date: Thu, 15 Apr 2021 15:02:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Jian Cai <jiancai@google.com>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: alternatives: Move length validation in
 alternative_{insn,endif}
Message-ID: <20210415140224.GE1015@arm.com>
References: <20210414000803.662534-1-nathan@kernel.org>
 <20210415091743.GB1015@arm.com>
 <YHg+5RSG4XPLlZD8@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YHg+5RSG4XPLlZD8@archlinux-ax161>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Apr 15, 2021 at 06:25:57AM -0700, Nathan Chancellor wrote:
> On Thu, Apr 15, 2021 at 10:17:43AM +0100, Catalin Marinas wrote:
> > On Tue, Apr 13, 2021 at 05:08:04PM -0700, Nathan Chancellor wrote:
> > > After commit 2decad92f473 ("arm64: mte: Ensure TIF_MTE_ASYNC_FAULT is
> > > set atomically"), LLVM's integrated assembler fails to build entry.S:
> > > 
> > > <instantiation>:5:7: error: expected assembly-time absolute expression
> > >  .org . - (664b-663b) + (662b-661b)
> > >       ^
> > > <instantiation>:6:7: error: expected assembly-time absolute expression
> > >  .org . - (662b-661b) + (664b-663b)
> > >       ^
> > 
> > I tried the latest Linus' tree and linux-next (defconfig) with this
> > commit in and I can't get your build error. I used both clang-10 from
> > Debian stable and clang-11 from Debian sid. So, which clang version did
> > you use or which kernel config options?
> 
> Interesting, this reproduces for me with LLVM 12 or newer with just
> defconfig.

It fails for me as well with clang-12. Do you happen to know why it
works fine with previous clang versions?

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415140224.GE1015%40arm.com.
