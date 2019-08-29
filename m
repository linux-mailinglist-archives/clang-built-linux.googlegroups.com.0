Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBKNYTTVQKGQELSDFMIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB72A0E9F
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 02:28:26 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 22sf1005800pfn.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 17:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567038505; cv=pass;
        d=google.com; s=arc-20160816;
        b=FpRSQ1c/s8o6ZF8/BoJf7hl3eG2Kzbi+pdoZ4AfCCoMIQbKM0EAnFNqE/UM4ah3PKM
         MNrYDBBM2Hs1+4DHkvZ2SkM1DZePOS/WrKcA/OtPM6cNVekBdnwI4pMdM+4rX8DPRFEF
         KhXxUsP2FkczRZ+ANpSkz5yrWmn0w1y3I2ZyvLLeHwIhgoNEROjvjssYeFVfIgTb/WHS
         a44s9xjkHOSYp3VJVRiav9eaO7FWsd7L0eWPumwbQ3jzuMgQRGd8Gf8SvmM1vwsXxL4v
         vZGMgS9JDa8VK0LCAVXo8IYhTTte87PJY0xZOuO2IdG526OgYNrjT2WWIyt3PuOepadh
         oKyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TkW8PSEy2HNoE9TITerMRNz4miLyrWn6gO51JbWtZs4=;
        b=Ebwz21Ab7CschD1ms1ROkPwT8KXgkDwv9sC6cHw/WU2Aq7CnhSxKJT83k/ImiHbLoL
         96P9ut70PoT719bJWeonZeXBxt9d8rMoUZCYdBgyyNjKlPNOY+OnHT8AnG/fpiavax4b
         F9ohTT994Zg0qMduX+bxPoYzaaMeAFhoYPKX+G957DoFsl99Hkhuc5pisq/ml98ENEwm
         Obpi4G42ZOykE1iPtcEw5BelEKKA55ACCPLpc7vC2LFr6edPJnGj43i/wbqcjT2mFlC1
         /epb//KHiena4XXXRNrIWzoISQAGciEJTuRJP59iuNWWdjEoi1nDBeiOI1WLMeXb9dk5
         UAcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TkW8PSEy2HNoE9TITerMRNz4miLyrWn6gO51JbWtZs4=;
        b=Z1J3ndniGoMyA7Zv+HX2imVzkt8wCcHDLyG0rymL1E++r/XOAfOalC4s1FOSx7s3+M
         S29vGGE/HPBkiZgwjOWvEYDH3wRtu5ypYtXLj3LiNPcokEpsvcd8tRQuDA6eGhJ9f5r7
         YnH/71jtGGQhn6v5yaV9vpiVtr32Q9GV/sjIg8N5g6H29+ISOeGdt4Vqh3bo9kZ8eoRE
         Zo9vyhhpDFPXKENETD0cF17FrR45noHzOwFtMNHMnXi2/zgBOmruW3JV5YejYpxgmRBk
         vMpjy1ODGd94WfHaf+U4pl5yLP4O6elMsLgC1cxqDklp24s5wiQqS+lptaiXbx7jsnVG
         rAoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TkW8PSEy2HNoE9TITerMRNz4miLyrWn6gO51JbWtZs4=;
        b=uEynWyTykK8XeFJBqKzut6duiOoCH81P7ShixqqdhVKIyUrFj2doIALIe0REyjS5l2
         6U+uA7TGyhtKX8oHbCTUypW4x7wMelEnHA8/exBbYQxZYwdUWibrMaxShbPN1+vwUFqc
         YiiiW8I6moOVLrYO4SrX6/ZfnCXc3WlGsqwqUFBRVI1Niy6eiK95E5by0qKlOo2lVVWv
         jKilaKfrZ6D0RGGLwhE0cHvttdrPmuKYv8ggwV7OBfqKSt5fkEO43GPxolo4m7fIqTBq
         vCfy5zYQeI5AP19Npb5epH368hVhSdrB1/M4fEvvPZmggp/TjEy/iA9krexf7MF0GQDv
         iJ2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVpWEXrz93OslrnJw62fVfwSJ64wkPGCuzqytn4mZWWHut3Vu+b
	yQ0V5cN2utOBGJccHLE16sk=
X-Google-Smtp-Source: APXvYqyqQ1YZV0SasS2q9Fi7K3IaglS1ZdGqjIvCuv8J/i4J9TDqIzHc+oCBF7gxLkbSbjZmEwS3Iw==
X-Received: by 2002:a17:902:96a:: with SMTP id 97mr7054832plm.264.1567038505377;
        Wed, 28 Aug 2019 17:28:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3886:: with SMTP id f128ls211909pfa.8.gmail; Wed, 28 Aug
 2019 17:28:25 -0700 (PDT)
X-Received: by 2002:a62:ab13:: with SMTP id p19mr8013952pff.20.1567038505127;
        Wed, 28 Aug 2019 17:28:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567038505; cv=none;
        d=google.com; s=arc-20160816;
        b=x+ITCwcdXn+XzS1JHmzpzpbwtpxKyC5qJaLBjMiKqg1Es2jqWSgyhMBC9VV91zR8Jg
         5cQHamXauI2/NUL9lahvV0mJ0UtW0+VJAauoei8+Aipuy6rsV3kgWas4SoGNHkUPbkgt
         lXxJllr3Iw5WoBnGi5lFD4xxTYMeFIjEdF32RYbjQ6FUwljdula+cII4ZA2nclTBOSZx
         ft554bF9azPngrDL+DEyLn50kVyyMa9fUCh/0Ti6jsqnCpMYuCFewCtOQ2YwUfM4qwmF
         TLZX4DifBWsJHKubNCZvJ3LZgPi2RQT37NoCNvz1WJ0Pb6KwUtdHJEJUAtLALDP8ysR+
         sLQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=q4Jqnt51lycZfE3AMnizIstJdk4idPbIE3BoCs+G9Vg=;
        b=OSOHIjXM8bCOPeXuEVjwNS9b61sBo4DtvLXq2L98PRF8L/8pl1a+oaxWPSrUEbZdYz
         0duihXDwePV7Kf4x/PN1bOStf6u+0HzUWn+qIebmoopo7VtZrzJLlK0SZzPv5Vx+f+Nm
         NmNKCvIMwaJZZhF8JRnpTaheJTlMnpjsH7IRUNtrCJ7FD8nN4nuGp+U0a8LumjUjdH0f
         TAlcI5c8HCiBbfKMA1KVxnc5W69LZeeb0fYNQCYakyrdp/sYYCHdxRECfpNpNelxaJOM
         4S7krnxOjb9TULpthI+rkZRz31fI4gQ9BGs8AQni1RLronF4oLV4TwNfKDv8pfx4kmZ8
         JOAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id o9si49352pjt.2.2019.08.28.17.28.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 17:28:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B202C10F23E2;
	Thu, 29 Aug 2019 00:28:23 +0000 (UTC)
Received: from treble (ovpn-121-55.rdu2.redhat.com [10.10.121.55])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C139B5C1D6;
	Thu, 29 Aug 2019 00:28:22 +0000 (UTC)
Date: Wed, 28 Aug 2019 19:28:20 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Eli Friedman <efriedma@quicinc.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190829002820.7n3kro3yfpq4mglq@treble>
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble>
 <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble>
 <CAKwvOdkyvZf-oM6aXuCD6Aa4zDqZU-fKu5uUF6E05V6rWnxpKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkyvZf-oM6aXuCD6Aa4zDqZU-fKu5uUF6E05V6rWnxpKA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]); Thu, 29 Aug 2019 00:28:23 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Aug 28, 2019 at 03:13:21PM -0700, Nick Desaulniers wrote:
> On Tue, Aug 27, 2019 at 12:22 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Tue, Aug 27, 2019 at 09:00:52PM +0200, Arnd Bergmann wrote:
> > > On Tue, Aug 27, 2019 at 5:00 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> > > >
> > > > > > $ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
> > > > > > crc32.o: warning: objtool: fn1 uses BP as a scratch register
> > > >
> > > > Yes, I see it too. https://godbolt.org/z/N56HW1
> > > >
> > > > > Do you still see this warning with -fno-omit-frame-pointer (assuming
> > > > > clang has that option)?
> > > >
> > > > Using this makes the warning go away. Running objtool with --no-fp
> > > > also gets rid of it.
> > >
> > > I still see the warning after adding back the -fno-omit-frame-pointer
> > > in my reduced test case:
> > >
> > > $ clang-9 -c  crc32.i -Werror -Wno-address-of-packed-member -Wall
> > > -Wno-pointer-sign -Wno-unused-value -Wno-constant-logical-operand -O2
> > > -Wno-unused -fno-omit-frame-pointer
> > > $ objtool check  crc32.o
> > > crc32.o: warning: objtool: fn1 uses BP as a scratch register
> >
> > This warning most likely means that clang is clobbering RBP in leaf
> > functions.  With -fno-omit-frame-pointer, leaf functions don't need to
> > set up the frame pointer, but they at least need to leave RBP untouched,
> > so that an interrupts/exceptions can unwind through the function.
> 
> It sounds like clang has `-mno-omit-leaf-frame-pointer` (via
> https://bugs.llvm.org/show_bug.cgi?id=43128#c6).  Arnd, can you give
> that a shot?

I think Arnd already confirmed that -mno-omit-leaf-frame-pointer fixed
it in an earlier email.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829002820.7n3kro3yfpq4mglq%40treble.
