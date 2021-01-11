Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBEEZ6P7QKGQEH5CQH7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9472F226D
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 23:09:21 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id j37sf242445pgb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 14:09:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610402960; cv=pass;
        d=google.com; s=arc-20160816;
        b=E0OK9IlhF843Lerq+VgrPtDerCYazdBvkJrW4BMJt9lM7ey0+56+Bb9zfH3qJIGjG/
         xLs9EC0YG8CIano9T9xh9edh8vBU65eSQEhNiZMTIgyveuS9U7SmFbbu0NPcuD4BtUZU
         Nf58Y3QHpf8BRotOTZERkK2NYjv7URnA6PHDLBHigos0ZfPKx2rPQs91qhVPty9aFKJM
         Tk2DW+qw/7ieeC4+71X1lXFFX3o31DgF9UL3geynG4zNuxdk31Ox5gYCzBSPebEen2Zq
         eCR/khAZSLaXbEd5/yhSv0NDTIURj83aOcGpAoawZ4N90Nlv3ObItgB713h/8CsVP+7/
         kJGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=w6J4bFSx49Lh1XIQ0RF4llgcBTF45hCMTLbUpRBJnrs=;
        b=HvRisB0QUXx5sMNaZ7Of57VY/UyjBBbPj1uoPKAIIMFqe4yaT2DXgHbz3QUFcGDQy1
         y6EH5vdRY62asRsUzRfTuqJMDe7ixydL+f7zEK4mRINebJukqN4AbiTkYXyswC+E6wup
         dKttF9Fc0maRz5J4o3qm97z/EBIBQcFNsQo7RzAzy/AeYzpgBsYd486hsEzCrlCBqf+L
         ZAhC0efBlqbyf+F6NKsSS06SATo2xAQ4SZXJq6XLnDHGjOKBowZ10DxHGG60JhXmSW14
         3+ONBU0CuZj02bngbMNAlCcUK6XrgXdzwtN59i/sMrWeaNMaICDiu+6QKU2B+ru1XCCP
         D3cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xc1wAeFB;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w6J4bFSx49Lh1XIQ0RF4llgcBTF45hCMTLbUpRBJnrs=;
        b=LRz8XMJxmBCkYEsiGiQx/RG52MLqB6YeI0cg6yfMZfPTtUlXTQDvWoFFsf6ymK64+A
         krTRebF1KkEBJJZj0m3zSeP3nfGchP+NoHI9Ifw32zhP3ALmn5DCCYdVUKMeFJRcJi9k
         /FqzbmL1xrPYj44A0XQd9QI6bux7kE3gOdHM7bEpFRkzPcVDAGHjNcTbEgAJYeWlTOP2
         SF6USzVIg3yT+MfonevaPTYAXyxzOgri6Rj5tzDms50iN520yT9bQCUHzhkZwGp3ChVc
         vBRR/pjwS2qO4kMAJ0S5LW7kvdlCcAU5xmMhb0vL23zRvUIqboo/tVrUSZU5K7PEkJBC
         4ULA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w6J4bFSx49Lh1XIQ0RF4llgcBTF45hCMTLbUpRBJnrs=;
        b=hnqCWC50ScvxNsRkqJfv7lzJUbFOzYmly92OxErqiZ/hjnfpLxkfv0vIabN5q2lwYM
         X2h8sAiErxTU/8p+Y5jEuXgR7yoqWFpcvqtA2rLZmUdRoFVxKJKfqZnnIOBMkJvteHFN
         NzYnMdZ9OKVQC6hBkgrhfvSE/D1pAKg/8VCCKXkAE47qXS3e0i7d5fS8ttcAuS0G72nY
         nI3Tc8+dkKN7m8eTS3dL1mtNLK88dBASf0rJvp9VHiYttH+fE5C654/qBGn5Vfoji8W5
         zq6K3tXNTHaWlfctGn+H/fTSI+so9CUKteDwEIuW4iIT0AYMgZl6oEDUA1Fxuwc5iNjv
         +zMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308kbAY/N7XXnUjZ7M/v9QbmBqQL7MK4X+ionD4uIpXw5/gd3oz
	VrlyYbQAQ54HLAW8lk++WqU=
X-Google-Smtp-Source: ABdhPJxNpGo/LGUn2Vih/40C+HiQ2zVImjL25g8+op5nMzK3Z3T+5c7r/ke0/kduaVhDA8Ep9yH04g==
X-Received: by 2002:a63:f608:: with SMTP id m8mr1508440pgh.11.1610402960509;
        Mon, 11 Jan 2021 14:09:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d4:: with SMTP id h20ls304264pfq.5.gmail; Mon, 11 Jan
 2021 14:09:19 -0800 (PST)
X-Received: by 2002:aa7:86da:0:b029:1ad:e24a:8451 with SMTP id h26-20020aa786da0000b02901ade24a8451mr1647326pfo.39.1610402959865;
        Mon, 11 Jan 2021 14:09:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610402959; cv=none;
        d=google.com; s=arc-20160816;
        b=c75TEHk0JzMDNHgnK46NWX1i6HcIjsLe5WVwVis729DpJzfklfaSZtw2BKcyWpXLW0
         bUJV5uTZAeAbiiaktwjdaajH8/SJ7K4CxWyVLq3eIvDaeOoW4ZHv9zsquZqetDlsQANN
         grsWsglSXk0A3A+srOC3hLtIX3GY7U8F9feZJI9QAEBcevpD18uxeM8rJKaZwMxYt44V
         +/qE/PEoQn0tpO6yk9DwcQ2WCJCp7jKIavUzx0CDb3qCKDUwDxgc5khbdCO13RvzHYRf
         8jDGMi0Y12ldoIjBFA/Di0x9a6FeamA5ZdiFWIzqGwLIHyZd2KcTx9ijxgS3xRwXgBxJ
         VgIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q8xcEaScocMaIAyGo9r9RJw+Py5fHWtPNocsWnO7jC4=;
        b=gBczSKrR52A/ZlnstzGeMoY/rGrChEb+SGmS3fcB5RAZeu4+YyAmAhT68hLgQxqAG2
         xMv6MzPWhkNchsJsNAbsOecJxU6JBrUB9g/EDDEkvaR0MtJzcQAsxUwLefGRDTyc7GRm
         LgVB8rJCi79i1UQaqrM0BC3+jhm/yBl6w8ZOHhNCIRnjYqU6xHLjt7gw80hRfvvSoQfa
         IpOu+5OzFOBm/x4t2IHF0mC3lcFF0kuHRq2nZEbOpSgi+Q9IxhgU5ZBLl+MYGRfeoIMT
         lIKxh+SoGPJoF4YN8SL7+hBrvGIaXQbed/TJ/9U27SR3vatETEMegl6YNE49GKGHhrH5
         UZ0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xc1wAeFB;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id d2si60402pfr.4.2021.01.11.14.09.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 14:09:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-W4ny10YCPTGLemtj538iuw-1; Mon, 11 Jan 2021 17:09:15 -0500
X-MC-Unique: W4ny10YCPTGLemtj538iuw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41733809DCC;
	Mon, 11 Jan 2021 22:09:13 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 830315C5DF;
	Mon, 11 Jan 2021 22:09:11 +0000 (UTC)
Date: Mon, 11 Jan 2021 16:09:09 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210111220909.2wexjehwiria7jem@treble>
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
 <20210111203807.3547278-1-ndesaulniers@google.com>
 <20210111205814.m6bbvekdhqs7pnhr@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210111205814.m6bbvekdhqs7pnhr@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Xc1wAeFB;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Mon, Jan 11, 2021 at 12:58:14PM -0800, Fangrui Song wrote:
> On 2021-01-11, Nick Desaulniers wrote:
> > Arnd found a randconfig that produces the warning:
> > 
> > arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
> > offset 0x3e
> > 
> > when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
> > notes:
> > 
> >  With the LLVM assembler stripping the .text section symbol, objtool
> >  has no way to reference this code when it generates ORC unwinder
> >  entries, because this code is outside of any ELF function.
> > 
> > Fangrui notes that this optimization is helpful for reducing images size
> > when compiling with -ffunction-sections and -fdata-sections. I have
> > observerd on the order of tens of thousands of symbols for the kernel
> > images built with those flags. A patch has been authored against GNU
> > binutils to match this behavior, with a new flag
> > --generate-unused-section-symbols=[yes|no].
> 
> https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=d1bcae833b32f1408485ce69f844dcd7ded093a8
> has been committed. The patch should be included in binutils 2.37.
> The maintainers are welcome to the idea, but fixing all the arch-specific tests is tricky.
> 
> H.J. fixed the x86 tests and enabled this for x86. When binutils 2.37
> come out, some other architectures may follow as well.
> 
> > We can omit the .L prefix on a label to emit an entry into the symbol
> > table for the label, with STB_LOCAL binding.  This enables objtool to
> > generate proper unwind info here with LLVM_IAS=1.
> 
> Josh, I think objtool orc generate needs to synthesize STT_SECTION
> symbols even if they do not exist in object files.

I'm guessing you don't mean re-adding *all* missing STT_SECTIONs, as
that would just be undoing these new assembler features.

We could re-add STT_SECTION only when there's no other corresponding
symbol associated with the code, but then objtool would have to start
updating the symbol table (which right now it manages to completely
avoid).  But that would only be for the niche cases, like
'SYM_CODE.*\.L' as you mentioned.

I'd rather avoid making doing something so pervasive for such a small
number of edge cases.  It's hopefully easier and more robust to just say
"all code must be associated with a symbol".  I suspect we're already
~99.99% there anyway.

  $ git grep -e 'SYM_CODE.*\.L'
  arch/x86/entry/entry_64.S:SYM_CODE_START_LOCAL_NOALIGN(.Lbad_gs)
  arch/x86/entry/entry_64.S:SYM_CODE_END(.Lbad_gs)
  arch/x86/entry/thunk_64.S:SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
  arch/x86/entry/thunk_64.S:SYM_CODE_END(.L_restore)
  arch/x86/lib/copy_user_64.S:SYM_CODE_START_LOCAL(.Lcopy_user_handle_tail)
  arch/x86/lib/copy_user_64.S:SYM_CODE_END(.Lcopy_user_handle_tail)
  arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_clac)
  arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_clac)
  arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_8_clac)
  arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_8_clac)
  arch/x86/lib/putuser.S:SYM_CODE_START_LOCAL(.Lbad_put_user_clac)
  arch/x86/lib/putuser.S:SYM_CODE_END(.Lbad_put_user_clac)

Alternatively, the assemblers could add an option to only strip
-ffunction-sections and -fdata-sections STT_SECTION symbols, e.g. leave
".text" and friends alone.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111220909.2wexjehwiria7jem%40treble.
