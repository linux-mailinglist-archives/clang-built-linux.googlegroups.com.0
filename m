Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJMRST5QKGQE3OKPPIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9B12704E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 21:21:10 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id f12sf3930480plj.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 12:21:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600456869; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8RpJgnEUtJGcaOHl3NGTsLxqP2gzsH9Nn400alcaEHyFnkrolgwx+NBZjFY/esxov
         2ZGONXrQlEmZqhrfAJQr7UGehsxdDiCZDZ4nKR9z5GfyHL7Io5A/5Fkzur4VrbwrhGZc
         /rp3gy29Xi+fnuGg3YQO51m62wv+vYU+QMjPzTCKO++5nqCoWZHIBHWbDAYjVD4NUFaj
         fURkl6O7J4HOCkU+8fjzCXTsRuA51E5NnxPCMd2Kqwq1fMtOfOVi98WLuODYufce0O+J
         qj8J5205nONc2MKMfuf8uUSFV0+O9QAqWjXwVllWdizFhzFhHulzS0JGa8C9MDxmqiZD
         pDHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q0rklxvJWLzPv/tcP7cPLjoQ25PMRQY26hmFCiSpm5U=;
        b=WqFWlJCF+lB4qgtYpPckb09bfMMqETidBy2jueicC9GNvBbluUpMc+t98PCzmVg6f1
         uiq+b/sVaMHZkZ3kaeV/uVIo6jmxbWdyFYiWYkSz0Lwx+katDT34BSmfKPoESAn0OAfx
         C35LRYUlxfenSB07k2rMakiwDZ+qNzun6lgHEZluvt5LLyHDLWJip/G7k7/DA5RWnm1m
         RvW3GQ/+wrRXsOhixY6FK/Sax3T6Y3QDM/qzRWS6jbYemUTarLX+f8VgW5KplUZTVY6D
         HxShfoQ9hyqDekP72FMOOUYq5QY1XRCtnIVXol7cIVt1Z+c2HQDqUvErP0vpTrm94MrN
         VegA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BrFbbBt6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q0rklxvJWLzPv/tcP7cPLjoQ25PMRQY26hmFCiSpm5U=;
        b=QapW5ONumh0qqieDZfS7gtsSP3XTjeVzOU7bB1jUwj6sS1WkPpxZMLRVYIeVUvnOiu
         PhTf+/zj5e653DdvSNYkaR/z8R5XnalXIU95n9RKztz4ArmsiR1Y7FfKRYq0PNsh6/kc
         BNCoh+NSwQP4Ni0gTUlggKJbaRn2YdMk5PqPDDzCg+WSUBj1izMDEuokmOxkwi64IhfH
         VoeIDnO5GJ8whRK6I1u+8X3e/D6BAWzX12iP4XL6OJT1fcPP1I/kZkFIMV4r+N781MVV
         mWQqwds7Xeg04cVS3r0DIqIUzCToFelOIi+0qYDKHKubHwcGvLQs9eVqMlqMRni0Z0Mu
         cj/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q0rklxvJWLzPv/tcP7cPLjoQ25PMRQY26hmFCiSpm5U=;
        b=gio7ZM5lxWSZ6ew/6qKRZCwC8Xh7dqkOYB2NMjHKpIfPQklOBPqMaTa+VL0/oRj0T5
         lHA8dBt0rRLejoSlYa2UJUFJwMR2OjcCsNHprEmPinbJfR7+djSujKNcLvqmAE0D2GU2
         nWX8D+ohlIhjUabt3qwB8PxnUJZnpa4A930s6cNbqfUlSYG8UDYulzQTzxpDmVqU0ktu
         M2csl22UJQd2iReDjImuUobg9e/KDZaZ/xEGBbLvWhsGPHbC7Fr5/gRCSZXjk71HYj+y
         rSaVbP+E6AAVAI3uUwLGIvZ0LF/Tx9OQZL9BG3tZ3qsHZcoL6UqxSzXmr0vwm7ZS3Hhc
         VHxA==
X-Gm-Message-State: AOAM532bW9WHocdkSjHDapEtNCafZ4XH4jx5FuA4+Y3IZMNcgyvU1eFE
	3UTG5HnTEoewK2WERFZ6rLQ=
X-Google-Smtp-Source: ABdhPJxLkk1WyttxDYF3B72b9MEm6yAQDjf1XyZSERwAuHROq/MryEPD6zeFE5ylZCXejE5Zd76V0g==
X-Received: by 2002:a17:90a:be05:: with SMTP id a5mr14429415pjs.120.1600456869539;
        Fri, 18 Sep 2020 12:21:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:174a:: with SMTP id j10ls2502176pfc.7.gmail; Fri,
 18 Sep 2020 12:21:09 -0700 (PDT)
X-Received: by 2002:a63:f213:: with SMTP id v19mr12045751pgh.5.1600456868921;
        Fri, 18 Sep 2020 12:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600456868; cv=none;
        d=google.com; s=arc-20160816;
        b=CDHZPZr+xGeq2gKs/Mgnx8hRfSlyVuje+JAVmzV50ph5G/A0I5/g983ADXDWfCMB1B
         AF62/jHXEXvd1B3l9A5SzhxXMQ+d5cAEJIbgnFxamlTTwQRL4xQj1rFXY7Kd6wC4gcCk
         sjtkcAMvDFKC9gQ5pzx2HiAi60QEWRssQTmnwj5idMiyHZ0VltUy9ic8LmAzGTOT9nZZ
         5nE9CgZ5N2e01z99r2AZSHHyTO7mCPg9XIHRqidl5EMxZAsVd6oUQ3PH1+RR/exFgLoS
         TrVw6YeL94yJqZrUr50KMZfbsocXSVGxA3oW/JQYBZmHRYKm45BSELAWhsIJd58vuFwt
         60Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C8jg3wEb1NvgDFOhn2Df3VYWw1IxYrBP36RODw9akKg=;
        b=w8d53Y7PakX/Kl6iztztSE3X9L++zXKoguq4ty7SJNMczK2Y77RuxeF9d1lZHxH1qP
         YUJI8lkTXdPbtYfyPASSLKzb6c0gm2SULUNsjB3zQui8lzp59JVqrKj45AkpEy2QBPTc
         G0qzTk+qz2v9zA9iWQQrrLraMMsAj12lPkshPvfTX5+MbIe4XUSjFi//4NfWmpOy2tpN
         yg4IrPBkjyVPXqEKfgCoONzEIm5abD2p65AA3+EtcFT6xkKG70CnynrpTW2hzfMr3dnl
         QM4262lKiEDghA1n9ht/0boiUoGX1pPfjYwZV01REz+DZ8stuDYSlGaJrw4Qd88G0oxC
         eNLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BrFbbBt6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id n8si363501pfd.4.2020.09.18.12.21.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 12:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id e4so3478230pln.10
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 12:21:08 -0700 (PDT)
X-Received: by 2002:a17:902:ed11:b029:d1:f385:f4e7 with SMTP id
 b17-20020a170902ed11b02900d1f385f4e7mr11647590pld.56.1600456868387; Fri, 18
 Sep 2020 12:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdm4AQhobdkKT08bjPGb15N58QN79XWxEaQt-P5Dk4+avQ@mail.gmail.com>
 <20200916213730.GE29330@paulmck-ThinkPad-P72> <20200917205844.GA1978@paulmck-ThinkPad-P72>
In-Reply-To: <20200917205844.GA1978@paulmck-ThinkPad-P72>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Sep 2020 12:20:57 -0700
Message-ID: <CAKwvOdnojrynmPHrK0MM0Xq1e8Ywk_3_=oehnJWZcFN8=HwsJg@mail.gmail.com>
Subject: Re: GPF from __srcu_read_lock() via drm_minor_acquire()
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, jiangshanlai@gmail.com, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, rcu@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BrFbbBt6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Sep 17, 2020 at 1:58 PM Paul E. McKenney <paulmck@kernel.org> wrote:
>
> On Wed, Sep 16, 2020 at 02:37:30PM -0700, Paul E. McKenney wrote:
> > So here are a few questions that I would ask:
>
> Oh, and this one:
>
> 0.      Did someone call srcu_read_lock() before init_srcu_struct()
>         had been called on this srcu_struct structure?
>
>                                                         Thanx, Paul
>
> > 1.    Did the init_srcu_struct() for this srcu_struct report an error?
> >       (Though with current mainline, that memory-allocation failure
> >       would more likely have page-faulted in init_srcu_struct().)
> >
> > 2.    Has the srcu_struct in question already been passed to
> >       cleanup_srcu_struct()?
> >
> > 3.    Has the value of %fs been clobbered?  Though that seems
> >       unlikely given that it also happens on aarch64.  Plus, the
> >       smoking gun seems to me to be the zero value of %eax.
> >
> > 4.    If the above three questions fail to provide enlightenment,
> >       I suggest recording the ->sda value and adding debug checks
> >       to anything that can unmap memory...  And recording the value
> >       of ->sda somewhere to check to see if it is being changed (it
> >       should remain constant from init_srcu_struct()'s return through
> >       the corresponding call to cleanup_srcu_struct()).
> >
> > Please let me know how it goes!

Thanks for the tips Paul. I've copied your suggestions into the bug
report with additional suggestions for the reporters to collect more
info, particularly in the arm64 case.  I will update this thread once
we've resolved the report.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnojrynmPHrK0MM0Xq1e8Ywk_3_%3DoehnJWZcFN8%3DHwsJg%40mail.gmail.com.
