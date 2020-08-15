Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBFNX334QKGQEXLC66TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 284B72450C6
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 10:23:51 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id d1sf7086735pgn.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 01:23:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597479829; cv=pass;
        d=google.com; s=arc-20160816;
        b=sB5BdmoPM3KKyuVAjosJ0yXkGEAQ+9Jb9TpJ03Cr0MGkUQaZPiygzVCI22x3zYFNxa
         JLWhKRMP7sbRwsWMvFEuByyVzyj5QybZ1Ia4XL2t60f9TU3lzexsQAl9ubqhKXtI8CpS
         6YhwI8xoj4mOVhjsifzEbvXm8REKgAHdl/bh5W+y8D/V3bVOZY5mVsajI82iupnvJpF0
         ArNdZYRpp7Ew0FrAq+MswoC2+VkeQcfpt28xT5HqL/zRByjLiBXM3E0X0CofxU2Oor5X
         JVV+XLXmnM5rnMriSKz1XZRdzYmDumImqxJEbi20UA+S9A9w/Ge07R4tbORh8FNqFgWr
         P/lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cG+MeXQg3ugE8WZKV/QTGb2yKj/gaEs6MVtliafXFZM=;
        b=ArAwkI9SoAaKxVXJ51JhSg2V4Y3TwO8LqrUAimPUeVbEkOhzJqg7AdV0RR5v9xhvTZ
         TrRsZoSS4P029X0yooqhS4I000X1XSBHfwXwyUgRUenalBsqTsKXImtznnefn8WSyP6t
         sL8YNbK1ak+icSTi8KbNU4nUwoqInpOWNUsb7tgj+cnKz9XHViRpTw1vMWnogSDNR5ho
         GUuJlZ+Te3N0MS+dDZNvPZTAJm86UDTihcEV+1jdxeIortIrc5QxaoNBAOSpz8+shpZW
         MLFE3ShzvSVECfeDGdeMDIwriAzRwj5oc9IImVL7VNyrxvAUlc60egBz9Uduyj6TeHcV
         UGQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XiE/mrB9";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cG+MeXQg3ugE8WZKV/QTGb2yKj/gaEs6MVtliafXFZM=;
        b=AAIA71g0HAt/nstQFd07wzaBf9ScE2ytI9v+33c6to0tPjAWfQYGTlgY83N61Oo6+6
         xK5tdSA6bTJhjRoc9pIUvzUcTmaYXTcdE9mG8HDoLA/cjnv5Bd44Gn7Jp9ESB737l+Us
         a1uFV4vQnO38vx/HyX7vUZEBgk++43jP3RvF2TroK2Xd+hFLBVd9Aykx51JZzWXnCw2z
         DRIj5VghKa0S6FzKq2UcdmIBOBmDjJwKLqV/Mty14fkHji1sbriAOCkUAJ1FqFCUokGc
         3lW3fDh9A+NbDf7hdabjeeDJA5EXXPrHFHZ28DW7ORPmeeib3eeCRcdLxllz32aCk+sZ
         fjbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cG+MeXQg3ugE8WZKV/QTGb2yKj/gaEs6MVtliafXFZM=;
        b=hRvZGxxFyZIrWEKH31Zw+ABHR9qfm09gCbCn/dl+C6EMG5CByacd1xWrC4Jfc6mZrO
         xWyccMRQcXk6nogkzt79SI7BIw73XHx1b1LJAUAZJDI6ZYjHXvzo3HAAZ1EBQKkLs9F9
         m+8wOWz4frsw9tOzKK9jTTKvQsutbqUM8L6qIC+RZAQ3xPQv4/R0rn2eDoX6C6fOmGqT
         yB203xq3TZJMw0bEPxNzDXjSqV4RwF62DQ0s+eJ+t+bjTdcRvLInpvzVY+vOJhs2iYK+
         XbRbxcszlgekXRZEOnHlMVDN6GSfOEHTCJCSu6HjpcGpnj//ke4jUufVHd9ubMH79QKu
         142Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cG+MeXQg3ugE8WZKV/QTGb2yKj/gaEs6MVtliafXFZM=;
        b=GQCmUoKSQ5CYDj/ZADeEWIKnieVngJUa3Tv+XLSYkag6xMJY6/XX98x6oV4a4G+vJt
         dn8s1LhYO71tM9tn1VJMeIkqRtf0HhURjVZWNKZrBjJmfUoCZTx2+pnLAMYTSIi4I2YO
         p/TO599L7kVTQ29iZOYpB0Ab25wuU7HdscMMgJBUrWTdvYd71oDcxdyuctv2Oex6PL9j
         T81S3gattWQlToHvSIVBoQSVSADNZPwEbFDV/7fpY5Xm4IEVnw8xdEIGX4llMPT9cFnm
         l4o3vC7ZnRpVvsuRHhuOb+QFscgu0DcGRW29q0l3EYuL+BNtXkqEFvVqO+xaXmZuhtES
         2fxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NdDgRKdt5+Juujg7kwzOlMtNkE80YZdg6d+Uulzr4vkFn7MHI
	Gnljrhy7otKPE3lqb5WxbMc=
X-Google-Smtp-Source: ABdhPJxG1pmN7gFc8uDCbsg839EX9e09ERPjG2ZzIdftdtSA9AF8RHswVEFE3JjBZKkuvxPcXTMp8Q==
X-Received: by 2002:a17:90a:36ee:: with SMTP id t101mr5550121pjb.47.1597479829351;
        Sat, 15 Aug 2020 01:23:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ca88:: with SMTP id y8ls4530684pjt.1.gmail; Sat, 15
 Aug 2020 01:23:48 -0700 (PDT)
X-Received: by 2002:a17:902:b584:: with SMTP id a4mr1569755pls.341.1597479828894;
        Sat, 15 Aug 2020 01:23:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597479828; cv=none;
        d=google.com; s=arc-20160816;
        b=DK8aIu6u4bJ4EJkIYQiv2g1d6BbdcdRFngI30oNnL13P6l4FWXYq0pK55FIQPUeDAy
         mcGeabYVvf5eHeD/WenFLmSqwrEkgJu9nHLMJDXNz27kWOTvMnMUcXaYouB4Z9TbOsQJ
         ofh3zC8szRo1mllwBJFPTT5MSapjy6HhO1WsScD7qjsxdweb3SV3C5/POa5VT42Y84ER
         CRawPRlJ8/Te6MY17c8NPLQs0C/nr2wOAGFtZrFkJZh4gNKxGCXRuZ6GQdTZFox40Rs7
         jZ67PHCslBPWqLVT+A4AG1KuDQdNgaT73/AnvaVYgK0VZtsWdmVpakG7ndEuvcuBzYuM
         UYBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5ZdA3YbzFyuiBEZEvu/DHmwuAZEanF9AbrLkGxCCiGY=;
        b=ypvxxoF4UhBE7VajPp9M+d+mnx6F9ZVhhXHdT1+IYGpYWfP2dZL4r+7kPj8a3tEHUX
         XlzfzK1ly/Mhp2sndrtmvT4+vd5N18JUFe9ShOq/GxpBsNjYdbusy73mYr93/DFyRFFs
         7KSPaaB6x8nMF9OzXBtXNBKFl/U9HlF4jnlDf0ADx98TaBl214ZShCkiGVVb/cEdi/ha
         gW84a9K1o0Q/wXbRuZavp4DxGXCmjuOZi/VVDd8oAme9it79JphBcPuW5bZeieBeVXxm
         JnnyvZbTI6RzuBmTdh66tLGFmjErc6kCHuLP4e3A3TumMUg0J7rQpLyVJwf8zAfpB/8G
         4ytA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XiE/mrB9";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s76si513273pfc.1.2020.08.15.01.23.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 01:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id c4so9401684otf.12
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 01:23:48 -0700 (PDT)
X-Received: by 2002:a9d:48d:: with SMTP id 13mr4914607otm.9.1597479828223;
 Sat, 15 Aug 2020 01:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
 <CA+icZUUjtu3fCNTngY52h3uRL+eUaimNJb0UNwj5v-QwKggs5A@mail.gmail.com>
 <CA+icZUWH5f4B_6eYy2_OOi45VjUkE_kN9akqvcOxxmmmM3TSrg@mail.gmail.com>
 <CAKwvOdnj6ObdpsdVYkDxWp-dVTTg=xMkBm84y419SNtLuAqfMg@mail.gmail.com>
 <CAKwvOdnahyqQQMdWhzpaYkJNi21Ux=8qyBmRnPidiT_RAn0YFw@mail.gmail.com> <CA+icZUVKBsp4cJV5V=ZtywEi=Ary5w-fNSijkNknU+U9xiKRRg@mail.gmail.com>
In-Reply-To: <CA+icZUVKBsp4cJV5V=ZtywEi=Ary5w-fNSijkNknU+U9xiKRRg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 15 Aug 2020 10:23:36 +0200
Message-ID: <CA+icZUV5m+kPWpk0ovoWD+DK0Tn8=c0MdWnr2XTxStwXf_VF0g@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b="XiE/mrB9";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343
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

On Sat, Aug 15, 2020 at 5:28 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Aug 15, 2020 at 2:27 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Aug 14, 2020 at 3:57 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Aug 14, 2020 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Fri, Aug 14, 2020 at 7:29 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > Thanks for the proposal.
> > > > >
> > > > > I have adapted it to fit my patchset against Linux v5.8.
> > > > >
> > > > > Both Debian's GCC-10 and a snapshot version of LLVM toolchain
> > > > > v11.0.0-rc1+ seems to be OK.
> > > > >
> > > >
> > > > Yupp, OK.
> > > >
> > > > I was able to boot FreeDOS 1.2 VM in VirtualBox GUI.
> > >
> > > Hi Sedat,
> > > Apologies, but it's not clear to me precisely which patch you tested.
> > > Can you please confirm whether you tested:
> > > 1. Arnd's patch that started this thread.
> > > 2. My proposed diff adding -fno-addrsig to CFLAGS_powernow-k6.o.
> > > 3. My proposed diff removing __force_order from the kernel.
> > >
> > > I'm hoping you were referring to testing 3., but it's not clear to me.
> >
> > Ah, sorry, I missed your comment on github:
> > https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674282107
> >
> > Ok, I will look at more disassembly next week and hopefully have a
> > patch ready, with your tested by tag.
> >
>
> Sorry for not being precise - I tested with solution (3.).
> Later I added the diff I used as mentioned in your above comment.
>
> See [1]:
>
> > In a 2nd run building with a selfmade clang-11 and LLVM "bin"utils is fine, too.
>
> I cannot say much to older versions of GCC and/or LLVM/Clang if
> removing "__force_order" works fine.
>
> Another (4.) solution:
> Sami tried successfully by adding "__weak" declaration with
> CONFIG_LKDTM=m (see [2]).
> I am OK if this works, too.
>
> Please, see my attachments.
>
> - Sedat -
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674340760
> [2] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674182703

Unfortunately, the diff from Sami does not work together with Arvind's
patchset...

x86/boot: Remove run-time relocations from compressed kernel

...which got included in <tip.git#x86/boot> recently.

I see the following:

  ld.lld-11 -m elf_x86_64  -pie  --no-dynamic-linker -T
arch/x86/boot/compressed/vmlinux.lds
arch/x86/boot/compressed/kernel_info.o
arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o
arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o
arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o
arch/x86/boot/compressed/cpuflags.o
arch/x86/boot/compressed/early_serial_console.o
arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o
arch/x86/boot/compressed/mem_encrypt.o
arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o
arch/x86/boot/compressed/efi_thunk_64.o
drivers/firmware/efi/libstub/lib.a -o arch/x86/boot/compressed/vmlinux
ld.lld-11: error: Unexpected GOT entries detected!
ld.lld-11: error: Unexpected run-time relocations detected!
ld.lld-11: error: Unexpected GOT entries detected!
ld.lld-11: error: Unexpected run-time relocations detected!
make[5]: *** [arch/x86/boot/compressed/Makefile:91:
arch/x86/boot/compressed/vmlinux] Error 1

When you need further informations, please let me know.

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674182703

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV5m%2BkPWpk0ovoWD%2BDK0Tn8%3Dc0MdWnr2XTxStwXf_VF0g%40mail.gmail.com.
