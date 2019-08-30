Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB5HUUTVQKGQEQ7MYFVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF84A39BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 17:02:13 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id j10sf7301088qtl.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 08:02:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567177332; cv=pass;
        d=google.com; s=arc-20160816;
        b=zO9supBcXM+wUIFTixCQPMqsddLlQBRqyvMLtM2cUUhuQAsbe+KbTyEzhd03bXfw+J
         IVEISh1yXIdarYCDKLBEWT4Rreqzs1uSk6IJ7SZDfWXZPWzOc1XSFn0BVUeRrFG906ge
         CSxe63AGEv4cM5E3rn6FtObVe8NIb+rBZwCHYbWzKc0i+hF9VFGPUZg3ayhflCAtlnil
         ZpIE8hIPu3xnxxDrpt8Pse23+sneCDKfrkhZE1UtRfF4WdAF774xJVeWo7EpNERydm7C
         oLlpKfS5qK1fZPDTcTPEB74w5TlP9vK/3gMlXAe3O2E6kfsfltcBgDeVDv0SSHyHncm0
         mL2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ps4BHZyFWbcbJ/6yfj4XSr0odJbjiDML+BC37Kr/PRs=;
        b=Szq7xpKwsDXaC2QPHzqFBI+YHMCOdAPy9hCBZpeMOHfA7qIRoFOKn9QvRetn6n0rIa
         nN9BKAKDKljcjqyMrtbdapvbz5h6zmoXaS9SEm+9N6vckM7ZH3jbpEIannXAPxtTPUZF
         xWyu+lmwizES/Ns/BOIvgj3gkE92hs0q+w6ObqxKt7m+zZqq4e+XcjCcjrm/3oiY02Pu
         BwZ25qUrhAYuLYqX2FZWxmZXPiGPl11Dm8pQVAHI6fyGJOszTcoqclwvsnhWjL/5mwwR
         DaZJe2vK0VdMkV7a5dkO2Uo7K02J5pxcKfxoTGJ9FZ2Z+Hzx5m3+uSbFS6ro9SfGsF7y
         qoAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ps4BHZyFWbcbJ/6yfj4XSr0odJbjiDML+BC37Kr/PRs=;
        b=r/xIZeWuxUcxw4LVCmN8UM/K7mninIG2Oef3RvlgP4RSuaASmtxY2YOJe7n+XbmSem
         jn4pIgte7Nii9SgivS9oNE0EJc3hQqBqcJxAxgB9kzu4thvHiStV9DT4//yDIIH/dIIg
         RihL0nqYEgCMvDi36IyQaUCt/W5c4k1f8BqwZ0xWRG/RYddgN3Nsow6/egFuOeUmsGMg
         J5OMKIEtXKda5H+AjuY6nmDh6LRjINMljCzlw/7j/TGvwUByuCTKhRGb8hEFEiQsfmsP
         bIl0Lnm+gYrrmmzNntAD5PM34TDTytuZgpT7JBLxyPabjIvQ19Md2pUBbSaQSAMqJLEV
         2Iyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ps4BHZyFWbcbJ/6yfj4XSr0odJbjiDML+BC37Kr/PRs=;
        b=CWQ8fOrJV+Zk6Ow2vWFYrIzltHVz/Os6e6GMIiGFZSvuCkI53s2+7yc4zc8hryPPCg
         /DeyYAW5FGMg74SAaKYq2BJkQpapHEtIEoKX5qcx2c/hrVoKvic4jwRblCFIdy+VOFUj
         WEojFzg7f6W73KZtH6TPdzpXcPBxtkezg0B1DKHGHaaiOzBRthv3B1qZs3vqeKPPL6OD
         QgD8AQ3xjzukiP/9BJedhx+bz2XEG2W3M2MV8TELT2XsZmFTErV7VW/+HXmAXaOnPOKT
         YvetbonUFSaAwUN4Lz1vV3CahowQOyW3aMrWl97rhmLJoXoSQCG/hc4CTSRQZ2z5PR36
         RrEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWYPSSBO+3k/NA24PQd9ZnUq202u1yVO+JdataJSKnK5fHfevHd
	nCSkY8ifflultZsnzfbe5JA=
X-Google-Smtp-Source: APXvYqyDAFD3s/Ws6k2qeg1yo+FLPQm2f7bc4J9Vd+J+A+fTS3C0qH4FjY3T0tepUiOGxqZ4MRyVrw==
X-Received: by 2002:ac8:7404:: with SMTP id p4mr16050749qtq.181.1567177332722;
        Fri, 30 Aug 2019 08:02:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:75c1:: with SMTP id z1ls972084qtq.3.gmail; Fri, 30 Aug
 2019 08:02:12 -0700 (PDT)
X-Received: by 2002:ac8:6105:: with SMTP id a5mr15747323qtm.285.1567177332439;
        Fri, 30 Aug 2019 08:02:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567177332; cv=none;
        d=google.com; s=arc-20160816;
        b=JERAsZODDiWp9JZgUncU+zj9GdPaMGhe1BWWUm5SRpQhxE4su1mNK8j+gK1AfaLfGR
         iAGQqw1Ewty5TuVQqr90FiYuD7QyClQc9smEEY6WlUXvq3KED3CbOV+KQN84+KszCo2t
         ZT2BQO+t7xy9yAsgMvgaKNbfyIQrcTkip50yRnqdQicJ4Boqxy5wuJwlXvKtIoK5n4Ab
         bx27aVXvVWgAo0GbEHQBlMvmoN+6bC3CHigXmax1VeAu6c8onknQCTkPpdkN+k0pJ/tS
         ICg42iYsHzNn0kFqQGUz+kzRN7+SUpDXgSn7Ps16r6pSW30BkL/S+zfeb/1vO6XJotDD
         3waQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=KFtUdZ031g8zY++UuM+HMN3XZ4NsDLRpkTuIZDnHuk8=;
        b=DpAATxhTYehgBtOlspDZmPVtIh4GmSK837WEUsiyzWDvhwtnR84d9YhqqyjZaKoP0W
         KejDyQ0bR0Oq41/IMa3lppVFT2kRRlV2ZbzogLkC8R6VzMDDNd+m2ho6YfWmBxBEsQg/
         UvlrjhYzGhYHbNa2h0nX2wFD/G0m3ekch2DTg5maLTiny+S1qKAOjpz8MapLG43JtR8w
         yI2hRJGSjkHucQEpJYKV+80aBbW89Q03oXmjw9pxeM0zdJHnFufBwo1pUICLaEypRUMj
         TyfR02lcY/SxZq3x67wOw/PQMfoAoNgYhq+jaKJv03wubPBsoqR5S5kyRbrVwS4bewb2
         bB9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id 37si390489qtv.2.2019.08.30.08.02.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 08:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A6006C065123;
	Fri, 30 Aug 2019 15:02:11 +0000 (UTC)
Received: from treble (ovpn-125-111.rdu2.redhat.com [10.10.125.111])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7E015D721;
	Fri, 30 Aug 2019 15:02:10 +0000 (UTC)
Date: Fri, 30 Aug 2019 10:02:08 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
Message-ID: <20190830150208.jyk7tfzznqimc6ow@treble>
References: <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble>
 <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
 <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Fri, 30 Aug 2019 15:02:11 +0000 (UTC)
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

On Thu, Aug 29, 2019 at 03:26:30PM -0700, Linus Torvalds wrote:
> On Thu, Aug 29, 2019 at 1:22 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > Maybe we can just pass -fno-builtin-memcpy -fno-builtin-memset
> > for clang when CONFIG_KASAN is set and hope for the best?
> 
> I really hate how that disables conversions both ways, which is kind
> of pointless and wrong.  It's really just "we don't want surprising
> memcpy calls for single writes".
> 
> Disabling all the *good* "optimize memset/memcpy" cases is really sad.
> 
> We actually have a lot of small structures in the kernel on purpose
> (often for type safety), and I bet we use memcpy on them on purpose at
> times. I'd hate to see that become a function call rather than "copy
> two words by hand".
> 
> Even for KASAN.
> 
> And I guess that when the compiler sees 20+ "set to zero" it's quite
> reasonable to say "just turn it into a memset".

For KASAN, the Clang threshold for inserting memset() is *2* consecutive
writes instead of 17.  Isn't that likely to cause tearing-related
surprises?

I suppose people don't run KASAN in production, but we don't want
tearing-related bugs showing up there because somebody's going to end up
having to debug them regardless.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830150208.jyk7tfzznqimc6ow%40treble.
