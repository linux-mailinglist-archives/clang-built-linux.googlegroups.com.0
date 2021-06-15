Return-Path: <clang-built-linux+bncBDEZDPVRZMARBZVYUSDAMGQEZAXMZ5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3E63A8B1E
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 23:32:23 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id o12-20020a5b050c0000b02904f4a117bd74sf21933013ybp.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 14:32:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623792742; cv=pass;
        d=google.com; s=arc-20160816;
        b=xMe4GCD8wQ1RnAHeb/wGJoFpVK0fQ9Du/j9HySTZNBaeqX1kB+xuBeGRcvLWmLiWAo
         eAWnBPnQtKlSkX96x//cRm88onCD99XUo6kChXDikPjeCMmwNM32byfQMrVCoS24ItEZ
         rzrYe9niY03MJVBAk/1TVDJdXcHZV6ze0JVUL3chaHcm+Lb/FxE2/Xwht2sl1q4OyWkv
         hqBrqlExqUNnDAYxJzUTrbqOxvx6MWuEjv9ctYqM7LdILVpZdDnWjWjyMzDUQHllX194
         gczWWOpdetioRZwgTKD6SX4C321OnLodBQmo7vDKOL/MOI2JHXw3jCfng5aXTDGmYv+f
         h9zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z7wpai7dysEFskqAVBhAOuLvLPkTC/7cvlXwvZxrLkI=;
        b=Qmhyqw4I2Y4KY0UHNpMNZijqs8W2KWUl6weAAx48kYgxa8Tx696IYeW6Uc0EfWB052
         Thb6nEgWwWZfxfhEsPfwwkR+LFRnAoMDPSC3MuBnz34RUNMV13Vdkh3FK4Tz23PyQv4J
         xftKl04C48TqzF3RU6ZPmkTV4quNYSYKVfIJ27BavJYtZsYkiycHrtq0N35wfHXOYIkU
         ckSHXMbjISfkfggDrBm+W+rLqk19lVilyKQ74RWX7j9IvcTViV0ycfhrd7WQyQ92ICOB
         s0L2FS90Plr1Eu+/CWvMl5+9ZzKxm886hiNzptJtSePjy7v71swwC1Z8AeV0s+bvKKMd
         m8Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Dlg4FUfR;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z7wpai7dysEFskqAVBhAOuLvLPkTC/7cvlXwvZxrLkI=;
        b=Wl+RTshr/YcrwxbOXh97In8k9ItMZ0KTZTH9rUT83K9LjGHCsLUE9v+GTrhsdCU9V/
         UXAH17TEMs5Y0pCa3jIL7tzo2udQSZPQSbdJfihmIp++CvGvTZ/+JxvXqPHv/yt7GLF6
         9a10t+puXw93NgEW3niGsX5rwPFszi5qC5QzyHLVJ60utPL8sVm5Q0RgUDIZSx2CE4jR
         J0l8l0c/anIAhDHdubprM9dhrBtt185ZNdBpymhZh/6IB8XRYUuI1gqf81ZgeaxVZo7U
         LV2p/9HOCnQWwh7W5fk8Rx/+/TMohwSVZASbgt+XUuk1045quwZnvDwyNqb0ZuVEEAfR
         8FuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z7wpai7dysEFskqAVBhAOuLvLPkTC/7cvlXwvZxrLkI=;
        b=aU8nH5Kymt2pmFqqk+2LMt9IS1oegIDfAIeBJk6tArGhJR9UgLEkQOFIBOL5pM1Zfq
         Vq/GTa5kRp1nU3UFtTCyt1fWLV7N88UN9S51vu19YqLB5j6oI8jn2AqKQZ3EVzrY1mZE
         fmw+mVCeK2C/rHhDGJXlx5/YpoqyE98biyZk9//AciyMe5Ht36mFpkwRcr6Fa9mHNz6A
         Pe9R60PQClhlWXW89BZKUSIIhEUy3xYXRujhfGVBAho6W2OlqTymohoj+U29Vdvllq1w
         1FmCkjGNT38/z0+an1+IPKZ9cQfEZyhqMWKDqpkxQMPOb0yBFQuobRnPttmdA3lGx+tk
         O01Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531w1xWYX31ECFnXIQK8PRkMzGCVx8CY0VXFVuyL9ErDPf/iLCcO
	Ea8jfDCArBWE7DpbyrkG8Og=
X-Google-Smtp-Source: ABdhPJwWdxFt5EiGWrQwosgNvLuvwATwbN3SOuGpUlrbwfayJ+NGZX6pTT3+MfLI019H/D5ohZNVgA==
X-Received: by 2002:a25:d257:: with SMTP id j84mr1700469ybg.404.1623792742253;
        Tue, 15 Jun 2021 14:32:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d257:: with SMTP id j84ls216914ybg.5.gmail; Tue, 15 Jun
 2021 14:32:21 -0700 (PDT)
X-Received: by 2002:a25:18c3:: with SMTP id 186mr1819367yby.0.1623792741812;
        Tue, 15 Jun 2021 14:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623792741; cv=none;
        d=google.com; s=arc-20160816;
        b=AKwnFXdQQLjH7qpfrws1OuTR1R4zFLD950xPdLQhJqPHS011u+3A80X67d2IgxHDUY
         3yVT8XJ9NSSdT9lV6c7Z6fBrvMZTP5oFeJi6vvSnyW2c4fnRdxY8Ru+5ce/D+Z8M/4F9
         CffQ7shVN080IRgo0uXULkQkRkcUcm1Sl2r3vvISJ1GbO33JEVCwDhlp3YqXfDZCONv6
         /QgZ9+ot+l/gacslrOFxidpeehfQ983i59KIbfVjQfy5lnxCocVrExT2MEXYoG7ydkIW
         Pl7df71O8J9sJoeyWwSz5yYrhtHz/0m+rvQ/IiRLTFR+KMAgDZWbQnFr2Jxyl8YkpjIT
         acEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vBn1Kq8SJGcxfnaOZmYoqEOirrBNr6M7PkXW/RMINCM=;
        b=jsleEjv/lKaryOdylkhhhpfyou2I9rLXfAkGIJmjuu0OjtQQ92nLcgTzI7+UBQA8yx
         IUQQy8eRZlpkxsqAiWRy8mvI49bjj/oIey+iYXrMU/Q5LvevdjC1GokPzcGBFwoK6HJV
         bxgJ1c/goRiao+v8JJ0RbzDPcBmx93lyL+fiuGv1pGxgtpwoW2TC19anAwzl9HlNM/KR
         aRC99Tw/UxTwTjOXHE9zu4+zb6knBfDu1Yjxkj3/bIUs9PvlHkzlkC69eVvW3HLHWggU
         yUabQwLeU68uZqlGAbP7gO5OjsHOr+4+zQaIkyvLUVj1QDsBUK3z8SrqJ5xzgfABXyej
         EEuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Dlg4FUfR;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q62si10633ybc.4.2021.06.15.14.32.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 14:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2820A610C8;
	Tue, 15 Jun 2021 21:32:20 +0000 (UTC)
Date: Tue, 15 Jun 2021 14:32:18 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: Edward Cree <ecree.xilinx@gmail.com>,
	Kurt Manucredo <fuzzybritches0@gmail.com>,
	syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
	keescook@chromium.org, yhs@fb.com, dvyukov@google.com,
	andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org,
	davem@davemloft.net, hawk@kernel.org, john.fastabend@gmail.com,
	kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	songliubraving@fb.com, syzkaller-bugs@googlegroups.com,
	nathan@kernel.org, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, kasan-dev@googlegroups.com
Subject: Re: [PATCH v5] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
Message-ID: <YMkcYn4dyZBY/ze+@gmail.com>
References: <202106091119.84A88B6FE7@keescook>
 <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com>
 <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
 <85536-177443-curtm@phaethon>
 <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com>
 <YMkAbNQiIBbhD7+P@gmail.com>
 <dbcfb2d3-0054-3ee6-6e76-5bd78023a4f2@iogearbox.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <dbcfb2d3-0054-3ee6-6e76-5bd78023a4f2@iogearbox.net>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Dlg4FUfR;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jun 15, 2021 at 11:08:18PM +0200, Daniel Borkmann wrote:
> On 6/15/21 9:33 PM, Eric Biggers wrote:
> > On Tue, Jun 15, 2021 at 07:51:07PM +0100, Edward Cree wrote:
> > > 
> > > As I understand it, the UBSAN report is coming from the eBPF interpreter,
> > >   which is the *slow path* and indeed on many production systems is
> > >   compiled out for hardening reasons (CONFIG_BPF_JIT_ALWAYS_ON).
> > > Perhaps a better approach to the fix would be to change the interpreter
> > >   to compute "DST = DST << (SRC & 63);" (and similar for other shifts and
> > >   bitnesses), thus matching the behaviour of most chips' shift opcodes.
> > > This would shut up UBSAN, without affecting JIT code generation.
> > 
> > Yes, I suggested that last week
> > (https://lkml.kernel.org/netdev/YMJvbGEz0xu9JU9D@gmail.com).  The AND will even
> > get optimized out when compiling for most CPUs.
> 
> Did you check if the generated interpreter code for e.g. x86 is the same
> before/after with that?

Yes, on x86_64 with gcc 10.2.1, the disassembly of ___bpf_prog_run() is the same
both before and after (with UBSAN disabled).  Here is the patch I used:

diff --git a/kernel/bpf/core.c b/kernel/bpf/core.c
index 5e31ee9f7512..996db8a1bbfb 100644
--- a/kernel/bpf/core.c
+++ b/kernel/bpf/core.c
@@ -1407,12 +1407,30 @@ static u64 ___bpf_prog_run(u64 *regs, const struct bpf_insn *insn)
 		DST = (u32) DST OP (u32) IMM;	\
 		CONT;
 
+	/*
+	 * Explicitly mask the shift amounts with 63 or 31 to avoid undefined
+	 * behavior.  Normally this won't affect the generated code.
+	 */
+#define ALU_SHIFT(OPCODE, OP)		\
+	ALU64_##OPCODE##_X:		\
+		DST = DST OP (SRC & 63);\
+		CONT;			\
+	ALU_##OPCODE##_X:		\
+		DST = (u32) DST OP ((u32)SRC & 31);	\
+		CONT;			\
+	ALU64_##OPCODE##_K:		\
+		DST = DST OP (IMM & 63);	\
+		CONT;			\
+	ALU_##OPCODE##_K:		\
+		DST = (u32) DST OP ((u32)IMM & 31);	\
+		CONT;
+
 	ALU(ADD,  +)
 	ALU(SUB,  -)
 	ALU(AND,  &)
 	ALU(OR,   |)
-	ALU(LSH, <<)
-	ALU(RSH, >>)
+	ALU_SHIFT(LSH, <<)
+	ALU_SHIFT(RSH, >>)
 	ALU(XOR,  ^)
 	ALU(MUL,  *)
 #undef ALU

> 
> How does UBSAN detect this in general? I would assume generated code for
> interpreter wrt DST = DST << SRC would not really change as otherwise all
> valid cases would be broken as well, given compiler has not really room
> to optimize or make any assumptions here, in other words, it's only
> propagating potential quirks under such cases from underlying arch.

UBSAN inserts code that checks that shift amounts are in range.

In theory there are cases where the undefined behavior of out-of-range shift
amounts could cause problems.  For example, a compiler could make the following
function always return true, as it can assume that 'b' is in the range [0, 31].

	bool foo(int a, int b, int *c)
	{
		*c = a << b;
		return b < 32;
	}

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMkcYn4dyZBY/ze%2B%40gmail.com.
