Return-Path: <clang-built-linux+bncBD4LX4523YGBBHWR2LUQKGQEAHKQWCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id EF70B6F481
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 20:02:07 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id y9sf18461642plp.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 11:02:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563732126; cv=pass;
        d=google.com; s=arc-20160816;
        b=qntX2/llgueIY4pKMnvnbkEB4DBV5XgAN7FweUlfwHElSdW/bFLtUB7QbctuntinOt
         JJdWqgB7AUp5Rd9RGtvvmW5ZchDXmEvAP9WqoE8vM1C/jS9QCPXpoZe8mLJ5T7bKBv/I
         kfBIJO8C9Un40CVY2/dW5tK310+B/+S8CPFlm/F6qc6WhGNQEEEW3zNz+22GnREdyT3Y
         IOTxqEr0bG84sgJlUJx6rDYAJAZuc5YH0MSO8yC8AZ9KTCg6jIt6GIt/kBYeu+ySd6yk
         yIkwf1kROfOc9EYZ98oXFm/nmi5UuthszjGCD3if/uX39g4Mxl94Vw/juzKHXXP+UJoH
         6OMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+JmgqpJtejeiJ2a03hJmxK0HedRJzKzbHsIQXD0hf4c=;
        b=CxbQasyD+Yoz6igM21V3TB4wWRPYozF+ThqioYNR/zbpas1TpDIpkFR2LJNMdjIOV7
         06k4HqWt3rGHlATyHIhrKOvabi1N7B+W2DAOutYjRzbsE0x/QlY9Kz1xl8tvq2P1qJzs
         kBvicV3dmkHROVdwU7+K20Zlns6Juri9CncA1Z2ZuGkFMVoj1v5wsYA7Q6Pf0Yl/BUwv
         y5VnhJlt+F6q0CaOfx8SB9yKie9VG0RdhZRu3EZku7EMGNP6p9hdxZh5M7hpYBq0bQkp
         Lt3D7HeFIIs2IiOdZEUFskEcRcjhK97NzHq9IRFdGJ7SqkAJ5Mn0y4EXQK+7Et5U3eOX
         7Adg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+JmgqpJtejeiJ2a03hJmxK0HedRJzKzbHsIQXD0hf4c=;
        b=TgQDo+Jv1yGvpp5gmoknlCewwJiduO9juoFuA7lsi69n9geRzyLZ7FzfM5dsvkcs6O
         mM8Zty5FpoIZMlHD9U7zTUozlszLfS3/012M45DtMKv1dbouuimEd8BelWfBZZT3iRj0
         vNZctNM76FnGf1l+LAX7p7xrb3+h5p5/uTVD/Z50ayZecSSLQ93C9xZbj4qhQfpb21bK
         Sc16cX1tIgqHN6VfZ8L9ZqemkdSPS0pChDAxFmWE6kKioxlzy+geipr+AddW4RPgVBvA
         d1lkkuiuRLuU000WJAnJdOogHHG5HeGm8oa35NI3DtQD5D1cXRNpjve2WcxIiriNKtAc
         x5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+JmgqpJtejeiJ2a03hJmxK0HedRJzKzbHsIQXD0hf4c=;
        b=OTKtbH+wFlcW2OAp+rIdipIZRmwzY2uvk7vKZq0FnqC/dp+XkmkDfxImLKCT3Tbxwj
         R5i73a/GPV5noAVvgUzwSbvI0ENRUXJO4jz08379iisdXALZpuZzbfleHAB8nNd23V9Y
         RPBTdkjek0Gyh9JUN40fUCtaxTJB07SiWbIflM733Pv2dZeKhIsDa3VfG3FC2w9px1c8
         4zyKwYyI2nRAJDzTusF2SLe9XfzRHi9//dMXHgzmukjLDZ2vv82L0Xc0vXVAmGGF/g6N
         jsk0iXMJxxcLt12InXOZMn06hByBIDJJbPSg51HEVALES07fHvT1M1Bo7wnycsIqQQnu
         cfhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXv00tN9QbEbVC1jzYixakLNDknzpcmqXLeOsictCvMwhZpXfqn
	MpHdEJa3k7js1PHkrqO5z5A=
X-Google-Smtp-Source: APXvYqxS2aqQ+QE/LSmgHSUwebO4sr+obkXrDWXP+GjXBDj+OYEiHX1hqGKLe+KY3HL4ba44rIvRPA==
X-Received: by 2002:a65:6547:: with SMTP id a7mr46896477pgw.65.1563732126102;
        Sun, 21 Jul 2019 11:02:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2866:: with SMTP id e93ls9968426plb.10.gmail; Sun,
 21 Jul 2019 11:02:05 -0700 (PDT)
X-Received: by 2002:a17:902:2aa8:: with SMTP id j37mr67797574plb.316.1563732125810;
        Sun, 21 Jul 2019 11:02:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563732125; cv=none;
        d=google.com; s=arc-20160816;
        b=z6tKgngqDq6wmSeVg78GMyLbauhOfyKbHAcVHQJoaji2fpakUppy7cP5xM4AnOA0tx
         0TM+eD73snxLWQhlrjk66kFa4uvH31a32XlxBuV9mN2ZwIb2woJyr52Ry3I3W5f0DcUo
         LbpjHMjJfPgHM+Pu0LS+ewfoXXltEcDMxMUDl4QQ2FifK915j0R06gpAKITABTzgRzwY
         cjmqZdYFT9qeI5b5FeZofmoqZh9Rn0bNMzrUzuJH1wwdzv3SHF5IwEPmUcBWjkSwyde1
         pbipNC8+MEfTYdvq+PFVdltW6PWc/ncacB7Re18u6YHWJX1PX6gRVzs2LOI0RCVCEq9t
         Q3aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jXCp7bkNh2jbaFRXteHFFdyuH2/I6QnQJBsoHCvOnzo=;
        b=p9DU52aeCGfxoxC+YvLYLN4keVpq/hYxl+Vp9x1XmbIZvvPH0VWLAfYii63jTbrWGz
         NOb6iG3FUWkMIElJAqjH41v9JYGlicNbZn8S3ANMYNytD/C1VZASYHAxlzFF8bKyRmSc
         9M5tI7kLzxyj0SLUGuWIqI7HKLddaYEZoXksXNBsRCY5x2EK3NifgZZBc1BnVhh7oB28
         etZn60aeMnsvI7+AABIT4vnQxGxv5YlM0YzgAmA0rnASInyUEOylPjlFeIFBYd63OUZZ
         YOfFw0C+DXgE14gPmx/9shGjHAcmHzqAmq1lFA6IzexFmPLVKaCdb8aQIqITxESSTeKh
         +I7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id b12si158051pfd.4.2019.07.21.11.02.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 21 Jul 2019 11:02:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6LI1qEv002640;
	Sun, 21 Jul 2019 13:01:52 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6LI1oKj002637;
	Sun, 21 Jul 2019 13:01:50 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sun, 21 Jul 2019 13:01:50 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
Message-ID: <20190721180150.GN20882@gate.crashing.org>
References: <c6ff2faba7fbb56a7f5b5f08cd3453f89fc0aaf4.1557480165.git.christophe.leroy@c-s.fr> <45hnfp6SlLz9sP0@ozlabs.org> <20190708191416.GA21442@archlinux-threadripper> <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper> <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org> <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190721075846.GA97701@archlinux-threadripper>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
> I have attached the disassembly of arch/powerpc/kernel/mem.o with
> clear_page (working) and broken_clear_page (broken), along with the side
> by side diff. My assembly knowledge is fairly limited as it stands and
> it is certainly not up to snuff on PowerPC so I have no idea what I am
> looking for. Please let me know if anything immediately looks off or if
> there is anything else I can do to help out.

You might want to use a disassembler that shows most simplified mnemonics,
and you crucially should show the relocations.  "objdump -dr" works nicely.

> 0000017c clear_user_page:
>      17c: 38 80 00 80                  	li 4, 128
>      180: 7c 89 03 a6                  	mtctr 4
>      184: 7c 00 1f ec                  	dcbz 0, 3
>      188: 38 63 00 20                  	addi 3, 3, 32
>      18c: 42 00 ff f8                  	bdnz .+65528

That offset is incorrectly disassembled, btw (it's a signed field, not
unsigned).

> 0000017c clear_user_page:
>      17c: 94 21 ff f0                  	stwu 1, -16(1)
>      180: 38 80 00 80                  	li 4, 128
>      184: 38 63 ff e0                  	addi 3, 3, -32
>      188: 7c 89 03 a6                  	mtctr 4
>      18c: 38 81 00 0f                  	addi 4, 1, 15
>      190: 8c c3 00 20                  	lbzu 6, 32(3)
>      194: 98 c1 00 0f                  	stb 6, 15(1)
>      198: 7c 00 27 ec                  	dcbz 0, 4
>      19c: 42 00 ff f4                  	bdnz .+65524

Uh, yeah, well, I have no idea what clang tried here, but that won't
work.  It's copying a byte from each target cache line to the stack,
and then does clears the cache line containing that byte on the stack.

I *guess* this is about "Z" and not about "%y", but you'll have to ask
the clang people.

Or it may be that they do not treat inline asm operands as lvalues
properly?  That rings some bells.  Yeah that looks like it.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190721180150.GN20882%40gate.crashing.org.
