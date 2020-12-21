Return-Path: <clang-built-linux+bncBCIO53XE7YHBBN5EQT7QKGQEVP274JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B392E0205
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 22:23:05 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id l22sf6262001iom.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 13:23:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608585784; cv=pass;
        d=google.com; s=arc-20160816;
        b=vbJgPVz0qKnmHlXKu09dFDpvbTuNTL0B8ujCJguVpCBMWVJLlUgNZdhuY13UVwemG7
         jbE1J8UZbzsQbI51Za9DfFpPTNzcFOtBCSORq9EVHu9Hj5/cjrU7cqF9OTKAvhcMRdp4
         eV31uhl7ZbbZ74cjY6gcaSl2BBFlRxqcVbHtrwp/ewMpR/88+2PYALoWSnV7JzdEC8zn
         aCjAgQCu8EMLyFL3eTvOuW1Z/U69fJWrx2aDaEVEK8AuZplRtg2t3BUcXYD65oHo+zmU
         byKiaBgwTdJjSTjGchb3bgTn2szicva6faaNkDBkTy2aIgQ35DIYtt057PmHeJb4Wulc
         Tx3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=uAhxkGC4wRoAAETqleAeoIGpXw+9Jv+BKja6LM/IWk0=;
        b=LNLAw3xXdrSnDAFuB03MsKn9Sxcf7d9LUY4ppXytyFfRlIEUcQ0o86Sbx7Fj5vjvdw
         5zuvZNqHogSUR5Ts5QOpgK5s65Zi+ZEOjAfZyNd9y01WbQ0WaPieDg7x27NsR9yRz2HY
         OHnQcXRFOG+9+ZV9f9VctsozL87YCIrcL2HZhk5o6MMKQTEE3IGa2ThyryE+x0vrI842
         X0NFYtuIRPuama6xJhUM8FxaDEDitaWT9D8nOCQcvmkJn8V8EKM9A3/zJwNDdtnzFxUF
         27gTrOiKII0ytLxxQRgxXQX2AyhKW4LMP+v/jF+9Z9Nvomhgc6vWnqcBZTYTi0moN3Wp
         Rr6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ADjHnayg;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uAhxkGC4wRoAAETqleAeoIGpXw+9Jv+BKja6LM/IWk0=;
        b=M2voWSUVw5zpE7f+bEvND4PqY4Sgvmxur5WBogm8I7/swPxlPl21idw13/VAAvMV9y
         yYCXwnKSKxWYLJBuc9GuJ8dq6UeBGviuj3k/JrY1Y+MzPID7jXOjM5eFK49D8o/Gl/Y3
         8b+GW9wyD5wJOSLoeseZRiHg6N6kHJHhXLj0sI89x6yHqpRKwCAeCZoXZb4Vz6bERYAz
         ve5qe0AcfpX3UhDdDEpiuaK0DNtKu7jud8oc52+5ky76kCvBP83n4JtInW0mVaIGw24m
         HJICLkSY9Aj6HjsZ9DALSxlCbdDG24OW4I0/u0Mkfl2I7pBOta55MipPnw87IaCHZIrk
         httg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uAhxkGC4wRoAAETqleAeoIGpXw+9Jv+BKja6LM/IWk0=;
        b=k8JZUwOqRP9x3Cduxim8NouLVXfSuGPn1/O9V3ETHFQDj16MCZehdMlYAWH7stPO/C
         FWRR9RlsBUEuJgOM5Bd4/tEuUtK/XPZRQcwJDkhJLYNfR++qtyj/D9cYkSUMtz4LjciC
         qDFwIUB64uMNXeYTdFJ61fTB8pAAYyjEVgiwgv6v7IXKRcUjTT10fgTnuAAG25ANSBj/
         BVVbBzpyO7gY3yuPb4ViZfvcJTICKFTcwMH86rCuuCnWzGpLDcWJCt6lkJYsMhVZU7tr
         /35h71/EjB+XvdIUOhdMeuNOgZ5RqwvCsjNB8CRM0NDLT74WBAhnUcNjromzuq5XeUdV
         gLvA==
X-Gm-Message-State: AOAM533KpPjMyKhtDQMRQfC+aCVy7fHq+Ow+J0SI16Mf2+4nzmeq4WRI
	nxlm+ewhBPkLd1T1fSL19eM=
X-Google-Smtp-Source: ABdhPJw2lU4FJJNa6pJax4dDtmwgKTfNPBqqE+AWhMSjEHLI/b9a8J1HR6+RsmB7qvEgAKG3hcXiYg==
X-Received: by 2002:a92:ba42:: with SMTP id o63mr18329800ili.93.1608585784134;
        Mon, 21 Dec 2020 13:23:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6f53:: with SMTP id b19ls4748180jae.8.gmail; Mon, 21 Dec
 2020 13:23:03 -0800 (PST)
X-Received: by 2002:a02:a152:: with SMTP id m18mr16480901jah.64.1608585783624;
        Mon, 21 Dec 2020 13:23:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608585783; cv=none;
        d=google.com; s=arc-20160816;
        b=mCmON0fY4f0Jtfyb+F2nOwAVNzNQgnPhU0qFK6UMI+4Ho9NexWmP94HywRC4lKguXO
         d+ZidsGyCEUhn6GpIdRTv1XmZRmmskTOp67fS6d+EAQiKgoOHLzKV6xO+q8j0otGvZ8z
         dkQAE5wfN4I3D5JvpJyVZpjB7qpDStFzqaI+dvFn8JHYckvm0Y9mPSKbUuc24CegfBW7
         aSIQLdKZ4Qh1WN4csG0edWdkE7e74Cwxjwvc9ti9Lqhcn3Q5TDBLL6mY2CY/cLsISIsa
         KNa//bfR/h4hZpRrz41U5OAoE60E1ApiEah4Sc3a57fnufPgUXen8Pumi54+c8mXbtZD
         PqWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=hvt27dTXDiSjMU6MIcLPLG5yEyjYiKStuEJMa1eqpVM=;
        b=Hk2Mf2qEjYCR7mqLNz9Fw+6mXAHG/OYibQ3F0ca1wWs+7ChXmbuBtk0rKqGNOKfCpy
         WPSIdS2DG3v7EkKFqYeu2N0ndgEcC40jcbn+qDfPSSKoSyCrMfgy3HdLJGRvlM/WSabZ
         eK9jbEtdV7qXaeYspQnhUoxAy9tsmNCcXNNt+TyFTOtOYzb1Ru7Xxkh2R04InuAAKEKl
         WGbJrwjZEzalShW8vQKIyviMx75+TUh4L5F++RqmM6vw/wuSG8+2lzQplJnqq6Q9VJw5
         vAf9F2ck+PXZetMti4xB9NOJqij8B8CcQf56YDCDMRH2TXJxJEsOGQPJfmtBsIkOh3Nu
         ikTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ADjHnayg;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id b8si1870636ile.1.2020.12.21.13.23.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 13:23:03 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Received: by mail-qt1-x835.google.com with SMTP id h19so7628510qtq.13
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 13:23:03 -0800 (PST)
X-Received: by 2002:ac8:3a63:: with SMTP id w90mr18297507qte.225.1608585783083;
        Mon, 21 Dec 2020 13:23:03 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id l1sm11461151qtb.42.2020.12.21.13.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 13:23:02 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 21 Dec 2020 16:23:00 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Tom Lendacky <thomas.lendacky@amd.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] x86/cmdline: Disable jump tables for cmdline.c
Message-ID: <X+ESNP6HdYQpd7g3@rani.riverdale.lan>
References: <20200903023056.3914690-1-nivedita@alum.mit.edu>
 <CAKwvOdm8qUpueOdO7e-rQotO5UynrgU2TZ9DEe=O4f9eU5EY0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm8qUpueOdO7e-rQotO5UynrgU2TZ9DEe=O4f9eU5EY0g@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ADjHnayg;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::835
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Dec 21, 2020 at 11:14:39AM -0800, Nick Desaulniers wrote:
> On Wed, Sep 2, 2020 at 7:31 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > When CONFIG_RETPOLINE is disabled, Clang uses a jump table for the
> > switch statement in cmdline_find_option (jump tables are disabled when
> > CONFIG_RETPOLINE is enabled). This function is called very early in boot
> > from sme_enable() if CONFIG_AMD_MEM_ENCRYPT is enabled. At this time,
> 
> Hi Arvind, sorry I missed this when you first sent it.  I'm going
> through and mass deleting my inbox (email bankruptcy) but noticed
> this.  I couldn't reproduce jump tables in cmdline_find_option with
> CONFIG_RETPOLINE disabled but CONFIG_AMD_MEM_ENCRYPT on today's
> linux-next. Can you please confirm that this is still an issue? I will
> reread the disassembly, but it looks like a bunch of cmp/test+jumps.
> 

The patch got merged and is in v5.10 -- are you testing with it reverted
or just plain linux-next?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X%2BESNP6HdYQpd7g3%40rani.riverdale.lan.
