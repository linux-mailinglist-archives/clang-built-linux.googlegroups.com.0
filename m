Return-Path: <clang-built-linux+bncBCS7XUWOUULBBZG65SAQMGQESPYTM6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 613333270CE
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 06:51:33 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id m7sf4556207uad.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 21:51:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614491492; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2ATYsTcYU89ECYemn/dYx9ceIYbnNzVJay9scu/cMq7l9susJtyrzZue0q29wr3jr
         eOOMnjyM2UlhQ7MhcGpoylZEY3MmhIFuVQfbgl0ePnTR7UVBYavfcW+yoXf10wdQtMss
         Ex/9qEWSgbjiOjZNno3GFS15EWXr/rVBDkxPRn4gDQpWfQi44/W6C4EvTPM1lg4P9ygZ
         hJw3yQE73OsZra/juTXXaSaC3fgvt5yoZCKYIZuhOeGr97LqxT/Mb0+7lnLqfkxuk5MC
         6j/xUpSkZG7bBEwdoywJ523n0ml3pRVsEgRZ7+s2bXPFIT3W6sm4BEqTJQXWlQcy6sVk
         za2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=r4Tk75aBRI3thbwx2pY3cOp2DVz/STFPSa81VW7+BzI=;
        b=dheq4fJ5P+0LNFHelcjDIL2GHWmJfxoo7xdaYtnp/soPUQj3vLOKg4d8QOzkSikkrU
         MgwJ37bZ/AXSJ6ZJAK6vzuQl/JEfmW+xc20mD1GXZtgKAFrM8NDGs72V9eoR+rtS7EKY
         NuJNXexsq+gi0k0u9piQjdF3LSZT34M5ro2AZff0ESLPboxq46C23CzsXKxYDG4MliIQ
         fYbyuesNuxn0ir7MVzFDEAabLMP411zDvR8+p/WEeO6A8LW+EdoGOrH1cMxagiqi5HHm
         xKH8jbdxaGhYwVTssp9unwB+LFHhlQKBXTJwCgAwKp61yyASuy3t78g0rPdDaxEDsN9+
         CU0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rKUY1oh2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=r4Tk75aBRI3thbwx2pY3cOp2DVz/STFPSa81VW7+BzI=;
        b=ZONXTJy4/BOwYsu8Cq6KnoUB2jgKWi0A2TvIAWpqjW6X8eTXE1DtQSaRes95TaLdur
         13ReEnehZp3pTrDARV0+sjqotyBMWlBwOL1N1lO6W0kQfgcl4nQnKh9/YgD8bs2ZdVb9
         jE9eEg2Q7zBY0tw6vx39CtYWTtyBDFz7ofBdpYq6cQrjTvMhdhAv44wVN5JC3KxetJe3
         GmVh2BEotGcGCMnGSPNJYcH5wpHIZyGX82ZxRCjGr0UZNgXWaMG3W9n6400STIrlo+fJ
         ZfEIrcCy7/fUbJiyvcdwJsayUiBHPt3ScoFn8ZENUudbUNpPsg8vdUPOOcxKTa2MKqD4
         XgWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r4Tk75aBRI3thbwx2pY3cOp2DVz/STFPSa81VW7+BzI=;
        b=QxOF2IFGc+pS+j6ib1LRV7iMXu4glTD+vk8NbpJ2I/GjcposnIrertMuSk4hF8vjdV
         1M5dlpVmpfTLonbNz4DjadFx7a+G8jPR0XUtC25rfDFE91YRyJVl/wfbdLrDmOOAqqXG
         PFyAH5f0tXFOUu9oFJgrnDn4eI+4wx0OVD4OvwcL7/9K4ptJrY3PHMkxkM2XNfLQpiP3
         0bnI6FmWRlfK87/aquLkzmJjOyXgiAPJZ9PZ/OkwSC9t1rqFHWPqsFo3HC+tZub1g0ru
         PrvtRGoeQOvuW1IfchpfEQd2was5MS59k0y/W+cBEMfUjtIeoEPIL/bIye1T+bGrG6nG
         cTNQ==
X-Gm-Message-State: AOAM532dVMJ33jTXBGUh3qW47qhlIzQq75IZjX1B5pz/bh9Z3XsLMrMb
	4RfQgp8hd8L6xcODuK30ffc=
X-Google-Smtp-Source: ABdhPJxcrCc+rDbpIWE/385g8TcEXijk8bouta6qfbHV0ndO198636ezphaml/TH+G/lS6UnttZliA==
X-Received: by 2002:ab0:2094:: with SMTP id r20mr4050430uak.1.1614491492455;
        Sat, 27 Feb 2021 21:51:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:328c:: with SMTP id y134ls658514vky.11.gmail; Sat, 27
 Feb 2021 21:51:32 -0800 (PST)
X-Received: by 2002:a05:6122:80e:: with SMTP id 14mr5456720vkj.17.1614491491938;
        Sat, 27 Feb 2021 21:51:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614491491; cv=none;
        d=google.com; s=arc-20160816;
        b=tqQQ0CbCVXfaj+ebYljp7xPRitL85uPbihgxAJ5XHRcei1TU9kmgEkT4D0qvyLnwTd
         es8BL87c7JNtq2mAgn/9/hNuehjkpjGWb4d2RrkaobGcUsKc0roHpDrBFug0yh4TcI5H
         p45TWGd3rVk5X5WfZ43kpg1CHEAGfjWjUF9Gl59Ayj7TBEr9wyDGXissliHCmtBz4BTX
         H8gwztXkZFG+7Y+3c1mVcakIdgSJeKnDJIeZCVkdOmd1tjqfg//XsaHwC08U8UbpOKKY
         ZM5/rnI4r/NmjzHVc00zgWXc2I9N8y2sfP7oaaVLhZnYeSP0NmrfajOdVeIYOmvOgO2w
         vLwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fIHDClkBpaMvFoqSPfjj0EmUE/3x09RJqK+wtPPSg4Y=;
        b=VIMn3bSYG4Y5DYPl9rdlDE+O+jhIzAH2FlKE3j7w2bzPqhv6QwIfVEg+QHxP01MdNp
         KQUqSUs1LcDIKO69rPReUZ3uc5HXRMB1KjXuFigVaV7BRGJjngYHVZBwOs89tZj9OkRD
         WiLEliemLxda4TulY8WF6LRr3PzSOA+Pbl40ZaOpZwsxRsoyacXruXxmGQyLV9v5oZQW
         xpOCCniVfIDeIt5kEZvavEx+UNKrBAka5Eg1hvetkZ2vt+7iEBLygYLWNJdXmvCfCbOY
         yKODuda2L/0Bobeb8aZhj96OdSbViwxjXiO38oPeyZoGVmQA4Om/ZFGKBYym/toQzWo5
         PHsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rKUY1oh2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id r5si421943vka.3.2021.02.27.21.51.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Feb 2021 21:51:31 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id t29so9017923pfg.11
        for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 21:51:31 -0800 (PST)
X-Received: by 2002:a63:c601:: with SMTP id w1mr3085474pgg.11.1614491490896;
        Sat, 27 Feb 2021 21:51:30 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:cd02:8b49:9326:693e])
        by smtp.gmail.com with ESMTPSA id l22sm3715072pjy.51.2021.02.27.21.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 21:51:30 -0800 (PST)
Date: Sat, 27 Feb 2021 21:51:24 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	"H . J . Lu" <hjl.tools@gmail.com>,
	Andy Lutomirski <luto@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Brian Gerst <brgerst@gmail.com>,
	"Chang S. Bae" <chang.seok.bae@intel.com>,
	Chao Yu <chao@kernel.org>, "Darrick J. Wong" <djwong@kernel.org>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	Ingo Molnar <mingo@redhat.com>, Jaroslav Kysela <perex@perex.cz>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Jethro Beekman <jethro@fortanix.com>,
	Kees Cook <keescook@chromium.org>,
	Miklos Szeredi <miklos@szeredi.hu>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	Sean Christopherson <seanjc@google.com>,
	Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-xfs@vger.kernel.org
Subject: Re: [PATCH RFC] x86: remove toolchain check for X32 ABI capability
Message-ID: <20210228055124.sj3z5n3o5y4w54au@google.com>
References: <20210227183910.221873-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210227183910.221873-1-masahiroy@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rKUY1oh2;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::432
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-02-28, Masahiro Yamada wrote:
>This commit reverts 0bf6276392e9 ("x32: Warn and disable rather than
>error if binutils too old").
>
>The help text in arch/x86/Kconfig says enabling the X32 ABI support
>needs binutils 2.22 or later. This is met because the minimal binutils
>version is 2.23 according to Documentation/process/changes.rst.
>
>I would not say I am not familiar with toolchain configuration, but
>I checked the configure.tgt code in binutils. The elf32_x86_64
>emulation mode seems to be included when it is configured for the
>x86_64-*-linux-* target.
>
>I also tried lld and llvm-objcopy, and succeeded in building x32 VDSO.
>
>I removed the compile-time check in arch/x86/Makefile, in the hope of
>elf32_x86_64 being always supported.
>
>With this, CONFIG_X86_X32 and CONFIG_X86_X32_ABI will be equivalent.
>Rename the former to the latter.

Hi Masahiro, the cleanup looks nice!

As of LLVM toolchain support, I don't know any user using LLVM binary
utilities or LLD.
The support on binary utitlies should be minimum anyway (EM_X86_64,
ELFCLASS32, ELFDATA2LSB are mostly all the tool needs to know for many utilities), so
many of they should just work.

For llvm-objcopy, I know two issues related to `$(OBJCOPY) -O elf32-x86-64`
(actually `objcopy -I elf64-x86-64 -O elf32-x86-64`).  Such an operation tries
to convert an ELFCLASS64 object file to an ELFCLASS32 object file. It is not very clear
what GNU objcopy does. llvm-objcopy is dumb and does not do fancy CLASS conversion.

* {gcc,clang} -gz{,=zlib} produced object files. The Elf{32,64}_Chdr headers are different.
   Seems that GNU objcopy can convert the headers (https://github.com/ClangBuiltLinux/linux/issues/514).
   llvm-objcopy cannot do it.
* Seems that GNU objcopy can convert .note.gnu.property (https://github.com/ClangBuiltLinux/linux/issues/1141#issuecomment-678798228)
   llvm-objcopy cannot do it.


On the linker side, I know TLS relaxations and IBT need special care and I
believe LLD does not handle them correctly. Thankfully the kernel does not use
thread-local storage so this is not an issue. So perhaps for most configurations
it is already working.  Since you've tested it, that is good news to me:)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210228055124.sj3z5n3o5y4w54au%40google.com.
