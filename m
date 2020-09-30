Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL5Z2P5QKGQEZNBRYUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1194327F296
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 21:29:53 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id gc24sf316072pjb.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 12:29:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601494191; cv=pass;
        d=google.com; s=arc-20160816;
        b=xwKwDHoV01OU9wJXvLL4z44N8/urEffadpJ9YFVFzSkrXYKBD1WCm3dbuoHe08X+5a
         +vrAipiDOjdErLQp890nVa6xUQEJu9NrTISS9oacaT6xRf3x+goaLXDIVYa6Ax0gKL8x
         w5eLLUBy6mWGe3MxLrNQtSMOb3Kb9z5wzzHfWWQuuOW+mK2DzitcUwSPcQcMSdiU8Luh
         tVNpHOZMKJZpya8ihx4cRBKg2ICubIetcknVmZltXbqYJPqIii5zVGgxZ6NRyHwy8g0n
         y+EoU6Sw/FGbMigYKSqT34nkkcO39Dmdoa17f3cw2iOvCr3bhtzG4xhxZXY4k8eSWx8C
         mltw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PYHwsCWZ9hLvm33KhIOp/eO/RoSBT111wi5AnwczOZQ=;
        b=EBpvV5Wh0+YrZhnW/ELLfkPquBE75JXUktEtmMQGMAWYAyh0mCDkFUllfOqpqEZQah
         8+5mNIM6k/SAqA8S0g6tpVJpzX2DgvyLAiaUOQoyxEy4YkCTPccEVo/8U5B6991pb4jW
         p36xUHjVSeUm4xQN63VQzUFxkjrI1PZ56vpNPfrHOG0TA3bF4ZQekHzJ0yjMjc6r9YeO
         avUIqm8MNwdJwlJPdHxERZ0nCpO5yosX+892cc7OIFQY1CqthQuU0pGXJxE4OW4T65lD
         +dLMoNKEWWnJlMs7nwkHBEpwnksw70bxm9PQS4EQe6MNqKrPM2p+Cq2PjjfubkOpnSAo
         eQ8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XLf6gHO1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PYHwsCWZ9hLvm33KhIOp/eO/RoSBT111wi5AnwczOZQ=;
        b=ikrjLWy9wKD82LpsmCyJfyQVB9zYLpNXniF7Shh1JHU78leeuP0unH7F8W4326caoX
         yyOu2oBLuscIf7Hl1cDg0DljpHhlgagyYVAVr8YqIWsY6bshMlv1XKa5mCoIdXIHybDl
         GG81wc6cfVwtvjvJDL59xEjI6IGvJOItOvTunXdwrtgDXXP/zA4adqX+/dFdDqg05pFc
         Q1qX8I935/4sxLwWStGQllFJlUUX2q1wm514n/o70+gkxFdR1H+aKtARQjwZAc7MrW9k
         arf9ZSEXWsGbnHLWWtVuvgMVbstie5Qg2vpna+Bjz3B0eJfZXwNB421MQJZUyJ+Rcth4
         gtbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PYHwsCWZ9hLvm33KhIOp/eO/RoSBT111wi5AnwczOZQ=;
        b=YRU/QzDLIi+4WJ1vSXHJqmv5D3RbjeHf5gZhaEVMIGr7hmTKdbVU6S7Ln9MAT1GhhX
         1OGkRBota7AlVXbaYGNeqMuIl1Ri796EVyDqXN7I1QLpP3gLLjJv2xgaRoOpjmDVmiTS
         C3S15p9tLhLeE8NMTDBe3IFF/qGMP9lMvpsW4teuEjKnRn8PxYM0osWAaSHN7XhiF0/l
         rVahLzrVgKjiTXbFjubBA0yo7YmM9eTVuri2HLWa8EWD+8x4l6uDaM4e0HkuDM5B2zg6
         KMqThSICZ/27qPY3SD6xeRm6oHX0jpiWuu4iwNVQ1n/HLHUP5oIZu6gpB2C2CCX5jFt6
         GNCg==
X-Gm-Message-State: AOAM531BOIP8dAa+A0ZWIEQpsP/R5SPExeBxZnDIo0eJ7njeXrx7AJMz
	doz2GfJ4jHeUGq+xVdmKmfE=
X-Google-Smtp-Source: ABdhPJyvZTXIX4muWW2vcfqJEWV60aH/esP4EfWyvlLfMgJrMUsNzkJgRnooykDKx+wReAT+yYM0mA==
X-Received: by 2002:a17:90a:f48c:: with SMTP id bx12mr3765519pjb.42.1601494191753;
        Wed, 30 Sep 2020 12:29:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls1238956pjb.0.canary-gmail;
 Wed, 30 Sep 2020 12:29:51 -0700 (PDT)
X-Received: by 2002:a17:90a:528a:: with SMTP id w10mr3836845pjh.107.1601494191211;
        Wed, 30 Sep 2020 12:29:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601494191; cv=none;
        d=google.com; s=arc-20160816;
        b=UdyOquOmH3I4zWHuY/j+DA3jOaZKWLyl3c0N0TBOJtfDASEScNMHI9l4YXFGZkZeL5
         7qto1YjJFF9LuoASeGGH1xqNs1VrcKxrkSjMPvYAHE4UC+kH3XpCR/U5WDAPDxPE14yW
         /A8WGmpK9eytX9NELUSAtvt3eAe2Qn1pyqWRLDoVB2al0qoxj67gTvg8gRJEHwPJ2Us2
         pCHtpR0RYnFyvNSoI0ikqu6oVaAduGSH7Ew3y23COfM2BZD3M6We7fqEWwDbyrRruVRM
         u6pJXBTd63UDzk9gtTYaj6db3/AZtraddiOedoWl/spcSXL26WWAASzG+q+aEakGh/YD
         KfIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0718eD61RtZrDelH388/EGBdg02t0E8sAAnK4wHaLTI=;
        b=blzBtj0Z062q+7nZMd2ENU32nHnMlSHSRAmsDNvFaezdiBBLB7JjNs9rgsX/PVzN0/
         EuxGc3BsfVoS68MqEcVVM8wa0A5nS9YhOObIg9CadIE/jKyDAjv3rVB90yJM2HkrQoIf
         9/Bb1Jvy/9j8js1CqLrCr9N6ve+qkZvTOaFACHqJrcmFGQuxZX7UCQ0YQqLYx9eiwbnN
         tP8o/3asqIfQcg+9flWufdCepnvC5dEia6ZFkFr851Wl6zF0tjrR3wSQBmaHeymwoaG6
         fa7FWrFzroj5JDeXp7BgKqc9gf7385HLNrp1xNZROWFYn7UAwwBzXjEmajG6Kc1FS48i
         ZuiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XLf6gHO1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w15si217294pfu.6.2020.09.30.12.29.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 12:29:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 7so1664507pgm.11
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 12:29:51 -0700 (PDT)
X-Received: by 2002:aa7:99c2:0:b029:142:440b:fa28 with SMTP id
 v2-20020aa799c20000b0290142440bfa28mr4215825pfi.30.1601494190534; Wed, 30 Sep
 2020 12:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
 <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com>
 <CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8+K4d4gpY4CPag@mail.gmail.com>
 <CA+icZUU44tbsmGfTc-2OO42V42Z02dRSs7AZCJBnXL65vJDz-Q@mail.gmail.com>
 <664e5923-d65e-0a3a-1320-8b6635146676@redhat.com> <CAKwvOdkiSLidxNxWUxCrJ_rPogORt=aGDHTkbO=yJn0FPevbpw@mail.gmail.com>
 <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com> <20200930173719.GE2628@hirez.programming.kicks-ass.net>
In-Reply-To: <20200930173719.GE2628@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 12:29:38 -0700
Message-ID: <CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: David Miller <davem@davemloft.net>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Nick Clifton <nickc@redhat.com>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	postmaster@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Behan Webster <behanw@converseincode.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XLf6gHO1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

Hi David,
Apologies if this request has crossed your desk already; I know my
unreads in my inbox seems to have doubled this week somehow...(should
I send them all to /dev/null? I think I should.)

From Linux Plumbers conf Binutils BoF, Peter had the idea of setting a
toolchain agnostic email list, and from the thread folks seem content
with linux-toolchains@vger.kernel.org.  Is this something you would be
able to help set up for us?  If not, is this something you can help
delegate to someone else to set up (any pointers who I should talk to
in that regard)?

The full thread:
https://groups.google.com/g/clang-built-linux/c/GLEkFKlDXfo (sorry I
didn't cc lkml sooner for a proper lore link; I myself am ~1 more bug
away from switching away from google groups forever).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2BRp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22%2BUMVerQ%40mail.gmail.com.
