Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBOVS2T7QKGQESSKG2VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F4A2EB7D3
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 02:58:20 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id m203sf2143847ybf.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 17:58:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609898299; cv=pass;
        d=google.com; s=arc-20160816;
        b=QTGXjiHh5i7aC0JNSCAgKYJ2Y0/Z1n7Ul6nPWeYeX5rwG0lwcobS+cforVBkC4wvBJ
         PO0f/U/NqXcLoT4FphPzh5cDfyk6j6ykgZIbE8DUdQ3BWMmHrtGfuzNcBbulydNzDjFS
         UrZgmwnWOqntgIzklK0ISdEQcKANWpUH0SvA0gKb2KgwTx/NUcdUJDig5+l0nD79zH3w
         znzZr1frD8JcdNWUkp7r82kQD6B04y/TWFL8aHhuKVENHVixokfljUZy5pH0n5TkxNP3
         A/z0UB33wyGBdVb1Jv7mdoarpt6uMAYq9f0v7QRWn8QRZDqzl4wtSN7Xw0qEX7V/KdvF
         9D5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FnuECZXvMoRGowACS3F8manKkwKD00qeDCWZDuTJdm8=;
        b=C93a/knl5fO0WKMuWjv+YaZQb5FulagU2ShoxsBUSAj2lowGE5ki49iHQ4C6pfnLgq
         kOsV357D+ntZNplzGCwSKPHySg6pMICAZ9cMv7CeERzncCMOBjOa2zF0gLvgfElh53Ao
         02LDiWM3EvXduw3IP8u6eN6C9Uzw/az+nLQy10/TQ56F4mjqBs9h/krzhClsPWKGXLcX
         O3+XV0bkqFbbV7y43iTuYLNjoRbno8SPePcPBGw3dngMfGFGmCy4SjY5876yXWHAAREa
         8SjPbbD/p52iSVUO5+wxGSHtVctr044R43PCJ9BQwn2CQ3NRu1z6M8RMTMu1Nff6Z+xW
         aIAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i4iFbvX8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FnuECZXvMoRGowACS3F8manKkwKD00qeDCWZDuTJdm8=;
        b=bOMg1Qg3+PaL8UrTne5Qg5g2hmEyrMUrBHdYy+JsYfpSL92QuSeGC8kO9tXo+9iKUU
         iCWz+v0tfKG6cjT59RA5nFQmKYtnoZ2SqY+zxtJ0+b4w2L6cVNiLraY/+XFRU08IgRFY
         LhHGCtRdPIMYXgFFQbmN191AVdoU90kvGYwgs1Fj/rrLQz8g0lEMsqaHM23BdIb/Xi0L
         N8CT1P7vrDa/BBkblTtZH/0aOz7NP/egHWZK1Fi9CYGZTrfXAK8Xu8VACTibhrmjU3WR
         03fA9vkatA3jbbg8L/v1W0vD+cwEVbs5aoT+LBr6g2x9ZBSu5r4Ic5OqYAfj/iM84oIA
         vmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FnuECZXvMoRGowACS3F8manKkwKD00qeDCWZDuTJdm8=;
        b=qBIFTMAnVKoXV2m2ugvFTi564RKcyffghXnamwXTPlLBTK2FumQcsXht7S7oRuagFp
         5MugYRYV1RdZ5dhpMwjbfKCfyaHIYzoVGKTxhLsH0U5vmX2wt7Ghfjec/JYjuFycdzQk
         hYOcDUyGV/Q/dbDYWq3eBzog8UtGfT9jpNlg741gjSSlUvyHovjmZOw+VYXe+7hFUV4a
         VQh+5pnnA93LiEzvuK7NjjHZzGKtxCRovXIziTmvy18AMNVGcAd4oyPVRqn1sUzBHkZR
         4CO6YJgxsqRj0s/enn+YwR5JsWS2W/qjvpDMO85B0iM6nrZbobOO++ki36nK/Zy1OMJ9
         YOfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LhZloTTv2TQGpw/FlUW2vIgNnkTL6ef7BQ87VfLajsRGenbs3
	H4OwCh5UzSIayQe55bOq7R0=
X-Google-Smtp-Source: ABdhPJw/Eaw6eMrxEvMGhA0Ja6K5vvRTs8u4eiSQsk0+DS4sO1bCahwHZlqEzC/qwRUQ59P2EtwMkg==
X-Received: by 2002:a25:23d7:: with SMTP id j206mr3229392ybj.243.1609898298870;
        Tue, 05 Jan 2021 17:58:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df91:: with SMTP id w139ls885308ybg.5.gmail; Tue, 05 Jan
 2021 17:58:18 -0800 (PST)
X-Received: by 2002:a25:4d7:: with SMTP id 206mr3380750ybe.306.1609898298517;
        Tue, 05 Jan 2021 17:58:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609898298; cv=none;
        d=google.com; s=arc-20160816;
        b=G2yYP66dUwcFwqShHkwHna1pLmRSrb+eiQ7+LgyNxAZ47rsnmknarrnI4ZPgh1OyBi
         NUGF43JcAjhxJVv/0qdCUS3EDWxGBAJUwO1vdakzePSoEjCbPwrPojfFMY5jzeqC/3VQ
         gOd1cVxa4a1SJgrbgrBLHv7puCgrtl45OZ6IElZVnAuRefHLPXqwqq8BAp9MmVoHKMGo
         jmvfSS0cBEV0sK/rIvEQ26VvVy8wJbbYh2Wqw0QnNYogmS0H/8w9vINJ++oQ1ifnx/tE
         76DGv/DaZrl6gjVfjx/gYzbSRZHt1zjUGJNK9ytwYygSnjjFNcb0N+mItHNYpVj55DTZ
         VyzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=soD85oBuoFoOYel/RvfxRXBHF3St3W2ynqAXS24SPmw=;
        b=CoXtB9HErKiCymtTHBFDK7uoex+2JHVwyIUgm9pGXajPaEB3J7aVzHbQKgERUBpU9z
         9SuRXDfAKCdDterT4UJrNU2RiCOQ86gUr+eBWIn1eq08Dg3H5DiNzJK14aQISqHC4TAA
         rAux/72AsH40AwDwc/3BhZr1iK0N0w7l/4f8ZSWpckuqAAWL0U0Ee6S//K7ynzLoeSbk
         e6GDoDnCP3cO7XLFEXJDgAwqt+P8OJVfUi+ouFg4uhT8jukhpwrZi0P7gTVAE72jUwgY
         gk9MfnChnskW3FzYnTIJCXRlwZWXg1a8B79CXyJTwMTuQP//quDWIrcjPOI7HplUU2zK
         j4RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i4iFbvX8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s187si97227ybc.2.2021.01.05.17.58.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 17:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-JHBlh4rAP6e4dfOFx3YvyQ-1; Tue, 05 Jan 2021 20:58:16 -0500
X-MC-Unique: JHBlh4rAP6e4dfOFx3YvyQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97EE4180A089;
	Wed,  6 Jan 2021 01:58:14 +0000 (UTC)
Received: from treble (ovpn-113-48.rdu2.redhat.com [10.10.113.48])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D323B5D735;
	Wed,  6 Jan 2021 01:58:12 +0000 (UTC)
Date: Tue, 5 Jan 2021 19:58:10 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] x86/entry: use STB_GLOBAL for register restoring thunk
Message-ID: <20210106015810.5p6crnh7jqtmjtv4@treble>
References: <20201224045502.zkm34cc5srdgpddb@treble>
 <20210106004351.79130-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210106004351.79130-1-ndesaulniers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=i4iFbvX8;
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

On Tue, Jan 05, 2021 at 04:43:51PM -0800, Nick Desaulniers wrote:
> Arnd found a randconfig that produces the warning:
> 
> arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
> offset 0x3e
> 
> when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
> notes:
> 
>   With the LLVM assembler stripping the .text section symbol, objtool
>   has no way to reference this code when it generates ORC unwinder
>   entries, because this code is outside of any ELF function.
> 
> Fangrui notes that this is helpful for reducing images size when
> compiling with -ffunction-sections and -fdata-sections. I have observerd
> on the order of tens of thousands of symbols for the kernel images built
> with those flags. A patch has been authored against GNU binutils to
> match this behavior, with a new flag
> --generate-unused-section-symbols=[yes|no].
> 
> Use a global symbol for the thunk that way
> objtool can generate proper unwind info here with LLVM_IAS=1.

On second thought, there's no need to make the symbol global.  Just
getting rid of the '.L' local label symbol prefix should be enough to
make an ELF symbol:

diff --git a/arch/x86/entry/thunk_64.S b/arch/x86/entry/thunk_64.S
index ccd32877a3c4..c9a9fbf1655f 100644
--- a/arch/x86/entry/thunk_64.S
+++ b/arch/x86/entry/thunk_64.S
@@ -31,7 +31,7 @@ SYM_FUNC_START_NOALIGN(\name)
 	.endif
 
 	call \func
-	jmp  .L_restore
+	jmp  __thunk_restore
 SYM_FUNC_END(\name)
 	_ASM_NOKPROBE(\name)
 	.endm
@@ -44,7 +44,7 @@ SYM_FUNC_END(\name)
 #endif
 
 #ifdef CONFIG_PREEMPTION
-SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
+SYM_CODE_START_LOCAL_NOALIGN(__thunk_restore)
 	popq %r11
 	popq %r10
 	popq %r9
@@ -56,6 +56,6 @@ SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
 	popq %rdi
 	popq %rbp
 	ret
-	_ASM_NOKPROBE(.L_restore)
-SYM_CODE_END(.L_restore)
+	_ASM_NOKPROBE(__thunk_restore)
+SYM_CODE_END(__thunk_restore)
 #endif

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210106015810.5p6crnh7jqtmjtv4%40treble.
