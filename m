Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB4WXQT5QKGQE6I43C2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BC926AF16
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:02:43 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 78sf2604987pgf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:02:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600203762; cv=pass;
        d=google.com; s=arc-20160816;
        b=AuJMC81g8wnWfkymfGnhkDcLroapdGn7ghYBHd9aSPH64nkwSZ35F2s/7+hO6I0q8n
         QZBTpRA2S1z5wE/zit+rDfVxWmQ0U1xRLByb2s0xz32UUBprbS5h5MRo9ppLJc0couk0
         JVSN0jXPWz5Z8eTDfvC8GOXRQD++wEHYz+2oYZWmpQN7wIu0HAbq5B0SkIDHkbJVQX1w
         dfc68jjkD4KYRYH1au+DC66AisKafJFkFmVbVKSIf6rjjJBzUTyHrhTMKHl/90eyHrwM
         fRHDClW+5AqiAMmOshetCMKfvjHGUR8PT7iUg2JZGUmStrHwFR8LGTo8UMsb5NoQvOUz
         WUvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WXQbO2JNI5cbwVRgCQt5rB51yM1bzb7oy35X/B31x0Y=;
        b=wqpEymAlqPCqOvXFkUY8OGfxmvoa77kFel4LhRg999BQvJO7gtowtjDAA9AWgymX6N
         f1rcjxRBbHd9sDOTPWMSk34ueQ4H3XH8BB7Dhif89SxDmJHKBAZ3N385rrTeE1MeH3rT
         D3dmadT7v9EqCZAewZHOkeLxTyQhcOk1QDaoIoSNRLQLewlhQFJRjpcQR+Z+5jblcOBS
         0M079eCAQi5Mo0dK5QNGeznhyYOp7TL27QvBUQpb/5AMz73nDwiqZ5GVR5IpUnkA0Sxt
         G32ESjg86+QDQ3ySxN176iTm7LN9K2sKSzHN3VqDo5G37+VZ7mXOVZkgWk2ZLfHPmj41
         AidA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bJuoKWmd;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WXQbO2JNI5cbwVRgCQt5rB51yM1bzb7oy35X/B31x0Y=;
        b=ogf2f2KOQrqQj4tCMb33sJgs3Y9yi8au42gcdvBQtA+BCnjR8zHPGw/X37TSyE2/t6
         m9uXaKzyf69C7K0gJAJP8YsmjWZ+O5Cp3fvAFKDkudWcPG6e7mkqGzikqBlmlRO1xtKi
         kzJDk6/xqopPbRKCXpXbciN8joR0PYRILcZkojSYmCHcYGHEVsOMn6JHRoP2yPd3C7lx
         nQ32exvK3nC8vS9sPiVqWlqjLJtAYdOX8a58KLgaIpOZPjd5W/rLHt6K/55PCryx5a0q
         GuyBewqA77R8wKpzgdIBvnrItoXRxjhYEJq6hABfnDPr5a8f91FEy4s0OJGht5vIYPWk
         pEkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WXQbO2JNI5cbwVRgCQt5rB51yM1bzb7oy35X/B31x0Y=;
        b=n67dmXACl97TPsEMJSMFwLmRWbqdDDEZVoM3NBp4AqG4UYDYj4cnxUDFDZ1NfxmpWV
         /VWjXkG+9ILnI9lQ662Vo1yY+TYT6QNovIVO4beWYxxib7Fj/6uIeG+TLpASEeMDkWM4
         ZpDmKhssExkmM2n0zIS2HDPICUiq0FvnWiA8iwXJcef2qUGbW1EKdTMJRBy/VMnTBdbp
         3h2PFdJfpogk2ieLz/Mx0OORmAc5qf+VnPidpQyBXQDbkZvU6Txlgqnh8TG5eoDHDNcT
         GoXvA7iikoNe9Ci7k5/KlHAibSU3/ATIlSMG53hrcyIwCfGT+JD9R1kT+x89AC+3m+h3
         Ph4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XZA9HPyPD8hs7yvqCpFXYz2TXyljgcfpH6eIEBQq7vwPqEudj
	aJimldouWDr7UroASEaJ9RA=
X-Google-Smtp-Source: ABdhPJwb+KnTvCRg3p+AqdiLP0jTYLYODaFjRp7k/Fz25IQk4meFTZ3/a9PTCFMNI5V+gRuy/Ct6NQ==
X-Received: by 2002:a17:902:7445:b029:d1:dea3:a3ca with SMTP id e5-20020a1709027445b02900d1dea3a3camr4972877plt.19.1600203762172;
        Tue, 15 Sep 2020 14:02:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d89:: with SMTP id v9ls152358plo.4.gmail; Tue, 15
 Sep 2020 14:02:41 -0700 (PDT)
X-Received: by 2002:a17:902:525:b029:d1:920c:c200 with SMTP id 34-20020a1709020525b02900d1920cc200mr21158923plf.25.1600203761608;
        Tue, 15 Sep 2020 14:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600203761; cv=none;
        d=google.com; s=arc-20160816;
        b=dDiXKUzYIZUqWNu0MfD5qNCU6tkLFeSTY043VPB5l7TGkJuNWqecSx77Pidk6UMREF
         xvl3t1/9ImxcrxrpUTgRpwztPYjrwZ+jwclmMrvv1SaW70X/exfkx7SUK+ZjhPt2gJKu
         wkR7wCOFX9+FcVy7CVJCJg6zyrwY+e72LfXmHin0++kvW0YOdjRK2cW0WFiO4Zno/dev
         ZJy3P5rrEeiRUdJw4/U+Ch2LKfStbOZ4pxIHMhUlCJneZrTAYmpeNql75FMVx11orD60
         8fqw6tEIaFbaJOVW7vhKL97Q8YgyiJTn2EtXErw62M5ovn4tKMkGNZMPz3/8v2ZXtGtF
         htzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7QHIRSjUq0tJFcI92B4kapSPBKJs2g6zBRXj5O6BhSQ=;
        b=cu0FYrWICyPJUwkAduTQ7cpYPz8x8B3y1I7Ctjsmw8/9YBJ4ozEzhFxy5V/6OHybGz
         EP4kWlQ72UuxO9SixazrN6YqnHySTIM1kwuz+/uwwmCKBUHcrKi+6f42fZfIpvT5U/iI
         vUjgSiDB+BkCjTgfytMzApQABGHU4v78f3jINO8pXAnn/qiC4NNbTZJOEC0Ax3+ZLWTB
         k+9tlp0OombXNodGtXgwPkf9i3gC7Hu+WF/EAxlUGWtVqAdwcdWgVSfIbT/U/MJtMqhd
         r7dEDIocMrYrq1sUi+9/K8ncfbPmpOB+3YTC06A5NEopRNHHQpkVif0qUW2dHIpqO/Eb
         eYag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bJuoKWmd;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id d60si88763pjk.0.2020.09.15.14.02.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-Jt6zVwijMvOsIG08nd4cyg-1; Tue, 15 Sep 2020 17:02:36 -0400
X-MC-Unique: Jt6zVwijMvOsIG08nd4cyg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5621B107465E;
	Tue, 15 Sep 2020 21:02:34 +0000 (UTC)
Received: from treble (ovpn-112-136.rdu2.redhat.com [10.10.112.136])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36F647EB97;
	Tue, 15 Sep 2020 21:02:33 +0000 (UTC)
Date: Tue, 15 Sep 2020 16:02:31 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Marco Elver <elver@google.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200915210231.ysaibtkeibdm4zps@treble>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200915204912.GA14436@zn.tnic>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bJuoKWmd;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Sep 15, 2020 at 10:49:12PM +0200, Borislav Petkov wrote:
> On Tue, Sep 15, 2020 at 01:12:24PM -0700, Nick Desaulniers wrote:
> >       1 warning: objtool: ist_exc_vmm_communication()+0x12: unreachable instruction
> 
> That looks interesting. So your .o has:
> 
> 00000000000004c0 <ist_exc_vmm_communication>:
>  4c0:   55                      push   %rbp
>  4c1:   48 89 e5                mov    %rsp,%rbp
>  4c4:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
>  4cb:   31 c0                   xor    %eax,%eax
>  4cd:   e8 00 00 00 00          callq  4d2 <ist_exc_vmm_communication+0x12>
>  4d2:   0f 0b                   ud2    
>  4d4:   66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
>  4db:   00 00 00 00 
>  4df:   90                      nop

If you disassemble with "objdump -dr" it shows the relocations:

00000000000004c0 <ist_exc_vmm_communication>:
 4c0:	55                   	push   %rbp
 4c1:	48 89 e5             	mov    %rsp,%rbp
 4c4:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
			4c7: R_X86_64_32S	.rodata.str1.1+0x1ef
 4cb:	31 c0                	xor    %eax,%eax
 4cd:	e8 00 00 00 00       	callq  4d2 <ist_exc_vmm_communication+0x12>
			4ce: R_X86_64_PLT32	panic-0x4
 4d2:	0f 0b                	ud2    
 4d4:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
 4db:	00 00 00 00 
 4df:	90                   	nop

panic() is noreturn, so the compiler is enforcing the fact that it
doesn't return, by trapping if it does return.

I seem to remember that's caused by CONFIG_UBSAN_TRAP.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915210231.ysaibtkeibdm4zps%40treble.
