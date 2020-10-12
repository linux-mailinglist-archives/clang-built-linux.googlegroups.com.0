Return-Path: <clang-built-linux+bncBCT2HUUZWIMRBHUCSH6AKGQEQLMCK3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BFB28B3FE
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 13:42:23 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id g9sf6901795ooq.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 04:42:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602502942; cv=pass;
        d=google.com; s=arc-20160816;
        b=q1PlJT3Ho1Wc8pvPvkSE5fIAnbUXyph2KKjfcEfs2dlmUQiOFADOIrE0lGsbPhp7k6
         vVvGRFlymQ5eisFo5KGSKpZylbe5NERxYTw63bMgTliDiUBAzuIP8FUYy4QD1XheSq0y
         sTeMJbf9pZ3iBFVA0D4+jUI8QCxjbEl3wqAuWOITmaFETWRiqFOPVZdLQoDU4dfpSrzO
         qTUNVdUbmebQ1Wp6ovtAYxOdCKAnVTcAmJY3QoH2vkPkmAFcXDE+6BvWd+2smTXQisfh
         Dh1Yd0Fc17iLydaM04rZw27BBwx31eii4uSlGgZK4/xuDtIzx/kCu6Iq6iJRu1LTgeIF
         Udag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=NejE7vU3UH8qLdupcoNUlmC2BCvOQ4Z+aTY/BNhliaA=;
        b=BI9aTWfhtqJnqEDsdMSEutBamyEd4UYCkJL3F/6UO+51DPVTqmmafkmxL9+pPTH3o9
         9XxuTg037yi/fVbzKXuadfIDpdH8+2AfWL1S0CDO7ytnaMHOTVvsSo0Cex6XxPirIfYk
         0IbqW2JoUXPB732t5OnLt2tgxSbO0WCooQiSjXUTJukL+doh4eNb6L++AuIuI8mNCraT
         EJfV+lMQIYfTd507HEr9pVAnfRtIxRz8M5woyCUvXc+YL8GS1Oh+SI7n7Q59OMPAWKEo
         PJdrYTWJSvZV+mwzsVo0E37M5MuzPQd0mwLmJ45dqRS7UHcW/DPSiHp1yJYVGbx3z07C
         D+GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=QzrzemYc;
       spf=pass (google.com: domain of dmurphy@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=dmurphy@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NejE7vU3UH8qLdupcoNUlmC2BCvOQ4Z+aTY/BNhliaA=;
        b=TP0vOPeRixyFLenHY1sRCpzqlbbYeD28B3gMeHzKGu2FXodWU625lGomL7cQ9cAJuF
         HhvVlryAZwutzBV77QbKFfemnaTdrsFoeVrRPV1NuFf38o/OejZPHHOFMXCDrAfdgXpT
         yZn06ITDcn/qWLGE9dq4Ap8S3jNmYMfmgPGZWb/a2cfBZTeb+BkfagZGwsW4boU4Sg8e
         /3cNi5qlvMz7zcHtAygk9ooLLwyXatvf95+Ib2/ZzxunII100dW93JPhQ9/FC3/QnIsS
         qtlJ2vMYJA9nI9KNIqFNzjlNFNDcyLKDFJbP2DaE/aNt9aDnC5Xaxh/GIbl+9i5xeL0S
         laPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NejE7vU3UH8qLdupcoNUlmC2BCvOQ4Z+aTY/BNhliaA=;
        b=WJniXZyTjtBn1/+A1CZr6e17xfzUwBFXybBiui3OxZX165w3zZfAJly+QCil4Cvxe8
         UKQw4Y313Gn86HIr9WBkUqUoIsACmrYEaBIyNhcr86I3n7eFlTR+a6Ylky1Qr91vqVNu
         DnniCc38pDuI4caB2sUK1WXXDGfX4d52UOwJ49SsPhkAjZfbZ4SCK/8Tcn8QMGAq/MhZ
         YqVe1PD2ENvXZWZQgqbEENWY2SaBXZt8DJYR2XDt/8YkXNhozWjuyZCpjtYNKsZf99jK
         qRUqIRhj68Dd00vrtLsqaiGyhPg1jMxAhSw+6bZK8gutoyWUEDdZsfA/yFnA5Pd+g5RE
         6QjQ==
X-Gm-Message-State: AOAM530JYOlmkHnIlDV10lfiA13NzUJiZVrqIqobXEzGIEzktCCMxuSX
	MFPzIxWYtIPx/PJjtZrfd4M=
X-Google-Smtp-Source: ABdhPJzGqAcvvbmL9EbBr26OP0O+Yr1lYjDyzHoiiOPvN9Hf4Y+inimvzuzUZo9kUtTmk8+ofh2k6w==
X-Received: by 2002:aca:4e05:: with SMTP id c5mr11082850oib.99.1602502942266;
        Mon, 12 Oct 2020 04:42:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls3893363otk.2.gmail; Mon, 12 Oct
 2020 04:42:22 -0700 (PDT)
X-Received: by 2002:a9d:12ab:: with SMTP id g40mr19030206otg.369.1602502941937;
        Mon, 12 Oct 2020 04:42:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602502941; cv=none;
        d=google.com; s=arc-20160816;
        b=gqQ9WQWNmhnTDfPQ9G51JLXateIMVICARpmGqJ9evi5iCxRzo7UaQDD0y+T+p5EU8+
         IjDitzDpRVWbeDuqnZPX7q56tq0pF7zQC5vaPh3+WQmgbszKVjPhoCNQFqZz+xb5CR0n
         EAs+wqLI9HZ4DSr4PiumfXNyjkZPPi7Ze0F9CDbSsTHTYbRavWkxWSWGKh7OqrSaUCrI
         d8qYZ4vZytQnPbKIwlfhK7WUMYQXuAiS9/3aEH1ePfr579ElNTmzhO/qBj2sWjgiwS/b
         xoKDjyQK/D4DlM8ZmMRpQdZV8WpyuSkBpdxIN05A9FhkPRyEjX2V0ZLVkbxY40umT74o
         YeSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Hk44bWbn3zalxsmt+XW/t6GmArzb564V5PjDjr9HOdk=;
        b=krp1fsCHNVBGU4TNWits+KyyfIrr9JJ9QMImlPqlviq3I6y2zGYmruFBnYYRX1aQa1
         izjON0GO93grv9kYNkoCfpR10qP28FPkMQYthiFWOOqjRl9Y/xlT1cznK5M7CfPLB0I6
         Axjm1SpxQr0tTymd7uDQXjeMb7gh/fCo34TNKjhLmg8LkURQ9NDaRyi0ljK4ONGqnAh7
         KOM/iyu3gJnmKouklqHcqtpwl0IgYy81DqHntZOmxR/7aLbt4jkBg2ds808Fx56IfrKu
         w6PRAQc0EtFh9vpD63oIfOXKM5RcQY7B+vSgmz3rRskQHWbxpZedTaCcrvYq8+3Rnzud
         5mhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=QzrzemYc;
       spf=pass (google.com: domain of dmurphy@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=dmurphy@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id k7si860395oif.3.2020.10.12.04.42.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 04:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dmurphy@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09CBgL9s092438;
	Mon, 12 Oct 2020 06:42:21 -0500
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09CBgL6D059311
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 12 Oct 2020 06:42:21 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 12
 Oct 2020 06:42:21 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 12 Oct 2020 06:42:21 -0500
Received: from [10.250.67.63] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09CBgL4p075370;
	Mon, 12 Oct 2020 06:42:21 -0500
Subject: Re: [ti:ti-linux-5.4.y 1/1] net/hsr/hsr_forward.c:244:3: warning:
 ignoring return value of function declared with 'warn_unused_result'
 attribute
To: kernel test robot <lkp@intel.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>
References: <202010101513.xK0Ju6WU-lkp@intel.com>
From: "'Dan Murphy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <f7dac83f-511d-356b-4d00-c879cb85bf9f@ti.com>
Date: Mon, 12 Oct 2020 06:42:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202010101513.xK0Ju6WU-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: dmurphy@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=QzrzemYc;       spf=pass
 (google.com: domain of dmurphy@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=dmurphy@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Dan Murphy <dmurphy@ti.com>
Reply-To: Dan Murphy <dmurphy@ti.com>
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

Hello robot

On 10/10/20 2:07 AM, kernel test robot wrote:
> tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y

Why is this TI tree being reported to the open source community? They 
have no interest in our product tree unless this same bug is in the 
mainline or Linux stable

Dan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f7dac83f-511d-356b-4d00-c879cb85bf9f%40ti.com.
