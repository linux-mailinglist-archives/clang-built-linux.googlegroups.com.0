Return-Path: <clang-built-linux+bncBCU73AEHRQBBBS566TZQKGQENBGPSQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAB8194A98
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 22:31:56 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id x3sf6357613qtv.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 14:31:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585258316; cv=pass;
        d=google.com; s=arc-20160816;
        b=LH5jVSp/3lfMqm1CNlfNtpa2deYoqFEkERgrvL0SIWRDRRKIy78KI+od7XfemodEir
         luJmQZIUGh8oaQUKdaY9HHnYDHSSmWzjMIV1Es2+UQGK0chwUro2GTL33p6ZAkUBWV1F
         irPofaKFxHyjSRXwzC4aHUfcNRzOVDAkeYoZWB5FHBCI66xQuhYiPbxjGJ7lRygCHmzE
         J/z3uRTGqKi7YAgWTpZAIsNa/BVX+ZlicVk76VyYRI6Fb3q9RWxUSoflzgo9lvyUHhDA
         pz7ctl8sg/GREnRSBWI04D71Iy/tB9T4Ed+gPEPoAQi/jq67cuugaqNv+ArwjfGHI+Fy
         IZPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Gl8ucsXHs7YEcOCAqTflF4OQGccc+GOPO8bUpSRIpD0=;
        b=O/q/pm0H45VVJKr2foON5B2vSBL3m7N7UpRlAdY7NhM3A5qikpJe92KHtUh6pftfEY
         fApxP971pF5H4rgt9bpth+CixavNnzDXSRdUUcgIHh2ZsrAbty+aQqLBaS/PhqgrPs4a
         Fe05C72nJBSZ0bn0cvhjvTW+kMsyZm+3mtYUL9A9fenVS1sN1sSuHPxLcjK4IYegKGZ+
         n+uC1QdXxwidn7j9zrZVFmgyS04PZDbyQdolPj2AGkCRHxr9CGnmEyLwdMvkG16CnGod
         qKLewywqRssY5iEw8DVZffDKEZcfLqhf5exvujaU/Iu11dWUvNKpWt1De+wc+NGbOPWb
         wjMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=ncq1=5l=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=NCq1=5L=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gl8ucsXHs7YEcOCAqTflF4OQGccc+GOPO8bUpSRIpD0=;
        b=I/fjl/Q6fEt8CFUbsd2o0A0a7++ZiaS/K72kVTOoGkAznNtOtdl2W35PS+x+VD8zcu
         2caHUp3fnRCEBNEoc10uOZOPstunHF97yBUpGj5G5YCI8WUmzuPljOYdbTf73l7Vp1Oj
         6Cg693pCbvfWATgGfcG/vbiZFjcd0T/3OTczEMTBKtAqbdLDAanD8GVTC4ioN7+RSv66
         YaZtryMGhLz3Sm4ggEfMVGCsoPoS3ggFwBbjeMD0liEkUAxG4MX4SK3Mz2kyOu0MxDtw
         ZFNQ3dSkfRCCpSeZkPCQwFhEyrp4rIlq4KUAzc1JE9nK6oBmdszD76IN3udkN3/34dXd
         QBlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gl8ucsXHs7YEcOCAqTflF4OQGccc+GOPO8bUpSRIpD0=;
        b=kqlmRO7911pSIaG/QQ7mJ/U2mWRESiTOMJbsc/d2ppfRdQGT1SK6W+ZfkwJz3wx6E7
         HRU+YHC9V/RGRZgPnh3MX9RZPzzFQHouhpVeHLE5uA7iteZvZm+kvnZgLWagc4jEyQc5
         8PLGKnEPcSRc1b1ntbOi8PAOXltEWNETgvSiT4jVnJpaouBYi+WQ1SU8qRow10V8pJ4s
         vCzNevgOnCPgM8fgwd/1LvZdkpCMj9R+fPXgFoIxcv4i7YQv+L5AXTpFTGwmJjdZQ78m
         01eOhYn5/2ZShsLhTwlLlk3SXVPDDnNutwGy5r+GH38s1EQ98cKrpbwbKQlNq/lefwxH
         UcFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0+ZdvHYO+sAxGc5uoGgR3aunZwGGuUeBDC+QV26dhs7xpdMToz
	nMPclT+HOGVimzV1hgHIOzI=
X-Google-Smtp-Source: ADFU+vvYLqgE++PHhZj+q3cfwAiugyMRRCTikBt/j4FLi81/FidwY3bpX8G/bd7yepgKhJTts2pEBw==
X-Received: by 2002:ac8:7293:: with SMTP id v19mr11379322qto.133.1585258315813;
        Thu, 26 Mar 2020 14:31:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls3414473qkf.1.gmail; Thu, 26
 Mar 2020 14:31:55 -0700 (PDT)
X-Received: by 2002:a37:6285:: with SMTP id w127mr10610290qkb.138.1585258315380;
        Thu, 26 Mar 2020 14:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585258315; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDjpoe2OhTOXi6RR2vtR3kaX9fPePuBqRHdovhYCnTcGC43UFFA9+CTppNiQSfU22C
         hX0D1HyuiqZsuB2YQhb/knKAfL7VODAbOfrdIgUGwVgmpyQuxqIeQ2Avh+mWPvtzh68Q
         CnLR4+Tb6H0KPsU1F40Vo2UYbTnr0IlK5ZYniS44OvaHYTAbYraZHB0tLA2jBlrXahFt
         oZGPLh8nXVWMSvmOOk+YXVRbevXbRVntLuKuDg/1ZEvo1lHFiyyfxU3N1PrcgO3WP+Ma
         gQtP87mxz0WUuxrzX5WrNBwtYXvSmBT9Wr/A4ELw3MOImNDse1OEZI+Le3c/EBEhd443
         tahQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=ZZDTwAdmfrSFlruA7G1FjNp3k7JCLxBcUDTd5wpEcao=;
        b=Zyih1/dgyf2EFHzuRZQwyIQ/x1qwAmLEUXreNah157PDlFvOlS1OSkkWjt9qgIp+L3
         9WQuGh3N9c1JOPo4Z2AvAvaZy9bMep2DX5++a4r50rt6mgewm0kkfPRUCVqGVLeLDDJQ
         gPKyEP5vh/YXiyJgbeRKfXR+u17H3xc0UDJEPgmYH661yvjVTvflQNJ4L8qM7EuHZBCL
         2NZ8j4iYj/phBgG9itOWRZ0Wz7uSDbLfmQ7pp0h/dRCaNtnWZ90aWi+TkLlYsQcpWRhR
         7B1S3pttAkH/agpK//mnV9tmkNUlbAqIQ/izInKgw4LTIMWIG3VGe6ChIT2lwK6CBbeH
         JFBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=ncq1=5l=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=NCq1=5L=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d34si307375qte.4.2020.03.26.14.31.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 14:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ncq1=5l=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B34D420658;
	Thu, 26 Mar 2020 21:31:53 +0000 (UTC)
Date: Thu, 26 Mar 2020 17:31:52 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ingo Molnar <mingo@redhat.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Nick Desaulniers
 <ndesaulniers@google.com>
Subject: Re: [PATCH v2] tracing: Use address-of operator on section symbols
Message-ID: <20200326173152.06ef57d5@gandalf.local.home>
In-Reply-To: <20200326194652.GA29213@ubuntu-m2-xlarge-x86>
References: <20200220051011.26113-1-natechancellor@gmail.com>
	<20200319020004.GB8292@ubuntu-m2-xlarge-x86>
	<20200319103312.070b4246@gandalf.local.home>
	<20200326194652.GA29213@ubuntu-m2-xlarge-x86>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=ncq1=5l=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=NCq1=5L=goodmis.org=rostedt@kernel.org"
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

On Thu, 26 Mar 2020 12:46:52 -0700
Nathan Chancellor <natechancellor@gmail.com> wrote:

> On Thu, Mar 19, 2020 at 10:33:12AM -0400, Steven Rostedt wrote:
> > On Wed, 18 Mar 2020 19:00:04 -0700
> > Nathan Chancellor <natechancellor@gmail.com> wrote:
> >   
> > > Gentle ping for review/acceptance.  
> > 
> > Hmm, my local patchwork had this patch rejected. I'll go and apply it, run
> > some tests and see if it works. Perhaps I meant to reject v1 and
> > accidentally rejected v2 :-/
> > 
> > Thanks for the ping!
> > 
> > -- Steve  
> 
> Hi Steve,
> 
> Did you ever get around to running any tests? If so, were there any
> issues? This warning is one of two remaining across several different
> configurations so I sent the patch to turn on the warning and I want
> to make sure this gets picked up at some point:
> 
> https://lore.kernel.org/lkml/20200326194155.29107-1-natechancellor@gmail.com/
> 
> If you have not had time, totally fine, I just want to make sure it does
> not fall through the cracks again :)
> 

I have applied it to my queue. But the code I have in with it failed my
tests, and I'm just about to kick off another round (I believe I fixed
everything). And hopefully if it all passes, I can get it out to my
linux-next branch by tomorrow.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326173152.06ef57d5%40gandalf.local.home.
