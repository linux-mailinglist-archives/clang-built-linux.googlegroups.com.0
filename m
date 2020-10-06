Return-Path: <clang-built-linux+bncBCQYFH77QIORBVEM6D5QKGQECN7LXUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f62.google.com (mail-ot1-f62.google.com [209.85.210.62])
	by mail.lfdr.de (Postfix) with ESMTPS id 309AB2845AE
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 07:53:26 +0200 (CEST)
Received: by mail-ot1-f62.google.com with SMTP id v7sf5299357ots.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 22:53:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601963605; cv=pass;
        d=google.com; s=arc-20160816;
        b=Znr/RiznXl2HgBO2HWyTbF7Rvqmyc9Et7y5lZJ3O7smT+WQZ637vkKK9XdLvRgH/G6
         LhXOJ5b7OC6/8ezgumRfWUmON1sO14ck0/+V15cp4losCx3myKn7u5oBej3nrSwTHfSy
         bXawtNp2NMWTzgRzZtqsdAsijqXIBqZnunAzPaP2T+cSOUQuWN1q0ANCa+t3FuWAHQOw
         XUxVKs177dxNYQRCoCFJjBlJ0a5PGOV7Ea6ZRcjnYAbL8SI9bX+/sgXihdEvs5JOd9a4
         HJfing0XkeIF7Ij/cWUV0DQGTBPXdwLL/Xd2Qgwc87TZpJiLKuUwqrczWfPeTuaqtQbU
         qoKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=GzGUD724894PWBWOsk5MK/SzAWT5qbjA50+OiOltJvw=;
        b=eVD4jlnYRF2XLGXrkgveCgMTePGreWXZxxavFQ4+N2l/iVpYsyvyncySrnBgS2hce+
         IbAbxiGvMkjov9v4FYMrdThDOKYlreRKT4BgCCO1hGePupcKJjXYHt9IOiMZH81z7xiA
         1A0YApH2qXrecbe+0N/sBkfrSxLxSTV60oj1uEiX37nvG3huSU3xiDkm5l5o5Pw7QQjW
         TBZewWG6OCuyuWGnAdsytGrXLp+3h85DjOe7hLp+cbE3GBXZjeXVitVP01CNYWy+gB0u
         4u7+pcSPiJd6xsLmnn9TuCVSfa5dk+0zMiN9EdCquVX8yx8ycYdU+Aq0XI+eA00CIYES
         uhNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=gedtVYPS;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.4 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GzGUD724894PWBWOsk5MK/SzAWT5qbjA50+OiOltJvw=;
        b=jgPjOGMNxXfF2ctHOC49aem6oJEEHMceDJut+/Kdp/BHn10lmPFOMIInK8ZIb0yhUN
         gJmDt86ylALrdQXI51RMNCBvFwoDL+lcK/y4Dklf5CytPG4tJfgu2r/3+yasM4Jn8q80
         Tj9MLbahRkzAaqaJUod4niV4+wVCRy/1Jn37DY5Sxkl/6AJrXz6MNRMx3gqWCzc4iZ+o
         UuvTcVovrTdfbzN2LJdS/uE9E5IRo4v36fivnhGXpgy3ETkozwKyGEXYfy9UgxT8yX5D
         JbZGLonkW22T873zVxjxhCwAAGjVy9u9wC3JoyLNMkAwOlX3XnzEoJpZ6HA5aqJ2bCZ+
         sm5g==
X-Gm-Message-State: AOAM5315Y7qqWNEx/nLIym0Lep9LtRvfX0cgCO+SSJhbGURXtlR+oXCx
	md55GVaEuDNWjx1bjC34XUA=
X-Google-Smtp-Source: ABdhPJwjYsrIUTy0Gp0DPcbOb0rVSiuQpuwnPgEMsPGCdkM0nbFsxh5dt7m2Jbw8LKXyXD/SeAgdRg==
X-Received: by 2002:a9d:5a8c:: with SMTP id w12mr1908264oth.332.1601963604994;
        Mon, 05 Oct 2020 22:53:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:459:: with SMTP id d25ls2973881otc.7.gmail; Mon, 05
 Oct 2020 22:53:24 -0700 (PDT)
X-Received: by 2002:a9d:6c88:: with SMTP id c8mr2054879otr.144.1601963604612;
        Mon, 05 Oct 2020 22:53:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601963604; cv=none;
        d=google.com; s=arc-20160816;
        b=MzZwFkEMJF2wHTNr0PQbcbIYoBgLVTsKETzdW2EqglTgBKdcYPE+sWpmvJgxd4cDCh
         pNlmQnE5JJSYVo/h1FN/b/oU2Ap8Wp2nPG03sg7wrwN6E36k8i7N4ZvzyZqH/LnOD+c9
         Ul+mCxqfi0ycZc2fNmSsY7im7e2IcE1rlqiZiA3JOpDF1CsWH4Pd8I7mE03typPLwOAO
         bD0ass5gbL2Op8ZLO0xx9D0hYmQrPryaYdL9FpkjI8FJgHO0fG3xNKZXNdlC8rMs9S5E
         Kvz2TImwuI3qzFAjskloi/dEKwNOjefUiymsu6z8FuV8+b2DAaa0IZS9Dh2fX6Rxd/GD
         iaMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=mLf2F13BPGbz96PEyXgm5umMmyPInNmceDvtWNRsKj8=;
        b=IjTfgTALZLNbQrkimqQ1JpCZhR3gzlgLJ7H8NCo7kejNXQgiMWKn54GnvPTUNhXWIZ
         Bf0YCzzrYPCzpKw+iSDcpuGrkcgb1kv/2dZsx9wWHv22Dn/0ov97XcD3cotOjjgBS/0W
         e2WBhV09EFoG9eyY3ggYcFA4qZXxoXVIOePyeDf1mquH3ApQgtC6FVPCNOcvr2eS5JhU
         F3jvfF8X/fBd1qOeKTMbUdkJHi55VH817sricj0DKZg0XSI9q8qgEzW+4BKHr5k8yp7c
         TBlrYSFQskIFsgavxi6lq1IToIrGcYHOEI/bQRo+oqEDzqLvnhSjZALINv2hS5ASGxQ1
         81mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=gedtVYPS;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.4 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m42-4.mailgun.net (m42-4.mailgun.net. [69.72.42.4])
        by gmr-mx.google.com with UTF8SMTPS id n7si130846oij.0.2020.10.05.22.53.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 22:53:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.4 as permitted sender) client-ip=69.72.42.4;
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 5f7c06450764f13b006a6066 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 06 Oct 2020 05:53:09
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 4E560C433CA; Tue,  6 Oct 2020 05:53:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id F0851C433CA;
	Tue,  6 Oct 2020 05:53:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F0851C433CA
From: Kalle Valo <kvalo@codeaurora.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: tehuang@realtek.com,  yhchuang@realtek.com,  linux-wireless@vger.kernel.org,  clang-built-linux@googlegroups.com,  arnd@arndb.de
Subject: Re: [PATCH 3/5] rtw88: add dump firmware fifo support
References: <20200925061219.23754-1-tehuang@realtek.com>
	<20200925061219.23754-4-tehuang@realtek.com>
	<20201001190641.GA3723966@ubuntu-m3-large-x86>
	<87d021cae2.fsf@codeaurora.org>
	<20201002084326.GA2013042@ubuntu-m3-large-x86>
Date: Tue, 06 Oct 2020 08:53:04 +0300
In-Reply-To: <20201002084326.GA2013042@ubuntu-m3-large-x86> (Nathan
	Chancellor's message of "Fri, 2 Oct 2020 01:43:26 -0700")
Message-ID: <87y2kjc33z.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=gedtVYPS;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.42.4 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Nathan Chancellor <natechancellor@gmail.com> writes:

> On Fri, Oct 02, 2020 at 11:14:29AM +0300, Kalle Valo wrote:
>> + arnd
>> 
>> Nathan Chancellor <natechancellor@gmail.com> writes:
>> 
>> >> +int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
>> >> +		     u32 *buffer)
>> >> +{
>> >> +	if (!rtwdev->chip->fw_fifo_addr) {
>> >
>> > This causes a clang warning, which points out it is probably not doing
>> > what you think it is:
>> >
>> > drivers/net/wireless/realtek/rtw88/fw.c:1485:21: warning: address of
>> > array 'rtwdev->chip->fw_fifo_addr' will always evaluate to 'true'
>> > [-Wpointer-bool-conversion]
>> >         if (!rtwdev->chip->fw_fifo_addr) {
>> >             ~~~~~~~~~~~~~~~^~~~~~~~~~~~
>> > 1 warning generated.
>> >
>> > Was fw_fifo_addr[0] intended or should the check just be deleted?
>> 
>> BTW what is the easiest way to install clang for build testing the
>> kernel? For GCC I use crosstool[1] which is awesome as it makes the
>> installation so simple, do we have something similar for clang?
>> 
>> Just supporting x86 would be fine, as my use case would be just to
>> reproduce build warnings.
>> 
>> [1] https://mirrors.edge.kernel.org/pub/tools/crosstool/
>> 
>> -- 
>> https://patchwork.kernel.org/project/linux-wireless/list/
>> 
>> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>
> Unfortunately, we do not have anything for clang right now. It is on my
> TODO list but being a hobbyist, I have less time than I would like...
>
> If you do not mind building it from source, I maintain a Python script
> that tries to optimize building LLVM as much as possible by turning off
> things that the kernel does not care about so that the build is quick
> and it does not intrude or interfere with the host environment.
>
> Something like this should work to give you a stable clang toolchain
> that should work well for compiling the kernel:
>
> $ git clone https://github.com/ClangBuiltLinux/tc-build
> $ tc-build/build-llvm.py \
> --branch llvmorg-11.0.0-rc5 \
> --projects "clang;lld"
> $ tc-build/install/bin/clang --version | head -1
> ClangBuiltLinux clang version 11.0.0
> (https://github.com/llvm/llvm-project
> 60a25202a7dd1e00067fcfce512086ebf3788537)
>
> The script by default does a 2-stage build for optimization purposes; if
> you cannot spare many cycles, feel free to add
>
> --build-stage1-only --install-stage1-only
>
> to the build-llvm.py invocation. The toolchain is installed to "install"
> within the tc-build repo and it only requires a few external
> dependencies (outlined in the README) that it lets you know about before
> doing anything. Feel free to give it a shot and let me know if anything
> is broken.

Thanks, I'll try that when I have some free time.

> Otherwise, as long as your distribution has clang 10.0.1 or newer, it
> should be fine for compiling the kernel.

Good to know. My distro is old so I only have clang-8 available :)

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87y2kjc33z.fsf%40codeaurora.org.
