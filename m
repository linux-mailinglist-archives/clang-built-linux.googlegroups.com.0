Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBNMB6P2AKGQEHM57QVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD201AFE64
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 23:20:58 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id d17sf4639505wrr.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 14:20:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587331255; cv=pass;
        d=google.com; s=arc-20160816;
        b=TaLFphjs5hYxeOAaNmcF2rWeBpFUtsHE5p5imis6+vGybZfQ2f8oUGF3RT6NKLBdTt
         LZIL85ISbyYSQW2TxdTPoRE6P/PHLGqGwLvp7K9SWMKF3xa5rQU1FBJm500vij182Dpe
         yUrLY9nFlJvPw/e4x+u462BEFBD/TkMoqYBQNd9eebdF9Ivh6S8LlE+oWi+FRCpjYrdR
         z28e6i9aBYZMJLn93lJwUz1Iwqm62bdHUAQt2OV3ZFjDLjxKbRwmuIlAyD2aDfIbdzgx
         V3RTLcOBZi8aQVr02xh/S8z/SqnZ9iYZBrPfaSN+9SWoLdfE22twep2IKjnT4uC65ErC
         WWhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=+fNQeP0h/WRmzwaeT4WeHuNay0hfDbCt4JewTiqms3Q=;
        b=QN6bI5SRVQALu3g/RHfRqahSNz8dhYaAE/ZwTawkLOqcFg0QzWzvpAyGTs5ujCojaF
         mMuV+ujS91qDStNIgHjZj+VvGSa6MqFcTGWo3+0CW8f+Nj2Os2i6xwDpPnnxdhn6eOf6
         8JPMvxxJrsWOl7TmHWZxRpQUz5jDss2D+t81Gy3UefTEwpVD2RgfMXPE5Pu8a4IWoxwr
         GB0Dbm+v2f/37IUEwZTRaWr/i3puG5HsYkdO0lIlEIHEafEffFgA17hXejiGghaHrKoO
         ho6BaZkn3ZBh4wuu5Xy4adb/PEYSrw2keACMgbZgiYHyomqRP2dBmu18BkvpY3K5aDID
         T3/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=NojelCtN;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+fNQeP0h/WRmzwaeT4WeHuNay0hfDbCt4JewTiqms3Q=;
        b=nifxp53YMt3GbD8TxY5CXKkwvoQkDFpcVTXbwLbhGlnvkuoc/x8HdkDHUUb+2797Xg
         SAsHe6ugIj7f3LG/R4ix3QTOtshhd0guHMNXjeuDouwo7gWCpRJ378spCLzSws+Vqdx7
         zhbnVZpf9+v7bZ4J37AnKuRdGLvxaUUyYfTjOWBriiLjeYOPC0Cb5pEZ7AreNf5pXULI
         yc/qNc5b7wN+SBTXVrGkqwWJj6sRXEMH6Dgf/Rm64aPo/yegH+efEsbVk47XXWiBXYWM
         C4Mzi0L7wQxX1yc5Wz352W87GufAZGweXulVwqFpx/D06sYEVepkPA5/usUzfmewb8jz
         4ayg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+fNQeP0h/WRmzwaeT4WeHuNay0hfDbCt4JewTiqms3Q=;
        b=NmCXti04oRBUPHWdnwUb3d8VBtDlTF1pQcKpCrPZBXAMCiQGvHJ/X20ZjC7QZNo8X1
         R5apUGPwjXgYoqkEv2lBS/0QVP0EAo/6ZHzBH+wQtY7RpeWVVDDPyWZ0W8Fbg4EOMCxo
         rhTHl+CGy3FeWDjHfIRPNg5Xhk3Ivl5cQAlADNzX7RPhPulzQPrLqeBo66aFPJ+0Yw/W
         uupD93yhlXDeWI25zD2jfwFW6htawCgHrlIvc67w4OZ/AH7UEGKqU3oCiOmTrDxVLUgC
         1lrQti9wcRNRJ0PcW4Fj7cYoPFax7CKmv8tsmmeOVLzlE47YUMhV7JAeBw3lGDvhQ7j7
         DX/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZKXSBHCTWQ3ZovtP0Qe6mQD34iAr7J9eCDA1AWZR1OzSx9rU5f
	S7R9NTQXZZMiID2+S7kNrcw=
X-Google-Smtp-Source: APiQypJzM7OAN0patY9JS+w1myv1vPHhiEb9+9m3frpepEy4aWLYO69KFdK8GOuKuvE7L8oKAquTUg==
X-Received: by 2002:a1c:e903:: with SMTP id q3mr13761854wmc.76.1587331253894;
        Sun, 19 Apr 2020 14:20:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6cc7:: with SMTP id c7ls5416474wrc.8.gmail; Sun, 19 Apr
 2020 14:20:53 -0700 (PDT)
X-Received: by 2002:a5d:4752:: with SMTP id o18mr15022982wrs.283.1587331253357;
        Sun, 19 Apr 2020 14:20:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587331253; cv=none;
        d=google.com; s=arc-20160816;
        b=c86UL0BfenqzB5g8SMZvmZ+8OHSWBpBaoyJT9uintNJrkQNFLUecmEccEUNDapxcsF
         ZER4z4p2IN2/QKE1Gtk6RtQBU/cS0C4+CvGiAPKtHiAN6ZpzsZDwr9iTxrM0chUzDqYq
         XWxl89rNItMKr48stn+FdmJGyeChk6Le+oHx+uuU69EnmNbfI4r4e1Op8PQ+fTsThGvb
         XMDL2AYH5laXZQQrKQ0PggaQwo/6h/gBWF6VQBe8WhfqED6n08TYuFLMNs0Ba1oYIfJe
         I9yKwbOA4xVkZG0tS3GrWGX25REZCVPDXoZ1oZxjqqoWPZ+TRPm/ACbp8StqC9LbNQ//
         GjTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=vPJzpM7y8xsutEk9xoRCpyH0Mjw6Ey8nK+iP0TqlfaE=;
        b=hKnuP7a3ccfJPPHp8NJd9SfEaSWKCXUJvfDUAr5GO4zKe7+Xavdw1GCeFFKTRG7yeR
         p/V84ebhjGFzoowGI1mC23jCApWfz/0Pxob/jx1WJEs1aKdGPF19hfac9jdD+IqURWCh
         ++rMkLp+nePciY5PJUxd2SttgkmmVRQHtO7/5yeccniUPbCLPjP3zOCpEYarlnohGFCG
         Z9zwgrjw5OkqTvJhmRnJkXbeOBoxQdxBSKy566/u56rYtUO3/0Wc0GHvJkKCkqDkekx5
         ffoQ87jgYlkJR5bBpKwef0ER4rVp4dZYRk51d+nt4VeMlPXDs0tOgJtWDZ7s5RGTcCsE
         CnDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=NojelCtN;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id o186si203486wme.4.2020.04.19.14.20.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 14:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 8A7D95C2AD6;
	Sun, 19 Apr 2020 23:20:50 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 19 Apr 2020 23:20:50 +0200
From: Stefan Agner <stefan@agner.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: clang-built-linux@googlegroups.com, arnd@arndb.de,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, jiancai@google.com,
 yamada.masahiro@socionext.com, manojgupta@google.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] ARM: make use of UAL VFP mnemonics when possible
In-Reply-To: <20200419141229.GX25745@shell.armlinux.org.uk>
References: <cover.1587299429.git.stefan@agner.ch>
 <20200419141229.GX25745@shell.armlinux.org.uk>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <7c3bb6fedbb2ff512451fa8e5abe2440@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=NojelCtN;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2020-04-19 16:12, Russell King - ARM Linux admin wrote:
> On Sun, Apr 19, 2020 at 02:35:48PM +0200, Stefan Agner wrote:
>> To build the kernel with Clang's integrated assembler the VFP code needs
>> to make use of the unified assembler language (UAL) VFP mnemonics.
>>
>> At first I tried to get rid of the co-processor instructions to access
>> the floating point unit along with the macros completely. However, due
>> to missing FPINST/FPINST2 argument support in older binutils versions we
>> have to keep them around. Once we drop support for binutils 2.24 and
>> older, the move to UAL VFP mnemonics will be straight forward with this
>> changes applied.
>>
>> Tested using Clang with integrated assembler as well as external
>> (binutils assembler), various gcc/binutils version down to 4.7/2.23.
>> Disassembled and compared the object files in arch/arm/vfp/ to make
>> sure this changes leads to the same code. Besides different inlining
>> behavior I was not able to spot a difference.
>>
>> In v2 the check for FPINST argument support is now made in Kconfig.
> 
> Given what I said in the other thread, Clang really _should_ allow
> the MCR/MRC et.al. instructions to access the VFP registers.  There
> is no reason to specifically block them.

I agree, and I am working on changing this.

There have been discussions about co-processor register access a while
back in the LLVM/Clang community [1]. Peter Smith pointed this out in
the ClangBuiltLinux issue tracker [2], which also has some more context.
I did submit a patch [3] to convert use of cp10/cp11 in ARMv7 contexts
to a warning. However it got stale, I'll have to revisit.

There is actually another case where this issue blocks Clang's
integrated assembler: In arch/arm/kernel/perf_event_v7.c, function
venum_read_pmresr mcr/mrc is used to access the performance monitor
registers for Qualcomm's Krait/Scorpion PMU, and in this case there is
no mnemonic available.

> 
> As we have seen with FPA, having that ability when iWMMXT comes along
> is very useful.  In any case:
> 
> 1. The ARM ARM (DDI0406) states that "These instructions are MRC and MCR
> instructions for coprocessors 10 and 11." in section A7.8.
> 
> 2. The ARM ARM (DDI0406) describes the MRC and MCR instructions as
> being able to access _any_ co-processor.

These are good arguments I can use in case my patch stirs up a
discussion, thanks for the hints!

> 
> So, Clang deciding that it's going to block access to coprocessor 10
> and 11 because some version of the architecture _also_ defines these
> as VFP instructions is really not on, and Clang needs to be fixed
> irrespective of these patches - and I want to know that *is* going to
> get fixed before I take these patches into the kernel.

I'll try. We'll see.

[1] https://bugs.llvm.org/show_bug.cgi?id=20025
[2] https://github.com/ClangBuiltLinux/linux/issues/306
[3] https://reviews.llvm.org/D59733

--
Stefan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7c3bb6fedbb2ff512451fa8e5abe2440%40agner.ch.
