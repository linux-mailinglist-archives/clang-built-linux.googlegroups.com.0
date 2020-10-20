Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUPDXT6AKGQECG6KMJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0E429427A
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 20:52:03 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id y7sf1415264pjt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 11:52:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603219922; cv=pass;
        d=google.com; s=arc-20160816;
        b=JX2456kpEJac8bPKoocu1qhWY4owLMxO3yysHKpr7ZBAOFqDhVMDIsj0YZkMNsRvlt
         Yw4AQnjTchpTnSCbmwPwS+45UWtUUhucHJlFqghs0/LGO7eaLVAYmGXieCR9Ig/ai3ST
         9Kb0CfUtCEwl0F+fD1V/MkXM48fb47wAD/RBPwINdsLOFxVtpaJoK5MjFSECgORpSW9y
         Ty8gamEn+lLwHrBiYfT+1sksjpSDivP2pzlBvO7wU3QaxMw3to6FEoFH6zEuMWIhkYgb
         OYJ8bu8hYvrKyehAMHps3wzCeXxzZYRYc68eMtB0eBFdHJnx5XqXjm9Q5tPwrNGTNFcC
         Lelw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5WB07/rMYXkhs0ZkAKZhK9m/rbahvN3MzzAFMB74XpQ=;
        b=dfO/JBxM9eHxClOZaQXmf8AbeW+EGzA6Sw6oUKiRlSQmJPmp7xY9py8POYi2X+7afl
         CoO/WpXEZXHz65qUH+e1V92dmIV4W7pNlizfjA5aiMTmMOboJgwiEMYJ3hxAkt3S2YCk
         B+OdVeE2kwVks8PIuPQCXJM3uVp46gWjOZyGYHhg4DwZWsojA/uEUsfWvaqhjdAT2XFH
         idnubQkN2xd0b3Gm+7zXihWmhAwnyJrcdZyUKR8FAJlX2TKPRQ0qIWLf3TiTBr31dCJq
         4Dwzhl1XFraaXDxRJ8Mqfd3aLq7XrLsbCKrvVZ8YroPm5dIqW0QZpAvOl7WzjRn1FZVl
         mLIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CWl+kqbJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5WB07/rMYXkhs0ZkAKZhK9m/rbahvN3MzzAFMB74XpQ=;
        b=mDOnJHH/7Yd1bze4VC4zCSHoefd0LEFDtWd2rC9uBA00f3lZfj+qkrUT7Lb3sP3Ziz
         3Vj4tzlSZxj+yS1WOkE6QKiQ4W2efUggRuo0m6lp8DHrL2l72ONveJJRCauQpL2Y5rvH
         i+Xq/z90onvRUAgS5izrspBFuozdwp2DsZZPJxDDLHB8l6aREX4SBmSv3T34i8McS4Uj
         Ll+Mar7zZdFAf/Y1MUFkdUdLSMCvYFxeQllx8Ndlrgs8klxGmf4yk16NFeoU4E9xBeq+
         wJB8JalXkzPhKv0lCKQxcHr8XqywL58sBag7D6c60DIzGu+i39PScsKlHpcc489iwaWK
         a0iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5WB07/rMYXkhs0ZkAKZhK9m/rbahvN3MzzAFMB74XpQ=;
        b=SlSXHGq+e3Ec89vJcDZ8wsbpOixjP66K0I2OL4T3NVYwIfw5hzZm2RCvXnjjCvxuiV
         PV4zZI+t2y48b9bh6aWicF9f3xOWinMbJMhJSdcun/Sohhsb82XsRHpmmYM5st5ZGJ2f
         nb+qmDN9AmR5tIeXMJuqH/JCrtgo0Oh6sCaeifKwSDK2gvu3FGhU7Ii+o2ETK/WxHg3y
         QWSvlXDwCoJ018lL/0H1hTWnPHMhmphXgmYofb0BEVV4Xd2MzlYA4QwZLs7Pnf0dhL5H
         7kui9H2JkGPnjNX3zbQUNOFNkKirWlNOzCLz0+XmqqfwmDdc1RnpQ5WV+6Tsp5wGp4Kb
         b4bg==
X-Gm-Message-State: AOAM531b2+qDf9gZ+gy3pHzp2hEwt0mB++JK878pbnHEnmqxDC4AE4Mf
	e++yJn9IuBVgloZ7nB+yKwk=
X-Google-Smtp-Source: ABdhPJxQQOMpTreoCpqHFazL1/rAhLvvioT7bL0NHl1jlUXFad4WBEdMk5JJY0luI4N6cc/jrLabIw==
X-Received: by 2002:a17:90b:4910:: with SMTP id kr16mr4036768pjb.227.1603219921943;
        Tue, 20 Oct 2020 11:52:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8b8a:: with SMTP id ay10ls1538453plb.6.gmail; Tue,
 20 Oct 2020 11:52:01 -0700 (PDT)
X-Received: by 2002:a17:90a:1bca:: with SMTP id r10mr4156687pjr.4.1603219921384;
        Tue, 20 Oct 2020 11:52:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603219921; cv=none;
        d=google.com; s=arc-20160816;
        b=JuCuU0d+lofWCaodv9bad9cf8VQB+U75+DY2P73vScAUXSJjXRzXlqNxS/zAWjEi9g
         q/LrbQkXW/dOlV2VirdwTmlaanfOqfu4eK3fIODqLl+Ay323l3OLaxSZh47PzxhwMGK9
         Mg+stbWN/lHf7n2gxCJnM9Bld5UA9cBomasPBAYcRWAM8U6frJ9tEWqSxXMHsdK0RoKX
         pYqI/yWi81XRpbujk/mkiu3b4wUG+mYyG7BVHc1o4s2aI2QiioD1Iv9RFc0lDT45BdWI
         +vMsuku1ivYLb0AE6KNuprJVDORfmBGGZwNxk8t7Ii9kVIF72RNpy9Px3WAIsafQNMB4
         e86A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aD0rsjChFgmBFrGRr+ZINPnxBO8DGrKJ4f6ys0irM0o=;
        b=Iht2sgZ5C3Tqeksnq2qzDw6j6isxmeSHwAMMaDqve+qv30gpUGd6nRqr8wZB2Sq6I7
         hLHIIiuTlZMGPMddypqjhXl8PL2R/5quB/4U9C3aJloYWiCx0exfFpgeYEqViDOYQ7kz
         4vNtOy6Y+v6cLQQMIAVBpK73NDb28oVAtIgqWm+mO7XXxSpbCzpdVeGBG9PL2FUBeaOa
         Sh6Rhinw7pT1ymO5/HSRJ5rjIYlTO2w6ZtHJx4u6aP7DGM/MrRVb6YPqpSLFqlcHcpdx
         DI3OVWx/SqKiv2nOxwwDkBeFHxzYDev/3JgNzDsH9sWSz+9Nit3wFqaeS/Yt6RkHWyfn
         J03w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CWl+kqbJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id cq16si197751pjb.2.2020.10.20.11.52.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 11:52:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id r10so1501946plx.3
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 11:52:01 -0700 (PDT)
X-Received: by 2002:a17:902:8a8b:b029:d5:f871:92bd with SMTP id
 p11-20020a1709028a8bb02900d5f87192bdmr1316366plo.10.1603219920825; Tue, 20
 Oct 2020 11:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <20201017160928.12698-1-trix@redhat.com> <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com> <3bc5c2e3b3edc22a4d167ec807ecdaaf8dcda76d.camel@perches.com>
In-Reply-To: <3bc5c2e3b3edc22a4d167ec807ecdaaf8dcda76d.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Oct 2020 11:51:49 -0700
Message-ID: <CAKwvOdmhqq0DT5csX6W8xDF=nuXgJJ_Rtc2xf++=Q9uA4tZEvw@mail.gmail.com>
Subject: Re: [RFC] treewide: cleanup unreachable breaks
To: Joe Perches <joe@perches.com>
Cc: Tom Rix <trix@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>, 
	George Burgess <gbiv@google.com>, Arnd Bergmann <arnd@arndb.de>, Jason Gunthorpe <jgg@ziepe.ca>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CWl+kqbJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630
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

On Tue, Oct 20, 2020 at 11:42 AM Joe Perches <joe@perches.com> wrote:
>
> On Mon, 2020-10-19 at 12:42 -0700, Nick Desaulniers wrote:
> > We probably should add all 3 to W=2 builds (wrapped in cc-option).
> > I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
> > follow up on.
>
> I suggest using W=1 as people that are doing cleanups
> generally use that and not W=123 or any other style.
>
> Every other use of W= is still quite noisy and these
> code warnings are relatively trivially to fix up.

The 0day bot folks have enabled W=1 recently; hence the uptick in
reports of -Wimplicit-function-declaration.

If it gets added to W=1, it's effectively "on by default" for new code
tested by 0day bot.
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmhqq0DT5csX6W8xDF%3DnuXgJJ_Rtc2xf%2B%2B%3DQ9uA4tZEvw%40mail.gmail.com.
