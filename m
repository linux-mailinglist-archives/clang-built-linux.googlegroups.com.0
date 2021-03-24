Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBIXH5OBAMGQEIQGSTFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 10489347333
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 09:09:07 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id cq11sf619510edb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 01:09:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616573346; cv=pass;
        d=google.com; s=arc-20160816;
        b=PB67f8gWsmMEAmQzHFTTkJQRcbhcAie6BLl48qnjVLgJqg5tcMaBU/upq1UL5XQEow
         KFv0zVPlUPvDWzF6orSdAp4umaXAPSCAQgQfpPAhA5o5mO5sJuMOpagQbCAUYOHBR9K5
         nYevdege5DGFAl37kE+eEo1Wxh0hp9rc4v94+NVyqLdhv9TJ3M+G3NQJSUGQNe5dF4X5
         3Hc6pSzQ/MUyognW6zO8ReUhMXLmZ+E3BRq8OBT2fgXtE5sg3ofwiXr3tOcxasz0HPOG
         vTpMkSHK5777s1hLZMS5Q3BYmRkA04h0nYWuWa4RWfsDFkalXgPIjw4aWcia6Cp23B5O
         NsDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=sDaXJov3LoWPr2kuts3UyVdXjYtIqNkvreV4T0tjroM=;
        b=Uiu2+Dl4ZUam2tMJgoq+51X6tK6QAArrM0SmWPS0n6MBY9gl4cY8i1d1XSWtz6lvKj
         OhyVP81tw4IoWU5xDP+23QXJDOGFjZpMXZ3L2LvZ2mbjoBuq/uxrz31SZH6tAJVy54t9
         05MSaZ2f0MVxJH5mmez1HdJO8P7IODMhQ51PAxEt1c1Llj/7yoIcHWcLlJJSmjZdHsw+
         Nab5YGjoMbhygtWn4C4Ft/xkBryTPT8bbXoCtgu43xBwhtKTFAXntuGDowJQONBhRWaL
         zCpRGnwI6LSVe7HTZAaf67gCve+lKW2OUWnz65Bpf7N4R8OF/fnvmunkLErV/cLG37Uy
         8VeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=HombLkuz;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sDaXJov3LoWPr2kuts3UyVdXjYtIqNkvreV4T0tjroM=;
        b=lsDlpapiPqFT31YhEEmGJhdN90yh9SBHid1UlYB2+HlkVQJ7Xgh4T3IajYgGgmsqW+
         FVqTMVyUsCTJbE08Ee5iyaI1BY3cQ6RsBD5rUZaNaHNrd2ioMMY2+xMU71FiUyxkMiNQ
         5kFobsi7GXMlaxQHq8HU+8M2l7hXgUaEO/w9aNXPYuNVSs9ZAAr/SLqcYOtVgHKWOH0K
         /T2vZOyBOfL81ntaG4jmAywQnmwiW++jBdGfDe6dd254bkEUGouADqvHXtdNZoiPITV7
         PkLHXlQAfDceSeL+EswL0gYb0eP9oYlUbyym3l8d5old3jDcPO7wNJz6usS5I2DUee4t
         GH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sDaXJov3LoWPr2kuts3UyVdXjYtIqNkvreV4T0tjroM=;
        b=EiApQ60XQmHHPuFxt10KGslGMmY63DDpgeV+piUZtcWI9y1IYpH7smjOG/TBil7WNW
         UrdzTGavf9mxqR31E+22n5A+c+dreVxDPMfyMy565J2BMKJ+Tuo4oYSxElwF3K9INRwt
         etpEQf8iu90rJmrbL79kqqU04Jaj5+asm8Fuze3Fwhl+wj2oSWuT8tMXdEME/oOKs5rf
         jxuHOYdcUGq4WxITA2tzAH8+wiow6CvvNMXv0FnszzSBF8TzFboSBx0gbEG4XzhkHyk1
         XY7yACJqaVmQGWJIvQdIWB1SJcottUAgjsj7KDFbzW1YXMUQ6/EKHzlVBJL1tq4yUjea
         nNqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315a4Ax/71HdB5+6wONCtMEs52LcgXZ+EW0NR/IrJZZ2hIaMgaf
	yzgSIVvclhqAPwOMZvDkHmQ=
X-Google-Smtp-Source: ABdhPJzrtl6YGlzQ3ZDwJUPjDTcS8/Qn4Wu9tHeXBQ1AXgO64z5Us/g1IbYWz1pJkP9Y9AC3o8KeKQ==
X-Received: by 2002:a17:906:1d4e:: with SMTP id o14mr2271487ejh.549.1616573346817;
        Wed, 24 Mar 2021 01:09:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:41a:: with SMTP id d26ls805771eja.3.gmail; Wed, 24
 Mar 2021 01:09:06 -0700 (PDT)
X-Received: by 2002:a17:907:9863:: with SMTP id ko3mr2284710ejc.543.1616573345990;
        Wed, 24 Mar 2021 01:09:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616573345; cv=none;
        d=google.com; s=arc-20160816;
        b=ufpmc6SB35qM5px+oUbos4bnvF3f/q5eHprw+ufsPbzQvp8dLOFLQyT4c1X88kMRz6
         jyAjOS8becLKT838pCuhYSgJJCKOSL0D8iqvovZezwmcK5ixag5Mz5cSCc7Nnfhh9V4N
         wiH8GjW1Q4Fau200tI/Z3TerQFLfusEe4gReqeDH8thHuQdTMGPaTx5YgqdaYRUb+QVn
         pM9/+UPCaGc5fGWJQ4wgLDDr56Gupe8VlkBNdBuhTacHS1qgUUvWRftsQFBDsalN3rub
         TW9cOAm6b4VaiFyM4Q5SYnhYYRxd4eqbdZH8cdUFjIdAew9Xnk1Po1cI3spJ4N69UjPW
         6TyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Rnxhk6YY08jsIxXw9le3kRdHJfbmQYZqrBYK8zWViEY=;
        b=StwG7EJ9f2zK3Epu/WGtFLGPoMsjavDneYTm6RHLwoiKfMlXxdwjTNu/e7EGtvD5s1
         3jCpgNtTxg9VUBmOVbVHU2K6FA6zPul7tdBqbcT8HcbMieMf99wT4qtH0vI0xI5Lx4fW
         WyMqbxD2Wz++ki+hgoIsBqnifzDVVfBWHAZJPOkl+X/GVXjqSG4IeCpHNxgLSINDbNV2
         0KGqex5Ai9cX+NOJRhZhOV9YRHeU8zDWpd7VLzu80a3zAvtP3KcbrcL2OzvqOer3zza4
         f4fSp8X4kH9/vnbucBxyxR1evt5phQJb7tqs6k0jiYivo8Iz9Qz5CL/5cyHvzt8JwvgX
         zZpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=HombLkuz;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id w5si69915edv.1.2021.03.24.01.09.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 01:09:05 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lOyYf-00B7yF-JS; Wed, 24 Mar 2021 08:08:11 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D1E8E3010C8;
	Wed, 24 Mar 2021 09:08:03 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id A073D23601880; Wed, 24 Mar 2021 09:08:03 +0100 (CET)
Date: Wed, 24 Mar 2021 09:08:03 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon <will@kernel.org>
Subject: Re: Plumbers CF MCs
Message-ID: <YFrzY8FLSxIyiaqw@hirez.programming.kicks-ass.net>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
 <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
 <20210323195358.GB4746@worktop.programming.kicks-ass.net>
 <00891d85-ef0f-b8bf-6d0e-47ecd4b650ff@citrix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <00891d85-ef0f-b8bf-6d0e-47ecd4b650ff@citrix.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=HombLkuz;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Mar 23, 2021 at 10:23:10PM +0000, Andrew Cooper wrote:

> There is architectural execution following an indirect CALL, so we will
> only be speculating what we will execute non-speculatively later.=C2=A0 I
> can't see any situation where this would be speculatively dangerous.

Playing the devils advocate, suppose you have something like:

	x =3D array[foo(bar)];

Then the speculative flow potentially does an array dereference with
values prior to foo() having executed.

Now, on x86_64 we have the (fortunate in this case) situation that the
return register isn't the arg1 register, so exploiting this is going to
be more work, but I can see it being done in some cases.

(And, that's only the easy half of the spec leak story ofcourse.)

Anyway, CALL + LFENCE should be trivial enough to recognise and generate
a sites list for. Then all we need is a CPU list that is affected. If
only we had a shorter non-exception speculation fence... :/

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YFrzY8FLSxIyiaqw%40hirez.programming.kicks-ass.net.
