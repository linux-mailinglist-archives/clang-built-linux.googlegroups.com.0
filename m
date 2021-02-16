Return-Path: <clang-built-linux+bncBDU43XP6ZAGRBB5OWCAQMGQEHFTL5XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id D63A031D09A
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 20:03:40 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id f185sf5149790wmf.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 11:03:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613502215; cv=pass;
        d=google.com; s=arc-20160816;
        b=n3sHu5xvMawB8ffJLYhEAuM/JkgJkvOb59IRhHRO0HxyJi9MW4zZHy3+0JVhXJecYr
         kgNN4scLruNc6F1+iVjyw7+jQyzUV9AtXK65LQXdlhdiD0bP4jukSpfUr+0VryP/RAAP
         aLgAzkbxHLhB5knH1rvnKxLr0R3abJ3lPbQmbZoF82gGZEbou3D/tE9eNbQOAJibvo5Q
         GjgF5Ty3hkScFxIPgS/D14wy7KQ0HZxv2m4hKisK2w4oYqCZfyM5twwwsokeHbqKFpAs
         zBLygUgTraLjlTNJrMW8bWOKniHeeoYFL4ZdI6NMHurUIke6JG+CbWPhjm42nSaGiv9o
         GnSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=33crIsL4Hx3mWOwVaOIQiZFFaABLlJyt7gVTvgRWw6A=;
        b=V27gekJG+iA9y06As/hSM5BQ7BX3fatG80JViTqY0eUe/qiAdPY4fRGiREy77PugH4
         K4mqxX3X2+5XBef+C2Cine0ZSQf4IifD1rG01ymVCrGx2eUPlDS8p7Bu9uBoFE8ngyCy
         iJpmzCwF7irPtOc6tGEzRO/yRZgdgiFK32grIIwOjQgfaLjuF+hhNJu/i7rUQQcCIQGE
         GGyktK5gWwuegQKwlySrs2KF3nMHL9v79RDSdIsrxglQMOkgIyEce9kr5IYjCdSOx0Pu
         0OYBRA36vMrD/K2wh3QIKJ7AvmgQBODBw0zbMOIVKREM/uum8HfWMDb9nK2X3QkAETJT
         wcwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=ggve0TTk;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=33crIsL4Hx3mWOwVaOIQiZFFaABLlJyt7gVTvgRWw6A=;
        b=lVjM5OnNiSudBNFt/BOWDDCQiN765ZMldghjggbV173EahgB+VgvJal9Z+OOJ3STF5
         M6DYqXZjRhVjETT82knJtM7CZ9bb4M9NN8eJEnqy9dwubMrE+0uuKo7Q7jb0gyduZPo9
         i75LqZkj+QwD4bRjIWNadOJ1TCtbWEjK9BtssdxWl+zq7uGI/LOCfoHRie0yEaQ1Oeaq
         av7Qnb0AjqNuxtDc///AzzB4THD4jW/++iqk34EV0weQBK74H4367VPUTYmam2B+HM0t
         4roBZWwymMbsaHUzF2ihHuYp3yQMm7YZUrR81mKt4/EPPYNO+0WhaNqzZdCAsR1eRqxr
         TlFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=33crIsL4Hx3mWOwVaOIQiZFFaABLlJyt7gVTvgRWw6A=;
        b=Wc4B89/hvcNjDivjbGYiTgqvCHmB1UN2LO4MLekAjZ3FVrgIcBASFfEIkbdJ6xGDIJ
         FQl2Fimvt7rY0DCx/dzHOvnOJfWcC6Xf7BlGelK77k/7TOIN2Afb7IWNQVnzZTBZ/Kem
         iF4Tvh5ggEPL+4qF+sGfCjPj0cGEF8B3hZPTdJI7bVSXg2SUGziBwrR+35/6RDu8V/dV
         bWl80ss5259g1v7fcAF7eiBp1frLbOGTiqENglnTzzBpIjee2Rwb+++/crXd/bzi7Lio
         loSdH+iFkMlu/FBpPZL+H0U59XUzhGuMduyCG7HRJtiXJUqLM4T/NEmzVNfRk5gtR930
         tpbg==
X-Gm-Message-State: AOAM5317S25dJQrZ+BdEW9n2HVLViuwpc9Fqg0JYB5F1aSsFyPOdGavq
	jbKcV726F0bQjhuArwVFjvQ=
X-Google-Smtp-Source: ABdhPJyIzDLrs/U36p9xxj9kscJJIZefHeVjFs+p7S6NIOjQ0m2imtSopyfPUF5xf0S5xmYSMuF05A==
X-Received: by 2002:a05:6000:186f:: with SMTP id d15mr25377585wri.237.1613502215658;
        Tue, 16 Feb 2021 11:03:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d8:: with SMTP id s24ls1444994wmh.1.canary-gmail; Tue,
 16 Feb 2021 11:03:35 -0800 (PST)
X-Received: by 2002:a1c:6802:: with SMTP id d2mr4272398wmc.32.1613502214971;
        Tue, 16 Feb 2021 11:03:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613502214; cv=none;
        d=google.com; s=arc-20160816;
        b=jMdr2ao7xhCCia8sTlWPgnkz04cUeuCIY7W6lw2/efGbpzDvrOq0PP6Yt8Z3aOAwub
         hC29W5mTXuogwpxiViaLlR2K/+5qwg5XuNNXkUku/+KO/GEOrG0vVNU+OY1y0M7KUMND
         nx3Yqw9Vba0kBrZJsECHRKhkrJD7g2OJUYNr+QU5WvksE56MpIyAfZ9joSy/WUy++6Ii
         MmqvjIrqDDZuWd5OPTx1EyRgBi4LF4N88cTvXPNnMfOURqPSGbVSbyZJTxtixEeBiiPh
         igr04EB5YMyfp3vfbuThQ73XdkhfzeIUxrUcQ6LEAnftuX2kTOv1xzKz55K/N/jYeajK
         85Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=dHbB+EP2VglqDnAFBAuYo6DPJMDc0d9R10alpdW3CXY=;
        b=VauPAzFvxDt1q9JFQuIupzVwOyt7kJKcoDm4/dhU3N6jln/5tYeXzYeWmj8FYjJXim
         ztVljw9PB42SDZewCmOzCMbxKG2DIWceVmL80IRAflZUbCouvEV1ZngUqMM4ZP3D8GhQ
         PCvVmOIggvrNN9L8tXhQJ+gxjk8POldi8hzE6aXLuTkP9vkhom9g5M2dtA4oVLoUsS/L
         Beb/cf6o1PoQLjCGYbiqy2Va0tXgkhI2kgz2O1BOJFQsUANxCgBoIyw2b/Y9RWVPXYpy
         +ntyKCZ5ONlI5Ttn1DdmSWiCzlE0jQ4PJtR429G4rl+c27M+vSwyfbcp0hydlT14bca/
         0MEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=ggve0TTk;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail1.protonmail.ch (mail1.protonmail.ch. [185.70.40.18])
        by gmr-mx.google.com with ESMTPS id s139si143464wme.2.2021.02.16.11.03.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Feb 2021 11:03:34 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) client-ip=185.70.40.18;
Date: Tue, 16 Feb 2021 19:03:15 +0000
To: Nick Desaulniers <ndesaulniers@google.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, kernel test robot <lkp@intel.com>, linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [PATCH mips-next] vmlinux.lds.h: catch more UBSAN symbols into .data
Message-ID: <20210216190212.1668-1-alobakin@pm.me>
In-Reply-To: <CAKwvOdnBgpRff6wa8u1_ogCm_pRey5d_Yro4UCa_O_=tib0FHQ@mail.gmail.com>
References: <20210216085442.2967-1-alobakin@pm.me> <CAKwvOdnBgpRff6wa8u1_ogCm_pRey5d_Yro4UCa_O_=tib0FHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=ggve0TTk;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 16 Feb 2021 09:56:32 -0800

> On Tue, Feb 16, 2021 at 12:55 AM Alexander Lobakin <alobakin@pm.me> wrote:
> >
> > LKP triggered lots of LD orphan warnings [0]:
> 
> Thanks for the patch, just some questions.
> 
> With which linker?  Was there a particular config from the bot's
> report that triggered this?

All the info can be found by going through the link from the commit
message. Compiler was GCC 9.3, so I suppose BFD was used as a linker.
I mentioned CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y in the attached
dotconfig, the warnings and the fix are relevant only for this case.

> >
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data299' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data299'
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data183' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data183'
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type3' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type3'
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type2' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type2'
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type0' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type0'
> >
> > [...]
> >
> > Seems like "unnamed data" isn't the only type of symbols that UBSAN
> > instrumentation can emit.
> > Catch these into .data with the wildcard as well.
> >
> > [0] https://lore.kernel.org/linux-mm/202102160741.k57GCNSR-lkp@intel.com
> >
> > Fixes: f41b233de0ae ("vmlinux.lds.h: catch UBSAN's "unnamed data" into data")
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> > ---
> >  include/asm-generic/vmlinux.lds.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index cc659e77fcb0..83537e5ee78f 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -95,7 +95,7 @@
> >   */
> >  #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> >  #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> > -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_*
> > +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_* .data.$Lubsan_*
> 
> Are these sections only created when
> CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is selected?  (Same with
> .data.$__unnamed_*)
> 
> >  #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
> >  #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
> >  #define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
> > --
> > 2.30.1
> >
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210216190212.1668-1-alobakin%40pm.me.
