Return-Path: <clang-built-linux+bncBDCKNIVX54KBBD5J573QKGQEQKB3INI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C9D2100E0
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 02:10:55 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id o65sf12558960lff.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 17:10:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593562255; cv=pass;
        d=google.com; s=arc-20160816;
        b=RITH4iOC0+lluHrGv6Q+5LIUlxDQLYF4/Pdf/MPYCZZQWPe7XOsPEx0lbQ6C2UMyhF
         NEPglfa+FY4hVVUCmydDYqDuyhLAhECpRPeMH6G+2v9a/AgcsFMW3V/PtZnqWyw4+Z2J
         y8kUPGkgx0HcLNBZEr/IXwZmVKjiHwg3EIUj/l6eMoYtRyIc4VonoC8D0100w8TQibzn
         y9STT4jIhB2S/Clv3AOf+cFcN0ru85P1uMOs8cOSXnItvk5BroLY49QPDlRw7dVCLny4
         wo66QZdueiZVNs/gPjvq6rsvmnSL9ll7HISSDkGPEudOgCjZlbzj6N2Eh8rE3TslAEjV
         EZ7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8pAjz8HKPhyWOjIFykMbrI2stWQ17M+/uVKS+uB5Okc=;
        b=VEBZLPEG4OHyKNyTUDNqW+8DZ5CPgjwqwlgew9K2XU5sWg0E0Td5tj8o8+ctR4uWBl
         UmSdcnocnw2pL7jJO/L3jXJYXAUbirELJfJCzvrbrjfuXh6OJBMbW1lOFtwZKbjtN9Mg
         AAvZQ6RjTnhm2niMkL/htS2G9ULH6ObZyPKD4P47V1DzLXPbEc0FOs4M5EttbcyXbBZc
         mh+GzzWPZ+QprtddwU2V/pRWCd3dtg67C9TinzQTf5oZ0Zi0yWa17d2O8M5RsOnW+uUP
         oKezkgebsWQNE4XFfVw1CZEqLIh5i1czBZDCDmSvrD2nABaF98ZKUQapkx7hoygb/ffH
         D1HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TCnqJK+t;
       spf=pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=haoluo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8pAjz8HKPhyWOjIFykMbrI2stWQ17M+/uVKS+uB5Okc=;
        b=r0jyqliX4Ci+fUOuLr8Mx5kNbYc4mzknPLVf+UoMxSvcfKIShSQq2toIBXZgIHC1NM
         dsUbHTswbSpf4MMYPh5k4OGQQMQAdN676xbsZcj/3keyL2tyMudLgWPsoU7aWLcBFd3L
         58HxbuOAFviKqUwfqbqssKYl/ihru455pbn3mPxvpzZVXcpvDTX4+DPBchguU9rpfwvy
         tg1N26avPI5h3i06UC2rxTxabjBFNWN443irOCMSjaaJ5GDxnUYnxOH+nNFwnu+jiZQh
         4aWJXHKAVIQxNyzPt6kqwN0aTpvzChpqhPd5YW6gyV78e5/PycVm/cXIFGfZBl3mf0rr
         f+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8pAjz8HKPhyWOjIFykMbrI2stWQ17M+/uVKS+uB5Okc=;
        b=kc/6loL1BKkdGPH2FICgqIruCluCf0TlV6nbR969sFNEWNragQHMkdnCb0zw46orqc
         EFtWqmQMWzMEbaw8zoyn3UFmxGET/BFwH2pZtzbdbfpK3jrlC28T+myxEQfpvEnBRttP
         TI2+dx+0BpwhIE5c/vlp4Kvejj0WcXOdxWA7tIFWZ3oxfYy8F1JeMJGxwW6W64OElUDH
         fJIcX5i7UUc2JUtCqoIbDjAozDNvCqULYzuSklmUb6nW7E4e74XPlNYC6auKtJqRh/4q
         3gWVCHxnLPzgEUTYcjTgDgaUyTNfDdgC/Jb17d9nO8ifarvtigN0Vm/AMsUtwbiJwvPw
         z6eg==
X-Gm-Message-State: AOAM5310s7wrWIUrih/oaY1oAoG21HLeemd7F0ZjmrtmvLoBvxn7M247
	C5bBkLiONtC52SdaraBaPk0=
X-Google-Smtp-Source: ABdhPJwm1wjGg/DrT2+66gzLAV8SwG3Ri69Awk6Bvqid1w4DHK1eUQ/cjo9Ktr3AgC6wkv/esbScAQ==
X-Received: by 2002:ac2:54b9:: with SMTP id w25mr13434808lfk.127.1593562255085;
        Tue, 30 Jun 2020 17:10:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c188:: with SMTP id r130ls491231lff.2.gmail; Tue, 30 Jun
 2020 17:10:54 -0700 (PDT)
X-Received: by 2002:ac2:5e29:: with SMTP id o9mr13002599lfg.196.1593562254508;
        Tue, 30 Jun 2020 17:10:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593562254; cv=none;
        d=google.com; s=arc-20160816;
        b=nkHB/QzT1Gzhqp0N25oAu0sl2QCqe+FA0xW1LBkMz+LiRLczNiMISTOvK/vQdqu1L1
         0Zen9Ud0Qy5eeaxEzazf7Qat6SGYx1fQChwZMLcnBlKll+rTOJfAXgE3SDWP9YYrKnfR
         RFuLOyo83kh67MpXK3PPjHCZpXToik0tXnPvRbuwcWyts2rjNQKo0Y+e4SE5wO4377UP
         Uzy5HPZTvX8W8sPzuDaGt5qBXMA8foMlM8BUEjrSobt2M8JBRNlf2AmRgDpQmkn+YFWX
         IMU5earXimn2s53pANZp6J2TlbiQ00xxguuevOs5a9YIsWluRowVmGjipV0PboD2CGVz
         Qk9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bjQDKTaJMxV8x+iQcgy2rKRLrj+SFItZBE5zPQLkZuA=;
        b=SvIfENz1mDo6MpwY8C5NJV9XmqsvC5C4Oz+Kg0QZnrQsWL9WWBXYb1VmxdxYl6UWJO
         hsvX+Af/DKQfzzIqk1/EMN1gl90uDX2C/hOdBP15H2iDzmbzeovPoJEe9mV+FeyUErcj
         FrAF02Nk6VAiLJxZawgTMj3Y+2m5Rd96D+9KB3VQNT5u6BDLii2FxP+zOZyfwINxizzH
         3lIpQDY4gcINNcguwChEvlBJVno5MIkmFb3ue2O6+Y17iB3K+LjZ+xG7/UU7P7sG5P+7
         RvFthcD5NE4m62Tx4sfXMD6KW4GqGqgl4EWFdbSpP+1ase46rBTz5C+X1CIY9ym0zPRH
         HY6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TCnqJK+t;
       spf=pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=haoluo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id z3si264870lfe.5.2020.06.30.17.10.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 17:10:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id d15so17973257edm.10
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 17:10:54 -0700 (PDT)
X-Received: by 2002:aa7:cdca:: with SMTP id h10mr12506937edw.285.1593562253769;
 Tue, 30 Jun 2020 17:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200630184922.455439-1-haoluo@google.com> <49df8306-ecc7-b979-d887-b023275e4842@fb.com>
 <CA+khW7iJu2tzcz36XzL6gBq4poq+5Qt0vbrmPRdYuvC-c5U4_A@mail.gmail.com>
In-Reply-To: <CA+khW7iJu2tzcz36XzL6gBq4poq+5Qt0vbrmPRdYuvC-c5U4_A@mail.gmail.com>
From: "'Hao Luo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 30 Jun 2020 17:10:42 -0700
Message-ID: <CA+khW7jNqVMqq2dzf6Dy0pWCZYjHrG7Vm_sUEKKLS-L-ptzEtQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next] selftests/bpf: Switch test_vmlinux to use hrtimer_range_start_ns.
To: Yonghong Song <yhs@fb.com>
Cc: Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kselftest@vger.kernel.org, Stanislav Fomichev <sdf@google.com>, 
	Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andriin@fb.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haoluo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TCnqJK+t;       spf=pass
 (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::542 as
 permitted sender) smtp.mailfrom=haoluo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hao Luo <haoluo@google.com>
Reply-To: Hao Luo <haoluo@google.com>
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

Ok, with the help of my colleague Ian Rogers, I think we solved the
mystery. Clang actually inlined hrtimer_nanosleep() inside
SyS_nanosleep(), so there is no call to that function throughout the
path of the nanosleep syscall. I've been looking at the function body
of hrtimer_nanosleep for quite some time, but clearly overlooked the
caller of hrtimer_nanosleep. hrtimer_nanosleep is pretty short and
there are many constants, inlining would not be too surprising.
Sigh...

Hao

On Tue, Jun 30, 2020 at 3:48 PM Hao Luo <haoluo@google.com> wrote:
>
> On Tue, Jun 30, 2020 at 1:37 PM Yonghong Song <yhs@fb.com> wrote:
> >
> > On 6/30/20 11:49 AM, Hao Luo wrote:
> > > The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
> > > programs. But it seems Clang may have done an aggressive optimization,
> > > causing fentry and kprobe to not hook on this function properly on a
> > > Clang build kernel.
> >
> > Could you explain why it does not on clang built kernel? How did you
> > build the kernel? Did you use [thin]lto?
> >
> > hrtimer_nanosleep is a global function who is called in several
> > different files. I am curious how clang optimization can make
> > function disappear, or make its function signature change, or
> > rename the function?
> >
>
> Yonghong,
>
> We didn't enable LTO. It also puzzled me. But I can confirm those
> fentry/kprobe test failures via many different experiments I've done.
> After talking to my colleague on kernel compiling tools (Bill, cc'ed),
> we suspected this could be because of clang's aggressive inlining. We
> also noticed that all the callsites of hrtimer_nanosleep() are tail
> calls.
>
> For a better explanation, I can reach out to the people who are more
> familiar to clang in the compiler team to see if they have any
> insights. This may not be of high priority for them though.
>
> Hao

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BkhW7jNqVMqq2dzf6Dy0pWCZYjHrG7Vm_sUEKKLS-L-ptzEtQ%40mail.gmail.com.
