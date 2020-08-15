Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRPH374QKGQEZWHTUWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 01899245117
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 16:40:06 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id a19sf5471949oob.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 07:40:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597502405; cv=pass;
        d=google.com; s=arc-20160816;
        b=jVVs10G7gwA3KvaUjeZXhKMlRn7lOHYHg3USZ+ZRdjbyIcH3WDQJ+ajV3RdFNcR+lV
         wq4UAnDcSXdtf/w/tZUkr08bBcregs028TQQjhc01m0Wp4rEGIIK9KPXWcyLfaGTXRpf
         KkZpLzDxaivjFYMZ5TWR0nLtgcmSJUe3zv1KLfdL/aUEuThrpnGu3WejB25ajjEXUo8Y
         x9Ip84Yg6AoiVl5jZw0nAjcgWf/mh20kfJ6ftIXNuDU4dX0rlywSgjgcuHq3KNu2MCL9
         Nj+V38msQ89NXpR2LkyoFIksgH2j9eh0Uc37LTcyQdz16QhQ40qzwsqlybvYq1JCsljE
         GHfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SyelhuZ3xTa7oVXLGLYbVsTmvLZ7OuA48KiBNAC2/3g=;
        b=QCiWlZd/I0R/d5WHK99tNtLJMwpcfWeygpDRADzTdD2jUEqtLfvvUsPVUWq4wmixK6
         2zBxyCT9jDYNqdyzF7xeBD4DLSzBga14LZz4L5zHv+KH9YYAp7UV6Y7ZBiCTGIDRx1RE
         f5v3OirhTBL3obTXreQPYToLmiss6viMMUbLJx9ySTQLF9e9fEMlQ4zEYpRsQzZzaYkB
         RwB04vOpXxmlYwPms/RRfs/4aMkT/4PJ7gygeCVEizkhmEUhRXBWj0K3ZUkIawTvEtY1
         Qu2919x1vmnDT17vVqR3y/pjVB3ayz40U0l8CwEv5KGw1GsVOMODcQJEvrMd7Wd9pxd8
         tpdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VBqqzcKv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SyelhuZ3xTa7oVXLGLYbVsTmvLZ7OuA48KiBNAC2/3g=;
        b=Bi9QOFnJ3FTcDOEgKOsIuok8Ct2Y7NMg1xGbZhwCf/oa42R1WIn+E1wnGAUdfVl/Vb
         xXnGX4r6lzy98BITppOEszywbYaq6ENudmDB7vw+nmi6SJm93DSlE4i9AaEJE+HSU9To
         ZDxsinWcLRb/DVSwK/iN2HaPyD6rAJBEf4Xqrf08a1vgQVGESeSageVJ2MzLTOGUIhTm
         KNfxmWoTtGwnFAKtMD0RggZFruNClDm/t7CYLeVfalIgQr6B9CW+ei1BVxx+OKMAxY5I
         lbVS1A4W4KmSb5dhYbYgAubE3hcG+dOE0whY93yCaN3L00AO3/CuW1z0rb52vUmqBfat
         WkSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SyelhuZ3xTa7oVXLGLYbVsTmvLZ7OuA48KiBNAC2/3g=;
        b=U/Ilasmn+LuXuKi4DzReuS6Z2/3Q8tIkOLMOZTrsP1WtmId0e0gQZl+dVWd9pndKQz
         ZpDbupiMfeDw5ADKPlJFqpAogBs2Zhw06K4WtBHPOcBJ9gaPPjqG+rG57H4z3jXuoNp4
         My5ucjLAzaRm7CfAvnkHhbnxkoL/wvZ4zGAvJFlXJXaaL9xAcSCnwmXVAo7un+tWRcXE
         t0d0yg259bZfAKU9noFPUvSa06CmZEfDiFRF8aW5Se32ZFdMCUICz34qB/6usD02kd70
         T722p3ywSrK7+K3CJTxZNCsvT9Sunq4A8yek4NV8bO9S3amLmbQSEH2c0WYjMG7mKdoP
         8itQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SyelhuZ3xTa7oVXLGLYbVsTmvLZ7OuA48KiBNAC2/3g=;
        b=g2jBJJZoaUZzvzckqHzzDEIpkxwInceEMSyAlOVHdyHPJR6nLRQ59vhnSzVNgKx9Hg
         WD+Fq+pqHgUPT/PLEF55fhve0UVS20Op4RjdBC9coxY+UhKHRFyUEkipmLnQ4VHW4G16
         Hpl1RyJ5aWMs/d1fUc8d9LAPEhSSYwgE9wrqwqhmwkjnnIJnT+P756bQE32CZ1x26fRy
         IAICa0Uw80u0VA8qjvSJXsHwq65JQLTStBQwhkskr9ud/RaULPU60BzxTggSl7QRM2Xn
         AtKwN9YHKjx73CM3I+GmD5Z8HaBk70GpOsM6CBJ8x/KevbknycriXPKy1n1FyEE686vy
         1OoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Sfb417iPONIuJ3rNHcjkeoiSMlJm1p8kkMZnftoD4aAQo8Ac5
	nmo99lMBkeZkkQ3EZ9vmlMw=
X-Google-Smtp-Source: ABdhPJzHBB2lMUOEBuovJPTFKSpnpfiNQ8u/hlI7Hwc4RUNjhZPkseFpZvt+tPfvAYaw9RnlOYfqKg==
X-Received: by 2002:aca:ab87:: with SMTP id u129mr4639900oie.128.1597502405588;
        Sat, 15 Aug 2020 07:40:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a13:: with SMTP id g19ls2623917otn.6.gmail; Sat, 15 Aug
 2020 07:40:05 -0700 (PDT)
X-Received: by 2002:a9d:ea5:: with SMTP id 34mr5544914otj.199.1597502405271;
        Sat, 15 Aug 2020 07:40:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597502405; cv=none;
        d=google.com; s=arc-20160816;
        b=YNdKvyd2Fn2mnFEnTcq7KfLJAVHec8QEtxV8VOahlNtpO3G90AXCESFD56LtvHDJ7L
         cuKMnSqnx94MwRcoXGXdn+nSEzvKfq0UrG7+hOvK+NOtKsULae3NYGCvNoFz+xKDlQtw
         lLQOIiTH9mHOGiorxqCjvpFJzxq+Qymj2S/qyJwpxMr+7ZRozfmVb2CFKNjPMJtHZ/Xl
         dXDU6OTiOwpY1uCZ4gB88IASUTtj4aO+dijYYO4E0xtLJXMtRC4BhA1NfOUrPCZpkdm1
         X0seeFwDE6fgDhWoZ7jgTHEbkZ7/8V1o2bHjjfNpYsIyRuyeRvsiGkVeqMJMR+KP+84Q
         qTcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WPRAfYRnOms567RaauzpxUvBn9zcusLX8O5os0aln1o=;
        b=ukSILe0/6CBy0vL54cuYOdKywdVk7njqMFHIYNAihXZNmBcKsO/Nu4RXhiwKrCQ9pN
         VW6N9J3cyU7xys7FII1jOsyuWkMVSOe6e/Tl7OSFhCJ0DGhJXCFmi66SF+q8l+U9eLnq
         oqpMNnWdvZBsE2/tfSDUK4H5K2Xjh5koQkFKpSequvj5k7bMwMSM8z+sVPk2U1zE2Alx
         SD0T+h9ZitdTHrvqiTnJblQvHXfKVxkaak5W+fhYFKTaQfrIHevCtvvobr6s34KVXiev
         4hGGmE8fNnYYc2CJjS8FFusxKDrXC39R4XhtE1jDfuIyGfwioehyh3QUWrhBKl9lft9C
         i3nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VBqqzcKv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id z12si593413oia.0.2020.08.15.07.40.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 07:40:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id o21so10746637oie.12
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 07:40:05 -0700 (PDT)
X-Received: by 2002:aca:724f:: with SMTP id p76mr4533286oic.35.1597502404904;
 Sat, 15 Aug 2020 07:40:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
 <CA+icZUUjtu3fCNTngY52h3uRL+eUaimNJb0UNwj5v-QwKggs5A@mail.gmail.com>
 <CA+icZUWH5f4B_6eYy2_OOi45VjUkE_kN9akqvcOxxmmmM3TSrg@mail.gmail.com>
 <CAKwvOdnj6ObdpsdVYkDxWp-dVTTg=xMkBm84y419SNtLuAqfMg@mail.gmail.com>
 <CAKwvOdnahyqQQMdWhzpaYkJNi21Ux=8qyBmRnPidiT_RAn0YFw@mail.gmail.com>
 <CA+icZUVKBsp4cJV5V=ZtywEi=Ary5w-fNSijkNknU+U9xiKRRg@mail.gmail.com>
 <CA+icZUV5m+kPWpk0ovoWD+DK0Tn8=c0MdWnr2XTxStwXf_VF0g@mail.gmail.com> <CA+icZUW6vb2JgKCnWMx-yRU24benZNLizwk30HLPGwYrNDR-3A@mail.gmail.com>
In-Reply-To: <CA+icZUW6vb2JgKCnWMx-yRU24benZNLizwk30HLPGwYrNDR-3A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 15 Aug 2020 16:39:52 +0200
Message-ID: <CA+icZUWpExhm951r9C2XCrMXiZ4KXMioc_YzhxWW3i+tHNDqLw@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VBqqzcKv;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Aug 15, 2020 at 12:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Aug 15, 2020 at 10:23 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Sat, Aug 15, 2020 at 5:28 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Sat, Aug 15, 2020 at 2:27 AM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Fri, Aug 14, 2020 at 3:57 PM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > >
> > > > > On Fri, Aug 14, 2020 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > On Fri, Aug 14, 2020 at 7:29 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > >
> > > > > > > Thanks for the proposal.
> > > > > > >
> > > > > > > I have adapted it to fit my patchset against Linux v5.8.
> > > > > > >
> > > > > > > Both Debian's GCC-10 and a snapshot version of LLVM toolchain
> > > > > > > v11.0.0-rc1+ seems to be OK.
> > > > > > >
> > > > > >
> > > > > > Yupp, OK.
> > > > > >
> > > > > > I was able to boot FreeDOS 1.2 VM in VirtualBox GUI.
> > > > >
> > > > > Hi Sedat,
> > > > > Apologies, but it's not clear to me precisely which patch you tested.
> > > > > Can you please confirm whether you tested:
> > > > > 1. Arnd's patch that started this thread.
> > > > > 2. My proposed diff adding -fno-addrsig to CFLAGS_powernow-k6.o.
> > > > > 3. My proposed diff removing __force_order from the kernel.
> > > > >
> > > > > I'm hoping you were referring to testing 3., but it's not clear to me.
> > > >
> > > > Ah, sorry, I missed your comment on github:
> > > > https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674282107
> > > >
> > > > Ok, I will look at more disassembly next week and hopefully have a
> > > > patch ready, with your tested by tag.
> > > >
> > >
> > > Sorry for not being precise - I tested with solution (3.).
> > > Later I added the diff I used as mentioned in your above comment.
> > >
> > > See [1]:
> > >
> > > > In a 2nd run building with a selfmade clang-11 and LLVM "bin"utils is fine, too.
> > >
> > > I cannot say much to older versions of GCC and/or LLVM/Clang if
> > > removing "__force_order" works fine.
> > >
> > > Another (4.) solution:
> > > Sami tried successfully by adding "__weak" declaration with
> > > CONFIG_LKDTM=m (see [2]).
> > > I am OK if this works, too.
> > >
> > > Please, see my attachments.
> > >
> > > - Sedat -
> > >
> > > [1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674340760
> > > [2] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674182703
> >
> > Unfortunately, the diff from Sami does not work together with Arvind's
> > patchset...
> >
> > x86/boot: Remove run-time relocations from compressed kernel
> >
> > ...which got included in <tip.git#x86/boot> recently.
> >
> > I see the following:
> >
> >   ld.lld-11 -m elf_x86_64  -pie  --no-dynamic-linker -T
> > arch/x86/boot/compressed/vmlinux.lds
> > arch/x86/boot/compressed/kernel_info.o
> > arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o
> > arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o
> > arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o
> > arch/x86/boot/compressed/cpuflags.o
> > arch/x86/boot/compressed/early_serial_console.o
> > arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o
> > arch/x86/boot/compressed/mem_encrypt.o
> > arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o
> > arch/x86/boot/compressed/efi_thunk_64.o
> > drivers/firmware/efi/libstub/lib.a -o arch/x86/boot/compressed/vmlinux
> > ld.lld-11: error: Unexpected GOT entries detected!
> > ld.lld-11: error: Unexpected run-time relocations detected!
> > ld.lld-11: error: Unexpected GOT entries detected!
> > ld.lld-11: error: Unexpected run-time relocations detected!
> > make[5]: *** [arch/x86/boot/compressed/Makefile:91:
> > arch/x86/boot/compressed/vmlinux] Error 1
> >
> > When you need further informations, please let me know.
> >
> > - Sedat -
> >
> > [1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674182703
>
> When I revert...
>
> commit df6d4f9db79c1a5d6f48b59db35ccd1e9ff9adfc
> "x86/boot/compressed: Don't declare __force_order in kaslr_64.c"
>
> ...I can build, boot on bare metal and start FreeDOS VM in VirtualBox.
>
> For more details see [2].
>
> - Sedat -
>
> [1] https://git.kernel.org/linus/df6d4f9db79c1a5d6f48b59db35ccd1e9ff9adfc
> [2] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674378085

Fine with using Debian's GCC v10.2 and GNU/ld v2.35 (from binutils v2.35).

All details in [1].

[1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674406068

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWpExhm951r9C2XCrMXiZ4KXMioc_YzhxWW3i%2BtHNDqLw%40mail.gmail.com.
