Return-Path: <clang-built-linux+bncBCU73AEHRQBBB25OZ3ZQKGQEPROGQJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id D19E618BBCE
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 17:01:48 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id x6sf1758039plo.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 09:01:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584633707; cv=pass;
        d=google.com; s=arc-20160816;
        b=zq8ZBiMAW7BexY2pQErzNQloO5VejfYRuhW1Eas5idYxEtRikeq6mmgbp82dYBw6aX
         MReGxEuDhwfGnAuTMcQtyz67vP7MBz6MgeDoSQIjcwlLzL2JpAWdPSDhCxHxiXOWZE4l
         C5J5GFvJGTaM+ORMlKutf61tiHiQH1WL5BJYjddSdqxle5iWoUrisxwXbb8iDs4VRCk5
         pEcVBc+pfNu+Y3Eh/GbTLWw+1zq9pmHB8gVKFDxdqUw/yPRKJZqjtI9nVzx3YX8C6TTp
         O3EOh6POLW+z4tVTNY/ax4KpVNBLCMEaSWmvcjb2ekCoXzzELjZI7lA+NjVNIFBUfl5W
         /MCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Z9oFFatLoVXZ16xWi48V0TbwxNhghfjsDa6+/0dQ/k0=;
        b=yj1Y7gvply0GYNl116EGxkijAZVY/+os/R0HlrKHUrTLA44Q+MiBmOAe5IHec9QN6U
         ICTsbK1ngkKOtE1/VYDc9PDhWkGKlOWWADinCElJruHcM426UsB5dDm6yBWrS/Svh2Gc
         Kh4m5sCLJPXNqiVbuj3gKIuedBv88WjFpKV8jsRkGjDztEVYXTNk3yMMNkhoK7SIRA34
         OzhqRMvGJVqw9VzTqLIGHg7Qx0QAUetDj8rUDqlg2OQRZYCxoovk3SsJsUsnMKEHd9ht
         o/SDHdBmF7j4HbpIEsP97S0sDnPr02kSNkAZNJXk7Im2lfXQd1r5EtDFOj3KeNCPWV0u
         +cyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=y8ih=5e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Y8iH=5E=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z9oFFatLoVXZ16xWi48V0TbwxNhghfjsDa6+/0dQ/k0=;
        b=GbT3lQii30QGcVsIcZPgjxNmomWBHlzOTUyvDjUC5cojqTctivfUQ65t/pOQRqzpF9
         jI7XhvIdp2ouuV1fkJ7xQxenPOb5z6MneaFWJye/MSXq7ljOa9zcAYm/kX6FXrSz/Xp8
         lXL89LJAD/0z/rfGHIjs0LEpFCG9YJr/2DoFmmFAHoeMgwTUQnlXULPGBrWNlZzVRNUP
         MFjG/bXAKHvcotI2tbgeXEjP8N+hwm3NfOSMZ2sNCe5mvdoN8eaa4yM7o2f9J5gBEvbF
         wTjDepOw4LBUwoxOtEAaBpPBvVExbJu81ARPMB3y8Y7mqNWaEuIYUc+1mRzI3bfcfcCo
         lI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z9oFFatLoVXZ16xWi48V0TbwxNhghfjsDa6+/0dQ/k0=;
        b=ht8IQtyYZo7i8IPPEUrCUPD8jle/KtY2Uf9xZTvq5+dmiW2g6HVEKNXx3+xrBG+x69
         95CdIkdgknnBTnNE/Rx0qPGIl1V1U9tEYpB9+kkJIJYW1f+TfMUXfGXaqlZNP8e+Ops/
         /prKAP67vjnVywmDaXdJEqZXqXthitjw4qEx2U8LPkF8tM4l1T2qhIBb6FoCFC1DBkLW
         /DB5VnQdfqHddb7bpjdhd7hqwaStmuEidh4HWsFqVY7Bkzbgddn4T0UN5DmGg3mwVxO9
         o4j0YZSNEIGTX1QyvO5+XDP/oHaqO0PldLn9c0TjY0I0mgN2+gSFAV+wP9yPvPH4nvCW
         HJDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ39uhciY8fExUo1ZmKS9fRm1jjxs9UzqA7dRXZBcsncf0xEo/Fx
	M1AHSGpH/5tGgF7v5ZrCvF8=
X-Google-Smtp-Source: ADFU+vvD9z9c9ppQf5+3e/du5uVx/X9iOc7jJFjrxOMVOdlxKmVABubn55S0pwNJHhq1taldtAm9Zw==
X-Received: by 2002:a62:648f:: with SMTP id y137mr4892267pfb.199.1584633707269;
        Thu, 19 Mar 2020 09:01:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8a89:: with SMTP id a9ls1449178pfc.10.gmail; Thu, 19 Mar
 2020 09:01:46 -0700 (PDT)
X-Received: by 2002:aa7:87c1:: with SMTP id i1mr4910573pfo.297.1584633706668;
        Thu, 19 Mar 2020 09:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584633706; cv=none;
        d=google.com; s=arc-20160816;
        b=HfD/k/bOKhP2ehUN7Sz0/Or9T8jS49NKYeuq2X5iHdpbKIjWFGh9yZF7MeO+0FwSkT
         l9BG8C3qouqyFqquFRGKLHF1WK2NFK3tTUOVmhnBtw/BS7zYYN4HNJSpQAjfsocdoXKP
         qHwpmhX+0hBdYzPbVsbAL3CYNNeBncS30nyJyI8oW1pvCnfcrjv4hD78bf0vAn4lwLLT
         YK+sLqqhZsPGVZtNebJ4FdWA4WowMANRmvHJ07tAT2J7Ftt/9xq26GMkjaLiOJjvzP8N
         RMJP/YWfFc/y9NB1qnsd/mUM1vDZRXG0916SrHWYLuygmr/ypSgZ9zC3tKjuBu9XsMBq
         k8KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=y1zNkAMV77UR7LY0rWxWmudgeQlAru7TDNTQOYqx+I8=;
        b=NYol4PvNWThWsrBOiRLgMhGlyHMmhJvSOAy/FOWNKM/1zyDaaCKWKd5SABW8UkDlJK
         PdcB3AI39onhSVLSOuSb5TO2Qm5McJfLjL3So2uXeh1a3OqbdlbxwAzGMPnuc1LFQAbA
         VMmSD6N0kBvLX1yFB2HBsNPNw6YgRXXKEY3Aw6adcXFz52Rz+avgr3jW4HyVhq/CvrPU
         vh3SIW1wOvXSg0lThHEReo52qQo+qpmr1iDsYz1E6YFHevdAMx79tiyaHNj2c/Pe7eNJ
         5KQ3KF8gdtiuvBG7+Fb58CoplxLIR7cxgDtwVpJJQPCs7VTQ0XdwxMiVxTHCVebKnBWP
         NrrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=y8ih=5e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Y8iH=5E=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q66si217858pfq.3.2020.03.19.09.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 09:01:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=y8ih=5e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BD49920658;
	Thu, 19 Mar 2020 16:01:45 +0000 (UTC)
Date: Thu, 19 Mar 2020 12:01:43 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Ingo Molnar
 <mingo@redhat.com>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] tracing: Use address-of operator on section symbols
Message-ID: <20200319120143.5ffed518@gandalf.local.home>
In-Reply-To: <CAKwvOdm9notnmKYQqAsTsZN7qqEpNtpQ091wv=rWZ0kzS3OzAA@mail.gmail.com>
References: <20200220051011.26113-1-natechancellor@gmail.com>
	<20200319020004.GB8292@ubuntu-m2-xlarge-x86>
	<20200319103312.070b4246@gandalf.local.home>
	<CAKwvOdm9notnmKYQqAsTsZN7qqEpNtpQ091wv=rWZ0kzS3OzAA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=y8ih=5e=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Y8iH=5E=goodmis.org=rostedt@kernel.org"
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

On Thu, 19 Mar 2020 08:27:11 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> On Thu, Mar 19, 2020 at 7:33 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> >
> > On Wed, 18 Mar 2020 19:00:04 -0700
> > Nathan Chancellor <natechancellor@gmail.com> wrote:
> >  
> > > Gentle ping for review/acceptance.  
> >
> > Hmm, my local patchwork had this patch rejected. I'll go and apply it, run  
> 
> Local patchwork? As in patchwork.kernel.org?  (Is there a client, or
> can you host your own instance?)
>

No, I went into a lot of effort to get it up and running on my own inbox.
I did this because I wasn't able to keep up with all the patches being sent
directly to me. It's a bit fragile, and the workflow mailing list is
working on ways to have this be a more general solution for maintainers.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319120143.5ffed518%40gandalf.local.home.
