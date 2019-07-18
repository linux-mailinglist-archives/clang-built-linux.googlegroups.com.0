Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2MSYPUQKGQEXOTFFPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E1E6D4C8
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:32:59 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id b18sf17232141pgg.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 12:32:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563478378; cv=pass;
        d=google.com; s=arc-20160816;
        b=JGSLkZwzAQYFu2sUSuFYwzeLmhK7Obuz09yH5Wh9TkOF8/d7B+sImDkirT3YXE10k2
         qxFnzHgB+1XlYIAGrF7RLcluYT3kZODTtbIvUjkolgsjWXLkiZLlMBmWPR2mHCIVLDZp
         OWoFOLSeROTIgeBtyvMtrIats3tfivBXMtfbY7mp6r7BfZ7sIUASSZ4sbDBEESy4v44N
         e8nbEM0fNtDV7j66YDQJ+5zrBXe36gftJvwexU5VP1228vXfdKy029AWNYPPFnCLmVKq
         eyZ9Z/82X4GgURfPbIsWP01GO6vzDj25SMkVLVD81G/tL7reUXH0xINHYkGPc8Ipji7f
         MWWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jgXIoR/zFA6Ml902FvTgzelZyAi2lh0BhH7yzX9auK8=;
        b=FnvV2MtHbkAUBz7b9iaYRodTMXbT4Sq72Q9jNE2RVpmkDKGJlu88Nee8QtA2nvG+ZW
         7jdpeMvd/nszi0cbct56s29FZ2zczdJBRGjZbDWzqom01nY7eWdDX76gnAKZjbC/m90n
         TnJYwbNkveFF9zTdGn5Wu27WNyxhS+SIP0of7zpH/fUy366yCjMFc2M0HzvT1/8JB8gF
         GEQNV8F5Zs7ZFKnlMirNhl1EJS0hCK+nnV/mQlU+WTxeq5FWPHNwtGa0mmw067pIlCrv
         iVpTxvEvJtWYVYgVwuaPV1MPG8y4jmwwYHPjUQbtHaYT7+6vrUJ8/dzTS0TIs6+bZD6C
         vq3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0qY8XsM1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jgXIoR/zFA6Ml902FvTgzelZyAi2lh0BhH7yzX9auK8=;
        b=D1e+Or+YYYbW84LxNLUyaLx0mz2cUCA1IwOLhuubHGARSMISiiJnq0smxe7Kyuc+YO
         xlwD8HVIFRjk0J34h64G0sjqPOwoxrla5013zIhRlsdZDYLrqEIKR3mzsMb+BTQtKvI6
         xHpiBjo4f3baJGt3mH7c6d6lHHr3WRPh+/ieXz6nbghoE7KuGPVKryIUiD/3S91T0wkq
         dcSmEdF2ehLZ1iJFnYxjdNY1b49GhtFxvOjFAODjqu1S5DemwNZyYEPhri5iZMXL5qFG
         ljGUf1w49t/oEoBcyM6jd06dTvvBPz2fjZvk9NO8RAJ8sZhA5cggdkzT5GdtrTIgvEJ7
         dfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jgXIoR/zFA6Ml902FvTgzelZyAi2lh0BhH7yzX9auK8=;
        b=e+57a4KrPIz1A7AtXNVl5quUem1c41cFhdxO8S3OauT2DmK06F7z/oSBEvFX0zVqob
         MBh5Inxj/0S4MAR8mo2ZrMaV178HFgitc7L0KfLaa7t6W08sQ0mn/SrN1IyJoZiv8YcX
         cFOtC6t6SOK2ihE9vwCHY8253wRCWecxtkVm4rPJ6J+ix09PnW0HsH20wBNJEarGFpnE
         hHv4ZW/FWR4lhu8mud8b2K35F6fX42DBgsGZX7osGKb0rOirx06Yi+WAdU/absTm9z90
         GFIP4j15nnvQshc3wKejz8vDgHFOAvAmp816AG9laJ4xPBC4SMfD51Gxb67iY2PN0lUt
         S1yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWAtFzTG1y8dw/31mgHkGnb8G5HqF37hdKFdL+USrJdIZl2s0s1
	WvjzJp1UvPaOajx51OKlh1Q=
X-Google-Smtp-Source: APXvYqxv35hs4/OSOPFkrwt2GfgXXfUzCIkMlRnOaDsRCw5TZCClTukkCoJr1x61cONfq2J2RjX4lg==
X-Received: by 2002:a65:4304:: with SMTP id j4mr50385611pgq.419.1563478378056;
        Thu, 18 Jul 2019 12:32:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3662:: with SMTP id s89ls9788710pjb.1.canary-gmail;
 Thu, 18 Jul 2019 12:32:57 -0700 (PDT)
X-Received: by 2002:a17:90b:95:: with SMTP id bb21mr53439431pjb.8.1563478377734;
        Thu, 18 Jul 2019 12:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563478377; cv=none;
        d=google.com; s=arc-20160816;
        b=msWdbE94Til+1/njYISP2nm4iW743XIZre2wKpU2Tp151E29Jxvnbda7tyVmGFXsht
         MgeSnzbGFZD8WybeexQv8dQQEkkNKv67GAMAOgE8SeDElwDqzlZvfEZCeTah3eK16QCk
         HdkB8eMXR5Wz2waZXmuUrBrQJiv/nYxvtkzmMZ4xUFLUrge0WB+TDRhslOj1qEBEyGiF
         4yA00a40rmGxrdtYUxI7wjVO0M1UwqjDWR+BYojJBmrSh0t76wwVVfIfoCgg3D9qARAL
         8OKABp0oDuTQJ6Wjzmcw6KpQE7AS3yUk1w4bt+affTx476IiUDJV2cHIciPjVahF7kDc
         Yfww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CLupE/lo1riA13YdIygZu79G1Jn33wd0Lj+QWcC8hvE=;
        b=eegmpoNuSu+ADrtBSD/8rE6D36WHLfF8mil4EwO08LXCiv2RJdNW56ht1BfXfG8Pi9
         WdQ6SPmmxr+sMnegnINF6JC6YOxUNClwVFGslLUAcIneMZTf73DpmXndAt3nT5/b80+Q
         7s4cExjobWivm1s8d23cyLXykc+9agDWvQtrHrThSF2d6H3FUc+v4Y/gDxfvAi78zkh1
         SuWy8oUi99Q0zlOcUTH1lQDExPClFMcUdSHkHcYWmBDYuKoRTVKwJvMGNqU3IaT+fKTn
         iEos5T7IsklZSASkzT4soZ26Zmidah/+AP9HLldFx8FVZZcY3uBdFPXIulB/mQKh5ani
         p+Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0qY8XsM1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f125si1316268pgc.4.2019.07.18.12.32.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 12:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2B4B52173B;
	Thu, 18 Jul 2019 19:32:57 +0000 (UTC)
Date: Thu, 18 Jul 2019 15:32:56 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jiri Benc <jbenc@redhat.com>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Yonghong Song <yhs@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
	linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH AUTOSEL 5.2 226/249] selftests: bpf: fix inlines in
 test_lwt_seg6local
Message-ID: <20190718193256.GA4240@sasha-vm>
References: <20190715134655.4076-1-sashal@kernel.org>
 <20190715134655.4076-226-sashal@kernel.org>
 <20190717114334.5556a14e@redhat.com>
 <20190717234757.GD3079@sasha-vm>
 <20190718093654.0a3426f5@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190718093654.0a3426f5@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0qY8XsM1;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jul 18, 2019 at 09:36:54AM +0200, Jiri Benc wrote:
>On Wed, 17 Jul 2019 19:47:57 -0400, Sasha Levin wrote:
>> It fixes a bug, right?
>
>A bug in selftests. And quite likely, it probably happens only with
>some compiler versions.
>
>I don't think patches only touching tools/testing/selftests/ qualify
>for stable in general. They don't affect the end users.

I'd argue that a bug in your tests is just as (if not even more) worse
than a bug in the code.

--
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718193256.GA4240%40sasha-vm.
