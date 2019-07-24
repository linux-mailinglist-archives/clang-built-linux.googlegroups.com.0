Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB26N4HUQKGQEZLEQXUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 092227313B
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 16:10:53 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id o6sf24171772plk.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 07:10:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563977451; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzwyZlUemkkRuU8zCnqCgnL9US7hzeg5v3pc8pEXa7XaMO1v/Xc8pw2HjDKD0JkJ/n
         uybquvG/ajnbUBBI6lfrVtj0dAE+U7We+Fn+j2Gvasj9J4BbkydgyDYz8q93f9/KMa61
         j2Uk16PY/1TVqpknwCC9AEvejuB2HYtR2Fve+KykZaJUg79mM1CGPTC0dhDYyKgbNLnR
         TZ7fd2/TrA+pnSVJHC5InIuzAmPUpPMcd8vvcK8xMn41FmZdf0x05LIw8a5Gs30UTA5m
         6SDP6YpszrzIRHUIxP2pObJLoMVGldnHnPXbqFFUVbtynmy/fO0mVVwCp+BtV6Bra8+a
         PHFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uo6zF5o+7LCvUNyqbo4B2Z8FjP7qWRhcs5cUoA/mAl0=;
        b=0tBxYM/kraRmXugAleGd6bmfWFumenjeG6msBuWuw0gyHHzrS45/3XyfdEYRCcjIYD
         weVmAkGNk9CWDz+jIV5LbZUWIyUc2+SqgHup8mPgsZEDxoQtTzjoFd1/Wf6GZR3JFJXW
         3i+1/4VfYylQLqRshnGcQaB/pWyB4wf4dAqRlzkJRYu3b8urMcmXMYcvZgkU3MgwkYnu
         N7cs86uVPw5O3J1twDqD59QjEZrKcxC+sBaTinZGoWeOpxy2TD2+0L1bhgL+SQWcAUAd
         AdzGDZ+HfpgrEJqcT51M394xipbFDHNkVVnJOnuXypdDtVjwXsasxotmNd7x2Hf2VGM7
         o4Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=px+1KWzK;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uo6zF5o+7LCvUNyqbo4B2Z8FjP7qWRhcs5cUoA/mAl0=;
        b=K0CAfd9M39oxxDE8KMk/qZWVU6NCED4Nqmdfah0cK/9Z5mLiaURNU+v84Zo8DYcppO
         VeZb8hNglU4+WO3r/EPHzo+Ex+qHkRSevlya7tS3prTBESpJ2XQ25d+wyqDTxfPvMjXM
         +MVBDMPbhS2jCirF4ZDoH5DQPMBZVCd+4nPTB8NdrqjEuPIQe5ucXdQvzh293H/qGac8
         S7zFN64SE2YtgJMkCztpQXetpFSZNHzdnV2bZJA/wON2/obI4WuZiWE6c40hJKr8odwd
         73aHrBsEZ4MLxAeLwj5nXgFNScjyn/IZVzeH3Q8luk/5EKkCXYDAO/VwvHC1EDifrL8o
         Opkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uo6zF5o+7LCvUNyqbo4B2Z8FjP7qWRhcs5cUoA/mAl0=;
        b=t5iZBdyPbcbAUrZTJcjM6fY0uwW3tuEXq5DgQGgiU7SsL/sAqF/03LKOqCC5tzpOsj
         RQ5dhsdFH9qWvVplXdbxMy+unMQAvVI93j1uCYcqBXx71mwA5Qs+YhzEiP9z0k1iRMFd
         ZA/tOJSjjEfoB9VDc05ut2mUIh5pRv5daJxNW4Fq8TDhM82dP1NFHc4KoCmQJrQHG6ZW
         eT8RM9QPN+VJsMsgmatewlA3ilKtnKJi99WyuA1zaEgEnwQnXI527dA4tL/7o85IBql9
         qCSwP0OkTY/z1tTNaNoqGYBa34sHVRap+OLpmvqlQihlMkqQtUpObQ2yp0WPfbt2JsAQ
         T5fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXyFPB0gGO4l+vm8UwIQYq0K0gpf5MShiprPizt6Ow7ktoNNXNA
	2W3iOz44C65nZYYNvzidEcg=
X-Google-Smtp-Source: APXvYqxa9CXdc1OSPpHMJ7PX0R5X+duD+ZoM/11HpEfXEHxvG3N77o7M74jXj8IhrNzqIv0KFaF3+A==
X-Received: by 2002:a63:3009:: with SMTP id w9mr6997180pgw.260.1563977451483;
        Wed, 24 Jul 2019 07:10:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:568d:: with SMTP id v13ls7935422pgs.4.gmail; Wed, 24 Jul
 2019 07:10:51 -0700 (PDT)
X-Received: by 2002:a63:d555:: with SMTP id v21mr59302081pgi.179.1563977451047;
        Wed, 24 Jul 2019 07:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563977451; cv=none;
        d=google.com; s=arc-20160816;
        b=aJF9XbABRwabO8rjrwqIetT2kLySSykXdjhm0Yw8LYU77WD5HofDB5YnsHDzzs2Jhe
         GK5cqkbo/0acBW9B0JjrclryB7yWIkwrMG/0hKrEMJ47Cft17uZcbt/8FGsSpHCwwkeE
         1/+fEY9fqTk64VMeEvFz8hR42ltQI4AFVIQGeAH9Z0FCGr8XT1W5Xodr7YS015E1Wnge
         HP6vJLm/qNnyCnJ5e0IaWID2xhKS2SB2skBccxCa7IBhFUne/rvQhzRlYZhCPeTyhqbl
         r8HGUcxq32DJFzZJfnCECzp6P1fg1Nqc0veGvWQG9sL954uJax3lJwHBveTM5YF6jK8G
         CDeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=peX7w0IHZmmNWGkQS7oFrjlTuMLY4e+Bl3q2bETnND4=;
        b=YBsb9EIRmeWCEuWuW8salcIydZzTswUMYBe/9NXt4MEdhUqfjqHjwPn0Te52xGwTjp
         +/P63/j5ZMRiAMLXl5n7rM7MdlXCs4UsHWSNd1ChzpRU9ReIBgMEvtstsQlFaSrweA98
         35/yG3VcXMJ7sW5TTzGcLr4Ma0WhCXTEzNAqF+znYmSYPo0YpVNg+MNhyd8Kv7XkGpJg
         Rzy55jEiTprZFYhTfVF+KgPMV+OXrxTOgDp0azsZ/LrAe0htqqFyAVJDD/CUYeEIyt3S
         lQZtD4E2x2GOgq80+VD0UVblHpQzgmGYhWQ7guGAiYqVKY6fm/zrps64jKH8a7JIOCba
         lMrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=px+1KWzK;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id w72si1772622pfd.2.2019.07.24.07.10.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 07:10:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=hirez.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHye-0005Jv-5Q; Wed, 24 Jul 2019 14:10:44 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id DBE0E2026E809; Wed, 24 Jul 2019 16:10:40 +0200 (CEST)
Date: Wed, 24 Jul 2019 16:10:40 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: x86 - clang / objtool status
Message-ID: <20190724141040.GA31425@hirez.programming.kicks-ass.net>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
 <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
 <20190724125525.kgybu3nnpvwlcz2c@treble>
 <20190724133516.GB31381@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724133516.GB31381@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=px+1KWzK;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jul 24, 2019 at 03:35:16PM +0200, Peter Zijlstra wrote:
> On Wed, Jul 24, 2019 at 07:55:25AM -0500, Josh Poimboeuf wrote:

> > b) why doesn't objtool detect the case I found?
> 
> With GCC you mean? Yes, that is really really weird.
> 
> Let me go stare at objdump output for this file (which doesn't build
> with:
> 
>    make O=defconfig-build/ drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
> )

0000 0000000000000240 <eb_copy_relocations.isra.34>:
0000      240:	41 57                	push   %r15
0002      242:	41 56                	push   %r14
0004      244:	41 55                	push   %r13
0006      246:	41 54                	push   %r12
0008      248:	55                   	push   %rbp
0009      249:	53                   	push   %rbx
000a      24a:	48 83 ec 20          	sub    $0x20,%rsp
000e      24e:	85 f6                	test   %esi,%esi
0010      250:	74 39                	je     28b <eb_copy_relocations.isra.34+0x4b>
0012      252:	89 74 24 14          	mov    %esi,0x14(%rsp)
0016      256:	45 31 f6             	xor    %r14d,%r14d
0019      259:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
0020      260:	00 
0021      261:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
0026      266:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
002b      26b:	48 8b 34 24          	mov    (%rsp),%rsi
002f      26f:	48 03 30             	add    (%rax),%rsi
0032      272:	44 8b 46 04          	mov    0x4(%rsi),%r8d
0036      276:	45 85 c0             	test   %r8d,%r8d
0039      279:	75 23                	jne    29e <eb_copy_relocations.isra.34+0x5e>
003b      27b:	41 83 c6 01          	add    $0x1,%r14d
003f      27f:	48 83 04 24 38       	addq   $0x38,(%rsp)
0044      284:	44 3b 74 24 14       	cmp    0x14(%rsp),%r14d
0049      289:	75 db                	jne    266 <eb_copy_relocations.isra.34+0x26>
004b      28b:	31 db                	xor    %ebx,%ebx
004d      28d:	48 83 c4 20          	add    $0x20,%rsp
0051      291:	89 d8                	mov    %ebx,%eax
0053      293:	5b                   	pop    %rbx
0054      294:	5d                   	pop    %rbp
0055      295:	41 5c                	pop    %r12
0057      297:	41 5d                	pop    %r13
0059      299:	41 5e                	pop    %r14
005b      29b:	41 5f                	pop    %r15
005d      29d:	c3                   	retq   

(<- from +39)

005e      29e:	48 83 c6 08          	add    $0x8,%rsi
0062      2a2:	44 89 c7             	mov    %r8d,%edi
0065      2a5:	e8 26 ff ff ff       	callq  1d0 <check_relocations.isra.32>
006a      2aa:	85 c0                	test   %eax,%eax
006c      2ac:	0f 85 35 01 00 00    	jne    3e7 <eb_copy_relocations.isra.34+0x1a7>
0072      2b2:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
0077      2b7:	48 8b 0c 24          	mov    (%rsp),%rcx
007b      2bb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
0080      2c0:	be c0 0c 00 00       	mov    $0xcc0,%esi
0085      2c5:	48 8b 00             	mov    (%rax),%rax
0088      2c8:	4c 8b 6c 08 08       	mov    0x8(%rax,%rcx,1),%r13
008d      2cd:	44 89 c0             	mov    %r8d,%eax
0090      2d0:	49 89 c4             	mov    %rax,%r12
0093      2d3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
0098      2d8:	49 c1 e4 05          	shl    $0x5,%r12
009c      2dc:	4c 89 e7             	mov    %r12,%rdi
009f      2df:	e8 00 00 00 00       	callq  2e4 <eb_copy_relocations.isra.34+0xa4>
00a0 			2e0: R_X86_64_PLT32	kvmalloc_node-0x4
00a4      2e4:	49 89 c7             	mov    %rax,%r15
00a7      2e7:	48 85 c0             	test   %rax,%rax
00aa      2ea:	0f 84 e8 00 00 00    	je     3d8 <eb_copy_relocations.isra.34+0x198>
00b0      2f0:	31 ed                	xor    %ebp,%ebp
00b2      2f2:	eb 08                	jmp    2fc <eb_copy_relocations.isra.34+0xbc>

(<- from +e0)

00b4      2f4:	48 01 dd             	add    %rbx,%rbp
00b7      2f7:	49 39 ec             	cmp    %rbp,%r12
00ba      2fa:	76 73                	jbe    36f <eb_copy_relocations.isra.34+0x12f>

(<- from +b2)

00bc      2fc:	4c 89 e3             	mov    %r12,%rbx
00bf      2ff:	b8 00 00 00 80       	mov    $0x80000000,%eax
00c4      304:	49 8d 3c 2f          	lea    (%r15,%rbp,1),%rdi
00c8      308:	48 29 eb             	sub    %rbp,%rbx
00cb      30b:	49 8d 74 2d 00       	lea    0x0(%r13,%rbp,1),%rsi
00d0      310:	48 39 c3             	cmp    %rax,%rbx
00d3      313:	48 0f 47 d8          	cmova  %rax,%rbx
00d7      317:	89 da                	mov    %ebx,%edx
00d9      319:	e8 00 00 00 00       	callq  31e <eb_copy_relocations.isra.34+0xde>
00da 			31a: R_X86_64_PLT32	copy_user_generic_unrolled-0x4
00de      31e:	85 c0                	test   %eax,%eax
00e0      320:	74 d2                	je     2f4 <eb_copy_relocations.isra.34+0xb4>
00e2      322:	4c 89 f8             	mov    %r15,%rax
00e5      325:	4c 8b 7c 24 08       	mov    0x8(%rsp),%r15
00ea      32a:	90                   	nop
00eb      32b:	90                   	nop
00ec      32c:	90                   	nop

					^^^ CLAC

And that most certainly should trigger...

Let me gdb that objtool thing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724141040.GA31425%40hirez.programming.kicks-ass.net.
