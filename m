Return-Path: <clang-built-linux+bncBCIO53XE7YHBBL4PW74QKGQEIFQ7B5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD9923F43A
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 23:29:20 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id c3sf1804026ooi.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Aug 2020 14:29:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596835759; cv=pass;
        d=google.com; s=arc-20160816;
        b=UaWnqLt5foBV+raJmHK3TcYsa0IaOfZyOLou0hP+nUVCphz8rdPcojBCeDI4yvQTJb
         Bo4Q1v0sau1X72xW4THW0HqhNOmoPDvKpRvr5pntVvX0IDUeCZX0XsSgRrld2p9I5MPs
         /EV68l/xtcbz0JV6JsMNDD0fUPuJFD82aHQwkj45aUHuJ+i4mtvRdEIXVQnLm8Ty4Bxw
         n7cLfnKSYfpFTX/ZvObReeB3vSQF0aHiheX35oPd1tDdpWLwNI/AHxJHizJZn4lg5XaS
         dUvHNyTWjhM2LBRkuip4r/PCtQvZm0DCZrt3FDLfvuqn3/y+y0kvZsNRlituOQ42f+0j
         DpXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=0ItWIJ8IdB4ELlhJeYMk6xYFaEpGNsKoWglqEQnGpz4=;
        b=AYYglSTcdtpl4sUzaZNe/1x2/2UnFGVmSgaTn+TAcF05ObpuRLO7eFhab3YGiY/85W
         SqRbl7zn24DnNao4cZXWsfO/aFD5y8G4T37VEfQJv52KFn0xoP89MR6PSo2R4hPPbPmn
         Dasg2oM/abavw04RzuRHPqCNipOpR8o2QzEeIiwwZFIouRpvZt5mgE1WlUA12Dyzfo9j
         hg3I3H0NRo5zA9NcEWi9qbhmBa8tqvkYPR2fNGFczh/ikiG5PdvKNRdhvRxwZPX9XVhy
         xXJsbDp5tFoABi7CnyMUMp2iYHcJtyFqKnqi4VEnO4vvlmqAZ43F03SA2OJOv5hwJbVl
         gTdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=noA9x5sq;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0ItWIJ8IdB4ELlhJeYMk6xYFaEpGNsKoWglqEQnGpz4=;
        b=pr4S3EqI4AfKehQryZMmIsGyugZe14wZOQZTtMCIEXXof4c2LKIzgJ0R6Vw7bwmyG8
         9eJHbPwiIT+AXF6l0fd9RHvOk+xOS6sWWZcwgvw/FjQlzVGk27Cn3UbZfRcHIKpHy93q
         JXuWbMMod9K/TlI+1W5wf2Mt2stFls6X79PE8avTdO5GMFqnFf+ppy1EisDWAnQuM/7C
         JfUUkDizpkOVMQLFuJelMrOZmjvG0zlKv2BzJDJSNUg2X7AsXoeEOPPF/wmvQXjN2sVg
         VVVH86FPkIwk3RMS4DvZFU/PNj1iJW9gu0h+XIRmpR55Xx3LUYqWzHax+YTlQetGSP+0
         c9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0ItWIJ8IdB4ELlhJeYMk6xYFaEpGNsKoWglqEQnGpz4=;
        b=jTdMZge2maXRtYXOobg3kYIrCph62AFjhNXkt/OAQTp2kNzi4a4UHCWEgKvSOmu/NM
         NO9qVEAqId6IFLLtSeXFYk1aqF5duNQoscTozSZOZfEUMI6ttQKWwxS4G7Ap30esDiVW
         aWYT2fDHer5mySU1K/iC/PWWyddEg/ySL+qfSnIZTkpglwphJR0x8VTTz/pTg/5B4QFN
         6qKmUFiKJZ00NSQ3E4KAXZPrCh7KysE0FTFlUNxJ4ugUA+E6i8QAwXJg0HDaj7/jD8cc
         /XP00YTpXSQ5GmCuPoyrjbVZP/1CtgG6DQ+67Y+9LvBm8DmJ5UAnet9Gli/msybC5dWW
         Kgjg==
X-Gm-Message-State: AOAM532dPmDUEZ9zaL6p2drV4F8F/FHLkNPu7Ra4415yKLqjfx5o+GK3
	RXVzydiioMNk5q6rkfTnfdU=
X-Google-Smtp-Source: ABdhPJycQrHVGlS3kwuFs/sdgx5Esw53TBH/vONkzeq59BVl/oi4DRJx5ALbfa7d7TQKVGfV1riVEQ==
X-Received: by 2002:aca:f457:: with SMTP id s84mr13086673oih.138.1596835759314;
        Fri, 07 Aug 2020 14:29:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:8cd:: with SMTP id 196ls2387036oii.4.gmail; Fri, 07 Aug
 2020 14:29:18 -0700 (PDT)
X-Received: by 2002:aca:2101:: with SMTP id 1mr13221519oiz.170.1596835758868;
        Fri, 07 Aug 2020 14:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596835758; cv=none;
        d=google.com; s=arc-20160816;
        b=yuCbkeJb+sf141aepYKxWcWi6B3pBZF51WEnEmvZkgvcNk7c5lYJLnw4nwGnFMgKc4
         L8EjjSWlQvKDQI77Zuw7zz14YFS6x/VjX8pBlTgBsj836z/iWq2w1ivnr4G8LNc4oEFz
         YEcHuvefLBc/lFkn4iqvJ+G5NOfdxpdpMtcFPhA0G4h5FGba17wSH7jrrEpt1Nozh6aQ
         bGBHVy8/SCOGUOo3xmbbllxCq64DRDnqTpkcT7YDmq5Ww6T8Q7bXH6b8P3fs0YkZRYf5
         tJCKXs2JI9kGogFFAGt3Q8om8DawuGACnFTc8S8vzj9kioBu7xWHhy5QU5SBCDR+h7OY
         PcNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=6OCdZ+ZeCbuJb568osbDrIdPBoRSxq8uWrbOnWLeK5E=;
        b=xDf2KI2S0mRWsF++JdL9aZJkrhM0cg7W7VenZAv4zPnlBP6k6GdwjQaY7SdiwO4BIo
         MIaT/7OhmFkOCBTydxq+cIwrK2q0fVqqVtLI6iAQwkudTHQtDEyhAw/27dheyCM9I6+6
         jszUsedMDxP4yH2Jn9QMlftVpboj1m5s09DW6eePnTkVNLL31sfNE49XeasbYa6sR89v
         hom+OjLtQXQrOpyQxXWRdklSafVUGfmSg/bXwz1tqX5/BreQFXoitTDlsvZuq08q7hWP
         VQWoNUvw8NUx+4Njny0vxNe7gCGvbfbgmkDRl2zEH4YJJBSImnfB9eEwqDUTya+5dCgQ
         V8ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=noA9x5sq;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id c199si576457oob.1.2020.08.07.14.29.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2020 14:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id j187so3013214qke.11
        for <clang-built-linux@googlegroups.com>; Fri, 07 Aug 2020 14:29:18 -0700 (PDT)
X-Received: by 2002:a05:620a:234:: with SMTP id u20mr14935734qkm.54.1596835758328;
        Fri, 07 Aug 2020 14:29:18 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t93sm8636947qtd.97.2020.08.07.14.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2020 14:29:17 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 7 Aug 2020 17:29:14 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Fangrui Song <maskray@google.com>,
	clang-built-linux@googlegroups.com, e5ten.arch@gmail.com,
	stable@vger.kernel.org, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Dmitry Golovin <dima@golovin.in>, Marco Elver <elver@google.com>,
	Nick Terrell <terrelln@fb.com>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] x86/boot: avoid relaxable symbols with Clang
Message-ID: <20200807212914.GB1454138@rani.riverdale.lan>
References: <20200807194100.3570838-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200807194100.3570838-1-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=noA9x5sq;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Aug 07, 2020 at 12:41:00PM -0700, Nick Desaulniers wrote:
> A recent change to a default value of configuration variable
> (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
> integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
> relocations. LLD will relax instructions with these relocations based on
> whether the image is being linked as position independent or not.  When
> not, then LLD will relax these instructions to use absolute addressing
> mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with Clang
> and linked with LLD to fail to boot.

It could also cause kernels compiled with gcc and linked with LLD to
fail in the same way, no? The gcc/gas combination will generate the
relaxed relocations from I think gas-2.26 onward. Although the only
troublesome symbol in the case of gcc/gas is trampoline_32bit_src,
referenced from pgtable_64.c (gcc doesn't use a GOTPC reloc for _pgtable
etc).

I'm a bit surprised you were able to boot with just _pgtable fixed
(looking at the CBL issue), there are quite a few more GOTPC relocs with
clang -- maybe LLD isn't doing all the optimizations it could yet.

This potential issue was mentioned [0] in one of the earlier threads
(see last paragraph).

[0] https://lore.kernel.org/lkml/20200526191411.GA2380966@rani.riverdale.lan/

> 
> Also, the LLVM commit notes that these relocation types aren't supported
> until binutils 2.26. Since we support binutils 2.23+, avoid the
> relocations regardless of linker.

Note that the GNU assembler won't support the option to disable the
relaxations until 2.26, when they were added.

However, it turns out that clang always uses the integrated assembler
for the decompressor (and the EFI stub) because the no-integrated-as
option gets dropped when building these pieces, due to redefinition of
KBUILD_CFLAGS. You might want to mention this in the commit log or a
comment to explain why using the option unconditionally is safe. It
might need to be made conditional if the CFLAGS ever gets fixed to
maintain no-integrated-as.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200807212914.GB1454138%40rani.riverdale.lan.
