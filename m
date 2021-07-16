Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBB7F2YODQMGQEUT7JKXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 898C93CB054
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 03:14:37 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id k7-20020a1709063e07b02905305454f5d1sf2111856eji.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 18:14:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626398077; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rl4hdZMKGjVf16xdXU8fdKXJE0lqRr3/FyCbda9gBp/sstS5H/145bDertJu3hOa0M
         +NFBFbBZVyyKIVzVXruL8yGz0BeAi3hmYdBAuviVkNkGDET1AJBOLNB/eXtA14sbbIiN
         TLNZ0YGKiQtCU7Ga6zth9uMRPWHecDFW77Phn4oGywbAEVzvofjE2LuGvJvu2VHlvwkJ
         GS3HXvA1SxzAlgjd+H0VALOih3wkwPwWXWtrTduLBFhpfrR+5wRp2uu/tU7pJpUmvoLc
         aQay8Oef96Z3mzI0a7lyV7ZUAX/4YApU9L4/Xo8CziLFRwNSP2ZDXUG7sYk3yP36GRib
         ICXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=+Y2Yaj/4ZwLcGc8pBWRT1IRwH4lLYSOf0SLlSvOfu44=;
        b=wX1QH9tywpPMNYBF4z9bF+Ctjeej0G+ZkkFba0KV8XZ2POHE0NwDVoXgEe/qh3USXO
         3NR/tL4Km+7iMkvLb9i7RLZUWA4OcgZV01AioO7tH3pKX4gr5LZ7TIr9vYMTEP+E2By0
         iQ1wvAFOP19QJDAtt0rW+YeldKvoARg1j5kV6dGFfxZLS043ksBLmYa5wFQzhhXzHlaG
         OKsmKAbnhuXFHPByfdLDT9MfBoyuLbi/XqCPJSk+kMhDbExmlEgezh7xhD3/sHwSGVxB
         HLD4brENMfas48kYUC92PGE6V2qfQzAggUKT2FycYpS2JsAb1j42VOTir22AUCbSigSe
         sF1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=Uj6B+gUH;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.192.34 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Y2Yaj/4ZwLcGc8pBWRT1IRwH4lLYSOf0SLlSvOfu44=;
        b=HJebe3kUQ+/ovgtdGlLNL7FFH239r/Ut1LG3k2gyzAX9wI7tfnxZIOe20lzL/vkW02
         hK8+lJQpleVqf7VzL9s1SNwOgmOSFBem6bY2Vnw8nnKVKvjLv3iQDfi5CKjn7fqQA3Zl
         X8NlGlZkDSFd4fLjAzagXjyBFblVowWmqQFwiu0iD4G+dAUMJLZ1QPYAvpUPT2CDqGHN
         hGiFvJVhYWavNCW6lkUHSl2FLwn5kTETR2U/f5Dxda01+id8mvgG1xNcyQ6lGrUplGh8
         y7HVa4LnECh/Q8oJmPDgh3b0A3YdjQdSrH4A7wsd8bGBUm61ClaCYOXhDNCyjdSM1KXO
         ebrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+Y2Yaj/4ZwLcGc8pBWRT1IRwH4lLYSOf0SLlSvOfu44=;
        b=F7u2W5ixYBcSYsaNlf5ySPBqG5/fzqKgzVIhj3DfB+Ed+m5VFgoeOALvDqBQpc//Z/
         fqBJT+eG7Vy/6iV1ouvAd3VPsnQ7gGdxwr7SiUuiK5iZiul/t3cSmTRiN1tcb7wCSMRT
         GqnnbhUjRyC5Cs21C7Rcc7htZ4BFh9OOtXRqtB9wiW5qnKaj6xwtBIfe/vwuZxo9vWUb
         Zdq95FZEao85i6Tl4W7cRI+borbVEkUbWw31sHg/7Dtuu47pnMfe8T+V1s1gsScOin54
         PnvAacpx8UpwcEdgThWqv7/KrDQPFPKhWGqP64zESqIVT2c3aILXB+vvCgY2Kc0jO1Qw
         j4mQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302kkGTSJNGURKfZcsALhj0Tx1yyuIGzEf8wENtIJULVkX16lKj
	nm3lDmIukl+WngFQHOYagds=
X-Google-Smtp-Source: ABdhPJy2B2z/gSBAICusyiG6T9NjofRVGschwi9dTYgVRcmQERtQVbHCSawz7qdP8b1OwtjQeVYrhg==
X-Received: by 2002:a50:9b06:: with SMTP id o6mr11170490edi.284.1626398077032;
        Thu, 15 Jul 2021 18:14:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:da1d:: with SMTP id fi29ls3962826ejb.11.gmail; Thu,
 15 Jul 2021 18:14:36 -0700 (PDT)
X-Received: by 2002:a17:906:8558:: with SMTP id h24mr8760311ejy.519.1626398076189;
        Thu, 15 Jul 2021 18:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626398076; cv=none;
        d=google.com; s=arc-20160816;
        b=X5qivIXKsoQkYW82j2ALiC12Jels/9zFVjE1ON2eNLVV8ryqT4GmnO6tNdmDIFuYGp
         00TeXW4rZ7tTp8t5ID6I38fcF+wlreHr6mKocBnNmobj+NEcDbB91jdIs+6bjhhFGoO6
         5metCBz2hFLqCKJLFDLOIAdt/eI6nhmTc7t0IMRYyd9gZ9daZiWb2sL9iI1VKicT41PX
         ke1E8SyDaW0YdJACICGnbchcIIY9hy6Ps4QHk3QLb9BZgK3xB3dgngHZ1O1wJnSr7/gp
         6w0J66VdGOXdv0R9MM/UTmuceQT1j1TpN3XOzk7w5B1zUo8VJ8kG9KCVpB0kvBBumpKA
         aSaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Vg9ITUv3dvdluW4XbvT6qOkw4QFMgdzrrGPJ8XWGWaE=;
        b=EfJtOYkDx+jtVEB+u05qvtIgegsxQw+N33B4MO32uE82F30uMyS+l/ao2bd4Z6jZ82
         awjLRICLyVoYbLZXARZIhTVOUlGu9+L6zUwljHSlj6q5ZT36PyoG+8YcMEMlCfjNYUQG
         0kLocvB+WaXq9p1rgi6tPCHM8UhVJfD2A5YNMln1qaU5EbuZOrvrWYCA3YBjXmszfLfX
         myXJtzJdgfV8ZbSBbXREBOghjf3HzN+25ILGb2iqCZdEBAKALesQ4QyWzwJm9DKYbPEY
         uefkgh4oXyxD/MZdixp1n6FrPG7Ly5eGNAyp1f08zzy8H37Ts6HEmMlIwdkDhiiGaTx+
         E/LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=Uj6B+gUH;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.192.34 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com. [192.185.192.34])
        by gmr-mx.google.com with ESMTPS id be24si275858edb.1.2021.07.15.18.14.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jul 2021 18:14:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.192.34 as permitted sender) client-ip=192.185.192.34;
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway30.websitewelcome.com (Postfix) with ESMTP id 3DA17FAE7
	for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 20:14:33 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 4CQzmhkpmrJtZ4CQzmWzzx; Thu, 15 Jul 2021 20:14:33 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:40422 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m4CQw-003OJB-57; Thu, 15 Jul 2021 20:14:30 -0500
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
To: Linus Torvalds <torvalds@linux-foundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210714200523.GA10606@embeddedor>
 <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <5d170cc8-501d-0cec-bf03-2f53108a8486@embeddedor.com>
Date: Thu, 15 Jul 2021 20:16:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1m4CQw-003OJB-57
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:40422
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=Uj6B+gUH;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.192.34 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 7/15/21 20:04, Linus Torvalds wrote:
> On Wed, Jul 14, 2021 at 1:03 PM Gustavo A. R. Silva
> <gustavoars@kernel.org> wrote:
>>
>>   git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git tags/Wimplicit-fallthrough-clang-5.14-rc2
> 
> Grr.
> 
> I merged this, but when I actually tested it on my clang build, it
> turns out that the clang "-Wimplicit-fallthrough" flag is unbelievable
> garbage.
> 
> I get
> 
>    warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]

Kees just opened a bug report for this:

https://bugs.llvm.org/show_bug.cgi?id=51094

--
Gustavo

> 
> and the stupid warning doesn't even say WHERE THE PROBLEM HAPPENS.
> 
> No file name, no line numbers. Just this pointless garbage warning.
> 
> Honestly, how does a compiler even do something that broken? Am I
> supposed to use my sixth sense to guide me in finding the warning?
> 
> I like the concept of the fallthrough warning, but it looks like the
> clang implementation of it is so unbelievably broken that it's getting
> disabled again.
> 
> Yeah, I can
> 
>  (a) build the kernel without any parallelism
> 
>  (b) use ">&" to get both output and errors into the same file
> 
>  (c) see that it says
> 
>     CC      kernel/sched/core.o
>   warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>   1 warning generated.
> 
> and now I see at least which _file_ it is that causes that warning.
> 
> I can then use my incredible powers of deduction (it's almost like a
> sixth sense, but helped by the fact that there's only one single
> "fallthrough" statement in that file) to figure out that it's
> triggered by this code:
> 
>                 case cpuset:
>                         if (IS_ENABLED(CONFIG_CPUSETS)) {
>                                 cpuset_cpus_allowed_fallback(p);
>                                 state = possible;
>                                 break;
>                         }
>                         fallthrough;
>                 case possible:
> 
> and it all makes it clear that the clang warning is just incredibly
> broken garbage not only in that lack of filename and line number, but
> just in general.
> 
> Yeah, I'm a bit pissed off at this. This clang warning really is
> WRONG. It's so wrong in so many ways that I don't know what to say.
> 
> Except "yeah, that broken option is getting reverted again, because
> the clang people messed up completely".
> 
> It's sad to see that people wasted time and effort on trying to make
> clang happy, when it turns out that clang just gets this so _totally_
> wrong.
> 
>                      Linus
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5d170cc8-501d-0cec-bf03-2f53108a8486%40embeddedor.com.
