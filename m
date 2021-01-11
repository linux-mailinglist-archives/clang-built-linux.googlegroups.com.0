Return-Path: <clang-built-linux+bncBCS7XUWOUULBBYE46P7QKGQEZMN6NVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 103832F2288
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 23:17:06 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id z21sf168075pjq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 14:17:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610403424; cv=pass;
        d=google.com; s=arc-20160816;
        b=zpMh1LMmugek53mtM2NE46NKm1/da/IQUw1LWTC8hw6syxoU8d26JS6lUvNB8UVcpL
         AN+vV08IQB51au2/1h2Sxn05pPc63GrBLg1P4TkBMbycHdjWZfFyH4jCpbbT0/pcUVoB
         CSPZTaHC5/OqlNkDtZFBXMwOCrQxkTUpd9MqQ6qcv+YdGB0zzWyWCVoED0a9rpXUwcMx
         ewBAkOGkRZJutdQWP6j97lj2g9cfPi6qkhA1sEWyTFZjFsH83q1Le9gxh/TMXGRUt5zM
         843LPlkDBSuxkdzbqz68azX67fgM4UmGk0z/08uYQX+Z2mB6Vb8spXsiLEzzBhpQ1JCY
         /i9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KkLGC/5ITpGW1V9vDJCFhMFt1HKti8aFf3w5weEGk/Q=;
        b=o+HJvJ4NamL6o5C1IgPLK2heCBWMx3foQ75kvcwj4Z8wj/ppQPBs0h2mpmBHrnkTkV
         5Xfyk7TQUfOKLp2JYxA/4/97GwzzYllva/8X0OPcaWcDHsHXi393VFTAfAxBaoBtdR53
         wgWKTHhhbO+0G3BfBrYm5EFVOUyUE85PmIuOs/qeNu1KC5w+HOwaLAfGbs94sOxVS89q
         zEePKfEnO6HWl2rutqwoyIokLfU/dN4hgr4GP2A2JGLRL2du52qASNRPpwf5E++hTW3k
         QIwc4eT5pjsKvx79G+bTkn0L6FywbZdwYMysGM653djS+1c94lmGyS2EdTmVFzmtKYuX
         7c8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZatuqwkV;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KkLGC/5ITpGW1V9vDJCFhMFt1HKti8aFf3w5weEGk/Q=;
        b=Krqtvd2GEeo/CslhOhjkl8Rv/tZezf1UE+TkWnco7cQn9qxNuxAqLzZHByDIjLPwQO
         uPq6xwUrEXE52ynk8eiFGPfy6JplPH5QheBbJtuCt5MZDoTlhjmPibzmGdN1KSfFG0Zl
         u/MyEZtl6VrN9sH64auWhte3lvXfoa0mSVWJgUftjo0ZlT+ZzAyiqek/xxtrx3jGNlBV
         H026d0P5IL+9Fn55sqigfyQ5V2tn0Rn/olPR8wVpCUP1f4SLR9OfYp1v+Jpcdi+q+v4l
         MV+tF+6l2pXDAMA7xXxeN4ocKIFvYX2yjEpTALVprUl+EHDcFq/S9fpzwIoYl3GTSUpf
         gU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KkLGC/5ITpGW1V9vDJCFhMFt1HKti8aFf3w5weEGk/Q=;
        b=VtHE5F+NU7vasNyFDGgC4HWdMXCh9dn/LsIIVvfomLecCtyiW/KrRKfGkppeXkqEfL
         9L3rUeO2WH+m5GYKDcAMlGKoq3twvjQJXGMptSuceA1OrcQKrvhaBilXbKEEpDJl5Qsj
         E280Aj4g6du1mDk9P1x7VHgITVsHtHbeErsOALJk4bmYlXh2aFwQs5siy4ZUiYvGbgS8
         nJsfwxS+a7cJKOXMlXDcRstFzyofu20JEUnZ1BGwbJ47CAb7JiegbmHZpbcFTu0qmzPM
         jj+tJoZJiU7nzoY4p9w1wt1FDu+S9IcJLJ1OyEhw8JqLWIK8FYO92LwthQrV6IoUw5Vr
         rvDg==
X-Gm-Message-State: AOAM533Xd0vZq8KKkJx5ri8aH7dwvApjoZbn7NL19hOqCyPGq9D4j8v6
	2x8bn9o5dUY4DNHm2Mnzmpo=
X-Google-Smtp-Source: ABdhPJyZuSNxTNLu2kmf4HnfwTS/3+bN5U2QjVhTgUFVhyGBWR1SqX1TsUeB2z98T0KGoX0QsmSG3g==
X-Received: by 2002:aa7:9af4:0:b029:19d:975a:3ef2 with SMTP id y20-20020aa79af40000b029019d975a3ef2mr1705675pfp.5.1610403424766;
        Mon, 11 Jan 2021 14:17:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2c94:: with SMTP id s142ls327775pgs.9.gmail; Mon, 11 Jan
 2021 14:17:04 -0800 (PST)
X-Received: by 2002:aa7:8483:0:b029:1a5:b071:fb8e with SMTP id u3-20020aa784830000b02901a5b071fb8emr1478834pfn.48.1610403424125;
        Mon, 11 Jan 2021 14:17:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610403424; cv=none;
        d=google.com; s=arc-20160816;
        b=WIlwwFnlHPJanZjJCjsSCOYpVuhY3+FWscW5wpxW6nmM5sXBrePX8mUt9mfVmCSivS
         XlD6qqwUMPJcUfxs+q8Xc1Wjs0lE42JwoSgBRficVWXkO+AZyNuI9je8PWJiE+IdWlw+
         +x465bOqDrWajhg2Ux4S0L4TPUaNnQdyiWE33ESGZ3fzw3cVPoiEn9a3FCWW1rS56U72
         aEXoLqo8apsMG0hKL0WXW1RN4HO/f78lu/pEjuupwr/o90GIABn/RVMnt3iDeCfGzCR+
         xFSYZdsAI3EU7NSehuX4ztfpPENu24C0ANzjyuCy0h/zvKwV0Ua30sxsf6KQG79P/HEl
         Eglg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RMDxhrQVHVN144awFssHzxy+utkh0edTkpwVYmKHPTw=;
        b=nxUA0+bPmvM1Lc4NUmbx17j+wm7vKXQs5V87CZRur42C6Rs+lvJZLEtDSOV/7PDx2u
         bqOzIOLKarx5riccwD1cFTvBg/j9wMGGuSPL/5rk2KWGHUo6F5e7lKQjsQw8+8gyglLC
         DzJ9ErO6wqwYg2oZeAY5HCBDpWMQR9s6jQ9bmhSUPBRijoM9oQG+51o4VQeMd5AtqcVW
         /1yZDSMr1T5Sbc0VOkXih5XoimLQIVr1dv33ueD4KyHHpE5S8NTeCYdsWAafKT2h5vFv
         HriYn7VCBbFBwSz9Jv46OwM84fVktNC89iipK46IPjueUmxMJNGRAxAHx/Ldt5cvEBA6
         qklw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZatuqwkV;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id m13si55117pjg.3.2021.01.11.14.17.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 14:17:04 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id m6so129838pfm.6
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 14:17:04 -0800 (PST)
X-Received: by 2002:a62:5ec5:0:b029:1ae:6847:fa02 with SMTP id
 s188-20020a625ec50000b02901ae6847fa02mr1477037pfb.61.1610403423618; Mon, 11
 Jan 2021 14:17:03 -0800 (PST)
MIME-Version: 1.0
References: <20210106015810.5p6crnh7jqtmjtv4@treble> <20210111203807.3547278-1-ndesaulniers@google.com>
 <20210111205814.m6bbvekdhqs7pnhr@google.com> <20210111220909.2wexjehwiria7jem@treble>
In-Reply-To: <20210111220909.2wexjehwiria7jem@treble>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 14:16:52 -0800
Message-ID: <CAFP8O3+KBi5beri4rzor8NrwxVej2SFF-dxOQX0OTBLXJ5engg@mail.gmail.com>
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andy Lutomirski <luto@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZatuqwkV;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Jan 11, 2021 at 2:09 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Mon, Jan 11, 2021 at 12:58:14PM -0800, Fangrui Song wrote:
> > On 2021-01-11, Nick Desaulniers wrote:
> > > Arnd found a randconfig that produces the warning:
> > >
> > > arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
> > > offset 0x3e
> > >
> > > when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
> > > notes:
> > >
> > >  With the LLVM assembler stripping the .text section symbol, objtool
> > >  has no way to reference this code when it generates ORC unwinder
> > >  entries, because this code is outside of any ELF function.
> > >
> > > Fangrui notes that this optimization is helpful for reducing images size
> > > when compiling with -ffunction-sections and -fdata-sections. I have
> > > observerd on the order of tens of thousands of symbols for the kernel
> > > images built with those flags. A patch has been authored against GNU
> > > binutils to match this behavior, with a new flag
> > > --generate-unused-section-symbols=[yes|no].
> >
> > https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=d1bcae833b32f1408485ce69f844dcd7ded093a8
> > has been committed. The patch should be included in binutils 2.37.
> > The maintainers are welcome to the idea, but fixing all the arch-specific tests is tricky.
> >
> > H.J. fixed the x86 tests and enabled this for x86. When binutils 2.37
> > come out, some other architectures may follow as well.
> >
> > > We can omit the .L prefix on a label to emit an entry into the symbol
> > > table for the label, with STB_LOCAL binding.  This enables objtool to
> > > generate proper unwind info here with LLVM_IAS=1.
> >
> > Josh, I think objtool orc generate needs to synthesize STT_SECTION
> > symbols even if they do not exist in object files.
>
> I'm guessing you don't mean re-adding *all* missing STT_SECTIONs, as
> that would just be undoing these new assembler features.
>
> We could re-add STT_SECTION only when there's no other corresponding
> symbol associated with the code, but then objtool would have to start
> updating the symbol table (which right now it manages to completely
> avoid).  But that would only be for the niche cases, like
> 'SYM_CODE.*\.L' as you mentioned.
>
> I'd rather avoid making doing something so pervasive for such a small
> number of edge cases.  It's hopefully easier and more robust to just say
> "all code must be associated with a symbol".  I suspect we're already
> ~99.99% there anyway.
>
>   $ git grep -e 'SYM_CODE.*\.L'
>   arch/x86/entry/entry_64.S:SYM_CODE_START_LOCAL_NOALIGN(.Lbad_gs)
>   arch/x86/entry/entry_64.S:SYM_CODE_END(.Lbad_gs)
>   arch/x86/entry/thunk_64.S:SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
>   arch/x86/entry/thunk_64.S:SYM_CODE_END(.L_restore)
>   arch/x86/lib/copy_user_64.S:SYM_CODE_START_LOCAL(.Lcopy_user_handle_tail)
>   arch/x86/lib/copy_user_64.S:SYM_CODE_END(.Lcopy_user_handle_tail)
>   arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_clac)
>   arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_clac)
>   arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_8_clac)
>   arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_8_clac)
>   arch/x86/lib/putuser.S:SYM_CODE_START_LOCAL(.Lbad_put_user_clac)
>   arch/x86/lib/putuser.S:SYM_CODE_END(.Lbad_put_user_clac)

I'd prefer that the assembly can continue using .L and does not know
the objtool limitation.
Assemblers normally drop .L symbols. These symbols are otherwise not useful.

However, if as you said, teaching objtool about synthesizing
STT_SECTION from section header table is difficult,
this patch looks fine to me.

Reviewed-by: Fangrui Song <maskray@google.com>

> Alternatively, the assemblers could add an option to only strip
> -ffunction-sections and -fdata-sections STT_SECTION symbols, e.g. leave
> ".text" and friends alone.

I forgot to mention that --generate-unused-section-symbols=[yes|no] is
not added to GNU as.
Making the assembler behavior dependent on -ffunction-sections is not
an option in both LLVM integrated assembler and GNU as.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3%2BKBi5beri4rzor8NrwxVej2SFF-dxOQX0OTBLXJ5engg%40mail.gmail.com.
