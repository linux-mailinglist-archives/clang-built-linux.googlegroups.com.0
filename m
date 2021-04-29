Return-Path: <clang-built-linux+bncBC7457HKSMPRBH7UVOCAMGQEXFH3V6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f64.google.com (mail-ot1-f64.google.com [209.85.210.64])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E036EF6F
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 20:25:36 +0200 (CEST)
Received: by mail-ot1-f64.google.com with SMTP id h22-20020a9d6f960000b029029e185197c1sf18519658otq.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 11:25:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619720735; cv=pass;
        d=google.com; s=arc-20160816;
        b=ofKg5EpYXQyQFiiyDAUDvsSain+tlObEwiaVMSeLJvK4XATD5q3yVjqUPZ7ENN64l4
         jn75fI8rB9QWcfawhWQv04kV9FTFsmFgu/wp8hLtoAk0IyX6e5d1TZPRrhpc9he/WieS
         9Y7ncEnfdpV2QI/OBMjArFSfP5+5BKfoaICV72JMdNdbBynrzbmS50Dw5AhzYwLem8IM
         G6IPUvLLtCkM9xi2IHkhrCCGix7NLIEVXj7pydMhMsMd44MBr0ICQthKmg5WAMC0CRGZ
         NYzJ3iNXXgbTd6JpflJqxq8eeWZ2BlBSaW/YnxzkpD/GQXyz+FK05z3SArdkjEaw5YkR
         4RTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=TprQZRt2tOjx3Kq4Nu4FCsPhsdzJpnN6xS/ZWowH3fY=;
        b=RZLelp/exKpRbtxGizmBaejLOgLKiNmBvE5CHJJ/JlwVwYaphFwdV8DkxYOpazRrz4
         sHSshS4qiL+bzDk1p0uCCXPLBp+N/q6Ob4NtyLhW+I2JtIgr879uK6Cu2Mis87WTa/al
         EAi3aplPeLn+prAHkRvlI0L2+JkO0H8WD0sOGLxn6K5l00lm/3lbEYtlgX5yNO7/JYKl
         l/8qKfi9UapUemTIYzgVfui6MmgZRjHH7UNLgHHZirEE+lZBvUXC+l6toyWGZqL3xz+a
         dYdhhUwd9p9gCQEUAnzP6Wavtda8g3244K+r2KsbwEQG54/yVOOaaCidiDg25yf0gdSe
         a/aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=KkuQiW3A;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TprQZRt2tOjx3Kq4Nu4FCsPhsdzJpnN6xS/ZWowH3fY=;
        b=bBxKF7Q5/kUmtpC2/r3N+0s+8NBCU03vu0ve/CCDt5XUcog1F1qpdnpcj+dT9aFOuW
         pEqQcXqqnDPOqZWDo0mnakg9rlJhf7LQdNBDIvBTjIljuI0cM9Jt5m4Qyt5SOIOxAyD5
         t5oKWJG7O6sB+5LFUVhG1w/vQWSfLp1xW7+TSJrmcAGMoZsWGWaaA4IXhVaaqF3WXLJa
         2GXGOLarqGpKu4kPm6+tmSd4QTo4Ty+rArMb/Ciu9Ve7hiJ+2wtnX/nKlmldVOOF8OTP
         ttj3hrM41R1Qt3o2F4BiQOUUqZ1yinnR/qKCdACHXKLadGUHfsGcYywO3pDt5iWyx15y
         NTfg==
X-Gm-Message-State: AOAM530XiIqx7zDMeiQyzaPNTFv+CR3yQB+JL7PZSIvr8YzH0vfiI5nk
	wrdBelbtu4gwkfDnE15sEMY=
X-Google-Smtp-Source: ABdhPJzXvNqhtdxJlANdRbeoWOo8vbfciWcVv5UFlexKNUpiTAO8aBmnfnvCEmbs1wS09oOeIgjZgw==
X-Received: by 2002:a05:6830:2e1:: with SMTP id r1mr544548ote.195.1619720735556;
        Thu, 29 Apr 2021 11:25:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0d:: with SMTP id m13ls1134823oiw.4.gmail; Thu, 29
 Apr 2021 11:25:35 -0700 (PDT)
X-Received: by 2002:a05:6808:6ca:: with SMTP id m10mr960993oih.166.1619720735156;
        Thu, 29 Apr 2021 11:25:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619720735; cv=none;
        d=google.com; s=arc-20160816;
        b=qIDpxYq5ok7EPO21k00gfFNsGStToqjcZ/iZbgql8WnXF1gJq+8m84cXuNnaO5302z
         rcJpZ3Ch7h8qBBEOKvx3pLjcXWYwDy6a97jq2lLa8ej5HE5j8uGV9xqhjgldpeyisZOz
         IVI1UM09cUIwQ+ta6y8xsH6d77pEYCyQ8SlMh9l92um8fQeSNp3tsB+mERpTMMVsfbyQ
         qh0bn8asW5V1z07zgKZzfW2jqREwLlUcU9Hqh4d7MErI68/HmmxyNxptRdd8Tn6clnvY
         KCIFnVpsn22/PdXmwm26JD3ziFviw68ynkDF9kxFlIE7ZVyyAGiOT0/A9jY77d7daIXf
         GBEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=7kV6CG3p7kAWbXnYKcp+wEl3NT1vvC+my6OP2dm0NQs=;
        b=P0UGtiSaCyUsPvwD8y7/p9ZbSERCXijdj+hin0lTfPIKCwK/KLBPg47GjimoxbqKRz
         bLPca/nQN5He6lbztwm1Rg8Q7jcny2/XSto2p+BAThBH1CL/JFuifHfeBW7/iXtinDGH
         WKYfiDbQQEEJ8mQKbCxml8Eb9Bf4Z3/JxfXr2AEBqVpXQcR2VeqhuwPUN4JEf9Ciqhmd
         ghRoV1qjMSV+vPE6T2TbflN6ajZvk7xKn2tNUUD8rPBtwFrlJbtpKfAg0fT9ulYJpDH9
         b6SXzF5kSQCFyPiUlbFBIZFwhT8nAk9FvEt/vmawjT1BsafYDsg3bZvhch/Su0T8Udkb
         vLwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=KkuQiW3A;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id e13si367749oth.3.2021.04.29.11.25.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 11:25:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 608afa142cc44d3aea0b3464 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 29 Apr 2021 18:25:24
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id E9717C433F1; Thu, 29 Apr 2021 18:25:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 826ABC433D3;
	Thu, 29 Apr 2021 18:25:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 826ABC433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	<sidneym@codeaurora.org>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com> <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org> <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com> <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com> <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com> <032e01d73c9e$8c7e5d70$a57b1850$@codeaurora.org> <CAKwvOdnFsnofhaM_OZ55r-00ewwJaRY-1sDwCUJ99TRtZLKmJQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnFsnofhaM_OZ55r-00ewwJaRY-1sDwCUJ99TRtZLKmJQ@mail.gmail.com>
Subject: RE: FW: ARCH=hexagon unsupported?
Date: Thu, 29 Apr 2021 13:25:21 -0500
Message-ID: <03bf01d73d25$04637470$0d2a5d50$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXAJITqGjAjip4FACC4XbUgMWTiiOAZ1oP0ECmlKAewG99MoEAZBRopcB/fmjI6of4Ndw
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=KkuQiW3A;       spf=pass
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
> From: Nick Desaulniers <ndesaulniers@google.com>
...
> Are you going to send this to Linus as part of the merge window that is open
> right now?

Yes.

> I've started wiring this up to our CI now in:
> https://github.com/ClangBuiltLinux/continuous-integration2/pull/125
> We'll have to wait for Linaro's remote build service "tuxsuite" to support this:
> https://gitlab.com/Linaro/tuxsuite/-/issues/107

Excellent, this sounds useful.

> The next steps for us that would be of interest is boot testing under emulation
> in CI.  Our current setup for all arches relies on qemu and buildroot.  We're not
> doing any testing more extensive than power up the machine, then power
> down the machine at the moment; if it takes longer than 3m to do so, even
> under emulation, the machine is probably hung and is considered a test
> failure.
> 
> You mentioned qemu work earlier, but only userspace?  Are there plans to
> develop a qemu-system-hexagon?  If so, what's the progress or any timeline
> look like for that?

We have qemu-system-hexagon "working" downstream.  Still working out some kinks to make it robust, but we have done something like your shutdown-on-startup test.  Upstreaming has a few roadblocks:
- publish boot rom image
- compiler+assembler upstreaming work to support system opcodes and registers
- review/publish the system architecture specification
- musl upstreaming (in progress - https://www.openwall.com/lists/musl/2021/03/09/9 )

I'll see if I can project an estimate for all of this to come together.

> Buildroot is a tall order; if needed we can simply use our own binary as init to
> initiate poweroff, though I guess then at that point the question would be
> which libcs have hexagon support that you recommend?

https://github.com/quic/musl is the only place we have support thus far.

-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/03bf01d73d25%2404637470%240d2a5d50%24%40codeaurora.org.
