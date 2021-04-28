Return-Path: <clang-built-linux+bncBC7457HKSMPRBCF4U6CAMGQE7FV3ISI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-f190.google.com (mail-pg1-f190.google.com [209.85.215.190])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B8336E15E
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 00:13:30 +0200 (CEST)
Received: by mail-pg1-f190.google.com with SMTP id c19-20020a631c530000b0290209a37c0a62sf16402478pgm.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 15:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619648008; cv=pass;
        d=google.com; s=arc-20160816;
        b=CvBzdECFUF1M58VmJk0tfNyzFWkULSzo3Z6DlA6p4GrjqzVlJKR843ZycAPuvrdu88
         j9Ft2aCJ42BKLg3W1pO25L++Lm41vgabvtO5bGnF8xRgSbU8ySJtEsbt25KN8ph/REot
         8XX8/4kizqRIusknCxZrDLuf5HF2TPoEXQPyVGIeRcNQftJz5IUHeYS2nymvcxymGX+c
         xdJM1NErUFVbB1mGqQS9v3Yu6Jm/NVZaWX2lHjaADMnYJcpn4s8KH5e7LbBoczwvj7Og
         SxlXDrKknsq5OSo946FbHc35xkZq/CDTXckdhnJhBp5XPUyeEkTPB7JcMxCuSaz0qxpf
         9pcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=QPLPYyIagbQDfY12Y1VXboU12VlGCFsrKAQBRb7wWAA=;
        b=s/muGt0DrqcRWaV1NzPBgFKAHPVJ4lb/2TJKfu4JsRx8aRWEq9+Lajit1mofAn08Mc
         Gj0kKrnAoh5l7fC23ikF/MiMtDXF4DG7HkdbI3dxfEGOoeZ6vzkLH0NUZqKRLLQDAaM6
         lLoxlBPn6xOxIFamohgoywlArzebAF8pM73fgOg0YV81jvYLYmt/qg5rTPYvKc1Q4G/J
         p7yc2kzGmMc7i2eZVbrAkloKCUDHMuKxa/Vq8tgSFmwspeTfyeM98RKkwRxgepuizgIP
         O5ECuacRgLu3i+g/oeOviWPJxtqfSI8lYWuMC1e3VEEZ27gvOP4CnmV2paVNhYvwLAV7
         ysTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=rtJ5rBjg;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QPLPYyIagbQDfY12Y1VXboU12VlGCFsrKAQBRb7wWAA=;
        b=GdPc5WBpVnUQ0ytV7o3OjGHkMlZ4fI52OP0K9/Rs64uP16Bq4OuJHQ/7obZliJ+8w4
         qS0Vhwtm7uuKrumyysiOcAXDHwPlKy+UOiETusXVSzHsrstDSIJttwDK4ZbDpyCNFMLv
         3NFTIzMfP5rEYFwtLQoG/62uDAvQoobj9AAlIS1wO+hDGIe83gxsGXwF/9R3lqlL79m7
         z8j3S+gUq6UoTb16Y9WKT9L/xsCfk3dE1NavNya+ZqwUMswv4TsCYHY5YTBWjtP0BcYc
         AxgUMbfz8KJzpRWt3BCAuoSmTCBHz86xX43fVuLreBNeZxQcc0MFdDQXFxsGH1u7hD1W
         ovOQ==
X-Gm-Message-State: AOAM530KhvWsoYr1x9C+seSP96e33X3pnRoA4nbD3ZvhiIhU+OUuImZ+
	F4JMUHWZ3RM474xZU4jPaEQ=
X-Google-Smtp-Source: ABdhPJx3UgIQKa2qh0uuiGpKFW4sdZSDFAmpMFC0WUh7YDeL19UGCQLo+iHsxb1Y3CeMNQ+SM3myWA==
X-Received: by 2002:a17:90a:bb0c:: with SMTP id u12mr35944782pjr.234.1619648008730;
        Wed, 28 Apr 2021 15:13:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f8a:: with SMTP id z10ls579716plo.1.gmail; Wed, 28
 Apr 2021 15:13:28 -0700 (PDT)
X-Received: by 2002:a17:90a:414e:: with SMTP id m14mr35099102pjg.9.1619648008161;
        Wed, 28 Apr 2021 15:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619648008; cv=none;
        d=google.com; s=arc-20160816;
        b=SOV68luWEX4ZItQrdMR/pKHCu430pGPU39Hv4+xHk+jEx1QifWtoqB3rRvy6BspA+z
         3wzzw+X9PEZV9g93Ws+m/fvgtLCMqrRYDY1fOfCYnhLNhVDWLTfUEp4TRgpc8QnOL35S
         SpmfPJk235cZjOIK9DJ5cjZHxsu/5A6FKXWIBOICdMrlEl58M6hQxqUnaFp5/Rc4uodk
         RIynp0C6dPSvz6W6zL36GG/fb9B5dmUaOe2TgRi09ddNBIcESUarMOSdcLmVcGmiGJ4D
         OfjCd7XTauJOyb1mJMUe+dLCdkiqdk6VahcmkyHM+rlC4zdkMZhFFOXx681mIL5OfcK8
         K4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=1VXJx+DGk/xmQogpoaTefTiwmvjiA1o//YSehF+v0lY=;
        b=QmUnxye2yxNR1gQnd2akH0VyBDBc1pEAX4yfYewu4WXfYW16p1eoW3mD1HhWmUMl8D
         YI8J+P4Aw0yRD5U8fq5RTteInz+/SBVrzoKu3wLus1NjKU3nWqUELHrInSqmkuaRgS3n
         QTQfTEqpj+EyqanxLh14KvdS3vxbp7qEKcCs3Ho5oQ1q9AjHyTM77FtWQGLQjOJw6vGn
         ZOg52220xB1I3dmrxwPt7ikAdHGqhlFN3UJqw1VSn8TDqo6he0FoeXLbkTnkFNYpfhTV
         z90hJNKuGEMqen5EL5sVQPoBtP65yx6MXzWULwUCOLPeIfXh65Nr+Mc9RgtRyGlNOWeM
         k5LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=rtJ5rBjg;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id n31si132853pfv.3.2021.04.28.15.13.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 15:13:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 6089ddfd2cc44d3aea3238e6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 28 Apr 2021 22:13:17
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id A516DC4338A; Wed, 28 Apr 2021 22:13:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 7198CC433D3;
	Wed, 28 Apr 2021 22:13:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7198CC433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Arnd Bergmann'" <arnd@kernel.org>,
	"'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	<sidneym@codeaurora.org>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com> <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org> <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com> <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com> <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com> <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com> <CAK8P3a0avv=Pd2ksYF4T5xqTm=YM3ofL3tapK6LARA8pk1YVCQ@mail.gmail.com>
In-Reply-To: <CAK8P3a0avv=Pd2ksYF4T5xqTm=YM3ofL3tapK6LARA8pk1YVCQ@mail.gmail.com>
Subject: RE: FW: ARCH=hexagon unsupported?
Date: Wed, 28 Apr 2021 17:13:13 -0500
Message-ID: <030901d73c7b$af29b8b0$0d7d2a10$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXAJITqGjAjip4FACC4XbUgMWTiiOAZ1oP0ECmlKAewG99MoEANoe2eYCwyUv5aoeGdmQ
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=rtJ5rBjg;       spf=pass
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
> From: Arnd Bergmann <arnd@kernel.org>
...
> On Wed, Apr 28, 2021 at 10:56 PM Arnd Bergmann <arnd@kernel.org> wrote:
> 
> > Trying to build allmodconfig using clang-12 resulted in a different
> > internal error:
> 
> I tried one more thing: turning off anything that failed to compile gave me this
> link error:
...
> ld.lld: error: undefined symbol: __umodsi3
> >>> referenced by hexagon_ksyms.c
> >>>               hexagon_ksyms.o:(__ksymtab___umodsi3) in archive
> >>> arch/hexagon/kernel/built-in.a

Good catch, thanks.  These should be corrected in the builtins patch.

But the ones below aren't as obvious.  I'll look deeper.

> ld.lld: error: undefined symbol: __irqentry_text_start
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
> >>> lib/built-in.a referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
> >>> lib/built-in.a
> 
> ld.lld: error: undefined symbol: __irqentry_text_end
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
> >>> lib/built-in.a referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
> >>> lib/built-in.a
> 
> ld.lld: error: undefined symbol: __softirqentry_text_start
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
> >>> lib/built-in.a referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
> >>> lib/built-in.a
> 
> ld.lld: error: undefined symbol: __softirqentry_text_end
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
> >>> lib/built-in.a referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/030901d73c7b%24af29b8b0%240d7d2a10%24%40codeaurora.org.
