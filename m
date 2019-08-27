Return-Path: <clang-built-linux+bncBAABBT6DSXVQKGQEQNOGOCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C00919F109
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 19:01:04 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id x1sf19455262qkn.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 10:01:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566925263; cv=pass;
        d=google.com; s=arc-20160816;
        b=S/qpvyDMAHhjy4PQnrDgJebHgLoqUMvvMI+GfatUxkqS9haktCD4HVjsWD3gyMqceo
         BQSS+qL7/q/dcFDFAAnI+A8EguBDYPYxq5gcte8tDpSP43iB7IzSiAnOf060r9elrAEd
         giZGGJ65pgyQEjvMiIit3jX4Uh0EwZlp/M8xe/Wyf27Pw1uVavQU+rFV/DPqEiStJsIm
         /tsvA3nBSyOF/Sa7ivSeVgfC/1ZNYaGiXYYEp20mHh1mE+sVmJXV/hnQ1HgDCnyamw7C
         ZDOc2JXN4oIDBpLKi6BkpUsj1pWQj8fRQVo0LlcDFUoC1QLpWJ4IoHc7IcmzpJ1HEOUo
         kAug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8YdpPwu0lBrw39zqdvqAlI4zIj5hJBkMpz2Vv+mYtk0=;
        b=eCRWhC5hlPZxn7n8hCmkkYm7z4qL7IRXU1KDsoR8kXbIjtPz78Wxdg22X4VsuQbqs4
         Z9d/TL/2aMCpfRZDTXW7MlKI3BAfHnCVdY5zON8+XdxwmNEoiy/duC2XPCs1UZDlB0dX
         PBSECSJnAslbWrAnAgyqxY5tKtBL48WZl+la5VoLbAxbzjCPYU2PzTKuTuLu4p7Y/Yz6
         6KBieC0WUGZ2GbG7EW+ROazR/LHB18JoeW27ecWpdzxXObrN3CtNOtqhiBdjCgTvT9H/
         bKLaFb5W7FML3BJWz7f7nQbej6rO9WSIiZ5vCpLljBjiNzI2ZpR+YRFkoKaRyQekcoMx
         XjxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EVEs4Ht8;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8YdpPwu0lBrw39zqdvqAlI4zIj5hJBkMpz2Vv+mYtk0=;
        b=Maqte5JUkm3eyPXMXT2nt8J2EtNtbW47OZq8ENnbifXmHsvxv1bTR9kYgugkpJHi/S
         IykTqnpbaHinAP47iPKmjZ2Jz8i+8RHgaieH1E67CsY8Yq/8GmnPyF3vmHrRKuy39YVu
         R/Y2QeTZIkfEf/DXwsEoI7pF8YJgi+NQ6BoCBSQ90mgNGUgubuv3wcq4J2eKtplJRhRd
         2GosNI+wejRppjpi1s0k2OhiaBUcFHxcnvIID8F9oEvRyAZ7I/RlTm6lP11FCS+cB6Tm
         QQtlX+R27mLaIMch3p3ZwVJ1syU/Xwh7FpdweF4K8dsNSQbpHpr40n0jhAeaINtTSgYC
         73jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8YdpPwu0lBrw39zqdvqAlI4zIj5hJBkMpz2Vv+mYtk0=;
        b=PrTlpTuj5nzTVbgPFWISfIR45GdmNNf1lgBiXTZBzPgD6z3+3wbaRWtWZ1sioZuGfc
         xCNw5Vlcqu//e//g6iwttDB4IqbbPl783t9Ni9KwFYLgVuAnbehFRlkqr1dabzLSDDIY
         EHTGy13HVm/RlmxFLHSArMT/jBLqaSHTktYM8ZCmDj7GDcAc7dmjVod1jXbMfrkgoDsK
         2l3KWGduJSVCgt5Uv1GaogrEVoOMPnPEIsbQWbTdxlGun7o4unrCWcAWv6oIGROL0eaE
         G53Hqlx93a8AofSiZuiXj3mhGN9ctLhgqgx2I1yWHUKCkwHQLOSlgpp0zxwsC97OdUID
         hucg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWO7zVIKDsoOhnxn2fiIR+HR+IQf8dzANibO9csvIv5RgoTeUV9
	f9mwM18X+cIkJC+LQXR6sO0=
X-Google-Smtp-Source: APXvYqzZ9yhCrVcl7Mzl6sbXTBOYonyw1H73VnHTK8uO/ZMiDtWzFAGCDP9MXDx8MbJxjPlx4nMkKg==
X-Received: by 2002:ac8:4612:: with SMTP id p18mr21146941qtn.49.1566925263463;
        Tue, 27 Aug 2019 10:01:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:498c:: with SMTP id w134ls2310640qka.5.gmail; Tue, 27
 Aug 2019 10:01:03 -0700 (PDT)
X-Received: by 2002:ae9:d606:: with SMTP id r6mr22082803qkk.364.1566925263273;
        Tue, 27 Aug 2019 10:01:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566925263; cv=none;
        d=google.com; s=arc-20160816;
        b=pHIxBtwA6Xz2S2GK1nvb2KgtlS5SO5mY4HIye1NJQprr1EWXCclR+qF/XKS6BpfTjD
         vdMWiRwRaHRZCvF2/HLby3Gi8tCrgVmNhiObwKXRwxwlaZatorztK6F38eNCQrcmef09
         7fuWeRZ33dSxs+mqKIdsVsWmcqi7bVFa8/mqSzaJyPArDbjnxCHFH6XxGpuobvoSivna
         bFvDPHABSN3pLN9g823NxdNqPl+38D3bj0dntq0tFZdFBt8cGsIAKmJfyhOffJm61TGc
         oSScRrgttEKLzMLvpOixXk3vDUdX3FkDRo7eyZzAKHt052gU1lX4yyrEQorvXN/EE8to
         mbWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vhcLMw4HAS/pg6yWKtfHVOlA6hUJCjY4kAU9vg2m75I=;
        b=T7ndwT8eihB9YdzVEF2Et5hLrdHzEtBg1F0lY+0ixahhT1xWIQpsbJSf8NSGRAz+t1
         kDNtIbhcwicW7iXdzIkcNLuHRmVik5txi5mEJTen66C1EW9rx2givaWikOIOh6GjgW38
         N/NDVHfEbjoje7HyByCDiviVZYdrMwE+PD031g9rd/4Fq0diV7m7LfwE03iueydVEpzb
         1Lt7HwtKr3guzAEU3ICHA0EJcFeVZRVqjbTgJQ+ZR4Ke20tGUdF+MfrYzM1/dIQQ2ej4
         kCAepAQqjUxf6eofzTTCGmIfxfAu95NSY6htom0Q5tEk3x05dVESdeTK+dRxpe1Hv+fw
         iCLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EVEs4Ht8;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j10si516823qtn.5.2019.08.27.10.01.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 10:01:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [77.137.115.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6ED072184D;
	Tue, 27 Aug 2019 17:01:01 +0000 (UTC)
Date: Tue, 27 Aug 2019 20:00:18 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bernard Metzler <BMT@zurich.ibm.com>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] rdma/siw: Use proper enumerated type in map_cqe_status
Message-ID: <20190827170018.GA4725@mtr-leonro.mtl.com>
References: <20190711081434.GA86557@archlinux-threadripper>
 <20190711133915.GA25807@ziepe.ca>
 <CAKwvOdnHz3uH4ZM20LGQJ3FYhLQQUYn4Lg0B-YMr7Y1L66TAsA@mail.gmail.com>
 <20190711171808.GF25807@ziepe.ca>
 <20190711173030.GA844@archlinux-threadripper>
 <20190823142427.GD12968@ziepe.ca>
 <20190826153800.GA4752@archlinux-threadripper>
 <20190826154228.GE27349@ziepe.ca>
 <20190826233829.GA36284@archlinux-threadripper>
 <20190827150830.brsvsoopxut2od66@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190827150830.brsvsoopxut2od66@treble>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EVEs4Ht8;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Aug 27, 2019 at 10:08:30AM -0500, Josh Poimboeuf wrote:
> On Mon, Aug 26, 2019 at 04:38:29PM -0700, Nathan Chancellor wrote:
> > Looks like that comes from tune_qsfp, which gets inlined into
> > tune_serdes but I am far from an objtool expert so I am not
> > really sure what kind of issues I am looking for. Adding Josh
> > and Peter for a little more visibility.
> >
> > Here is the original .o file as well:
> >
> > https://github.com/nathanchance/creduce-files/raw/4e252c0ca19742c90be1445e6c722a43ae561144/rdma-objtool/platform.o.orig
>
>      574:       0f 87 00 0c 00 00       ja     117a <tune_serdes+0xdfa>
>
> It's jumping to la-la-land past the end of the function.

How is it possible?

Thanks

>
> --
> Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827170018.GA4725%40mtr-leonro.mtl.com.
