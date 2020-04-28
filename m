Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRFET32QKGQEJ44JJUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA9A1BB3D6
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 04:17:42 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id r4sf16138831plo.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 19:17:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588040261; cv=pass;
        d=google.com; s=arc-20160816;
        b=GyfyiJ0WShpxTRCkfTISplo2t4/Ru+CB7T4wr7Nl/vL5APQY36fON5Z1emyCZsRm1c
         v+OOXo82XWfhqkjYFgdM90O7AQW91DI2WaMTIfiJPrgSxRqVqkvZ+LnE+mlTPt0VpSs8
         hXZkxmJFk6nUFlgsjnxkYu3KPdfvV33B3Q9ecOLG6FT0M8/q/+6qFocyAMvpdySwO3mU
         GutIpLNqsEkYSM1RDhUH2+ZRfplEnrgwGMVRnuv6onuVduiy3Bn3+aNs7Tq1BjEAigyq
         rFfb0pv5WA3z8UqhBgXXuf4kPvNu+2iZDArqVdK7loMWHlvxuThWbAZIWwLXPHHWESl0
         eMFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=mXWuo8oJVLY+blqIINAY2mbNcV+hSNXXilr0/nY2j3U=;
        b=mcilBUq3+QARKrUFF6UQ8JVJ7mGGh8lpY6tQXEFpilsSVyAVW3JK2+SM456rQRkChC
         ZC9OWnbJGgkfyc/q39uQ9ytUa2oINEk/9hy5pJicBYBa7GP6vdssPL7/SzBt9VoDCFYl
         52kx/f9QHtIQc+1+ArtIqdgkMO83CVn08HQU/ovDRGKBuxaVRZkZ84jrTXeXoy9jvlfi
         Pd19PTTjOut9EMF8T8baJznQLVqnnwNQlBuDA5xSA8T/e/SopwlqUTnqYlXwx8Z/WBS3
         CR5dfVUv3sxyUdPKlENvEePcMsDz4vhrUQrDn0tnf7DzltOU0PvIdkn6KF/1qs8463B9
         pcvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vL04rXfQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mXWuo8oJVLY+blqIINAY2mbNcV+hSNXXilr0/nY2j3U=;
        b=N9Z0cNP/g1RyAWunJuKoidsf5y5LcQI0mzgVx8dW+3DDL9N0XshTtS9qq11PNXz4Fn
         Px5HiGEBhC9PUTcI1hyd4lvCr/TQPBSoWXbTlgQxKN9h20WNAzHGU4Lh5qlHQHTcTTDi
         /pBEzAOgqEJpNn0ilLIxRDmWm5Ua6erqHj+b7LKMbyK50F5kZ61vJU62B01hNIb2e092
         LaSXbWkSM+U3qP2zwITsY73BIahc4erwv0uBv/Ub7M09bCCczktWOfq0DCn2IfA1q60o
         Knsk8+UvmpeR31N75oQvnq3rE1J1jHZ83GuisU//47r2qnziHwziKhBAjBGFOjtsfu1l
         xNXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mXWuo8oJVLY+blqIINAY2mbNcV+hSNXXilr0/nY2j3U=;
        b=G0Ryn/rCIf9BDRfXyVrUoZQfZqdG1cINnZ1k8RtIOlfrkFn7iQNTHIWIwXX70kZJyn
         K7I6OuVC6LaREa1KgB+vKNj0YnGQN23JMlcWg7Vc7ck83TH2EzKLTwGxMpUwxDgweZVQ
         cllf/cES0AvTrKBO05NtA9ocwxIuecxaAP/hDUCwb4wqf0bPRPPN3cdX2BF3j5I4sytj
         2URIaSNpRHIUczBbJdaJRVra73sCi6TH9H++ICD4FveHSen8ZpXuPYMIvKT8IIp7C5rQ
         K8cORnoDM3l0mcaCJ4ww53DRG5xIRc238tPNxeX7sicTRELBS3zy9x4LKC93gMiesebr
         tFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mXWuo8oJVLY+blqIINAY2mbNcV+hSNXXilr0/nY2j3U=;
        b=WAB1g7cY6V3Js5XNv9LBau8vj7CYeLoHAXVFzTqYTrzSYxWiynSZ5eSFV1MJc6CeyZ
         p/uAHUHALDDPcfftvDBBeYsJiiQ3MU7PNhaWAxAKr6pk1j66roqsbdwo+c3rUxllVdjm
         cO5eu7PUQSUmzL9Db53zXKdCZUYDqFKh2uoh6O6ANYFtHDcxF8TeuyqnzvTTj8H7PqA7
         YRfVXO5J5BBv0rAgpL6R84KYoIh00YMhNJuz61/yFJGqVZ0ed8OQ0hS08u6ulB2kUHHx
         jlgYymJa8yUTx1ZqUeI1KkYEuyC3dv8oYfVMnizHyl/OpTlHZHFP5+SasLOsQHpUAOBx
         vnYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuagR8S6aQDl/UUZ0/+KkhFSXZvGVCianAo3Qy7VV/IVFOH7C0ks
	yLj9rXluCAHCWhE7qOZpQdM=
X-Google-Smtp-Source: APiQypIMovoY/qxbAkpjCiwMwjyMlc0/At4IXHFGfRvU+CJHTmCat9akmer50YHqANvhqgLjHF94Bg==
X-Received: by 2002:a63:5413:: with SMTP id i19mr27285373pgb.213.1588040260748;
        Mon, 27 Apr 2020 19:17:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:94e:: with SMTP id dw14ls155451pjb.0.experimental-gmail;
 Mon, 27 Apr 2020 19:17:40 -0700 (PDT)
X-Received: by 2002:a17:90a:6fe4:: with SMTP id e91mr2167546pjk.28.1588040260087;
        Mon, 27 Apr 2020 19:17:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588040260; cv=none;
        d=google.com; s=arc-20160816;
        b=vGKEiW5b+pzVpUKYfgm09fKsNia+V3nRT0BQksJPLU3UbsBgzN+FvUcbclgpBGriv4
         yZTEuhp4u3J0ICaEGT+n0IkPtB+QzN5kfsI6NpzzW2ug2DuLHxhWMhcCcxEpRj4YrXyh
         zW/E98SEHUsBCkvaZlfStZxVlDmpMEu3eJMciKRTDx14f1P5cnW0z72qTDvxee7k+fU2
         TvIYeewFE5vkRDUOeCRQhMdrXsLGHFTQO76qM6W1BrK+dA9WFnCpF99q/twxFi6+G3WV
         rHtVMqBZnFNva5KFgXNfty1hXhVolBa+nqkgf2UNctxZdX3RGPfS2wWVfyOkqExvWGgA
         9YUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BmzYkSZJw46ftci/MHsN8rVkPDSOUgE2j3h7GJ0Fks8=;
        b=OV0rdhsBO8bYkbcvd2R/YEKP/qjR+zqL43Ox87srfdGQoO5slkkr6n70UGmAOG5sqG
         5rkziQVA1+CrZLk1yp0O2MUYyrj4PJ73+P7hV0KQ1+aSB/+Jfru+HejOTYZLDImefYyg
         EU2stdPJCCOxOs2b5q6rQ9yVoGorprQ9mAKHOdzWMRRKLoebDnaSMZe6wV32HzPWcrUL
         QhRXaMx5C8zH0YTxooG2NWlUWLBLSYpOoDkhM4dG+DO7YuUlc9O71ajgjKupko4B8wf9
         9SZkG3GI4v9VsS6TfDkkHTQvw6Z7pAaweqS3IJuMFHK3Sm28fMpVNLHDN3bbZT0ioYJY
         1rAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vL04rXfQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id g23si201167pgi.5.2020.04.27.19.17.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 19:17:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id m18so29987302otq.9
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 19:17:40 -0700 (PDT)
X-Received: by 2002:aca:5716:: with SMTP id l22mr1348964oib.43.1588040259308;
        Mon, 27 Apr 2020 19:17:39 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d61sm1580656otb.58.2020.04.27.19.17.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 27 Apr 2020 19:17:38 -0700 (PDT)
Date: Mon, 27 Apr 2020 19:17:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v3 3/4] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
Message-ID: <20200428021737.GA7351@ubuntu-s3-xlarge-x86>
References: <20200419202128.20571-1-natechancellor@gmail.com>
 <20200423171807.29713-1-natechancellor@gmail.com>
 <20200423171807.29713-3-natechancellor@gmail.com>
 <20200426162737.GA9322@alpha.franken.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200426162737.GA9322@alpha.franken.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vL04rXfQ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Apr 26, 2020 at 06:27:37PM +0200, Thomas Bogendoerfer wrote:
> On Thu, Apr 23, 2020 at 10:18:06AM -0700, Nathan Chancellor wrote:
> > Currently, the VDSO is being linked through $(CC). This does not match
> > how the rest of the kernel links objects, which is through the $(LD)
> > variable.
> 
> this causes build errors for me when (cross) compiling a big endian target:
> 
> target is little endian
> mips64-linux-gnu-ld: arch/mips/vdso/elf.o: endianness incompatible with that of the selected emulation
> mips64-linux-gnu-ld: failed to merge target specific data of file arch/mips/vdso/elf.o
> 
> Thomas.
> 

Thanks for reporting this, I figured it out. This is the solution that I
came up with, I'll send out a v4 tomorrow once I do some more testing.

Cheers,
Nathan

From 256e3b6c8fff7a66aa29961ebefc0fe653ec34b6 Mon Sep 17 00:00:00 2001
From: Nathan Chancellor <natechancellor@gmail.com>
Date: Mon, 27 Apr 2020 17:02:55 -0700
Subject: [PATCH] MIPS: Unconditionally specify '-EL' or '-EB'

This was all done to work around a GCC bug that has been fixed after
4.2. The kernel requires GCC 4.6 or newer so remove all of these hacks
and just use the traditional flags.

 $ mips64-linux-gcc --version | head -n1
 mips64-linux-gcc (GCC) 4.6.3

 $ mips64-linux-gcc -EB -dM -E -C -x c /dev/null | grep MIPSE
 #define MIPSEB 1
 #define __MIPSEB__ 1
 #define _MIPSEB 1
 #define __MIPSEB 1

 $ mips64-linux-gcc -EL -dM -E -C -x c /dev/null | grep MIPSE
 #define __MIPSEL__ 1
 #define MIPSEL 1
 #define _MIPSEL 1
 #define __MIPSEL 1

This is necessary when converting the MIPS VDSO to use $(LD) instead of
$(CC) to link because the OUTPUT_FORMAT is defaulted to little endian
and only flips to big endian when -EB is set on the command line, which
is inherited from KBUILD_CFLAGS. Without this, we will see the following
error when compiling for big endian (64r2_defconfig):

$ make -j$(nproc) ARCH=mips CROSS_COMPILE=mips64-linux- \
  64r2el_defconfig arch/mips/vdso/
...
mips64-linux-ld: arch/mips/vdso/elf.o: compiled for a big endian system
and target is little endian
mips64-linux-ld: arch/mips/vdso/elf.o: endianness incompatible with that
of the selected emulation
mips64-linux-ld: failed to merge target specific data of file
arch/mips/vdso/elf.o
...

Reported-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/Makefile | 25 -------------------------
 1 file changed, 25 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index e1c44aed81565..301efb90b51ed 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -116,33 +116,8 @@ endif
 
 cflags-y += -ffreestanding
 
-#
-# We explicitly add the endianness specifier if needed, this allows
-# to compile kernels with a toolchain for the other endianness. We
-# carefully avoid to add it redundantly because gcc 3.3/3.4 complains
-# when fed the toolchain default!
-#
-# Certain gcc versions up to gcc 4.1.1 (probably 4.2-subversion as of
-# 2006-10-10 don't properly change the predefined symbols if -EB / -EL
-# are used, so we kludge that here.  A bug has been filed at
-# http://gcc.gnu.org/bugzilla/show_bug.cgi?id=29413.
-#
-# clang doesn't suffer from these issues and our checks against -dumpmachine
-# don't work so well when cross compiling, since without providing --target
-# clang's output will be based upon the build machine. So for clang we simply
-# unconditionally specify -EB or -EL as appropriate.
-#
-ifdef CONFIG_CC_IS_CLANG
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= -EB
 cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -EL
-else
-undef-all += -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__
-undef-all += -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__
-predef-be += -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__
-predef-le += -DMIPSEL -D_MIPSEL -D__MIPSEL -D__MIPSEL__
-cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB $(undef-all) $(predef-be))
-cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL $(undef-all) $(predef-le))
-endif
 
 cflags-$(CONFIG_SB1XXX_CORELIS)	+= $(call cc-option,-mno-sched-prolog) \
 				   -fno-omit-frame-pointer
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428021737.GA7351%40ubuntu-s3-xlarge-x86.
