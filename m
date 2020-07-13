Return-Path: <clang-built-linux+bncBCIO53XE7YHBBJ5XV74AKGQEBLBQZMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F71C21CDE7
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 05:57:29 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id k16sf6438153plk.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 20:57:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594612648; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vnt9KErth2qFiY/dZKvSGB28qiHf+q5de7jCgTQ+Bo4gbAZLeAS8RhxF9SCaogwIaH
         gppAb4+PqICOI7jH1ZD1o0yhCo9r+hAsLTAFe/irRcHvv4ZAMVrNoSXdXWUQP04R6ihN
         BmuAxRYF/Jg6CROq3TQSKYfqkQRFMnNeUzYd3QKBJcoLAFRrNVbfsQZ71ISgE34k1v7I
         sFjnlZRXcZstHzbB/fABm2P/6AGxi350fx84k0aNlpC1S8rxhxszVKg+PyrQD4T8oBg/
         32AFVGcK4UCDsEGyunGD1XY5uox5RI9mCS3Q7Hw4rJhwqlhvvI4VKIU6vKHUjmaqLsYT
         GI9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=xXdEaIL0AG7RSrNQGPHL/Q7gD+BGYX/YcM5STB9rs0k=;
        b=ChNbbx8dCd8rMYpzxuN4rojTjfB8GrKaXody3tx23l6uOS4+7RTiV/lyESjPgPNX6R
         VxFGIWoGoOsGinQNH0v48gRQvceeaA2dB4+mEB8GzjhBZ4UMGpV+AdOrjWy2Ag2ACHf5
         naNkF5hpd/hFtTgHDcgO4OMG4TyM35IM1gE8vCAsh1yG6uWl12I+zZ+AHL5aygzErcGR
         x6YSsMIBXL91xhyRDLS0HlllmFSRgJxVaM9jgp2ADBFavjmu/RR/vqeee8SzvzzE26kK
         BWIXq5Lev005fLjLxCw7TJGUrVjpe03tOszDhOlFHl5FY1cLJRS76ITUqQJWiV5Qr1e7
         0vLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RyUFAiLo;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xXdEaIL0AG7RSrNQGPHL/Q7gD+BGYX/YcM5STB9rs0k=;
        b=KDb4oCirCcjTRUBEuEfCbiIX7EN0nxGsEETBdY3ttZs8C1ZqUck+Cj52UZVvJWHO8J
         1nzkF7ytXUbClK0pkN4ukn4lVZjrFWGQa/62J3IdAlbEOj5IDdnyDyGgk/XcvBnNuvmK
         FCkvOd+x1cR8gPhCdLA3uvGt9MtmP+hXn4wWMN0kKCr2r0BtDjI3Y9G6MCYQTIW2i9LR
         YrIxMApbdd5Ul4VTx6IJAaLOX3xOkkXpdBeM+kugi2TAkbPMGFsQrKu26QDKrhdOSTbl
         l+Qb04QaWTfFe7wvqepZ6cEpRGHjdG5Ft03GutxslXNs4JMHJaubjxsuwdzsk8uGvXcI
         U23Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xXdEaIL0AG7RSrNQGPHL/Q7gD+BGYX/YcM5STB9rs0k=;
        b=BxqZ9HaqfkkYbDegdLOOKM/5YO49voG6rjMgAjrwjCfqelU1BRAZbSNkNQ9cr4h+7s
         ewAyhhhZaW3khNjXGjUMmrSyENVAqsHor/Ifhwnzqv02iUAZFAqpyWSi2kjrEx4Y+w0F
         c/7VjNZvMqc3bhJ+qznpE3zELPSIf39jhPjwv3AZLT0TuesWo6sEaeUu1LzQ+2eFhI4x
         jiJ73Sk6+R1wXzXOlSgSj2IsOZzBx2HiZL30XTJIhif24Om407HkTeE9fa2X9Gu6eVS4
         1Pm8fo46K+2Xrs3WnvTWA/IfupKLr6KMw/iCaK2d4YjJ7XskybSZjF0vAL9CCwoAwqan
         va9A==
X-Gm-Message-State: AOAM533tKZf7AbIKiMM/IG2eyL4bco2ZZa/AT2gcW5pAOUo22uAvhnK0
	2kOEveImgi4SnlezeRypDgY=
X-Google-Smtp-Source: ABdhPJyTakxUgY8QspVsfwGjSRPxAJ1O6GLvz+nqbLF8j32wcNYVwrO1I7N37aXBRUZyQvFZ7Njnag==
X-Received: by 2002:a62:7ac6:: with SMTP id v189mr4096019pfc.165.1594612647741;
        Sun, 12 Jul 2020 20:57:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls4332830pgp.10.gmail; Sun, 12
 Jul 2020 20:57:27 -0700 (PDT)
X-Received: by 2002:aa7:8391:: with SMTP id u17mr27600450pfm.156.1594612647221;
        Sun, 12 Jul 2020 20:57:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594612647; cv=none;
        d=google.com; s=arc-20160816;
        b=bp9rNyPCAcKXO9qCV4g93VyNSoUs4Ahp5Ym9k8qImUJEFJ87UOh6Br1a8K+wfVG9T3
         v3Z/R27z12MNcgVf+0CkTidxr0o0IQhq8UMASEKPidUpQdSXbVyU3EV5p7qrVF8n7tjd
         JePxbf7ku6rahxXxztm321C1IVaREUHfWCKpBZwe08axv+wDqs5sKsjywafTtxodlaYJ
         VnWoAJB3c7gcfU5v8hpNqaURPwu4zWIaeFADeyRar1yAun7y9VRgdARBfAxftkn9fT7y
         RbeJnh5wXBLfSf3s/1sizWNtuJziEGzyGlTwKmDtik6lbZu7WXif++mjjl2wjUlho+gK
         oYJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=OS6lj7NOuRAN0ATW8vraVLjweCwqIGD2clKFwyyRfmk=;
        b=T/IS5c1+Qq/J9tPo3yuVYDtt8owwvJb8fVTTR/npG7VVipPPPQ8Gy52QbkgxIpTLIf
         U0RJCXJkFgn3av7VwijOYMmIFLrZTN6fDUrO3zbaWzONR1IZ+YdzajDjEieem+LXRrde
         ETahMRpo7lpqhg6lOqt/TjSwv3z1mitHMWqosruLSOy8k3+BHiXODOqw90Tnn6g4ji/w
         uk4aWMtVc+ksQsh0arRFAuzmZGXTIUW3YzH9P0o7MRIELmnJb+JEqw14FsyGWcYsKbFF
         r7a3NrFfQL1l24mbV0sThE1ilbFB3qIQKJ8Hq7Nua6Uox9zwwvWR8kiuMIbhs4pD/sho
         QDoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RyUFAiLo;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id l6si974715pjn.1.2020.07.12.20.57.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 20:57:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id j80so11023569qke.0
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 20:57:27 -0700 (PDT)
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr69626943qkg.132.1594612646351;
        Sun, 12 Jul 2020 20:57:26 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z60sm17212288qtc.30.2020.07.12.20.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2020 20:57:25 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 12 Jul 2020 23:57:23 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Jian Cai <caij2003@gmail.com>, jiancai@google.com,
	ndesaulniers@google.com, manojgupta@google.com,
	sedat.dilek@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86/entry: add compatibility with IAS
Message-ID: <20200713035723.GA874450@rani.riverdale.lan>
References: <20200713012428.1039487-1-caij2003@gmail.com>
 <20200713025429.GA704795@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200713025429.GA704795@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RyUFAiLo;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
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

On Sun, Jul 12, 2020 at 10:54:29PM -0400, Arvind Sankar wrote:
> On Sun, Jul 12, 2020 at 06:24:22PM -0700, Jian Cai wrote:
> > Clang's integrated assembler does not allow symbols with non-absolute
> > values to be reassigned. This patch allows the affected code to be
> > compatible with IAS.
> > 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > ---
> >  arch/x86/include/asm/idtentry.h | 22 ++++++++++------------
> >  1 file changed, 10 insertions(+), 12 deletions(-)
> > 
> > diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> > index f3d70830bf2a..77beed2cd6d9 100644
> > --- a/arch/x86/include/asm/idtentry.h
> > +++ b/arch/x86/include/asm/idtentry.h
> > @@ -468,34 +468,32 @@ __visible noinstr void func(struct pt_regs *regs,			\
> >   */
> >  	.align 8
> >  SYM_CODE_START(irq_entries_start)
> > -    vector=FIRST_EXTERNAL_VECTOR
> > -    pos = .
> > +    i = 1
> > +    pos1 = .
> >      .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
> >  	UNWIND_HINT_IRET_REGS
> > -	.byte	0x6a, vector
> > +	.byte	0x6a, FIRST_EXTERNAL_VECTOR + i - 1
> >  	jmp	asm_common_interrupt
> >  	nop
> >  	/* Ensure that the above is 8 bytes max */
> > -	. = pos + 8
> > -    pos=pos+8
> > -    vector=vector+1
> > +	. = pos1 + 8 * i
> > +	i = i + 1
> >      .endr
> >  SYM_CODE_END(irq_entries_start)
> 
> I think it would be a little cleaner to initialize i to 0, and drop pos.
> i.e. couldn't we do
> 	i = 0
> 	...
> 	.byte	0x6a, FIRST_EXTERNAL_VECTOR + i
> 	...
> 	i = i + 1
> 	. = irq_entries_start + 8 * i
> 

Or maybe just:

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index eeac6dc2adaa..c774039d130b 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -469,15 +469,14 @@ __visible noinstr void func(struct pt_regs *regs,			\
 	.align 8
 SYM_CODE_START(irq_entries_start)
     vector=FIRST_EXTERNAL_VECTOR
-    pos = .
     .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
+    0:
 	UNWIND_HINT_IRET_REGS
 	.byte	0x6a, vector
 	jmp	asm_common_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
+	. = 0b + 8
     vector=vector+1
     .endr
 SYM_CODE_END(irq_entries_start)
@@ -486,15 +485,14 @@ SYM_CODE_END(irq_entries_start)
 	.align 8
 SYM_CODE_START(spurious_entries_start)
     vector=FIRST_SYSTEM_VECTOR
-    pos = .
     .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
+    0:
 	UNWIND_HINT_IRET_REGS
 	.byte	0x6a, vector
 	jmp	asm_spurious_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
+	. = 0b + 8
     vector=vector+1
     .endr
 SYM_CODE_END(spurious_entries_start)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713035723.GA874450%40rani.riverdale.lan.
