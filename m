Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBNOEUP5AKGQEHPQ3MKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 704AB2558EA
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 12:53:42 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id w11sf937021ybi.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 03:53:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598612021; cv=pass;
        d=google.com; s=arc-20160816;
        b=heSyDdzj9oNlaCjqWObmAErwc3SZQQw72v+7gnAhJCWHVcWjNBysE6Eka612ivZQ+j
         Jf3iKnM0syKfBH0FhAfKVwLehwdkbtCvNEZLP7J1pCYw++FWlRue2TNP+MbevFdweSb9
         g02l+1bB828Xf6ZkhVhKh5n98g0rxNLRiZ9zvZpRFsmxgBSDqrMa92mbD+dTJ/mO00d8
         zAn0u8cUYozyxf7dmXM05p27x8y4XGKBtUkukzTtKebmbaqmej3O+XSaleRVWW4t3JVB
         OkflWve0jZ3cK0uOYx96kR3ZC117MwwmyN5bjh5z2CEAug4/WwurVJqaq4y94TGUp+3M
         muJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YNrbX5/+5tDCav0juTTMmrUuOYaY7TX1JumGPeMhuOk=;
        b=nXU/NkEn/jC3LBfcJuMAo50grpQB7h26rItDhBvsk3MpSQ6FKhLAkXDcPzGF5VM3qh
         2An1C4G66xe8uQ8hOPYUZWgYmJbE90IOys8zYcwc+5S155pfPtKL41nlrevb5cvTwVUz
         zKdQkOB9srzROMgsqnHixS4crNMt2CcqluzfghIitphbf6TqRLjv89P1uys8DqIbxcgJ
         b0L1YBvXzqd2oJRE6ifiFXTebGwiL2cxSLjN1nSCj1/aKSnlo/LOy1zHTeIZDrf5Lda4
         Fgy2WV9rZTqH4FqyGc/fa381laca35aoeFJyQPMkHO8GAX+ayP5zcSysNZFgk/hvGBnk
         NYWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=F5kulvvs;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YNrbX5/+5tDCav0juTTMmrUuOYaY7TX1JumGPeMhuOk=;
        b=Rcuk//N5/s703RnDxJ+sriYHmmZi7pqDJ3WnxTqzXH9I8t+qPj/wTRT260/p+DIPfs
         Ohb+LBIYGQPL5EkIwz3EBx5tRtIFB2kruhmtKBclAfMFi8/C0EPAsqjMtu6M26l51CDB
         EPZvfNQRFcQ21ibOzyfwRRwmyA5ERpv1NYFKvNtl8OYBqjVJ90m/1UN/L6NKyUdGopOn
         5pqPUCASA6GmhYLCw2HIlrBGrvgDU+9IvFZkV9DZVmI9VYihuloko2eTlUBvWBYKi5do
         AbI5lCOhrVIPWIY7dw/HcP3e6zBANXuwZb91+FhFehIINsvw+hklguVVp8DB7UCrE9/C
         9mNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YNrbX5/+5tDCav0juTTMmrUuOYaY7TX1JumGPeMhuOk=;
        b=WXsLZDzEXlRW6NrGHPwcH/9CrJ0r+pyXHGnPcbpP3qORPsHu9kncAR9Ankw9Fq+ZQ1
         v191v9gGWi6JpG19/2O3afpgXv0awKOHnDaemMlIjG1k5lvWhSFnuNu4sFTaphJ/DvFy
         hCocLla1xEryJGj83lwzfnq17SuzjD5rsNXiA5203r439bbG6dfZgYSBIunWlTBF8uyA
         MDCSlNB1pJIQPL7qaSM4gxN2O+cBzIkQdaa3rc3U6Wk6r7XDKpiCMnbewKpuDtV2g0LY
         JkoOHNLpv1/AeoiDP8REgOpIDJ1vE4ZAS7HYojqiLQ+x9VIfrMytf5X+s+eDlAhASS89
         gnKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IP4Bl7VYGlj3BGrOsEFupybSSh818q4cP/Z6wm6MqYDJgz2Wd
	SpHkD4E9pkXycf3SF84trzo=
X-Google-Smtp-Source: ABdhPJwnSo5I+zW6VJENmCm41pm7BJNGwNcjBGnfVVJJlAk1JCniLY56JIVTh3SadHgYhsCoNOTHgA==
X-Received: by 2002:a25:c743:: with SMTP id w64mr1424285ybe.127.1598612021228;
        Fri, 28 Aug 2020 03:53:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3c3:: with SMTP id 186ls370979ybd.10.gmail; Fri, 28 Aug
 2020 03:53:40 -0700 (PDT)
X-Received: by 2002:a5b:f4e:: with SMTP id y14mr1711635ybr.71.1598612020892;
        Fri, 28 Aug 2020 03:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598612020; cv=none;
        d=google.com; s=arc-20160816;
        b=COAynW0R8muos2GT6PddnGY5Pj4fWmymk13TtoalOsuiXk1pqrRUYYAJMT61D/dYIr
         GvlLwpFk7ZyxFp/ojiZ+mJMZM0dqKqXsxCrkS1AlYWPPmDM9PLe3O/h4Zk7ir+LSPqb9
         GMHyT+xjzePWk1ORqIOTQPfphbqJAPmPzL8Vwvg6hj/sT1DyZxi4u/DKCK7TBkPUAeSZ
         OM+BvCzJGHtZUpu8ljCXS0e4i8yYTBDvHfUkHYvv94Bm+rVgxXMXtUaqb3sRNEku1tRd
         A8imw8qQC9YS+T5od5Hjcf6p2sZUbIIhAHUT0otKeMgnnsZYcb2caF7FjWaEFJ8DhjH1
         gA6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3Jo43c34AzNMFqL4JP2AdQ88F+mRsvtXXwmbPQRDqmc=;
        b=Ggg2LtI8BcGfgmzbBNbVGBk2elaUq6NO2fdmVNJWDd5BNQmpi5q7xeANOzgmCWl1f0
         Ou43RT8FlQKDaU7xnul4Wd/p528kSIgxVIKqaQmdOoLy08lJGbT+uN77ItyOjrAkH3Ta
         T6GSOd8KLT6uzgZ714rSU1e/FYtuwPfvLQSotS7/pvHHj3sjbsruDdvlj9LoCOiJc6bX
         +/EIF7btIiBXW9/f6c2NqeY9XiEZ71O0m0SyXkxWxOYNZrE2kHOQtCsYYnd/n6MOgVQw
         D9AXCBvjXW+Udmyb8lt3fPjSvE4oG1SPmyi2Yf+pR7BBuoyw1v89cwBnSS4i64MHR6cS
         CwnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=F5kulvvs;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p14si59264ybl.4.2020.08.28.03.53.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 03:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7C9622086A;
	Fri, 28 Aug 2020 10:53:37 +0000 (UTC)
Date: Fri, 28 Aug 2020 11:53:34 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>,
	Randy Dunlap <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>,
	Borislav Petkov <bp@suse.de>,
	"Alexander A. Klimov" <grandmaster@al2klimov.de>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Documentation: add minimum clang/llvm version
Message-ID: <20200828105334.GA30563@willie-the-truck>
References: <20200826191555.3350406-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200826191555.3350406-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=F5kulvvs;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, Aug 26, 2020 at 12:15:55PM -0700, Nick Desaulniers wrote:
> Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
> small, supporting just one formal upstream release of LLVM for now.
> 
> We can probably widen the support window of supported versions over
> time.  Also, note that LLVM's release process is different than GCC's.
> GCC tends to have 1 major release per year while releasing minor updates
> to the past 3 major versions.  LLVM tends to support one major release
> and one minor release every six months.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * fix typo, as per Will.
> * add link to getting LLVM, as per Nathan.
> * collect tags.

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200828105334.GA30563%40willie-the-truck.
