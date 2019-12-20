Return-Path: <clang-built-linux+bncBCQYFH77QIORBDXM6HXQKGQECCPF66Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-f183.google.com (mail-il1-f183.google.com [209.85.166.183])
	by mail.lfdr.de (Postfix) with ESMTPS id 8618F127664
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 08:19:43 +0100 (CET)
Received: by mail-il1-f183.google.com with SMTP id x69sf6858492ill.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 23:19:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576826382; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+l9LFojRfgr+M9lY+Vw1nv39sb05JexWmRH/JM6HHtjaxB/IL3Qgkh3iT3Q24f3o2
         2dyWUzVmQKDig29ncbF5jMmGUbkUJc70AOompJ49JXZq8jExSBQB/bLoVrIWyKEWSWI/
         VpUThTMHKFBYfeQvTqbHkbn47+Zernj6mVsLwTsan5SrJr9ZUmHASHa9OjuBH0YXsB6J
         Q2qbqlYqWcvjk0zFcoPKqLYA/seb9a1R8PfW0MTelVrdDUZE3oArkaEm2MiwTg2cWJpy
         ZVAWNuv7pBcTFaLKn2/yEMD1rYM5bMPbMDtYPsmyjIPFzhNW5B+hV+cAIx0otReeRdJC
         jFyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=k9uR+Im/C7KUqtL8oyWloBlkZFVkOG8VxtNJ0tOgSj8=;
        b=WVjJhBIW60V+gbcKrSOCyxTTwxB8MjJcTBjkhEr5ODNy/fQsOBbUnooXNE0fAAMXrU
         Sji5uctKf4IfC/pnRCLZNeuFmyP60bHWkE54O8Ua7/fTz47irJL/H4ksH/qBc2nArMAc
         PHTvaNpq4FwYTCr+V/gCaSyA9lCV5ZtVmGpZS263gU2Oi/n46nH/V856Kvj8ybxP7oqC
         SptFjR8YEn6l4DDe7QT2qfIWMsLYg50w/8YUMYM4V1/vDYlabx0BFJfamFzrjZEXHROo
         i3KahfO9FxOoy6DhxGyzA93b26hFDUmNuRk1aPJcEL2GWgUrrkk32NkUbXpjcLAZX7Vn
         fwcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=LK+J1zGw;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k9uR+Im/C7KUqtL8oyWloBlkZFVkOG8VxtNJ0tOgSj8=;
        b=Uh4R7sPSsHF0dZmbEUdJWy9lSiq5yNKQ5iYnX5FDeYYUAdR904n3x4kMX9DH4d0l4k
         rzzDAQgbjcMlaMRzFIcRuMeqzCwq6tyQLnkt2qWKJud4JyvrAMpn5q8gseEIQLaBG+rj
         pPMDNmZPSLGfl+IsfVA2kARjm0c1nIdCTRXl2llpaA8bghdSKPIlgyGJgj4f24au5+PB
         VmT5v5D2hIjKtwLOA71WTjEJAUeJqvybkSbMvcz1pDDEYZLWJx+Nn/SoGWTqn64fO+Xm
         4e/rPj7WHIviEfM9q7BQspa0uU0oovWsD+X8mmZyujob3hK/23/Xjy2EUnXCDg5VSrEn
         6Szg==
X-Gm-Message-State: APjAAAX4rg1MkZohsHdsw0s24KA3q5DAi6GcOR57AHT9B59BO6Ji0bAF
	kfEes1IRqBgMw8kr6VA/SQI=
X-Google-Smtp-Source: APXvYqxfq4QK1MkFpeG/lZsfLhmppvbJ6umBxwBz+LCcmEAZSisdXJ8iAIkEvVOqS7acyYXVfSfMjQ==
X-Received: by 2002:a5d:884c:: with SMTP id t12mr9056508ios.171.1576826382180;
        Thu, 19 Dec 2019 23:19:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1504:: with SMTP id v4ls1367358ilk.16.gmail; Thu, 19 Dec
 2019 23:19:41 -0800 (PST)
X-Received: by 2002:a92:1092:: with SMTP id 18mr11440511ilq.198.1576826381800;
        Thu, 19 Dec 2019 23:19:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576826381; cv=none;
        d=google.com; s=arc-20160816;
        b=DX77BN35ZSFd30EyZOLV7AdFr0ecfa1udybiJuVO46eob1OaWZbX7kGm+64w8PoX7h
         7NlFXdqqL0W6MoViMhBXp5wjN3I6BNEWQSX6DFSHc0XWSM+Dx3jTNiieovJBiQ+sQkEO
         O9njhQfSODDZtdI9E4P2OiUEzloVO/S4VZuDhsspYbAMr+hgOsgPd0lnM3539Gq71EmC
         ENnr7sHlQudDlfRnKfIR4u2ZnGLRfZJ1zbnvybR1/v2NyeYnkCNo3e7S0Scz5+Urj7dC
         jww41g2h/G62OMxnERem6OqWr0oC1e4MQmNvZiZshzIi/RmVAi2lTb83N+aEFRDe8zMK
         WrsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=qQnAOBnm851gvtQP9RARiafEiullQAdZpKpw996rOSk=;
        b=v3rNEcvYlAff9j0bmGqlwI6Ji1Y/3aJHLbsLUDkYVBtIbNrzHvWBsLwyWzrTmE8/4S
         4h25zB7B1KSF++u9c7JvCx2zxvItXpvNDJj3p1XSxvwmctsaytlhGAZCg+lGFejKqMqS
         zbqJGZMWkUe5E9FzpXwDAIwjRIUX0syTMlgauIUudug5ayyFXnAC+zCD82zmUxk4b6ak
         kYBwmJIJ4LPLCt7jc2pXoyawE9C0GP0XfyzY1/vHJzQp8rKFqHQNBUlPaIqcx0Z0fQBG
         iigoTBQVjlmxzfShCpooR2Sf1ZEsT4L4PUwxkyfXPF51FOWfqH5BtfgQDEmyWP6cYAAs
         RNCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=LK+J1zGw;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail25.static.mailgun.info (mail25.static.mailgun.info. [104.130.122.25])
        by gmr-mx.google.com with UTF8SMTPS id v82si568410ili.0.2019.12.19.23.19.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2019 23:19:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) client-ip=104.130.122.25;
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfc7608.7f5334f87490-smtp-out-n01;
 Fri, 20 Dec 2019 07:19:36 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 6EC19C433A2; Fri, 20 Dec 2019 07:19:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 04C50C433CB;
	Fri, 20 Dec 2019 07:19:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 04C50C433CB
From: Kalle Valo <kvalo@codeaurora.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Network Development <netdev@vger.kernel.org>,  linux-wireless@vger.kernel.org,  LKML <linux-kernel@vger.kernel.org>,  clang-built-linux <clang-built-linux@googlegroups.com>,  Nathan Chancellor <natechancellor@gmail.com>,  ath11k@lists.infradead.org
Subject: Re: [PATCH] ath11k: Remove unnecessary enum scan_priority
References: <20191211192252.35024-1-natechancellor@gmail.com>
	<CAKwvOdmQp+Rjgh49kbTp1ocLCjv4SUACEO4+tX5vz4stX-pPpg@mail.gmail.com>
	<87a77o786o.fsf@kamboji.qca.qualcomm.com>
	<CAKwvOdk3EPurHLMf81VHowauRYZ4FZXxNg98hJvp8CLgu=SSPw@mail.gmail.com>
Date: Fri, 20 Dec 2019 09:19:30 +0200
In-Reply-To: <CAKwvOdk3EPurHLMf81VHowauRYZ4FZXxNg98hJvp8CLgu=SSPw@mail.gmail.com>
	(Nick Desaulniers's message of "Thu, 19 Dec 2019 09:06:37 -0800")
Message-ID: <877e2r4g71.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=LK+J1zGw;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Nick Desaulniers <ndesaulniers@google.com> writes:

> On Thu, Dec 19, 2019 at 5:32 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Nick Desaulniers <ndesaulniers@google.com> writes:
>>
>> > On Wed, Dec 11, 2019 at 11:23 AM Nathan Chancellor
>> > <natechancellor@gmail.com> wrote:
>> >> wmi_scan_priority and scan_priority have the same values but the wmi one
>> >> has WMI prefixed to the names. Since that enum is already being used,
>> >> get rid of scan_priority and switch its one use to wmi_scan_priority to
>> >> fix this warning.
>> >>
>> > Also, I don't know if the more concisely named enum is preferable?
>>
>> I didn't get this comment.
>
> Given two enums with the same values:
> enum scan_priority
> enum wmi_scan_priority
> wouldn't you prefer to type wmi_ a few times less?  Doesn't really
> matter, but that was the point I was making.

Ah, now I got it :) This enum is part of firmware interface (WMI) so
yes, I prefer to use the wmi_ prefix to make that obvious.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/877e2r4g71.fsf%40kamboji.qca.qualcomm.com.
