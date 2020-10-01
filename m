Return-Path: <clang-built-linux+bncBDY3NC743AGBBCOR3D5QKGQESUNC7VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8878F28076A
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 21:05:46 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id h134sf2169433oib.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 12:05:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601579145; cv=pass;
        d=google.com; s=arc-20160816;
        b=TDB41yq8Ued838lnJejyEgP8NpyzN4i0xvU8zy7cd8Eygk8sVWolW7TilT4T9dsrrV
         bTkyj/kqepaRYf+20EDWeB3tOp56Rht5g7rjhuAIkT7JZK/YULlfkrE6Qhjgcf8e65cc
         WTowH0bYPoZ/weOFWz2FyoI/XZitp6LbGQzLzfO4NZ6j1LnG4uCsavV5c9GReS2wNb4F
         tHj8rL6nC6cpry3c2oFuPfzr2Riy89Bdw/1zeQ3zAdaiJ3tjpxkKadxY+sx+6FVEnxL3
         69UnQaNZfAONW5CajjgNbcHwEBoJ534WQymyjvsH1HYr5Vgarv8WmPoKF9081mlpmZFW
         uTAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=MuYh9gGGh/SsXvfR34ZKm7Goo1YkqX32sbyfFw3wsro=;
        b=YgHJ2yY3GuG0VXrhCFI33gXbLrmUx46jfD8g8JMNQjin97evz7yG9OWM1jXPfPqD0o
         pyzTot2wxiTX/W8Z7nHelXBxNKktRVwLbXcsNogci/y4J9Y4xJ9wjClV3Kq67nwzW1b4
         LcNG4TJxC/Atam64rGE3LpoBfWoMESv/xi0GaopZYgAgitYD6c0iVDy406/SCT2a5rmJ
         XYPifMxG0GVN4l2KbTNoZ2FJtlxbQvajdAsJg1GLIJtTubJ75pmupxPZ4beQocTKPRsd
         NUa8yo15ul/G6hLh4KxypLo7vc/QevtFRt6MMJ7T2kuPEZj6KYyH7K8Y5aGUTW1mE0Fd
         p2Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.231 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MuYh9gGGh/SsXvfR34ZKm7Goo1YkqX32sbyfFw3wsro=;
        b=N6b9fXZieYeZvVejkhpaneYpfenCxmJfn8M3HDfbLWC3/nSB2yzOJiJxUNAAaWeIxT
         fV4o5K6MZWuUD3TPB7sRsMOSh4ldMt/rF3wNTWN9qc4NPmBNkN7Yi+TsxiERDlobeGkT
         LGF7XRxfwP9lreYZ4eTJ7AGZPGE9EzpRmouInWKcZbHdcUbFUZDYtOH7nIgeFlVlZ4cu
         ImQXN7N9SW8ycHlf2VSBqaSSN/g86NCVwFMSVplTMvrwBHaNoWVPAw1ffEPfxJe0glRG
         IwQAu8ARSol1UpM7WDGaNc077UE/uLgmXsWgFH23BLy4aH8n/qhH7BHIkJvXx8GlZVaN
         9I8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MuYh9gGGh/SsXvfR34ZKm7Goo1YkqX32sbyfFw3wsro=;
        b=VlFGsun1wEdOxKATnMHd/P9fg2yZHcCB1V/HoEPZdDeqYXjenU6r5t2WYl/asjnLBZ
         v5e693JEPd6ObRpKy6hOEwXijPhPBq4SEklhKMRtYBY18VG9O5M2yJBp+5uD//CoQEvf
         nDPE2/qp8DDiFpuCCpr713TpgZIinjN0BZj5iOGLXUVUgC4pcUombjXLJ6UM5Ivcns7P
         accKQSwALE9kkJRtnPBUR41zdS3Le+zW86wNZiF2LBG2F28SKcE3avWeVjWQtrHyZlPx
         E4R9TI13OOkfiQOpUGpTXFtOHseZZc8zd4o99NMAu6g0mdilURrnzeVwCQ68Fb+NPGsi
         Ad0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303FBmbjyvprlDXqd96FluHG43JGFbsPFqAfEE3WY9ukF8RlN1/
	yKKpTTlZwtqDWkK/54pGYIQ=
X-Google-Smtp-Source: ABdhPJw415pv3L6KrI2RD0k+hhoE4EmQJo6b5uYdEe9rQDgY/1vNf7ZLh9oOpudg7WyNlJ7YjCRBtA==
X-Received: by 2002:a05:6830:1e8a:: with SMTP id n10mr6155020otr.371.1601579145252;
        Thu, 01 Oct 2020 12:05:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3a07:: with SMTP id h7ls1479902oia.1.gmail; Thu, 01 Oct
 2020 12:05:44 -0700 (PDT)
X-Received: by 2002:a54:468f:: with SMTP id k15mr609810oic.121.1601579144794;
        Thu, 01 Oct 2020 12:05:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601579144; cv=none;
        d=google.com; s=arc-20160816;
        b=fZwFipGcNIOqSPn8lzovFkMsSmB8dkL0YqlLI5XabNXu13AiAzUIHWpDtXhtYQY+q2
         ysMr1ceLGUi+VZRZ9/LQ2ioGIMmCfdwsJHH0Jy1FHfqv0Asw6u2YB6Oc5YrfIlvGJpMD
         OUDWSzQDPbP14fc5E5FMkhhX46C/nX3O8LPK80FZEQ3j1kH6HM6p77LQjKXykpE92/dR
         dYyNAelKRqMV5D7VozDdQV1rMmYOvoJENrtLG4hyP71bMzM9xqGbenG/qGxXj5CB4kO1
         rKwK4rzAGZAjDAJB34JpVGd97uyTGehBC0bJ40tOTEDUgnAPVq1Obh4axVgxAwX1Dwpc
         j6CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=UjDScj8TFV0mrPA27T1+gpQT6kB9DrjJw2OOddf4kjs=;
        b=V04JdXZ6RP7ZAVe+Y9XzIUCXbl9x5+NOsk3BW5gTBTcWbraNuSpzHNxsqbqiz9+psy
         ObMjFKLzlfh2Qi47jSLTsgYWmgV0gCAT4iKKdaNWXOfJEc+5abdY6cBzswcxsLW9t8xy
         Jw67BJ4bZX2VLjZ9ZUP4ZEKxT3kFk1nzoSAqbtrL/slZz4nMsWeGraMqM9HrBnPw5PQ+
         TVlTmNLpKGfJ0j5YSPJQtX5gWwb0zZP4PF38Vu4gYJ0QKTdQhNz/uzhvE0aEh00+e1uw
         RcPUNsxYeU6ESL2KpvBwEB/XG/Z5OpU1KmOsUNv1t0uLhpItvIM7Geu79m4bBsIBcL/+
         A73g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.231 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0231.hostedemail.com. [216.40.44.231])
        by gmr-mx.google.com with ESMTPS id k7si374528oif.3.2020.10.01.12.05.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 12:05:44 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.231 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.231;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 10C8D182CF66C;
	Thu,  1 Oct 2020 19:05:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3874:4321:5007:6120:6742:9040:9108:10004:10400:10471:10848:11232:11658:11914:12297:12740:12760:12895:13069:13255:13311:13357:13439:14096:14097:14180:14181:14659:14721:21060:21080:21433:21627:21740:21772:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: brain26_23158362719d
X-Filterd-Recvd-Size: 2860
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf18.hostedemail.com (Postfix) with ESMTPA;
	Thu,  1 Oct 2020 19:05:40 +0000 (UTC)
Message-ID: <657119d71970e33d599b3fe9e596e8f133449d85.camel@perches.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, "Paul E . McKenney" <paulmck@kernel.org>, Steven
 Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers
 <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Josh Triplett <josh@joshtriplett.org>, Kees Cook <keescook@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>,  rcu@vger.kernel.org,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,  Michael
 Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org
Date: Thu, 01 Oct 2020 12:05:38 -0700
In-Reply-To: <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
	 <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
	 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
	 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
	 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
	 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
	 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
	 <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
	 <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
	 <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.231 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2020-10-01 at 12:15 +0200, Miguel Ojeda wrote:
> Hi Joe,

Buenas Miguel.

> On Thu, Oct 1, 2020 at 12:56 AM Joe Perches <joe@perches.com> wrote:
> > So I installed the powerpc cross compiler, and
> > nope, that doesn't work, it makes a mess.
> 
> Thanks a lot for reviving the script and sending the treewide cleanup!

No charge...

I think the end result is cleaner and more obvious.

> > So it looks like the best option is to exclude these
> > 2 files from conversion.
> 
> Agreed. Nevertheless, is there any reason arch/powerpc/* should not be
> compiling cleanly with compiler.h? (CC'ing the rest of the PowerPC
> reviewers and ML).

That's not a can of worms I care to open.
Perhaps the powerpc folk can do some fishing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/657119d71970e33d599b3fe9e596e8f133449d85.camel%40perches.com.
