Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB35RS7ZAKGQE2JMKNDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3855B15CE8B
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 00:17:05 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id f5sf4775867pgn.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 15:17:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581635823; cv=pass;
        d=google.com; s=arc-20160816;
        b=qd4F08/D5UwqGfIxrKq9xGlquLXvBz6g7UeOJJZfc08I/8jph8RdJE0V+0gGkvAjbl
         189sajYLUOEltWPb3QPnH5j7JPFAej0pRsHdtsSOIDK5R7f6E2skmV6E4rjtKmLG2b80
         2YxwycNiX94qI/T6L96M3EsMocOR9zW2ePYavlRwTXN40jOX1KD0c1DHIWZvYC4zHqDj
         jdrm1oZhuv09h5tN6BNNtRYcqpdkXpVaBwaYO9WpPHDe1DfN5eZD+w818EVNB+ZMeeBx
         c367qlAgZhsu3DNMv/mayopnvmGxSL4VGf2BZCpefng9vUhjU8WcvB7kNi2G3FuMdp1x
         OZ9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=EaDYNgJhbU61+FiP+W+MtQLAjq3pKnVqI8O9/8+oRFc=;
        b=BJenjUfqmqKjRovwJ4U6ZhDdyEGZtcmD/TT1eHUi133WIbD/BDmYHu/nepX+qcUz/O
         1y/N55cgBbSFeLNkwjEPvE5kt3dMs+Zrf9zz3VXbOUdL2zW54wg4C/EBm5gi3hgscOoX
         g/RKyOf9iPGlQUo8t3zIGLtKkzm+/v4oUa7EhmKAEVz3GkcwSHA3/Wylx0Uky/dNvZHt
         doEdrz3f2DtjG45Z+PBw57Pevmdj+dUUOYF63XXirTWFjmjWmRSZmbBckzgP9JK4hxG1
         Vfs/ldrzaicY12MBfLse/Xe2A6GODJCJVHIMBun3Pq2T0wvLHHMIoba+GoSYgM+EhEaG
         W3yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ULBEOdwI;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EaDYNgJhbU61+FiP+W+MtQLAjq3pKnVqI8O9/8+oRFc=;
        b=dCQmcwpJ6efW4MfokoNV68IJYmSChlC4dUEJ9dAnBcAvgCwpUz8f0V0Fh9AaaQSTLb
         +R9Cv5cPL4biGeXMPve0pGV5qTgAGeHN7jDppSMRi7VZzc9o4fymyyVevrsR1Kn6dH6I
         ExIM0Q2vvYJUSTuTkIZR8Wh4O8ENwVfWbjMIzpan56CQgCXosL2Gt5ri55ecJdj5ih8F
         3csc9IDDStU9YsYM717f55tf4rfxlpDYyW4VqZS8bbRpAVGAVWDN+QBpXo2ebi4p7OLB
         V+Wfuz7CWOETPRXmEQXQQlMiNX8avZKO0m5Tv85cfUGf51w+63Fi4TGxtY29AJI5ISdG
         h/IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EaDYNgJhbU61+FiP+W+MtQLAjq3pKnVqI8O9/8+oRFc=;
        b=N8pk6ToNOaFke4SmHvb0EwgLbcQLTPqIS28jPsyCHc7Bn5SRz70uTvuOT5xowo7Fxh
         zCdpQP6nLRmqLC8DExvweIcEzEU6YMvaHdNPspBjQVeUCgY4U/Tknn+TjxjoOru8B9ZJ
         yg6NI71PHdJGP+IcuA5DOjnDstXG5vxcvWu7ZoxIwjaXPXv6au9eJ6kkoX+l3DyrUTLb
         /AWQfjEaugFgp+SAgCA5A8JwEIMegGuUC1YPtMTiUkP+Emp1W+lkEwFHhjIndj3+kh6r
         QNn7sDuCnkdDSfYFKHuFqP+lj1hnh9Vo+VqHoIoXcTR4edi5ynEYl37+VKXyvCyFD34C
         FHrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYknq21SLopk0uwCR0H+tadW1j3jmpaLCfkSICSsxc063HeGej
	7J+aFVmcsgFoTYb8yfGdTe8=
X-Google-Smtp-Source: APXvYqzhCly1CBnev4ptiJHzZTne9w0Yr5CHjeBXgd2P68Lwem+UNYv/jSQA3ssPpwiiBRVyZL/dVA==
X-Received: by 2002:a17:90a:c216:: with SMTP id e22mr7948942pjt.134.1581635823567;
        Thu, 13 Feb 2020 15:17:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7281:: with SMTP id d1ls324pll.1.gmail; Thu, 13 Feb
 2020 15:17:03 -0800 (PST)
X-Received: by 2002:a17:902:7c02:: with SMTP id x2mr322713pll.60.1581635822905;
        Thu, 13 Feb 2020 15:17:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581635822; cv=none;
        d=google.com; s=arc-20160816;
        b=XP+/NV6aHy/3zMuZCjyBk0fbbuCkiFOTwj2E+/2tJSUpgyUdkmHwW15JDAcrkYpSWt
         WWy8yWeG1Vi0R+dlZSPlhQhs0Ta8IFUMrjKuOyaB93sZBfBthSBbZQyflzITYg9xeDOu
         iExcR3CQCqkczEK0BmlK69xBE5qtwqhJTdy6D8ZoLjV6gHBPqsP6UEZuVHpPua9vs4xt
         oDElekb5vfwX8lLdKIhlOBVvhjlC5liykACbPBlkILc0K71hwHlVVTBwcXOUeuWeim7K
         pg93qiucx4ddZGG/oCII7mvlgS2UNzGjyYwf2+dr3lKKnjU0C1WFGufMpAa+JeSCvlEx
         mpWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JPKc4Qj1zLgWNNEAg/3I0kSh8srrtB1FZBnX9z98lqM=;
        b=kx+1xMUJ0hWAwhJNH43HeNdKfWzlqLPTjBfROxfSVLgF3Emd3Qn+OQyuv80p5Zz+bz
         naXIF6iauh2BxSXZzp/cQMqHu0O30KFXv+LUSvzstyTcE3EgLsAfJfCycKAf/Y9YEblI
         jmA6hXMxwNtdxiuakHQ1YbUBAit6BI+8GXebsJMGLPNWwmyzy5OYpYueoyHrGG0PjkFW
         1gyFD8vNaarg4lFicqob2UbmWQZMQjki1ex90AtUxqVB12Eh+DN1bG+BCySF5N8soKT9
         Qh1uasqdPDbsGy2PMHNUXOyTr/G8ghq0m1IFj4orl889KAFrfHtqljUJq5t9T3kz3dWc
         t8dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ULBEOdwI;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id c13si251024pfi.3.2020.02.13.15.17.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Feb 2020 15:17:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-284-mCoTIPOIMBSGaD5vJl8xiA-1; Thu, 13 Feb 2020 18:16:56 -0500
X-MC-Unique: mCoTIPOIMBSGaD5vJl8xiA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DFB271851FC2;
	Thu, 13 Feb 2020 23:16:54 +0000 (UTC)
Received: from treble (ovpn-121-12.rdu2.redhat.com [10.10.121.12])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 155091FD3B;
	Thu, 13 Feb 2020 23:16:53 +0000 (UTC)
Date: Thu, 13 Feb 2020 17:16:51 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, peterz@infradead.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200213231651.alogip6tupegsbvq@treble>
References: <20200213184708.205083-1-ndesaulniers@google.com>
 <20200213221758.i6pchz4gsiy2lsyc@treble>
 <20200213223734.3zjrvhshjyr5ca7p@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200213223734.3zjrvhshjyr5ca7p@google.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ULBEOdwI;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Thu, Feb 13, 2020 at 02:37:34PM -0800, Fangrui Song wrote:
> I still consider such a check (tools/objtool/check.c:679) unneeded.
> 
> st_type doesn't have to be STT_FUNC. Either STT_NOTYPE or STT_FUNC is
> ok. If STT_GNU_IFUNC is used, it can be ok as well.
> (My clang patch skips STT_GNU_IFUNC just because rtld typically doesn't
>  cache R_*_IRELATIVE results. Having two STT_GNU_IFUNC symbols with same st_shndx and
>  st_value can create two R_*_IRELATIVE, which need to be resolved twice
>  at runtime.)
> 
> 	} else if (rela->sym->type == STT_SECTION) {
> 		insn->call_dest = find_symbol_by_offset(rela->sym->sec,
> 							rela->addend+4);
> 		if (!insn->call_dest ||
> 		    insn->call_dest->type != STT_FUNC) {
> 			WARN_FUNC("can't find call dest symbol at %s+0x%x",
> 				  insn->sec, insn->offset,
> 				  rela->sym->sec->name,
> 				  rela->addend + 4);
> 			return -1;
> 		}
> 
> 
> 	.section	.init.text,"ax",@progbits
> 	call	printk
> 	call	.Lprintk$local
> 	.text
> 	.globl	printk
> 	.type	printk,@function
> printk:
> .Lprintk$local:
>  ret

Objtool isn't a general ELF validator, it's more of a kernel sanity
validator.  In the kernel we currently have a constraint that you can
only call STT_FUNC.  At the very least it helps keep our asm code clean.

If that constraint ever becomes a problem then we could always
reconsider it.

> % llvm-mc -filetype=obj -triple=riscv64 a.s -mattr=+relax -o a.o
> % readelf -Wr a.o
> 
> Relocation section '.rela.init.text' at offset 0xa0 contains 4 entries:
>     Offset             Info             Type               Symbol's Value  Symbol's Name + Addend
> 0000000000000000  0000000200000012 R_RISCV_CALL           0000000000000000 printk + 0
> 0000000000000000  0000000000000033 R_RISCV_RELAX                             0
> 0000000000000008  0000000100000012 R_RISCV_CALL           0000000000000000 .Lprintk$local + 0
> 0000000000000008  0000000000000033 R_RISCV_RELAX                             0
> 
> 
> On RISC-V, when relaxation is enabled, .L cannot be resolved at assembly
> time because sections can shrink.
> 
> https://sourceware.org/binutils/docs/as/Symbol-Names.html
> 
> > Local symbols are defined and used within the assembler, but they are *normally* not saved in object files.
> 
> I consider the GNU as issue a missed optimization, instead of a bug.
> There is no rigid rule that .L symbols cannot be saved in object files.

I know nothing about RISC-V, but if I understand correctly,
.Lprintk$local is the function's local entry point, similar to ppc64
localentry.  Would it not always be a constant offset from the printk
address, such that the relocation could be "printk + 8" or so?

Regardless, it doesn't really matter for now, objtool is x86-only.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213231651.alogip6tupegsbvq%40treble.
