Return-Path: <clang-built-linux+bncBCS7XUWOUULBBWXMU33QKGQEJ5DWNLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id AE13D1FC61B
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 08:21:15 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id w8sf812777plq.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 23:21:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592374874; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gnx9N4o7iggrTTLPd5g8vVo4Qf2s1+C+qn7qji2J6GDlvvhCIVkiI6uXCTgIjERVAD
         XlubpwqYR7cIwR2PkYk571xAkH2Miv1AWbG9DF7Y4yuhdxjTB3P1OgKg+vkkZktYVSbI
         v1zHo+EmS0sCxQQYmKHXbbIrOn/vRZimGjQGiUJoUzwDYIz8a+Y413TiqmMFX00WeMmZ
         Ed1p9sCkTet7gbfFgjDQW54+7sWY1mrTRi9g6TtrT3kC4HSU8eabf+tUZL7xY5na1JlB
         MxCnMDckbDKlh8pT5ICQrHNUwt7qN2OCT2bhZ/fNpTSMpseVXUvskMyXh0FbsWzP5rN/
         TYvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=PWoJcM9nRtJE8SsylxxZSsc3ydhz70S1wr+MUjy2R0c=;
        b=c0Mu1jvBtLNwjZWNoa45kNR0jTZYY/uduXfEMmDcy3X5wvAYcPRAw3IC+ZjMg+A29t
         PhH6W+nbl6EnTiQpE0FszcNdtAkHmzK5ltmTRTquhVqNanBajzJvU9fTiDFIAjBWtrqf
         f6v9wyqgOFan8iYWldCjgQmxAZ6GED6oYseYHV9PefQdo2C3Gwe0hViDf/DQXdgqf3q0
         /jmMlm+pXuMvODbDIlf4ZYOPtn0vrTSv9+iP8FHPCr7klMGEdomQN+iaKhfL2axXdrff
         BJVy9w5NZjz7F6v7gx8MLx+h1uon2vauNVhg3xX5eomMlTt5KyDShVPQLnGU2Rj38w2N
         OnlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thMbzNPd;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=PWoJcM9nRtJE8SsylxxZSsc3ydhz70S1wr+MUjy2R0c=;
        b=bDP3Ch2BsURvQ8V5XgLzT0xs5UxdRrbI9OXLrGxzqrRDQabOMOTNfUIfP+fxykwT8g
         lIOqJcMILRpcE5RNBHlqNgSJzye8eU/bKMfKchsSGyE/YPTO+lsT+ZF11cvUv/dAsR2P
         IpgvFU6E/xfdchiPW57e6jRM1x+DmH8TSfzyQtLh62w7sRRqA6fjk5mlFikD0O/mz0Jh
         a4f9uq5bW1NcwHGPibze3COiXSc1rZOdOQbjOCVcvu80jvDRK9UEevItBDvNvokQaBIm
         SWR2FQdN2t6IcYu8s4oHkP2rr9xxCKFqUJySK1pfvtU2hxJeAgXE0Xeiw7yWhexTHMRL
         stYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PWoJcM9nRtJE8SsylxxZSsc3ydhz70S1wr+MUjy2R0c=;
        b=fo8YCh2TpTUeNc18Jj7fSt+KnONRMVpa/FPE4XCmyZpSzK5/hfx4YFDO848G4AO67W
         Zy+flZy/8eNZy0Skfoau2XfzILU3zYjv+CGJxS7+7+9IkyQnmfQmf4krflo8upcA2rvq
         EDtkISOnImoxIYsdOWi54wgr0yTk/+c/yhggvdbAi02FI91OkjuOHtSNEPrAkCSMySCI
         0c61rbEezZCxqs2NfVE10OzNZNXpMc2g9seWX7cEijuVJwqDvEsKeefqf2fON1cJGStq
         tEaTmE5J423xgaN9I4ReB8TAzsj5WRQlavLftoFY8psZrx5fN37e1EARXJTpzO0drNvO
         5s1Q==
X-Gm-Message-State: AOAM532x+T+xYVI651R36MI6KrdM0+oEvB0+/Wzbrtwa1qxcpwb1agXT
	m1hYusdRkQsq+BtaIdNytFE=
X-Google-Smtp-Source: ABdhPJyYL58aQnHJx4AIaL0IUZzHGf4Qu37Y6OzbzvfqMEsnWhk5NmL4WcZMUVKgicHFDfzK4WEuCQ==
X-Received: by 2002:a17:902:fe95:: with SMTP id x21mr5427454plm.17.1592374874340;
        Tue, 16 Jun 2020 23:21:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:63d0:: with SMTP id n16ls342620pgv.6.gmail; Tue, 16 Jun
 2020 23:21:13 -0700 (PDT)
X-Received: by 2002:a63:2246:: with SMTP id t6mr5130264pgm.211.1592374873873;
        Tue, 16 Jun 2020 23:21:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592374873; cv=none;
        d=google.com; s=arc-20160816;
        b=VtrDwFXcluTwXrAQnhtBWDuXqgW9KIxXeqKZXHg8bH/7TvjwplJMalSDLJWHgmekqk
         NNHIAKFb25kMIyLbb1tu0ra/rnk4/XjsqP68gPw5+Zohsb46pb4Kcu+k0m1WtZ0uNwYR
         fkGnG/mt1VjR/tqan2/5HZuW8ejRVxFirXIS0nsYt4z1Z8jr73RvenH9hJC42iQ8oitS
         tQlOE/als36DGV+HvvnECNcd136p+z7x7hjmx+fq3lku9LH/GoM3CvGJjRT8CwlEIHLH
         wEgUijBNPxekqJ5KwMU1w2cSWXWLkqyikSflvaZOtDcjccaGAUBmn0RPrJts28FkOwUX
         CPvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RY0sI1g/LD72PH9iZpGuqFn39rpjPBN9D+rFSGGQFmA=;
        b=d3pWwueOUTCrKbTH4tSw0JO1EyuN4kI2pHaaZ5ohFobpR0LS+Bbu1TPkatCuPYVwk4
         M0bNN/N2pSC/sOqTFzU3Qs8AjYCdbRet2jDNriexl3hFerfjg2ouM5d2WaUOCh4jiYeU
         9sTLTWEGqYgWLXaObJChUIMlAKZ7ZnGt4MblvkxaP/tVPBkSCbPoE5/KN6d+C3xbBYXi
         DaHyfrF/dmP4s69Py4h0oTX6AtmRQP+GVJ4iGlWuLsg9fzCkzU6PdQ5Nu9uehs1T5ezy
         SjL/ZTp/yhH/5WGBqZNwPFv5/cqhXgyWUHIZ88aKl3uwJo3/eDTWjDHNRXWTQ++MFQ3p
         HCOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thMbzNPd;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id l9si176318pjw.2.2020.06.16.23.21.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 23:21:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id jz3so508496pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 23:21:13 -0700 (PDT)
X-Received: by 2002:a17:902:ac97:: with SMTP id h23mr5532904plr.64.1592374873225;
        Tue, 16 Jun 2020 23:21:13 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id t22sm4121927pjy.32.2020.06.16.23.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 23:21:12 -0700 (PDT)
Date: Tue, 16 Jun 2020 23:21:09 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
Message-ID: <20200617062109.woy2uyefdplw3pst@google.com>
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan>
 <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=thMbzNPd;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042
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

I have only subscribed to clang-built-linux@ so I might miss some
context. Just wanted to clarify what -Wa,-gdwarf-5 does

On 2020-06-17, Sedat Dilek wrote:
>On Tue, Jun 16, 2020 at 10:35 PM Nick Desaulniers
><ndesaulniers@google.com> wrote:
>>
>> On Tue, Jun 16, 2020 at 10:32 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>> >
>> > On Tue, Jun 16, 2020 at 01:21:46PM +0200, Sedat Dilek wrote:
>> > > Hi Arvind,
>> > >
>> > > when experimenting with LLVM_IAS=1 (and later using LLVM tools via
>> > > LLVM=1) I saw that we need DWARF version 4 for debug.
>> > >
>> > > In [4] I saw you simplified the kbuild info detection for
>> > > CONFIG_DEBUG_INFO_COMPRESSED=y.
>> > >
>> > > As I know you are working in the x86/boot/build area I wanted to
>> > > kindly ask what do you think of these changes:
>> > >
>> > > [ kbuild: Silence dwarf-2 warning when LLVM_IAS=1 ]
>> >
>> > Cc clang-built-linux/Yamada-san.
>> >
>> > I'm by no means an expert at this stuff :) I've only been contributing
>> > to the kernel for a few months and am learning as I go.
>> >
>> > Regarding these changes, for gcc I would say that given we invoke the
>> > gcc driver for assembler files, KBUILD_AFLAGS could just be
>> > -g/-gsplit-dwarf, and additionally -gdwarf-4 if DEBUG_INFO_DWARF4 is
>> > configured, i.e.  basically just do KBUILD_AFLAGS += $(DEBUG_CFLAGS)
>> > once DEBUG_CFLAGS have been fully set (maybe excepting the -f options,
>> > though those don't appear to cause any errors even if passed for
>> > assembler input).
>> >
>> > Eg, right now it appears that assembler files don't have split dwo
>> > output with gcc, only C files do.
>> >
>> > I would assume that should also work for clang and allow clang to invoke
>> > its built-in assembler with whatever flags it thinks are appropriate,
>> > and hence should avoid the problems you get now?
>>
>> I have a patch that cleans this up as part of adding support for
>> -gdwarf-5, please sit tight and keep an eye out for that. (I'll try to
>> remember to cc folks)
>>
>
>Please CC me, thanks.
>
>- Sedat -
>
>> >
>> > >
>> > > --- a/Makefile
>> > > +++ b/Makefile
>> > > @@ -803,8 +803,10 @@ DEBUG_CFLAGS       += -gsplit-dwarf
>> > >  else
>> > >  DEBUG_CFLAGS   += -g
>> > >  endif
>> > > +ifndef LLVM_IAS
>> > >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
>> > >  endif
>> > > +endif
>> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
>> > >  DEBUG_CFLAGS   += -gdwarf-4
>> > >  endif
>> > >
>> > > [ kbuild: Add dwarf-4 assembler option when LLVM_IAS=1 ]
>> > >
>> > > diff --git a/Makefile b/Makefile
>> > > index 4d796ce78888..c3bc1ff0d900 100644
>> > > --- a/Makefile
>> > > +++ b/Makefile
>> > > @@ -809,6 +809,9 @@ endif
>> > >  endif
>> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
>> > >  DEBUG_CFLAGS   += -gdwarf-4
>> > > +ifdef LLVM_IAS
>> > > +KBUILD_AFLAGS  += -Wa,-gdwarf-4
>> > > +endif
>> > >  endif
>> > >
>> > > Does passing  "-Wa,-gdwarf-4" makes sense here or is mandatory?
>> > > Is indendent of CONFIG_DEBUG_INFO_DWARF4=y even?
>> > >
>> > > Thanks in advance.
>> > >
>> > > Regards,
>> > > - Sedat -

-Wa,-gdwarf-4 tells the compiler driver to pass -gdwarf-4 to the
assembler (most common: GNU as, clang integrated assembly).

In GNU as, as -g a.s does very little:

0x0000000b: DW_TAG_compile_unit
               DW_AT_stmt_list   (0x00000000)
               DW_AT_low_pc      (0x0000000000000000)
               DW_AT_high_pc     (0x000000000000000b)
               DW_AT_name        ("a.s")
               DW_AT_comp_dir    ("/tmp/c")
               DW_AT_producer    ("GNU AS 2.34")
               DW_AT_language    (DW_LANG_Mips_Assembler)

Basically it just tells the debugger an address range corresponds to a.s

clang integrated assembly additionally synthesizes DW_TAG_label:

0x0000000b: DW_TAG_compile_unit
               DW_AT_stmt_list   (0x00000000)
               DW_AT_low_pc      (0x0000000000000000)
               DW_AT_high_pc     (0x000000000000000b)
               DW_AT_name        ("a.s")
               DW_AT_comp_dir    ("/tmp/c")
               DW_AT_producer    ("clang version 11.0.0 ")
               DW_AT_language    (DW_LANG_Mips_Assembler)

0x00000043:   DW_TAG_label
                 DW_AT_name      ("foo")
                 DW_AT_decl_file ("/tmp/c/a.s")
                 DW_AT_decl_line (6)
                 DW_AT_low_pc    (0x0000000000000000)

It emits a bit more, but DW_TAG_label may not be useful. gdb knows the line number of 'foo' by
searching the address of 'foo' (from symbol table) in .debug_line

The DWARF version of assembly files matters very little.

>> > > [1] https://github.com/ClangBuiltLinux/linux/issues/1049
>> > > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
>> > > [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n62
>> > > [4] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=7b16994437c7359832dd51d66c5c387995a91438
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173207.GA1497519%40rani.riverdale.lan.
>>
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWm8SRiNLGsu%2BSXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617062109.woy2uyefdplw3pst%40google.com.
