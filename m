Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBFVA5H5AKGQE6QLY3AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBA226495C
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 18:11:02 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id c186sf154769wmd.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:11:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599754262; cv=pass;
        d=google.com; s=arc-20160816;
        b=gNg/xlmokG1cHK6rPI2fX9FoyMEAOsHUddzQ83DaSBa0QoxheixcBelbMK18d90ytv
         gZuxhII9FDsslmbVGCErCktoFMg24URR7/L2QhOtgXjnqxjk/1URBznUEDBoOpvrsBos
         SRofMPWMUrsK5HPsuIVyMcq7tOFLQobNUiryLIkG6UWoOrjkghXwV8L85R/wrHFrrCJ8
         JXm7bMGaVNFLPwaWFTBLwjMBkbHx8mSVElX6rGEgjiQ91LugqFhJqukMIO8D9dRwhxwz
         POoc+lt5p79MQh5faPUkpAyJQWosH3wf+WH8jdNXm4GXlRYwQ4zKkf60+79619wRe6mI
         8ilA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zYKpXndLx8mYabjT8GtKK9Dz01HrIjpR9+wHUzWAW6I=;
        b=KuIpdu5gTb4/NT2ChWmwbDmqm98/Vgz1t+AT8L/mtMZ90zwZITX1D3kz9DnMKsC03x
         M6hSQfkhRi+yDIhKZv6L7T21auKTgCZpBjW5O1wNaMCLGvA1cS6VUK5l7MJTk/f9r893
         k7FH46ggWKTxdjIK/T+R1w7m3CACKQ5XVOKemcdv8+7Nxy3cYQub1vpAbSKmcKFLRlNX
         i1a8bsX7daLc5uk9arevk24HgSiUc8Uq125p3S7yyHGSzUhPh14lmHxio5FteNeYPhT5
         dAy07zqypRhgpKPSC1iv15UEON7NZUTC5HdkdLSwx6SxVFH3ccewMenxjCHwGc3Q2SL6
         pn7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=LnKwRkjX;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zYKpXndLx8mYabjT8GtKK9Dz01HrIjpR9+wHUzWAW6I=;
        b=EB4bQGXY4YrFDdMf92GIYOfonkOnYOb54JGOnsRVFV6OTxaERUuiug6KyWBzVaUsa3
         /KsnUyVCncCTEh6wiGtGA/HGLEScg/pgKIty9Z+m5pYr27wvRWtyMb3phTH9/3XEXK/y
         3sc1k1QhKFB+1NtSl9OAGSS5h+/6cvN7ImTfKag2TVcyY52hBYnIU3049eAzg7lsx3gx
         Kv5LIGbaCkPJR0AdTdwkc+ypM29IH/gZvgUArJWjV54C6HhJ21ZaC88B9oj89dV7OuOC
         qOFxZn/1zdnArtF+DYd8EzjtTKwtfNOZP57KqfgyhJgm1n2lIYJmqH72oYcLiwtzJuN0
         n2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zYKpXndLx8mYabjT8GtKK9Dz01HrIjpR9+wHUzWAW6I=;
        b=AZRKMKCURx7xJhafaDXEyL8hgDk0aBcCQE4ElhBzwtoAqglgAMotSQWEaBSg8zvIB/
         GP89KuyZu4qQR8I4/XwJfo8wjrUgGYHZgjTNAyHc+d/Bw63mgxdu+ljjtyF6gluFcXx9
         /dkmSseDPUO7gClnEf3ydWEfJaTTBhiC/w7uJIu4azqQBCvRVcwZa/xlsTGu9+/8Qf01
         7wlkHngzytT5o8wR8LjM5b+cyr67ukt8ykHH0lT/GNOXdZD2hqWUq/3adszTcJHQQIZk
         BkLuFV9Ly39dVYLWnU41dOj+ZpVL7G0uLSyJmCHKxMscBO8y+Ftm5aBUxla8Ce9KRF9T
         d5gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jImwwR8OiYT0uqBUHPS4f2UbVj5KD5/w4vSntFCeyAIy190uh
	Dde+Vo82yEXwLrWroV15iEc=
X-Google-Smtp-Source: ABdhPJw/4ecNd/r3IBW7By18kJic8D3uoC2YjLJD5MHOp9PpoCCTnRnVJylwnDUwq9mgBU76z3vEEg==
X-Received: by 2002:adf:df05:: with SMTP id y5mr10703345wrl.39.1599754262390;
        Thu, 10 Sep 2020 09:11:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls632789wrm.1.gmail; Thu, 10 Sep
 2020 09:11:01 -0700 (PDT)
X-Received: by 2002:adf:db43:: with SMTP id f3mr10523079wrj.219.1599754261515;
        Thu, 10 Sep 2020 09:11:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599754261; cv=none;
        d=google.com; s=arc-20160816;
        b=SdDOLyiHrAQx7aOvs4TXAD4a4Ne+E5fDVC9JPFUEoK2yBjo3EqQFoS3YSH9sWS9P1p
         LXl9hLXvEq0xFSghs+tSz6TYwst855XNg+flh+Wh2wSvqvzA2pm5W4kYIqkMXM4FVSZx
         i0LpDnRicCaSIpj6ogWZgeZwDTS6n7/SzLfdpmHENKtLGzzm8KML4pNtscE/36zjkTjt
         5JkvQke3aZ3DXNNfmTCZKAk89c+jwqQ2EDodZoVsSma+sllJavr6Ro9DsLioAQcSxqXA
         iP+um2GwZkEkmKE1T8z4CzoL29Ndxe+/csDk97rq3hIwYuAlCx4kkxuhSlmfFCcP7d28
         NC7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sV2huq5fOJK6jTiNRjfJV1JPJGk72Qa1SyQ3JsvCdV4=;
        b=vmjZTFMvPvLJpmfaLVpJxmnYpqNc6ACx8SjmtlPY/k3BOPR+B6i4D5mxiMhx2pWCt7
         qA8yEoJx8W3BagCy9M7AWzNBuRGVqZ1253XSBWap7M3sjDBKrlPt0P0+CNAncAvD6ZcZ
         THCQPUkOkbCPV3yyiqoTQvi1IP/4++ofWbd39Dwf2PKZ7HDilfN3q3WZHztQOp9fb190
         gWtPSWUludqOdI/1QVVJ7jmy+RXcU7QUjgHwCcwc5hOOMGdME7B4we/0XsjTZCVSu9kl
         iKQOXxoOlEUBSEJV5zpiZDbUF2azgapEMBefvEf5uzW1oXhHczrhnkPTvJaGy7/JGdJO
         Fl9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=LnKwRkjX;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id v5si232491wrs.0.2020.09.10.09.11.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 09:11:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f133200a473c2fd688a37dc.dip0.t-ipconnect.de [IPv6:2003:ec:2f13:3200:a473:c2fd:688a:37dc])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id E13F61EC04DE;
	Thu, 10 Sep 2020 18:11:00 +0200 (CEST)
Date: Thu, 10 Sep 2020 18:11:00 +0200
From: Borislav Petkov <bp@alien8.de>
To: "Luck, Tony" <tony.luck@intel.com>
Cc: "trix@redhat.com" <trix@redhat.com>,
	"Zhuo, Qiuxu" <qiuxu.zhuo@intel.com>,
	"mchehab@kernel.org" <mchehab@kernel.org>,
	"james.morse@arm.com" <james.morse@arm.com>,
	"rric@kernel.org" <rric@kernel.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] EDAC: sb_edac: simplify switch statement
Message-ID: <20200910161100.GI8357@zn.tnic>
References: <20200907153225.7294-1-trix@redhat.com>
 <7525690b6aaa4e539989b9c2e5703a56@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7525690b6aaa4e539989b9c2e5703a56@intel.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=LnKwRkjX;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Tue, Sep 08, 2020 at 10:08:28PM +0000, Luck, Tony wrote:
> [Boris: Pushed to edac-misc and edac-for-next branches in RAS tree]

Yap, looks good.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910161100.GI8357%40zn.tnic.
