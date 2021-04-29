Return-Path: <clang-built-linux+bncBC7457HKSMPRBD5RVCCAMGQE43A5HUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-f58.google.com (mail-qv1-f58.google.com [209.85.219.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B9836E33A
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 04:23:13 +0200 (CEST)
Received: by mail-qv1-f58.google.com with SMTP id g26-20020a0caada0000b02901b93eb92373sf8453373qvb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 19:23:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619662992; cv=pass;
        d=google.com; s=arc-20160816;
        b=aheWk/fHsSz0dtlZSwAx6sRH1BBzFFtPNYjNNEsh5J2ZmEKldebBAZP0G7qIj3Jpng
         U6xMphIOXSn0aSLC54pS+aNCKBo0D+/seUSM8HDE+GyPv0bGmmNl3Kk5+NQMmTNaEGb5
         5ccbL3nBfxmfprw9EwqBnV+iiorrttgwb1Ox1iGrQipIPj896caUJCdLdoxT3Vrc3Dh6
         tUqGiO3/OeqvxEwsUjbNdvHFvGHCp7/msyNCyc47udZ2OK/L689/cbNzXBX4gmN5VxP+
         7BrMyC0PpI6cVbLdyFYhvzBn3BB9lpS5vKyfiES4S5ol5lnOkK1KBbKaH5HzIAy4cm0W
         d9XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=ENKXZItMiCNNYGX4bNoz9XbQdSDNXlL+z0yYrr6zLbI=;
        b=adHDAniwHreTBqUOAApu3ThI0VWj5evwpgFe3gPXcA+fDBGfHDNwMXZJVfTjJ0jml6
         3AFJmNNkW43fKGBcY793f0OP312M/XrkEkpXnAqqhvK126uFGOcRHcN+ZwxPMeH+wWjA
         NvBxCFAMX66G3jn7nYX8B2JrTEzUpblIcadWb3uax5Sf2uQY7YeO8vJuDhxh5BWv38n9
         Nu/t548Wb29Re0lJzwZnt9msHGJ5ASAd4YqXSD/jNddx5sIJWIIF9bpbsUBtsjXRsw5g
         8dYFGWTGxOP6QdyL14MwMPC6EOfKUk3tsqnRpKmQDaVgGG02hrQC6FatxzVxBZEIvmQD
         sqtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=p7RtY+bb;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ENKXZItMiCNNYGX4bNoz9XbQdSDNXlL+z0yYrr6zLbI=;
        b=Mt+QggAVQFsAK3LnBrnpOiJkLkOmvASFpN7BdCcq18vpowx5WYuQLbqQ7paoEeRp1i
         CG/vtbyluxqyd2/tCn61z/sEY0KqUJvjwQkOj/hQlkXbrwGf8B1H/Wi/DlpitU28YgCw
         WA9GDHZKwHHbYlR+sj66JkIfmHDFxx3H3aoUD7b7GPI1+zt9Gz/ukqLkKf3v5Wa23Z/e
         CgzjZJaKuzNfGZ6zOAbsCVHVpRqLJgVL8yPyizapZmc69+6yFx0FRjHw3Enzt33tMD2H
         39pNEUZxBsgj3RqAaE+24FmXs1IU2tSZfgZ3NdI3foqsuUSdbQpWZ7siakHW93ehNAuZ
         NjZw==
X-Gm-Message-State: AOAM530SiF7q0k/ZDHWxabYctFHF4ahnPjHlORhvzzj/Trzc/8tiCjcw
	IVry908A4Qq6g4lusY5TMFc=
X-Google-Smtp-Source: ABdhPJzX2VSC+5g+HQErv47nbNMJHDEb0iVPQKpcv7FKTO8c8lDQc9fk8dDiggJZH0d5WAEOjMu8Ug==
X-Received: by 2002:a37:ae04:: with SMTP id x4mr32255463qke.245.1619662992000;
        Wed, 28 Apr 2021 19:23:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6f7a:: with SMTP id u26ls734875qtv.9.gmail; Wed, 28 Apr
 2021 19:23:11 -0700 (PDT)
X-Received: by 2002:ac8:109a:: with SMTP id a26mr28867317qtj.156.1619662991542;
        Wed, 28 Apr 2021 19:23:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619662991; cv=none;
        d=google.com; s=arc-20160816;
        b=ftCb1LFbJvlmcpng6dW+AHWjfoZjmSf2pRLw+ElVZgtYwF1mWYYFBklQjgvePpZcqP
         fqTs6NPjRLAY1pLePL307l9M58PWXlpqsgkxlT8nMit6c3/BklGGcwhrqQVApjylhg0Q
         uiYxen3zmvQ17QavUSYSy+qlcBaCsvHo+9gV//c1BkCw+t3Yzq/Whgo11vU0fhA73Tc+
         3wUHXFymiW7QVDIatUl9bEaufgzm0Ym9HGJ3RFI8aT/3k4s9/hsoMfUoKlPRB7TnlhZq
         aaNaY/NSuUqqimwGnSUltZsdfmkVXbYKhfCQJ+vkIx41N0obp0ls1UHap3pE868YtCo8
         PKtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=oYz4G+pXlyQkxhsZCKLAOx0uPQsFKv+hBXcu4w7T6E8=;
        b=ABcFEV/sWfKrEFii9lsdHhlwuHSrP+UK1WEUMwNwj+gid91XLWltZONnVJcYFVZHO2
         U/Ln6sDkK/4wPHhtN2B2j1uHJ3NtJYmeaHodS+mc0BrHA6v2EkpH/ZGc1AwfynOreqCV
         s9qZXnnFnq/ElL5a7Cajp+d/CSKr1Q3Gswbp/KuqYP/WT3MoYdHqwVQksyDmdprUtihD
         ug7QOw39qroZClWn8n9PL/m7rsswcyC3elNrv46nL6PTYCHYcvqbut1Ea4LWc1iXJomd
         bSr3ThACYGxtgwUto+G7ZB31NC2wvQDnC6wNzADMaEVpQXeCw6GD4OWxHtFYDyAht3/5
         hf/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=p7RtY+bb;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id c26si220067qtq.1.2021.04.28.19.23.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 19:23:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 608a187ae0e9c9a6b645b1d8 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 29 Apr 2021 02:22:50
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id C59A1C433D3; Thu, 29 Apr 2021 02:22:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id A3AB7C433D3;
	Thu, 29 Apr 2021 02:22:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A3AB7C433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	<sidneym@codeaurora.org>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com> <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org> <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com> <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com> <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
Subject: RE: FW: ARCH=hexagon unsupported?
Date: Wed, 28 Apr 2021 21:22:47 -0500
Message-ID: <032e01d73c9e$8c7e5d70$a57b1850$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXAJITqGjAjip4FACC4XbUgMWTiiOAZ1oP0ECmlKAewG99MoEqjs2n9A=
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=p7RtY+bb;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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
> From: Nick Desaulniers <ndesaulniers@google.com>
...
> > > Yes, please. arch/hexagon/Makefile KBUILD_CFLAGS would be where to
> > > add it I suspect.
> >
> > Done.  Rebased for-linus.
> > https://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux.git/commit
> > /?h=for-linus&id=38f974f061c5e7c83910bd287d2be8325476a3f9
> >
> > Build log attached for reference.
> 
> For the series:
> 
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> And that's the first time I've been able to build hexagon; nice work!
> 
> For the assembler sources, a common convention is to make the .S files so the
> compiler implicitly adds `-x assembler-with-cpp` to run the C pre processor.
> Then SYM_FUNC_START from include/linux/linkage.h should be used. I think
> architectures are expected to define __ALIGN (5 for
> hexagon) in their arch/{arch}/include/asm/linkage.h.
> 
> Otherwise, feel free to add my reviewed by tag to the first 3 (not
> 38f974f061c5e7c83910bd287d2be8325476a3f9).
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks!  I have incorporated your feedback.  Turns out we didn't need a special override of SYM_FUNC_START/etc -- we just needed to use the existing arch-independent definition.

https://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux.git/commit/?h=for-linus&id=0ff72a0e4abdeb1b86ad3d8f6ba62c91b37789a3

-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/032e01d73c9e%248c7e5d70%24a57b1850%24%40codeaurora.org.
