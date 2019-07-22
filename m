Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB6VI23UQKGQE7ICQWOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 568D06FE15
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 12:48:27 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id a21sf22067846otk.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 03:48:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563792506; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXJ3q556GK2kYJf+yPY1YUFwtUw9RK/Wdd7wPi+pv1Wf3aox9toNmpMhcEMFS/dujx
         5XOogjXVNX4BYoxClBPKQ2k7c737eIecTyrrQb4v5Uh5XrBZBxJxjkiAAbIiHIwVr3EL
         +I9qIddyTl38o/a7Euik5zbuMsgn8Ne811i5no30Hv+eDNaGzaCSh/YHM1E54kbab3EF
         DyyHYGeHw6aI+ydsJfo5FarMFIgSzN428I1TdwVWwoAaf4BaruybVXSFgfLBiaaTZAXg
         o5muDLwZAlfiGMR6axlAfA09iHRNz6yJxdPV6EGGsu9lI52RS21TC33OADgvSARAXZtw
         x/ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CwF3IYFgRcz8DSb0en9srUB3yyvxLgwJTRce+hF43vw=;
        b=0KPa6SjQSDmInvw68420lglDVACM6YFsXDj0QLbqBtpqSgmkFs5yWUNOaYLUpjCza9
         TwgCt5aMwWxZXxOOeFlSpKM+rJW6QQRcfWITO8+Zf83Fyu0s4+Au+F7c7MUiCJIsOwkH
         jYgFkCZq4bFPv2NNo2COfmBT4I/p5gD5QiMD/JQ6ZtS5B6lTXr5AWuAz5bz/VBXaR992
         i06OpSZJcbb7t7U7KMGQ4uHX7mmiDX9fyhTXalR4UWBXZGA8rQKJHCycmkb51CnEMlBU
         GUeAIaDJ18zZbj6zZYoVYgEDPfrg6GnHNiiyxJEUzBIBJrfAcg8unYkdFseIqWA5uD/C
         1z8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwF3IYFgRcz8DSb0en9srUB3yyvxLgwJTRce+hF43vw=;
        b=KGnE2pgLBgUpoCGC4NPkBzVCnxEjMxLVEHzZvy23MP1HBYLjM1s6sWfwPG0LbQSkqK
         p6jzoD2GWI58foiuYQHSZXl0K/kL+v2BBVLTGVPPD9e1pmyLVSjAk/Crc33DIcKPil53
         SvlbTiTwTGCAYYnspGFG8vJeJOP0T3GIujlgMY8DYa3+oUQzLtiCYhTfvivCxOMdQgOw
         nTMxGMCeK+tmrbYFFVMxqmDmeC6FzLKUMV9xBpCKhulW4kM48SuqzG2Kk1yiG5oNWkdU
         OBS0qwvqNi1bwIZwkm/VjyOStzdF6i7vL573U8g7uv5zPKSyJjNk+6xyPOwKdpH7ATY3
         IaMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwF3IYFgRcz8DSb0en9srUB3yyvxLgwJTRce+hF43vw=;
        b=blKMypUsKSvGMKMNQ74OvpbtGhnKsjRrgs/+UZZulC7qbaczvVj5cxX2KcvRMIR2l/
         XnaUgoOSNeBGhCONZL4wk6d05FNe3fqepLLxbCqogKjrkbINYx1Pq7B5oC9CWPVXR9BM
         qOchZkMIYaxUz3nWznk1PcDMX9SxGE7otgajUpIPn0ZhmNJGzLWyhv9Es28+M5H1zXBU
         /LpGnEOHbYjXdo+S4qBz/kFmM4WKI77F7QVRbc7Y8f7TSZFZg7vHY+tJKvnP+K60+cfy
         gzHGI9WFZRE7bxN6O72veoNKZoBC+Rdw0m7qt63FcMsn5DgciYt2K8K0OkBF/ugjoCqE
         kE0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1n9iApKycR3JxYjnVG1b5mMvToVb59W0JVoYfwdblU1W2+Cnw
	BgXmYKswO0ZJZAtwqLjXHmg=
X-Google-Smtp-Source: APXvYqz/uWPw10vl/t11H804gJMY2z2MBUTsrtCg32WOzIDl2qrVnztKZocI5Ur2XAMZKneCYTzpvw==
X-Received: by 2002:aca:f40a:: with SMTP id s10mr32592669oih.51.1563792506238;
        Mon, 22 Jul 2019 03:48:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:8e5:: with SMTP id d5ls170910oic.9.gmail; Mon, 22
 Jul 2019 03:48:25 -0700 (PDT)
X-Received: by 2002:aca:4e89:: with SMTP id c131mr33794504oib.57.1563792505869;
        Mon, 22 Jul 2019 03:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563792505; cv=none;
        d=google.com; s=arc-20160816;
        b=AJMJjSIua4JJU2WGiz7rd9OUTUMlWeseVMKZ660NUmMhzDHLV6U1i4Xx02lIQ44gqP
         Vqj5AxN76NS2DxWrwIn1l8WgDMBCs7bLwdndAAX9s9bACYA6VYQY5KCv2NqOJpNi7IhE
         Ls2+BDynyWSzVm6XoKHkLsSgeRY4mf2DqkoATSms71wO8cibvzKW7SDZmrowCR8xOor5
         XpxncEogcMky5DmibcQkiACkXO8Rq7ekPVZfcouYdV/hmpwl1JepfZc1v9u3txckBZTb
         gsJrK4VFer0vj7ZhWtofTJrHpcLNN3USt2w6Va604EcSicZ5l+91zA0w/yDttsPG41n7
         7fGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ptJ26MvlaRt4VkcC7ihkvbPVm3VliBbM0BJH3L/2g2c=;
        b=uaqxKq5iaXW2uR9NTO8CBJONbPLZl/scP/5WEYCzoFX3yYNdWyBP22xhmsuI2Q2aaX
         xMEpMvCF3H9ZHsl2tQC7U7uT88JLmvOg6H1oZsc2LSMGpaQeUMM/rf+mFcUGq4K02UCR
         ix4k8AZUq3ZDKuIQLeFN3zbqvIqCB/UJk8gPkDrpX88SXGeuQzu4brTcdZOQj4yNKHrK
         PjCIZY+kimmeudkesylIu69moDNpWhL5SAXMcFjvmHveHdIkuYaaCOK23HcCHtaLGbHu
         vvDZLUlXKXCJXZvab/NptViO9P619bL2dZrmIDnd344R1qzHT1Ndjsj6hx9OYkgqMbZc
         Qa7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id u26si1729293otj.3.2019.07.22.03.48.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 03:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id a27so28210227qkk.5
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 03:48:25 -0700 (PDT)
X-Received: by 2002:a37:4ac3:: with SMTP id x186mr44445628qka.138.1563792505294;
 Mon, 22 Jul 2019 03:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190710130206.1670830-1-arnd@arndb.de> <33511b0e-6d7b-c156-c415-7a609b049567@arm.com>
 <CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com>
 <alpine.DEB.2.21.1907221207000.1782@nanos.tec.linutronix.de> <8f01be52-3235-644d-4afc-df979bfce25e@suse.com>
In-Reply-To: <8f01be52-3235-644d-4afc-df979bfce25e@suse.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 12:48:08 +0200
Message-ID: <CAK8P3a0_rEkWYgH_Tc7jwpYOYMy5wA+X0zchQcsXYi62kUG61A@mail.gmail.com>
Subject: Re: [PATCH] vsyscall: use __iter_div_u64_rem()
To: Jan Beulich <JBeulich@suse.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Andy Lutomirski <luto@kernel.org>, 
	"x86@kernel.org" <x86@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Mon, Jul 22, 2019 at 12:39 PM Jan Beulich <JBeulich@suse.com> wrote:
> On 22.07.2019 12:10, Thomas Gleixner wrote:
> > On Thu, 11 Jul 2019, Arnd Bergmann wrote:
> "q" was used in that commit exclusively for byte sized operands, simply
> because that _is_ the constraint to use in such cases. Using "r" is
> wrong on 32-bit, as it would include inaccessible byte portions of %sp,
> %bp, %si, and %di. This is how it's described in gcc sources / docs:
>
>   "Any register accessible as @code{@var{r}l}.  In 32-bit mode, @code{a},
>    @code{b}, @code{c}, and @code{d}; in 64-bit mode, any integer register."
>
> What I'm struggling with is why clang would evaluate that asm() in the
> first place when a 64-bit field (perf_ctr_virt_mask) is being accessed.

clang does the optimization and warning checking in a different order,
in this case the argument type checks for the inline assembly is done
before it eliminates the dead code.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0_rEkWYgH_Tc7jwpYOYMy5wA%2BX0zchQcsXYi62kUG61A%40mail.gmail.com.
