Return-Path: <clang-built-linux+bncBAABBPEFRT6QKGQEQJSMOJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7CB2A6DFF
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 20:36:29 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id b17sf14676093pgd.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 11:36:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604518588; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZBN2BebMi7LUjcic0T+8QTSu3t85tLdJJELO8zNRwB0Gx30ERHEHe42+7UMBRemo5S
         A/u4yJvk8EPv3YStfvr5GRA8ceGWDfooo7/AlwWPmkmPzSHplAu4aT6mt75Hj9EBoElv
         qduc/iD4p85i6FUMfTsjVJYjJYzXabRXdHASJSOSTDAR57iSTNPBDYtndbOuyTBXlr4c
         gYCPoRL+Qt5igbQ+y3AJPXBRqpMPU4K7XStVOETol1/72F3KmFSa59STSTu5JGDhmGzZ
         90Z+fdCuDlXV/yVpNxNdOszPkyBsELf9Dc4rEEo8DGUluS7UOcLsiELtpNXbwjHjo/+V
         JdmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Xwe92tEoPA88NEhNQptEDvm7yB9K0GOwQS5iPJC9/Ms=;
        b=SkpDn3nA4KmLbqEMoU22y1S866GbzvY8ueaYv61BTi/5+5HAlwUZtiC8vcpNncmeEG
         HL+kYgGWS1UrwH0dG7onFcPB3mN1aTPRI8pteSUvZ23eSku1POjXML5kM2Hzq3mfCq64
         JC47nL/RBEp1AvLKXOWZHKzk8g12t2ytqiI/YdjfyVb8s9Ys53iE7VR9JKoNtrRi7Ns3
         B0Zi4VYpiEgnXLSW/Om7yKHVw988KZjNcy+nILPK8Z7mqens1XkxvPCPkVcUZbDzrZZh
         zl44UDOR89+gK/qKRAJO/jJdSVK7DeLjaQo+T2ZsY38Pl8MN2wgW7rlc2LrW80jHK6oP
         aQ2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mvcC7kOK;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xwe92tEoPA88NEhNQptEDvm7yB9K0GOwQS5iPJC9/Ms=;
        b=WCX9oEkBk4fRxzy1BzxDjORl/AKrT0QHjIHxZcXIfvJvEmGVZQIh8716qxtXKWodOM
         rPJBOIguEwTEqWjgzWxIKA+eaU5F+o/9o6xnAUq14v4upLwAYbJG+SlLqvBwun+3rkkO
         fMf0mAxw+5JrTSBxn5mvSLFyTjDRlpzqhnmewbPr+42gDVJmeih9DLFGq5L5IK7JFKrI
         rmf5hEreZDOzQg+jIymaRbXOAHI0Dg79sM0ukwbWYx3jJYlhrIIkAzRHCTjyKVm31MNy
         BtXELsEfEig/2/ZzT/oVkP0jRDmA03/6c/nyXc2GFgS4h2dRlPbRcifgEeBYiO79Cs3y
         dCng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xwe92tEoPA88NEhNQptEDvm7yB9K0GOwQS5iPJC9/Ms=;
        b=SzGMMeMFBupDrKmo2kYAmmNei9g1M4QDdxhLBHDBmUC2Y5OfwqRFVuyOzJfsjv2HkX
         dQ1IKQ+UTBdHt3kaIMRNI34r3fiYXiDkiHkdl3zxMWMc/kRi/uHnZRYkRJO1CZ94y0F0
         roFIQoiUsYvrXp+fctItVMHU+I0du9gofrOPXejYKiVtI57ZSofTALh1Ms8if6vVu3ID
         rs5KUPmyf0aWOs11zJWVMaADS5nVBi40OqqY1LoDu7eoDf+pLkHSW6SlA+KOobiQnlRT
         /HNIbiiIw78sP7mcqy6TvH59RCwliE1fRBZyaE+cHLlEPcei7MPhYXwPCK/Kt96WIKwd
         5iNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/CvUvLdGsbXLJfZKbjhEyNiK64KfUAc0xbcyMgY7v+dLYPS92
	Z4zbiBcn3SOcu6Fr3g3e/nQ=
X-Google-Smtp-Source: ABdhPJyB1GlLTkOydn/g6d2b9LVVvDJ79lRe5jQ/lbxHteD6Bd9+/c/yB6UXxejwrYCvgHdITyU+aw==
X-Received: by 2002:a62:3746:0:b029:164:4326:1e7a with SMTP id e67-20020a6237460000b029016443261e7amr32347945pfa.33.1604518588267;
        Wed, 04 Nov 2020 11:36:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:64cf:: with SMTP id t15ls1302990pgv.2.gmail; Wed, 04 Nov
 2020 11:36:27 -0800 (PST)
X-Received: by 2002:a65:5809:: with SMTP id g9mr23568313pgr.35.1604518587828;
        Wed, 04 Nov 2020 11:36:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604518587; cv=none;
        d=google.com; s=arc-20160816;
        b=fORXtlC5TPnZSLKBl6hLw8ESq3givYbERGcre0MBOdlQ2AfkLhH9mNC+eBsImEL6k2
         ibTUkl/2BQV4Znya/o1HIPLh7meP+MEZnStZHL2bEmIEDv2AODjJYdJVcG+1fTq1VSBn
         6v3/5AonZn6ABkvwBkJQhZXV1QGSCPlsBWYr68AxgDqajtY6MTWE7lSpWzu4xkx1mvxp
         C6TY/SBhlG1Im7SHMOk6hutG1+DqEVkXP5K+SusOnsA2uw6+IcB0dsJuz6fL8xvsUXsh
         NKMYJIIhHQQjLtBkDDyKyoQZB6mPEYJBMskCPm42FCk7YjKIgdeubxlLdDEYjrPhFP+0
         RrGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SJR5gOOCnZ00BVEoBAxRCI87/d6EH/Oj+iRhekqMbS8=;
        b=xiS/ckiz8IogQf7zGMDmUWSUFKqq8o5fkrK/Hyx/L45czd2jcIdYdfGyhto3yHxSyq
         KZDS/cJ9tjRvlc/FfpTwSjoRWgsdudGBaD2KTe1e+eth12MJv7OnPQDNZxT1qvCT0UXc
         icWFormhE4lZkRhTD60BG2ajhVEfkus6mw949LZ/+NkwhnmI54FtlKj3yR4CbUS7FUXp
         YZtwk/eNC/ICVZcbmZAtEHF4aEXlL3gpM5+FbFXakDVCquv5JiSWS2qONkSk6xBGKs+J
         dW7YSnQd0iWLYVBMJAJ9zmerjBB28hhbBO8aJWLF9uvsIM4HR4RmC4MN7NhTJSfuq2mF
         /Xdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mvcC7kOK;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z12si230612pjf.3.2020.11.04.11.36.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 11:36:27 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0F0E2208C7
	for <clang-built-linux@googlegroups.com>; Wed,  4 Nov 2020 19:36:27 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id p19so2556503wmg.0
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 11:36:26 -0800 (PST)
X-Received: by 2002:a1c:3c8a:: with SMTP id j132mr6154334wma.75.1604518585511;
 Wed, 04 Nov 2020 11:36:25 -0800 (PST)
MIME-Version: 1.0
References: <20201104191334.393972-1-ndesaulniers@google.com>
In-Reply-To: <20201104191334.393972-1-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 4 Nov 2020 20:36:08 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3wAikP-KkGUiznqnc5f7Uja_UaYxvkCLVtcHDu1tYuGA@mail.gmail.com>
Message-ID: <CAK8P3a3wAikP-KkGUiznqnc5f7Uja_UaYxvkCLVtcHDu1tYuGA@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: mark LLVM as maintained rather than supported
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mvcC7kOK;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Nov 4, 2020 at 8:13 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Funding secured.
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Did you mix up the two? "Supported" is defined as "Someone is actually
paid to look after this.", and it sounds like you are saying that this is now
the case but wasn't earlier.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3wAikP-KkGUiznqnc5f7Uja_UaYxvkCLVtcHDu1tYuGA%40mail.gmail.com.
