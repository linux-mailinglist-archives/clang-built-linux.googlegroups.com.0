Return-Path: <clang-built-linux+bncBC7457HKSMPRBAM7U6CAMGQETWZBSLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-f189.google.com (mail-vk1-f189.google.com [209.85.221.189])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E4936E0CA
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 23:11:30 +0200 (CEST)
Received: by mail-vk1-f189.google.com with SMTP id 4-20020a0561220884b02901d0e1d6a03csf11138571vkf.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 14:11:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619644290; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNjSIa5ciKyndOeSsaL53KUZ6z5gOE9/0Vme7W/N5lBZfqQ1uEEZRX8+E2TKFt4JyR
         Ih8Xdb0t7cpzP8aAHcJ/8QHJ6GyqRf5wu4Qe+YoHSss9K9x88/Rt1vVtEK+l36Bt4l0F
         4G92erJepQfnvcAWOUbl2ycfM9/5LUz6BSohabUUp+2n2MOiEyYxtvqEyK2QGOAz84F2
         piY9nV819ph+EHS8qz3ZbYg9XVibGrWW5duLwnL1VopXtg9tXBBX1soEGuM6I9ylS4Df
         0s6DQwCilKnJdcEGmLfEKbYQ9tlgyj2d77VZIZeuJZPojOBq+RuHUi3xA/TWVPpqFp8B
         s2yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=YgjroLTVf/YCJtjq88Udk5S3f2m4ZxXcpwGNVRnNo0c=;
        b=OhIgvpT0hJQKRzUMQqneLGRKfyaAJeo4H/ULgxsvps5vjlY60TPEWx1Fl4ntBN564z
         cEklOetdpOSqxNeFl4gR1b1MWW8RggofdX6GoFKvAW4h83MYVZKkfXiDJ4T80uzwaoO8
         W4nOmHeldvf0o9dc/L3yFxPj5nOMHq0zzKyWeIW3C5NbL6+OF8tSBkXRroY0Gao5sSjC
         iopchTfplbR32p3L6aCdUbsZV9BMM5o+fDG3NyzTzda3b6QD5JPIchXViH1av5r+4kNK
         h8CA/h3e38KXXyfoSRrQt3fN8LjTrWH+wfnR3ngFQ49Hm1GFcm1FPtz08BLXQsnJfCP+
         0TWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=BhT+eF2f;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YgjroLTVf/YCJtjq88Udk5S3f2m4ZxXcpwGNVRnNo0c=;
        b=nNBVuzyeDVIPfS26Ftes1jUF/tL8sDwKvW+I5pAYO1fd71RRMbkxbBixLLqiDjixTd
         oKtrQf7BwddKA/egY6BxgyIDSKjxvcM9iou9WeKxauK3vrcp/1DTNJuiJchNLkhND3TN
         TLIkkxPq6Ys6lLmuqUIHMjlY+PMG1q51yyWGT9j7SrnZkN92QAG/vxcrTAIpHeH4erlF
         +preUm0MoRycq/MMgYP/WUooIJOnoL4xQRSJ++64jhTd2CBX2dT7gxsPNA7OQn7/r1eN
         +/uchKeDhj10RFFJup0NpBtLqvv60SNJfxVO7HWGd3RalhG5t5i7gbrJ4VZqLsnLm5LM
         RxXQ==
X-Gm-Message-State: AOAM533EvScnH8bAvm91Y6x6KMki1sh/Vg5Aj4oy3V4YqszNO+N2leKr
	BcWkV8OcXcE1uCBnwnjw2vk=
X-Google-Smtp-Source: ABdhPJyiVKy5ESug1MS3vuzYaHI0SDXrWmXdTvS4ujmMIqRx0TbQwzoScthJtct4lExEinXRhlALFA==
X-Received: by 2002:a9f:3230:: with SMTP id x45mr26800189uad.23.1619644289795;
        Wed, 28 Apr 2021 14:11:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d182:: with SMTP id w2ls223217vsi.6.gmail; Wed, 28 Apr
 2021 14:11:29 -0700 (PDT)
X-Received: by 2002:a67:3343:: with SMTP id z64mr7406211vsz.32.1619644289317;
        Wed, 28 Apr 2021 14:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619644289; cv=none;
        d=google.com; s=arc-20160816;
        b=FWt13VtJsE1+Nv2nkLK4jDiq1u7AGDBkSBMgW5hpFMxBqi8uMRhmJeO+NTEkKsKk68
         wKX9Fa+uzb8BHfWEYRHdLtW3OXhodn3S+bHg59GJjswB1doDxBeWIwrMSI9qWCq4tcaw
         VFG/VyvWjb0pt2ziL8HYdnKxBeFv0la5tanXzw9WxsECz3rxJ9kWbPb4WFsoqTwr8QGT
         Gt61xb0RkXfuzVwKelnHz66aYOPjb8omS7nxswMCRywzT8nonXX+tw6C3jkBDsAJOqTz
         Xo2lPwHwMFJI3kOGWdaAdgYHXaKcMj1gcVY3EQ7tsDjmHtYEkpkIq99JObtHP1PPMcc0
         jTdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=MAClkdzwDXtVlsYRGyWOWdcegceE2l/1bKBrLPRU8cI=;
        b=ZQeu3Wvs/KLbw2IS0VxB9eiglgnzeE/GjRwFuF53JOTic8lV1Ny/X88GwqDUTgxjEa
         1v/OYBJxLgGc5SbHOwT917y2Mi+wN12UO6XfeVCP56nIqTDOIFdsHke/Vkm+n4j6PZHK
         +hlDn2OxqFRjJEeYEsppSAye+mfbG8pMljhi7cLRJgf/qB97XVC5iI7RIgBmqQIMFTJ7
         IdZ09fEz650GUHMonNt9h+bgsD5BGYjkyGL4t+i/oFALIiANAo4MyBHdJflOitB01DPQ
         iIVN5aCkK/cQXF0rB6vVplsEPFQz2rtkP1RS0SDYAh340VDpcX4duB69BgE5vUi2uKSW
         jGHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=BhT+eF2f;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id h7si102932uad.1.2021.04.28.14.11.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:11:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 6089cf80a817abd39a9d66e1 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 28 Apr 2021 21:11:28
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id E579FC43460; Wed, 28 Apr 2021 21:11:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id D358AC433F1;
	Wed, 28 Apr 2021 21:11:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D358AC433F1
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Arnd Bergmann'" <arnd@kernel.org>,
	"'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	<sidneym@codeaurora.org>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com> <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org> <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com> <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com> <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com> <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com>
In-Reply-To: <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com>
Subject: RE: FW: ARCH=hexagon unsupported?
Date: Wed, 28 Apr 2021 16:11:25 -0500
Message-ID: <02f701d73c73$0d463710$27d2a530$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXAJITqGjAjip4FACC4XbUgMWTiiOAZ1oP0ECmlKAewG99MoEANoe2eaqNCB4gA==
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=BhT+eF2f;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: Arnd Bergmann <arnd@kernel.org>
> Sent: Wednesday, April 28, 2021 3:57 PM
> To: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Brian Cain <bcain@codeaurora.org>; clang-built-linux <clang-built-
> linux@googlegroups.com>; sidneym@codeaurora.org; Manning, Sid
> <sidneym@quicinc.com>
> Subject: Re: FW: ARCH=hexagon unsupported?
> 
> On Wed, Apr 28, 2021 at 9:50 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > On Wed, Apr 28, 2021 at 12:30 PM Brian Cain <bcain@codeaurora.org>
> wrote:
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > And that's the first time I've been able to build hexagon; nice work!
> >
> 
> I built a defconfig kernel with my test tree and clang-12 now, that worked fine.
> However using clang-13 I got one warning and one internal error:
...

Thanks for testing this!  Looks like a healthy pile of toolchain bugs on trunk.  I will look into reducing these for the compiler team and motivate them to get some fixes.

-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/02f701d73c73%240d463710%2427d2a530%24%40codeaurora.org.
