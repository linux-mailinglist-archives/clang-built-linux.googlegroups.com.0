Return-Path: <clang-built-linux+bncBCT2HUUZWIMRB4USSH6AKGQETEC3VHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA7C28B477
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:17:55 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z31sf3810755pgk.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 05:17:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602505074; cv=pass;
        d=google.com; s=arc-20160816;
        b=SDNSXC5XuFnMABlyvyvPwp5DFbkRONs3PrhNXdl4U+w80WsAoWEHNWmkkZtkIG2204
         v1fNJHTcLyHtyG8Ri0I25yhj7EheFAqa4vSErRiyHPRkPoQXynAfIhxCWIW6rVM6HoYL
         NegP1AkJTUHR34tdjCgiKOLrsXcEMlMg4Z0aQ3oYdSXpyDj6ht+ZepAX7I/2QzUKbXQ1
         xBG2h7bQSx85xJfkfZnsOpQpLtv22SQgjYkcNM9ST+iNyGedIPDC074O7UqsgUAcdNAA
         3TIPvzc243+SkeMDJu6bN1CavDR4u4w7cDnL41r4F/xuNPrG1LfYDk4eP6TKux1mIxDQ
         4rFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=Ain2KPt+GB0UnefG2cBNd+PdV40WBYzLt10wlgCPwVE=;
        b=mVf8+7qRJ45cGAt0BpcIyj/OJxMoCLPnAdwiA9xe8gRKIA0RHB8M4xhL9nyFYE7E+F
         n2LXQKTMJoelh5kZbU5mGhFF0Gam1aRi3dOXh63TrExP5GNqDveH1hyYu34Fd0pCYz0p
         pvSFK/GXrOljn68AToVGWVjxHX9vFINex9DsW3+d2CNfRpvBtEjTTBSm38DbITQ58EaH
         V8ndaec2cHcDbbVSfni5TBzBGyjuDR0BbhuB8cXmw11E3kVkgXKInazTLQKxNKgsBH3g
         1VwPCHOtv2CxF7HghQbiXki2U0pnoxQyT1AsEqhxZgR9xi7sUWK6xtrX/zwme1azidqg
         /5FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=gop8zO3e;
       spf=pass (google.com: domain of dmurphy@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=dmurphy@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ain2KPt+GB0UnefG2cBNd+PdV40WBYzLt10wlgCPwVE=;
        b=UPcrJClYsveZ5FrOpWYYF9nqzKixV4SIaD9YL6i0DEVTuY+7qraIapkB5h4XHG324K
         1rshM0enR57hoVckxk0WBVAjOCPaIApRNxG4jyQf/Tp4tDUqmmFR7GrMheNSLM5xknAY
         yMlqHMOmvmH5yJRe4SGyxPVvvl9Ivfr2H82fFFp1RCUR+YHTXBZJoihKtPM5YSa5TzUl
         b3Fr9KAxFJcsEY4WrEwSCXgIIbS8jelEnK172vOEueU9qzmKCtbQK5sMngM+9fqaBav5
         vMYyk+idTCYDSXCckla51XFbTaYWEICR8J1n1Z0sEWprpRN+BUBXakgf5prfyokwGqpT
         HKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ain2KPt+GB0UnefG2cBNd+PdV40WBYzLt10wlgCPwVE=;
        b=XjC4VTj73CSjIqtC/LkSjJogR1zwqra5Ismi4ap7mCGXtBJwjbrEyJpWAEFuzDRgs/
         DmNwOKWNpOjj0Dhs3l714P2N+FTCLaD1hAivGCuccj162vuZEVKhovG2pt2n04UYJ3cc
         8JBn6gU9H2VX+yEaoTADcKDmICoegjzu7faaafBt0CQvLMsXEgQtdQN3yJ/UheYCv+E1
         VMlv5yQWMxfbQ9WKwTNxBxHnoa5Jd8cQTVrskUvw5hN4mxpVliL4He80WO9hhTJ5XpDt
         dJ6z5KWysYz3ejS8txpXVJeeTOSu6SbuNV0wtgZ6VjlyPBidpKoWE0MNGBHnwMfpOIf9
         Ltjg==
X-Gm-Message-State: AOAM532ZMXPA4bkUU6txWGiLEzY5CwHQdKPK5TEQfP8vPVJ/oDK5wAcZ
	fU2inso5KEFqcXl4x+TZOZw=
X-Google-Smtp-Source: ABdhPJycDn4z3SUE44EyE7DmWIzdbYkSHRZ+IXIJ3O2viUw+NgGvlgirFZ4m/DdQnokRSNfUvFl+5A==
X-Received: by 2002:a05:6a00:845:b029:155:dcd2:7322 with SMTP id q5-20020a056a000845b0290155dcd27322mr7496940pfk.49.1602505074384;
        Mon, 12 Oct 2020 05:17:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:480c:: with SMTP id a12ls9332194pjh.3.gmail; Mon, 12
 Oct 2020 05:17:53 -0700 (PDT)
X-Received: by 2002:a17:90a:d596:: with SMTP id v22mr20539903pju.146.1602505073848;
        Mon, 12 Oct 2020 05:17:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602505073; cv=none;
        d=google.com; s=arc-20160816;
        b=CAGlYZgCQlqLA29ic3uazqopwlicocLikMoGcL19HDtJ+Af2oq13rd+rShR9W9YefC
         GvwvTudzu3JJ5KsJjJdhTKK2VRQxrYA4mNtj9PXw5keikA/O3Iu6w0iSe5B/jW3y1VmX
         QAcTDZx1k4nkCV4q1Fv3p2VYWEi7VRZ2m3t4C2hcidn6uyR2Yrk4LMnr5FCd0bCGpRW+
         GbGL4CrGnG5afz+CjAj+XjSTpvEeE0GZTt3hfi/w9zVcbQkeYOSftAjwUhgeCHxTWme3
         pYFxFMAnGgrETDRlOO4HDbDhFuy46aTdiHc6YlIqLZEpfGCY7dso9WiewhMPtT+dhU8i
         u4Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DcZAwQAW7FZ6lbT2SCDvj70+KN3gYOoYPsctlORBrzA=;
        b=Kh+Fz9EXH3xUjZQHiz6aS1gWRAZ6ihYluAWN0dvqsCymeasMLuUm4ZzblWc09GYxar
         4pe2fDuab6hxZl2/no1YFOZ2X4qFjb6T5Z1LSyLE4GvKNUIQMBDaWdPxiw9La+TBH+o+
         /T6234QtoFMwC5cO62KFk3Z0MQzEm98tXO7w5XXrAuzFcZ3qLAF3BKDeR1TrboRUWrpB
         TAqnno7ezDAQyYsCNc/qGYj8K2SOAE2DESdCoZqLFHiTCj6YrbY8WcxEuC1G8yF1guKX
         qD2K9j4xEaM8tWRtMXssVFB6zRr0M14NjdBAfWDMqGpxlKEEtXC0L5TH8YI/Y5A2InoE
         faIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=gop8zO3e;
       spf=pass (google.com: domain of dmurphy@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=dmurphy@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id mv6si1253070pjb.0.2020.10.12.05.17.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 05:17:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of dmurphy@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09CCHrIZ104701;
	Mon, 12 Oct 2020 07:17:53 -0500
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09CCHrCf105750
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 12 Oct 2020 07:17:53 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 12
 Oct 2020 07:17:52 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 12 Oct 2020 07:17:52 -0500
Received: from [10.250.67.63] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09CCHqUt090896;
	Mon, 12 Oct 2020 07:17:52 -0500
Subject: Re: [kbuild-all] Re: [ti:ti-linux-5.4.y 1/1]
 net/hsr/hsr_forward.c:244:3: warning: ignoring return value of function
 declared with 'warn_unused_result' attribute
To: Philip Li <philip.li@intel.com>
CC: kernel test robot <lkp@intel.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>
References: <202010101513.xK0Ju6WU-lkp@intel.com>
 <f7dac83f-511d-356b-4d00-c879cb85bf9f@ti.com>
 <20201012120818.GB23489@intel.com> <20201012121204.GC23489@intel.com>
From: "'Dan Murphy' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <6fa8a876-1ecf-3680-bb0f-654d6aea3157@ti.com>
Date: Mon, 12 Oct 2020 07:17:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201012121204.GC23489@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: dmurphy@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=gop8zO3e;       spf=pass
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

Philip

On 10/12/20 7:12 AM, Philip Li wrote:
> On Mon, Oct 12, 2020 at 08:08:18PM +0800, Philip Li wrote:
>> On Mon, Oct 12, 2020 at 06:42:21AM -0500, Dan Murphy wrote:
>>> Hello robot
>>>
>>> On 10/10/20 2:07 AM, kernel test robot wrote:
>>>> tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y
>>> Why is this TI tree being reported to the open source community? They have
>> hi Dan, thanks for the info, this is added automatically, we will
>> disable the test of this repo. Sorry for any confusion.
> oops, I understand the question wrongly. We will keep testing this repo.
> The problem here is it is a clang build, and we currently cc clang mailing list
> in case there's doublt that this may be a clang prolem instead of kernel. It
> is not specially to whole opoen source community. Is this ok with you?

It is fine to keep testing the repo but the error reporting should go to 
TI not GKH. I am fairly certain he does not care about our tree.

Not sure if there is intelligence in the bot to direct bug reports to 
specific companies or individuals when testing SoC product trees

Dan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6fa8a876-1ecf-3680-bb0f-654d6aea3157%40ti.com.
