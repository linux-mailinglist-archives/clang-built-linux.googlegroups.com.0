Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBYVC7L3AKGQEOGLPKXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id B70D21F1FE3
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 21:28:35 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id a20sf14328110pfa.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 12:28:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591644514; cv=pass;
        d=google.com; s=arc-20160816;
        b=y4k7jrRn+q+zPeex1/vOcxVYiNa95KHYLQC0K2hjBwZtcumuWaTXTZ4rmM0J/Bl3dG
         ZcRUag7NGPrIguurZGTXWCt0d5A89vTssrzQ0VbR/FKkefYsnGdFYZvgOFNIzOkV9RFA
         EIeB82WycK9+UjI9zqxy1dLg+pAfDfCuQkuXG1EqNXi+HX4rgcDfAZlobnWCGbwEZF6r
         2u+HkTS3P0C6JDu7Azhj3X8+2Tm1pC12DQ2S/uaTpuK3PrCoXB32hTKCpm0qxNaoHS+t
         YEWCFS19quAC0nJLC0LCAIKbkra5NiT+2jUsNo51+O/+TnYb9GoXT0PPEDnUkx5/Ul9T
         BoQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OD10rdQgt084ya9GnSUBL0LL09Eq0XVG0gaInjT0CFk=;
        b=S3WAcezRNhu4gPxzoA+awd7117MDxrwC74C5MPAvf3vfBW5wgbRPh22n3yM6ZHbZ1m
         D8k6hZPYnv5KQHckBqFRzT0ne8uavv36fTszFvf0ET1eRvyBHzsXMtXRGupgaMpJIAqg
         D5nyxHZLSfqmZ6QGh33NtiY6fElroiPedXMwiFBdhQ1mlLPttVdk78hf8SkG3HOfBiGp
         GvjVsaQOuMGuc2TY+0njOH/hXrLQIyGBTUg9X0Z9uWWgQ4byJqrVzxdO9W2e7WnHSM8S
         DknkMgnkut0yZuUq58NYE/XbhlLns0MZyZ2QM01oAyipWJ5dXNVDZCDUMRqRKGAQaXRO
         c0MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=Pgtv+SSc;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OD10rdQgt084ya9GnSUBL0LL09Eq0XVG0gaInjT0CFk=;
        b=YEI/eFhN1ae7eTzKcbRMgekFNyECwnZbSNjlBVb6PJqslgFTP2VYwHJpTIaEFndXLU
         4OC5EUe9w9Op8elzU4OqqP+yjiuvAmtPvoQhYEeuxyStHEWSs3g8dycvsVMYvmqrleyi
         vAfpHEinHx0bvynUM1J8eShFwPicJlIg+5cs73hEIdAzqlToj7QoMqYJs5XwzB9p2l5l
         OImWviSxhQOi2Xi69vpE09NpbR6Pjsks5kER0v8PW+LmcwSoSkIVrRc/FCDEzRMebGfB
         StaAuchk/Kgj2RQ5DbmPPBSjnKQV+fdgBF8aB0a0adzmCjgtUbRGBebfyy+CszJqZ/RN
         cHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OD10rdQgt084ya9GnSUBL0LL09Eq0XVG0gaInjT0CFk=;
        b=ET67vrjuDGsoPkrRA0oz7Yy51t2ilb2sm8ZUcVrCq6s7gDXUQbrh76zo+iUofyk4nq
         nu81X0cDhwA5V9mF0zPEuZuJFhy+6bf4Umxp4QAFM1D5qO83932BaK1oidDa4dcufM6Z
         6W8UvzceqwPLh048NKPa92x7MYKByl9xRbUjYfCdD/BmRXNfPsyP1Uu36CyjVH6oFQ9N
         9D86L/iIIbq8hQsfsEI5hsiQkAUlxwr676/DQDivvL0KMmM8JXzQhcVuPbz8irj4ezay
         qcXOTZ0nihj+X79HSQkjCb/sPQclfwwhFwA+nq5lbW914bK4wvjcLI5H0Z8tTQgzZayE
         OCMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Au9YMo6SoR6sIEYzRnJLLxfDB6fQs0vpzxcvJPmdEunqP8kKh
	moXV/dWJkz0NMDe5OXU04zc=
X-Google-Smtp-Source: ABdhPJyvZ7lzw3YzJPNQ97PxAj9v2qxoSVh6wTdh2+bgUTAvdlc2y/xlkoEZS1DQRVBvelgRMS6vZw==
X-Received: by 2002:a17:90a:2249:: with SMTP id c67mr878473pje.0.1591644514411;
        Mon, 08 Jun 2020 12:28:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b702:: with SMTP id d2ls6481185pls.6.gmail; Mon, 08
 Jun 2020 12:28:33 -0700 (PDT)
X-Received: by 2002:a17:90a:acf:: with SMTP id r15mr808863pje.171.1591644513880;
        Mon, 08 Jun 2020 12:28:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591644513; cv=none;
        d=google.com; s=arc-20160816;
        b=BfoB+YavFeTdJe1NnEs04P0UkTPVnEFGHjCB0OwIeHsMM/xEH4zAvFb4VqL7DOmxF0
         OJ0t/wdkHGWOwdGhfjrxDX323u1EHeEHGSlqY3oa9J6/NkbcXYHYkEamhqZJbd5xsEnE
         VdXxJKIQkEXZdbT3SlYwHjw9QqTaj7BXOzizPz8bUlh+wdkzsq1OMaA9OL/HkkgvZZgX
         zLxbCGA3SKwje9wv3ZQl2bJucTcy6BOGu76x44BSBGjRPLGjzK9X480eAO6uUQ4i/c5+
         PudY9G2Svhqvnlaus9x9c0OvPiP9wOuxI4okY1z5B5tYbZQ28yVwWHKLfYJJFYoVEgkF
         e6TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k9wukxxtlg/uismwI/UMnm3Bx/cnmFE7m1b5ib9kprU=;
        b=Zw4A0hHQr5H/PkAeECF3izmow3gXOhVCOLKOblLOUZeRyUcXz3e3j2MeO7Ge0mlsTB
         ibc1y60qzdfBAHrTCSn2BUWipY9q8J0qkCTyvMBYwRM3x4CcctlCzxBxiccXRM8gOuuV
         dBYYS0e3joYzsDz9OG1v1iZ/4r7b31rL9N84mlMpuVKj/v9NorJHDOPtCzkOD42pwsfk
         CvAQLFTUhR4mKRSh9WGHv4ZQIEmq3g1WLigrlN85Gw6LV2fcNw76MmJKflDZBzH5qHG1
         czDxfiIGqcyh+xamPCaAVfyJHLNrL0naCDzM94+DTT1Rw80Ym5ywhlrvhE+LQzwp8sgK
         R0lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=Pgtv+SSc;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id t72si375833pfc.5.2020.06.08.12.28.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 12:28:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id v79so18422771qkb.10
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 12:28:33 -0700 (PDT)
X-Received: by 2002:a37:9f0b:: with SMTP id i11mr23180985qke.481.1591644512610;
        Mon, 08 Jun 2020 12:28:32 -0700 (PDT)
Received: from lca.pw (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id k10sm7475862qkh.47.2020.06.08.12.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 12:28:31 -0700 (PDT)
Date: Mon, 8 Jun 2020 15:28:28 -0400
From: Qian Cai <cai@lca.pw>
To: Kees Cook <keescook@chromium.org>
Cc: kernel test robot <rong.a.chen@intel.com>,
	clang-built-linux@googlegroups.com, LKP <lkp@lists.01.org>,
	"Linus, Torvalds," <torvalds@linux-foundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	linux-kernel@vger.kernel.org
Subject: Re: 0887a7ebc9 ("ubsan: add trap instrumentation option"): BUG:
 kernel hang in early-boot stage, last printk: early console in setup code
Message-ID: <20200608192828.GB987@lca.pw>
References: <20200608060407.GX12456@shao2-debian>
 <202006081144.933995E4@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006081144.933995E4@keescook>
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=Pgtv+SSc;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::741 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

On Mon, Jun 08, 2020 at 12:00:11PM -0700, Kees Cook wrote:
> On Mon, Jun 08, 2020 at 02:04:08PM +0800, kernel test robot wrote:
> > The issue seems due to the lack of "-fsanitize-undefined-trap-on-error" in clang.
> 
> Hm? No, that's supported in Clang (at least as far back as Clang 9.)
> 
> > Greetings,
> > 
> > 0day kernel testing robot got the below dmesg and the first bad commit is
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > 
> > commit 0887a7ebc97770c7870abf3075a2e8cd502a7f52
> > Author:     Kees Cook <keescook@chromium.org>
> > AuthorDate: Mon Apr 6 20:12:27 2020 -0700
> > Commit:     Linus Torvalds <torvalds@linux-foundation.org>
> > CommitDate: Tue Apr 7 10:43:44 2020 -0700
> > 
> >     ubsan: add trap instrumentation option
> 
> In the randconfig, I see CONFIG_UBSAN_TRAP is enabled with lots of other
> UBSAN options. If you're not expecting the results, it's very likely the
> false positives in UBSAN are going to do bad things. :) This is "working
> as expected", as noted in the commit log quoted below.
> 
> >     
> >     Patch series "ubsan: Split out bounds checker", v5.
> >     
> >     This splits out the bounds checker so it can be individually used.  This
> >     is enabled in Android and hopefully for syzbot.  Includes LKDTM tests for
> >     behavioral corner-cases (beyond just the bounds checker), and adjusts
> >     ubsan and kasan slightly for correct panic handling.
> >     
> >     This patch (of 6):
> >     
> >     The Undefined Behavior Sanitizer can operate in two modes: warning
> >     reporting mode via lib/ubsan.c handler calls, or trap mode, which uses
> >     __builtin_trap() as the handler.  Using lib/ubsan.c means the kernel image
> >     is about 5% larger (due to all the debugging text and reporting structures
> >     to capture details about the warning conditions).  Using the trap mode,
> >     the image size changes are much smaller, though at the loss of the
> >     "warning only" mode.
> >     
> >     In order to give greater flexibility to system builders that want minimal
> >     changes to image size and are prepared to deal with kernel code being
> >     aborted and potentially destabilizing the system, this introduces
> >     CONFIG_UBSAN_TRAP.  The resulting image sizes comparison:
> >     
> >        text    data     bss       dec       hex     filename
> >     19533663   6183037  18554956  44271656  2a38828 vmlinux.stock
> >     19991849   7618513  18874448  46484810  2c54d4a vmlinux.ubsan
> >     19712181   6284181  18366540  44362902  2a4ec96 vmlinux.ubsan-trap
> >     
> >     CONFIG_UBSAN=y:      image +4.8% (text +2.3%, data +18.9%)
> >     CONFIG_UBSAN_TRAP=y: image +0.2% (text +0.9%, data +1.6%)
> >     
> >     Additionally adjusts the CONFIG_UBSAN Kconfig help for clarity and removes
> >     the mention of non-existing boot param "ubsan_handle".
> 
> If you're trying to _boot_ a randconfig, I suspect there are going to be
> a lot of surprises with UBSAN (in any mode) enabled. Right now, likely the
> least noisy of them all is UBSAN_BOUNDS, which was split out for fuzzers.
> 
> FWIW, the dmesg appears to be catching a NULL pointer dereference
> (enabled via CONFIG_UBSAN_MISC):
> 
> [    0.047646] UBSAN: Undefined behaviour in drivers/acpi/acpica/tbfadt.c:459:37
> [    0.047650] member access within null pointer of type 'struct acpi_table_fadt'
> [    0.047655] CPU: 0 PID: 0 Comm: swapper Not tainted 5.6.0-11597-g7baf219982281 #1
> [    0.047659] Call Trace:
> [    0.047676]  dump_stack+0x88/0xb9
> [    0.047684]  ? ubsan_prologue+0x21/0x46
> [    0.047689]  ? ubsan_type_mismatch_common+0x188/0x19e
> [    0.047695]  ? __ubsan_handle_type_mismatch_v1+0x45/0x4a
> [    0.047701]  ? acpi_tb_create_local_fadt+0xaa/0x435
> [    0.047706]  ? acpi_tb_parse_fadt+0x54/0xd4
> [    0.047712]  ? acpi_tb_parse_root_table+0x192/0x1bf
> [    0.047717]  ? acpi_table_init+0x3b/0x56
> [    0.047721]  ? acpi_boot_table_init+0xf/0x6e
> [    0.047726]  ? setup_arch+0x459/0x520
> [    0.047732]  ? start_kernel+0x5e/0x3ba
> [    0.047737]  ? secondary_startup_64+0xa4/0xb0
> 
> I'm not sure how ACPI defines acpi_gbl_FADT though? There's no
> dereference...
> 
> 459:         if (acpi_gbl_FADT.header.length <= ACPI_FADT_V2_SIZE) {
> 
> 
> BTW, this report only contained 1 actual dmesg. There were two files with
> dmesg file names, but one of them was the gzipped reproduction steps again.

No, it does not complain about a NULL pointer dereference but rather a
member access within NULL pointer.

# ./scripts/faddr2line vmlinux acpi_tb_create_local_fadt+0x104/0x6ec
acpi_tb_create_local_fadt+0x104/0x6ec:
acpi_tb_convert_fadt at drivers/acpi/acpica/tbfadt.c:459
(inlined by) acpi_tb_create_local_fadt at drivers/acpi/acpica/tbfadt.c:388

Clang would report several of those,

https://lore.kernel.org/lkml/CA6078C3-3489-40E4-B756-A0AF6DB3A3A5@lca.pw/

There are many examples how to "fix" those.

$ git log  --oneline --grep='member access within null pointer'

Anyway, this line,

        if (acpi_gbl_FADT.header.length <= ACPI_FADT_V2_SIZE) {

acpi_gbl_FADT was defined in,

.//include/acpi/acpixf.h:266:ACPI_GLOBAL(struct acpi_table_fadt, acpi_gbl_FADT);

#ifdef DEFINE_ACPI_GLOBALS
#define ACPI_GLOBAL(type,name) \
	extern type name; \
	type name



#define ACPI_INIT_GLOBAL(type,name,value) \
	type name=value



#else
#ifndef ACPI_GLOBAL
#define ACPI_GLOBAL(type,name) \
	extern type name
#endif



#ifndef ACPI_INIT_GLOBAL
#define ACPI_INIT_GLOBAL(type,name,value) \
	extern type name
#endif
#endif

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608192828.GB987%40lca.pw.
