Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBP73WH4QKGQEZIRDDEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id A46A323E3C1
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 00:01:36 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id w201sf12915481oiw.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 15:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0QIdQZujxdgY6i23jp/kK8E3VeEoPNYB503SijSduKw=;
        b=Ozro/KIxAnwayRy8bvqYR8QSETjSoyIqBawRPv6ghkLU9LxAwL4SdWene581Cn91Vx
         gaHeuSFjMUKOmwHzOnLPQGITnzLa7exKvkrL8zRGUjE1S9YfDSZDB2Q0LXomkfK0PxSZ
         sciNjoJUGClSj3nAiCjlDva9ASmL0nUJUGlkEl0KkQKad2BxuK5EDU7M+XvcI3g7L274
         sDodOzPmpBNdMH5SOjsV5ZjdjAQF5EODbrkR6E+rUB6Xy0UNslmJMtbJfe/cIgl7u+1i
         5Nugevun2ZDJVXb474a33famt3f+csWjTKD+iPgbuNSordsOFtAp7ggZgIcQCD5TsP3+
         Hc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version:x-original-sender:reply-to:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0QIdQZujxdgY6i23jp/kK8E3VeEoPNYB503SijSduKw=;
        b=GcZF6uawlpPKTO8MHeV3JNyGvnhl3cfEeem5OBvIj5d3AURxjgc+RzGfjJoEKOinhB
         6vNuG52W6vLiOsWi2R6U0Xi4pha3x2El6hGrOq2eLTdMqmtP7g4f9bEccUJoKqNK73bV
         mVAKrDq+hxrBgB+mCaBVS7jASCefMV/9ZCrCyhFJX3W2Y3TgfGbDWBTBC//2wPdyJFlp
         4jAVTk2JXR1o+m4I14d6oeKiSAr29mj2Se/rnk9+vqENg2xTNBwngkzGA8TtTotxTAwm
         ZdLJlx/K24p4ksCqtX8W75ywp1wGaVcLkejGT4zLArXSlsbWzgAv4bfmxz34ZMb6rZ+o
         nR6A==
X-Gm-Message-State: AOAM530CHkfp1ryUzZJlvOwYjpzhfu7+A+wZVvEIrzOq8UqMDfXKWBYe
	pOw8ODQkHVtMSecygONxSfI=
X-Google-Smtp-Source: ABdhPJxSM6g7Edkmvu1DDYUlUadjvKeda6CxChaynp7OrX4E1/VXAM+4isSWp4NkPILt89Zpe35qlA==
X-Received: by 2002:a4a:7b4b:: with SMTP id l72mr9923025ooc.74.1596751295618;
        Thu, 06 Aug 2020 15:01:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ea21:: with SMTP id y1ls483892ood.10.gmail; Thu, 06 Aug
 2020 15:01:35 -0700 (PDT)
X-Received: by 2002:a4a:3b0f:: with SMTP id s15mr9720151oos.71.1596751293395;
        Thu, 06 Aug 2020 15:01:33 -0700 (PDT)
Date: Thu, 6 Aug 2020 15:01:32 -0700 (PDT)
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <30c1c25b-30ee-4d7d-95ff-f03142b7cbc0n@googlegroups.com>
In-Reply-To: <20200730205112.2099429-3-ndesaulniers@google.com>
References: <20200730205112.2099429-1-ndesaulniers@google.com>
 <20200730205112.2099429-3-ndesaulniers@google.com>
Subject: Re: [PATCH 2/4] ARM: backtrace-clang: add fixup for lr dereference
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_82_1688914227.1596751292541"
X-Original-Sender: nhuck@google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

------=_Part_82_1688914227.1596751292541
Content-Type: multipart/alternative; 
	boundary="----=_Part_83_1984093825.1596751292541"

------=_Part_83_1984093825.1596751292541
Content-Type: text/plain; charset="UTF-8"

Mostly looks good to me. Just a minor nit.

On Thursday, July 30, 2020 at 3:51:31 PM UTC-5 Nick Desaulniers wrote:

> If the value of the link register is not correct (tail call from asm 
> that didn't set it, stack corruption, memory no longer mapped), then 
> using it for an address calculation may trigger an exception. Without a 
> fixup handler, this will lead to a panic, which will unwind, which will 
> trigger the fault repeatedly in an infinite loop. 
>
> We don't observe such failures currently, but we have. Just to be safe, 
> add a fixup handler here so that at least we don't have an infinite 
> loop. 
>
> Cc: sta...@vger.kernel.org 
> Fixes: commit 6dc5fd93b2f1 ("ARM: 8900/1: UNWINDER_FRAME_POINTER 
> implementation for Clang") 
> Reported-by: Miles Chen <miles...@mediatek.com> 
> Signed-off-by: Nick Desaulniers <ndesau...@google.com> 
> --- 
> arch/arm/lib/backtrace-clang.S | 10 +++++++++- 
> 1 file changed, 9 insertions(+), 1 deletion(-) 
>
> diff --git a/arch/arm/lib/backtrace-clang.S 
> b/arch/arm/lib/backtrace-clang.S 
> index 5388ac664c12..40eb2215eaf4 100644 
> --- a/arch/arm/lib/backtrace-clang.S 
> +++ b/arch/arm/lib/backtrace-clang.S 
> @@ -146,7 +146,7 @@ for_each_frame: tst frame, mask @ Check for address 
> exceptions 
>
> tst sv_lr, #0 @ If there's no previous lr, 
> beq finished_setup @ we're done. 
> - ldr r0, [sv_lr, #-4] @ get call instruction 
> +prev_call: ldr r0, [sv_lr, #-4] @ get call instruction 
> ldr r3, .Lopcode+4 
> and r2, r3, r0 @ is this a bl call 
> teq r2, r3 
> @@ -206,6 +206,13 @@ finished_setup: 
> mov r2, frame 
> bl printk 
> no_frame: ldmfd sp!, {r4 - r9, fp, pc} 
> +/* 
> + * Accessing the address pointed to by the link register triggered an 
> + * exception, don't try to unwind through it. 
> + */ 
> +bad_lr: mov sv_fp, #0 
>

It might be nice to emit a warning here since we'll
only hit this case if something fishy is going on
with the saved lr.
 

> + mov sv_lr, #0 
> + b finished_setup 
> ENDPROC(c_backtrace) 
> .pushsection __ex_table,"a" 
> .align 3 
> @@ -214,6 +221,7 @@ ENDPROC(c_backtrace) 
> .long 1003b, 1006b 
> .long 1004b, 1006b 
> .long 1005b, 1006b 
> + .long prev_call, bad_lr 
> .popsection 
>
> .Lbad: .asciz "%sBacktrace aborted due to bad frame pointer <%p>\n" 
> -- 
> 2.28.0.163.g6104cc2f0b6-goog 
>
>
Thanks,
Huck 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/30c1c25b-30ee-4d7d-95ff-f03142b7cbc0n%40googlegroups.com.

------=_Part_83_1984093825.1596751292541
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Mostly looks good to me. Just a minor nit.<br></div><br><div class=3D"=
gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thursday, July 30, 2=
020 at 3:51:31 PM UTC-5 Nick Desaulniers wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(2=
04, 204, 204); padding-left: 1ex;">If the value of the link register is not=
 correct (tail call from asm
<br>that didn't set it, stack corruption, memory no longer mapped), then
<br>using it for an address calculation may trigger an exception.  Without =
a
<br>fixup handler, this will lead to a panic, which will unwind, which will
<br>trigger the fault repeatedly in an infinite loop.
<br>
<br>We don't observe such failures currently, but we have. Just to be safe,
<br>add a fixup handler here so that at least we don't have an infinite
<br>loop.
<br>
<br>Cc: <a href=3D"" data-email-masked=3D"" rel=3D"nofollow">sta...@vger.ke=
rnel.org</a>
<br>Fixes: commit 6dc5fd93b2f1 ("ARM: 8900/1: UNWINDER_FRAME_POINTER implem=
entation for Clang")
<br>Reported-by: Miles Chen &lt;<a href=3D"" data-email-masked=3D"" rel=3D"=
nofollow">miles...@mediatek.com</a>&gt;
<br>Signed-off-by: Nick Desaulniers &lt;<a href=3D"" data-email-masked=3D""=
 rel=3D"nofollow">ndesau...@google.com</a>&gt;
<br>---
<br> arch/arm/lib/backtrace-clang.S | 10 +++++++++-
<br> 1 file changed, 9 insertions(+), 1 deletion(-)
<br>
<br>diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-cl=
ang.S
<br>index 5388ac664c12..40eb2215eaf4 100644
<br>--- a/arch/arm/lib/backtrace-clang.S
<br>+++ b/arch/arm/lib/backtrace-clang.S
<br>@@ -146,7 +146,7 @@ for_each_frame:	tst	frame, mask		@ Check for addres=
s exceptions
<br>=20
<br> 		tst	sv_lr, #0		@ If there's no previous lr,
<br> 		beq	finished_setup		@ we're done.
<br>-		ldr	r0, [sv_lr, #-4]	@ get call instruction
<br>+prev_call:	ldr	r0, [sv_lr, #-4]	@ get call instruction
<br> 		ldr	r3, .Lopcode+4
<br> 		and	r2, r3, r0		@ is this a bl call
<br> 		teq	r2, r3
<br>@@ -206,6 +206,13 @@ finished_setup:
<br> 		mov	r2, frame
<br> 		bl	printk
<br> no_frame:	ldmfd	sp!, {r4 - r9, fp, pc}
<br>+/*
<br>+ * Accessing the address pointed to by the link register triggered an
<br>+ * exception, don't try to unwind through it.
<br>+ */
<br>+bad_lr:		mov	sv_fp, #0
<br></blockquote><div><br></div><div>It might be nice to emit a warning her=
e since we'll</div><div>only hit this case if something fishy is going on</=
div><div>with the saved lr.</div><div>&nbsp;</div><blockquote class=3D"gmai=
l_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204,=
 204); padding-left: 1ex;">+		mov	sv_lr, #0
<br>+		b	finished_setup
<br> ENDPROC(c_backtrace)
<br> 		.pushsection __ex_table,"a"
<br> 		.align	3
<br>@@ -214,6 +221,7 @@ ENDPROC(c_backtrace)
<br> 		.long	1003b, 1006b
<br> 		.long	1004b, 1006b
<br> 		.long   1005b, 1006b
<br>+		.long	prev_call, bad_lr
<br> 		.popsection
<br>=20
<br> .Lbad:		.asciz	"%sBacktrace aborted due to bad frame pointer &lt;%p&gt=
;\n"
<br>--=20
<br>2.28.0.163.g6104cc2f0b6-goog
<br>
<br></blockquote><div><br></div><div>Thanks,</div><div>Huck&nbsp;</div></di=
v>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/30c1c25b-30ee-4d7d-95ff-f03142b7cbc0n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/30c1c25b-30ee-4d7d-95ff-f03142b7cbc0n%40googleg=
roups.com</a>.<br />

------=_Part_83_1984093825.1596751292541--

------=_Part_82_1688914227.1596751292541--
