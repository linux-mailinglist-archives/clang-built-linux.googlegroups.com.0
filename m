Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBH64RT5QKGQEN7S4KCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 259DB26D7C5
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 11:36:33 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id d16sf1063544ila.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 02:36:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600335392; cv=pass;
        d=google.com; s=arc-20160816;
        b=AM8jWeyUSmrNgD9gxcfS4FRlg9Kbjj3Fs/lQHo8xYggkV3rtW9nEzslbL0NgzBU7Cj
         aUR4c4irKCB8ukan7Rfo/XXksWEJzNlyHdwDVrAVVKDeVhDnYc9yxpDDw39C/nOwu1No
         oD0ezLFrKi9DSYtB6LBSKw962yb/jaR9guLT7ArWDGm7LsaD6z5A0qbhWA1+foPgefaV
         Xasl2vHaJPfm5Ef/qKM9NMj4i/tVxjXaEI9wEoqmAqWR1yvNXwDuNMbsfwKnMBbBF/fa
         q4zN+sgzyDCQTT5i1MYl3otgXVMfjq+qR9PQ9yg0CQAJi6x73lsQLh9QEq86gANKVRoX
         ObZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TmRCdbbR+4Tsan1jd2sS5KYq55S7/kfaek2oB0HqsPA=;
        b=UwCdfGqN9GubODIieq9TJJMXzhjtJBXcovFe/2PWfY44yBGl0zf0reKEJdgveRCLKP
         xhIbI5Cwvl7IaHzoDR1MiRYVffc6VHrkDmBC7bjxVYUstccvmZD+Jz83o4haysqAcMXl
         bUbDp8WiKZVMzLYrUWEXRrHkcedU6LuVkR7BYYBgh3fKC75hGnlORW7JL/lpJUt9QZGl
         +lt5SqclY2yXrT5oDP2+GZWOZaIRL8fN1fbGhB/GSzq3uwSnfgyJhse2c/nFyQZi6Ofq
         wZw7hxg+ONIV1aAaWnMGDddIPKjSNX9x3lUzo7kGKPVxnAxAUTGm1QwWFLuvmUSby59i
         +NaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wuuH5dEb;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TmRCdbbR+4Tsan1jd2sS5KYq55S7/kfaek2oB0HqsPA=;
        b=RcUSNVR7rWYpSluZDEPDCg8n1kmbgxDzxCQtekGykresM+hwYMsLUWqAoywFhXt1Ew
         pE8WKg+bnh9jOmXaiXUz1o60HTfNC324RwSVCH7QELMPuH3KGr7chpioRnj5pC044OkR
         3KxF+sIBVEieWQJh+ZC5b0KU9sUlW9CfpmaoeOSMWDsY+nYn4UaOTA857CcH3ivARYxN
         ms3BTCOktmDAQPuwT2qATPpO+CwdrA8pkryQs2y8uuVefjYMXxICOsciI9htLL/Ju0K5
         ba1hSnUS6f9cwtTDezLMfK3t8KzloSSd3p9s3MKg99Sio/Tip/Ea1xVd1bgBQz2MZ/AT
         GDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TmRCdbbR+4Tsan1jd2sS5KYq55S7/kfaek2oB0HqsPA=;
        b=lCKVjJ8TZr7mBWOu1QLw+b3LMZ0TOOk0cjR3rWz+K2WuvGWNW4O95WizLa4zOjeMED
         FsgVlW8l89FAM1NgGwXd5Kg2UVlQ2NkHSfa2suY7QUZsNSNGMIElAVRA/oSbtUSCB2xN
         84Xf7kE+fjQ0OlQEyjotuaonAqXvTTof694ZolcDtzh46FXZviiXmWnUWTB025vRoZhA
         fh4oRap0uDDRlFcuAe0sdPDBFD9gAa5xpalx2XOmPswW42e+6VQ+E/X/hAbphiBLhwoj
         qDA1n1lku7PTpjpW3u0JrqgWhObNZ5pOBIiQeOnRLPIbw07S6DCL0AMe84mmq34u5Bt9
         QLhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530E+yxgCHX6Zx1OO6RHa2uN7gmTMgxroHORyyS4uzrmERqWCbYJ
	UqgTFB43wAKmWGbkaL4+pO8=
X-Google-Smtp-Source: ABdhPJxYVwWo5KqTRIMR0dvUPZM88qik7pmkHC5GBN256LwX3pGk9B4gurTDeuWXnqGOJ4IcLI80kw==
X-Received: by 2002:a05:6638:224e:: with SMTP id m14mr25598837jas.101.1600335392012;
        Thu, 17 Sep 2020 02:36:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1655:: with SMTP id a21ls186260jat.2.gmail; Thu, 17
 Sep 2020 02:36:31 -0700 (PDT)
X-Received: by 2002:a02:94c8:: with SMTP id x66mr26638421jah.64.1600335391654;
        Thu, 17 Sep 2020 02:36:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600335391; cv=none;
        d=google.com; s=arc-20160816;
        b=XC44YqLYiBHuSMFoZ873NpbrAAeIRcdsxJ71LW7+kjNYS3ed+RqUYjQwh3XYPVnz3f
         6LmVDH+7ZHlo7DQ58dZmtY5No150sezXHSRt2gvtfMtbTnquhoyKRbNyk6Zok8S4E0HW
         qloGzhoB20djmh6HvqeFhX3PYY3OATYYJ95Ztw1kNqrz3oVMPZrVP2oK5ib4HIy5Se3Z
         RdXHKSikU3wD1/Go7blpZECggpovLNrJN0Twbemzb3wFpBHvdI107NKhukC2GxBy59Qr
         eX625UEDaWmmYxvpe4QJPwK04NHv6pHspOT8Rh2ysyfrf2DTdpzqOkZ1DTwsOsCDcT6C
         aVkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PlTuPtcuSpiWaTWBNEDsZTGZnw3nGAyO5Z8MHIp1Rkw=;
        b=oMbLhZPJlqlrz7rhIrhaJQIxcNtLt98jEd638xUT4A2Hy09usLgKtE9m5cEWe5dVl7
         ZLgLH2qFMgzgbAMr+37M6OjAP/3kDku3u6xbqbGMD0gZSByxSniVk8gVNLBg6UtVHq0V
         uBRyLJhu8cg3MinWXKIrwiOn3PPIQDrvwq10VJX66HRKIkmxz8Q3J97ws/GPzfdPKl+m
         jhoCGENTf+gerPxASWv9yX2S9N7anUdHZ1kJe2VbBDlGs4GwBUbRt3sKKjQHo4tCgAH1
         0ArfuF2pM3XuZnReCMEGeOBhyTXUUDf+nCOAHWA6re78Oqz0KhK6u5VaILfrmDZvfmEa
         5WJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wuuH5dEb;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q22si924661iob.1.2020.09.17.02.36.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 02:36:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 19C722076D;
	Thu, 17 Sep 2020 09:36:28 +0000 (UTC)
Date: Thu, 17 Sep 2020 10:36:25 +0100
From: Will Deacon <will@kernel.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Mike Kravetz <mike.kravetz@oracle.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	song.bao.hua@hisilicon.com, akpm@linux-foundation.org, guro@fb.com,
	linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
	linuxarm@huawei.com, ardb@kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: arm64: mm: move dma_contiguous_reserve() to be after
 paging_init()
Message-ID: <20200917093625.GA29635@willie-the-truck>
References: <20200916085933.25220-1-song.bao.hua@hisilicon.com>
 <20200917001934.2793370-1-ndesaulniers@google.com>
 <ccfcf5a5-79d1-6339-b4b8-33b587507807@oracle.com>
 <20200917090234.GB29556@willie-the-truck>
 <20200917191316.578a5181@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200917191316.578a5181@canb.auug.org.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wuuH5dEb;       spf=pass
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

On Thu, Sep 17, 2020 at 07:13:16PM +1000, Stephen Rothwell wrote:
> On Thu, 17 Sep 2020 10:02:35 +0100 Will Deacon <will@kernel.org> wrote:
> >
> > By "pulled" do you mean removed? (potential terminology clash with git pull
> > is confusing me here!).
> 
> "removed"  It will not be in today's linux-next.

Perfect, thanks Stephen.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917093625.GA29635%40willie-the-truck.
