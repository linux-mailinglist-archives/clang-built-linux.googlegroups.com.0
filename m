Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBZGAYODQMGQELTFSGFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3993CB069
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 03:27:00 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id m4-20020adffa040000b02901404c442853sf4133771wrr.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 18:27:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626398820; cv=pass;
        d=google.com; s=arc-20160816;
        b=A4i7g7Vow+5sQMyiyaSWqoRXVSa5u/t7wWiL1m0CRv+py/pU242zsdNZzAVXf5s639
         1OXxxFTEs2mJQzmLYS4sMmqJeKcjWqNmF4p5SzdOSC1X1sdYdjeGQwuE/WNB7pORJWzY
         iOkKgRjTS1kKLE4dACuvU3sT/zIZkbQzDUqxDjeO2B7V/QRXJIx4y54toSEqD/PXZNsm
         5lDRaJllr2LUGTcGMIdJAILS+rvRqwFbJj/btd6WzJ3k34wJwIiRZuTSAfDUTWsBeb56
         4AfWCtjqhTwryGd7uupiBzNtXGvr6CpLmPT3fFt1KN5fAY5hebJeECdVHjZhXaw1IZf1
         cPlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=hTkD4YKvcfB4SpOO7gbnvMeBae5u6rIGzCJCSO4c0GA=;
        b=01ctU/Eqtp3Yg7p6TagCojbwjc8qfm4o/w83IcpOa4hi9o2juckIOOgU1uPSzfwjAD
         D7e0g1W9UeG2uh5pU1Gc3bgsgpGn62K9UWONKEc4Nv/CQ72IOkK1dPqccSaUXcZGe9D9
         wfzhy7sF9fBhZYVqaiblR/7/x8wsR0GMKQ0AKpVZkUp8mBUYINs2ceTfW+uH51ObZ4Qv
         Enw9K15m9PzPhCsMxSj5uk1qUOvspg8JaZtBg5S6L7ScMyuRK5QU6kxdM84g9VeX/uR8
         JHuWWSxE4ROCTDxXokT7BSDjdV+FjVqzGg63+heqrz4BheW4vRJbQEQJRqzIgJWPJDjN
         okJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=ixPCJxq3;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.216 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hTkD4YKvcfB4SpOO7gbnvMeBae5u6rIGzCJCSO4c0GA=;
        b=ZNJY5L5ntIkZuQVo3XQcmAapuJ/xEJ+Zc1OksmaE4tJkGcW7Y7zq8pd7ihqhwrtGUs
         fx8K0+q9Ve9kAkZ6qoWsDHLjj+Q6Qoik5eZLnWcfnV4gdbvjEqknbqTPjhfw4HmMJLd/
         fnTu/RFuT2PEuuhrRAMQgoAmuPog0+JkDsHfyKV/F3WZafWF43KC8zu4Ny7smAOBVWaU
         2X7l+f8Vg5UrW1Ww4Ok1wdG+3sN8miCfZtyCv0TW3snF7DCD1qarXArtt+l+x+E+Eo+g
         mfhgeazi9i5TT3KPxOEZ+uDDoq5eBcZYVSh08F2xh4kLoA1GaWhlIJwvybEpfb8n7QA0
         DHsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hTkD4YKvcfB4SpOO7gbnvMeBae5u6rIGzCJCSO4c0GA=;
        b=rkqK6hFX4QFzM3bS2GBfrxfAUAycgCEABhnfTfJPM1o25QTxqPqsRngzs/PDmdajdy
         Tjr8VdoeJdaiU+PQWDofYRArWCju8MnE7vqdMqx1brHXp7UcncBEm0YqQccp/Cje/OvR
         aPXdMF5BdqUawFT4RFBKLOKsgcn3Th4USjakSdlOiz8eQIH/6+LH1u5tN8HfB9geXAsP
         7qrYY9NpTiS9BG7ZN+fGaQmlCEXHuAxgc5u/Af6FU3WinqFwcSxvifiOXFm8jQLi6h0g
         tgqX3Z7tPumLu1c6X1j/R2pjw7J0V01RpGvy/4Ghzp1oTgnhdUJm+rV7SaP0ONiUFAYx
         bp5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+nen+ZmpWJ3PwqrdtX512ac9RXkeO2jLJL1S6//WjV7O83iZx
	Vd6qt67M6sV56u2MrudGlAw=
X-Google-Smtp-Source: ABdhPJwXIO7Wq98y/vt6f2vr+EyURR3QqHSyML74Q+JARCYxWYzxe6o2nsVb187Ndx5ZpAo1UOf9CQ==
X-Received: by 2002:a5d:504d:: with SMTP id h13mr9041261wrt.46.1626398820643;
        Thu, 15 Jul 2021 18:27:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6ac7:: with SMTP id u7ls2713400wrw.0.gmail; Thu, 15 Jul
 2021 18:26:59 -0700 (PDT)
X-Received: by 2002:a5d:4ac6:: with SMTP id y6mr8944360wrs.347.1626398819811;
        Thu, 15 Jul 2021 18:26:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626398819; cv=none;
        d=google.com; s=arc-20160816;
        b=z/c5xzGzBB9MbeqnhUAo8mrZ3L1nnNDygqV2i59za9JG4D/tQDjW3IInSB1+DhwqFW
         JIpyMq3ddz2ilVMmMF+0/UlKsEHPN/6+TLhiIb8GMQPA12mGqztHXJ7q/64bnfS66ZJr
         rU9EM23VrRig1xah1Aay5GTeXAQ2lidN1JN7qF2pXuk2J7hgkW9LtZ+I/GdkP/745BDh
         +ESHv+WZ8fo0DB84RTflNPJQ1dtOPAjuyMDf0VgBoljF+hZMhN1oEF4M5mOscjvDWi9b
         H/KEb5GiiEDpkaZkrbxlyUEUBkHTroQS0+zN4aDhtIt2pdi9g2Wu+4+eeFCYrMeydU7C
         ODJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=4ffx1bAv414YMi1a8ax0I4veMZTSEXNs7IRiNasuJUI=;
        b=L8Bldgo/+y+ZFWONx1KinuSWSeb7pTPrhdTnWsWWVh+CcLJG9fb58Ype/gHSRS26lV
         txifapUuJQ3DM/BMvBQjD2QuU/KX77X9P7828Cxx9zYuFmK8+VCUu3cPCxSQgWFIlB2s
         ST610RIEb6jxQTje+3Z9VZGGtMJOKiC0LDxBI+hw4fjS9bKQtF4ku0IqpYcmWIH0c5s4
         ACsz/63G3pFoHexM4eJ8e9JrIqtdjm1StQduOqW63iAWDM9CuqhAoUa7/dkerr00F/nn
         Iim8FSPN4gnl8099wJmM/NfuWFNR+y90O9Hb/N4torfXVu7iqFECrubBaXC3wxV8z8zI
         Hr0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=ixPCJxq3;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.216 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway33.websitewelcome.com (gateway33.websitewelcome.com. [192.185.145.216])
        by gmr-mx.google.com with ESMTPS id z2si235338wml.2.2021.07.15.18.26.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jul 2021 18:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.216 as permitted sender) client-ip=192.185.145.216;
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway33.websitewelcome.com (Postfix) with ESMTP id 0A0DBA66567
	for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 20:26:58 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 4Cd0mqoui7sOi4Cd0mfneH; Thu, 15 Jul 2021 20:26:58 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:40530 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m4Ccx-003ZSU-Ko; Thu, 15 Jul 2021 20:26:55 -0500
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook
 <keescook@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210714200523.GA10606@embeddedor>
 <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
 <5d170cc8-501d-0cec-bf03-2f53108a8486@embeddedor.com>
 <CAHk-=wj8GqP8ughGBbwcyrBNNdtcXVo_G=XjQ1MAUVUuJfUtGg@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <31b951ff-9c65-b774-87a9-35c28e54636a@embeddedor.com>
Date: Thu, 15 Jul 2021 20:29:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wj8GqP8ughGBbwcyrBNNdtcXVo_G=XjQ1MAUVUuJfUtGg@mail.gmail.com>
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
X-Exim-ID: 1m4Ccx-003ZSU-Ko
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:40530
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 14
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=ixPCJxq3;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.145.216 as
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



On 7/15/21 20:22, Linus Torvalds wrote:
> On Thu, Jul 15, 2021 at 6:14 PM Gustavo A. R. Silva
> <gustavo@embeddedor.com> wrote:
>>
>> Kees just opened a bug report for this:
>>
>> https://bugs.llvm.org/show_bug.cgi?id=51094
> 
> I don't have an account on that bugzilla, but it might be worth adding
> the note that no warning or error should EVER not say where it
> happens.

Yeah; I'll add that to the report.

Here is the current description of the bug:

"There are some places in the kernel where the "fallthrough;" annotation is used after a portion of code that may get elided at build time:

case 1:
    if (something || !IS_ENALBED(CONFIG_SOMETHING))
        return blah;
    fallthrough;
case 2:
This looks like:

case 1:
    fallthrough;
case 2:
And a warning is generated:

warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]

But isn't a useful warning in this case, and should likely be silenced or adjust to not warn where there was actually code there before getting elided. At the
least, this warning would be best moved to a separate flag so it can be disabled on kernel builds (i.e. GCC does not warn about these cases).

Some specific examples:

https://github.com/ClangBuiltLinux/continuous-integration2/runs/3058126539?check_suite_focus=true#step:5:120
https://github.com/ClangBuiltLinux/continuous-integration2/runs/3058126329?check_suite_focus=true#step:5:92
"

> That's the thing that made me pissed off in the first place. I build
> my kernels with "make -j128", and if the warning doesn't specify the
> filename and the line number, the warning is just unacceptably bad.
> 
> How can a compiler _ever_ give a warning without specifying where it is?
> 
> The fact that the warning is also entirely wrong-headed in the first
> place is just the extra cherry on top.
> 
> But at least it should hopefully make it easy to fix in clang - just
> remove the incredibly broken thing entirely.
> 
>              Linus
> 

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/31b951ff-9c65-b774-87a9-35c28e54636a%40embeddedor.com.
